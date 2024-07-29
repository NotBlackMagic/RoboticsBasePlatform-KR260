// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    kr260_xlconcat_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module kr260_xlconcat_0_0 (
  input bit [0 : 0] In0,
  input bit [0 : 0] In1,
  input bit [0 : 0] In2,
  input bit [0 : 0] In3,
  input bit [0 : 0] In4,
  input bit [0 : 0] In5,
  input bit [0 : 0] In6,
  input bit [0 : 0] In7,
  input bit [0 : 0] In8,
  input bit [0 : 0] In9,
  input bit [0 : 0] In10,
  input bit [0 : 0] In11,
  input bit [0 : 0] In12,
  input bit [0 : 0] In13,
  input bit [0 : 0] In14,
  output bit [14 : 0] dout
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module kr260_xlconcat_0_0 (In0,In1,In2,In3,In4,In5,In6,In7,In8,In9,In10,In11,In12,In13,In14,dout)
(* integer foreign = "SystemC";
*);
  input bit [0 : 0] In0;
  input bit [0 : 0] In1;
  input bit [0 : 0] In2;
  input bit [0 : 0] In3;
  input bit [0 : 0] In4;
  input bit [0 : 0] In5;
  input bit [0 : 0] In6;
  input bit [0 : 0] In7;
  input bit [0 : 0] In8;
  input bit [0 : 0] In9;
  input bit [0 : 0] In10;
  input bit [0 : 0] In11;
  input bit [0 : 0] In12;
  input bit [0 : 0] In13;
  input bit [0 : 0] In14;
  output wire [14 : 0] dout;
endmodule
`endif
