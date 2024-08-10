class NBMGNSS:
	def __init__(self, port):
		try:
			self.serial = serial.Serial(
			port = port,
			baudrate = 9600,
			bytesize = serial.EIGHTBITS,
			stopbits = serial.STOPBITS_ONE,
			parity = serial.PARITY_NONE)
		except serial.SerialException as e:
			print("could not open serial port '{}': {}".format(port, e))
			self.serial = None
			return
		self.newNMEA = False
		self.threadRun = True
		self.t = threading.Thread(target=self._reader)
		self.t.daemon = True
		self.t.start()		

	# Read bytes received from serial interface
	def _reader(self):
		startFound = False
		self.frame_index = 0
		self.raw_frame = np.zeros(128)
		while self.threadRun:
			byte = self.serial.read(1)
			# print(byte)
			# Check for NMEA frame delimiters
			if byte == '\0':
				self.frame_index = 0
			elif byte == '\r':
				self.raw_frame[self.frame_index] = '\0'
				self.frame_index += 1
			elif byte == '\n':
				self.raw_frame[self.frame_index] = '\0'
				self.frame_index += 1
				if startFound == True:
					# Complete frame found, call decoder
					print("End Found")
					self.newNMEA = True
			elif byte == '$':
				print("Start Found")
				startFound = True
				self.frame_index = 0
				self.raw_frame[self.frame_index] = byte
				self.frame_index += 1
			elif startFound == True:
				self.raw_frame[self.frame_index] = byte
				self.frame_index += 1