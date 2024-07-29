import numpy as np
import cv2

from openni import openni2
from openni import _openni2 as c_api

from imutils.video import VideoStream
import imagezmq

# Code based on:
# https://stackoverflow.com/questions/51971493/how-to-print-a-kinect-frame-in-opencv-using-openni-bindings
# https://github.com/elmonkey/Python_OpenNI2/tree/master

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

while(True):
	# Get streams data
	frame_ir = ir_stream.read_frame()
	frame_ir_data = ir_stream.read_frame().get_buffer_as_uint16()
	frame_depth_raw = depth_stream.read_frame().get_buffer_as_uint16()

	# Convert IR stream data
	frame_ir_raw = np.frombuffer(frame_ir_data, dtype=np.uint16).reshape(frame_ir.height, frame_ir.width)
	frame_ir_raw = frame_ir_raw * (255 / (np.max(frame_ir_raw)))
	frame_ir_raw = frame_ir_raw.astype(np.uint8)
	frame_rgb = cv2.cvtColor(frame_ir_raw, cv2.COLOR_GRAY2RGB)

	# Convert received uint16 buffer to image array (320x240) and scale values to 0-4096 (depth data is 12-bits)
	frame_depth_raw = np.frombuffer(frame_depth_raw, dtype=np.uint16).reshape(240, 320)
	frame_depth_raw = frame_depth_raw * (255 / (2**12-1))
	frame_depth_raw = frame_depth_raw.astype(np.uint8)
	frame_depth = cv2.cvtColor(frame_depth_raw, cv2.COLOR_GRAY2BGR)

	frame_rgbd = np.hstack((frame_depth, frame_rgb))

	cv.imshow("Frame RGBD", frame_rgbd)

	# Stream to host
	# sender.send_image("KR260", frame_rgbd)

	# cv2.imshow("Depth || RGB", frame_rgbd)
	cv2.waitKey(34)

depth_stream.stop()
openni2.unload()