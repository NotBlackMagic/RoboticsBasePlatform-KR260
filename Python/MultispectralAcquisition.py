import os
import numpy as np
import cv2 as cv
import glob
import time
import threading

import serial
import socket
import time

from Drivers.DriverIlluminator import MultispectralIlluminator
from Drivers.DriverCamera import VideoCapture

# Connect serial
print("Connect Serial")
light = MultispectralIlluminator("/dev/ttyUL3")

# List devices with: v4l2-ctl --list-devices
# List all configs: v4l2-ctl --device=/dev/video0 --all
cap = VideoCapture(0)
#cap = cv.VideoCapture('v4l2src device=/dev/video3 ! video/x-raw, framerate=30/1, width=640, height=480 ! appsink', cv.CAP_GSTREAMER)

# Configure camera (https://docs.opencv.org/3.4/d4/d15/group__videoio__flags__base.html#gaeb8dd9c89c10a5c63c139bf7c4f5704d)
cap.cap.set(cv.CAP_PROP_AUTO_WB, 0.0)			# Disable automatic white balance
#cap.cap.set(cv.PROP_AUTO_EXPOSURE, 3)			# auto mode
cap.cap.set(cv.CAP_PROP_AUTO_EXPOSURE, 1)		# manual mode
cap.cap.set(cv.CAP_PROP_EXPOSURE, 2000)			# Set Exposure time

cols, rows = 640, 480
#cap.cap.set(cv.CV_CAP_PROP_FRAME_WIDTH, cols)		# Set frame width (max: 1280 [YUYV 4:2:2] @ 10fps)	(v4l2-ctl -d /dev/video0 --list-formats-ext)
#cap.cap.set(cv.CV_CAP_PROP_FRAME_HEIGHT, rows)		# Set frame height (max: 720 [YUYV 4:2:2] @ 10fps)
cap.cap.set(cv.CAP_PROP_CONVERT_RGB, 0.0)			# Disable conversion to RGB

# Calibration values ["wh", "bl", "gr", "yl", "rd", "pr", "fr", "ir"]
exposure = 2000
lightCurrent = [ 65, 15, 15, 15, 10, 10, 5, 50]	# White | Blue | Green | Yellow | Red | Photo Red | Far Red | IR
for j in range(8):
	# Set light current
	light.current(j + 1, lightCurrent[j])
	# Wait time to let settings apply
	time.sleep(1)

i = 0
spectrumChannel = 1
while True:
	# Go through all spectrum channels
	rgb = []
	bw = []
	for j in range(8):
		print(j)

		spectrumChannel = j + 1

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

		# Issues in conversion due to weighted average: https://docs.opencv.org/2.4/modules/imgproc/doc/miscellaneous_transformations.html#void%20cvtColor%28InputArray%20src,%20OutputArray%20dst,%20int%20code,%20int%20dstCn%29
		rgbRaw = cv.cvtColor(raw, cv.COLOR_YUV2BGR_YUYV)
		rgb.append(rgbRaw)
		# bw = cv.cvtColor(raw, cv.COLOR_YUV2GRAY_YUYV)
		bwRaw = rgbRaw.sum(axis=2)
		bwRaw = bwRaw * 0.33
		bwRaw = bwRaw.astype('uint8')
		bw.append(bwRaw)

		labelPoint = (10, 30)
		labelText = "CH: %d, Curr: %d, Exp: %d" % (spectrumChannel, lightCurrent[spectrumChannel - 1], exposure)
		cv.putText(bw[j], labelText, labelPoint, cv.FONT_HERSHEY_SIMPLEX, 0.75, (255, 0, 0), 2)

		# Stream to host
		# sender.send_image("KR260", bgr)

		print("Save captured images")

		chName = ["wh", "bl", "gr", "yl", "rd", "dr", "fr", "ir"]
		path = "./capture/img%d_%s_bw.png" % (i, chName[spectrumChannel - 1])
		cv.imwrite(path, bw[j])
		path = "./capture/img%d_%s_rgb.png" % (i, chName[spectrumChannel - 1])
		cv.imwrite(path, rgb[j])

	row1 = np.hstack((bw[0], bw[1], bw[2]))
	row2 = np.hstack((bw[3], bw[7], bw[4]))
	row3 = np.hstack((bw[5], bw[6], bw[7]))
	comp_bw = np.vstack((row1, row2, row3))

	row1 = np.hstack((rgb[0], rgb[1], rgb[2]))
	row2 = np.hstack((rgb[3], rgb[0], rgb[4]))
	row3 = np.hstack((rgb[5], rgb[6], rgb[7]))
	comp_rgb = np.vstack((row1, row2, row3))

	# Resize
	resized_bw = cv.resize(comp_bw, (cols, rows), interpolation = cv.INTER_AREA)
	resized_rgb = cv.resize(comp_rgb, (cols, rows), interpolation = cv.INTER_AREA)

	path = "./capture/img%d_mosaic_bw.png" % (i)
	cv.imwrite(path, comp_bw)
	path = "./capture/img%d_mosaic_rgb.png" % (i)
	cv.imwrite(path, comp_rgb)

	i += 1

	# Display the captured frames
	# cv.imshow("Frame BW", bw)
	cv.imshow("Mosaic BW", resized_bw)
	cv.imshow("Mosaic RGB", resized_rgb)

	key = cv.waitKey(0)
	if (key & 0xFF) == ord('q'):
		# Exit
		break

# When everything done, release the capture
cap.release()
cv.destroyAllWindows()