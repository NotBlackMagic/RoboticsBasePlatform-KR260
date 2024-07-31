set(DDR psu_ddr_0)
set(psu_ddr_0 "0x100000;0x7fefffff")
set(psu_ocm_0 "0xfffc0000;0x40000")
set(TOTAL_MEM_CONTROLLERS "psu_ddr_0;psu_ocm_0")
set(MEMORY_SECTION "MEMORY
{
	psu_r5_0_atcm_MEM_0 : ORIGIN = 0x0, LENGTH = 0x10000
	psu_r5_0_btcm_MEM_0 : ORIGIN = 0x20000, LENGTH = 0x10000
	psu_r5_tcm_ram_0_MEM_0 : ORIGIN = 0x0, LENGTH = 0x40000
	psu_ddr_0 : ORIGIN = 0x100000, LENGTH = 0x7fefffff
	psu_ocm_0 : ORIGIN = 0xfffc0000, LENGTH = 0x40000
}")
set(STACK_SIZE 0x2000)
set(HEAP_SIZE 0x2000)
