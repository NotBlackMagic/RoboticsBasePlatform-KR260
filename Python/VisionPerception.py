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

print("Vision Perception: Get b4 video mode", depth_stream.get_video_mode()) # Checks depth video configuration

# Configure depth stream
depth_stream.set_video_mode(c_api.OniVideoMode(pixelFormat = c_api.OniPixelFormat.ONI_PIXEL_FORMAT_DEPTH_1_MM, resolutionX = 320, resolutionY = 240, fps = 30))

# Prepare image streamer
print("Vision Perception: Start Network Image Stream")
sender = imagezmq.ImageSender(connect_to='tcp://192.168.1.79:5555')

# Start the streams
print("Vision Perception: Start Depth Streams")
ir_stream.start()
depth_stream.start()

# Webcam image to depth image alignment values
offset_x = 25
offset_y = -10
padding_x = 140
padding_y = 140

# Depth camera specs: https://rosindustrial.org/news/2016/1/13/3d-camera-survey
depth_res = (320, 240)
rgb_res = (640, 480)
depth_fov = (58.0, 45.0)	# Horizontal, Vertical FOV

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
	frame_depth_raw = np.frombuffer(frame_depth_raw, dtype=np.uint16).reshape(depth_res[1], depth_res[0])
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
	# print("OffX: %d, OffY: %d, PadX: %d, PadY: %d" % (offset_x, offset_y, padding_x, padding_y))
	resized = cv.resize(frame_padded, (depth_res[0], depth_res[1]), interpolation = cv.INTER_AREA)

	# Overlay depth as alpha channel on RGB
	# First create the image with alpha channel
	frame_rgba = cv.cvtColor(resized, cv.COLOR_RGB2RGBA)
	# Then assign the mask to the last channel of the image
	frame_rgba[:, :, 3] = (255 - frame_depth_255).astype(np.uint8)

	# frame_rgbd = np.hstack((frame_depth, frame_rgb, resized))

	# cv.imshow("Frame Mosaic", frame_rgbd)
	# cv.imshow("Frame RGB-D", frame_rgba)

	# Stream to host
	# sender.send_image("KR260", frame_rgba)

	# Calculate coordinates of detected object in the depth sensor frame (based on calibration values)
	bbox_corr = []
	for i, bbox in enumerate(boxes):
		[b_top, b_left, b_bottom, b_right] = np.array(bbox[:4], dtype=np.int32)
		# Apply offset and padding
		b_top = b_top + padding_y + offset_y
		b_left = b_left + padding_x + offset_x
		b_bottom = b_bottom + padding_y + offset_y
		b_right = b_right + padding_x + offset_x
		#Scale for padding
		b_top = b_top * (rgb_res[1] / (rgb_res[1] + 2*padding_y))
		b_left = b_left * (rgb_res[0] / (rgb_res[0] + 2*padding_x))
		b_bottom = b_bottom * (rgb_res[1] / (rgb_res[1] + 2*padding_y))
		b_right = b_right * (rgb_res[0] / (rgb_res[0] + 2*padding_x))

		# Apply scaling (from 640x480 to 320x240)
		scale_w = (depth_res[0] / rgb_res[0])
		scale_h = (depth_res[1] / rgb_res[1])
		b_top_scaled = int(b_top * scale_h)
		b_left_scaled = int(b_left * scale_w)
		b_bottom_scaled = int(b_bottom * scale_h)
		b_right_scaled = int(b_right * scale_w)

		# print("Scale Start Pnt (%f, %f): (%d,%d) to (%d,%d)" % (scale_w, scale_h, b_left, b_top, b_left_scaled, b_top_scaled))
		# print("Scale Start Pnt (%f, %f): (%d,%d) to (%d,%d)" % (scale_w, scale_h, b_right, b_bottom, b_right_scaled, b_bottom_scaled))

		bbox_corr.append([b_top_scaled, b_left_scaled, b_bottom_scaled, b_right_scaled])

	# Get distance to all targets
	b_dist = []
	b_size = []
	for i, bbox in enumerate(bbox_corr):		
		# Get/calcualte distance from depth info
		startPoint = (int(bbox[1]), int(bbox[0]))
		endPoint = (int(bbox[3]), int(bbox[2]))
		# print(type(bbox[0]))	# bbox values are np.float64
		# print("BBox #%d (%d, %d) to (%d, %d)" % (i, startPoint[0], startPoint[1], endPoint[0], endPoint[1]))
		patch = np.array(frame_depth_raw[startPoint[1]:endPoint[1], startPoint[0]:endPoint[0]])
		patch = patch[patch != 0]	# Exclude 0 values (https://stackoverflow.com/questions/5927180/how-do-i-remove-all-zero-elements-from-a-numpy-array)

		# Calculate distance from patch using different methods
		# dist_target = np.average(patch)		# Use average function
		dist_target = np.percentile(patch, 25)	# Use percentil funcion: Distance that is closer then x% of the pixels

		b_dist.append(dist_target)
		# Draw rectangle for patch area
		cv.rectangle(frame_depth, (bbox[1], bbox[0]), (bbox[3], bbox[2]), (255, 0, 0), 1)

		# Calcualte object size, based on distance, boundig box size and depth sensor FOV
		bb_width = endPoint[0] - startPoint[0]
		bb_height = endPoint[1] - startPoint[1]
		bb_ang_h = (bb_width / depth_res[0]) * depth_fov[0]
		bb_ang_v = (bb_height / depth_res[1]) * depth_fov[1]
		bb_ang_h = np.radians(bb_ang_h)
		bb_ang_v = np.radians(bb_ang_v)
		bb_width = (np.tan(bb_ang_h / 2.0) * dist_target) * 2.0
		bb_height = (np.tan(bb_ang_v / 2.0) * dist_target) * 2.0
		b_size.append((bb_width, bb_height))

		print("Object #%d at %d mm: Width: %dmm, Height: %dmm" % (i, dist_target, bb_width, bb_height))

	# Annotate frame with depth info
	for i, bbox in enumerate(boxes):
		# Get distance to current target
		dist_target = b_dist[i]

		# Get pixel location in RGB frame
		[b_top, b_left, b_bottom, b_right] = np.array(bbox[:4], dtype=np.int32)

		# Annotate distance bellow bounding box
		color = yoloV3.colors[classes[i]]
		font_scale = 2
		label = "%dmm" % (dist_target)
		# print("Object #%d (%d, %d) to (%d, %d): Dist: %dmm" %  (i, b_left, b_top, b_right, b_bottom, dist_target))
		cv.putText(frame_anot, label, (b_left, b_bottom + 25), cv.FONT_HERSHEY_SIMPLEX, 1, (255,255,255), font_scale, cv.LINE_AA)
		cv.rectangle(frame_anot, (b_left, b_top), (b_right, b_bottom), (255,255,255), 1)

	# Stream to host
	frame_rgbd = np.hstack((frame_depth, frame_rgb, resized))
	sender.send_image("Annotated RGB + Depth", frame_rgbd)

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