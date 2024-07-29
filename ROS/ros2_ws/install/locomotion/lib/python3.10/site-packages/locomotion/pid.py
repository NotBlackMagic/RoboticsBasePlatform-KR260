import math
import numpy as np
import time

class PID:
	def __init__(self, p = 0.0, i = 0.0, d = 0.0, lim = 1.0):
		# PID gain values
		self.kp = p
		self.ki = i
		self.kd = d

		# PID state variables
		self.prev_error = 0.0
		self.pid_i = 0

		# PID Limits
		self.windup_limit = lim

	def SetPIDGains(self, p, i, d):
		# PID gain values
		self.kp = p
		self.ki = i
		self.kd = d

	def SetWindupLimit(self, lim):
		# PID Limits
		self.windup_limit = lim

	def ClearState(self):
		self.prev_error = 0
		self.pid_i = 0

	def PIDUpdate(self, setPoint, measurment, dT = None):
		# 1: Calculate new error value
		error = setPoint - measurment

		# 2: Calculate passed time, dT, if not given
		if dT == None:
			self.dT = time.time() - self.time
			self.time = time.time()
		else:
			self.dT = dT

		# 3: Calculate proportional (Kp) term
		self.pid_p = self.kp * error

		# 4: Calculate integral (Ki) term
		self.pid_i += error * self.ki * self.dT

		# 5: Limit integral term
		if self.pid_i > self.windup_limit:
			self.pid_i = self.windup_limit
		elif self.pid_i < -self.windup_limit:
			self.pid_i = -self.windup_limit

		#6: Calculate derivative (Kd) term
		self.pid_d = self.kd * (error - self.prev_error) / self.dT
		self.prev_error = error

		#7: Sum terms
		self.pid_out = self.pid_p + self.pid_i + self.pid_d

		#8: Limit terms [-1 to 1]
		if self.pid_out > 1:
			self.pid_out = 1
		elif self.pid_out < -1:
			self.pid_out = -1

		return self.pid_out

