import cv2 as cv
import numpy as np
import os
import time

from Drivers.DriverIlluminator import MultispectralIlluminator
from Drivers.DriverCamera import VideoCapture

# 
print("Connect Serial")
light = MultispectralIlluminator("/dev/ttyUL3")

# List devices with: v4l2-ctl --list-devices
# List all configs: v4l2-ctl --device=/dev/video0 --all
cap = VideoCapture(0)
#cap = cv.VideoCapture('v4l2src device=/dev/video3 ! video/x-raw, framerate=30/1, width=640, height=480 ! appsink', cv.CAP_GSTREAMER)

# Configure camera (https://docs.opencv.org/3.4/d4/d15/group__videoio__flags__base.html#gaeb8dd9c89c10a5c63c139bf7c4f5704d)
cap.cap.set(cv.CAP_PROP_AUTO_WB, 0.0)			# Disable automatic white balance
#cap.cap.set(cv.PROP_AUTO_EXPOSURE, 3)			# auto mode
cap.cap.set(cv.CAP_PROP_AUTO_EXPOSURE, 1)			# manual mode
cap.cap.set(cv.CAP_PROP_EXPOSURE, 2000)			# Set Exposure time

cols, rows = 640, 480
#cap.cap.set(cv.CV_CAP_PROP_FRAME_WIDTH, cols)		# Set frame width (max: 1280 [YUYV 4:2:2] @ 10fps)	(v4l2-ctl -d /dev/video0 --list-formats-ext)
#cap.cap.set(cv.CV_CAP_PROP_FRAME_HEIGHT, rows)		# Set frame height (max: 720 [YUYV 4:2:2] @ 10fps)
cap.cap.set(cv.CAP_PROP_CONVERT_RGB, 0.0)			# Disable conversion to RGB

# Calibration values ["wh", "bl", "gr", "yl", "rd", "pr", "fr", "ir"]
exposure = 2000
lightCurrent = [ 50, 50, 50, 50, 50, 50, 50, 50]	# White | Blue | Green | Yellow | Red | Photo Red | Far Red | IR

spectrumChannel = 1
i = 0
while True:
	# Simulate time between events
	time.sleep(.5)

	# Turn light on
	light.output(spectrumChannel, True)
	time.sleep(.1)

	cap.awaitNewFrame()

	ret, raw = cap.read()
	# if frame is read correctly ret is True
	if not ret:
		print("Can't receive frame from camera (stream end?). Exiting ...")
		break

	# Turn light off
	time.sleep(.1)
	light.output(spectrumChannel, False)

	# print(raw.size)
	# print(raw.dtype)

	# y = raw[0::2]
	# uv = raw[1::2]

	# print(y.size)
	# print(y.dtype)

	# bw = y.reshape(rows,cols)
	# uv = uv.reshape(rows,cols)

	# Issues in conversion due to weighted average: https://docs.opencv.org/2.4/modules/imgproc/doc/miscellaneous_transformations.html#void%20cvtColor%28InputArray%20src,%20OutputArray%20dst,%20int%20code,%20int%20dstCn%29
	rgb = cv.cvtColor(raw, cv.COLOR_YUV2BGR_YUYV)
	# bw = cv.cvtColor(raw, cv.COLOR_YUV2GRAY_YUYV)
	bw = rgb.sum(axis=2)
	bw = bw * 0.33
	bw = bw.astype('uint8')

	# Calculate light strength in set rectangle
	width = 75
	height = 75
	startPoint = (int((cols - width) / 2), int((rows - height) / 2))
	endPoint = (startPoint[0] + width, startPoint[1] + height)

	patch = bw[startPoint[1]:endPoint[1], startPoint[0]:endPoint[0]]
	(mean, stdDev) = cv.meanStdDev(patch)
	print("Mean: %d, StdDev: %d" % (mean[0], stdDev[0]))

	cv.rectangle(bw, startPoint, endPoint, (255, 0, 0), 2)

	labelPoint = (10, 30)
	labelText = "CH: %d, Curr: %d, Exp: %d" % (spectrumChannel, lightCurrent[spectrumChannel - 1], exposure)
	cv.putText(bw, labelText, labelPoint, cv.FONT_HERSHEY_SIMPLEX, 0.75, (255, 0, 0), 2)

	labelPoint = (startPoint[0] - 50, startPoint[1] + height + 10)
	labelText = "Avg: %d, StdDev: %d" % (mean[0], stdDev[0])
	cv.putText(bw, labelText, labelPoint, cv.FONT_HERSHEY_SIMPLEX, 0.5, (255, 0, 0), 2)

	# Display the captured frames
	# frame_stack = np.hstack((bw, rgb))
	cv.imshow("Frame BW", bw)
	cv.imshow("Frame RGB", rgb)

	# yuv = np.frombuffer(bw, dtype=np.uint16)
	# yuv = yuv.reshape(rows, cols)
	# bgr = cv.cvtColor(yuv, cv.COLOR_YUV2BGR_I420, 3)
	# frame = frame.reshape(rows, cols)		# Reshape
	# frame = frame.astype(np.uint16)		# Convert uint8 elements to uint16 elements

	# Stream to host
	# sender.send_image("KR260", bgr)

	key = cv.waitKey(0)
	if (key & 0xFF) == ord('q'):
		# Exit
		break
	elif (key & 0xFF) == ord('w'):
		# Increase exposure time
		exposure = exposure + 250
		if(exposure >= 10000):
			exposure = 10000
		cap.cap.set(cv.CAP_PROP_EXPOSURE, exposure)			# Set Exposure time
		print("Exposure: %d" % (exposure))
	elif (key & 0xFF) == ord('s'):
		# Decrease exposure time
		exposure = exposure - 250
		if(exposure <= 50):
			exposure = 50
		cap.cap.set(cv.CAP_PROP_EXPOSURE, exposure)			# Set Exposure time
		print("Exposure: %d" % (exposure))
	elif (key & 0xFF) == ord('d'):
		# Increase illumination current
		lightCurrent[spectrumChannel - 1] = lightCurrent[spectrumChannel - 1] + 5
		if(lightCurrent[spectrumChannel - 1] > 100):
			lightCurrent[spectrumChannel - 1] = 100
		light.current(spectrumChannel, lightCurrent[spectrumChannel - 1])
		print("Light: CH: %d, Curr: %d" % (spectrumChannel, lightCurrent[spectrumChannel - 1]))
	elif (key & 0xFF) == ord('a'):
		# Decrease illumination current
		lightCurrent[spectrumChannel - 1] = lightCurrent[spectrumChannel - 1] - 5
		if(lightCurrent[spectrumChannel - 1] < 0):
			lightCurrent[spectrumChannel - 1] = 0
		light.current(spectrumChannel, lightCurrent[spectrumChannel - 1])
		print("Light: CH: %d, Curr: %d" % (spectrumChannel, lightCurrent[spectrumChannel - 1]))
	elif (key & 0xFF) == ord('n'):
		# Move to next spectral channel
		spectrumChannel = spectrumChannel + 1
		if(spectrumChannel > 8):
			spectrumChannel = 1
		print("Spectral Channel: %d" % (spectrumChannel))
	elif (key & 0xFF) == ord('b'):
		# Move to previous spectral channel
		spectrumChannel = spectrumChannel - 1
		if(spectrumChannel < 1):
			spectrumChannel = 8
		print("Spectral Channel: %d" % (spectrumChannel))
	elif (key & 0xFF) == ord('g'):
		# Save to file
		chName = ["wh", "bl", "gr", "yl", "rd", "pr", "fr", "ir"]
		path = "./capture/img%d_%s_bw.png" % (i, chName[spectrumChannel - 1])
		cv.imwrite(path, bw)
		path = "./capture/img%d_%s_rgb.png" % (i, chName[spectrumChannel - 1])
		cv.imwrite(path, rgb)
		i += 1
		print("Save captured images")

# When everything done, release the capture
cap.release()
cv.destroyAllWindows()