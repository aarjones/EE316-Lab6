## This file is a general .xdc for the Cora Z7-10 Rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## PL System Clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]

## RGB LEDs
#set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L22N_T3_AD7N_35 Sch=led0_b
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L16P_T2_35 Sch=led0_g
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; #IO_L21P_T3_DQS_AD14P_35 Sch=led0_r
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; #IO_0_35 Sch=led1_b
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L22P_T3_AD7P_35 Sch=led1_g
#set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L23N_T3_35 Sch=led1_r

## Buttons
#set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L4N_T0_35 Sch=btn[0]
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L4P_T0_35 Sch=btn[1]

## Pmod Header JA
#set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; #IO_L17P_T2_34 Sch=ja_p[1]
#set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; #IO_L17N_T2_34 Sch=ja_n[1]
#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; #IO_L7P_T1_34 Sch=ja_p[2]
#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; #IO_L7N_T1_34 Sch=ja_n[2]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; #IO_L12P_T1_MRCC_34 Sch=ja_p[3]
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; #IO_L12N_T1_MRCC_34 Sch=ja_n[3]
#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; #IO_L22P_T3_34 Sch=ja_p[4]
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; #IO_L22N_T3_34 Sch=ja_n[4]

## Pmod Header JB
#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { jb[0] }]; #IO_L8P_T1_34 Sch=jb_p[1]
#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { jb[1] }]; #IO_L8N_T1_34 Sch=jb_n[1]
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { jb[2] }]; #IO_L1P_T0_34 Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { jb[3] }]; #IO_L1N_T0_34 Sch=jb_n[2]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L18P_T2_34 Sch=jb_p[3]
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L18N_T2_34 Sch=jb_n[3]
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L4P_T0_34 Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L4N_T0_34 Sch=jb_n[4]

## Crypto SDA
#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { crypto_sda }];

## Dedicated Analog Inputs
#set_property -dict { PACKAGE_PIN K9    IOSTANDARD LVCMOS33 } [get_ports { v_p }]; #VP_0 Sch=xadc_v_p
#set_property -dict { PACKAGE_PIN L10   IOSTANDARD LVCMOS33 } [get_ports { v_n }]; #VN_0 Sch=xadc_v_n

## ChipKit Outer Analog Header - as Single-Ended Analog Inputs
## NOTE: These ports can be used as single-ended analog inputs with voltages from 0-3.3V (ChipKit analog pins A0-A5) or as digital I/O.
## WARNING: Do not use both sets of constraints at the same time!
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { vaux1_p }]; #IO_L3P_T0_DQS_AD1P_35 Sch=ck_an_p[0]
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { vaux1_n }]; #IO_L3N_T0_DQS_AD1N_35 Sch=ck_an_n[0]
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { vaux9_p }]; #IO_L5P_T0_AD9P_35 Sch=ck_an_p[1]
#set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { vaux9_n }]; #IO_L5N_T0_AD9N_35 Sch=ck_an_n[1]
#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { vaux6_p }]; #IO_L20P_T3_AD6P_35 Sch=ck_an_p[2]
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { vaux6_n }]; #IO_L20N_T3_AD6N_35 Sch=ck_an_n[2]
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { vaux15_p }]; #IO_L24P_T3_AD15P_35 Sch=ck_an_p[3]
#set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { vaux15_n }]; #IO_L24N_T3_AD15N_35 Sch=ck_an_n[3]
#set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS33 } [get_ports { vaux5_p }]; #IO_L17P_T2_AD5P_35 Sch=ck_an_p[4]
#set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVCMOS33 } [get_ports { vaux5_n }]; #IO_L17N_T2_AD5N_35 Sch=ck_an_n[4]
#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { vaux13_p }]; #IO_L18P_T2_AD13P_35 Sch=ck_an_p[5]
#set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS33 } [get_ports { vaux13_n }]; #IO_L18N_T2_AD13N_35 Sch=ck_an_n[5]
## ChipKit Outer Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using these ports as digital I/O.
#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { ck_a0 }]; #IO_L6N_T0_VREF_35 Sch=ck_a[0]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { ck_a1 }]; #IO_L10N_T1_AD11N_35 Sch=ck_a[1]
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { ck_a2 }]; #IO_L12P_T1_MRCC_35 Sch=ck_a[2]
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { ck_a3 }]; #IO_L11P_T1_SRCC_35 Sch=ck_a[3]
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { ck_a4 }]; #IO_L21N_T3_DQS_AD14N_35 Sch=ck_a[4]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { ck_a5 }]; #IO_L6P_T0_34 Sch=ck_a[5]

## ChipKit Inner Analog Header - as Differential Analog Inputs
## NOTE: These ports can be used as differential analog inputs with voltages from 0-1.0V (ChipKit analog pins A6-A11) or as digital I/O.
## WARNING: Do not use both sets of constraints at the same time!
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { vaux0_p }]; #IO_L1P_T0_AD0P_35 Sch=ad_p[0]
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { vaux0_n }]; #IO_L1N_T0_AD0N_35 Sch=ad_n[0]
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { vaux12_p }]; #IO_L15P_T2_DQS_AD12P_35 Sch=ad_p[12]
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { vaux12_n }]; #IO_L15N_T2_DQS_AD12N_35 Sch=ad_n[12]
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { vaux8_p }]; #IO_L2P_T0_AD8P_35 Sch=ad_p[8]
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { vaux8_n }]; #IO_L2N_T0_AD8N_35 Sch=ad_n[8]
## ChipKit Inner Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using the inner analog header ports as digital I/O.
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { ck_a6 }]; #IO_L1P_T0_AD0P_35 Sch=ad_p[0]
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { ck_a7 }]; #IO_L1N_T0_AD0N_35 Sch=ad_n[0]
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { ck_a8 }]; #IO_L15P_T2_DQS_AD12P_35 Sch=ad_p[12]
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { ck_a9 }]; #IO_L15N_T2_DQS_AD12N_35 Sch=ad_n[12]
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { ck_a10 }]; #IO_L2P_T0_AD8P_35 Sch=ad_p[8]
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { ck_a11 }]; #IO_L2N_T0_AD8N_35 Sch=ad_n[8]

## ChipKit Outer Digital Header
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports reset]
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { ck_io1 }]; #IO_L3N_T0_DQS_34 Sch=ck_io[1]
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { ck_io2 }]; #IO_L5P_T0_34 Sch=ck_io[2]
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { ck_io3 }]; #IO_L5N_T0_34 Sch=ck_io[3]
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ck_io4 }]; #IO_L21P_T3_DQS_34 Sch=ck_io[4]
#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { ck_io5 }]; #IO_L21N_T3_DQS_34 Sch=ck_io[5]
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ck_io6 }]; #IO_L19N_T3_VREF_34 Sch=ck_io[6]
#set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { ck_io7 }]; #IO_L6N_T0_VREF_34 Sch=ck_io[7]
#set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { ck_io8 }]; #IO_L13P_T2_MRCC_34 Sch=ck_io[8]
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { ck_io9 }]; #IO_L8N_T1_AD10N_35 Sch=ck_io[9]
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { ck_io10 }]; #IO_L11N_T1_SRCC_34 Sch=ck_io[10]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { ck_io11 }]; #IO_L12N_T1_MRCC_35 Sch=ck_io[11]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { ck_io12 }]; #IO_L14P_T2_AD4P_SRCC_35 Sch=ck_io[12]
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { ck_io13 }]; #IO_L19N_T3_VREF_35 Sch=ck_io[13]

## ChipKit Inner Digital Header
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ck_io26 }]; #IO_L19P_T3_34 Sch=ck_io[26]
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { ck_io27 }]; #IO_L2N_T0_34 Sch=ck_io[27]
#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { ck_io28 }]; #IO_L3P_T0_DQS_PUDC_B_34 Sch=ck_io[28]
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { ck_io29 }]; #IO_L10P_T1_34 Sch=ck_io[29]
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { ck_io30 }]; #IO_L9P_T1_DQS_34 Sch=ck_io[30]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { ck_io31 }]; #IO_L9N_T1_DQS_34 Sch=ck_io[31]
#set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports { ck_io32 }]; #IO_L20P_T3_34 Sch=ck_io[32]
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { ck_io33 }]; #IO_L20N_T3_34 Sch=ck_io[33]
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { ck_io34 }]; #IO_L23N_T3_34 Sch=ck_io[34]
#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { ck_io35 }]; #IO_L23P_T3_34 Sch=ck_io[35]
#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { ck_io36 }]; #IO_L8P_T1_AD10P_35 Sch=ck_io[36]
#set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { ck_io37 }]; #IO_L11N_T1_SRCC_35 Sch=ck_io[37]
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { ck_io38 }]; #IO_L13N_T2_MRCC_35 Sch=ck_io[38]
#set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { ck_io39 }]; #IO_L14N_T2_AD4N_SRCC_35 Sch=ck_io[39]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { ck_io40 }]; #IO_L16N_T2_35 Sch=ck_io[40]
#set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { ck_io41 }]; #IO_L9N_T1_DQS_AD3N_35 Sch=ck_io[41]

## ChipKit SPI
#set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { ck_miso }]; #IO_L10N_T1_34 Sch=ck_miso
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { ck_mosi }]; #IO_L2P_T0_34 Sch=ck_mosi
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { ck_sck }]; #IO_L19P_T3_35 Sch=ck_sck
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { ck_ss }]; #IO_L6P_T0_35 Sch=ck_ss

## ChipKit I2C
#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { ck_scl }]; #IO_L24N_T3_34 Sch=ck_scl
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { ck_sda }]; #IO_L24P_T3_34 Sch=ck_sda

##Misc. ChipKit signals
#set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { ck_ioa }]; #IO_L7N_T1_AD2N_35 Sch=ck_ioa

## User Digital I/O Header J1
#set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { user_dio[1] }]; #IO_L9P_T1_DQS_AD3P_35 Sch=user_dio[1]
#set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { user_dio[2] }]; #IO_L7P_T1_AD2P_35 Sch=user_dio[2]
#set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { user_dio[3] }]; #IO_L14P_T2_SRCC_34 Sch=user_dio[3]
#set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { user_dio[4] }]; #IO_L14N_T2_SRCC_34 Sch=user_dio[4]
#set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports { user_dio[5] }]; #IO_L13N_T2_MRCC_34 Sch=user_dio[5]
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { user_dio[6] }]; #IO_0_34 Sch=user_dio[6]
#set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { user_dio[7] }]; #IO_L15P_T2_DQS_34 Sch=user_dio[7]
#set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { user_dio[8] }]; #IO_25_34 Sch=user_dio[8]
#set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { user_dio[9] }]; #IO_L15N_T2_DQS_34 Sch=user_dio[9]
#set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { user_dio[10] }]; #IO_L16P_T2_34 Sch=user_dio[10]
#set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { user_dio[11] }]; #IO_L16N_T2_34 Sch=user_dio[11]
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { user_dio[12] }]; #IO_L10P_T1_AD11P_35 Sch=user_dio[12]

set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_ARVALID]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_AWVALID]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_BREADY]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_RREADY]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_WVALID]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[6]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[12]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[13]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[17]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[19]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[23]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[26]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[9]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[20]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[0]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[27]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[28]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[31]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[4]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[25]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[1]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[2]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[3]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[7]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[10]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[11]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[21]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[24]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[5]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[16]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[8]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[14]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[15]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[18]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[22]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[29]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_WDATA[30]}]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_ARREADY]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_AWREADY]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_BVALID]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_BRESP[0]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_BRESP[1]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[4]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[9]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[15]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[29]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[10]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[18]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[26]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[31]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[0]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[11]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[12]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[22]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[5]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[7]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[21]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[30]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[2]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[3]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[19]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[25]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[28]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[13]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[20]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[27]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[1]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[6]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[14]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[23]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[8]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[16]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[17]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RDATA[24]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RRESP[0]}]
set_property MARK_DEBUG true [get_nets {design_1_i/axilab_master_0_M00_AXI_RRESP[1]}]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_RVALID]
set_property MARK_DEBUG true [get_nets design_1_i/axilab_master_0_M00_AXI_WREADY]
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axilab_master_0_M00_AXI_RRESP[0]} {design_1_i/axilab_master_0_M00_AXI_RRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/axilab_master_0_M00_AXI_WDATA[0]} {design_1_i/axilab_master_0_M00_AXI_WDATA[1]} {design_1_i/axilab_master_0_M00_AXI_WDATA[2]} {design_1_i/axilab_master_0_M00_AXI_WDATA[3]} {design_1_i/axilab_master_0_M00_AXI_WDATA[4]} {design_1_i/axilab_master_0_M00_AXI_WDATA[5]} {design_1_i/axilab_master_0_M00_AXI_WDATA[6]} {design_1_i/axilab_master_0_M00_AXI_WDATA[7]} {design_1_i/axilab_master_0_M00_AXI_WDATA[8]} {design_1_i/axilab_master_0_M00_AXI_WDATA[9]} {design_1_i/axilab_master_0_M00_AXI_WDATA[10]} {design_1_i/axilab_master_0_M00_AXI_WDATA[11]} {design_1_i/axilab_master_0_M00_AXI_WDATA[12]} {design_1_i/axilab_master_0_M00_AXI_WDATA[13]} {design_1_i/axilab_master_0_M00_AXI_WDATA[14]} {design_1_i/axilab_master_0_M00_AXI_WDATA[15]} {design_1_i/axilab_master_0_M00_AXI_WDATA[16]} {design_1_i/axilab_master_0_M00_AXI_WDATA[17]} {design_1_i/axilab_master_0_M00_AXI_WDATA[18]} {design_1_i/axilab_master_0_M00_AXI_WDATA[19]} {design_1_i/axilab_master_0_M00_AXI_WDATA[20]} {design_1_i/axilab_master_0_M00_AXI_WDATA[21]} {design_1_i/axilab_master_0_M00_AXI_WDATA[22]} {design_1_i/axilab_master_0_M00_AXI_WDATA[23]} {design_1_i/axilab_master_0_M00_AXI_WDATA[24]} {design_1_i/axilab_master_0_M00_AXI_WDATA[25]} {design_1_i/axilab_master_0_M00_AXI_WDATA[26]} {design_1_i/axilab_master_0_M00_AXI_WDATA[27]} {design_1_i/axilab_master_0_M00_AXI_WDATA[28]} {design_1_i/axilab_master_0_M00_AXI_WDATA[29]} {design_1_i/axilab_master_0_M00_AXI_WDATA[30]} {design_1_i/axilab_master_0_M00_AXI_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/axilab_master_0_M00_AXI_BRESP[0]} {design_1_i/axilab_master_0_M00_AXI_BRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/axilab_master_0_M00_AXI_RDATA[0]} {design_1_i/axilab_master_0_M00_AXI_RDATA[1]} {design_1_i/axilab_master_0_M00_AXI_RDATA[2]} {design_1_i/axilab_master_0_M00_AXI_RDATA[3]} {design_1_i/axilab_master_0_M00_AXI_RDATA[4]} {design_1_i/axilab_master_0_M00_AXI_RDATA[5]} {design_1_i/axilab_master_0_M00_AXI_RDATA[6]} {design_1_i/axilab_master_0_M00_AXI_RDATA[7]} {design_1_i/axilab_master_0_M00_AXI_RDATA[8]} {design_1_i/axilab_master_0_M00_AXI_RDATA[9]} {design_1_i/axilab_master_0_M00_AXI_RDATA[10]} {design_1_i/axilab_master_0_M00_AXI_RDATA[11]} {design_1_i/axilab_master_0_M00_AXI_RDATA[12]} {design_1_i/axilab_master_0_M00_AXI_RDATA[13]} {design_1_i/axilab_master_0_M00_AXI_RDATA[14]} {design_1_i/axilab_master_0_M00_AXI_RDATA[15]} {design_1_i/axilab_master_0_M00_AXI_RDATA[16]} {design_1_i/axilab_master_0_M00_AXI_RDATA[17]} {design_1_i/axilab_master_0_M00_AXI_RDATA[18]} {design_1_i/axilab_master_0_M00_AXI_RDATA[19]} {design_1_i/axilab_master_0_M00_AXI_RDATA[20]} {design_1_i/axilab_master_0_M00_AXI_RDATA[21]} {design_1_i/axilab_master_0_M00_AXI_RDATA[22]} {design_1_i/axilab_master_0_M00_AXI_RDATA[23]} {design_1_i/axilab_master_0_M00_AXI_RDATA[24]} {design_1_i/axilab_master_0_M00_AXI_RDATA[25]} {design_1_i/axilab_master_0_M00_AXI_RDATA[26]} {design_1_i/axilab_master_0_M00_AXI_RDATA[27]} {design_1_i/axilab_master_0_M00_AXI_RDATA[28]} {design_1_i/axilab_master_0_M00_AXI_RDATA[29]} {design_1_i/axilab_master_0_M00_AXI_RDATA[30]} {design_1_i/axilab_master_0_M00_AXI_RDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list design_1_i/axilab_master_0_M00_AXI_ARREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list design_1_i/axilab_master_0_M00_AXI_ARVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list design_1_i/axilab_master_0_M00_AXI_AWREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/axilab_master_0_M00_AXI_AWVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list design_1_i/axilab_master_0_M00_AXI_BREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list design_1_i/axilab_master_0_M00_AXI_BVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list design_1_i/axilab_master_0_M00_AXI_RREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list design_1_i/axilab_master_0_M00_AXI_RVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list design_1_i/axilab_master_0_M00_AXI_WREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list design_1_i/axilab_master_0_M00_AXI_WVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]
