import asyncio
import threading
import time

from pynq import Overlay
from pynq import Interrupt

# https://pynq.readthedocs.io/en/latest/pynq_libraries/interrupt.html
# https://github.com/PeterOgden/ZCU104_VideoDemo/blob/master/notebooks/Mixer.ipynb
class NBMCapture:
	def __init__(self, timer):
		# Save timer instance
		self.timer = timer
		self.timer_clock = 100000000

		# Init Timer for Capture Input Mode
		# Disable counter and clear interrupts
		self.timer.register_map.TCSR0 = 0x0100
		# Set capture mode with count UP mode and overwrite
		self.timer.register_map.TCSR0.ENT0 = 1
		self.timer.register_map.TCSR0.ENIT0 = 1
		self.timer.register_map.TCSR0.ARHT0 = 1
		self.timer.register_map.TCSR0.CAPT0 = 1
		self.timer.register_map.TCSR0.MDT0 = 1

		# Init local variables
		self.last_count = 0
		self.trigger_count = 0
		self.running = True
		self.new_event = False

		self.t = threading.Thread(target=self._reader)
		self.t.daemon = True
		self.t.start()

	def start(self):
		self.running = True
		# self.task = asyncio.run_coroutine_threadsafe(self.interrupt_handler(), asyncio.get_event_loop())

	def stop(self):
		self.running = False

	def if_flag_set(self):
		# if self.timer.register_map.TCSR0.T0INT == 1:
		if self.new_event == True:
			self.new_event = False
			return True
		else:
			return False

	def read_capture_ms(self):
		return self.last_count

	def _clear_interrupt(self):
		self.timer.register_map.TCSR0.T0INT = 1	#Clear interrupt
		#Clear counter
		self.timer.register_map.TLR0 = 0
		self.timer.register_map.TCSR0.LOAD0 = 1
		self.timer.register_map.TCSR0.LOAD0 = 0

	# Get timer count values as soon as have new
	def _reader(self):
		while self.running:
			if self.timer.register_map.TCSR0.T0INT == 1:
				self.last_count = (self.timer.register_map.TLR0.TCLR0 * (1.0 / self.timer_clock) * 1000.0)
				self._clear_interrupt()
				self.trigger_count = self.trigger_count + 1
				self.new_event = True
		