import serial

class IBusFrame:
	IBUS_PACKET_LENGTH = b'\x20'
	IBUS_BAUDRATE = 115200

	def __init__(self):
		self.protocol_length = b'\x20'	#0x20
		self.command_code = b'\x40'		#0x40
		self.channels = [0] * 14	#14-Channels with value between 1000 and 2000
		self.checksum = 0			#0xFFFF - (sum of previous 30 bytes)

	def Decode(self, frame):
		#Decode packet
		index = 0
		#Header
		self.protocol_length = frame[index]
		index += 1
		self.command_code = frame[index]
		index += 1
		#Channel data
		for i in range(14):
			self.channels[i] = frame[index]
			index += 1
			self.channels[i] += (frame[index] << 8)
			index += 1
		#Footer
		self.checksum = frame[index]
		index += 1
		self.checksum += (frame[index] << 8)
		index += 1
		#Checksum calculation and verification
		checksum = 0
		for i in range(len(frame) - 2):
			checksum += frame[i]
		checksum = 0xFFFF - checksum

		if self.checksum == checksum:
			return True
		else:
			return False
