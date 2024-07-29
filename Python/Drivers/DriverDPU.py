import os
import time
import numpy as np
import cv2
import random
import colorsys
from matplotlib.patches import Rectangle
import matplotlib.pyplot as plt

import pynq_dpu
from pynq_dpu import DpuOverlay

class NBMDPUYoloV3:

	def __init__(self, overlay):
		self.overlay = overlay

		# Load model
		print("Driver DPU: Load Yolov3 model")
		try:
			self.overlay.load_model("./tf_yolov3_voc.xmodel")
			print("Driver DPU: Model loaded successfully")
		except:
			print("Test DPU: Failed to load model")
			assert False, "Failed to load model"

		#
		anchor_list = [10,13,16,30,33,23,30,61,62,45,59,119,116,90,156,198,373,326]
		anchor_float = [float(x) for x in anchor_list]
		self.anchors = np.array(anchor_float).reshape(-1, 2)

		# Prepare VART stuff
		print("Driver DPU: Load DPU with VART")
		self.dpu = self.overlay.runner

		self.inputTensors = self.dpu.get_input_tensors()
		self.outputTensors = self.dpu.get_output_tensors()

		self.shapeIn = tuple(self.inputTensors[0].dims)

		self.shapeOut0 = (tuple(self.outputTensors[0].dims)) # (1, 13, 13, 75)
		self.shapeOut1 = (tuple(self.outputTensors[1].dims)) # (1, 26, 26, 75)
		self.shapeOut2 = (tuple(self.outputTensors[2].dims)) # (1, 52, 52, 75)

		self.outputSize0 = int(self.outputTensors[0].get_data_size() / self.shapeIn[0]) # 12675
		self.outputSize1 = int(self.outputTensors[1].get_data_size() / self.shapeIn[0]) # 50700
		self.outputSize2 = int(self.outputTensors[2].get_data_size() / self.shapeIn[0]) # 202800

		self.input_data = [np.empty(self.shapeIn, dtype=np.float32, order="C")]
		self.output_data = [np.empty(self.shapeOut0, dtype=np.float32, order="C"), 
							np.empty(self.shapeOut1, dtype=np.float32, order="C"),
							np.empty(self.shapeOut2, dtype=np.float32, order="C")]
		self.image = self.input_data[0]

	# Load classes
	def load_classes(self, classes_path):
		# Load classes from file
		with open(classes_path) as f:
			self.class_names = f.readlines()
		self.class_names = [c.strip() for c in self.class_names]

		# Prepare drawing stuff
		self.num_classes = len(self.class_names)
		self.hsv_tuples = [(1.0 * x / self.num_classes, 1., 1.) for x in range(self.num_classes)]
		self.colors = list(map(lambda x: colorsys.hsv_to_rgb(*x), self.hsv_tuples))
		self.colors = list(map(lambda x: 
						(int(x[0] * 255), int(x[1] * 255), int(x[2] * 255)), 
						self.colors))
		random.seed(0)
		random.shuffle(self.colors)
		random.seed(None)

	# Run
	def run(self, input_image):
		# Read input image
		# input_image = cv2.imread(os.path.join(image_folder, original_images[image_index]))

		# Pre-processing
		image_size = input_image.shape[:2]
		image_data = np.array(self.pre_process(input_image, (416, 416)), dtype=np.float32)

		# Fetch data to DPU and trigger it
		self.image[0,...] = image_data.reshape(self.shapeIn[1:])
		job_id = self.dpu.execute_async(self.input_data, self.output_data)
		self.dpu.wait(job_id)

		# Retrieve output data
		conv_out0 = np.reshape(self.output_data[0], self.shapeOut0)
		conv_out1 = np.reshape(self.output_data[1], self.shapeOut1)
		conv_out2 = np.reshape(self.output_data[2], self.shapeOut2)
		yolo_outputs = [conv_out0, conv_out1, conv_out2]

		# Decode output from YOLOv3
		boxes, scores, classes = self.evaluate(yolo_outputs, image_size, self.class_names, self.anchors)

		# if display:
		# 	_ = self.draw_boxes(input_image, boxes, scores, classes)

		return boxes, scores, classes

	# Resize image with unchanged aspect ratio using padding
	def letterbox_image(self, image, size):
		ih, iw, _ = image.shape
		w, h = size
		scale = min(w/iw, h/ih)
		#print(scale)
		
		nw = int(iw*scale)
		nh = int(ih*scale)
		#print(nw)
		#print(nh)

		image = cv2.resize(image, (nw,nh), interpolation=cv2.INTER_LINEAR)
		new_image = np.ones((h,w,3), np.uint8) * 128
		h_start = (h-nh)//2
		w_start = (w-nw)//2
		new_image[h_start:h_start+nh, w_start:w_start+nw, :] = image
		return new_image

	# Image preprocessing
	def pre_process(self, image, model_image_size):
		image = image[...,::-1]
		image_h, image_w, _ = image.shape
	
		if model_image_size != (None, None):
			assert model_image_size[0]%32 == 0, 'Multiples of 32 required'
			assert model_image_size[1]%32 == 0, 'Multiples of 32 required'
			boxed_image = self.letterbox_image(image, tuple(reversed(model_image_size)))
		else:
			new_image_size = (image_w - (image_w % 32), image_h - (image_h % 32))
			boxed_image = self.letterbox_image(image, new_image_size)
		image_data = np.array(boxed_image, dtype='float32')
		image_data /= 255.
		image_data = np.expand_dims(image_data, 0) 	
		return image_data

	# Functions to post-process the output after running a DPU task
	def _get_feats(self, feats, anchors, num_classes, input_shape):
		num_anchors = len(anchors)
		anchors_tensor = np.reshape(np.array(anchors, dtype=np.float32), [1, 1, 1, num_anchors, 2])
		grid_size = np.shape(feats)[1:3]
		nu = num_classes + 5
		predictions = np.reshape(feats, [-1, grid_size[0], grid_size[1], num_anchors, nu])
		grid_y = np.tile(np.reshape(np.arange(grid_size[0]), [-1, 1, 1, 1]), [1, grid_size[1], 1, 1])
		grid_x = np.tile(np.reshape(np.arange(grid_size[1]), [1, -1, 1, 1]), [grid_size[0], 1, 1, 1])
		grid = np.concatenate([grid_x, grid_y], axis = -1)
		grid = np.array(grid, dtype=np.float32)

		box_xy = (1/(1+np.exp(-predictions[..., :2])) + grid) / np.array(grid_size[::-1], dtype=np.float32)
		box_wh = np.exp(predictions[..., 2:4]) * anchors_tensor / np.array(input_shape[::-1], dtype=np.float32)
		box_confidence = 1/(1+np.exp(-predictions[..., 4:5]))
		box_class_probs = 1/(1+np.exp(-predictions[..., 5:]))
		return box_xy, box_wh, box_confidence, box_class_probs

	def correct_boxes(self, box_xy, box_wh, input_shape, image_shape):
		box_yx = box_xy[..., ::-1]
		box_hw = box_wh[..., ::-1]
		input_shape = np.array(input_shape, dtype = np.float32)
		image_shape = np.array(image_shape, dtype = np.float32)
		new_shape = np.around(image_shape * np.min(input_shape / image_shape))
		offset = (input_shape - new_shape) / 2. / input_shape
		scale = input_shape / new_shape
		box_yx = (box_yx - offset) * scale
		box_hw *= scale

		box_mins = box_yx - (box_hw / 2.)
		box_maxes = box_yx + (box_hw / 2.)
		boxes = np.concatenate([
			box_mins[..., 0:1],
			box_mins[..., 1:2],
			box_maxes[..., 0:1],
			box_maxes[..., 1:2]
		], axis = -1)
		boxes *= np.concatenate([image_shape, image_shape], axis = -1)
		return boxes

	def boxes_and_scores(self, feats, anchors, classes_num, input_shape, image_shape):
		box_xy, box_wh, box_confidence, box_class_probs = self._get_feats(feats, anchors, classes_num, input_shape)
		boxes = self.correct_boxes(box_xy, box_wh, input_shape, image_shape)
		boxes = np.reshape(boxes, [-1, 4])
		box_scores = box_confidence * box_class_probs
		box_scores = np.reshape(box_scores, [-1, classes_num])
		return boxes, box_scores

	def nms_boxes(self, boxes, scores):
		"""Suppress non-maximal boxes.

		# Arguments
			boxes: ndarray, boxes of objects.
			scores: ndarray, scores of objects.

		# Returns
			keep: ndarray, index of effective boxes.
		"""
		x1 = boxes[:, 0]
		y1 = boxes[:, 1]
		x2 = boxes[:, 2]
		y2 = boxes[:, 3]

		areas = (x2-x1+1)*(y2-y1+1)
		order = scores.argsort()[::-1]

		keep = []
		while order.size > 0:
			i = order[0]
			keep.append(i)

			xx1 = np.maximum(x1[i], x1[order[1:]])
			yy1 = np.maximum(y1[i], y1[order[1:]])
			xx2 = np.minimum(x2[i], x2[order[1:]])
			yy2 = np.minimum(y2[i], y2[order[1:]])

			w1 = np.maximum(0.0, xx2 - xx1 + 1)
			h1 = np.maximum(0.0, yy2 - yy1 + 1)
			inter = w1 * h1

			ovr = inter / (areas[i] + areas[order[1:]] - inter)
			inds = np.where(ovr <= 0.55)[0]  # threshold
			order = order[inds + 1]

		return keep

	def draw_boxes(self, image, boxes, scores, classes):
		for i, bbox in enumerate(boxes):
			[top, left, bottom, right] = np.array(bbox[:4], dtype=np.int32)
			score = scores[i]
			class_index = classes[i]
			label = '{}: {:.4f}'.format(self.class_names[class_index], score) 
			color = self.colors[class_index]
			rect_thick = 2
			cv2.rectangle(image, (left, top), (right, bottom), color, rect_thick)
			font_scale = 2
			cv2.putText(image, label, (left + 5, top + 20), cv2.FONT_HERSHEY_SIMPLEX, 1, color, font_scale, cv2.LINE_AA)
		return image

	def evaluate(self, yolo_outputs, image_shape, class_names, anchors):
		score_thresh = 0.2
		anchor_mask = [[6, 7, 8], [3, 4, 5], [0, 1, 2]]
		boxes = []
		box_scores = []
		input_shape = np.shape(yolo_outputs[0])[1 : 3]
		input_shape = np.array(input_shape)*32

		for i in range(len(yolo_outputs)):
			_boxes, _box_scores = self.boxes_and_scores(
				yolo_outputs[i], anchors[anchor_mask[i]], len(class_names), 
				input_shape, image_shape)
			boxes.append(_boxes)
			box_scores.append(_box_scores)
		boxes = np.concatenate(boxes, axis = 0)
		box_scores = np.concatenate(box_scores, axis = 0)

		mask = box_scores >= score_thresh
		boxes_ = []
		scores_ = []
		classes_ = []
		for c in range(len(class_names)):
			class_boxes_np = boxes[mask[:, c]]
			class_box_scores_np = box_scores[:, c]
			class_box_scores_np = class_box_scores_np[mask[:, c]]
			nms_index_np = self.nms_boxes(class_boxes_np, class_box_scores_np) 
			class_boxes_np = class_boxes_np[nms_index_np]
			class_box_scores_np = class_box_scores_np[nms_index_np]
			classes_np = np.ones_like(class_box_scores_np, dtype = np.int32) * c
			boxes_.append(class_boxes_np)
			scores_.append(class_box_scores_np)
			classes_.append(classes_np)
		boxes_ = np.concatenate(boxes_, axis = 0)
		scores_ = np.concatenate(scores_, axis = 0)
		classes_ = np.concatenate(classes_, axis = 0)

		return boxes_, scores_, classes_