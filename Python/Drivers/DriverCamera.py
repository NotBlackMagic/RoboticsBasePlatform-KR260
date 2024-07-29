import cv2 as cv
import time
import threading

# Bufferless VideoCapture (https://stackoverflow.com/questions/43665208/how-to-get-the-latest-frame-from-capture-device-camera-in-opencv)
class VideoCapture:
	def __init__(self, name):
		self.cap = cv.VideoCapture(name)
		self.lock = threading.Lock()
		self.newFrame = False
		self.threadRun = True
		self.t = threading.Thread(target=self._reader)
		self.t.daemon = True
		self.t.start()

	# Grab frames as soon as they are available
	def _reader(self):
		while self.threadRun:
			with self.lock:
				ret = self.cap.grab()
				self.newFrame = True
			if not ret:
				break

	# Retrieve latest frame
	def read(self):
		with self.lock:
			ret, frame = self.cap.retrieve()
		return ret, frame

	def release(self):
		self.threadRun = False
		self.t.join()
		self.cap.release()
	
	# Await new frame
	def awaitNewFrame(self):
		self.newFrame = False
		timestamp = (time.time() * 1000)	# Timestamp in ms
		while self.newFrame == False:
			timestamp = (time.time() * 1000)
			time.sleep(.1)
