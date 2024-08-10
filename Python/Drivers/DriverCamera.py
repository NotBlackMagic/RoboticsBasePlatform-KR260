import cv2 as cv
import threading
import time

# Bufferless VideoCapture (https://stackoverflow.com/questions/43665208/how-to-get-the-latest-frame-from-capture-device-camera-in-opencv)
class VideoCapture:
	def __init__(self, name):
		self.cap = cv.VideoCapture(name)
		#self.cap = cv2.VideoCapture('v4l2src device=/dev/video3 ! video/x-raw, framerate=30/1, width=640, height=480 ! appsink', cv2.CAP_GSTREAMER)
		self.lock = threading.Lock()
		self.new_frame = False
		self.thread_run = True
		self.t = threading.Thread(target=self._reader)
		self.t.daemon = True
		self.t.start()

	# Grab frames as soon as they are available
	def _reader(self):
		while self.thread_run:
			with self.lock:
				ret = self.cap.grab()
				self.new_frame = True
			if not ret:
				break

	# Retrieve latest frame
	def read(self):
		with self.lock:
			ret, frame = self.cap.retrieve()
		return ret, frame

	# Close and release camera capture
	def release(self):
		self.thread_run = False
		self.t.join()
		self.cap.release()
	
	# Await new frame
	def await_new_frame(self):
		self.new_frame = False
		timestamp = (time.time() * 1000)	# Timestamp in ms
		while self.new_frame == False:
			timestamp = (time.time() * 1000)
			time.sleep(.1)
