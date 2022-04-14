vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lab6.srcs/sources_1/bd/design_1/ipshared/c923" "+incdir+../../../../Lab6.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ipshared/34d3/src/char8x12_lookup_table.vhd" \
"../../../bd/design_1/ipshared/34d3/src/scancode2ascii.vhd" \
"../../../bd/design_1/ipshared/34d3/hdl/videomemlab_master_v1_0_M00_AXI.vhd" \
"../../../bd/design_1/ipshared/34d3/hdl/videomemlab_master_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_videomemlab_master_0_0/sim/design_1_videomemlab_master_0_0.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ipshared/9c18/src/debounce.vhd" \
"../../../bd/design_1/ipshared/9c18/hdl/keyboard_subordinate_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/9c18/src/ps2_keyboard.vhd" \
"../../../bd/design_1/ipshared/9c18/hdl/keyboard_subordinate_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_keyboard_subordinate_0_0/sim/design_1_keyboard_subordinate_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Lab6.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Lab6.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/sim/design_1_rst_clk_wiz_0_100M_0.vhd" \
"../../../bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_sim_netlist.vhdl" \
"../../../bd/design_1/ipshared/e9ff/src/bram.vhd" \
"../../../bd/design_1/ipshared/e9ff/src/list_ch12_01_vga_sync.vhd" \
"../../../bd/design_1/ipshared/e9ff/hdl/vga_bram_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/e9ff/hdl/vga_bram_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_vga_bram_0_0/sim/design_1_vga_bram_0_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_50M_0/sim/design_1_rst_clk_wiz_0_50M_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
