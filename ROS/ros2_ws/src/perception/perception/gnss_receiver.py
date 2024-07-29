import math
import numpy as np
import serial
import time
import threading

from pynmeagps import NMEAReader, latlon2dms, latlon2dmm

from locomotion.transforms import quaternion_from_euler

#Import ROS stuff
import rclpy
from rclpy.clock import Clock
from rcl_interfaces.msg import ParameterDescriptor
from rclpy.node import Node

# ROS messages
from sensor_msgs.msg import NavSatFix
from sensor_msgs.msg import NavSatStatus
from geometry_msgs.msg import TransformStamped
from tf2_ros.static_transform_broadcaster import StaticTransformBroadcaster

class GNSSReceiver(Node):
	def __init__(self):
		super().__init__("GNSSReceiver")

		# Set used parameters
		param_descriptor = ParameterDescriptor(description = "Sets the NavSatFix topic name.")
		self.declare_parameter("navsatfix_topic", "/gps/fix", param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the NavSatFix frame ID.")
		self.declare_parameter("navsatfix_frame_id", "gps", param_descriptor)

		# Load parameters
		navsatfix_topic = self.get_parameter("navsatfix_topic").value
		self.navsatfix_frame_id = self.get_parameter("navsatfix_frame_id").value

		# Init GPS status variables
		self.gps_status = 0		#0: No Fix; 1: Fix
		self.gps_lat = 0.0
		self.gps_lon = 0.0
		self.gps_alt = 0.0
		self.gps_eph = 0.0
		self.gps_epv = 0.0

		# Init serial port
		try:
			self.gnss_serial = serial.Serial(
			port = "/dev/ttyUL0",
			baudrate = 38400,
			bytesize = serial.EIGHTBITS,
			stopbits = serial.STOPBITS_ONE,
			parity = serial.PARITY_NONE,
			timeout=3)
		except serial.SerialException as e:
			print("could not open serial port '{}': {}".format("/dev/ttyUL0", e))
			self.rc_serial = None

		# Connect serial port to NMEA reader
		self.nmr = NMEAReader(self.gnss_serial)

		# Start ROS Publishers
		self.publisher_navsatfix = self.create_publisher(NavSatFix, navsatfix_topic, 10)
		self.tf_gps_static_broadcast = StaticTransformBroadcaster(self)

		# Publish static transforms once at startup
		self.gps_transform()

		# Start reader loop
		self.serial_handler()

	# GPS static TF
	def gps_transform(self):
		tf = TransformStamped()

		tf.header.stamp = self.get_clock().now().to_msg()
		tf.header.frame_id = "base_link"
		tf.child_frame_id = self.navsatfix_frame_id

		tf.transform.translation.x = 0.0
		tf.transform.translation.y = 0.0
		tf.transform.translation.z = 0.0
		quaternion = quaternion_from_euler(0.0, 0.0, 0.0)
		tf.transform.rotation.x = quaternion[0]
		tf.transform.rotation.y = quaternion[1]
		tf.transform.rotation.z = quaternion[2]
		tf.transform.rotation.w = quaternion[3]

		self.tf_gps_static_broadcast.sendTransform(tf)

	# Twist message publish function
	def publish_navsatfix(self):
		navsatfix_msg = NavSatFix()
		navsatfix_msg.header.stamp = self.get_clock().now().to_msg()
		# Set Frame IDs
		navsatfix_msg.header.frame_id = self.navsatfix_frame_id
		# Set satellite fix status information
		if self.gps_status == 0:
			navsatfix_msg.status.status = NavSatStatus.STATUS_NO_FIX
		elif self.gps_status == 1:
			navsatfix_msg.status.status = NavSatStatus.STATUS_FIX
		navsatfix_msg.status.service = NavSatStatus.SERVICE_GPS + NavSatStatus.SERVICE_GLONASS + NavSatStatus.SERVICE_COMPASS + NavSatStatus.SERVICE_GALILEO
		# Set latitude, longitude, altitude
		navsatfix_msg.latitude = self.gps_lat
		navsatfix_msg.longitude = self.gps_lon
		navsatfix_msg.altitude = self.gps_alt
		# Set covariance (Row-Major)
		navsatfix_msg.position_covariance[0] = self.gps_eph
		navsatfix_msg.position_covariance[1] = 0.0
		navsatfix_msg.position_covariance[2] = 0.0
		navsatfix_msg.position_covariance[3] = 0.0
		navsatfix_msg.position_covariance[4] = self.gps_eph
		navsatfix_msg.position_covariance[5] = 0.0
		navsatfix_msg.position_covariance[6] = 0.0
		navsatfix_msg.position_covariance[7] = 0.0
		navsatfix_msg.position_covariance[8] = self.gps_epv
		# Set covariance type
		navsatfix_msg.position_covariance_type = NavSatFix.COVARIANCE_TYPE_UNKNOWN
		# Publish message
		self.publisher_navsatfix.publish(navsatfix_msg)

	# Serial (GNSS) reader
	def serial_handler(self):
		while(True):
			raw_data, msg = self.nmr.read()
			if msg is not None:
				if msg.msgID == "GGA":
					# GPS Quality indicator 
					if msg.quality == 1:
						self.gps_status = 1
					else:
						self.gps_status = 0
					# Lat, lon, alt data
					self.gps_lat = msg.lat
					self.gps_lon = msg.lon
					self.gps_alt = msg.alt
					# Accuracy estimation
					self.gps_eph = msg.HDOP * 4.0	#Rough accuracy calculation

					self.publish_navsatfix()
				elif msg.msgID == "GSA":
					# Accuracy estimation
					self.gps_eph = msg.HDOP * 4.0	#Rough accuracy calculation
					self.gps_epv = msg.VDOP * 4.0	#Rough accuracy calculation
				# else:
					# print(msg)

def main(args=None):
	rclpy.init(args=args)

	print("Starting GNSS Node...\n")

	gnss_receiver = GNSSReceiver()

	rclpy.spin(gnss_receiver)

	# Destroy the node explicitly
	# (optional - otherwise it will be done automatically
	# when the garbage collector destroys the node object)
	gnss_receiver.destroy_node()
	rclpy.shutdown()


if __name__ == '__main__':
	main()