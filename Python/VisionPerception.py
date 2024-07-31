import cv2 as cv
import numpy as np
import time

from openni import openni2
from openni import _openni2 as c_api

from imutils.video import VideoStream
import imagezmq

import pynq_dpu
from pynq_dpu import DpuOverlay

from Drivers.DriverCamera import VideoCapture
from Drivers.DriverDPU import NBMDPUYoloV3

# Load overlay, without downloading to PS (FPGA)
print("Vision Perception: Load Overlay")
#ol = DpuOverlay("./kr260_pixhawk_v3_dpu/kr260_pixhawk_v3_dpu.bit", download = False)
ol = DpuOverlay("./kr260_pynq/dpu.bit", download = False)

# Load DPU
print("Vision Perception: Load DPU")
yoloV3 = NBMDPUYoloV3(ol)

# Load classes´
print("Vision Perception: Load Classes")
yoloV3.load_classes("./voc_classes.txt")

# Start Webcam
print("Vision Perception: Start Webcam")
# List devices with: v4l2-ctl --list-devices
# List all configs: v4l2-ctl --device=/dev/video0 --all
cap = VideoCapture(0)
#cap = cv.VideoCapture('v4l2src device=/dev/video3 ! video/x-raw, framerate=30/1, width=640, height=480 ! appsink', cv.CAP_GSTREAMER)

# Start Depth Cam
print("Vision Perception: Start Depth Cam")
openni2.initialize()     # can also accept the path of the OpenNI redistribution

# Get and start the device
dev = openni2.Device.open_any()
print(dev.get_device_info())

# Create RGB and depth streams
ir_stream = dev.create_ir_stream()
depth_stream = dev.create_depth_stream()

print('Get b4 video mode', depth_stream.get_video_mode()) # Checks depth video configuration

# Configure depth stream
depth_stream.set_video_mode(c_api.OniVideoMode(pixelFormat = c_api.OniPixelFormat.ONI_PIXEL_FORMAT_DEPTH_1_MM, resolutionX = 320, resolutionY = 240, fps = 30))

# Prepare image streamer
# print("Vision Perception: Start Network Image Stream")
# sender = imagezmq.ImageSender(connect_to='tcp://192.168.1.79:5555')

# Start the streams
print("Vision Perception: Start Depth Streams")
ir_stream.start()
depth_stream.start()

# Webcam image to depth image alignment values
offset_x = 25
offset_y = -10
padding_x = 140
padding_y = 140

while(True):
	# Get streams data
	print("Vision Perception: Get new depth frame")
	frame_ir = ir_stream.read_frame()
	frame_ir_data = ir_stream.read_frame().get_buffer_as_uint16()
	frame_depth_raw = depth_stream.read_frame().get_buffer_as_uint16()

	# Convert IR stream data
	frame_ir_raw = np.frombuffer(frame_ir_data, dtype=np.uint16).reshape(frame_ir.height, frame_ir.width)
	frame_ir_raw = frame_ir_raw * (255 / (np.max(frame_ir_raw)))
	frame_ir_raw = frame_ir_raw.astype(np.uint8)
	frame_rgb = cv.cvtColor(frame_ir_raw, cv.COLOR_GRAY2RGB)

	# Convert received uint16 buffer to image array (320x240) and scale values to 0-4096 (depth data is 12-bits)
	frame_depth_raw = np.frombuffer(frame_depth_raw, dtype=np.uint16).reshape(240, 320)
	frame_depth_255 = frame_depth_raw * (255 / (2**12-1))
	frame_depth_255 = frame_depth_255.astype(np.uint8)
	frame_depth = cv.cvtColor(frame_depth_255, cv.COLOR_GRAY2BGR)

	# Get Webcam (RGB)
	print("Vision Perception: Get new RGB frame")
	ret, frame = cap.read()
	# if frame is read correctly ret is True
	if not ret:
		print("Can't receive frame from left camera (stream end?). Exiting ...")
		break
	frame = cv.flip(frame, 0)

	# width  = cap.cap.get(cv.CAP_PROP_FRAME_WIDTH)   # float `width`
	# height = cap.cap.get(cv.CAP_PROP_FRAME_HEIGHT)  # float `height`
	# print("RGB W: %d, H: %d" % (width, height))

	#Run through Yolov3
	start = time.time()
	print("Test DPU: Run model on current frame")
	boxes, scores, classes = yoloV3.run(frame)
	end = time.time()

	print("Number of detected objects: %d in %0.3fs [FPS: %0.2f]" % (len(boxes), (end - start), 1.0/(end - start)))

	# Annotate image
	frame_anot = yoloV3.draw_boxes(frame, boxes, scores, classes)

	# Process webcam image to match depth image
	# frame_flip = cv.flip(frame_anot, 0)
	# copyMakeBorder( src, dst, top, bottom, left, right, borderType, value );
	top = padding_y + offset_y
	bottom = padding_y - offset_y
	left = padding_x + offset_x
	right = padding_x - offset_x
	frame_padded = cv.copyMakeBorder(frame_anot, top, bottom, left, right, cv.BORDER_CONSTANT, value=[0,0,0])
	print("OffX: %d, OffY: %d, PadX: %d, PadY: %d" % (offset_x, offset_y, padding_x, padding_y))
	resized = cv.resize(frame_padded, (320, 240), interpolation = cv.INTER_AREA)

	# Overlay depth as alpha channel on RGB
	# First create the image with alpha channel
	frame_rgba = cv.cvtColor(resized, cv.COLOR_RGB2RGBA)
	# Then assign the mask to the last channel of the image
	frame_rgba[:, :, 3] = (255 - frame_depth_255).astype(np.uint8)

	frame_rgbd = np.hstack((frame_depth, frame_rgb, resized))

	cv.imshow("Frame Mosaic", frame_rgbd)
	cv.imshow("Frame RGB-D", frame_rgba)

	# Stream to host
	# sender.send_image("KR260", frame_rgba)

	# Calculate coordinates of detected object in the depth sensor frame (based on calibration values)
	bbox_corr = []
	for i, bbox in enumerate(boxes):
		[b_top, b_left, b_bottom, b_right] = np.array(bbox[:4], dtype=np.int32)
		# Apply offset and padding
		b_top = b_top + padding_y + offset_y
		b_left = b_left + padding_x + offset_x
		b_bottom = b_bottom + padding_y - offset_y
		b_right = b_right + padding_x - offset_x
		# Apply scaling (from 640x480 to 320x240)
		b_top = b_top * (320 / 640)
		b_left = b_left * (240 / 480)
		b_bottom = b_bottom * (320 / 640)
		b_right = b_right * (240 / 480)

		bbox_corr.append([b_top, b_left, b_bottom, b_right])

	# Get distance to all targets
	b_dist = []
	for i, bbox in enumerate(bbox_corr):
		# print(type(bbox[0]))	# bbox values are np.float64
		startPoint = (int(bbox[1]), int(bbox[0]))
		endPoint = (int(bbox[3]), int(bbox[2]))
		print("BBox #%d (%d, %d) to (%d, %d)" % (i, startPoint[0], startPoint[1], endPoint[0], endPoint[1]))
		
		patch = np.array(frame_depth_raw[startPoint[1]:endPoint[1], startPoint[0]:endPoint[0]])
		dist_target = np.average(patch)
		b_dist.append(dist_target)

		print("Object #%d at %d mm" % (i, dist_target))

	key = cv.waitKey(50)
	if (key & 0xFF) == ord('q'):
		# Exit
		break

	continue

	# Select (first) target based on identified object in image
	target_class = 4 	# Example here is the bottle
	target_min_score = 0.8

	target_box = []
	for i in range(len(boxes)):
		if classes[i] == target_class and scores[i] >= target_min_score:
			# Found first matching target
			target_box = bbox_corr[i]

	# Estimate targets coordinate from camera point of view
	target_coor = [0,0,0]	# X, Y, Z. In ROS Z->UP, y->North/Left, X->East/Forward
	if len(target_box) > 0:
		dist_target = min(frame_depth_raw[target_box[1]:target_box[3]][target_box[0]:target_box[2]])
		target_coor[0] = dist_target

		print("Target at %d mm" % (dist_target))

	key = cv.waitKey(50)
	if (key & 0xFF) == ord('q'):
		# Exit
		break

depth_stream.stop()
openni2.unload()