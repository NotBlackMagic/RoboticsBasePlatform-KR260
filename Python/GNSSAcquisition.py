from serial import Serial
from pynmeagps import NMEAReader, latlon2dms, latlon2dmm

stream = Serial('/dev/ttyUL0', 38400, timeout=3)

with stream:
	while True:
		nmr = NMEAReader(stream)
		raw_data, msg = nmr.read()
		if msg is not None:
			if msg.msgID == "RMC":
				print(msg.msgID)
				print(msg.lat, msg.lon)
				print(msg.spd)
				# print(latlon2dms((msg.lat, msg.lon)))
				# print(latlon2dmm((msg.lat, msg.lon)))
			else:
				print(msg)