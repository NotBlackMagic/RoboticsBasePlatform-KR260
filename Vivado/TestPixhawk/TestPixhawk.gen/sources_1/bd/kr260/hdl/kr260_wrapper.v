//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Sat Jul 20 16:04:12 2024
//Host        : NotBlackMagic-Dekstop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target kr260_wrapper.bd
//Design      : kr260_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module kr260_wrapper
   (ENC_CAP0,
    GPIO0_tri_io,
    GPS0_I2C_scl_io,
    GPS0_I2C_sda_io,
    GPS0_UART_rxd,
    GPS0_UART_txd,
    I2C0_scl_io,
    I2C0_sda_io,
    IMU0_I2C_scl_io,
    IMU0_I2C_sda_io,
    IMU1_I2C_scl_io,
    IMU1_I2C_sda_io,
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
  inout [31:0]GPIO0_tri_io;
  inout GPS0_I2C_scl_io;
  inout GPS0_I2C_sda_io;
  input GPS0_UART_rxd;
  output GPS0_UART_txd;
  inout I2C0_scl_io;
  inout I2C0_sda_io;
  inout IMU0_I2C_scl_io;
  inout IMU0_I2C_sda_io;
  inout IMU1_I2C_scl_io;
  inout IMU1_I2C_sda_io;
  output RC_PWM0;
  output RC_PWM1;
  output RC_PWM2;
  output RC_PWM3;
  input RC_SBUS0_rxd;
  output RC_SBUS0_txd;
  input TELEM0_rxd;
  output TELEM0_txd;
  input TELEM1_rxd;
  output TELEM1_txd;
  input UART0_rxd;
  output UART0_txd;
  output [0:0]fan_en_b;

  wire ENC_CAP0;
  wire [0:0]GPIO0_tri_i_0;
  wire [1:1]GPIO0_tri_i_1;
  wire [10:10]GPIO0_tri_i_10;
  wire [11:11]GPIO0_tri_i_11;
  wire [12:12]GPIO0_tri_i_12;
  wire [13:13]GPIO0_tri_i_13;
  wire [14:14]GPIO0_tri_i_14;
  wire [15:15]GPIO0_tri_i_15;
  wire [16:16]GPIO0_tri_i_16;
  wire [17:17]GPIO0_tri_i_17;
  wire [18:18]GPIO0_tri_i_18;
  wire [19:19]GPIO0_tri_i_19;
  wire [2:2]GPIO0_tri_i_2;
  wire [20:20]GPIO0_tri_i_20;
  wire [21:21]GPIO0_tri_i_21;
  wire [22:22]GPIO0_tri_i_22;
  wire [23:23]GPIO0_tri_i_23;
  wire [24:24]GPIO0_tri_i_24;
  wire [25:25]GPIO0_tri_i_25;
  wire [26:26]GPIO0_tri_i_26;
  wire [27:27]GPIO0_tri_i_27;
  wire [28:28]GPIO0_tri_i_28;
  wire [29:29]GPIO0_tri_i_29;
  wire [3:3]GPIO0_tri_i_3;
  wire [30:30]GPIO0_tri_i_30;
  wire [31:31]GPIO0_tri_i_31;
  wire [4:4]GPIO0_tri_i_4;
  wire [5:5]GPIO0_tri_i_5;
  wire [6:6]GPIO0_tri_i_6;
  wire [7:7]GPIO0_tri_i_7;
  wire [8:8]GPIO0_tri_i_8;
  wire [9:9]GPIO0_tri_i_9;
  wire [0:0]GPIO0_tri_io_0;
  wire [1:1]GPIO0_tri_io_1;
  wire [10:10]GPIO0_tri_io_10;
  wire [11:11]GPIO0_tri_io_11;
  wire [12:12]GPIO0_tri_io_12;
  wire [13:13]GPIO0_tri_io_13;
  wire [14:14]GPIO0_tri_io_14;
  wire [15:15]GPIO0_tri_io_15;
  wire [16:16]GPIO0_tri_io_16;
  wire [17:17]GPIO0_tri_io_17;
  wire [18:18]GPIO0_tri_io_18;
  wire [19:19]GPIO0_tri_io_19;
  wire [2:2]GPIO0_tri_io_2;
  wire [20:20]GPIO0_tri_io_20;
  wire [21:21]GPIO0_tri_io_21;
  wire [22:22]GPIO0_tri_io_22;
  wire [23:23]GPIO0_tri_io_23;
  wire [24:24]GPIO0_tri_io_24;
  wire [25:25]GPIO0_tri_io_25;
  wire [26:26]GPIO0_tri_io_26;
  wire [27:27]GPIO0_tri_io_27;
  wire [28:28]GPIO0_tri_io_28;
  wire [29:29]GPIO0_tri_io_29;
  wire [3:3]GPIO0_tri_io_3;
  wire [30:30]GPIO0_tri_io_30;
  wire [31:31]GPIO0_tri_io_31;
  wire [4:4]GPIO0_tri_io_4;
  wire [5:5]GPIO0_tri_io_5;
  wire [6:6]GPIO0_tri_io_6;
  wire [7:7]GPIO0_tri_io_7;
  wire [8:8]GPIO0_tri_io_8;
  wire [9:9]GPIO0_tri_io_9;
  wire [0:0]GPIO0_tri_o_0;
  wire [1:1]GPIO0_tri_o_1;
  wire [10:10]GPIO0_tri_o_10;
  wire [11:11]GPIO0_tri_o_11;
  wire [12:12]GPIO0_tri_o_12;
  wire [13:13]GPIO0_tri_o_13;
  wire [14:14]GPIO0_tri_o_14;
  wire [15:15]GPIO0_tri_o_15;
  wire [16:16]GPIO0_tri_o_16;
  wire [17:17]GPIO0_tri_o_17;
  wire [18:18]GPIO0_tri_o_18;
  wire [19:19]GPIO0_tri_o_19;
  wire [2:2]GPIO0_tri_o_2;
  wire [20:20]GPIO0_tri_o_20;
  wire [21:21]GPIO0_tri_o_21;
  wire [22:22]GPIO0_tri_o_22;
  wire [23:23]GPIO0_tri_o_23;
  wire [24:24]GPIO0_tri_o_24;
  wire [25:25]GPIO0_tri_o_25;
  wire [26:26]GPIO0_tri_o_26;
  wire [27:27]GPIO0_tri_o_27;
  wire [28:28]GPIO0_tri_o_28;
  wire [29:29]GPIO0_tri_o_29;
  wire [3:3]GPIO0_tri_o_3;
  wire [30:30]GPIO0_tri_o_30;
  wire [31:31]GPIO0_tri_o_31;
  wire [4:4]GPIO0_tri_o_4;
  wire [5:5]GPIO0_tri_o_5;
  wire [6:6]GPIO0_tri_o_6;
  wire [7:7]GPIO0_tri_o_7;
  wire [8:8]GPIO0_tri_o_8;
  wire [9:9]GPIO0_tri_o_9;
  wire [0:0]GPIO0_tri_t_0;
  wire [1:1]GPIO0_tri_t_1;
  wire [10:10]GPIO0_tri_t_10;
  wire [11:11]GPIO0_tri_t_11;
  wire [12:12]GPIO0_tri_t_12;
  wire [13:13]GPIO0_tri_t_13;
  wire [14:14]GPIO0_tri_t_14;
  wire [15:15]GPIO0_tri_t_15;
  wire [16:16]GPIO0_tri_t_16;
  wire [17:17]GPIO0_tri_t_17;
  wire [18:18]GPIO0_tri_t_18;
  wire [19:19]GPIO0_tri_t_19;
  wire [2:2]GPIO0_tri_t_2;
  wire [20:20]GPIO0_tri_t_20;
  wire [21:21]GPIO0_tri_t_21;
  wire [22:22]GPIO0_tri_t_22;
  wire [23:23]GPIO0_tri_t_23;
  wire [24:24]GPIO0_tri_t_24;
  wire [25:25]GPIO0_tri_t_25;
  wire [26:26]GPIO0_tri_t_26;
  wire [27:27]GPIO0_tri_t_27;
  wire [28:28]GPIO0_tri_t_28;
  wire [29:29]GPIO0_tri_t_29;
  wire [3:3]GPIO0_tri_t_3;
  wire [30:30]GPIO0_tri_t_30;
  wire [31:31]GPIO0_tri_t_31;
  wire [4:4]GPIO0_tri_t_4;
  wire [5:5]GPIO0_tri_t_5;
  wire [6:6]GPIO0_tri_t_6;
  wire [7:7]GPIO0_tri_t_7;
  wire [8:8]GPIO0_tri_t_8;
  wire [9:9]GPIO0_tri_t_9;
  wire GPS0_I2C_scl_i;
  wire GPS0_I2C_scl_io;
  wire GPS0_I2C_scl_o;
  wire GPS0_I2C_scl_t;
  wire GPS0_I2C_sda_i;
  wire GPS0_I2C_sda_io;
  wire GPS0_I2C_sda_o;
  wire GPS0_I2C_sda_t;
  wire GPS0_UART_rxd;
  wire GPS0_UART_txd;
  wire I2C0_scl_i;
  wire I2C0_scl_io;
  wire I2C0_scl_o;
  wire I2C0_scl_t;
  wire I2C0_sda_i;
  wire I2C0_sda_io;
  wire I2C0_sda_o;
  wire I2C0_sda_t;
  wire IMU0_I2C_scl_i;
  wire IMU0_I2C_scl_io;
  wire IMU0_I2C_scl_o;
  wire IMU0_I2C_scl_t;
  wire IMU0_I2C_sda_i;
  wire IMU0_I2C_sda_io;
  wire IMU0_I2C_sda_o;
  wire IMU0_I2C_sda_t;
  wire IMU1_I2C_scl_i;
  wire IMU1_I2C_scl_io;
  wire IMU1_I2C_scl_o;
  wire IMU1_I2C_scl_t;
  wire IMU1_I2C_sda_i;
  wire IMU1_I2C_sda_io;
  wire IMU1_I2C_sda_o;
  wire IMU1_I2C_sda_t;
  wire RC_PWM0;
  wire RC_PWM1;
  wire RC_PWM2;
  wire RC_PWM3;
  wire RC_SBUS0_rxd;
  wire RC_SBUS0_txd;
  wire TELEM0_rxd;
  wire TELEM0_txd;
  wire TELEM1_rxd;
  wire TELEM1_txd;
  wire UART0_rxd;
  wire UART0_txd;
  wire [0:0]fan_en_b;

  IOBUF GPIO0_tri_iobuf_0
       (.I(GPIO0_tri_o_0),
        .IO(GPIO0_tri_io[0]),
        .O(GPIO0_tri_i_0),
        .T(GPIO0_tri_t_0));
  IOBUF GPIO0_tri_iobuf_1
       (.I(GPIO0_tri_o_1),
        .IO(GPIO0_tri_io[1]),
        .O(GPIO0_tri_i_1),
        .T(GPIO0_tri_t_1));
  IOBUF GPIO0_tri_iobuf_10
       (.I(GPIO0_tri_o_10),
        .IO(GPIO0_tri_io[10]),
        .O(GPIO0_tri_i_10),
        .T(GPIO0_tri_t_10));
  IOBUF GPIO0_tri_iobuf_11
       (.I(GPIO0_tri_o_11),
        .IO(GPIO0_tri_io[11]),
        .O(GPIO0_tri_i_11),
        .T(GPIO0_tri_t_11));
  IOBUF GPIO0_tri_iobuf_12
       (.I(GPIO0_tri_o_12),
        .IO(GPIO0_tri_io[12]),
        .O(GPIO0_tri_i_12),
        .T(GPIO0_tri_t_12));
  IOBUF GPIO0_tri_iobuf_13
       (.I(GPIO0_tri_o_13),
        .IO(GPIO0_tri_io[13]),
        .O(GPIO0_tri_i_13),
        .T(GPIO0_tri_t_13));
  IOBUF GPIO0_tri_iobuf_14
       (.I(GPIO0_tri_o_14),
        .IO(GPIO0_tri_io[14]),
        .O(GPIO0_tri_i_14),
        .T(GPIO0_tri_t_14));
  IOBUF GPIO0_tri_iobuf_15
       (.I(GPIO0_tri_o_15),
        .IO(GPIO0_tri_io[15]),
        .O(GPIO0_tri_i_15),
        .T(GPIO0_tri_t_15));
  IOBUF GPIO0_tri_iobuf_16
       (.I(GPIO0_tri_o_16),
        .IO(GPIO0_tri_io[16]),
        .O(GPIO0_tri_i_16),
        .T(GPIO0_tri_t_16));
  IOBUF GPIO0_tri_iobuf_17
       (.I(GPIO0_tri_o_17),
        .IO(GPIO0_tri_io[17]),
        .O(GPIO0_tri_i_17),
        .T(GPIO0_tri_t_17));
  IOBUF GPIO0_tri_iobuf_18
       (.I(GPIO0_tri_o_18),
        .IO(GPIO0_tri_io[18]),
        .O(GPIO0_tri_i_18),
        .T(GPIO0_tri_t_18));
  IOBUF GPIO0_tri_iobuf_19
       (.I(GPIO0_tri_o_19),
        .IO(GPIO0_tri_io[19]),
        .O(GPIO0_tri_i_19),
        .T(GPIO0_tri_t_19));
  IOBUF GPIO0_tri_iobuf_2
       (.I(GPIO0_tri_o_2),
        .IO(GPIO0_tri_io[2]),
        .O(GPIO0_tri_i_2),
        .T(GPIO0_tri_t_2));
  IOBUF GPIO0_tri_iobuf_20
       (.I(GPIO0_tri_o_20),
        .IO(GPIO0_tri_io[20]),
        .O(GPIO0_tri_i_20),
        .T(GPIO0_tri_t_20));
  IOBUF GPIO0_tri_iobuf_21
       (.I(GPIO0_tri_o_21),
        .IO(GPIO0_tri_io[21]),
        .O(GPIO0_tri_i_21),
        .T(GPIO0_tri_t_21));
  IOBUF GPIO0_tri_iobuf_22
       (.I(GPIO0_tri_o_22),
        .IO(GPIO0_tri_io[22]),
        .O(GPIO0_tri_i_22),
        .T(GPIO0_tri_t_22));
  IOBUF GPIO0_tri_iobuf_23
       (.I(GPIO0_tri_o_23),
        .IO(GPIO0_tri_io[23]),
        .O(GPIO0_tri_i_23),
        .T(GPIO0_tri_t_23));
  IOBUF GPIO0_tri_iobuf_24
       (.I(GPIO0_tri_o_24),
        .IO(GPIO0_tri_io[24]),
        .O(GPIO0_tri_i_24),
        .T(GPIO0_tri_t_24));
  IOBUF GPIO0_tri_iobuf_25
       (.I(GPIO0_tri_o_25),
        .IO(GPIO0_tri_io[25]),
        .O(GPIO0_tri_i_25),
        .T(GPIO0_tri_t_25));
  IOBUF GPIO0_tri_iobuf_26
       (.I(GPIO0_tri_o_26),
        .IO(GPIO0_tri_io[26]),
        .O(GPIO0_tri_i_26),
        .T(GPIO0_tri_t_26));
  IOBUF GPIO0_tri_iobuf_27
       (.I(GPIO0_tri_o_27),
        .IO(GPIO0_tri_io[27]),
        .O(GPIO0_tri_i_27),
        .T(GPIO0_tri_t_27));
  IOBUF GPIO0_tri_iobuf_28
       (.I(GPIO0_tri_o_28),
        .IO(GPIO0_tri_io[28]),
        .O(GPIO0_tri_i_28),
        .T(GPIO0_tri_t_28));
  IOBUF GPIO0_tri_iobuf_29
       (.I(GPIO0_tri_o_29),
        .IO(GPIO0_tri_io[29]),
        .O(GPIO0_tri_i_29),
        .T(GPIO0_tri_t_29));
  IOBUF GPIO0_tri_iobuf_3
       (.I(GPIO0_tri_o_3),
        .IO(GPIO0_tri_io[3]),
        .O(GPIO0_tri_i_3),
        .T(GPIO0_tri_t_3));
  IOBUF GPIO0_tri_iobuf_30
       (.I(GPIO0_tri_o_30),
        .IO(GPIO0_tri_io[30]),
        .O(GPIO0_tri_i_30),
        .T(GPIO0_tri_t_30));
  IOBUF GPIO0_tri_iobuf_31
       (.I(GPIO0_tri_o_31),
        .IO(GPIO0_tri_io[31]),
        .O(GPIO0_tri_i_31),
        .T(GPIO0_tri_t_31));
  IOBUF GPIO0_tri_iobuf_4
       (.I(GPIO0_tri_o_4),
        .IO(GPIO0_tri_io[4]),
        .O(GPIO0_tri_i_4),
        .T(GPIO0_tri_t_4));
  IOBUF GPIO0_tri_iobuf_5
       (.I(GPIO0_tri_o_5),
        .IO(GPIO0_tri_io[5]),
        .O(GPIO0_tri_i_5),
        .T(GPIO0_tri_t_5));
  IOBUF GPIO0_tri_iobuf_6
       (.I(GPIO0_tri_o_6),
        .IO(GPIO0_tri_io[6]),
        .O(GPIO0_tri_i_6),
        .T(GPIO0_tri_t_6));
  IOBUF GPIO0_tri_iobuf_7
       (.I(GPIO0_tri_o_7),
        .IO(GPIO0_tri_io[7]),
        .O(GPIO0_tri_i_7),
        .T(GPIO0_tri_t_7));
  IOBUF GPIO0_tri_iobuf_8
       (.I(GPIO0_tri_o_8),
        .IO(GPIO0_tri_io[8]),
        .O(GPIO0_tri_i_8),
        .T(GPIO0_tri_t_8));
  IOBUF GPIO0_tri_iobuf_9
       (.I(GPIO0_tri_o_9),
        .IO(GPIO0_tri_io[9]),
        .O(GPIO0_tri_i_9),
        .T(GPIO0_tri_t_9));
  IOBUF GPS0_I2C_scl_iobuf
       (.I(GPS0_I2C_scl_o),
        .IO(GPS0_I2C_scl_io),
        .O(GPS0_I2C_scl_i),
        .T(GPS0_I2C_scl_t));
  IOBUF GPS0_I2C_sda_iobuf
       (.I(GPS0_I2C_sda_o),
        .IO(GPS0_I2C_sda_io),
        .O(GPS0_I2C_sda_i),
        .T(GPS0_I2C_sda_t));
  IOBUF I2C0_scl_iobuf
       (.I(I2C0_scl_o),
        .IO(I2C0_scl_io),
        .O(I2C0_scl_i),
        .T(I2C0_scl_t));
  IOBUF I2C0_sda_iobuf
       (.I(I2C0_sda_o),
        .IO(I2C0_sda_io),
        .O(I2C0_sda_i),
        .T(I2C0_sda_t));
  IOBUF IMU0_I2C_scl_iobuf
       (.I(IMU0_I2C_scl_o),
        .IO(IMU0_I2C_scl_io),
        .O(IMU0_I2C_scl_i),
        .T(IMU0_I2C_scl_t));
  IOBUF IMU0_I2C_sda_iobuf
       (.I(IMU0_I2C_sda_o),
        .IO(IMU0_I2C_sda_io),
        .O(IMU0_I2C_sda_i),
        .T(IMU0_I2C_sda_t));
  IOBUF IMU1_I2C_scl_iobuf
       (.I(IMU1_I2C_scl_o),
        .IO(IMU1_I2C_scl_io),
        .O(IMU1_I2C_scl_i),
        .T(IMU1_I2C_scl_t));
  IOBUF IMU1_I2C_sda_iobuf
       (.I(IMU1_I2C_sda_o),
        .IO(IMU1_I2C_sda_io),
        .O(IMU1_I2C_sda_i),
        .T(IMU1_I2C_sda_t));
  kr260 kr260_i
       (.ENC_CAP0(ENC_CAP0),
        .GPIO0_tri_i({GPIO0_tri_i_31,GPIO0_tri_i_30,GPIO0_tri_i_29,GPIO0_tri_i_28,GPIO0_tri_i_27,GPIO0_tri_i_26,GPIO0_tri_i_25,GPIO0_tri_i_24,GPIO0_tri_i_23,GPIO0_tri_i_22,GPIO0_tri_i_21,GPIO0_tri_i_20,GPIO0_tri_i_19,GPIO0_tri_i_18,GPIO0_tri_i_17,GPIO0_tri_i_16,GPIO0_tri_i_15,GPIO0_tri_i_14,GPIO0_tri_i_13,GPIO0_tri_i_12,GPIO0_tri_i_11,GPIO0_tri_i_10,GPIO0_tri_i_9,GPIO0_tri_i_8,GPIO0_tri_i_7,GPIO0_tri_i_6,GPIO0_tri_i_5,GPIO0_tri_i_4,GPIO0_tri_i_3,GPIO0_tri_i_2,GPIO0_tri_i_1,GPIO0_tri_i_0}),
        .GPIO0_tri_o({GPIO0_tri_o_31,GPIO0_tri_o_30,GPIO0_tri_o_29,GPIO0_tri_o_28,GPIO0_tri_o_27,GPIO0_tri_o_26,GPIO0_tri_o_25,GPIO0_tri_o_24,GPIO0_tri_o_23,GPIO0_tri_o_22,GPIO0_tri_o_21,GPIO0_tri_o_20,GPIO0_tri_o_19,GPIO0_tri_o_18,GPIO0_tri_o_17,GPIO0_tri_o_16,GPIO0_tri_o_15,GPIO0_tri_o_14,GPIO0_tri_o_13,GPIO0_tri_o_12,GPIO0_tri_o_11,GPIO0_tri_o_10,GPIO0_tri_o_9,GPIO0_tri_o_8,GPIO0_tri_o_7,GPIO0_tri_o_6,GPIO0_tri_o_5,GPIO0_tri_o_4,GPIO0_tri_o_3,GPIO0_tri_o_2,GPIO0_tri_o_1,GPIO0_tri_o_0}),
        .GPIO0_tri_t({GPIO0_tri_t_31,GPIO0_tri_t_30,GPIO0_tri_t_29,GPIO0_tri_t_28,GPIO0_tri_t_27,GPIO0_tri_t_26,GPIO0_tri_t_25,GPIO0_tri_t_24,GPIO0_tri_t_23,GPIO0_tri_t_22,GPIO0_tri_t_21,GPIO0_tri_t_20,GPIO0_tri_t_19,GPIO0_tri_t_18,GPIO0_tri_t_17,GPIO0_tri_t_16,GPIO0_tri_t_15,GPIO0_tri_t_14,GPIO0_tri_t_13,GPIO0_tri_t_12,GPIO0_tri_t_11,GPIO0_tri_t_10,GPIO0_tri_t_9,GPIO0_tri_t_8,GPIO0_tri_t_7,GPIO0_tri_t_6,GPIO0_tri_t_5,GPIO0_tri_t_4,GPIO0_tri_t_3,GPIO0_tri_t_2,GPIO0_tri_t_1,GPIO0_tri_t_0}),
        .GPS0_I2C_scl_i(GPS0_I2C_scl_i),
        .GPS0_I2C_scl_o(GPS0_I2C_scl_o),
        .GPS0_I2C_scl_t(GPS0_I2C_scl_t),
        .GPS0_I2C_sda_i(GPS0_I2C_sda_i),
        .GPS0_I2C_sda_o(GPS0_I2C_sda_o),
        .GPS0_I2C_sda_t(GPS0_I2C_sda_t),
        .GPS0_UART_rxd(GPS0_UART_rxd),
        .GPS0_UART_txd(GPS0_UART_txd),
        .I2C0_scl_i(I2C0_scl_i),
        .I2C0_scl_o(I2C0_scl_o),
        .I2C0_scl_t(I2C0_scl_t),
        .I2C0_sda_i(I2C0_sda_i),
        .I2C0_sda_o(I2C0_sda_o),
        .I2C0_sda_t(I2C0_sda_t),
        .IMU0_I2C_scl_i(IMU0_I2C_scl_i),
        .IMU0_I2C_scl_o(IMU0_I2C_scl_o),
        .IMU0_I2C_scl_t(IMU0_I2C_scl_t),
        .IMU0_I2C_sda_i(IMU0_I2C_sda_i),
        .IMU0_I2C_sda_o(IMU0_I2C_sda_o),
        .IMU0_I2C_sda_t(IMU0_I2C_sda_t),
        .IMU1_I2C_scl_i(IMU1_I2C_scl_i),
        .IMU1_I2C_scl_o(IMU1_I2C_scl_o),
        .IMU1_I2C_scl_t(IMU1_I2C_scl_t),
        .IMU1_I2C_sda_i(IMU1_I2C_sda_i),
        .IMU1_I2C_sda_o(IMU1_I2C_sda_o),
        .IMU1_I2C_sda_t(IMU1_I2C_sda_t),
        .RC_PWM0(RC_PWM0),
        .RC_PWM1(RC_PWM1),
        .RC_PWM2(RC_PWM2),
        .RC_PWM3(RC_PWM3),
        .RC_SBUS0_rxd(RC_SBUS0_rxd),
        .RC_SBUS0_txd(RC_SBUS0_txd),
        .TELEM0_rxd(TELEM0_rxd),
        .TELEM0_txd(TELEM0_txd),
        .TELEM1_rxd(TELEM1_rxd),
        .TELEM1_txd(TELEM1_txd),
        .UART0_rxd(UART0_rxd),
        .UART0_txd(UART0_txd),
        .fan_en_b(fan_en_b));
endmodule
