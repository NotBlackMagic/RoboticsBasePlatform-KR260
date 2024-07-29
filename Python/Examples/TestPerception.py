import cv2
import numpy as np
import socket
import time
import threading

from openni import openni2
from openni import _openni2 as c_api

from imutils.video import VideoStream
import imagezmq

import pynq_dpu
from pynq_dpu import DpuOverlay

from Drivers.DriverDPU import NBMDPUYoloV3

# Bufferless VideoCapture (https://stackoverflow.com/questions/43665208/how-to-get-the-latest-frame-from-capture-device-camera-in-opencv)
class VideoCapture:
	def __init__(self, name):
		self.cap = cv2.VideoCapture(name)
		#self.cap = cv2.VideoCapture('v4l2src device=/dev/video3 ! video/x-raw, framerate=30/1, width=640, height=480 ! appsink', cv2.CAP_GSTREAMER)
		self.lock = threading.Lock()
		self.t = threading.Thread(target=self._reader)
		self.t.daemon = True
		self.t.start()

	# Grab frames as soon as they are available
	def _reader(self):
		while True:
			with self.lock:
				ret = self.cap.grab()
			if not ret:
				break

	# Retrieve latest frame
	def read(self):
		with self.lock:
			_, frame = self.cap.retrieve()
		return _, frame

# Load overlay, without downloading to PS (FPGA)
print("Test Perception: Load Overlay")
ol = DpuOverlay("./kr260_pynq/dpu.bit", download = False)

# Load DPU
yoloV3 = NBMDPUYoloV3(ol)

# Load classes
yoloV3.load_classes("./voc_classes.txt")

# Load depth sensor
openni2.initialize()
# Get and start the device
dev = openni2.Device.open_any()
print(dev.get_device_info())
# Create RGB and depth streams
ir_stream = dev.create_ir_stream()
depth_stream = dev.create_depth_stream()
print('Test Perception: Depth stream ', depth_stream.get_video_mode()) # Checks depth video configuration
# Configure depth stream
depth_stream.set_video_mode(c_api.OniVideoMode(pixelFormat = c_api.OniPixelFormat.ONI_PIXEL_FORMAT_DEPTH_1_MM, resolutionX = 320, resolutionY = 240, fps = 30))
# Start the streams
ir_stream.start()
depth_stream.start()

# Prepare image streamer
sender = imagezmq.ImageSender(connect_to='tcp://192.168.1.79:5555')

# Now use OpenCV to read camera data
# List devices with: v4l2-ctl --list-devices
print("Test Perception: Start OpenCV video capture")
cap = VideoCapture(0)
print("Test Perception: Camera resolution %dx%d" % (cap.cap.get(cv2.CAP_PROP_FRAME_WIDTH), cap.cap.get(cv2.CAP_PROP_FRAME_HEIGHT)))

i = 0
while cap.cap.isOpened():
	# Capture frame-by-frame
	print("Test Perception: Capture new frame")
	ret, frame = cap.read()
	# if frame is read correctly ret is True
	if not ret:
		print("Can't receive frame from left camera (stream end?). Exiting ...")
		break

	# Display the captured frames
	# cv2.imshow("Original frame", frame)

	# Run through resnet
	start = time.time()
	print("Test Perception: Run model on current frame")
	boxes, scores, classes = yoloV3.run(frame)
	end = time.time()
	print("Number of detected objects: %d in %0.3fs [FPS: %0.2f]" % (len(boxes), (end - start), 1.0/(end - start)))

	# Get depth streams data
	frame_ir = ir_stream.read_frame()
	frame_ir_data = ir_stream.read_frame().get_buffer_as_uint16()
	frame_depth_raw = depth_stream.read_frame().get_buffer_as_uint16()

	# Convert IR stream data
	frame_ir_raw = np.frombuffer(frame_ir_data, dtype=np.uint16).reshape(frame_ir.height, frame_ir.width)
	frame_ir_raw = frame_ir_raw * (255 / (np.max(frame_ir_raw)))
	frame_ir_raw = frame_ir_raw.astype(np.uint8)
	frame_rgb = cv2.cvtColor(frame_ir_raw, cv2.COLOR_GRAY2RGB)

	# Convert received uint16 buffer to image array (240x320) and scale values to 0-4096 (depth data is 12-bits)
	frame_depth_raw = np.frombuffer(frame_depth_raw, dtype=np.uint16).reshape(240, 320)
	frame_depth_raw = frame_depth_raw * (255 / (2**12-1))		# To float from 0 - 255
	frame_depth_raw = frame_depth_raw.astype(np.uint8)			# Convert down to uint8
	frame_depth_raw = 255 - frame_depth_raw						# Invert values
	# frame_depth_gray = cv2.cvtColor(frame_depth_raw, cv2.COLOR_GRAY2BGR)
	frame_depth_color = cv2.applyColorMap(frame_depth_raw, cv2.COLORMAP_JET)

	# Draw detection bounding boxes
	frame_anot = yoloV3.draw_boxes(frame, boxes, scores, classes)

	# Resize image to same size as depth
	frame_anot_res = cv2.resize(frame_anot, (320,240), interpolation=cv2.INTER_LINEAR)

	# Stack depth images
	frame_rgbd = np.hstack((frame_depth_color, frame_rgb, frame_anot_res))

	# Stream to host
	sender.send_image("KR260", frame_rgbd)

	#print("Save captured images")
	#cv2.imwrite("./capture/img%d.png" % i, frame_anot)
	#i += 1
	continue

	#key = cv2.waitKey(0)
	key = input()
	print(key)
	if key == 115 or key == 's':
		# Pressed s
		# Save to file
		print("Save captured images")
		#cv2.imwrite("./capture/img%d.png" % i, frame)
		i += 1
	elif key == 113 or key == 'q':
		# Pressed q
		break

# When everything done, release the capture
cap.cap.release()
# out.release()
cv2.destroyAllWindows()