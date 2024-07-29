import numpy as np
import cv2 as cv

from openni import openni2
from openni import _openni2 as c_api

from imutils.video import VideoStream
import imagezmq

from Drivers.DriverCamera import VideoCapture

# Code based on:
# https://stackoverflow.com/questions/51971493/how-to-print-a-kinect-frame-in-opencv-using-openni-bindings
# https://github.com/elmonkey/Python_OpenNI2/tree/master

# Start Webcame
# List devices with: v4l2-ctl --list-devices
# List all configs: v4l2-ctl --device=/dev/video0 --all
cap = VideoCapture(0)
#cap = cv.VideoCapture('v4l2src device=/dev/video3 ! video/x-raw, framerate=30/1, width=640, height=480 ! appsink', cv.CAP_GSTREAMER)

# Start Depth Cam
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
sender = imagezmq.ImageSender(connect_to='tcp://192.168.1.79:5555')

# Start the streams
ir_stream.start()
depth_stream.start()

offset_x = 25
offset_y = -10
padding_x = 140
padding_y = 140

while(True):
	# Get streams data
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
	frame_depth_raw = frame_depth_raw * (255 / (2**12-1))
	frame_depth_raw = frame_depth_raw.astype(np.uint8)
	frame_depth = cv.cvtColor(frame_depth_raw, cv.COLOR_GRAY2BGR)

	# Get Webcam (RGB)
	ret, frame = cap.read()
	# if frame is read correctly ret is True
	if not ret:
		print("Can't receive frame from left camera (stream end?). Exiting ...")
		break

	# width  = cap.cap.get(cv.CAP_PROP_FRAME_WIDTH)   # float `width`
	# height = cap.cap.get(cv.CAP_PROP_FRAME_HEIGHT)  # float `height`
	# print("RGB W: %d, H: %d" % (width, height))

	frame_flip = cv.flip(frame, 0)
	# copyMakeBorder( src, dst, top, bottom, left, right, borderType, value );
	top = padding_y + offset_y
	bottom = padding_y - offset_y
	left = padding_x + offset_x
	right = padding_x - offset_x
	frame_padded = cv.copyMakeBorder(frame_flip, top, bottom, left, right, cv.BORDER_CONSTANT, value=[0,0,0])
	print("OffX: %d, OffY: %d, PadX: %d, PadY: %d" % (offset_x, offset_y, padding_x, padding_y))
	resized = cv.resize(frame_padded, (320, 240), interpolation = cv.INTER_AREA)

	# Overlay depth as alpha channel on RGB
	# First create the image with alpha channel
	frame_rgba = cv.cvtColor(resized, cv.COLOR_RGB2RGBA)
	# Then assign the mask to the last channel of the image
	frame_rgba[:, :, 2] = (255 - frame_depth_raw).astype(np.uint8)

	frame_rgbd = np.hstack((frame_depth, frame_rgb, resized))

	cv.imshow("Frame Mosaic", frame_rgbd)
	cv.imshow("Frame RGB-D", frame_rgba)

	# Stream to host
	# sender.send_image("KR260", frame_rgbd)

	# cv.imshow("Depth || RGB", frame_rgbd)
	key = cv.waitKey(50)
	if (key & 0xFF) == ord('q'):
		# Exit
		break
	elif (key & 0xFF) == ord('w'):
		# Move up
		offset_y = offset_y - 5
		if(offset_y < -padding_y):
			offset_y = -padding_y
	elif (key & 0xFF) == ord('s'):
		# Move down
		offset_y = offset_y + 5
		if(offset_y > padding_y):
			offset_y = padding_y
	elif (key & 0xFF) == ord('a'):
		# Move left
		offset_x = offset_x - 5
		if(offset_x < -padding_x):
			offset_x = -padding_x
	elif (key & 0xFF) == ord('d'):
		# Move right
		offset_x = offset_x + 5
		if(offset_x > padding_x):
			offset_x = padding_x
	elif (key & 0xFF) == ord('t'):
		# Decrease Y padding
		padding_y = padding_y - 5
		if(padding_y < 0):
			padding_y = 0
	elif (key & 0xFF) == ord('y'):
		# Increase Y padding
		padding_y = padding_y + 5
		if(padding_y > 200):
			padding_y = 200
	elif (key & 0xFF) == ord('z'):
		# Decrease X padding
		padding_x = padding_x - 5
		if(padding_x < 0):
			padding_x = 0
	elif (key & 0xFF) == ord('x'):
		# Increase X padding
		padding_x = padding_x + 5
		if(padding_x > 200):
			padding_x = 200

depth_stream.stop()
openni2.unload()