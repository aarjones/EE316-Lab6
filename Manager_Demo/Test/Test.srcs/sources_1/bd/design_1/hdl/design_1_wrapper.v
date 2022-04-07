//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Feb 26 08:58:54 2022
//Host        : cb134-x201-ak running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btns_2bits_tri_i,
    reset_rtl,
    rgb_leds_tri_o,
    sys_clock);
  input [1:0]btns_2bits_tri_i;
  input reset_rtl;
  output [5:0]rgb_leds_tri_o;
  input sys_clock;

  wire [1:0]btns_2bits_tri_i;
  wire reset_rtl;
  wire [5:0]rgb_leds_tri_o;
  wire sys_clock;

  design_1 design_1_i
       (.btns_2bits_tri_i(btns_2bits_tri_i),
        .reset_rtl(reset_rtl),
        .rgb_leds_tri_o(rgb_leds_tri_o),
        .sys_clock(sys_clock));
endmodule
