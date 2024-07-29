import time
import asyncio

from pynq import Overlay
from pynq import Interrupt

from DriverPWM import NBMPWM

TIMER0_ADDRESS_BASE = 0x80030000
TIMER1_ADDRESS_BASE = 0x80040000

#https://pynq.readthedocs.io/en/latest/pynq_libraries/interrupt.html
class NBMCapture:
	def __init__(self, timer):
		#Save timer instance
		self.timer = timer
		self.timerClock = 100000000

		#Init Timer for Capture Input Mode
		#Disable counter and clear interrupts
		self.timer.register_map.TCSR0 = 0x0100
		#Set capture mode with count UP mode and overwrite
		self.timer.register_map.TCSR0.ENT0 = 1
		self.timer.register_map.TCSR0.ENIT0 = 1
		self.timer.register_map.TCSR0.ARHT0 = 1
		self.timer.register_map.TCSR0.CAPT0 = 1
		self.timer.register_map.TCSR0.MDT0 = 1

	def IsFlagSet(self):
		if self.timer.register_map.TCSR0.T0INT == 1:
			return True
		else:
			return False

	def ReadCaptureMs(self):
		self.lastCount = (self.timer.register_map.TLR0.TCLR0 * (1.0 / self.timerClock) * 1000.0)
		self.timer.register_map.TCSR0.T0INT = 1	#Clear interrupt
		#Clear counter
		self.timer.register_map.TLR0 = 0
		self.timer.register_map.TCSR0.LOAD0 = 1
		self.timer.register_map.TCSR0.LOAD0 = 0
		return self.lastCount
	
	async def WaitForInterrupt(self):
		await self.timer.interrupt.wait()
		self.lastCount = (self.timer.register_map.TLR0.TCLR0 * (1.0 / self.timerClock) * 1000.0)
		self.newEvent = True
		self.timer.register_map.TCSR0.T0INT = 1	#Clear interrupt
		#Clear counter
		self.timer.register_map.TLR0 = 0
		self.timer.register_map.TCSR0.LOAD0 = 1
		self.timer.register_map.TCSR0.LOAD0 = 0

#Load overlay, without downloading to PS (FPGA)
print("Load Overlay")
ol = Overlay("./kr260_io/kr260_io.bit", download = False)

print("Init PWM")
pwm1 = NBMPWM(ol.axi_timer_0)

print("Set PWM Frequency")
pwm1.SetFrequency(1000)
pwm1.SetDutyCyle(50)

#print(ol.axi_timer_1.register_map) #Show full regsiter map of peripheral
#print(ol.axi_timer_1._interrupts)	#Show interrupt specific stuff of peripeheral, when available 

print("Init PWM")
capt1 = NBMCapture(ol.axi_timer_1)

exit()

#Schedule interrupt coroutine using asyncio
#loop = asyncio.get_event_loop()
#task = loop.create_task(capt1.WaitForInterrupt())

print("Infinite loop")
#Timer PWM test
while 1:
	#loop.run_until_complete(task)
	if capt1.IsFlagSet() == True:
		print(capt1.ReadCaptureMs())