import math
import numpy as np
import serial
import time
import threading

# Import PYNQ Stuff
from pynq import Overlay

from Drivers.DriverIBus import IBusFrame

#Import ROS stuff
import rclpy
from rclpy.clock import Clock
from rcl_interfaces.msg import ParameterDescriptor
from rclpy.node import Node

# ROS messages
from geometry_msgs.msg import Twist

class RCRemoteControl(Node):
	def __init__(self):
		super().__init__("RCRemoteControl")

		# Set used parameters
		param_descriptor = ParameterDescriptor(description = "Sets the published Twist topic name.")
		self.declare_parameter("twist_topic", "twist", param_descriptor)

		# Load parameters
		twist_topic = self.get_parameter("twist_topic").value
		twist_rate = 10
		
		self.linear_speed_x = 10.0					# Maximum forward speed in m/s
		self.angular_speed_yaw = math.radians(18)	# Maximum turn speed in rad/s (converted from deg/s)

		self.x = 0.0
		self.th  = 0.0

		# Init PYNQ Overlay and driver
		self.iBusFrame = IBusFrame()
		try:
			self.rc_serial = serial.Serial(
			port = "/dev/ttyUL1",
			baudrate = 115200,
			bytesize = serial.EIGHTBITS,
			stopbits = serial.STOPBITS_ONE,
			parity = serial.PARITY_NONE)
		except serial.SerialException as e:
			print("could not open serial port '{}': {}".format("/dev/ttyUL1", e))
			self.rc_serial = None

		# Init serial reader
		self.serial_handler = threading.Thread(target=self.serial_handler)
		self.serial_handler.start()

		# Start ROS Publishers
		self.publisher_twist = self.create_publisher(Twist, twist_topic, 10)

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
		self.publisher_twist.publish(twist_msg)

	# Serial reader thread
	def serial_handler(self):
		while True:
			frame = b""
			while True:
				by = self.rc_serial.read()
				# print(by)
				if len(frame) == 0 and by == self.iBusFrame.IBUS_PACKET_LENGTH:
					frame += by
				elif len(frame) > 0:
					frame += by
					if len(frame) == int.from_bytes(self.iBusFrame.IBUS_PACKET_LENGTH, "big") :
						break

			# Decode packet
			# print("Decode iBus Frame")
			newFrame = self.iBusFrame.Decode(frame)

			if newFrame:
				# Checksum valid, passed test
				# print("New iBus Frame: %d %d %d %d" % (self.iBusFrame.channels[0], self.iBusFrame.channels[1], self.iBusFrame.channels[2], self.iBusFrame.channels[3]))
				# Update control variables, RC controls from iBus are in range [1000, 2000] with 1500 being the center/neutral
				self.x = (self.iBusFrame.channels[2] - 1500.0) / 500.0		# Scale to range [-1.0, 1.0]
				self.th = (self.iBusFrame.channels[0] - 1500.0) / 500.0		# Scale to range [-1.0, 1.0]
			else:
				# Checksum failed
				print("Checksum error")	
		
		self.rc_serial.close()
		

def main(args=None):
	rclpy.init(args=args)

	print("Starting RC Remote Control...\n")

	rc_remote_control = RCRemoteControl()

	rclpy.spin(rc_remote_control)

	# Destroy the node explicitly
	# (optional - otherwise it will be done automatically
	# when the garbage collector destroys the node object)
	rc_remote_control.destroy_node()
	rclpy.shutdown()


if __name__ == '__main__':
	main()