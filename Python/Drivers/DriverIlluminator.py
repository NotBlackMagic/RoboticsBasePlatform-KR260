import os
import serial
import time

class MultispectralIlluminator:
	# Calibrated spectrum currents
	spectrumCurrents = [ 50, 50, 50, 50, 50, 50, 50, 50]	# White | Blue | Green | Yellow | Red | Photo Red | Far Red | IR
	
	def __init__(self, port):
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
		# Set currents
		cmd = "CUR:" + str(self.spectrumCurrents[0]) + ";" + str(self.spectrumCurrents[1]) + ";" + str(self.spectrumCurrents[2]) + ";" + str(self.spectrumCurrents[3]) + ";" + str(self.spectrumCurrents[4]) + ";" + str(self.spectrumCurrents[5]) + ";" + str(self.spectrumCurrents[6]) + ";" + str(self.spectrumCurrents[7]) + ";"
		self.serial.write(cmd.encode())
		self.serial.write("EN:0;0;0;0;0;0;0;0;".encode())
	
	# Set channel current
	def current(self, channel, current):
		cmd = "CUR" + str(channel) + ":" + str(current) + ";"
		self.serial.write(cmd.encode())

	# Set channel output enable
	def output(self, channel, enabled):
		if enabled == True or enabled == 1:
			cmd = "EN" + str(channel) + ":1;"
		else:
			cmd = "EN" + str(channel) + ":0;"
		self.serial.write(cmd.encode())