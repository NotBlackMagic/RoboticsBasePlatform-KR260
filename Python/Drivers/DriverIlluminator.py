import os
import serial
import time

class MultispectralIlluminator:
	# Calibrated spectrum currents
	spectrum_currents = [ 65, 15, 15, 15, 10, 10, 5, 50]	# White | Blue | Green | Yellow | Red | Photo Red | Far Red | IR
	
	def __init__(self, port):
		# Start serial port
		try:
			self.serial = serial.Serial(
			port = port,
			baudrate = 115200,
			bytesize = serial.EIGHTBITS,
			stopbits = serial.STOPBITS_ONE,
			parity = serial.PARITY_NONE)
		except serial.SerialException as e:
			print("could not open serial port '{}': {}".format(port, e))
			self.serial = None
		# Initialize
		# Disable ALL outputs
		self.serial.write("EN:0;0;0;0;0;0;0;0;".encode())
		# Set ALL output currents
		cmd = "CUR:" + str(self.spectrum_currents[0]) + ";" + str(self.spectrum_currents[1]) + ";" + str(self.spectrum_currents[2]) + ";" + str(self.spectrum_currents[3]) + ";" + str(self.spectrum_currents[4]) + ";" + str(self.spectrum_currents[5]) + ";" + str(self.spectrum_currents[6]) + ";" + str(self.spectrum_currents[7]) + ";"
		self.serial.write(cmd.encode())
	
	# Set channel current
	def current(self, channel, current):
		# Command format is: CURx:n; (x -> Channel number, n -> channel current in mA)
		cmd = "CUR" + str(channel) + ":" + str(current) + ";"
		self.serial.write(cmd.encode())

	# Set channel output enable
	def output(self, channel, enabled):
		# Command format is: ENx:n; (x -> Channel number, n -> 1 for ON and 0 for OFF)
		if enabled == True or enabled == 1:
			cmd = "EN" + str(channel) + ":1;"
		else:
			cmd = "EN" + str(channel) + ":0;"
		self.serial.write(cmd.encode())