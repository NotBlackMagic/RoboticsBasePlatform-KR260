import time

from pynq import Overlay

class NBMPWM:
	def __init__(self, timer):
		#Save timer instance
		self.timer = timer
		self.timerClock = 100000000

		#Init Timer for PWM Servo Mode
		#Disable counter and clear interrupts
		self.timer.register_map.TCSR0 = 0x0100
		self.timer.register_map.TCSR1 = 0x0100
		#Count DOWN mode
		#PWM_PERIOD = (TLR0 + 2) * AXI_CLOCK_PERIOD -> TLR0 = (PWM_PERIOD / AXI_CLOCK_PERIOD) - 2 or = (AXI_CLOCK / PWM_CLOCK) - 2
		#PWM_HIGH_TIME = (TLR1 + 2) * AXI_CLOCK_PERIOD -> TLR1 = (PWM_HIGH_TIME / AXI_CLOCK_PERIOD) - 2 or = [0 - 1] * TLR0
		#PWM timing default: 20ms period and 1.5ms Pulse (Servo settings)
		self.period = self.timerClock * 0.02 - 2
		self.pulse = self.timerClock * 0.0015
		self.dutyCyle = 1.5/20.0
		self.timer.register_map.TLR0 = int(self.period)
		self.timer.register_map.TLR1 = int(self.pulse)
		#Set Timer0 for PWM and generate but do not start
		self.timer.register_map.TCSR0 = 0x0206
		#Set Timer1 for PWM and generate and enable all counters
		self.timer.register_map.TCSR1 = 0x0606

	def SetPeriod(self, ms):
		#
		self.period = self.timerClock * (ms / 1000.0) - 2
		self.timer.register_map.TLR0 = int(self.period)

	def SetFrequency(self, hz):
		#
		self.period = self.timerClock * (1.0 / hz) - 2
		self.timer.register_map.TLR0 = int(self.period)

	def SetDutyCyle(self, percentage):
		#
		self.dutyCyle = percentage / 100.0
		self.pulse = self.period * self.dutyCyle
		#Limit pulse duration to just bellow period
		if self.pulse >= self.period:
			self.pulse = self.period - 1
		self.timer.register_map.TLR1 = int(self.pulse)

	def SetPulseHigh(self, ms):
		#
		self.pulse = self.timerClock * (ms / 1000.0)
		#Limit pulse duration to just bellow period
		if self.pulse >= self.period:
			self.pulse = self.period - 1
		self.timer.register_map.TLR1 = int(self.pulse)