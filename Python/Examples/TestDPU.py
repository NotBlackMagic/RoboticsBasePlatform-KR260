import cv2
import socket
import time
import threading

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
print("Test DPU: Load Overlay")
ol = DpuOverlay("./kr260_pynq/dpu.bit", download = False)

# Load DPU
yoloV3 = NBMDPUYoloV3(ol)

# Load classes
yoloV3.load_classes("./voc_classes.txt")

# Prepare image streamer
sender = imagezmq.ImageSender(connect_to='tcp://192.168.1.79:5555')

# Now use OpenCV to read camera data
# List devices with: v4l2-ctl --list-devices
print("Test DPU: Start OpenCV video capture")
cap = VideoCapture(0)

print("Test DPU: Camera resolution %dx%d" % (cap.cap.get(cv2.CAP_PROP_FRAME_WIDTH), cap.cap.get(cv2.CAP_PROP_FRAME_HEIGHT)))

i = 0
while cap.cap.isOpened():
	# Capture frame-by-frame
	print("Test DPU: Capture new frame")
	ret, frame = cap.read()
	# if frame is read correctly ret is True
	if not ret:
		print("Can't receive frame from left camera (stream end?). Exiting ...")
		break

	# Display the captured frames
	# cv2.imshow("Original frame", frame)

	#Run through Yolov3
	start = time.time()
	print("Test DPU: Run model on current frame")
	boxes, scores, classes = yoloV3.run(frame)
	end = time.time()

	print("Number of detected objects: %d in %0.3fs [FPS: %0.2f]" % (len(boxes), (end - start), 1.0/(end - start)))

	frame_anot = yoloV3.draw_boxes(frame, boxes, scores, classes)

	# Stream to host
	sender.send_image("KR260", frame_anot)

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