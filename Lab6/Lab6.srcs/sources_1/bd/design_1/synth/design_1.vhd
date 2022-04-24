--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Thu Apr 21 18:25:41 2022
--Host        : AaronThinkPad running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_T8KPGA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_T8KPGA;

architecture STRUCTURE of m00_couplers_imp_T8KPGA is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_118H4XN is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_118H4XN;

architecture STRUCTURE of m01_couplers_imp_118H4XN is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1422L5K is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1422L5K;

architecture STRUCTURE of s00_couplers_imp_1422L5K is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_videomemlab_master_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end design_1_videomemlab_master_0_axi_periph_0;

architecture STRUCTURE of design_1_videomemlab_master_0_axi_periph_0 is
  component design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_videomemlab_master_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_videomemlab_master_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_videomemlab_master_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_videomemlab_master_0_axi_periph_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_ACLK_net : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal videomemlab_master_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_videomemlab_master_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_videomemlab_master_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_videomemlab_master_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_videomemlab_master_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_videomemlab_master_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_videomemlab_master_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_videomemlab_master_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_videomemlab_master_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_videomemlab_master_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_videomemlab_master_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_videomemlab_master_0_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_videomemlab_master_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_videomemlab_master_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_videomemlab_master_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_videomemlab_master_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_videomemlab_master_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_videomemlab_master_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_videomemlab_master_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_videomemlab_master_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_videomemlab_master_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_videomemlab_master_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_videomemlab_master_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= videomemlab_master_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= videomemlab_master_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= videomemlab_master_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= videomemlab_master_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= videomemlab_master_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= videomemlab_master_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= videomemlab_master_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= videomemlab_master_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_videomemlab_master_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_videomemlab_master_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_videomemlab_master_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_videomemlab_master_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_videomemlab_master_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_videomemlab_master_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_videomemlab_master_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_videomemlab_master_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_videomemlab_master_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_videomemlab_master_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_videomemlab_master_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_videomemlab_master_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_videomemlab_master_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_videomemlab_master_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_videomemlab_master_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_videomemlab_master_0_axi_periph_WREADY <= M01_AXI_wready;
  videomemlab_master_0_axi_periph_ACLK_net <= ACLK;
  videomemlab_master_0_axi_periph_ARESETN_net <= ARESETN;
  videomemlab_master_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  videomemlab_master_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  videomemlab_master_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  videomemlab_master_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  videomemlab_master_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  videomemlab_master_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  videomemlab_master_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  videomemlab_master_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  videomemlab_master_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  videomemlab_master_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  videomemlab_master_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_T8KPGA
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_videomemlab_master_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_videomemlab_master_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_videomemlab_master_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_videomemlab_master_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_videomemlab_master_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_videomemlab_master_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_videomemlab_master_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_videomemlab_master_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_videomemlab_master_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_videomemlab_master_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_videomemlab_master_0_axi_periph_WVALID,
      S_ACLK => videomemlab_master_0_axi_periph_ACLK_net,
      S_ARESETN => videomemlab_master_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_118H4XN
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_videomemlab_master_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_videomemlab_master_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_videomemlab_master_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_videomemlab_master_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_videomemlab_master_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_videomemlab_master_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_videomemlab_master_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_videomemlab_master_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_videomemlab_master_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_videomemlab_master_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_videomemlab_master_0_axi_periph_WVALID,
      S_ACLK => videomemlab_master_0_axi_periph_ACLK_net,
      S_ARESETN => videomemlab_master_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_1422L5K
     port map (
      M_ACLK => videomemlab_master_0_axi_periph_ACLK_net,
      M_ARESETN => videomemlab_master_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => videomemlab_master_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arvalid => videomemlab_master_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => videomemlab_master_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awvalid => videomemlab_master_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bready => videomemlab_master_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => videomemlab_master_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => videomemlab_master_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => videomemlab_master_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => videomemlab_master_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => videomemlab_master_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => videomemlab_master_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component design_1_xbar_0
     port map (
      aclk => videomemlab_master_0_axi_periph_ACLK_net,
      aresetn => videomemlab_master_0_axi_periph_ARESETN_net,
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=2,da_clkrst_cnt=8,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_rst_clk_wiz_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_clk_wiz_0_100M_0;
  component design_1_rst_clk_wiz_0_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_clk_wiz_0_50M_0;
  component design_1_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_system_ila_0_0;
  component design_1_keyboard_subordinate_0_0 is
  port (
    I_CLK_50 : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    IRQ_O : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  end component design_1_keyboard_subordinate_0_0;
  component design_1_videomemlab_master_0_0 is
  port (
    IRQ_I : in STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC
  );
  end component design_1_videomemlab_master_0_0;
  component design_1_vga_bram_0_0 is
  port (
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    I_CLK_50 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  end component design_1_vga_bram_0_0;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal keyboard_subordinate_0_IRQ_O : STD_LOGIC;
  attribute DEBUG : string;
  attribute DEBUG of keyboard_subordinate_0_IRQ_O : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of keyboard_subordinate_0_IRQ_O : signal is std.standard.true;
  signal ps2_clk_0_1 : STD_LOGIC;
  signal ps2_data_0_1 : STD_LOGIC;
  signal reset_rtl_1 : STD_LOGIC;
  signal rst_clk_wiz_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clock_1 : STD_LOGIC;
  signal vga_bram_0_b : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_bram_0_g : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_bram_0_hsync : STD_LOGIC;
  signal vga_bram_0_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_bram_0_vsync : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal videomemlab_master_0_M00_AXI_ARREADY : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_ARVALID : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal videomemlab_master_0_M00_AXI_AWREADY : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_AWVALID : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_BREADY : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal videomemlab_master_0_M00_AXI_BVALID : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_M00_AXI_RREADY : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal videomemlab_master_0_M00_AXI_RVALID : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_M00_AXI_WREADY : STD_LOGIC;
  signal videomemlab_master_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal videomemlab_master_0_M00_AXI_WVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal videomemlab_master_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal videomemlab_master_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal videomemlab_master_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal NLW_clk_wiz_0_clk_out3_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_rtl : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_rtl : signal is "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
begin
  b_0(3 downto 0) <= vga_bram_0_b(3 downto 0);
  g_0(3 downto 0) <= vga_bram_0_g(3 downto 0);
  hsync_0 <= vga_bram_0_hsync;
  ps2_clk_0_1 <= ps2_clk_0;
  ps2_data_0_1 <= ps2_data_0;
  r_0(3 downto 0) <= vga_bram_0_r(3 downto 0);
  reset_rtl_1 <= reset_rtl;
  sys_clock_1 <= sys_clock;
  vsync_0 <= vga_bram_0_vsync;
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      clk_out3 => NLW_clk_wiz_0_clk_out3_UNCONNECTED,
      locked => clk_wiz_0_locked,
      reset => reset_rtl_1
    );
keyboard_subordinate_0: component design_1_keyboard_subordinate_0_0
     port map (
      IRQ_O => keyboard_subordinate_0_IRQ_O,
      I_CLK_50 => clk_wiz_0_clk_out2,
      ps2_clk => ps2_clk_0_1,
      ps2_data => ps2_data_0_1,
      s00_axi_aclk => clk_wiz_0_clk_out1,
      s00_axi_araddr(31 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      s00_axi_arready => videomemlab_master_0_axi_periph_M00_AXI_ARREADY,
      s00_axi_arvalid => videomemlab_master_0_axi_periph_M00_AXI_ARVALID,
      s00_axi_awaddr(31 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      s00_axi_awready => videomemlab_master_0_axi_periph_M00_AXI_AWREADY,
      s00_axi_awvalid => videomemlab_master_0_axi_periph_M00_AXI_AWVALID,
      s00_axi_bready => videomemlab_master_0_axi_periph_M00_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => videomemlab_master_0_axi_periph_M00_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s00_axi_rready => videomemlab_master_0_axi_periph_M00_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => videomemlab_master_0_axi_periph_M00_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s00_axi_wready => videomemlab_master_0_axi_periph_M00_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => videomemlab_master_0_axi_periph_M00_AXI_WVALID
    );
rst_clk_wiz_0_100M: component design_1_rst_clk_wiz_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_rtl_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
rst_clk_wiz_0_50M: component design_1_rst_clk_wiz_0_50M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_rtl_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_0_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
system_ila_0: component design_1_system_ila_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      probe0(0) => keyboard_subordinate_0_IRQ_O
    );
vga_bram_0: component design_1_vga_bram_0_0
     port map (
      I_CLK_50 => clk_wiz_0_clk_out2,
      b(3 downto 0) => vga_bram_0_b(3 downto 0),
      g(3 downto 0) => vga_bram_0_g(3 downto 0),
      hsync => vga_bram_0_hsync,
      r(3 downto 0) => vga_bram_0_r(3 downto 0),
      s00_axi_aclk => clk_wiz_0_clk_out1,
      s00_axi_araddr(31 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn => rst_clk_wiz_0_50M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => videomemlab_master_0_axi_periph_M01_AXI_ARREADY,
      s00_axi_arvalid => videomemlab_master_0_axi_periph_M01_AXI_ARVALID,
      s00_axi_awaddr(31 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => videomemlab_master_0_axi_periph_M01_AXI_AWREADY,
      s00_axi_awvalid => videomemlab_master_0_axi_periph_M01_AXI_AWVALID,
      s00_axi_bready => videomemlab_master_0_axi_periph_M01_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => videomemlab_master_0_axi_periph_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => videomemlab_master_0_axi_periph_M01_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => videomemlab_master_0_axi_periph_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => videomemlab_master_0_axi_periph_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => videomemlab_master_0_axi_periph_M01_AXI_WVALID,
      vsync => vga_bram_0_vsync
    );
videomemlab_master_0: component design_1_videomemlab_master_0_0
     port map (
      IRQ_I => keyboard_subordinate_0_IRQ_O,
      m00_axi_aclk => clk_wiz_0_clk_out1,
      m00_axi_araddr(31 downto 0) => videomemlab_master_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_aresetn => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      m00_axi_arprot(2 downto 0) => videomemlab_master_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arready => videomemlab_master_0_M00_AXI_ARREADY,
      m00_axi_arvalid => videomemlab_master_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => videomemlab_master_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awprot(2 downto 0) => videomemlab_master_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awready => videomemlab_master_0_M00_AXI_AWREADY,
      m00_axi_awvalid => videomemlab_master_0_M00_AXI_AWVALID,
      m00_axi_bready => videomemlab_master_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => videomemlab_master_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_bvalid => videomemlab_master_0_M00_AXI_BVALID,
      m00_axi_rdata(31 downto 0) => videomemlab_master_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rready => videomemlab_master_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => videomemlab_master_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_rvalid => videomemlab_master_0_M00_AXI_RVALID,
      m00_axi_wdata(31 downto 0) => videomemlab_master_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wready => videomemlab_master_0_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => videomemlab_master_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wvalid => videomemlab_master_0_M00_AXI_WVALID
    );
videomemlab_master_0_axi_periph: entity work.design_1_videomemlab_master_0_axi_periph_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => videomemlab_master_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => videomemlab_master_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => videomemlab_master_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => videomemlab_master_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => videomemlab_master_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => videomemlab_master_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => videomemlab_master_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => videomemlab_master_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => videomemlab_master_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => videomemlab_master_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => videomemlab_master_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => clk_wiz_0_clk_out1,
      M01_ARESETN => rst_clk_wiz_0_50M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arprot(2 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => videomemlab_master_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => videomemlab_master_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awprot(2 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => videomemlab_master_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => videomemlab_master_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => videomemlab_master_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => videomemlab_master_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => videomemlab_master_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => videomemlab_master_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => videomemlab_master_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => videomemlab_master_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => videomemlab_master_0_axi_periph_M01_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => videomemlab_master_0_M00_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => videomemlab_master_0_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => videomemlab_master_0_M00_AXI_ARREADY,
      S00_AXI_arvalid => videomemlab_master_0_M00_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => videomemlab_master_0_M00_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => videomemlab_master_0_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => videomemlab_master_0_M00_AXI_AWREADY,
      S00_AXI_awvalid => videomemlab_master_0_M00_AXI_AWVALID,
      S00_AXI_bready => videomemlab_master_0_M00_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => videomemlab_master_0_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => videomemlab_master_0_M00_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => videomemlab_master_0_M00_AXI_RDATA(31 downto 0),
      S00_AXI_rready => videomemlab_master_0_M00_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => videomemlab_master_0_M00_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => videomemlab_master_0_M00_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => videomemlab_master_0_M00_AXI_WDATA(31 downto 0),
      S00_AXI_wready => videomemlab_master_0_M00_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => videomemlab_master_0_M00_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => videomemlab_master_0_M00_AXI_WVALID
    );
end STRUCTURE;
