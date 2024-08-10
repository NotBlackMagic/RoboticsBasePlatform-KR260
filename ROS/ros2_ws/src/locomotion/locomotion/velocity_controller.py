import os
from ament_index_python.packages import get_package_share_directory
import math
import numpy as np
import time
import collections

# Import PYNQ Stuff
import pynq
from pynq import Overlay
from pynq.lib import AxiGPIO

from locomotion.DriverEncoder import NBMEncoder
from locomotion.DriverPWM import NBMPWM

#Import ROS stuff
import rclpy
from rclpy.clock import Clock
from rcl_interfaces.msg import ParameterDescriptor
from rclpy.node import Node
from rclpy.qos import QoSProfile, QoSReliabilityPolicy, QoSHistoryPolicy, QoSDurabilityPolicy

from locomotion.transforms import quaternion_from_euler
from locomotion.ackermann import AckermannOdometry
from locomotion.pid import PID

# ROS messages
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist, TransformStamped
from tf2_ros import TransformBroadcaster

class VelocityController(Node):
	def __init__(self):
		super().__init__("VelocityController")

		# Set used parameters
		# Default values are for the MR-Buggy3
		param_descriptor = ParameterDescriptor(description = "Sets the wheel base (in m), distance between front and back wheels.")
		self.declare_parameter("wheel_base", 0.226, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the encoder ticks per full revolution.")
		self.declare_parameter("tick_per_revolution", 12, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the motor to wheel gear ratio.")
		self.declare_parameter("motor_gear_ratio", 27.5, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the wheel circumference (in m) of the wheels with encoder.")
		self.declare_parameter("wheel_circumference", 0.23248, param_descriptor)
		# Steering scaling (from [-1, 1] range to angle in rad): y = x * 0.314 rad (x from -1 to 1)
		param_descriptor = ParameterDescriptor(description = "Sets the steering scaling (in rad) from [-1, 1] range to steering angle.")
		self.declare_parameter("steering_scaling", 0.314, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the steering offset (in rad) from [-1, 1] range to steering angle.")
		self.declare_parameter("steering_offset", 0.0, param_descriptor)
		# Thrust/speed scaling (from [-1, 1] range to speed in m/s)): y = x * 0.8 m/s (x from -1 to 1)
		param_descriptor = ParameterDescriptor(description = "Sets the thrust scaling (in m/s) from [-1, 1] range to vehicle speed.")
		self.declare_parameter("thrust_scaling", 0.8, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the thrust offset (in m/s) from [-1, 1] range to vehicle speed.")
		self.declare_parameter("thrust_offset", 0.0, param_descriptor)

		param_descriptor = ParameterDescriptor(description = "Sets the update and publish rate (in Hz) of the odometry message.")
		self.declare_parameter("odometry_rate", 10.0, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets if the odometry TF message should be published.")
		self.declare_parameter("publish_tf", True, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the Odometry topic name.")
		self.declare_parameter("odom_topic", "/wheel/odometry", param_descriptor)		
		param_descriptor = ParameterDescriptor(description = "Sets the Odometry frame ID.")
		self.declare_parameter("frame_id", "odom", param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the Odometry child frame ID.")
		self.declare_parameter("child_frame_id", "base_link", param_descriptor)

		param_descriptor = ParameterDescriptor(description = "Sets the update rate (in Hz) of the RC manual control PID loop.")
		self.declare_parameter("pid_loop_rate", 10.0, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the thrust PID proportional gain.")
		self.declare_parameter("throttle_pid_kp", 0.5, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the thrust PID integral gain.")
		self.declare_parameter("throttle_pid_ki", 1.5, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the thrust PID derivative gain.")
		self.declare_parameter("throttle_pid_kd", 0.0, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the thrust PID integral windup limit.")
		self.declare_parameter("throttle_pid_lim", 0.95, param_descriptor)
		param_descriptor = ParameterDescriptor(description = "Sets the subscribed Twist topic name.")
		self.declare_parameter("twist_topic", "twist", param_descriptor)

		# Load parameters
		wheel_base = self.get_parameter("wheel_base").value
		tick_per_revolution = self.get_parameter("tick_per_revolution").value
		motor_gear_ratio = self.get_parameter("motor_gear_ratio").value
		wheel_circumference = self.get_parameter("wheel_circumference").value
		steering_scaling = self.get_parameter("steering_scaling").value
		steering_offset = self.get_parameter("steering_offset").value
		thrust_scaling = self.get_parameter("thrust_scaling").value
		thrust_offset = self.get_parameter("thrust_offset").value
		twist_topic = self.get_parameter("twist_topic").value
		pid_loop_rate = self.get_parameter("pid_loop_rate").value
		throttle_pid_kp = self.get_parameter("throttle_pid_kp").value
		throttle_pid_ki = self.get_parameter("throttle_pid_ki").value
		throttle_pid_kd = self.get_parameter("throttle_pid_kd").value
		throttle_pid_lim = self.get_parameter("throttle_pid_lim").value

		odometry_rate = self.get_parameter("odometry_rate").value
		self.publish_tf = self.get_parameter("publish_tf").value
		odom_topic = self.get_parameter("odom_topic").value
		self.frame_id = self.get_parameter("frame_id").value
		self.child_frame_id = self.get_parameter("child_frame_id").value

		# Init PYNQ Overlay and driver
		print("Load Overlay")
		path = os.path.join(get_package_share_directory('locomotion'), 'kr260_pixhawk_v3', 'kr260_pixhawk_v3.bit')
		print(path)
		self.pynq_ovl = Overlay(path, download = False)
		# PWM control to motor driver, change to PWM control
		self.rc_pwm0 = NBMPWM(self.pynq_ovl.axi_timer_0, 10000, 100) # Recommened 5-20 kHz (???)
		# Encoder feedback
		self.spin_dir = 1
		self.motor_enc = NBMEncoder(self.pynq_ovl.axi_timer_4)
		# All as servo control, default settings of NBMPWM
		self.rc_pwm1 = NBMPWM(self.pynq_ovl.axi_timer_1)
		self.rc_pwm2 = NBMPWM(self.pynq_ovl.axi_timer_2)
		self.rc_pwm3 = NBMPWM(self.pynq_ovl.axi_timer_3)
		# GPIO for motor direction
		gpio_ip = self.pynq_ovl.ip_dict['axi_gpio_0']
		self.motor_dir_io = AxiGPIO(gpio_ip).channel1[8]

		# Init subscriber variables
		self.linear = np.array([0.0, 0.0, 0.0])
		self.angular = np.array([0.0, 0.0, 0.0])
		self.manual_control_steering = 0.0
		self.manual_control_throttle = 0.0

		# Init Velocity Controller PID variables
		self.throttle_pid = PID(throttle_pid_kp, throttle_pid_ki, throttle_pid_kd, throttle_pid_lim)
		# self.steering_pid = PID()

		# Start ROS Subscribers
		self.twist_subscriber = self.create_subscription(
			Twist,
			twist_topic,
			self.twist_callback,
			10)

		# Start ROS Publishers
		self.odometry_publisher = self.create_publisher(Odometry, odom_topic, 10)
		self.tf_odom_broadcaster = TransformBroadcaster(self)

		# Start and set-up Ackermann Odometry
		self.ackermann_odometry = AckermannOdometry(wheel_base)
		self.ackermann_odometry.setup_motor_encoders(motor_gear_ratio, wheel_circumference)
		self.ackermann_odometry.setup_rc_scaling(steering_offset, steering_scaling, thrust_offset, thrust_scaling)

		# Start PID loop update timer, control values published/written here to
		timer_period = 1.0 / pid_loop_rate  # seconds
		self.timer = self.create_timer(timer_period, self.velocity_control_callback)
		self.pid_dt = timer_period

		# Start Odometry calculation timer
		timer_period = 1.0 / odometry_rate	# seconds
		self.timer = self.create_timer(timer_period, self.publish_odometry)
		self.dt = timer_period

	# Callback function for new Twist message reception
	def twist_callback(self, msg):
		self.linear[0] = msg.linear.x
		self.linear[1] = msg.linear.y
		self.linear[2] = msg.linear.z
		self.angular[0] = msg.angular.x
		self.angular[1] = msg.angular.y
		self.angular[2] = msg.angular.z

	# ROS Odometry message publisher function
	def publish_odometry(self):
		odom_msg = Odometry()
		odom_msg.header.stamp = self.get_clock().now().to_msg()
		# Set Frame IDs
		odom_msg.header.frame_id = self.frame_id
		odom_msg.child_frame_id = self.child_frame_id
		# Set pose position
		odom_msg.pose.pose.position.x = self.ackermann_odometry.pose_point[0]
		odom_msg.pose.pose.position.y = self.ackermann_odometry.pose_point[1]
		odom_msg.pose.pose.position.z = self.ackermann_odometry.pose_point[2]
		# Set pose orientation
		quaternion = quaternion_from_euler(	self.ackermann_odometry.pose_orientation[0], 
											self.ackermann_odometry.pose_orientation[1], 
											self.ackermann_odometry.pose_orientation[2])
		odom_msg.pose.pose.orientation.x = quaternion[0]
		odom_msg.pose.pose.orientation.y = quaternion[1]
		odom_msg.pose.pose.orientation.z = quaternion[2]
		odom_msg.pose.pose.orientation.w = quaternion[3]
		# Set linear twist
		odom_msg.twist.twist.linear.x = self.ackermann_odometry.twist_linear[0]
		odom_msg.twist.twist.linear.y = self.ackermann_odometry.twist_linear[1]
		odom_msg.twist.twist.linear.z = self.ackermann_odometry.twist_linear[2]
		# Set angular twist
		odom_msg.twist.twist.angular.x = self.ackermann_odometry.twist_angular[0]
		odom_msg.twist.twist.angular.y = self.ackermann_odometry.twist_angular[1]
		odom_msg.twist.twist.angular.z = self.ackermann_odometry.twist_angular[2]

		# print("Odom: X: %.2f, Y: %.2f, Yaw: %.2f\n" % (self.ackermann_odometry.pose_point[0], self.ackermann_odometry.pose_point[1], self.ackermann_odometry.pose_orientation[2]))

		# Publish
		self.odometry_publisher.publish(odom_msg)

		if self.publish_tf == True:
			# Set TF message for the odometry message
			tf2_msg = TransformStamped()
			tf2_msg.header.stamp = self.get_clock().now().to_msg()
			# Set Frame IDs
			tf2_msg.header.frame_id = self.frame_id
			tf2_msg.child_frame_id = self.child_frame_id
			# Set position transform between frames
			tf2_msg.transform.translation.x = self.ackermann_odometry.pose_point[0]
			tf2_msg.transform.translation.y = self.ackermann_odometry.pose_point[1]
			tf2_msg.transform.translation.z = self.ackermann_odometry.pose_point[2]
			# Set rotation transform between frames
			tf2_msg.transform.rotation.x = quaternion[0]
			tf2_msg.transform.rotation.y = quaternion[1]
			tf2_msg.transform.rotation.z = quaternion[2]
			tf2_msg.transform.rotation.w = quaternion[3]
			# Publish the transformation
			self.tf_odom_broadcaster.sendTransform(tf2_msg)

	def velocity_control_callback(self):
		# Read encoder feedback value
		motor_rps = self.motor_enc.read_rps() * self.spin_dir
		self.ackermann_odometry.update_using_motor_encoder(self.manual_control_steering, motor_rps)

		# PID Controller for throttle
		feedback = self.ackermann_odometry.twist_linear[0]
		target = self.ackermann_odometry.speed_to_rc_command_throttle(self.linear[0])
		throttle_ctrl = self.throttle_pid.PIDUpdate(target, feedback, self.pid_dt)
		print("PID: Target: %.2f; Current: %.2f; Error: %.2f; P: %.2f; I: %.4f; D: %.2f; Out: %.2f" % (target, feedback, self.throttle_pid.prev_error, self.throttle_pid.pid_p, self.throttle_pid.pid_i, self.throttle_pid.pid_d, throttle_ctrl))

		# print("TW: %.2f; Ctrl: %.2f" % (self.linear[0], throttle_ctrl))

		# PID Controller for steering (for now direct calculation)
		steering_angle = self.ackermann_odometry.steering_angle_from_velocity(self.linear[0], self.angular[2])
		steering_ctrl = self.ackermann_odometry.angle_to_rc_command_steering(steering_angle)
		# steering_ctrl = self.steering_pid.PIDUpdate(self.angular[2], self.ackermann_odometry.twistAngular[2], self.dt)

		# print("RC Thrust: %.3f, Steering: %.3f rad | %.3f" % (throttle_ctrl, steering_angle, steering_ctrl))

		# Scale values (Not required)
		self.manual_control_throttle = throttle_ctrl
		self.manual_control_steering = steering_ctrl
		
		# print("PID: E: %02f; P: %02f; I: %02f; D: %02f; Out: %02f" % (self.throttle_pid.prev_error, self.throttle_pid.pid_p, self.throttle_pid.pid_i, self.throttle_pid.pid_d, self.manual_control_throttle))

		self.set_rc_pwm_output(self.manual_control_throttle, self.manual_control_steering, 0.0, 0.0)

	def set_rc_pwm_output(self, ch0: float, ch1: float, ch2: float, ch3: float):
		# Control range is [-1, 1]
		# Channel 0: Motor control signal, as PWM signal
		# Set motor rotation direction, GPIO controlled
		if ch0 < 0:
			# Reverse direction
			self.spin_dir = -1
			self.motor_dir_io.write(0)
			ch0 = -ch0
		else:
			self.spin_dir = 1
			self.motor_dir_io.write(1)
		dc = ch0 * 100
		dc = self.clamp(dc, 0.0, 100)
		dc = 100 - dc	# Invert, due to motor controller
		self.rc_pwm0.set_duty_cyle(dc)
		# Channel 1: Servo control signal
		pulse_high_ms = 1.5 + ch1*0.5
		pulse_high_ms = self.clamp(pulse_high_ms, 1.2, 1.8)
		self.rc_pwm1.set_pulse_high(pulse_high_ms)
		# print("PWM0: %.2f; PWM1: %.2f;" % (dc, pulse_high_ms))
		# Channel 2: Servo control signal
		pulse_high_ms = 1.5 + ch2*0.5
		pulse_high_ms = self.clamp(pulse_high_ms, 1.0, 2.0)
		self.rc_pwm2.set_pulse_high(pulse_high_ms)
		# Channel 3: Servo control signal
		pulse_high_ms = 1.5 + ch3*0.5
		pulse_high_ms = self.clamp(pulse_high_ms, 1.0, 2.0)
		self.rc_pwm3.set_pulse_high(pulse_high_ms)

	def clamp(self, val, minVal, maxVal):
		return max(min(maxVal, val), minVal)

		

def main(args=None):
	rclpy.init(args=args)

	print("Starting Velocity Controller...\n")

	velocity_controller = VelocityController()

	# plt.ion()
	# plt.show()
	rclpy.spin(velocity_controller)

	# Destroy the node explicitly
	# (optional - otherwise it will be done automatically
	# when the garbage collector destroys the node object)
	velocity_controller.destroy_node()
	rclpy.shutdown()


if __name__ == '__main__':
	main()