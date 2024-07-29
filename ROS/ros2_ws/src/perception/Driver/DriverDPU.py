import os
import time
import numpy as np
import cv2
import matplotlib.pyplot as plt

import pynq_dpu
from pynq_dpu import DpuOverlay

_R_MEAN = 123.68
_G_MEAN = 116.78
_B_MEAN = 103.94

MEANS = [_B_MEAN,_G_MEAN,_R_MEAN]

def resize_shortest_edge(image, size):
	H, W = image.shape[:2]
	if H >= W:
		nW = size
		nH = int(float(H)/W * size)
	else:
		nH = size
		nW = int(float(W)/H * size)
	return cv2.resize(image,(nW,nH))

def mean_image_subtraction(image, means):
	B, G, R = cv2.split(image)
	B = B - means[0]
	G = G - means[1]
	R = R - means[2]
	image = cv2.merge([R, G, B])
	return image

def BGR2RGB(image):
	B, G, R = cv2.split(image)
	image = cv2.merge([R, G, B])
	return image

def central_crop(image, crop_height, crop_width):
	image_height = image.shape[0]
	image_width = image.shape[1]
	offset_height = (image_height - crop_height) // 2
	offset_width = (image_width - crop_width) // 2
	return image[offset_height:offset_height + crop_height, offset_width:
					offset_width + crop_width, :]

def normalize(image):
	image=image/256.0
	image=image-0.5
	image=image*2
	return image

def preprocess_fn(image, crop_height = 224, crop_width = 224):
	image = resize_shortest_edge(image, 256)
	image = mean_image_subtraction(image, MEANS)
	image = central_crop(image, crop_height, crop_width)
	return image

def calculate_softmax(data):
	result = np.exp(data)
	return result

def predict_label(softmax):
	with open("words.txt", "r") as f:
		lines = f.readlines()
	return lines[np.argmax(softmax)-1]

def run(frame, display=False):
	#preprocessed = preprocess_fn(cv2.imread(os.path.join(image_folder, original_images[image_index])))
	print("Test DPU: Run preprocessing")
	preprocessed = preprocess_fn(frame)
	print("Test DPU: Run reshape")
	image[0,...] = preprocessed.reshape(shapeIn[1:])
	print("Test DPU: Run DPU execute")
	job_id = dpu.execute_async(input_data, output_data)
	print("Test DPU: Wait for DPU...")
	dpu.wait(job_id)
	temp = [j.reshape(1, outputSize) for j in output_data]
	print("Test DPU: Calcualte softmax")
	softmax = calculate_softmax(temp[0][0])
	if display:
		display_image = cv2.imread(os.path.join(image_folder, original_images[image_index]))
		_, ax = plt.subplots(1)
		_ = ax.imshow(cv2.cvtColor(display_image, cv2.COLOR_BGR2RGB))
		print("Classification: {}".format(predict_label(softmax)))
	return softmax

#Load overlay, without downloading to PS (FPGA)
#ol = DpuOverlay("./kr260_dpu/kr260_dpu.bit", download = False)
ol = DpuOverlay("dpu.bit")

#Test DPU
print("Test DPU: dpu_resnet50.xmodel")
try:
	ol.load_model("dpu_resnet50.xmodel")
	print("Test DPU: Model loaded successfully")
except:
	print("Test DPU: Failed to load model")
	assert False, "Failed to load model"

#Use VART
print("Test DPU: Load DPU with VART")
dpu = ol.runner

inputTensors = dpu.get_input_tensors()
outputTensors = dpu.get_output_tensors()

shapeIn = tuple(inputTensors[0].dims)
shapeOut = tuple(outputTensors[0].dims)
outputSize = int(outputTensors[0].get_data_size() / shapeIn[0])

softmax = np.empty(outputSize)

#Buffers to store input and output data
output_data = [np.empty(shapeOut, dtype=np.float32, order="C")]
input_data = [np.empty(shapeIn, dtype=np.float32, order="C")]
image = input_data[0]

#Now use OpenCV to read camera data
print("Test DPU: Start OpenCV video capture")
cap = cv2.VideoCapture(0)
#cap = cv2.VideoCapture('v4l2src device=/dev/video3 ! video/x-raw, framerate=30/1, width=640, height=480 ! appsink', cv2.CAP_GSTREAMER)

i = 0
while cap.isOpened():
	# Capture frame-by-frame
	print("Test DPU: Capture new frame")
	ret, frame = cap.read()
	# if frame is read correctly ret is True
	if not ret:
		print("Can't receive frame from left camera (stream end?). Exiting ...")
		break

	# Display the captured frames
	# cv2.imshow("Original frame", frame)

	#Run through resnet
	print("Test DPU: Run model on current frame")
	soft = run(frame, display=False)
	print("Classification: {}".format(predict_label(soft)))

	time.sleep(1)
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
cap.release()
# out.release()
cv2.destroyAllWindows()