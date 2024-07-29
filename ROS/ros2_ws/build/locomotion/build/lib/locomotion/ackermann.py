import math
import numpy as np
import time

class AckermannOdometry:
	def __init__(self, wheel_base: float):
		# Distance between front and rear wheels
		self.wheel_base = wheel_base

		# Encoder specific variables
		self.front_encoders = False
		self.back_encoders = False
		self.encoder_values = np.array([0, 0, 0, 0])		# frVal, flVal, brVal, blVal
		self.ticks_per_revolution = 0
		self.wheel_circumference = 0
		self.encoder_count = np.array([0, 0, 0, 0])
		self.rps = np.array([0.0, 0.0, 0.0, 0.0])

		#Scaling variables
		self.speed_scale = np.array([0.0, 1.0])	# y = s[0] + s[1] * x
		self.steering_scale = np.array([0.0, 1.0])	# y = s[0] + s[1] * x

		# Time keeping variable
		self.time = time.time()

		# Pose variables
		self.pose_point = np.array([0.0, 0.0, 0.0])	# Pose: X, Y, Z (global referenced)
		self.pose_orientation = np.array([0.0, 0.0, 0.0])	# Orientation: X (roll), Y (pitch), Z (yaw) (local referenced)

		# Twist (speed) variables
		self.twist_linear = np.array([0.0, 0.0, 0.0])	# Linear velocities (m/s): X, Y, Z (local referenced)
		self.twist_angular = np.array([0.0, 0.0, 0.0])	# Angular Velocities (rad/s): X (roll), Y (pitch), Z (yaw) (local referenced)

	def setup_encoders(self, front: bool, back: bool, ticks_per_revolution: int, wheel_circumference: float):
		# Has encoders
		self.front_encoders = front
		self.back_encoders = back

		self.ticks_per_revolution = ticks_per_revolution
		self.wheel_circumference = wheel_circumference

	def setup_rc_scaling(self, steer_offset: float, steer_scale: float, speed_offset: float, speed_scale: float):
		self.speed_scale[0] = speed_offset
		self.speed_scale[1] = speed_scale
		self.steering_scale[0] = steer_offset
		self.steering_scale[1] = steer_scale

	def odometry_update(self, dT):
		# Forward displacement is: forward_speed * delta_time
		dFW = self.twist_linear[0] * dT

		# Virtual wheel angle
		vYaw = self.twist_angular[2] * dT

		# Delta Yaw, change of yaw angle
		dYaw = (dFW / self.wheel_base) * math.tan(vYaw)

		# Delta X, change in X value (global reference)
		dX = dFW * math.cos(vYaw) * math.cos(self.pose_orientation[2])

		# Delta Y, change in Y value (global reference)
		dY = dFW * math.cos(vYaw) * math.sin(self.pose_orientation[2])

		# Absolute values
		self.pose_point[0] += dX
		self.pose_point[1] += dY
		self.pose_point[2] += 0
		self.pose_orientation[0] += 0
		self.pose_orientation[1] += 0
		self.pose_orientation[2] += dYaw

	def rc_command_throttle_to_speed(self, throttle: float):
		scaled_speed = 0

		# Scale [-1, 1] range to real speed in m/s using simple linear function: y = s[0] + s[1] * x
		scaled_speed = self.speed_scale[0] + self.speed_scale[1] * throttle

		return scaled_speed

	def speed_to_rc_command_throttle(self, speed: float):
		scaled_rc = 0

		# Scale real speed in m/s to [-1, 1] range using simple linear function
		scaled_rc = (speed - self.speed_scale[0]) * 1.0 / self.speed_scale[1]

		return scaled_rc

	def rc_command_steering_to_angle(self, steer: float):
		scaledSteering = 0

		# Scale [-1, 1] range to real angle in rad using simple linear function: y = s[0] + s[1] * x
		scaledSteering = self.steering_scale[0] + self.steering_scale[1] * steer

		return scaledSteering

	def angle_to_rc_command_steering(self, angle: float):
		scaled_rc = 0

		# Scale real angle in rad to [-1, 1] range using simple linear function
		scaled_rc = (angle - self.steering_scale[0]) * 1.0 / self.steering_scale[1]

		return scaled_rc

	def steering_angle_from_velocity(self, linear, angular):
		if linear == 0 or angular == 0:
			return 0

		r = linear / angular
		return math.atan(self.wheel_base / r)

	def update_using_encoder(self, steer: float, speed: float, frVal: int = None, flVal: int = None, brVal: int = None, blVal: int = None):
		# Check for encoder values, and if is valid (enabled encoders)
		if self.front_encoders and (frVal == None or flVal == None):
			print("Missing front wheel encoder values")
			return
		if self.back_encoders and (brVal == None or blVal == None):
			print("Missing back wheel encoder values")
			return

		# Calculate elapsed time
		deltaTime = time.time() - self.time
		self.time = time.time()

		# print("Delta Time: %.2f\n" % deltaTime)

		# Calculate delta encoder values
		if self.front_encoders:
			deltaFrVal = frVal - self.encoder_values[0]
			self.encoder_values[0] = frVal
			deltaFlVal = flVal - self.encoder_values[1]
			self.encoder_values[1] = flVal

			self.encoder_count[0] += deltaFrVal
			self.encoder_count[1] += deltaFlVal
		if self.back_encoders:
			deltaBrVal = brVal - self.encoder_values[2]
			self.encoder_values[2] = brVal
			deltaBlVal = blVal - self.encoder_values[3]
			self.encoder_values[3] = blVal

			self.encoder_count[2] += deltaBrVal
			self.encoder_count[3] += deltaBlVal

		# Calculate RPS per wheel values
		# Filter and update display Data: y(n) = A*x(n) + (1 - A)*y(n-1)
		# Display data filter: alpha (A) = Ts / (Ts + RC), RC = 1 / (2*pi*Fc)
		alpha = 0.557	# Around Fc ~= Fs/5
		# if (self.timestamp + 1.0) <= time.time():
		new_rps = self.encoder_count[0] * (1.0 / self.ticks_per_revolution) * (1.0 / (deltaTime))
		self.rps[0] = alpha * new_rps + (1 - alpha) * self.rps[0]
		new_rps = self.encoder_count[1] * (1.0 / self.ticks_per_revolution) * (1.0 / (deltaTime))
		self.rps[1] = alpha * new_rps + (1 - alpha) * self.rps[1]
		new_rps = self.encoder_count[2] * (1.0 / self.ticks_per_revolution) * (1.0 / (deltaTime))
		self.rps[2] = alpha * new_rps + (1 - alpha) * self.rps[2]
		new_rps = self.encoder_count[3] * (1.0 / self.ticks_per_revolution) * (1.0 / (deltaTime))
		self.rps[3] = alpha * new_rps + (1 - alpha) * self.rps[3]
		self.encoder_count[0] = 0
		self.encoder_count[1] = 0
		self.encoder_count[2] = 0
		self.encoder_count[3] = 0

		# Update linear twist values
		# Simple update method (for now), use maximum RPS values gives forward velocity (instead of thrust)
		max_RPS = np.max(np.abs(self.rps))
		self.twist_linear[0] = max_RPS * self.wheel_circumference

		# Simple Update method (for now), mean RPS values gives forward velocity (instead of thrust)
		# if self.front_encoders:
		# 	if self.back_encoders:
		# 		self.twist_linear[0] = ((self.rps[0] + self.rps[1] + self.rps[2] + self.rps[3]) / 4.0) * self.wheel_circumference
		# 	else:
		# 		self.twist_linear[0] = ((self.rps[0] + self.rps[1]) / 2.0) * self.wheel_circumference
		# else:
		# 	self.twist_linear[0] = ((self.rps[2] + self.rps[3]) / 2.0) * self.wheel_circumference

		# Use thrust to get current drive/wheel spin direction
		# rc_twist = self.rc_command_throttle_to_speed(speed)
		# if speed >= 500:
		# 	self.twist_linear[0] = self.twist_linear[0]
		# elif speed < 500:
		# 	self.twist_linear[0] = -self.twist_linear[0]

		# Update angular twist values
		angle = self.rc_command_steering_to_angle(steer)
		self.twist_angular[2] = angle * (1.0 / deltaTime)

		# Update pose, using odometry calculations
		self.odometry_update(deltaTime)

	def update_using_rc_command(self, steer: float, speed: float):
		# Calculate elapsed time
		deltaTime = time.time() - self.time
		self.time = time.time()

		# Update linear twist values, based only on [-1, 1] range
		self.twist_linear[0] = self.rc_command_throttle_to_speed(speed)

		# Update angular twist values
		self.twist_angular[2] = self.steering_angle_from_velocity(self.twist_linear[0], steer) * (1.0 / deltaTime)

		# Update pose, using odometry calculations
		self.odometry_update(deltaTime)