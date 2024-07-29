import time

from pynq import Overlay
from pynq.lib import AxiGPIO

#Load overlay, without downloading to PS (FPGA)
ol = Overlay("./kr260_pixhawk/kr260_pixhawk.bit", download = False)

#Get GPIO peripheral
print("Load GPIO AxiGPIO")
gpio_ip = ol.ip_dict['axi_gpio_0']
gpios = AxiGPIO(gpio_ip).channel1

#GPIO test
while 1:
	gpios[0].write(1)
	time.sleep(1)
	gpios[0].write(0)
	time.sleep(1)