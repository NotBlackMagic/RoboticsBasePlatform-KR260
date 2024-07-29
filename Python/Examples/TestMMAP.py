import os
import mmap

MAP_MASK = mmap.PAGESIZE - 1

AXI_PERIPHERAL_BASE = 0x80000000
TIMER0_ADDRESS_BASE = 0x80030000
TIMER1_ADDRESS_BASE = 0x80040000

TIMER0_CTRL_STAT_OFFSET = 0x00
TIMER0_LOAD_OFFSET = 0x04
TIMER0_COUNTER_OFFSET = 0x08
TIMER1_CTRL_STAT_OFFSET = 0x10
TIMER1_LOAD_OFFSET = 0x14
TIMER1_COUNTER_OFFSET = 0x18

def WriteReg(mem, addr, value, length):
	mem.seek(addr & MAP_MASK)
	valueString = b""
	for i in range(length):
		valueString += bytes((value >> (i*8)) & 0xff)
		print(valueString)
	mem.write(valueString)

print("Load Timer0 MMIO")
f = os.open("/dev/mem", os.O_RDWR | os.O_SYNC)
timer0 = mmap.mmap(f, mmap.PAGESIZE, mmap.MAP_SHARED, mmap.PROT_READ | mmap.PROT_WRITE, offset = 0x80030000 & ~MAP_MASK)

print("Disable and clear Timer")
WriteReg(timer0, TIMER0_ADDRESS_BASE + TIMER0_CTRL_STAT_OFFSET, 0x00000100, 4)
WriteReg(timer0, TIMER0_ADDRESS_BASE + TIMER1_CTRL_STAT_OFFSET, 0x00000100, 4)

print("Set Timer timings")
WriteReg(timer0, TIMER0_ADDRESS_BASE + TIMER0_LOAD_OFFSET, 0x001E8480, 4)
WriteReg(timer0, TIMER0_ADDRESS_BASE + TIMER1_LOAD_OFFSET, 0x000F4240, 4)

print("Set Timer PWM mode and enable")
WriteReg(timer0, TIMER0_ADDRESS_BASE + TIMER0_CTRL_STAT_OFFSET, 0x0206, 4)
WriteReg(timer0, TIMER0_ADDRESS_BASE + TIMER1_CTRL_STAT_OFFSET, 0x0606, 4)