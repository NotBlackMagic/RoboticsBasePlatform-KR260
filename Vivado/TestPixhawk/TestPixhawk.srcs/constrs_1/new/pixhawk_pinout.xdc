######################## Pixhawk IMU0 ########################
# PMOD1 IO1 SCL
set_property PACKAGE_PIN H12 [get_ports {IMU0_I2C_scl_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {IMU0_I2C_scl_io}]
set_property PULLUP true [get_ports {IMU0_I2C_scl_io}]
# PMOD1 IO2 SDA
set_property PACKAGE_PIN E10 [get_ports {IMU0_I2C_sda_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {IMU0_I2C_sda_io}]
set_property PULLUP true [get_ports {IMU0_I2C_sda_io}]
# PMOD1 IO3 INT0
set_property PACKAGE_PIN D10 [get_ports {GPIO0_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[0]}]
# PMOD1 IO4 INT1
set_property PACKAGE_PIN C11 [get_ports {GPIO0_tri_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[1]}]

######################## Pixhawk IMU1 ########################
# PMOD1 IO5 SCL
set_property PACKAGE_PIN B10 [get_ports {IMU1_I2C_scl_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {IMU1_I2C_scl_io}]
set_property PULLUP true [get_ports {IMU1_I2C_scl_io}]
# PMOD1 IO6 SDA
set_property PACKAGE_PIN E12 [get_ports {IMU1_I2C_sda_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {IMU1_I2C_sda_io}]
set_property PULLUP true [get_ports {IMU1_I2C_sda_io}]
# PMOD1 IO7 INT0
set_property PACKAGE_PIN D11 [get_ports {GPIO0_tri_io[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[2]}]
# PMOD1 IO8 INT1
set_property PACKAGE_PIN B11 [get_ports {GPIO0_tri_io[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[3]}]

######################## Pixhawk GPS0 ########################
# PMOD2 IO1 UART TXD
set_property PACKAGE_PIN J11 [get_ports {GPS0_UART_txd}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPS0_UART_txd}]
# PMOD2 IO2 UART TXD
set_property PACKAGE_PIN J10 [get_ports {GPS0_UART_rxd}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPS0_UART_rxd}]
# PMOD2 IO3 SCL
set_property PACKAGE_PIN K13 [get_ports {GPS0_I2C_scl_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPS0_I2C_scl_io}]
set_property PULLUP true [get_ports {GPS0_I2C_scl_io}]
# PMOD2 IO4 SDA
set_property PACKAGE_PIN K12 [get_ports {GPS0_I2C_sda_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPS0_I2C_sda_io}]
set_property PULLUP true [get_ports {GPS0_I2C_sda_io}]
# PMOD2 IO5 SW IN
set_property PACKAGE_PIN H11 [get_ports {GPIO0_tri_io[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[4]}]
# PMOD2 IO6 SW LED
set_property PACKAGE_PIN G10 [get_ports {GPIO0_tri_io[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[5]}]
# PMOD2 IO7 BUZ
set_property PACKAGE_PIN F12 [get_ports {GPIO0_tri_io[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[6]}]
# PMOD2 IO8 IO
set_property PACKAGE_PIN F11 [get_ports {GPIO0_tri_io[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[7]}]

######################## Pixhawk RC & SBus ########################
# PMOD3 IO1 UART TXD
set_property PACKAGE_PIN AE12 [get_ports {RC_SBUS0_txd}]
set_property IOSTANDARD LVCMOS33 [get_ports {RC_SBUS0_txd}]
# PMOD3 IO2 UART RXD
set_property PACKAGE_PIN AF12 [get_ports {RC_SBUS0_rxd}]
set_property IOSTANDARD LVCMOS33 [get_ports {RC_SBUS0_rxd}]
# PMOD3 IO3 ENC 0
set_property PACKAGE_PIN AG10 [get_ports {ENC_CAP0}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENC_CAP0}]
# PMOD3 IO4 ENC 1
set_property PACKAGE_PIN AH10 [get_ports {GPIO0_tri_io[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[8]}]
# PMOD3 IO5 PWM0
set_property PACKAGE_PIN AF11 [get_ports {RC_PWM0}]
set_property IOSTANDARD LVCMOS33 [get_ports {RC_PWM0}]
# PMOD3 IO6 PWM1
set_property PACKAGE_PIN AG11 [get_ports {RC_PWM1}]
set_property IOSTANDARD LVCMOS33 [get_ports {RC_PWM1}]
# PMOD3 IO7 PWM2
set_property PACKAGE_PIN AH12 [get_ports {RC_PWM2}]
set_property IOSTANDARD LVCMOS33 [get_ports {RC_PWM2}]
# PMOD3 IO8 PWM3
set_property PACKAGE_PIN AH11 [get_ports {RC_PWM3}]
set_property IOSTANDARD LVCMOS33 [get_ports {RC_PWM3}]

######################## Pixhawk TELEM0 ########################
# PMOD4 IO1 UART TXD
set_property PACKAGE_PIN AC12 [get_ports {TELEM0_txd}]
set_property IOSTANDARD LVCMOS33 [get_ports {TELEM0_txd}]
# PMOD4 IO2 UART RXD
set_property PACKAGE_PIN AD12 [get_ports {TELEM0_rxd}]
set_property IOSTANDARD LVCMOS33 [get_ports {TELEM0_rxd}]
# PMOD4 IO3 IO
set_property PACKAGE_PIN AE10 [get_ports {GPIO0_tri_io[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[9]}]
# PMOD4 IO4 IO
set_property PACKAGE_PIN AF10 [get_ports {GPIO0_tri_io[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[10]}]

######################## Pixhawk TELEM1 ########################
# PMOD4 IO5 UART TXD
set_property PACKAGE_PIN AD11 [get_ports {TELEM1_txd}]
set_property IOSTANDARD LVCMOS33 [get_ports {TELEM1_txd}]
# PMOD4 IO6 UART RXD
set_property PACKAGE_PIN AD10 [get_ports {TELEM1_rxd}]
set_property IOSTANDARD LVCMOS33 [get_ports {TELEM1_rxd}]
# PMOD4 IO7 IO
set_property PACKAGE_PIN AA11 [get_ports {GPIO0_tri_io[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[11]}]
# PMOD4 IO8 IO
set_property PACKAGE_PIN AA10 [get_ports {GPIO0_tri_io[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO0_tri_io[12]}]