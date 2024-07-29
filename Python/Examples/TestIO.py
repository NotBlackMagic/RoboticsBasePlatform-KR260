import time

from pynq import Overlay
from pynq.lib import AxiGPIO
from pynq.lib import AxiIIC
from pynq import MMIO

TIMER0_ADDRESS_BASE = 0x80030000
TIMER0_ADDRESS_RANGE = 0x1000

TIMER0_CTRL_STAT_OFFSET = 0x00
TIMER0_LOAD_OFFSET = 0x04
TIMER0_COUNTER_OFFSET = 0x08
TIMER1_CTRL_STAT_OFFSET = 0x10
TIMER1_LOAD_OFFSET = 0x14
TIMER1_COUNTER_OFFSET = 0x18

#Load overlay, without downloading to PS (FPGA)
ol = Overlay("./kr260_io/kr260_io.bit", download = False)
#ol = Overlay("./kr260_io/kr260.xsa")

#Get Timer periperhal
print("Load Timer0 MMIO")
tim0_mmio = MMIO(TIMER0_ADDRESS_BASE, TIMER0_ADDRESS_RANGE)
#Config Timer0 fro PWM (https://support.xilinx.com/s/question/0D54U00005ShEIWSA3/axi-timer-ip-configuration-for-counter-and-for-pwm?language=en_US)
#Disable counter and clear interrupts
print("Disable and clear Timer")
tim0_mmio.write(TIMER0_CTRL_STAT_OFFSET, 0x0100)
tim0_mmio.write(TIMER1_CTRL_STAT_OFFSET, 0x0100)
#Set Timer timings, Timer 0 sets frequency and Timer 1 sets period (AXI_CLOCK_PERIOD = 1/100MHz)
#Count UP mode
#PWM_PERIOD = (MAX_COUNT - TLR0 + 2) * AXI_CLOCK_PERIOD -> TLR0 = MAX_COUNT - (PWM_PERIOD / AXI_CLOCK_PERIOD) + 2 or = MAX_COUNT - (AXI_CLOCK / PWM_CLOCK) + 2
#PWM_HIGH_TIME = (MAX_COUNT - TLR1 + 2) * AXI_CLOCK_PERIOD -> TLR1 = MAX_COUNT - (PWM_HIGH_TIME / AXI_CLOCK_PERIOD) + 2
#Count DOWN mode
#PWM_PERIOD = (TLR0 + 2) * AXI_CLOCK_PERIOD -> TLR0 = (PWM_PERIOD / AXI_CLOCK_PERIOD) - 2 or = (AXI_CLOCK / PWM_CLOCK) - 2
#PWM_HIGH_TIME = (TLR1 + 2) * AXI_CLOCK_PERIOD -> TLR1 = (PWM_HIGH_TIME / AXI_CLOCK_PERIOD) - 2 or = [0 - 1] * TLR0
print("Set Timer timings")
#Servo timing default: 20ms period and 1-2ms Pulse
#TLR0 = 2000000
#TLR1 = 100000 - 200000 (150000 Neutral)
tim0_mmio.write(TIMER0_LOAD_OFFSET, 2000000)
tim0_mmio.write(TIMER1_LOAD_OFFSET, 150000)
print("Set Timer PWM mode and enable")
#Set Timer0 for PWM and generate but do not start
tim0_mmio.write(TIMER0_CTRL_STAT_OFFSET, 0x0206)
#Set Timer1 for PWM and generate and enable all counters
tim0_mmio.write(TIMER1_CTRL_STAT_OFFSET, 0x0606)

print("Infinite loop")

#Timer PWM test
while 1:
	tim0_mmio.write(TIMER1_LOAD_OFFSET, 100000)
	time.sleep(1)
	tim0_mmio.write(TIMER1_LOAD_OFFSET, 125000)
	time.sleep(1)
	tim0_mmio.write(TIMER1_LOAD_OFFSET, 150000)
	time.sleep(1)
	tim0_mmio.write(TIMER1_LOAD_OFFSET, 175000)
	time.sleep(1)
	tim0_mmio.write(TIMER1_LOAD_OFFSET, 200000)
	time.sleep(1)
	tim0_mmio.write(TIMER1_LOAD_OFFSET, 175000)
	time.sleep(1)
	tim0_mmio.write(TIMER1_LOAD_OFFSET, 150000)
	time.sleep(1)
	tim0_mmio.write(TIMER1_LOAD_OFFSET, 125000)
	time.sleep(1)

#Get GPIO peripheral
gpip_ip = ol.ip_dict['axi_gpio_0']
gpios = AxiGPIO(gpip_ip).channel1

#GPIO test
while 1:
	gpios[0].write(1)
	time.sleep(1)
	gpios[0].write(0)
	time.sleep(1)

#Get IIC/I2C peripheral (Kernal Panic Error)
print("Load I2C device")
i2c_ip = ol.ip_dict['axi_iic_0']
i2c = AxiIIC(i2c_ip)

data = bytes(1)
reg = b'\x75'

print("I2C Send")
i2c.send(0x68, reg, 1, 0)
print("I2C Wait")
i2c.wait()
print("I2C Receive")
i2c.receive(0x68, data, 1, 0)

exit()