--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Thu Apr 14 15:57:37 2022
--Host        : AaronThinkPad running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    b_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync_0 : out STD_LOGIC;
    ps2_clk_0 : in STD_LOGIC;
    ps2_data_0 : in STD_LOGIC;
    r_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_rtl : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    vsync_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    reset_rtl : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    ps2_clk_0 : in STD_LOGIC;
    ps2_data_0 : in STD_LOGIC;
    g_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    r_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vsync_0 : out STD_LOGIC;
    hsync_0 : out STD_LOGIC;
    b_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      b_0(3 downto 0) => b_0(3 downto 0),
      g_0(3 downto 0) => g_0(3 downto 0),
      hsync_0 => hsync_0,
      ps2_clk_0 => ps2_clk_0,
      ps2_data_0 => ps2_data_0,
      r_0(3 downto 0) => r_0(3 downto 0),
      reset_rtl => reset_rtl,
      sys_clock => sys_clock,
      vsync_0 => vsync_0
    );
end STRUCTURE;
