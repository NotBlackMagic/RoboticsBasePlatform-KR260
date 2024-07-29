import time

from pynq import Overlay
from pynq.lib import AxiIIC

#Load overlay, without downloading to PS (FPGA)
ol = Overlay("./kr260_pixhawk/kr260_pixhawk.bit", download = False)

#Get IIC/I2C peripheral (Kernal Panic Error)
print("Load I2C device")
i2c_ip = ol.ip_dict['axi_iic_0']
i2c = AxiIIC(i2c_ip)

data = bytes(1)
reg = b'\x75'

print("I2C Send")
i2c.send(0x68, reg, 1, 0)
print("I2C Wait")
i2c.wait()
print("I2C Receive")
i2c.receive(0x68, data, 1, 0)
print(data)

exit()