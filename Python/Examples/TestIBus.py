import serial
import time

from Drivers.DriverIBus import IBusFrame 

iBusFrame = IBusFrame()

print("Load Serial")
try:
	serial = serial.Serial(
	port = "/dev/ttyUL1",
	baudrate = 115200,
	bytesize = serial.EIGHTBITS,
	stopbits = serial.STOPBITS_ONE,
	parity = serial.PARITY_NONE)
except serial.SerialException as e:
	print("could not open serial port '{}': {}".format("/dev/ttyUL1", e))
	serial = None

print("Infinite loop")

while 1:
	frame = b""
	while 1:
		by = serial.read()
		# print(by)
		if len(frame) == 0 and by == iBusFrame.IBUS_PACKET_LENGTH:
			frame += by
		elif len(frame) > 0:
			frame += by
			if len(frame) == int.from_bytes(iBusFrame.IBUS_PACKET_LENGTH, "big") :
				break

	# Decode packet
	print("Decode iBus Frame")
	newFrame = iBusFrame.Decode(frame)

	if newFrame:
		# Checksum valid, passed test
		print("New iBus Frame: %d %d %d %d" % (iBusFrame.channels[0], iBusFrame.channels[1], iBusFrame.channels[2], iBusFrame.channels[3]))
	else:
		# Checksum failed
		print("Checksum error")	

serial.close()
