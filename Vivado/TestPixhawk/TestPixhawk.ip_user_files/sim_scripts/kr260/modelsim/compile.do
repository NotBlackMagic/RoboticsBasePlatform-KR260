vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_16
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_16
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_14
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_18
vlib modelsim_lib/msim/generic_baseblocks_v2_1_1
vlib modelsim_lib/msim/axi_register_slice_v2_1_30
vlib modelsim_lib/msim/fifo_generator_v13_2_9
vlib modelsim_lib/msim/axi_data_fifo_v2_1_29
vlib modelsim_lib/msim/axi_crossbar_v2_1_31
vlib modelsim_lib/msim/xlslice_v1_0_3
vlib modelsim_lib/msim/xlconcat_v2_1_5
vlib modelsim_lib/msim/lib_pkg_v1_0_3
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_3
vlib modelsim_lib/msim/axi_uartlite_v2_0_34
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_iic_v2_1_6
vlib modelsim_lib/msim/axi_gpio_v2_0_32
vlib modelsim_lib/msim/axi_timer_v2_0_32
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_30

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_16 modelsim_lib/msim/axi_vip_v1_1_16
vmap zynq_ultra_ps_e_vip_v1_0_16 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_16
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 modelsim_lib/msim/proc_sys_reset_v5_0_14
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_18 modelsim_lib/msim/axi_intc_v4_1_18
vmap generic_baseblocks_v2_1_1 modelsim_lib/msim/generic_baseblocks_v2_1_1
vmap axi_register_slice_v2_1_30 modelsim_lib/msim/axi_register_slice_v2_1_30
vmap fifo_generator_v13_2_9 modelsim_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_29 modelsim_lib/msim/axi_data_fifo_v2_1_29
vmap axi_crossbar_v2_1_31 modelsim_lib/msim/axi_crossbar_v2_1_31
vmap xlslice_v1_0_3 modelsim_lib/msim/xlslice_v1_0_3
vmap xlconcat_v2_1_5 modelsim_lib/msim/xlconcat_v2_1_5
vmap lib_pkg_v1_0_3 modelsim_lib/msim/lib_pkg_v1_0_3
vmap lib_srl_fifo_v1_0_3 modelsim_lib/msim/lib_srl_fifo_v1_0_3
vmap axi_uartlite_v2_0_34 modelsim_lib/msim/axi_uartlite_v2_0_34
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_iic_v2_1_6 modelsim_lib/msim/axi_iic_v2_1_6
vmap axi_gpio_v2_0_32 modelsim_lib/msim/axi_gpio_v2_0_32
vmap axi_timer_v2_0_32 modelsim_lib/msim/axi_timer_v2_0_32
vmap axi_protocol_converter_v2_1_30 modelsim_lib/msim/axi_protocol_converter_v2_1_30

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_16 -L zynq_ultra_ps_e_vip_v1_0_16 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_16 -L zynq_ultra_ps_e_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_16 -64 -incr -mfcu  -sv -L axi_vip_v1_1_16 -L zynq_ultra_ps_e_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/fd36/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_16 -64 -incr -mfcu  -sv -L axi_vip_v1_1_16 -L zynq_ultra_ps_e_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/kr260/ip/kr260_zynq_ultra_ps_e_0_0/sim/kr260_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/kr260/ip/kr260_clk_wiz_0_0/kr260_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/kr260/ip/kr260_clk_wiz_0_0/kr260_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kr260/ip/kr260_proc_sys_reset_0_0/sim/kr260_proc_sys_reset_0_0.vhd" \
"../../../bd/kr260/ip/kr260_proc_sys_reset_1_0/sim/kr260_proc_sys_reset_1_0.vhd" \
"../../../bd/kr260/ip/kr260_proc_sys_reset_2_0/sim/kr260_proc_sys_reset_2_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_18 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/d764/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kr260/ip/kr260_axi_intc_0_0/sim/kr260_axi_intc_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_1 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/85f1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_29 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/7964/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ba70/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/kr260/ip/kr260_xbar_0/sim/kr260_xbar_0.v" \

vlog -work xlslice_v1_0_3 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/kr260/ip/kr260_xlslice_0_0/sim/kr260_xlslice_0_0.v" \

vlog -work xlconcat_v2_1_5 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/kr260/ip/kr260_xlconcat_0_0/sim/kr260_xlconcat_0_0.v" \

vcom -work lib_pkg_v1_0_3 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_3 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/02c4/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_34 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/302d/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kr260/ip/kr260_axi_uartlite_0_0/sim/kr260_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_6 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/9ead/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kr260/ip/kr260_axi_iic_0_0/sim/kr260_axi_iic_0_0.vhd" \

vcom -work axi_gpio_v2_0_32 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/32ee/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kr260/ip/kr260_axi_gpio_0_0/sim/kr260_axi_gpio_0_0.vhd" \

vcom -work axi_timer_v2_0_32 -64 -93  \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/6551/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kr260/ip/kr260_axi_timer_0_0/sim/kr260_axi_timer_0_0.vhd" \
"../../../bd/kr260/ip/kr260_axi_timer_1_0/sim/kr260_axi_timer_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/kr260/sim/kr260.v" \

vlog -work axi_protocol_converter_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../TestIO.gen/sources_1/bd/kr260/ipshared/3956/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/ec67/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/f261/hdl" "+incdir+../../../../TestIO.gen/sources_1/bd/kr260/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/kr260/ip/kr260_auto_pc_0/sim/kr260_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

