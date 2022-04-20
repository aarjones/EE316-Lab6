-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Apr 19 15:21:36 2022
-- Host        : AaronThinkPad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_keyboard_subordinate_0_0_sim_netlist.vhdl
-- Design      : design_1_keyboard_subordinate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  port (
    CLK : out STD_LOGIC;
    clear : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  signal \^clk\ : STD_LOGIC;
  signal \counter_out[9]_i_4_n_0\ : STD_LOGIC;
  signal counter_out_reg : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \counter_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[8]\ : STD_LOGIC;
  signal counter_set : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal result_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_idle[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_out[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_out[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_out[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_out[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_out[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_out[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_out[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_out[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_out[9]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_out[9]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of result_i_1 : label is "soft_lutpair4";
begin
  CLK <= \^clk\;
\count_idle[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk\,
      O => clear
    );
\counter_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      O => plusOp(0)
    );
\counter_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      O => plusOp(1)
    );
\counter_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      O => plusOp(2)
    );
\counter_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[3]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[2]\,
      O => plusOp(3)
    );
\counter_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[3]\,
      I4 => \counter_out_reg_n_0_[4]\,
      O => plusOp(4)
    );
\counter_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[5]\,
      I1 => \counter_out_reg_n_0_[2]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[1]\,
      I4 => \counter_out_reg_n_0_[3]\,
      I5 => \counter_out_reg_n_0_[4]\,
      O => plusOp(5)
    );
\counter_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out[9]_i_4_n_0\,
      I2 => \counter_out_reg_n_0_[5]\,
      O => plusOp(6)
    );
\counter_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[7]\,
      I1 => \counter_out_reg_n_0_[5]\,
      I2 => \counter_out[9]_i_4_n_0\,
      I3 => \counter_out_reg_n_0_[6]\,
      O => plusOp(7)
    );
\counter_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[8]\,
      I1 => \counter_out_reg_n_0_[6]\,
      I2 => \counter_out[9]_i_4_n_0\,
      I3 => \counter_out_reg_n_0_[5]\,
      I4 => \counter_out_reg_n_0_[7]\,
      O => plusOp(8)
    );
\counter_out[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      O => counter_set
    );
\counter_out[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_out_reg(9),
      O => sel
    );
\counter_out[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[7]\,
      I1 => \counter_out_reg_n_0_[5]\,
      I2 => \counter_out[9]_i_4_n_0\,
      I3 => \counter_out_reg_n_0_[6]\,
      I4 => \counter_out_reg_n_0_[8]\,
      O => plusOp(9)
    );
\counter_out[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[4]\,
      I1 => \counter_out_reg_n_0_[3]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[0]\,
      I4 => \counter_out_reg_n_0_[2]\,
      O => \counter_out[9]_i_4_n_0\
    );
\counter_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(0),
      Q => \counter_out_reg_n_0_[0]\,
      R => counter_set
    );
\counter_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(1),
      Q => \counter_out_reg_n_0_[1]\,
      R => counter_set
    );
\counter_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(2),
      Q => \counter_out_reg_n_0_[2]\,
      R => counter_set
    );
\counter_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(3),
      Q => \counter_out_reg_n_0_[3]\,
      R => counter_set
    );
\counter_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(4),
      Q => \counter_out_reg_n_0_[4]\,
      R => counter_set
    );
\counter_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(5),
      Q => \counter_out_reg_n_0_[5]\,
      R => counter_set
    );
\counter_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(6),
      Q => \counter_out_reg_n_0_[6]\,
      R => counter_set
    );
\counter_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(7),
      Q => \counter_out_reg_n_0_[7]\,
      R => counter_set
    );
\counter_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(8),
      Q => \counter_out_reg_n_0_[8]\,
      R => counter_set
    );
\counter_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => plusOp(9),
      Q => counter_out_reg(9),
      R => counter_set
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => \flipflops_reg_n_0_[0]\,
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
result_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => counter_out_reg(9),
      I1 => p_0_in,
      I2 => \flipflops_reg_n_0_[0]\,
      I3 => \^clk\,
      O => result_i_1_n_0
    );
result_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => result_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 : entity is "debounce";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter_out[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter_out[9]_i_4__0_n_0\ : STD_LOGIC;
  signal counter_out_reg : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \counter_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[8]\ : STD_LOGIC;
  signal counter_set : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \result_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_out[0]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter_out[1]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter_out[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter_out[3]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter_out[4]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_out[6]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_out[7]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_out[8]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_out[9]_i_3__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_out[9]_i_4__0\ : label is "soft_lutpair7";
begin
  D(0) <= \^d\(0);
\counter_out[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      O => \plusOp__0\(0)
    );
\counter_out[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\counter_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      O => \plusOp__0\(2)
    );
\counter_out[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[3]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[2]\,
      O => \plusOp__0\(3)
    );
\counter_out[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[3]\,
      I4 => \counter_out_reg_n_0_[4]\,
      O => \plusOp__0\(4)
    );
\counter_out[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[5]\,
      I1 => \counter_out_reg_n_0_[2]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[1]\,
      I4 => \counter_out_reg_n_0_[3]\,
      I5 => \counter_out_reg_n_0_[4]\,
      O => \plusOp__0\(5)
    );
\counter_out[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out[9]_i_4__0_n_0\,
      I2 => \counter_out_reg_n_0_[5]\,
      O => \plusOp__0\(6)
    );
\counter_out[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[7]\,
      I1 => \counter_out_reg_n_0_[5]\,
      I2 => \counter_out[9]_i_4__0_n_0\,
      I3 => \counter_out_reg_n_0_[6]\,
      O => \plusOp__0\(7)
    );
\counter_out[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[8]\,
      I1 => \counter_out_reg_n_0_[6]\,
      I2 => \counter_out[9]_i_4__0_n_0\,
      I3 => \counter_out_reg_n_0_[5]\,
      I4 => \counter_out_reg_n_0_[7]\,
      O => \plusOp__0\(8)
    );
\counter_out[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      O => counter_set
    );
\counter_out[9]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_out_reg(9),
      O => \counter_out[9]_i_2__0_n_0\
    );
\counter_out[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[7]\,
      I1 => \counter_out_reg_n_0_[5]\,
      I2 => \counter_out[9]_i_4__0_n_0\,
      I3 => \counter_out_reg_n_0_[6]\,
      I4 => \counter_out_reg_n_0_[8]\,
      O => \plusOp__0\(9)
    );
\counter_out[9]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[4]\,
      I1 => \counter_out_reg_n_0_[3]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[0]\,
      I4 => \counter_out_reg_n_0_[2]\,
      O => \counter_out[9]_i_4__0_n_0\
    );
\counter_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(0),
      Q => \counter_out_reg_n_0_[0]\,
      R => counter_set
    );
\counter_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(1),
      Q => \counter_out_reg_n_0_[1]\,
      R => counter_set
    );
\counter_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(2),
      Q => \counter_out_reg_n_0_[2]\,
      R => counter_set
    );
\counter_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(3),
      Q => \counter_out_reg_n_0_[3]\,
      R => counter_set
    );
\counter_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(4),
      Q => \counter_out_reg_n_0_[4]\,
      R => counter_set
    );
\counter_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(5),
      Q => \counter_out_reg_n_0_[5]\,
      R => counter_set
    );
\counter_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(6),
      Q => \counter_out_reg_n_0_[6]\,
      R => counter_set
    );
\counter_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(7),
      Q => \counter_out_reg_n_0_[7]\,
      R => counter_set
    );
\counter_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(8),
      Q => \counter_out_reg_n_0_[8]\,
      R => counter_set
    );
\counter_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter_out[9]_i_2__0_n_0\,
      D => \plusOp__0\(9),
      Q => counter_out_reg(9),
      R => counter_set
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => \flipflops_reg_n_0_[0]\,
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\result_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => counter_out_reg(9),
      I1 => p_0_in,
      I2 => \flipflops_reg_n_0_[0]\,
      I3 => \^d\(0),
      O => \result_i_1__0_n_0\
    );
result_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \result_i_1__0_n_0\,
      Q => \^d\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard is
  port (
    new_code : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard is
  signal clear : STD_LOGIC;
  signal \count_idle[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_6_n_0\ : STD_LOGIC;
  signal count_idle_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \count_idle_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \count_idle_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal debounce_ps2_data_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal ps2_code_new0 : STD_LOGIC;
  signal ps2_code_new_i_2_n_0 : STD_LOGIC;
  signal ps2_code_new_i_3_n_0 : STD_LOGIC;
  signal \ps2_word_reg_n_0_[0]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[10]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[8]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[9]\ : STD_LOGIC;
  signal result : STD_LOGIC;
  signal sync_ffs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_idle_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_idle_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\count_idle[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \count_idle[0]_i_4_n_0\,
      I1 => \count_idle[0]_i_5_n_0\,
      I2 => count_idle_reg(1),
      I3 => count_idle_reg(9),
      I4 => count_idle_reg(0),
      O => \count_idle[0]_i_2_n_0\
    );
\count_idle[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => count_idle_reg(12),
      I1 => count_idle_reg(2),
      I2 => count_idle_reg(4),
      I3 => count_idle_reg(7),
      I4 => count_idle_reg(11),
      I5 => count_idle_reg(6),
      O => \count_idle[0]_i_4_n_0\
    );
\count_idle[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => count_idle_reg(5),
      I1 => count_idle_reg(8),
      I2 => count_idle_reg(10),
      I3 => count_idle_reg(3),
      O => \count_idle[0]_i_5_n_0\
    );
\count_idle[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_idle_reg(0),
      O => \count_idle[0]_i_6_n_0\
    );
\count_idle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_7\,
      Q => count_idle_reg(0),
      R => clear
    );
\count_idle_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_idle_reg[0]_i_3_n_0\,
      CO(2) => \count_idle_reg[0]_i_3_n_1\,
      CO(1) => \count_idle_reg[0]_i_3_n_2\,
      CO(0) => \count_idle_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_idle_reg[0]_i_3_n_4\,
      O(2) => \count_idle_reg[0]_i_3_n_5\,
      O(1) => \count_idle_reg[0]_i_3_n_6\,
      O(0) => \count_idle_reg[0]_i_3_n_7\,
      S(3 downto 1) => count_idle_reg(3 downto 1),
      S(0) => \count_idle[0]_i_6_n_0\
    );
\count_idle_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_5\,
      Q => count_idle_reg(10),
      R => clear
    );
\count_idle_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_4\,
      Q => count_idle_reg(11),
      R => clear
    );
\count_idle_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[12]_i_1_n_7\,
      Q => count_idle_reg(12),
      R => clear
    );
\count_idle_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_idle_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_idle_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_idle_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_idle_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => count_idle_reg(12)
    );
\count_idle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_6\,
      Q => count_idle_reg(1),
      R => clear
    );
\count_idle_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_5\,
      Q => count_idle_reg(2),
      R => clear
    );
\count_idle_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_4\,
      Q => count_idle_reg(3),
      R => clear
    );
\count_idle_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_7\,
      Q => count_idle_reg(4),
      R => clear
    );
\count_idle_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_idle_reg[0]_i_3_n_0\,
      CO(3) => \count_idle_reg[4]_i_1_n_0\,
      CO(2) => \count_idle_reg[4]_i_1_n_1\,
      CO(1) => \count_idle_reg[4]_i_1_n_2\,
      CO(0) => \count_idle_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_idle_reg[4]_i_1_n_4\,
      O(2) => \count_idle_reg[4]_i_1_n_5\,
      O(1) => \count_idle_reg[4]_i_1_n_6\,
      O(0) => \count_idle_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_idle_reg(7 downto 4)
    );
\count_idle_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_6\,
      Q => count_idle_reg(5),
      R => clear
    );
\count_idle_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_5\,
      Q => count_idle_reg(6),
      R => clear
    );
\count_idle_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_4\,
      Q => count_idle_reg(7),
      R => clear
    );
\count_idle_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_7\,
      Q => count_idle_reg(8),
      R => clear
    );
\count_idle_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_idle_reg[4]_i_1_n_0\,
      CO(3) => \count_idle_reg[8]_i_1_n_0\,
      CO(2) => \count_idle_reg[8]_i_1_n_1\,
      CO(1) => \count_idle_reg[8]_i_1_n_2\,
      CO(0) => \count_idle_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_idle_reg[8]_i_1_n_4\,
      O(2) => \count_idle_reg[8]_i_1_n_5\,
      O(1) => \count_idle_reg[8]_i_1_n_6\,
      O(0) => \count_idle_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_idle_reg(11 downto 8)
    );
\count_idle_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_6\,
      Q => count_idle_reg(9),
      R => clear
    );
debounce_ps2_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce
     port map (
      CLK => result,
      Q(0) => sync_ffs(0),
      clear => clear,
      s00_axi_aclk => s00_axi_aclk
    );
debounce_ps2_data: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0
     port map (
      D(0) => debounce_ps2_data_n_0,
      Q(0) => sync_ffs(1),
      s00_axi_aclk => s00_axi_aclk
    );
ps2_code_new_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ps2_code_new_i_2_n_0,
      I1 => \ps2_word_reg_n_0_[0]\,
      I2 => \ps2_word_reg_n_0_[10]\,
      I3 => \count_idle[0]_i_2_n_0\,
      O => ps2_code_new0
    );
ps2_code_new_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \ps2_word_reg_n_0_[8]\,
      I1 => ps2_code_new_i_3_n_0,
      I2 => p_0_in,
      I3 => \ps2_word_reg_n_0_[9]\,
      I4 => p_5_in,
      I5 => p_6_in,
      O => ps2_code_new_i_2_n_0
    );
ps2_code_new_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_3_in,
      I1 => p_4_in,
      I2 => p_1_in,
      I3 => p_2_in,
      O => ps2_code_new_i_3_n_0
    );
ps2_code_new_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ps2_code_new0,
      Q => new_code,
      R => '0'
    );
\ps2_word_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_0_in,
      Q => \ps2_word_reg_n_0_[0]\,
      R => '0'
    );
\ps2_word_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => debounce_ps2_data_n_0,
      Q => \ps2_word_reg_n_0_[10]\,
      R => '0'
    );
\ps2_word_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_6_in,
      Q => p_0_in,
      R => '0'
    );
\ps2_word_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_5_in,
      Q => p_6_in,
      R => '0'
    );
\ps2_word_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_4_in,
      Q => p_5_in,
      R => '0'
    );
\ps2_word_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_3_in,
      Q => p_4_in,
      R => '0'
    );
\ps2_word_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_2_in,
      Q => p_3_in,
      R => '0'
    );
\ps2_word_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_1_in,
      Q => p_2_in,
      R => '0'
    );
\ps2_word_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[8]\,
      Q => p_1_in,
      R => '0'
    );
\ps2_word_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[9]\,
      Q => \ps2_word_reg_n_0_[8]\,
      R => '0'
    );
\ps2_word_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[10]\,
      Q => \ps2_word_reg_n_0_[9]\,
      R => '0'
    );
\sync_ffs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync_ffs(0),
      R => '0'
    );
\sync_ffs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(1),
      Q => sync_ffs(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_keyboard_subordinate_v1_0_S00_AXI is
  port (
    IRQ_O : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_keyboard_subordinate_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_keyboard_subordinate_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_wready0__0\ : STD_LOGIC;
  signal new_code : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of IRQ_O_reg : label is "LDP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of IRQ_O_reg_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_awready0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_wready0 : label is "soft_lutpair11";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
IRQ_O_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => slv_reg_rden,
      GE => '1',
      PRE => new_code,
      Q => IRQ_O
    );
IRQ_O_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
Inst_keyboard: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard
     port map (
      D(1 downto 0) => D(1 downto 0),
      new_code => new_code,
      s00_axi_aclk => s00_axi_aclk
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
axi_awready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \axi_awready0__0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awready0__0\,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \axi_wready0__0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_wready0__0\,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_keyboard_subordinate_v1_0 is
  port (
    IRQ_O : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_keyboard_subordinate_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_keyboard_subordinate_v1_0 is
begin
keyboard_subordinate_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_keyboard_subordinate_v1_0_S00_AXI
     port map (
      D(1 downto 0) => D(1 downto 0),
      IRQ_O => IRQ_O,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    IRQ_O : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_keyboard_subordinate_0_0,keyboard_subordinate_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "keyboard_subordinate_v1_0,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12) <= \<const0>\;
  s00_axi_rdata(11) <= \<const0>\;
  s00_axi_rdata(10) <= \<const0>\;
  s00_axi_rdata(9) <= \<const0>\;
  s00_axi_rdata(8) <= \<const0>\;
  s00_axi_rdata(7) <= \<const0>\;
  s00_axi_rdata(6) <= \<const0>\;
  s00_axi_rdata(5) <= \<const0>\;
  s00_axi_rdata(4) <= \<const0>\;
  s00_axi_rdata(3) <= \<const0>\;
  s00_axi_rdata(2) <= \<const0>\;
  s00_axi_rdata(1) <= \<const0>\;
  s00_axi_rdata(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_keyboard_subordinate_v1_0
     port map (
      D(1) => ps2_data,
      D(0) => ps2_clk,
      IRQ_O => IRQ_O,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
