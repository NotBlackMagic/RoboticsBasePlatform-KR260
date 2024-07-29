transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_16
vlib riviera/zynq_ultra_ps_e_vip_v1_0_16
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_14
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_18
vlib riviera/generic_baseblocks_v2_1_1
vlib riviera/axi_register_slice_v2_1_30
vlib riviera/fifo_generator_v13_2_9
vlib riviera/axi_data_fifo_v2_1_29
vlib riviera/axi_crossbar_v2_1_31
vlib riviera/xlslice_v1_0_3
vlib riviera/xlconcat_v2_1_5
vlib riviera/lib_pkg_v1_0_3
vlib riviera/lib_srl_fifo_v1_0_3
vlib riviera/axi_uartlite_v2_0_34
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_iic_v2_1_6
vlib riviera/axi_gpio_v2_0_32
vlib riviera/axi_timer_v2_0_32
vlib riviera/axi_protocol_converter_v2_1_30

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_16 riviera/axi_vip_v1_1_16
vmap zynq_ultra_ps_e_vip_v1_0_16 riviera/zynq_ultra_ps_e_vip_v1_0_16
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 riviera/proc_sys_reset_v5_0_14
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_18 riviera/axi_intc_v4_1_18
vmap generic_baseblocks_v2_1_1 riviera/generic_baseblocks_v2_1_1
vmap axi_register_slice_v2_1_30 riviera/axi_register_slice_v2_1_30
vmap fifo_generator_v13_2_9 riviera/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_29 riviera/axi_data_fifo_v2_1_29
vmap axi_crossbar_v2_1_31 riviera/axi_crossbar_v2_1_31
vmap xlslice_v1_0_3 riviera/xlslice_v1_0_3
vmap xlconcat_v2_1_5 riviera/xlconcat_v2_1_5
vmap lib_pkg_v1_0_3 riviera/lib_pkg_v1_0_3
vmap lib_srl_fifo_v1_0_3 riviera/lib_srl_fifo_v1_0_3
vmap axi_uartlite_v2_0_34 riviera/axi_uartlite_v2_0_34
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_iic_v2_1_6 riviera/axi_iic_v2_1_6
vmap axi_gpio_v2_0_32 riviera/axi_gpio_v2_0_32
vmap axi_timer_v2_0_32 riviera/axi_timer_v2_0_32
vmap axi_protocol_converter_v2_1_30 riviera/axi_protocol_converter_v2_1_30

vlog -work xilinx_vip  -incr "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_16  -incr "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/fd36/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_16  -incr "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../bd/kr260/ip/kr260_zynq_ultra_ps_e_0_0/sim/kr260_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/kr260/ip/kr260_clk_wiz_0_0/kr260_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/kr260/ip/kr260_clk_wiz_0_0/kr260_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/kr260/ip/kr260_proc_sys_reset_0_0/sim/kr260_proc_sys_reset_0_0.vhd" \
"../../../bd/kr260/ip/kr260_proc_sys_reset_1_0/sim/kr260_proc_sys_reset_1_0.vhd" \
"../../../bd/kr260/ip/kr260_proc_sys_reset_2_0/sim/kr260_proc_sys_reset_2_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_18 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/d764/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/kr260/ip/kr260_axi_intc_0_0/sim/kr260_axi_intc_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_1  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_30  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/85f1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_29  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/7964/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_31  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ba70/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../bd/kr260/ip/kr260_xbar_0/sim/kr260_xbar_0.v" \

vlog -work xlslice_v1_0_3  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../bd/kr260/ip/kr260_xlslice_0_0/sim/kr260_xlslice_0_0.v" \

vlog -work xlconcat_v2_1_5  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../bd/kr260/ip/kr260_xlconcat_0_0/sim/kr260_xlconcat_0_0.v" \

vcom -work lib_pkg_v1_0_3 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_3 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/02c4/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_34 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/302d/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/kr260/ip/kr260_axi_uartlite_0_0/sim/kr260_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_6 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/9ead/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/kr260/ip/kr260_axi_iic_0_0/sim/kr260_axi_iic_0_0.vhd" \

vcom -work axi_gpio_v2_0_32 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/32ee/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/kr260/ip/kr260_axi_gpio_0_0/sim/kr260_axi_gpio_0_0.vhd" \

vcom -work axi_timer_v2_0_32 -93  -incr \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/6551/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/kr260/ip/kr260_axi_timer_0_0/sim/kr260_axi_timer_0_0.vhd" \
"../../../bd/kr260/ip/kr260_axi_timer_1_0/sim/kr260_axi_timer_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../bd/kr260/sim/kr260.v" \

vlog -work axi_protocol_converter_v2_1_30  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/3956/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_16 -l zynq_ultra_ps_e_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_18 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_30 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_29 -l axi_crossbar_v2_1_31 -l xlslice_v1_0_3 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l lib_srl_fifo_v1_0_3 -l axi_uartlite_v2_0_34 -l interrupt_control_v3_1_5 -l axi_iic_v2_1_6 -l axi_gpio_v2_0_32 -l axi_timer_v2_0_32 -l axi_protocol_converter_v2_1_30 \
"../../../bd/kr260/ip/kr260_auto_pc_0/sim/kr260_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

