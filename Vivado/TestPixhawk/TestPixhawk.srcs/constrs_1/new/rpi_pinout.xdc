######################## RPi GPIO ########################
# RPi GPIO17
set_property PACKAGE_PIN AB14 [get_ports {GPIO0_tri_io[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[13]}]
# RPi GPIO27
set_property PACKAGE_PIN AB9 [get_ports {GPIO0_tri_io[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[14]}]
# RPi GPIO22
set_property PACKAGE_PIN Y12 [get_ports {GPIO0_tri_io[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[15]}]
# RPi GPIO23
set_property PACKAGE_PIN AA12 [get_ports {GPIO0_tri_io[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[16]}]
# RPi GPIO24
set_property PACKAGE_PIN Y9 [get_ports {GPIO0_tri_io[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[17]}]
# RPi GPIO25
set_property PACKAGE_PIN AA8 [get_ports {GPIO0_tri_io[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[18]}]
# RPi GPIO5
set_property PACKAGE_PIN AH14 [get_ports {GPIO0_tri_io[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[19]}]
# RPi GPIO6
set_property PACKAGE_PIN AG13 [get_ports {GPIO0_tri_io[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[20]}]
# RPi GPIO16
set_property PACKAGE_PIN AB15 [get_ports {GPIO0_tri_io[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[21]}]
# RPi GPIO26
set_property PACKAGE_PIN AB10 [get_ports {GPIO0_tri_io[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[22]}]

# RPi GPIO4
set_property PACKAGE_PIN AG14 [get_ports {GPIO0_tri_io[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[23]}]
# RPi GPIO10
set_property PACKAGE_PIN AE13 [get_ports {GPIO0_tri_io[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[24]}]
# RPi GPIO9
set_property PACKAGE_PIN AC13 [get_ports {GPIO0_tri_io[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[25]}]
# RPi GPIO11
set_property PACKAGE_PIN AF13 [get_ports {GPIO0_tri_io[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[26]}]
# RPi GPIO0
set_property PACKAGE_PIN AD15 [get_ports {GPIO0_tri_io[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[27]}]
# RPi GPIO13
set_property PACKAGE_PIN AB13 [get_ports {GPIO0_tri_io[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[28]}]
# RPi GPIO19
set_property PACKAGE_PIN Y13 [get_ports {GPIO0_tri_io[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[29]}]
# RPi GPIO18
set_property PACKAGE_PIN Y14 [get_ports {GPIO0_tri_io[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[30]}]
# RPi GPIO8
set_property PACKAGE_PIN AC14 [get_ports {GPIO0_tri_io[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[31]}]

######################## RPi I2C ########################
# RPi GPIO3 SCL
set_property PACKAGE_PIN AE14 [get_ports {I2C0_scl_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {I2C0_scl_io}]
set_property PULLUP true [get_ports {I2C0_scl_io}]
# RPi GPIO2 SDA
set_property PACKAGE_PIN AE15 [get_ports {I2C0_sda_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {I2C0_sda_io}]
set_property PULLUP true [get_ports {I2C0_sda_io}]

######################## RPi UART ########################
# RPi GPIO14 TXD
set_property PACKAGE_PIN W14 [get_ports {UART0_txd}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0_txd}]
# RPi GPIO15 RXD
set_property PACKAGE_PIN W13 [get_ports {UART0_rxd}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0_rxd}]