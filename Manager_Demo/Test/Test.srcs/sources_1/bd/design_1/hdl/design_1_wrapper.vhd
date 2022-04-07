--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Thu Apr  7 14:33:06 2022
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
    btns_2bits_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    rgb_leds_tri_o : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    btns_2bits_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rgb_leds_tri_o : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      btns_2bits_tri_i(1 downto 0) => btns_2bits_tri_i(1 downto 0),
      clk => clk,
      reset => reset,
      rgb_leds_tri_o(5 downto 0) => rgb_leds_tri_o(5 downto 0)
    );
end STRUCTURE;
