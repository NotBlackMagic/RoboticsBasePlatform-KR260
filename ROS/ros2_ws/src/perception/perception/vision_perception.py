import math
import numpy as np
import serial
import time
import threading

from pynmeagps import NMEAReader, latlon2dms, latlon2dmm

#Import ROS stuff
import rclpy
from rclpy.clock import Clock
from rcl_interfaces.msg import ParameterDescriptor
from rclpy.node import Node

# ROS messages
from geometry_msgs.msg import Twist

class VisionPerception(Node):
	def __init__(self):
		super().__init__("VisionPerception")
		
		# Set used parameters
		# param_descriptor = ParameterDescriptor(description = "Sets the published Twist topic name.")
		# self.declare_parameter("twist_topic", "twist", param_descriptor)

		# Load parameters
		# twist_topic = self.get_parameter("twist_topic").value

		# Init PYNQ Overlay and driver

		# Start ROS Publishers
		# self.publisher_twist = self.create_publisher(Twist, twist_topic, 10)

def main(args=None):
	rclpy.init(args=args)

	print("Starting Vision Perception Node...\n")

	vision_perception = VisionPerception()

	rclpy.spin(vision_perception)

	# Destroy the node explicitly
	# (optional - otherwise it will be done automatically
	# when the garbage collector destroys the node object)
	vision_perception.destroy_node()
	rclpy.shutdown()


if __name__ == '__main__':
	main()