import numpy as np
import cv2 as cv
import glob
import time

cap = cv.VideoCapture(0)
#cap = cv.VideoCapture('v4l2src device=/dev/video3 ! video/x-raw, framerate=30/1, width=640, height=480 ! appsink', cv.CAP_GSTREAMER)

i = 0
while cap.isOpened():
	# Capture frame-by-frame
	ret, frame = cap.read()
	# if frame is read correctly ret is True
	if not ret:
		print("Can't receive frame from camera (stream end?). Exiting ...")
		break

	# Display the captured frames
	# cv.imshow("Original frame", frame)

	#key = cv.waitKey(0)
	key = input()
	print(key)
	if key == 115 or key == 's':
		# Pressed s
		# Save to file
		print("Save captured images")
		cv.imwrite("./capture/img%d.png" % i, frame)
		i += 1
	elif key == 113 or key == 'q':
		# Pressed q
		break

# When everything done, release the capture
cap.release()
# out.release()
cv.destroyAllWindows()