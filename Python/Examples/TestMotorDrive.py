import asyncio
import threading
import time

from pynq import Overlay

from Drivers.DriverEncoder import NBMEncoder
from Drivers.DriverPWM import NBMPWM

from TCRL.pid import PID

# Load overlay, without downloading to PS (FPGA)
print("Load Overlay")
ol = Overlay("./kr260_pixhawk_v3/kr260_pixhawk_v3.bit", download = False)

print("Init PWM")
pwm1 = NBMPWM(ol.axi_timer_0, 10000, 100)

print("PWM: Freq: %.2f Hz; DC: %.2f or Period: %.4f; Pulse: %.4f" % (1.0/pwm1.period, pwm1.dutyCyle, pwm1.period, pwm1.pulse))

# print("Set PWM Frequency")
# pwm1.set_frequency(10000)
# pwm1.set_duty_cyle(5)

time.sleep(5)

print("Init PWM")
enc = NBMEncoder(ol.axi_timer_4)

# Vehcile drive train settings
motor_max_rpm = 1200 * 5	# 28GP-2838 Motor 12V and 1200RPM version
motor_gearing = 5			# 28GP-2838 Motor 12V and 1200RPM version (1200RPM shaft output)
vehicle_gearing = 5.5		# Pinion: 20T; Spur: 44T -> 2.2 + Diffs: 2.5:1 -> Global of 5.5:1
wheel_circ = 0.23248		# Wheel circumference in m

max_speed_mps = ((motor_max_rpm * (1 / 60.0)) * (1.0 / (motor_gearing * vehicle_gearing))) * wheel_circ
print("Max speed: %.3f m/s" % (max_speed_mps))

# Create new PID loop
target_speed_mps = 0.5
throttle_pid_kp = 0.5
throttle_pid_ki = 1.5
throttle_pid_kd = 0.0
throttle_pid_lim = 0.95
throttle_pid = PID(throttle_pid_kp, throttle_pid_ki, throttle_pid_kd, throttle_pid_lim)

update_period = 0.1
print("Infinite loop")
while 1:
	rps = enc.read_rps()
	rpm = enc.read_rpm()
	# print("Motor RPM: %.2f, RPS: %.2f" % (rpm, rps))

	wheel_rps = rps * (1.0 / (motor_gearing * vehicle_gearing))
	wheel_rpm = rpm * (1.0 / (motor_gearing * vehicle_gearing))
	# print("Wheel speed: %.2f RPM or %.2f RPS" % (wheel_rpm, wheel_rps))

	velocity_mps = wheel_rps * wheel_circ
	velocity_kpm = velocity_mps * 3.6
	# print("Vehicle velocity: %.2f m/s or %0.2f km/h" % (velocity_mps, velocity_kpm))

	if velocity_mps < velocity_mps:
		velocity_mps = -velocity_mps
	if velocity_kpm < velocity_kpm:
		velocity_kpm = -velocity_kpm

	# Update PID loop
	set_point = target_speed_mps / max_speed_mps
	feedback = velocity_mps / max_speed_mps
	throttle_ctrl = throttle_pid.PIDUpdate(set_point, feedback, update_period)
	print("PID: Target: %.2f; Current: %.2f; Error: %.2f; P: %.2f; I: %.4f; D: %.2f; Out: %.2f" % (set_point, feedback, throttle_pid.prev_error, throttle_pid.pid_p, throttle_pid.pid_i, throttle_pid.pid_d, throttle_ctrl))

	if throttle_ctrl < 0:
		throttle_ctrl = -throttle_ctrl
	else:
		throttle_ctrl = throttle_ctrl
	
	throttle_ctrl = 1.0 - throttle_ctrl
	pwm1.set_duty_cyle(throttle_ctrl * 100)

	print("PWM Update DC: %.2f" % (pwm1.dutyCyle * 100))

	time.sleep(update_period)