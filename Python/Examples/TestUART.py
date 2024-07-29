import serial
import time

print("Load Serial")
try:
	serial = serial.Serial(
	port = "/dev/ttyUL0",
	baudrate = 115200,
	bytesize = serial.EIGHTBITS,
	stopbits = serial.STOPBITS_ONE,
	parity = serial.PARITY_NONE)
except serial.SerialException as e:
	print("could not open serial port '{}': {}".format("/dev/ttyUL0", e))
	serial = None

while 1:
	serial.write("Test UART".encode())
	time.sleep(2)