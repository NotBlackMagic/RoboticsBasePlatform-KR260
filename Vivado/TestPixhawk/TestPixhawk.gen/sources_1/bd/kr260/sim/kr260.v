//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Sat Jul 20 16:04:12 2024
//Host        : NotBlackMagic-Dekstop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target kr260.bd
//Design      : kr260
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "kr260,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=kr260,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=43,numReposBlks=25,numNonXlnxBlks=0,numHierBlks=18,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=5,da_clkrst_cnt=3,da_zynq_ultra_ps_e_cnt=1,synth_mode=None}" *) (* HW_HANDOFF = "kr260.hwdef" *) 
module kr260
   (ENC_CAP0,
    GPIO0_tri_i,
    GPIO0_tri_o,
    GPIO0_tri_t,
    GPS0_I2C_scl_i,
    GPS0_I2C_scl_o,
    GPS0_I2C_scl_t,
    GPS0_I2C_sda_i,
    GPS0_I2C_sda_o,
    GPS0_I2C_sda_t,
    GPS0_UART_rxd,
    GPS0_UART_txd,
    I2C0_scl_i,
    I2C0_scl_o,
    I2C0_scl_t,
    I2C0_sda_i,
    I2C0_sda_o,
    I2C0_sda_t,
    IMU0_I2C_scl_i,
    IMU0_I2C_scl_o,
    IMU0_I2C_scl_t,
    IMU0_I2C_sda_i,
    IMU0_I2C_sda_o,
    IMU0_I2C_sda_t,
    IMU1_I2C_scl_i,
    IMU1_I2C_scl_o,
    IMU1_I2C_scl_t,
    IMU1_I2C_sda_i,
    IMU1_I2C_sda_o,
    IMU1_I2C_sda_t,
    RC_PWM0,
    RC_PWM1,
    RC_PWM2,
    RC_PWM3,
    RC_SBUS0_rxd,
    RC_SBUS0_txd,
    TELEM0_rxd,
    TELEM0_txd,
    TELEM1_rxd,
    TELEM1_txd,
    UART0_rxd,
    UART0_txd,
    fan_en_b);
  input ENC_CAP0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO0 TRI_I" *) input [31:0]GPIO0_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO0 TRI_O" *) output [31:0]GPIO0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO0 TRI_T" *) output [31:0]GPIO0_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 GPS0_I2C SCL_I" *) input GPS0_I2C_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 GPS0_I2C SCL_O" *) output GPS0_I2C_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 GPS0_I2C SCL_T" *) output GPS0_I2C_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 GPS0_I2C SDA_I" *) input GPS0_I2C_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 GPS0_I2C SDA_O" *) output GPS0_I2C_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 GPS0_I2C SDA_T" *) output GPS0_I2C_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 GPS0_UART RxD" *) input GPS0_UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 GPS0_UART TxD" *) output GPS0_UART_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SCL_I" *) input I2C0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SCL_O" *) output I2C0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SCL_T" *) output I2C0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SDA_I" *) input I2C0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SDA_O" *) output I2C0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SDA_T" *) output I2C0_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU0_I2C SCL_I" *) input IMU0_I2C_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU0_I2C SCL_O" *) output IMU0_I2C_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU0_I2C SCL_T" *) output IMU0_I2C_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU0_I2C SDA_I" *) input IMU0_I2C_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU0_I2C SDA_O" *) output IMU0_I2C_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU0_I2C SDA_T" *) output IMU0_I2C_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU1_I2C SCL_I" *) input IMU1_I2C_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU1_I2C SCL_O" *) output IMU1_I2C_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU1_I2C SCL_T" *) output IMU1_I2C_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU1_I2C SDA_I" *) input IMU1_I2C_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU1_I2C SDA_O" *) output IMU1_I2C_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IMU1_I2C SDA_T" *) output IMU1_I2C_sda_t;
  output RC_PWM0;
  output RC_PWM1;
  output RC_PWM2;
  output RC_PWM3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 RC_SBUS0 RxD" *) input RC_SBUS0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 RC_SBUS0 TxD" *) output RC_SBUS0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 TELEM0 RxD" *) input TELEM0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 TELEM0 TxD" *) output TELEM0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 TELEM1 RxD" *) input TELEM1_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 TELEM1 TxD" *) output TELEM1_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART0 RxD" *) input UART0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART0 TxD" *) output UART0_txd;
  output [0:0]fan_en_b;

  wire [31:0]axi_gpio_0_GPIO_TRI_I;
  wire [31:0]axi_gpio_0_GPIO_TRI_O;
  wire [31:0]axi_gpio_0_GPIO_TRI_T;
  wire axi_gpio_0_ip2intc_irpt;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_iic_0_iic2intc_irpt;
  wire axi_iic_1_IIC_SCL_I;
  wire axi_iic_1_IIC_SCL_O;
  wire axi_iic_1_IIC_SCL_T;
  wire axi_iic_1_IIC_SDA_I;
  wire axi_iic_1_IIC_SDA_O;
  wire axi_iic_1_IIC_SDA_T;
  wire axi_iic_1_iic2intc_irpt;
  wire axi_iic_2_IIC_SCL_I;
  wire axi_iic_2_IIC_SCL_O;
  wire axi_iic_2_IIC_SCL_T;
  wire axi_iic_2_IIC_SDA_I;
  wire axi_iic_2_IIC_SDA_O;
  wire axi_iic_2_IIC_SDA_T;
  wire axi_iic_2_iic2intc_irpt;
  wire axi_iic_3_IIC_SCL_I;
  wire axi_iic_3_IIC_SCL_O;
  wire axi_iic_3_IIC_SCL_T;
  wire axi_iic_3_IIC_SDA_I;
  wire axi_iic_3_IIC_SDA_O;
  wire axi_iic_3_IIC_SDA_T;
  wire axi_iic_3_iic2intc_irpt;
  wire axi_intc_0_irq;
  wire axi_timer_0_interrupt;
  wire axi_timer_0_pwm0;
  wire axi_timer_1_interrupt;
  wire axi_timer_1_pwm0;
  wire axi_timer_2_interrupt;
  wire axi_timer_2_pwm0;
  wire axi_timer_3_interrupt;
  wire axi_timer_3_pwm0;
  wire axi_timer_4_interrupt;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_1_UART_RxD;
  wire axi_uartlite_1_UART_TxD;
  wire axi_uartlite_1_interrupt;
  wire axi_uartlite_2_UART_RxD;
  wire axi_uartlite_2_UART_TxD;
  wire axi_uartlite_2_interrupt;
  wire axi_uartlite_3_UART_RxD;
  wire axi_uartlite_3_UART_TxD;
  wire axi_uartlite_3_interrupt;
  wire axi_uartlite_4_UART_RxD;
  wire axi_uartlite_4_UART_TxD;
  wire axi_uartlite_4_interrupt;
  wire capturetrig0_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M00_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire ps8_0_axi_periph_M01_AXI_AWVALID;
  wire ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire ps8_0_axi_periph_M01_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire ps8_0_axi_periph_M02_AXI_AWVALID;
  wire ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire ps8_0_axi_periph_M02_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_ARADDR;
  wire ps8_0_axi_periph_M03_AXI_ARREADY;
  wire ps8_0_axi_periph_M03_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_AWADDR;
  wire ps8_0_axi_periph_M03_AXI_AWREADY;
  wire ps8_0_axi_periph_M03_AXI_AWVALID;
  wire ps8_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_BRESP;
  wire ps8_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_RDATA;
  wire ps8_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_RRESP;
  wire ps8_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_WDATA;
  wire ps8_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M03_AXI_WSTRB;
  wire ps8_0_axi_periph_M03_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_ARADDR;
  wire ps8_0_axi_periph_M04_AXI_ARREADY;
  wire ps8_0_axi_periph_M04_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_AWADDR;
  wire ps8_0_axi_periph_M04_AXI_AWREADY;
  wire ps8_0_axi_periph_M04_AXI_AWVALID;
  wire ps8_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_BRESP;
  wire ps8_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_RDATA;
  wire ps8_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_RRESP;
  wire ps8_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_WDATA;
  wire ps8_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M04_AXI_WSTRB;
  wire ps8_0_axi_periph_M04_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_ARADDR;
  wire ps8_0_axi_periph_M05_AXI_ARREADY;
  wire ps8_0_axi_periph_M05_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_AWADDR;
  wire ps8_0_axi_periph_M05_AXI_AWREADY;
  wire ps8_0_axi_periph_M05_AXI_AWVALID;
  wire ps8_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_BRESP;
  wire ps8_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_RDATA;
  wire ps8_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_RRESP;
  wire ps8_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_WDATA;
  wire ps8_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M05_AXI_WSTRB;
  wire ps8_0_axi_periph_M05_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M06_AXI_ARADDR;
  wire ps8_0_axi_periph_M06_AXI_ARREADY;
  wire ps8_0_axi_periph_M06_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M06_AXI_AWADDR;
  wire ps8_0_axi_periph_M06_AXI_AWREADY;
  wire ps8_0_axi_periph_M06_AXI_AWVALID;
  wire ps8_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_BRESP;
  wire ps8_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_RDATA;
  wire ps8_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_RRESP;
  wire ps8_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_WDATA;
  wire ps8_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M06_AXI_WSTRB;
  wire ps8_0_axi_periph_M06_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M07_AXI_ARADDR;
  wire ps8_0_axi_periph_M07_AXI_ARREADY;
  wire ps8_0_axi_periph_M07_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M07_AXI_AWADDR;
  wire ps8_0_axi_periph_M07_AXI_AWREADY;
  wire ps8_0_axi_periph_M07_AXI_AWVALID;
  wire ps8_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M07_AXI_BRESP;
  wire ps8_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M07_AXI_RDATA;
  wire ps8_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M07_AXI_RRESP;
  wire ps8_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M07_AXI_WDATA;
  wire ps8_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M07_AXI_WSTRB;
  wire ps8_0_axi_periph_M07_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M08_AXI_ARADDR;
  wire ps8_0_axi_periph_M08_AXI_ARREADY;
  wire ps8_0_axi_periph_M08_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M08_AXI_AWADDR;
  wire ps8_0_axi_periph_M08_AXI_AWREADY;
  wire ps8_0_axi_periph_M08_AXI_AWVALID;
  wire ps8_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M08_AXI_BRESP;
  wire ps8_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M08_AXI_RDATA;
  wire ps8_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M08_AXI_RRESP;
  wire ps8_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M08_AXI_WDATA;
  wire ps8_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M08_AXI_WSTRB;
  wire ps8_0_axi_periph_M08_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M09_AXI_ARADDR;
  wire ps8_0_axi_periph_M09_AXI_ARREADY;
  wire ps8_0_axi_periph_M09_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M09_AXI_AWADDR;
  wire ps8_0_axi_periph_M09_AXI_AWREADY;
  wire ps8_0_axi_periph_M09_AXI_AWVALID;
  wire ps8_0_axi_periph_M09_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M09_AXI_BRESP;
  wire ps8_0_axi_periph_M09_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M09_AXI_RDATA;
  wire ps8_0_axi_periph_M09_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M09_AXI_RRESP;
  wire ps8_0_axi_periph_M09_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M09_AXI_WDATA;
  wire ps8_0_axi_periph_M09_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M09_AXI_WSTRB;
  wire ps8_0_axi_periph_M09_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M10_AXI_ARADDR;
  wire ps8_0_axi_periph_M10_AXI_ARREADY;
  wire ps8_0_axi_periph_M10_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M10_AXI_AWADDR;
  wire ps8_0_axi_periph_M10_AXI_AWREADY;
  wire ps8_0_axi_periph_M10_AXI_AWVALID;
  wire ps8_0_axi_periph_M10_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M10_AXI_BRESP;
  wire ps8_0_axi_periph_M10_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M10_AXI_RDATA;
  wire ps8_0_axi_periph_M10_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M10_AXI_RRESP;
  wire ps8_0_axi_periph_M10_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M10_AXI_WDATA;
  wire ps8_0_axi_periph_M10_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M10_AXI_WSTRB;
  wire ps8_0_axi_periph_M10_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M11_AXI_ARADDR;
  wire ps8_0_axi_periph_M11_AXI_ARREADY;
  wire ps8_0_axi_periph_M11_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M11_AXI_AWADDR;
  wire ps8_0_axi_periph_M11_AXI_AWREADY;
  wire ps8_0_axi_periph_M11_AXI_AWVALID;
  wire ps8_0_axi_periph_M11_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M11_AXI_BRESP;
  wire ps8_0_axi_periph_M11_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M11_AXI_RDATA;
  wire ps8_0_axi_periph_M11_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M11_AXI_RRESP;
  wire ps8_0_axi_periph_M11_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M11_AXI_WDATA;
  wire ps8_0_axi_periph_M11_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M11_AXI_WSTRB;
  wire ps8_0_axi_periph_M11_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M12_AXI_ARADDR;
  wire ps8_0_axi_periph_M12_AXI_ARREADY;
  wire ps8_0_axi_periph_M12_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M12_AXI_AWADDR;
  wire ps8_0_axi_periph_M12_AXI_AWREADY;
  wire ps8_0_axi_periph_M12_AXI_AWVALID;
  wire ps8_0_axi_periph_M12_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M12_AXI_BRESP;
  wire ps8_0_axi_periph_M12_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M12_AXI_RDATA;
  wire ps8_0_axi_periph_M12_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M12_AXI_RRESP;
  wire ps8_0_axi_periph_M12_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M12_AXI_WDATA;
  wire ps8_0_axi_periph_M12_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M12_AXI_WSTRB;
  wire ps8_0_axi_periph_M12_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M13_AXI_ARADDR;
  wire ps8_0_axi_periph_M13_AXI_ARREADY;
  wire ps8_0_axi_periph_M13_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M13_AXI_AWADDR;
  wire ps8_0_axi_periph_M13_AXI_AWREADY;
  wire ps8_0_axi_periph_M13_AXI_AWVALID;
  wire ps8_0_axi_periph_M13_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M13_AXI_BRESP;
  wire ps8_0_axi_periph_M13_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M13_AXI_RDATA;
  wire ps8_0_axi_periph_M13_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M13_AXI_RRESP;
  wire ps8_0_axi_periph_M13_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M13_AXI_WDATA;
  wire ps8_0_axi_periph_M13_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M13_AXI_WSTRB;
  wire ps8_0_axi_periph_M13_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M14_AXI_ARADDR;
  wire ps8_0_axi_periph_M14_AXI_ARREADY;
  wire ps8_0_axi_periph_M14_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M14_AXI_AWADDR;
  wire ps8_0_axi_periph_M14_AXI_AWREADY;
  wire ps8_0_axi_periph_M14_AXI_AWVALID;
  wire ps8_0_axi_periph_M14_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M14_AXI_BRESP;
  wire ps8_0_axi_periph_M14_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M14_AXI_RDATA;
  wire ps8_0_axi_periph_M14_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M14_AXI_RRESP;
  wire ps8_0_axi_periph_M14_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M14_AXI_WDATA;
  wire ps8_0_axi_periph_M14_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M14_AXI_WSTRB;
  wire ps8_0_axi_periph_M14_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M15_AXI_ARADDR;
  wire ps8_0_axi_periph_M15_AXI_ARREADY;
  wire ps8_0_axi_periph_M15_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M15_AXI_AWADDR;
  wire ps8_0_axi_periph_M15_AXI_AWREADY;
  wire ps8_0_axi_periph_M15_AXI_AWVALID;
  wire ps8_0_axi_periph_M15_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M15_AXI_BRESP;
  wire ps8_0_axi_periph_M15_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M15_AXI_RDATA;
  wire ps8_0_axi_periph_M15_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M15_AXI_RRESP;
  wire ps8_0_axi_periph_M15_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M15_AXI_WDATA;
  wire ps8_0_axi_periph_M15_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M15_AXI_WSTRB;
  wire ps8_0_axi_periph_M15_AXI_WVALID;
  wire [14:0]xlconcat_0_dout;
  wire [0:0]xlslice_0_Dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire [2:0]zynq_ultra_ps_e_0_emio_ttc0_wave_o;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign GPIO0_tri_o[31:0] = axi_gpio_0_GPIO_TRI_O;
  assign GPIO0_tri_t[31:0] = axi_gpio_0_GPIO_TRI_T;
  assign GPS0_I2C_scl_o = axi_iic_2_IIC_SCL_O;
  assign GPS0_I2C_scl_t = axi_iic_2_IIC_SCL_T;
  assign GPS0_I2C_sda_o = axi_iic_2_IIC_SDA_O;
  assign GPS0_I2C_sda_t = axi_iic_2_IIC_SDA_T;
  assign GPS0_UART_txd = axi_uartlite_0_UART_TxD;
  assign I2C0_scl_o = axi_iic_3_IIC_SCL_O;
  assign I2C0_scl_t = axi_iic_3_IIC_SCL_T;
  assign I2C0_sda_o = axi_iic_3_IIC_SDA_O;
  assign I2C0_sda_t = axi_iic_3_IIC_SDA_T;
  assign IMU0_I2C_scl_o = axi_iic_0_IIC_SCL_O;
  assign IMU0_I2C_scl_t = axi_iic_0_IIC_SCL_T;
  assign IMU0_I2C_sda_o = axi_iic_0_IIC_SDA_O;
  assign IMU0_I2C_sda_t = axi_iic_0_IIC_SDA_T;
  assign IMU1_I2C_scl_o = axi_iic_1_IIC_SCL_O;
  assign IMU1_I2C_scl_t = axi_iic_1_IIC_SCL_T;
  assign IMU1_I2C_sda_o = axi_iic_1_IIC_SDA_O;
  assign IMU1_I2C_sda_t = axi_iic_1_IIC_SDA_T;
  assign RC_PWM0 = axi_timer_0_pwm0;
  assign RC_PWM1 = axi_timer_1_pwm0;
  assign RC_PWM2 = axi_timer_2_pwm0;
  assign RC_PWM3 = axi_timer_3_pwm0;
  assign RC_SBUS0_txd = axi_uartlite_1_UART_TxD;
  assign TELEM0_txd = axi_uartlite_2_UART_TxD;
  assign TELEM1_txd = axi_uartlite_3_UART_TxD;
  assign UART0_txd = axi_uartlite_4_UART_TxD;
  assign axi_gpio_0_GPIO_TRI_I = GPIO0_tri_i[31:0];
  assign axi_iic_0_IIC_SCL_I = IMU0_I2C_scl_i;
  assign axi_iic_0_IIC_SDA_I = IMU0_I2C_sda_i;
  assign axi_iic_1_IIC_SCL_I = IMU1_I2C_scl_i;
  assign axi_iic_1_IIC_SDA_I = IMU1_I2C_sda_i;
  assign axi_iic_2_IIC_SCL_I = GPS0_I2C_scl_i;
  assign axi_iic_2_IIC_SDA_I = GPS0_I2C_sda_i;
  assign axi_iic_3_IIC_SCL_I = I2C0_scl_i;
  assign axi_iic_3_IIC_SDA_I = I2C0_sda_i;
  assign axi_uartlite_0_UART_RxD = GPS0_UART_rxd;
  assign axi_uartlite_1_UART_RxD = RC_SBUS0_rxd;
  assign axi_uartlite_2_UART_RxD = TELEM0_rxd;
  assign axi_uartlite_3_UART_RxD = TELEM1_rxd;
  assign axi_uartlite_4_UART_RxD = UART0_rxd;
  assign capturetrig0_0_1 = ENC_CAP0;
  assign fan_en_b[0] = xlslice_0_Dout;
  kr260_axi_gpio_0_1 axi_gpio_0
       (.gpio_io_i(axi_gpio_0_GPIO_TRI_I),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .gpio_io_t(axi_gpio_0_GPIO_TRI_T),
        .ip2intc_irpt(axi_gpio_0_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M01_AXI_WVALID));
  kr260_axi_iic_0_1 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  kr260_axi_iic_1_0 axi_iic_1
       (.iic2intc_irpt(axi_iic_1_iic2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M03_AXI_WVALID),
        .scl_i(axi_iic_1_IIC_SCL_I),
        .scl_o(axi_iic_1_IIC_SCL_O),
        .scl_t(axi_iic_1_IIC_SCL_T),
        .sda_i(axi_iic_1_IIC_SDA_I),
        .sda_o(axi_iic_1_IIC_SDA_O),
        .sda_t(axi_iic_1_IIC_SDA_T));
  kr260_axi_iic_2_0 axi_iic_2
       (.iic2intc_irpt(axi_iic_2_iic2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M05_AXI_WVALID),
        .scl_i(axi_iic_2_IIC_SCL_I),
        .scl_o(axi_iic_2_IIC_SCL_O),
        .scl_t(axi_iic_2_IIC_SCL_T),
        .sda_i(axi_iic_2_IIC_SDA_I),
        .sda_o(axi_iic_2_IIC_SDA_O),
        .sda_t(axi_iic_2_IIC_SDA_T));
  kr260_axi_iic_3_0 axi_iic_3
       (.iic2intc_irpt(axi_iic_3_iic2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M14_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M14_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M14_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M14_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M14_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M14_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M14_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M14_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M14_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M14_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M14_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M14_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M14_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M14_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M14_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M14_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M14_AXI_WVALID),
        .scl_i(axi_iic_3_IIC_SCL_I),
        .scl_o(axi_iic_3_IIC_SCL_O),
        .scl_t(axi_iic_3_IIC_SCL_T),
        .sda_i(axi_iic_3_IIC_SDA_I),
        .sda_o(axi_iic_3_IIC_SDA_O),
        .sda_t(axi_iic_3_IIC_SDA_T));
  kr260_axi_intc_0_0 axi_intc_0
       (.intr(xlconcat_0_dout),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M00_AXI_WVALID));
  kr260_axi_timer_0_1 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .pwm0(axi_timer_0_pwm0),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M09_AXI_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M09_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M09_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M09_AXI_AWADDR[4:0]),
        .s_axi_awready(ps8_0_axi_periph_M09_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M09_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M09_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M09_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M09_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M09_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M09_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M09_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M09_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M09_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M09_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M09_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M09_AXI_WVALID));
  kr260_axi_timer_0_2 axi_timer_1
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_1_interrupt),
        .pwm0(axi_timer_1_pwm0),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M10_AXI_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M10_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M10_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M10_AXI_AWADDR[4:0]),
        .s_axi_awready(ps8_0_axi_periph_M10_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M10_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M10_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M10_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M10_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M10_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M10_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M10_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M10_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M10_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M10_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M10_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M10_AXI_WVALID));
  kr260_axi_timer_2_1 axi_timer_2
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_2_interrupt),
        .pwm0(axi_timer_2_pwm0),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M11_AXI_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M11_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M11_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M11_AXI_AWADDR[4:0]),
        .s_axi_awready(ps8_0_axi_periph_M11_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M11_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M11_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M11_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M11_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M11_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M11_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M11_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M11_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M11_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M11_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M11_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M11_AXI_WVALID));
  kr260_axi_timer_2_2 axi_timer_3
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_3_interrupt),
        .pwm0(axi_timer_3_pwm0),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M12_AXI_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M12_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M12_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M12_AXI_AWADDR[4:0]),
        .s_axi_awready(ps8_0_axi_periph_M12_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M12_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M12_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M12_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M12_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M12_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M12_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M12_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M12_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M12_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M12_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M12_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M12_AXI_WVALID));
  kr260_axi_timer_4_0 axi_timer_4
       (.capturetrig0(capturetrig0_0_1),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_4_interrupt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M13_AXI_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M13_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M13_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M13_AXI_AWADDR[4:0]),
        .s_axi_awready(ps8_0_axi_periph_M13_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M13_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M13_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M13_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M13_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M13_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M13_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M13_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M13_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M13_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M13_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M13_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M13_AXI_WVALID));
  kr260_axi_uartlite_0_1 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M04_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  kr260_axi_uartlite_1_0 axi_uartlite_1
       (.interrupt(axi_uartlite_1_interrupt),
        .rx(axi_uartlite_1_UART_RxD),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M06_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M06_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M06_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M06_AXI_WVALID),
        .tx(axi_uartlite_1_UART_TxD));
  kr260_axi_uartlite_2_0 axi_uartlite_2
       (.interrupt(axi_uartlite_2_interrupt),
        .rx(axi_uartlite_2_UART_RxD),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M07_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M07_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M07_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M07_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M07_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M07_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M07_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M07_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M07_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M07_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M07_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M07_AXI_WVALID),
        .tx(axi_uartlite_2_UART_TxD));
  kr260_axi_uartlite_3_0 axi_uartlite_3
       (.interrupt(axi_uartlite_3_interrupt),
        .rx(axi_uartlite_3_UART_RxD),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M08_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M08_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M08_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M08_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M08_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M08_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M08_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M08_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M08_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M08_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M08_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M08_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M08_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M08_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M08_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M08_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M08_AXI_WVALID),
        .tx(axi_uartlite_3_UART_TxD));
  kr260_axi_uartlite_4_0 axi_uartlite_4
       (.interrupt(axi_uartlite_4_interrupt),
        .rx(axi_uartlite_4_UART_RxD),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps8_0_axi_periph_M15_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M15_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M15_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M15_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M15_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M15_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M15_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M15_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M15_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M15_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M15_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M15_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M15_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M15_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M15_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M15_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M15_AXI_WVALID),
        .tx(axi_uartlite_4_UART_TxD));
  kr260_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(zynq_ultra_ps_e_0_pl_clk0),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(clk_wiz_0_clk_out3),
        .resetn(zynq_ultra_ps_e_0_pl_resetn0));
  kr260_proc_sys_reset_0_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  kr260_proc_sys_reset_1_0 proc_sys_reset_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
  kr260_proc_sys_reset_2_0 proc_sys_reset_3
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out3));
  kr260_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out1),
        .M01_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M01_AXI_araddr(ps8_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out1),
        .M02_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M02_AXI_araddr(ps8_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_0_clk_out1),
        .M03_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M03_AXI_araddr(ps8_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps8_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_0_clk_out1),
        .M04_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M04_AXI_araddr(ps8_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_0_clk_out1),
        .M05_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M05_AXI_araddr(ps8_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(ps8_0_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(clk_wiz_0_clk_out1),
        .M06_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M06_AXI_araddr(ps8_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(ps8_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(ps8_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(ps8_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(ps8_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(ps8_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(ps8_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(ps8_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(ps8_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(ps8_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(ps8_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(ps8_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(ps8_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(ps8_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(ps8_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(ps8_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(ps8_0_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(clk_wiz_0_clk_out1),
        .M07_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M07_AXI_araddr(ps8_0_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arready(ps8_0_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(ps8_0_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(ps8_0_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awready(ps8_0_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(ps8_0_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(ps8_0_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(ps8_0_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(ps8_0_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(ps8_0_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(ps8_0_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(ps8_0_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(ps8_0_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(ps8_0_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(ps8_0_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(ps8_0_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(ps8_0_axi_periph_M07_AXI_WVALID),
        .M08_ACLK(clk_wiz_0_clk_out1),
        .M08_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M08_AXI_araddr(ps8_0_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arready(ps8_0_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arvalid(ps8_0_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(ps8_0_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awready(ps8_0_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awvalid(ps8_0_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bready(ps8_0_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(ps8_0_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(ps8_0_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(ps8_0_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rready(ps8_0_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(ps8_0_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(ps8_0_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(ps8_0_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wready(ps8_0_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(ps8_0_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(ps8_0_axi_periph_M08_AXI_WVALID),
        .M09_ACLK(clk_wiz_0_clk_out1),
        .M09_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M09_AXI_araddr(ps8_0_axi_periph_M09_AXI_ARADDR),
        .M09_AXI_arready(ps8_0_axi_periph_M09_AXI_ARREADY),
        .M09_AXI_arvalid(ps8_0_axi_periph_M09_AXI_ARVALID),
        .M09_AXI_awaddr(ps8_0_axi_periph_M09_AXI_AWADDR),
        .M09_AXI_awready(ps8_0_axi_periph_M09_AXI_AWREADY),
        .M09_AXI_awvalid(ps8_0_axi_periph_M09_AXI_AWVALID),
        .M09_AXI_bready(ps8_0_axi_periph_M09_AXI_BREADY),
        .M09_AXI_bresp(ps8_0_axi_periph_M09_AXI_BRESP),
        .M09_AXI_bvalid(ps8_0_axi_periph_M09_AXI_BVALID),
        .M09_AXI_rdata(ps8_0_axi_periph_M09_AXI_RDATA),
        .M09_AXI_rready(ps8_0_axi_periph_M09_AXI_RREADY),
        .M09_AXI_rresp(ps8_0_axi_periph_M09_AXI_RRESP),
        .M09_AXI_rvalid(ps8_0_axi_periph_M09_AXI_RVALID),
        .M09_AXI_wdata(ps8_0_axi_periph_M09_AXI_WDATA),
        .M09_AXI_wready(ps8_0_axi_periph_M09_AXI_WREADY),
        .M09_AXI_wstrb(ps8_0_axi_periph_M09_AXI_WSTRB),
        .M09_AXI_wvalid(ps8_0_axi_periph_M09_AXI_WVALID),
        .M10_ACLK(clk_wiz_0_clk_out1),
        .M10_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M10_AXI_araddr(ps8_0_axi_periph_M10_AXI_ARADDR),
        .M10_AXI_arready(ps8_0_axi_periph_M10_AXI_ARREADY),
        .M10_AXI_arvalid(ps8_0_axi_periph_M10_AXI_ARVALID),
        .M10_AXI_awaddr(ps8_0_axi_periph_M10_AXI_AWADDR),
        .M10_AXI_awready(ps8_0_axi_periph_M10_AXI_AWREADY),
        .M10_AXI_awvalid(ps8_0_axi_periph_M10_AXI_AWVALID),
        .M10_AXI_bready(ps8_0_axi_periph_M10_AXI_BREADY),
        .M10_AXI_bresp(ps8_0_axi_periph_M10_AXI_BRESP),
        .M10_AXI_bvalid(ps8_0_axi_periph_M10_AXI_BVALID),
        .M10_AXI_rdata(ps8_0_axi_periph_M10_AXI_RDATA),
        .M10_AXI_rready(ps8_0_axi_periph_M10_AXI_RREADY),
        .M10_AXI_rresp(ps8_0_axi_periph_M10_AXI_RRESP),
        .M10_AXI_rvalid(ps8_0_axi_periph_M10_AXI_RVALID),
        .M10_AXI_wdata(ps8_0_axi_periph_M10_AXI_WDATA),
        .M10_AXI_wready(ps8_0_axi_periph_M10_AXI_WREADY),
        .M10_AXI_wstrb(ps8_0_axi_periph_M10_AXI_WSTRB),
        .M10_AXI_wvalid(ps8_0_axi_periph_M10_AXI_WVALID),
        .M11_ACLK(clk_wiz_0_clk_out1),
        .M11_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M11_AXI_araddr(ps8_0_axi_periph_M11_AXI_ARADDR),
        .M11_AXI_arready(ps8_0_axi_periph_M11_AXI_ARREADY),
        .M11_AXI_arvalid(ps8_0_axi_periph_M11_AXI_ARVALID),
        .M11_AXI_awaddr(ps8_0_axi_periph_M11_AXI_AWADDR),
        .M11_AXI_awready(ps8_0_axi_periph_M11_AXI_AWREADY),
        .M11_AXI_awvalid(ps8_0_axi_periph_M11_AXI_AWVALID),
        .M11_AXI_bready(ps8_0_axi_periph_M11_AXI_BREADY),
        .M11_AXI_bresp(ps8_0_axi_periph_M11_AXI_BRESP),
        .M11_AXI_bvalid(ps8_0_axi_periph_M11_AXI_BVALID),
        .M11_AXI_rdata(ps8_0_axi_periph_M11_AXI_RDATA),
        .M11_AXI_rready(ps8_0_axi_periph_M11_AXI_RREADY),
        .M11_AXI_rresp(ps8_0_axi_periph_M11_AXI_RRESP),
        .M11_AXI_rvalid(ps8_0_axi_periph_M11_AXI_RVALID),
        .M11_AXI_wdata(ps8_0_axi_periph_M11_AXI_WDATA),
        .M11_AXI_wready(ps8_0_axi_periph_M11_AXI_WREADY),
        .M11_AXI_wstrb(ps8_0_axi_periph_M11_AXI_WSTRB),
        .M11_AXI_wvalid(ps8_0_axi_periph_M11_AXI_WVALID),
        .M12_ACLK(clk_wiz_0_clk_out1),
        .M12_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M12_AXI_araddr(ps8_0_axi_periph_M12_AXI_ARADDR),
        .M12_AXI_arready(ps8_0_axi_periph_M12_AXI_ARREADY),
        .M12_AXI_arvalid(ps8_0_axi_periph_M12_AXI_ARVALID),
        .M12_AXI_awaddr(ps8_0_axi_periph_M12_AXI_AWADDR),
        .M12_AXI_awready(ps8_0_axi_periph_M12_AXI_AWREADY),
        .M12_AXI_awvalid(ps8_0_axi_periph_M12_AXI_AWVALID),
        .M12_AXI_bready(ps8_0_axi_periph_M12_AXI_BREADY),
        .M12_AXI_bresp(ps8_0_axi_periph_M12_AXI_BRESP),
        .M12_AXI_bvalid(ps8_0_axi_periph_M12_AXI_BVALID),
        .M12_AXI_rdata(ps8_0_axi_periph_M12_AXI_RDATA),
        .M12_AXI_rready(ps8_0_axi_periph_M12_AXI_RREADY),
        .M12_AXI_rresp(ps8_0_axi_periph_M12_AXI_RRESP),
        .M12_AXI_rvalid(ps8_0_axi_periph_M12_AXI_RVALID),
        .M12_AXI_wdata(ps8_0_axi_periph_M12_AXI_WDATA),
        .M12_AXI_wready(ps8_0_axi_periph_M12_AXI_WREADY),
        .M12_AXI_wstrb(ps8_0_axi_periph_M12_AXI_WSTRB),
        .M12_AXI_wvalid(ps8_0_axi_periph_M12_AXI_WVALID),
        .M13_ACLK(clk_wiz_0_clk_out1),
        .M13_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M13_AXI_araddr(ps8_0_axi_periph_M13_AXI_ARADDR),
        .M13_AXI_arready(ps8_0_axi_periph_M13_AXI_ARREADY),
        .M13_AXI_arvalid(ps8_0_axi_periph_M13_AXI_ARVALID),
        .M13_AXI_awaddr(ps8_0_axi_periph_M13_AXI_AWADDR),
        .M13_AXI_awready(ps8_0_axi_periph_M13_AXI_AWREADY),
        .M13_AXI_awvalid(ps8_0_axi_periph_M13_AXI_AWVALID),
        .M13_AXI_bready(ps8_0_axi_periph_M13_AXI_BREADY),
        .M13_AXI_bresp(ps8_0_axi_periph_M13_AXI_BRESP),
        .M13_AXI_bvalid(ps8_0_axi_periph_M13_AXI_BVALID),
        .M13_AXI_rdata(ps8_0_axi_periph_M13_AXI_RDATA),
        .M13_AXI_rready(ps8_0_axi_periph_M13_AXI_RREADY),
        .M13_AXI_rresp(ps8_0_axi_periph_M13_AXI_RRESP),
        .M13_AXI_rvalid(ps8_0_axi_periph_M13_AXI_RVALID),
        .M13_AXI_wdata(ps8_0_axi_periph_M13_AXI_WDATA),
        .M13_AXI_wready(ps8_0_axi_periph_M13_AXI_WREADY),
        .M13_AXI_wstrb(ps8_0_axi_periph_M13_AXI_WSTRB),
        .M13_AXI_wvalid(ps8_0_axi_periph_M13_AXI_WVALID),
        .M14_ACLK(clk_wiz_0_clk_out1),
        .M14_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M14_AXI_araddr(ps8_0_axi_periph_M14_AXI_ARADDR),
        .M14_AXI_arready(ps8_0_axi_periph_M14_AXI_ARREADY),
        .M14_AXI_arvalid(ps8_0_axi_periph_M14_AXI_ARVALID),
        .M14_AXI_awaddr(ps8_0_axi_periph_M14_AXI_AWADDR),
        .M14_AXI_awready(ps8_0_axi_periph_M14_AXI_AWREADY),
        .M14_AXI_awvalid(ps8_0_axi_periph_M14_AXI_AWVALID),
        .M14_AXI_bready(ps8_0_axi_periph_M14_AXI_BREADY),
        .M14_AXI_bresp(ps8_0_axi_periph_M14_AXI_BRESP),
        .M14_AXI_bvalid(ps8_0_axi_periph_M14_AXI_BVALID),
        .M14_AXI_rdata(ps8_0_axi_periph_M14_AXI_RDATA),
        .M14_AXI_rready(ps8_0_axi_periph_M14_AXI_RREADY),
        .M14_AXI_rresp(ps8_0_axi_periph_M14_AXI_RRESP),
        .M14_AXI_rvalid(ps8_0_axi_periph_M14_AXI_RVALID),
        .M14_AXI_wdata(ps8_0_axi_periph_M14_AXI_WDATA),
        .M14_AXI_wready(ps8_0_axi_periph_M14_AXI_WREADY),
        .M14_AXI_wstrb(ps8_0_axi_periph_M14_AXI_WSTRB),
        .M14_AXI_wvalid(ps8_0_axi_periph_M14_AXI_WVALID),
        .M15_ACLK(clk_wiz_0_clk_out1),
        .M15_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M15_AXI_araddr(ps8_0_axi_periph_M15_AXI_ARADDR),
        .M15_AXI_arready(ps8_0_axi_periph_M15_AXI_ARREADY),
        .M15_AXI_arvalid(ps8_0_axi_periph_M15_AXI_ARVALID),
        .M15_AXI_awaddr(ps8_0_axi_periph_M15_AXI_AWADDR),
        .M15_AXI_awready(ps8_0_axi_periph_M15_AXI_AWREADY),
        .M15_AXI_awvalid(ps8_0_axi_periph_M15_AXI_AWVALID),
        .M15_AXI_bready(ps8_0_axi_periph_M15_AXI_BREADY),
        .M15_AXI_bresp(ps8_0_axi_periph_M15_AXI_BRESP),
        .M15_AXI_bvalid(ps8_0_axi_periph_M15_AXI_BVALID),
        .M15_AXI_rdata(ps8_0_axi_periph_M15_AXI_RDATA),
        .M15_AXI_rready(ps8_0_axi_periph_M15_AXI_RREADY),
        .M15_AXI_rresp(ps8_0_axi_periph_M15_AXI_RRESP),
        .M15_AXI_rvalid(ps8_0_axi_periph_M15_AXI_RVALID),
        .M15_AXI_wdata(ps8_0_axi_periph_M15_AXI_WDATA),
        .M15_AXI_wready(ps8_0_axi_periph_M15_AXI_WREADY),
        .M15_AXI_wstrb(ps8_0_axi_periph_M15_AXI_WSTRB),
        .M15_AXI_wvalid(ps8_0_axi_periph_M15_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID));
  kr260_xlconcat_0_0 xlconcat_0
       (.In0(axi_gpio_0_ip2intc_irpt),
        .In1(axi_iic_0_iic2intc_irpt),
        .In10(axi_timer_2_interrupt),
        .In11(axi_timer_3_interrupt),
        .In12(axi_timer_4_interrupt),
        .In13(axi_iic_3_iic2intc_irpt),
        .In14(axi_uartlite_4_interrupt),
        .In2(axi_iic_1_iic2intc_irpt),
        .In3(axi_uartlite_0_interrupt),
        .In4(axi_iic_2_iic2intc_irpt),
        .In5(axi_uartlite_1_interrupt),
        .In6(axi_uartlite_2_interrupt),
        .In7(axi_uartlite_3_interrupt),
        .In8(axi_timer_0_interrupt),
        .In9(axi_timer_1_interrupt),
        .dout(xlconcat_0_dout));
  kr260_xlslice_0_0 xlslice_0
       (.Din(zynq_ultra_ps_e_0_emio_ttc0_wave_o),
        .Dout(xlslice_0_Dout));
  kr260_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_ttc0_wave_o(zynq_ultra_ps_e_0_emio_ttc0_wave_o),
        .maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(clk_wiz_0_clk_out1),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(axi_intc_0_irq),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule

module kr260_ps8_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_ACLK,
    M14_ARESETN,
    M14_AXI_araddr,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awready,
    M14_AXI_awvalid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    M15_ACLK,
    M15_ARESETN,
    M15_AXI_araddr,
    M15_AXI_arready,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awready,
    M15_AXI_awvalid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [39:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [39:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [39:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [39:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [39:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [39:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [39:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [39:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [39:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [39:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [39:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [39:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [39:0]M10_AXI_araddr;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [39:0]M10_AXI_awaddr;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [39:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [39:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [39:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [39:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output [39:0]M13_AXI_araddr;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [39:0]M13_AXI_awaddr;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input M14_ACLK;
  input M14_ARESETN;
  output [39:0]M14_AXI_araddr;
  input M14_AXI_arready;
  output M14_AXI_arvalid;
  output [39:0]M14_AXI_awaddr;
  input M14_AXI_awready;
  output M14_AXI_awvalid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  input M15_ACLK;
  input M15_ARESETN;
  output [39:0]M15_AXI_araddr;
  input M15_AXI_arready;
  output M15_AXI_arvalid;
  output [39:0]M15_AXI_awaddr;
  input M15_AXI_awready;
  output M15_AXI_awvalid;
  output M15_AXI_bready;
  input [1:0]M15_AXI_bresp;
  input M15_AXI_bvalid;
  input [31:0]M15_AXI_rdata;
  output M15_AXI_rready;
  input [1:0]M15_AXI_rresp;
  input M15_AXI_rvalid;
  output [31:0]M15_AXI_wdata;
  input M15_AXI_wready;
  output [3:0]M15_AXI_wstrb;
  output M15_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [39:0]m00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m01_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m01_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m01_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m01_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m01_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_BRESP;
  wire m01_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_RDATA;
  wire m01_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_RRESP;
  wire m01_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_WDATA;
  wire m01_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m01_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m02_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m02_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m02_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m02_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m02_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_BRESP;
  wire m02_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_RDATA;
  wire m02_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_RRESP;
  wire m02_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_WDATA;
  wire m02_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m02_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m03_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m03_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m03_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m03_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m03_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_BRESP;
  wire m03_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_RDATA;
  wire m03_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_RRESP;
  wire m03_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_WDATA;
  wire m03_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m03_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m04_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m04_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m04_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m04_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m04_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_BRESP;
  wire m04_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_RDATA;
  wire m04_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_RRESP;
  wire m04_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_WDATA;
  wire m04_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m04_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m05_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m05_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m05_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m05_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m05_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_BRESP;
  wire m05_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_RDATA;
  wire m05_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_RRESP;
  wire m05_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_WDATA;
  wire m05_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m05_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m06_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m06_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m06_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m06_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m06_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m06_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m06_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_BRESP;
  wire m06_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_RDATA;
  wire m06_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_RRESP;
  wire m06_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_WDATA;
  wire m06_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m06_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m07_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m07_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m07_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m07_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m07_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m07_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m07_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_ps8_0_axi_periph_BRESP;
  wire m07_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_ps8_0_axi_periph_RDATA;
  wire m07_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_ps8_0_axi_periph_RRESP;
  wire m07_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_ps8_0_axi_periph_WDATA;
  wire m07_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m07_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m08_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m08_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m08_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m08_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m08_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m08_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m08_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_ps8_0_axi_periph_BRESP;
  wire m08_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_ps8_0_axi_periph_RDATA;
  wire m08_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_ps8_0_axi_periph_RRESP;
  wire m08_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_ps8_0_axi_periph_WDATA;
  wire m08_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m08_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m09_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m09_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m09_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m09_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m09_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m09_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m09_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m09_couplers_to_ps8_0_axi_periph_BRESP;
  wire m09_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m09_couplers_to_ps8_0_axi_periph_RDATA;
  wire m09_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m09_couplers_to_ps8_0_axi_periph_RRESP;
  wire m09_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m09_couplers_to_ps8_0_axi_periph_WDATA;
  wire m09_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m09_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m09_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m10_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m10_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m10_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m10_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m10_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m10_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m10_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m10_couplers_to_ps8_0_axi_periph_BRESP;
  wire m10_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m10_couplers_to_ps8_0_axi_periph_RDATA;
  wire m10_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m10_couplers_to_ps8_0_axi_periph_RRESP;
  wire m10_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m10_couplers_to_ps8_0_axi_periph_WDATA;
  wire m10_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m10_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m10_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m11_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m11_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m11_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m11_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m11_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m11_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m11_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m11_couplers_to_ps8_0_axi_periph_BRESP;
  wire m11_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m11_couplers_to_ps8_0_axi_periph_RDATA;
  wire m11_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m11_couplers_to_ps8_0_axi_periph_RRESP;
  wire m11_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m11_couplers_to_ps8_0_axi_periph_WDATA;
  wire m11_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m11_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m11_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m12_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m12_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m12_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m12_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m12_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m12_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m12_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m12_couplers_to_ps8_0_axi_periph_BRESP;
  wire m12_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m12_couplers_to_ps8_0_axi_periph_RDATA;
  wire m12_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m12_couplers_to_ps8_0_axi_periph_RRESP;
  wire m12_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m12_couplers_to_ps8_0_axi_periph_WDATA;
  wire m12_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m12_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m12_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m13_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m13_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m13_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m13_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m13_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m13_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m13_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m13_couplers_to_ps8_0_axi_periph_BRESP;
  wire m13_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m13_couplers_to_ps8_0_axi_periph_RDATA;
  wire m13_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m13_couplers_to_ps8_0_axi_periph_RRESP;
  wire m13_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m13_couplers_to_ps8_0_axi_periph_WDATA;
  wire m13_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m13_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m13_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m14_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m14_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m14_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m14_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m14_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m14_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m14_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m14_couplers_to_ps8_0_axi_periph_BRESP;
  wire m14_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m14_couplers_to_ps8_0_axi_periph_RDATA;
  wire m14_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m14_couplers_to_ps8_0_axi_periph_RRESP;
  wire m14_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m14_couplers_to_ps8_0_axi_periph_WDATA;
  wire m14_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m14_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m14_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m15_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m15_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m15_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m15_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m15_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m15_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m15_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m15_couplers_to_ps8_0_axi_periph_BRESP;
  wire m15_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m15_couplers_to_ps8_0_axi_periph_RDATA;
  wire m15_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m15_couplers_to_ps8_0_axi_periph_RRESP;
  wire m15_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m15_couplers_to_ps8_0_axi_periph_WDATA;
  wire m15_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m15_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m15_couplers_to_ps8_0_axi_periph_WVALID;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [319:280]xbar_to_m07_couplers_ARADDR;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [319:280]xbar_to_m07_couplers_AWADDR;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [359:320]xbar_to_m08_couplers_ARADDR;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [359:320]xbar_to_m08_couplers_AWADDR;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [399:360]xbar_to_m09_couplers_ARADDR;
  wire xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [399:360]xbar_to_m09_couplers_AWADDR;
  wire xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [439:400]xbar_to_m10_couplers_ARADDR;
  wire xbar_to_m10_couplers_ARREADY;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [439:400]xbar_to_m10_couplers_AWADDR;
  wire xbar_to_m10_couplers_AWREADY;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [479:440]xbar_to_m11_couplers_ARADDR;
  wire xbar_to_m11_couplers_ARREADY;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [479:440]xbar_to_m11_couplers_AWADDR;
  wire xbar_to_m11_couplers_AWREADY;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [519:480]xbar_to_m12_couplers_ARADDR;
  wire xbar_to_m12_couplers_ARREADY;
  wire [12:12]xbar_to_m12_couplers_ARVALID;
  wire [519:480]xbar_to_m12_couplers_AWADDR;
  wire xbar_to_m12_couplers_AWREADY;
  wire [12:12]xbar_to_m12_couplers_AWVALID;
  wire [12:12]xbar_to_m12_couplers_BREADY;
  wire [1:0]xbar_to_m12_couplers_BRESP;
  wire xbar_to_m12_couplers_BVALID;
  wire [31:0]xbar_to_m12_couplers_RDATA;
  wire [12:12]xbar_to_m12_couplers_RREADY;
  wire [1:0]xbar_to_m12_couplers_RRESP;
  wire xbar_to_m12_couplers_RVALID;
  wire [415:384]xbar_to_m12_couplers_WDATA;
  wire xbar_to_m12_couplers_WREADY;
  wire [51:48]xbar_to_m12_couplers_WSTRB;
  wire [12:12]xbar_to_m12_couplers_WVALID;
  wire [559:520]xbar_to_m13_couplers_ARADDR;
  wire xbar_to_m13_couplers_ARREADY;
  wire [13:13]xbar_to_m13_couplers_ARVALID;
  wire [559:520]xbar_to_m13_couplers_AWADDR;
  wire xbar_to_m13_couplers_AWREADY;
  wire [13:13]xbar_to_m13_couplers_AWVALID;
  wire [13:13]xbar_to_m13_couplers_BREADY;
  wire [1:0]xbar_to_m13_couplers_BRESP;
  wire xbar_to_m13_couplers_BVALID;
  wire [31:0]xbar_to_m13_couplers_RDATA;
  wire [13:13]xbar_to_m13_couplers_RREADY;
  wire [1:0]xbar_to_m13_couplers_RRESP;
  wire xbar_to_m13_couplers_RVALID;
  wire [447:416]xbar_to_m13_couplers_WDATA;
  wire xbar_to_m13_couplers_WREADY;
  wire [55:52]xbar_to_m13_couplers_WSTRB;
  wire [13:13]xbar_to_m13_couplers_WVALID;
  wire [599:560]xbar_to_m14_couplers_ARADDR;
  wire xbar_to_m14_couplers_ARREADY;
  wire [14:14]xbar_to_m14_couplers_ARVALID;
  wire [599:560]xbar_to_m14_couplers_AWADDR;
  wire xbar_to_m14_couplers_AWREADY;
  wire [14:14]xbar_to_m14_couplers_AWVALID;
  wire [14:14]xbar_to_m14_couplers_BREADY;
  wire [1:0]xbar_to_m14_couplers_BRESP;
  wire xbar_to_m14_couplers_BVALID;
  wire [31:0]xbar_to_m14_couplers_RDATA;
  wire [14:14]xbar_to_m14_couplers_RREADY;
  wire [1:0]xbar_to_m14_couplers_RRESP;
  wire xbar_to_m14_couplers_RVALID;
  wire [479:448]xbar_to_m14_couplers_WDATA;
  wire xbar_to_m14_couplers_WREADY;
  wire [59:56]xbar_to_m14_couplers_WSTRB;
  wire [14:14]xbar_to_m14_couplers_WVALID;
  wire [639:600]xbar_to_m15_couplers_ARADDR;
  wire xbar_to_m15_couplers_ARREADY;
  wire [15:15]xbar_to_m15_couplers_ARVALID;
  wire [639:600]xbar_to_m15_couplers_AWADDR;
  wire xbar_to_m15_couplers_AWREADY;
  wire [15:15]xbar_to_m15_couplers_AWVALID;
  wire [15:15]xbar_to_m15_couplers_BREADY;
  wire [1:0]xbar_to_m15_couplers_BRESP;
  wire xbar_to_m15_couplers_BVALID;
  wire [31:0]xbar_to_m15_couplers_RDATA;
  wire [15:15]xbar_to_m15_couplers_RREADY;
  wire [1:0]xbar_to_m15_couplers_RRESP;
  wire xbar_to_m15_couplers_RVALID;
  wire [511:480]xbar_to_m15_couplers_WDATA;
  wire xbar_to_m15_couplers_WREADY;
  wire [63:60]xbar_to_m15_couplers_WSTRB;
  wire [15:15]xbar_to_m15_couplers_WVALID;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ps8_0_axi_periph_WVALID;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps8_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps8_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps8_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps8_0_axi_periph_WVALID;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps8_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps8_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps8_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_ps8_0_axi_periph_WVALID;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_ps8_0_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_ps8_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps8_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_ps8_0_axi_periph_WVALID;
  assign M04_AXI_araddr[39:0] = m04_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[39:0] = m04_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps8_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps8_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps8_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps8_0_axi_periph_WVALID;
  assign M05_AXI_araddr[39:0] = m05_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[39:0] = m05_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_ps8_0_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_ps8_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps8_0_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_ps8_0_axi_periph_WVALID;
  assign M06_AXI_araddr[39:0] = m06_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[39:0] = m06_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_ps8_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_ps8_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_ps8_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_ps8_0_axi_periph_WVALID;
  assign M07_AXI_araddr[39:0] = m07_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M07_AXI_awaddr[39:0] = m07_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_ps8_0_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_ps8_0_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_ps8_0_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_ps8_0_axi_periph_WVALID;
  assign M08_AXI_araddr[39:0] = m08_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M08_AXI_awaddr[39:0] = m08_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_ps8_0_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_ps8_0_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_ps8_0_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_ps8_0_axi_periph_WVALID;
  assign M09_AXI_araddr[39:0] = m09_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M09_AXI_awaddr[39:0] = m09_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_ps8_0_axi_periph_BREADY;
  assign M09_AXI_rready = m09_couplers_to_ps8_0_axi_periph_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_ps8_0_axi_periph_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_ps8_0_axi_periph_WVALID;
  assign M10_AXI_araddr[39:0] = m10_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M10_AXI_arvalid = m10_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M10_AXI_awaddr[39:0] = m10_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M10_AXI_awvalid = m10_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_ps8_0_axi_periph_BREADY;
  assign M10_AXI_rready = m10_couplers_to_ps8_0_axi_periph_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_ps8_0_axi_periph_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_ps8_0_axi_periph_WVALID;
  assign M11_AXI_araddr[39:0] = m11_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M11_AXI_arvalid = m11_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M11_AXI_awaddr[39:0] = m11_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M11_AXI_awvalid = m11_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_ps8_0_axi_periph_BREADY;
  assign M11_AXI_rready = m11_couplers_to_ps8_0_axi_periph_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_ps8_0_axi_periph_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_ps8_0_axi_periph_WVALID;
  assign M12_AXI_araddr[39:0] = m12_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M12_AXI_arvalid = m12_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M12_AXI_awaddr[39:0] = m12_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M12_AXI_awvalid = m12_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_ps8_0_axi_periph_BREADY;
  assign M12_AXI_rready = m12_couplers_to_ps8_0_axi_periph_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_ps8_0_axi_periph_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_ps8_0_axi_periph_WVALID;
  assign M13_AXI_araddr[39:0] = m13_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M13_AXI_arvalid = m13_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M13_AXI_awaddr[39:0] = m13_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M13_AXI_awvalid = m13_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_ps8_0_axi_periph_BREADY;
  assign M13_AXI_rready = m13_couplers_to_ps8_0_axi_periph_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_ps8_0_axi_periph_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_ps8_0_axi_periph_WVALID;
  assign M14_AXI_araddr[39:0] = m14_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M14_AXI_arvalid = m14_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M14_AXI_awaddr[39:0] = m14_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M14_AXI_awvalid = m14_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M14_AXI_bready = m14_couplers_to_ps8_0_axi_periph_BREADY;
  assign M14_AXI_rready = m14_couplers_to_ps8_0_axi_periph_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_ps8_0_axi_periph_WDATA;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M14_AXI_wvalid = m14_couplers_to_ps8_0_axi_periph_WVALID;
  assign M15_AXI_araddr[39:0] = m15_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M15_AXI_arvalid = m15_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M15_AXI_awaddr[39:0] = m15_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M15_AXI_awvalid = m15_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M15_AXI_bready = m15_couplers_to_ps8_0_axi_periph_BREADY;
  assign M15_AXI_rready = m15_couplers_to_ps8_0_axi_periph_RREADY;
  assign M15_AXI_wdata[31:0] = m15_couplers_to_ps8_0_axi_periph_WDATA;
  assign M15_AXI_wstrb[3:0] = m15_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M15_AXI_wvalid = m15_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ps8_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps8_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps8_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps8_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps8_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps8_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps8_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps8_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps8_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps8_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps8_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps8_0_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ps8_0_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_ps8_0_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_ps8_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_ps8_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps8_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_ps8_0_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_ps8_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps8_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps8_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps8_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps8_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps8_0_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_ps8_0_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_ps8_0_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_ps8_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_ps8_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps8_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_ps8_0_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_ps8_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_ps8_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_ps8_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_ps8_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_ps8_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_ps8_0_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_ps8_0_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_ps8_0_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_ps8_0_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_ps8_0_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_ps8_0_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_ps8_0_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_ps8_0_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_ps8_0_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_ps8_0_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_ps8_0_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_ps8_0_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_ps8_0_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_ps8_0_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_ps8_0_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_ps8_0_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_ps8_0_axi_periph_WREADY = M08_AXI_wready;
  assign m09_couplers_to_ps8_0_axi_periph_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_ps8_0_axi_periph_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_ps8_0_axi_periph_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_ps8_0_axi_periph_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_ps8_0_axi_periph_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_ps8_0_axi_periph_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_ps8_0_axi_periph_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_ps8_0_axi_periph_WREADY = M09_AXI_wready;
  assign m10_couplers_to_ps8_0_axi_periph_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_ps8_0_axi_periph_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_ps8_0_axi_periph_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_ps8_0_axi_periph_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_ps8_0_axi_periph_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_ps8_0_axi_periph_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_ps8_0_axi_periph_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_ps8_0_axi_periph_WREADY = M10_AXI_wready;
  assign m11_couplers_to_ps8_0_axi_periph_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_ps8_0_axi_periph_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_ps8_0_axi_periph_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_ps8_0_axi_periph_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_ps8_0_axi_periph_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_ps8_0_axi_periph_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_ps8_0_axi_periph_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_ps8_0_axi_periph_WREADY = M11_AXI_wready;
  assign m12_couplers_to_ps8_0_axi_periph_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_ps8_0_axi_periph_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_ps8_0_axi_periph_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_ps8_0_axi_periph_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_ps8_0_axi_periph_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_ps8_0_axi_periph_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_ps8_0_axi_periph_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_ps8_0_axi_periph_WREADY = M12_AXI_wready;
  assign m13_couplers_to_ps8_0_axi_periph_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_ps8_0_axi_periph_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_ps8_0_axi_periph_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_ps8_0_axi_periph_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_ps8_0_axi_periph_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_ps8_0_axi_periph_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_ps8_0_axi_periph_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_ps8_0_axi_periph_WREADY = M13_AXI_wready;
  assign m14_couplers_to_ps8_0_axi_periph_ARREADY = M14_AXI_arready;
  assign m14_couplers_to_ps8_0_axi_periph_AWREADY = M14_AXI_awready;
  assign m14_couplers_to_ps8_0_axi_periph_BRESP = M14_AXI_bresp[1:0];
  assign m14_couplers_to_ps8_0_axi_periph_BVALID = M14_AXI_bvalid;
  assign m14_couplers_to_ps8_0_axi_periph_RDATA = M14_AXI_rdata[31:0];
  assign m14_couplers_to_ps8_0_axi_periph_RRESP = M14_AXI_rresp[1:0];
  assign m14_couplers_to_ps8_0_axi_periph_RVALID = M14_AXI_rvalid;
  assign m14_couplers_to_ps8_0_axi_periph_WREADY = M14_AXI_wready;
  assign m15_couplers_to_ps8_0_axi_periph_ARREADY = M15_AXI_arready;
  assign m15_couplers_to_ps8_0_axi_periph_AWREADY = M15_AXI_awready;
  assign m15_couplers_to_ps8_0_axi_periph_BRESP = M15_AXI_bresp[1:0];
  assign m15_couplers_to_ps8_0_axi_periph_BVALID = M15_AXI_bvalid;
  assign m15_couplers_to_ps8_0_axi_periph_RDATA = M15_AXI_rdata[31:0];
  assign m15_couplers_to_ps8_0_axi_periph_RRESP = M15_AXI_rresp[1:0];
  assign m15_couplers_to_ps8_0_axi_periph_RVALID = M15_AXI_rvalid;
  assign m15_couplers_to_ps8_0_axi_periph_WREADY = M15_AXI_wready;
  assign ps8_0_axi_periph_ACLK_net = ACLK;
  assign ps8_0_axi_periph_ARESETN_net = ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_5KRTGW m00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1C8VMZC m01_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1GC37FL m02_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1HVU6H m03_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_17Y71CJ m04_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_AZQC8R m05_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m05_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m05_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_F89AF6 m06_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_13PCHYI m07_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m07_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m07_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1OX5U9J m08_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m08_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m08_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_RB382N m09_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m09_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m09_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m09_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m09_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m09_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m09_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m09_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m09_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m09_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m09_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m09_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m09_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m09_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_1FQB881 m10_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m10_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m10_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m10_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m10_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m10_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m10_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m10_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m10_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m10_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m10_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m10_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m10_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m10_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_ZDUO9 m11_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m11_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m11_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m11_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m11_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m11_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m11_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m11_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m11_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m11_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m11_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m11_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m11_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m11_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  m12_couplers_imp_59GN3K m12_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m12_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m12_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m12_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m12_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m12_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m12_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m12_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m12_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m12_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m12_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m12_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m12_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m12_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m12_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m12_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m12_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m12_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m12_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m12_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m12_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m12_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m12_couplers_RDATA),
        .S_AXI_rready(xbar_to_m12_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m12_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m12_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m12_couplers_WDATA),
        .S_AXI_wready(xbar_to_m12_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m12_couplers_WVALID));
  m13_couplers_imp_1BGK108 m13_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m13_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m13_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m13_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m13_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m13_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m13_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m13_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m13_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m13_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m13_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m13_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m13_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m13_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m13_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m13_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m13_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m13_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m13_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m13_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m13_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m13_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m13_couplers_RDATA),
        .S_AXI_rready(xbar_to_m13_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m13_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m13_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m13_couplers_WDATA),
        .S_AXI_wready(xbar_to_m13_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m13_couplers_WVALID));
  m14_couplers_imp_DBZAWY m14_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m14_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m14_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m14_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m14_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m14_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m14_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m14_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m14_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m14_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m14_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m14_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m14_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m14_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m14_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m14_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m14_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m14_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m14_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m14_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m14_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m14_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m14_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m14_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m14_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m14_couplers_RDATA),
        .S_AXI_rready(xbar_to_m14_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m14_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m14_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m14_couplers_WDATA),
        .S_AXI_wready(xbar_to_m14_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m14_couplers_WVALID));
  m15_couplers_imp_12A2Y22 m15_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m15_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m15_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m15_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m15_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m15_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m15_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m15_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m15_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m15_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m15_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m15_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m15_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m15_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m15_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m15_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m15_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m15_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m15_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m15_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m15_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m15_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m15_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m15_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m15_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m15_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m15_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m15_couplers_RDATA),
        .S_AXI_rready(xbar_to_m15_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m15_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m15_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m15_couplers_WDATA),
        .S_AXI_wready(xbar_to_m15_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m15_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m15_couplers_WVALID));
  s00_couplers_imp_IFI8T7 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
  kr260_xbar_0 xbar
       (.aclk(ps8_0_axi_periph_ACLK_net),
        .aresetn(ps8_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m15_couplers_ARADDR,xbar_to_m14_couplers_ARADDR,xbar_to_m13_couplers_ARADDR,xbar_to_m12_couplers_ARADDR,xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m15_couplers_ARREADY,xbar_to_m14_couplers_ARREADY,xbar_to_m13_couplers_ARREADY,xbar_to_m12_couplers_ARREADY,xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m15_couplers_ARVALID,xbar_to_m14_couplers_ARVALID,xbar_to_m13_couplers_ARVALID,xbar_to_m12_couplers_ARVALID,xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m15_couplers_AWADDR,xbar_to_m14_couplers_AWADDR,xbar_to_m13_couplers_AWADDR,xbar_to_m12_couplers_AWADDR,xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m15_couplers_AWREADY,xbar_to_m14_couplers_AWREADY,xbar_to_m13_couplers_AWREADY,xbar_to_m12_couplers_AWREADY,xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m15_couplers_AWVALID,xbar_to_m14_couplers_AWVALID,xbar_to_m13_couplers_AWVALID,xbar_to_m12_couplers_AWVALID,xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m15_couplers_BREADY,xbar_to_m14_couplers_BREADY,xbar_to_m13_couplers_BREADY,xbar_to_m12_couplers_BREADY,xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m15_couplers_BRESP,xbar_to_m14_couplers_BRESP,xbar_to_m13_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m15_couplers_BVALID,xbar_to_m14_couplers_BVALID,xbar_to_m13_couplers_BVALID,xbar_to_m12_couplers_BVALID,xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m15_couplers_RDATA,xbar_to_m14_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m15_couplers_RREADY,xbar_to_m14_couplers_RREADY,xbar_to_m13_couplers_RREADY,xbar_to_m12_couplers_RREADY,xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m15_couplers_RRESP,xbar_to_m14_couplers_RRESP,xbar_to_m13_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m15_couplers_RVALID,xbar_to_m14_couplers_RVALID,xbar_to_m13_couplers_RVALID,xbar_to_m12_couplers_RVALID,xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m15_couplers_WDATA,xbar_to_m14_couplers_WDATA,xbar_to_m13_couplers_WDATA,xbar_to_m12_couplers_WDATA,xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m15_couplers_WREADY,xbar_to_m14_couplers_WREADY,xbar_to_m13_couplers_WREADY,xbar_to_m12_couplers_WREADY,xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m15_couplers_WSTRB,xbar_to_m14_couplers_WSTRB,xbar_to_m13_couplers_WSTRB,xbar_to_m12_couplers_WSTRB,xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m15_couplers_WVALID,xbar_to_m14_couplers_WVALID,xbar_to_m13_couplers_WVALID,xbar_to_m12_couplers_WVALID,xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_5KRTGW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1C8VMZC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1GC37FL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1HVU6H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_17Y71CJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [39:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_AZQC8R
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [39:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_F89AF6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [39:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_13PCHYI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [39:0]m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module m08_couplers_imp_1OX5U9J
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m08_couplers_to_m08_couplers_ARADDR;
  wire m08_couplers_to_m08_couplers_ARREADY;
  wire m08_couplers_to_m08_couplers_ARVALID;
  wire [39:0]m08_couplers_to_m08_couplers_AWADDR;
  wire m08_couplers_to_m08_couplers_AWREADY;
  wire m08_couplers_to_m08_couplers_AWVALID;
  wire m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready;
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready;
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready;
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready;
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid;
endmodule

module m09_couplers_imp_RB382N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m09_couplers_to_m09_couplers_ARADDR;
  wire m09_couplers_to_m09_couplers_ARREADY;
  wire m09_couplers_to_m09_couplers_ARVALID;
  wire [39:0]m09_couplers_to_m09_couplers_AWADDR;
  wire m09_couplers_to_m09_couplers_AWREADY;
  wire m09_couplers_to_m09_couplers_AWVALID;
  wire m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire m09_couplers_to_m09_couplers_BVALID;
  wire [31:0]m09_couplers_to_m09_couplers_RDATA;
  wire m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire m09_couplers_to_m09_couplers_RVALID;
  wire [31:0]m09_couplers_to_m09_couplers_WDATA;
  wire m09_couplers_to_m09_couplers_WREADY;
  wire [3:0]m09_couplers_to_m09_couplers_WSTRB;
  wire m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready;
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready;
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready;
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready;
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid;
endmodule

module m10_couplers_imp_1FQB881
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m10_couplers_to_m10_couplers_ARADDR;
  wire m10_couplers_to_m10_couplers_ARREADY;
  wire m10_couplers_to_m10_couplers_ARVALID;
  wire [39:0]m10_couplers_to_m10_couplers_AWADDR;
  wire m10_couplers_to_m10_couplers_AWREADY;
  wire m10_couplers_to_m10_couplers_AWVALID;
  wire m10_couplers_to_m10_couplers_BREADY;
  wire [1:0]m10_couplers_to_m10_couplers_BRESP;
  wire m10_couplers_to_m10_couplers_BVALID;
  wire [31:0]m10_couplers_to_m10_couplers_RDATA;
  wire m10_couplers_to_m10_couplers_RREADY;
  wire [1:0]m10_couplers_to_m10_couplers_RRESP;
  wire m10_couplers_to_m10_couplers_RVALID;
  wire [31:0]m10_couplers_to_m10_couplers_WDATA;
  wire m10_couplers_to_m10_couplers_WREADY;
  wire [3:0]m10_couplers_to_m10_couplers_WSTRB;
  wire m10_couplers_to_m10_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m10_couplers_to_m10_couplers_ARADDR;
  assign M_AXI_arvalid = m10_couplers_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m10_couplers_to_m10_couplers_AWADDR;
  assign M_AXI_awvalid = m10_couplers_to_m10_couplers_AWVALID;
  assign M_AXI_bready = m10_couplers_to_m10_couplers_BREADY;
  assign M_AXI_rready = m10_couplers_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m10_couplers_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m10_couplers_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = m10_couplers_to_m10_couplers_WVALID;
  assign S_AXI_arready = m10_couplers_to_m10_couplers_ARREADY;
  assign S_AXI_awready = m10_couplers_to_m10_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_m10_couplers_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_m10_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_m10_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_m10_couplers_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_m10_couplers_RVALID;
  assign S_AXI_wready = m10_couplers_to_m10_couplers_WREADY;
  assign m10_couplers_to_m10_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m10_couplers_to_m10_couplers_ARREADY = M_AXI_arready;
  assign m10_couplers_to_m10_couplers_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_m10_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m10_couplers_to_m10_couplers_AWREADY = M_AXI_awready;
  assign m10_couplers_to_m10_couplers_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_m10_couplers_BREADY = S_AXI_bready;
  assign m10_couplers_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign m10_couplers_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign m10_couplers_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign m10_couplers_to_m10_couplers_RREADY = S_AXI_rready;
  assign m10_couplers_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign m10_couplers_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign m10_couplers_to_m10_couplers_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_m10_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_m10_couplers_WVALID = S_AXI_wvalid;
endmodule

module m11_couplers_imp_ZDUO9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m11_couplers_to_m11_couplers_ARADDR;
  wire m11_couplers_to_m11_couplers_ARREADY;
  wire m11_couplers_to_m11_couplers_ARVALID;
  wire [39:0]m11_couplers_to_m11_couplers_AWADDR;
  wire m11_couplers_to_m11_couplers_AWREADY;
  wire m11_couplers_to_m11_couplers_AWVALID;
  wire m11_couplers_to_m11_couplers_BREADY;
  wire [1:0]m11_couplers_to_m11_couplers_BRESP;
  wire m11_couplers_to_m11_couplers_BVALID;
  wire [31:0]m11_couplers_to_m11_couplers_RDATA;
  wire m11_couplers_to_m11_couplers_RREADY;
  wire [1:0]m11_couplers_to_m11_couplers_RRESP;
  wire m11_couplers_to_m11_couplers_RVALID;
  wire [31:0]m11_couplers_to_m11_couplers_WDATA;
  wire m11_couplers_to_m11_couplers_WREADY;
  wire [3:0]m11_couplers_to_m11_couplers_WSTRB;
  wire m11_couplers_to_m11_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m11_couplers_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid = m11_couplers_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m11_couplers_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid = m11_couplers_to_m11_couplers_AWVALID;
  assign M_AXI_bready = m11_couplers_to_m11_couplers_BREADY;
  assign M_AXI_rready = m11_couplers_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m11_couplers_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m11_couplers_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = m11_couplers_to_m11_couplers_WVALID;
  assign S_AXI_arready = m11_couplers_to_m11_couplers_ARREADY;
  assign S_AXI_awready = m11_couplers_to_m11_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m11_couplers_to_m11_couplers_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_m11_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_m11_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m11_couplers_to_m11_couplers_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_m11_couplers_RVALID;
  assign S_AXI_wready = m11_couplers_to_m11_couplers_WREADY;
  assign m11_couplers_to_m11_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m11_couplers_to_m11_couplers_ARREADY = M_AXI_arready;
  assign m11_couplers_to_m11_couplers_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_m11_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m11_couplers_to_m11_couplers_AWREADY = M_AXI_awready;
  assign m11_couplers_to_m11_couplers_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_m11_couplers_BREADY = S_AXI_bready;
  assign m11_couplers_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign m11_couplers_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign m11_couplers_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign m11_couplers_to_m11_couplers_RREADY = S_AXI_rready;
  assign m11_couplers_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign m11_couplers_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign m11_couplers_to_m11_couplers_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_m11_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_m11_couplers_WVALID = S_AXI_wvalid;
endmodule

module m12_couplers_imp_59GN3K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m12_couplers_to_m12_couplers_ARADDR;
  wire m12_couplers_to_m12_couplers_ARREADY;
  wire m12_couplers_to_m12_couplers_ARVALID;
  wire [39:0]m12_couplers_to_m12_couplers_AWADDR;
  wire m12_couplers_to_m12_couplers_AWREADY;
  wire m12_couplers_to_m12_couplers_AWVALID;
  wire m12_couplers_to_m12_couplers_BREADY;
  wire [1:0]m12_couplers_to_m12_couplers_BRESP;
  wire m12_couplers_to_m12_couplers_BVALID;
  wire [31:0]m12_couplers_to_m12_couplers_RDATA;
  wire m12_couplers_to_m12_couplers_RREADY;
  wire [1:0]m12_couplers_to_m12_couplers_RRESP;
  wire m12_couplers_to_m12_couplers_RVALID;
  wire [31:0]m12_couplers_to_m12_couplers_WDATA;
  wire m12_couplers_to_m12_couplers_WREADY;
  wire [3:0]m12_couplers_to_m12_couplers_WSTRB;
  wire m12_couplers_to_m12_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m12_couplers_to_m12_couplers_ARADDR;
  assign M_AXI_arvalid = m12_couplers_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m12_couplers_to_m12_couplers_AWADDR;
  assign M_AXI_awvalid = m12_couplers_to_m12_couplers_AWVALID;
  assign M_AXI_bready = m12_couplers_to_m12_couplers_BREADY;
  assign M_AXI_rready = m12_couplers_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m12_couplers_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m12_couplers_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = m12_couplers_to_m12_couplers_WVALID;
  assign S_AXI_arready = m12_couplers_to_m12_couplers_ARREADY;
  assign S_AXI_awready = m12_couplers_to_m12_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m12_couplers_to_m12_couplers_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_m12_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_m12_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m12_couplers_to_m12_couplers_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_m12_couplers_RVALID;
  assign S_AXI_wready = m12_couplers_to_m12_couplers_WREADY;
  assign m12_couplers_to_m12_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m12_couplers_to_m12_couplers_ARREADY = M_AXI_arready;
  assign m12_couplers_to_m12_couplers_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_m12_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m12_couplers_to_m12_couplers_AWREADY = M_AXI_awready;
  assign m12_couplers_to_m12_couplers_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_m12_couplers_BREADY = S_AXI_bready;
  assign m12_couplers_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign m12_couplers_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign m12_couplers_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign m12_couplers_to_m12_couplers_RREADY = S_AXI_rready;
  assign m12_couplers_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign m12_couplers_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign m12_couplers_to_m12_couplers_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_m12_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_m12_couplers_WVALID = S_AXI_wvalid;
endmodule

module m13_couplers_imp_1BGK108
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m13_couplers_to_m13_couplers_ARADDR;
  wire m13_couplers_to_m13_couplers_ARREADY;
  wire m13_couplers_to_m13_couplers_ARVALID;
  wire [39:0]m13_couplers_to_m13_couplers_AWADDR;
  wire m13_couplers_to_m13_couplers_AWREADY;
  wire m13_couplers_to_m13_couplers_AWVALID;
  wire m13_couplers_to_m13_couplers_BREADY;
  wire [1:0]m13_couplers_to_m13_couplers_BRESP;
  wire m13_couplers_to_m13_couplers_BVALID;
  wire [31:0]m13_couplers_to_m13_couplers_RDATA;
  wire m13_couplers_to_m13_couplers_RREADY;
  wire [1:0]m13_couplers_to_m13_couplers_RRESP;
  wire m13_couplers_to_m13_couplers_RVALID;
  wire [31:0]m13_couplers_to_m13_couplers_WDATA;
  wire m13_couplers_to_m13_couplers_WREADY;
  wire [3:0]m13_couplers_to_m13_couplers_WSTRB;
  wire m13_couplers_to_m13_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m13_couplers_to_m13_couplers_ARADDR;
  assign M_AXI_arvalid = m13_couplers_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m13_couplers_to_m13_couplers_AWADDR;
  assign M_AXI_awvalid = m13_couplers_to_m13_couplers_AWVALID;
  assign M_AXI_bready = m13_couplers_to_m13_couplers_BREADY;
  assign M_AXI_rready = m13_couplers_to_m13_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m13_couplers_to_m13_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m13_couplers_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = m13_couplers_to_m13_couplers_WVALID;
  assign S_AXI_arready = m13_couplers_to_m13_couplers_ARREADY;
  assign S_AXI_awready = m13_couplers_to_m13_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m13_couplers_to_m13_couplers_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_m13_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m13_couplers_to_m13_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m13_couplers_to_m13_couplers_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_m13_couplers_RVALID;
  assign S_AXI_wready = m13_couplers_to_m13_couplers_WREADY;
  assign m13_couplers_to_m13_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m13_couplers_to_m13_couplers_ARREADY = M_AXI_arready;
  assign m13_couplers_to_m13_couplers_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_m13_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m13_couplers_to_m13_couplers_AWREADY = M_AXI_awready;
  assign m13_couplers_to_m13_couplers_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_m13_couplers_BREADY = S_AXI_bready;
  assign m13_couplers_to_m13_couplers_BRESP = M_AXI_bresp[1:0];
  assign m13_couplers_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign m13_couplers_to_m13_couplers_RDATA = M_AXI_rdata[31:0];
  assign m13_couplers_to_m13_couplers_RREADY = S_AXI_rready;
  assign m13_couplers_to_m13_couplers_RRESP = M_AXI_rresp[1:0];
  assign m13_couplers_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign m13_couplers_to_m13_couplers_WDATA = S_AXI_wdata[31:0];
  assign m13_couplers_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_m13_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m13_couplers_to_m13_couplers_WVALID = S_AXI_wvalid;
endmodule

module m14_couplers_imp_DBZAWY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m14_couplers_to_m14_couplers_ARADDR;
  wire m14_couplers_to_m14_couplers_ARREADY;
  wire m14_couplers_to_m14_couplers_ARVALID;
  wire [39:0]m14_couplers_to_m14_couplers_AWADDR;
  wire m14_couplers_to_m14_couplers_AWREADY;
  wire m14_couplers_to_m14_couplers_AWVALID;
  wire m14_couplers_to_m14_couplers_BREADY;
  wire [1:0]m14_couplers_to_m14_couplers_BRESP;
  wire m14_couplers_to_m14_couplers_BVALID;
  wire [31:0]m14_couplers_to_m14_couplers_RDATA;
  wire m14_couplers_to_m14_couplers_RREADY;
  wire [1:0]m14_couplers_to_m14_couplers_RRESP;
  wire m14_couplers_to_m14_couplers_RVALID;
  wire [31:0]m14_couplers_to_m14_couplers_WDATA;
  wire m14_couplers_to_m14_couplers_WREADY;
  wire [3:0]m14_couplers_to_m14_couplers_WSTRB;
  wire m14_couplers_to_m14_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m14_couplers_to_m14_couplers_ARADDR;
  assign M_AXI_arvalid = m14_couplers_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m14_couplers_to_m14_couplers_AWADDR;
  assign M_AXI_awvalid = m14_couplers_to_m14_couplers_AWVALID;
  assign M_AXI_bready = m14_couplers_to_m14_couplers_BREADY;
  assign M_AXI_rready = m14_couplers_to_m14_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m14_couplers_to_m14_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m14_couplers_to_m14_couplers_WSTRB;
  assign M_AXI_wvalid = m14_couplers_to_m14_couplers_WVALID;
  assign S_AXI_arready = m14_couplers_to_m14_couplers_ARREADY;
  assign S_AXI_awready = m14_couplers_to_m14_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m14_couplers_to_m14_couplers_BRESP;
  assign S_AXI_bvalid = m14_couplers_to_m14_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m14_couplers_to_m14_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m14_couplers_to_m14_couplers_RRESP;
  assign S_AXI_rvalid = m14_couplers_to_m14_couplers_RVALID;
  assign S_AXI_wready = m14_couplers_to_m14_couplers_WREADY;
  assign m14_couplers_to_m14_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m14_couplers_to_m14_couplers_ARREADY = M_AXI_arready;
  assign m14_couplers_to_m14_couplers_ARVALID = S_AXI_arvalid;
  assign m14_couplers_to_m14_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m14_couplers_to_m14_couplers_AWREADY = M_AXI_awready;
  assign m14_couplers_to_m14_couplers_AWVALID = S_AXI_awvalid;
  assign m14_couplers_to_m14_couplers_BREADY = S_AXI_bready;
  assign m14_couplers_to_m14_couplers_BRESP = M_AXI_bresp[1:0];
  assign m14_couplers_to_m14_couplers_BVALID = M_AXI_bvalid;
  assign m14_couplers_to_m14_couplers_RDATA = M_AXI_rdata[31:0];
  assign m14_couplers_to_m14_couplers_RREADY = S_AXI_rready;
  assign m14_couplers_to_m14_couplers_RRESP = M_AXI_rresp[1:0];
  assign m14_couplers_to_m14_couplers_RVALID = M_AXI_rvalid;
  assign m14_couplers_to_m14_couplers_WDATA = S_AXI_wdata[31:0];
  assign m14_couplers_to_m14_couplers_WREADY = M_AXI_wready;
  assign m14_couplers_to_m14_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m14_couplers_to_m14_couplers_WVALID = S_AXI_wvalid;
endmodule

module m15_couplers_imp_12A2Y22
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m15_couplers_to_m15_couplers_ARADDR;
  wire m15_couplers_to_m15_couplers_ARREADY;
  wire m15_couplers_to_m15_couplers_ARVALID;
  wire [39:0]m15_couplers_to_m15_couplers_AWADDR;
  wire m15_couplers_to_m15_couplers_AWREADY;
  wire m15_couplers_to_m15_couplers_AWVALID;
  wire m15_couplers_to_m15_couplers_BREADY;
  wire [1:0]m15_couplers_to_m15_couplers_BRESP;
  wire m15_couplers_to_m15_couplers_BVALID;
  wire [31:0]m15_couplers_to_m15_couplers_RDATA;
  wire m15_couplers_to_m15_couplers_RREADY;
  wire [1:0]m15_couplers_to_m15_couplers_RRESP;
  wire m15_couplers_to_m15_couplers_RVALID;
  wire [31:0]m15_couplers_to_m15_couplers_WDATA;
  wire m15_couplers_to_m15_couplers_WREADY;
  wire [3:0]m15_couplers_to_m15_couplers_WSTRB;
  wire m15_couplers_to_m15_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m15_couplers_to_m15_couplers_ARADDR;
  assign M_AXI_arvalid = m15_couplers_to_m15_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m15_couplers_to_m15_couplers_AWADDR;
  assign M_AXI_awvalid = m15_couplers_to_m15_couplers_AWVALID;
  assign M_AXI_bready = m15_couplers_to_m15_couplers_BREADY;
  assign M_AXI_rready = m15_couplers_to_m15_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m15_couplers_to_m15_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m15_couplers_to_m15_couplers_WSTRB;
  assign M_AXI_wvalid = m15_couplers_to_m15_couplers_WVALID;
  assign S_AXI_arready = m15_couplers_to_m15_couplers_ARREADY;
  assign S_AXI_awready = m15_couplers_to_m15_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m15_couplers_to_m15_couplers_BRESP;
  assign S_AXI_bvalid = m15_couplers_to_m15_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m15_couplers_to_m15_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m15_couplers_to_m15_couplers_RRESP;
  assign S_AXI_rvalid = m15_couplers_to_m15_couplers_RVALID;
  assign S_AXI_wready = m15_couplers_to_m15_couplers_WREADY;
  assign m15_couplers_to_m15_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m15_couplers_to_m15_couplers_ARREADY = M_AXI_arready;
  assign m15_couplers_to_m15_couplers_ARVALID = S_AXI_arvalid;
  assign m15_couplers_to_m15_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m15_couplers_to_m15_couplers_AWREADY = M_AXI_awready;
  assign m15_couplers_to_m15_couplers_AWVALID = S_AXI_awvalid;
  assign m15_couplers_to_m15_couplers_BREADY = S_AXI_bready;
  assign m15_couplers_to_m15_couplers_BRESP = M_AXI_bresp[1:0];
  assign m15_couplers_to_m15_couplers_BVALID = M_AXI_bvalid;
  assign m15_couplers_to_m15_couplers_RDATA = M_AXI_rdata[31:0];
  assign m15_couplers_to_m15_couplers_RREADY = S_AXI_rready;
  assign m15_couplers_to_m15_couplers_RRESP = M_AXI_rresp[1:0];
  assign m15_couplers_to_m15_couplers_RVALID = M_AXI_rvalid;
  assign m15_couplers_to_m15_couplers_WDATA = S_AXI_wdata[31:0];
  assign m15_couplers_to_m15_couplers_WREADY = M_AXI_wready;
  assign m15_couplers_to_m15_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m15_couplers_to_m15_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_IFI8T7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  kr260_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
