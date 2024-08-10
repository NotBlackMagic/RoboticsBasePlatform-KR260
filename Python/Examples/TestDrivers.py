import time

from pynq import Overlay

from Drivers.DriverPWM import NBMPWM

#Load overlay, without downloading to PS (FPGA)
print("Load Overlay")
ol = Overlay("./kr260_pixhawk_v3/kr260_pixhawk_v3.bit", download = False)

print("Init PWM")
pwm1 = NBMPWM(ol.axi_timer_0)

print("Set PWM Frequency")
pwm1.set_frequency(1000)
pwm1.set_duty_cyle(0)

print("Infinite loop")
#Timer PWM test
while 1:
	pwm1.set_duty_cyle(0)
	time.sleep(1)
	pwm1.set_duty_cyle(25)
	time.sleep(1)
	pwm1.set_duty_cyle(50)
	time.sleep(1)
	pwm1.set_duty_cyle(75)
	time.sleep(1)
	pwm1.set_duty_cyle(100)
	time.sleep(1)