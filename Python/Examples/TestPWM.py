import time

from pynq import Overlay

from Drivers.DriverPWM import NBMPWM

#Load overlay, without downloading to PS (FPGA)
print("Load Overlay MMIO")
ol = Overlay("./kr260_pixhawk_v2/kr260_pixhawk_v2.bit", download = False)

print("Init PWM")
pwm1 = NBMPWM(ol.axi_timer_0)

print("Set PWM Frequency")
pwm1.SetFrequency(1000)
pwm1.SetDutyCyle(0)

print("Infinite loop")
#Timer PWM test
while 1:
	pwm1.SetDutyCyle(0)
	time.sleep(1)
	pwm1.SetDutyCyle(2.5)
	time.sleep(1)
	pwm1.SetDutyCyle(5)
	time.sleep(1)
	pwm1.SetDutyCyle(7.5)
	time.sleep(1)
	pwm1.SetDutyCyle(10)
	time.sleep(1)