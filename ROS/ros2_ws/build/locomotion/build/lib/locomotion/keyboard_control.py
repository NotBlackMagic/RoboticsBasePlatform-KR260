import math
import numpy as np
from pynput import keyboard

import rclpy
from rclpy.clock import Clock
from rcl_interfaces.msg import ParameterDescriptor
from rclpy.node import Node
from rclpy.qos import QoSProfile, QoSReliabilityPolicy, QoSHistoryPolicy, QoSDurabilityPolicy

# ROS messages
from geometry_msgs.msg import Twist

# https://github.com/samuko-things/pynput_teleop_twist_keyboard/blob/main/pynput_teleop_twist_keyboard/pynput_teleop_twist_keyboard.py
class KeyboardControl(Node):
	def __init__(self):
		super().__init__("KeyboardControl")

		# Set used parameters
		param_descriptor = ParameterDescriptor(description = "Sets the published Twist topic name.")
		self.declare_parameter("twist_topic", "twist", param_descriptor)

		# Load parameters
		twist_topic = self.get_parameter("twist_topic").value
		twist_rate = 10
		
		self.linear_speed_x = 2.0					# Forward speed in m/s
		self.angular_speed_yaw = math.radians(90)	# Turn speed in rad/s (converted from deg/s)

		self.x = 0.0
		self.th  = 0.0

		# Start ROS Publishers
		self.publisher_twist = self.create_publisher(Twist, twist_topic, 10)

		# Start keyboard listener
		listener = keyboard.Listener(on_press=self.keyboard_on_press, on_release=self.keyboard_on_release)
		listener.start()

		# Start twist publisher timer
		timer_period = 1.0 / twist_rate  # seconds
		self.timer = self.create_timer(timer_period, self.publish_twist)
		self.dt = timer_period

	# Twist message publish function
	def publish_twist(self):
		twist_msg = Twist()
		twist_msg.linear.x = self.x * self.linear_speed_x
		twist_msg.linear.y = 0.0
		twist_msg.linear.z = 0.0
		twist_msg.angular.x = 0.0
		twist_msg.angular.y = 0.0
		twist_msg.angular.z = self.th * self.angular_speed_yaw
		print("New Twist msg: LinX: %d; AngZ: %d" % (twist_msg.linear.x, twist_msg.angular.z))
		self.publisher_twist.publish(twist_msg)

	# Keyboard keypress callback
	def keyboard_on_press(self, key):
		# For linear (forward/backwards) motion
		if key == keyboard.Key.up:
			self.x = 1.0
		elif key == keyboard.Key.down:
			self.x = -1.0

		# For angular (turn left/right) motion
		if key == keyboard.Key.left:
			# CCW rotation
			self.th = 1.0
		elif key == keyboard.Key.right:
			# CW rotation
			self.th = -1.0

	# Keyboard keyrelease callback
	def keyboard_on_release(self, key):
		# For linear (forward/backwards) motion
		if key == keyboard.Key.up or key == keyboard.Key.down:
			self.x = 0.0

		# For angular (turn left/right) motion
		if key == keyboard.Key.left or key == keyboard.Key.right:
			self.th = 0.0
		

def main(args=None):
	rclpy.init(args=args)

	print("Starting Keyboard Control...\n")

	keyboard_control = KeyboardControl()

	rclpy.spin(keyboard_control)

	# Destroy the node explicitly
	# (optional - otherwise it will be done automatically
	# when the garbage collector destroys the node object)
	keyboard_control.destroy_node()
	rclpy.shutdown()


if __name__ == '__main__':
	main()