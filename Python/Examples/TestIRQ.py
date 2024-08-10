import asyncio
import time

from pynq import Overlay
from pynq import Interrupt

# Load overlay, without downloading to PS (FPGA)
print("Test IRQ: Load Overlay")
ol = Overlay("./kr260_pixhawk_v3/kr260_pixhawk_v3.bit", download = False)

# Get Timer peripheral
print("Test IRQ: Load AXI Timer")
timer = ol.axi_timer_4

async def wait_for_timer(cycles):
	timer.register_map.TLR0 = cycles
	timer.register_map.TCSR0.LOAD0 = 1
	timer.register_map.TCSR0.LOAD0 = 0
	timer.register_map.TCSR0.ENIT0 = 1
	timer.register_map.TCSR0.ENT0 = 1
	timer.register_map.TCSR0.UDT0 = 1
	await timer.interrupt.wait()
	print("Timer IRQ: Callback")
	timer.register_map.TCSR0.T0INT = 1

loop = asyncio.get_event_loop()
task = loop.create_task(wait_for_timer(500000000))
loop.run_until_complete(task)

# GPIO IRQ test
loop_cnt = 0
while 1:
	print("Loop #%d" % (loop_cnt))
	loop_cnt = loop_cnt + 1

	time.sleep(1000)