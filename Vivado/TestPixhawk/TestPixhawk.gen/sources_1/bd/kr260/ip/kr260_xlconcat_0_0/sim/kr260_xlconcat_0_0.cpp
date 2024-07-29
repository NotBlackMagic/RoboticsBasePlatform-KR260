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


#include "kr260_xlconcat_0_0_sc.h"

#include "kr260_xlconcat_0_0.h"

#include "kr260_xlconcat_0_0_core.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
kr260_xlconcat_0_0::kr260_xlconcat_0_0(const sc_core::sc_module_name& nm) : kr260_xlconcat_0_0_sc(nm), In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), dout("dout")
{

  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->dout(dout);

}

void kr260_xlconcat_0_0::before_end_of_elaboration()
{
}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
kr260_xlconcat_0_0::kr260_xlconcat_0_0(const sc_core::sc_module_name& nm) : kr260_xlconcat_0_0_sc(nm), In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), dout("dout")
{

  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->dout(dout);

}

void kr260_xlconcat_0_0::before_end_of_elaboration()
{
}

#endif // XM_SYSTEMC




#ifdef RIVIERA
kr260_xlconcat_0_0::kr260_xlconcat_0_0(const sc_core::sc_module_name& nm) : kr260_xlconcat_0_0_sc(nm), In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), dout("dout")
{

  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->dout(dout);

}

void kr260_xlconcat_0_0::before_end_of_elaboration()
{
}

#endif // RIVIERA




#ifdef VCSSYSTEMC
kr260_xlconcat_0_0::kr260_xlconcat_0_0(const sc_core::sc_module_name& nm) : kr260_xlconcat_0_0_sc(nm),  In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), dout("dout")
{
  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->dout(dout);

  // Instantiate Socket Stubs


}

void kr260_xlconcat_0_0::before_end_of_elaboration()
{
}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
kr260_xlconcat_0_0::kr260_xlconcat_0_0(const sc_core::sc_module_name& nm) : kr260_xlconcat_0_0_sc(nm),  In0("In0"), In1("In1"), In2("In2"), In3("In3"), In4("In4"), In5("In5"), In6("In6"), In7("In7"), In8("In8"), In9("In9"), In10("In10"), In11("In11"), In12("In12"), In13("In13"), In14("In14"), dout("dout")
{
  // initialize pins
  mp_impl->In0(In0);
  mp_impl->In1(In1);
  mp_impl->In2(In2);
  mp_impl->In3(In3);
  mp_impl->In4(In4);
  mp_impl->In5(In5);
  mp_impl->In6(In6);
  mp_impl->In7(In7);
  mp_impl->In8(In8);
  mp_impl->In9(In9);
  mp_impl->In10(In10);
  mp_impl->In11(In11);
  mp_impl->In12(In12);
  mp_impl->In13(In13);
  mp_impl->In14(In14);
  mp_impl->dout(dout);

  // Instantiate Socket Stubs


}

void kr260_xlconcat_0_0::before_end_of_elaboration()
{
}

#endif // MTI_SYSTEMC




kr260_xlconcat_0_0::~kr260_xlconcat_0_0()
{
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(kr260_xlconcat_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(kr260_xlconcat_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(kr260_xlconcat_0_0);
#endif

