// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Apr  7 14:34:13 2022
// Host        : AaronThinkPad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axilab_master_0_1_sim_netlist.v
// Design      : design_1_axilab_master_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilab_master_v1_0
   (axi_bready_reg,
    m00_axi_wdata,
    axi_rready_reg,
    axi_wvalid_reg,
    m00_axi_arvalid,
    m00_axi_awvalid,
    m00_axi_aresetn,
    m00_axi_aclk,
    m00_axi_bvalid,
    m00_axi_rdata,
    m00_axi_rvalid,
    m00_axi_wready,
    m00_axi_arready,
    m00_axi_awready);
  output axi_bready_reg;
  output [4:0]m00_axi_wdata;
  output axi_rready_reg;
  output axi_wvalid_reg;
  output m00_axi_arvalid;
  output m00_axi_awvalid;
  input m00_axi_aresetn;
  input m00_axi_aclk;
  input m00_axi_bvalid;
  input [1:0]m00_axi_rdata;
  input m00_axi_rvalid;
  input m00_axi_wready;
  input m00_axi_arready;
  input m00_axi_awready;

  wire axi_bready_reg;
  wire axi_rready_reg;
  wire axi_wvalid_reg;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bvalid;
  wire [1:0]m00_axi_rdata;
  wire m00_axi_rvalid;
  wire [4:0]m00_axi_wdata;
  wire m00_axi_wready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilab_master_v1_0_M00_AXI axilab_master_v1_0_M00_AXI_inst
       (.axi_bready_reg_0(axi_bready_reg),
        .axi_rready_reg_0(axi_rready_reg),
        .axi_wvalid_reg_0(axi_wvalid_reg),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilab_master_v1_0_M00_AXI
   (axi_bready_reg_0,
    m00_axi_wdata,
    axi_rready_reg_0,
    axi_wvalid_reg_0,
    m00_axi_arvalid,
    m00_axi_awvalid,
    m00_axi_aresetn,
    m00_axi_aclk,
    m00_axi_bvalid,
    m00_axi_rdata,
    m00_axi_rvalid,
    m00_axi_wready,
    m00_axi_arready,
    m00_axi_awready);
  output axi_bready_reg_0;
  output [4:0]m00_axi_wdata;
  output axi_rready_reg_0;
  output axi_wvalid_reg_0;
  output m00_axi_arvalid;
  output m00_axi_awvalid;
  input m00_axi_aresetn;
  input m00_axi_aclk;
  input m00_axi_bvalid;
  input [1:0]m00_axi_rdata;
  input m00_axi_rvalid;
  input m00_axi_wready;
  input m00_axi_arready;
  input m00_axi_awready;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire axi_arvalid_i_1_n_0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_2_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_bready_reg_0;
  wire axi_rready_i_1_n_0;
  wire axi_rready_reg_0;
  wire \axi_wdata[1]_i_1_n_0 ;
  wire \axi_wdata[3]_i_1_n_0 ;
  wire \axi_wdata[5]_i_2_n_0 ;
  wire axi_wvalid0;
  wire axi_wvalid_i_1_n_0;
  wire axi_wvalid_reg_0;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bvalid;
  wire [1:0]m00_axi_rdata;
  wire m00_axi_rvalid;
  wire [4:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [1:0]mst_exec_state__0;
  wire read_issued_i_1_n_0;
  wire read_issued_reg_n_0;
  wire [1:0]reg_rdata;
  wire \reg_rdata[0]_i_1_n_0 ;
  wire \reg_rdata[1]_i_1_n_0 ;
  wire start_single_read0;
  wire start_single_read_i_1_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write0;
  wire start_single_write_i_1_n_0;
  wire start_single_write_reg_n_0;
  wire write_issued_i_1_n_0;
  wire write_issued_reg_n_0;

  LUT6 #(
    .INIT(64'h0F70007000700070)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(axi_bready_reg_0),
        .I1(m00_axi_bvalid),
        .I2(mst_exec_state__0[0]),
        .I3(mst_exec_state__0[1]),
        .I4(m00_axi_rvalid),
        .I5(axi_rready_reg_0),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(m00_axi_aresetn),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1555)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(mst_exec_state__0[0]),
        .I1(axi_rready_reg_0),
        .I2(m00_axi_rvalid),
        .I3(mst_exec_state__0[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "btn_read:10,leds_write:01,idle:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state__0[0]),
        .R(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "btn_read:10,leds_write:01,idle:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .Q(mst_exec_state__0[1]),
        .R(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_arvalid_i_1
       (.I0(start_single_read_reg_n_0),
        .I1(m00_axi_arvalid),
        .I2(m00_axi_arready),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(m00_axi_arvalid),
        .R(axi_awvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    axi_awvalid_i_1
       (.I0(mst_exec_state__0[1]),
        .I1(mst_exec_state__0[0]),
        .I2(m00_axi_aresetn),
        .O(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_awvalid_i_2
       (.I0(start_single_write_reg_n_0),
        .I1(m00_axi_awvalid),
        .I2(m00_axi_awready),
        .O(axi_awvalid_i_2_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_2_n_0),
        .Q(m00_axi_awvalid),
        .R(axi_awvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    axi_bready_i_1
       (.I0(axi_bready_reg_0),
        .I1(m00_axi_bvalid),
        .O(axi_bready_i_1_n_0));
  FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(axi_bready_reg_0),
        .R(axi_awvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h57FF5757)) 
    axi_rready_i_1
       (.I0(m00_axi_aresetn),
        .I1(mst_exec_state__0[0]),
        .I2(mst_exec_state__0[1]),
        .I3(axi_rready_reg_0),
        .I4(m00_axi_rvalid),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_rready_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \axi_wdata[1]_i_1 
       (.I0(reg_rdata[0]),
        .I1(reg_rdata[1]),
        .O(\axi_wdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_wdata[3]_i_1 
       (.I0(reg_rdata[1]),
        .I1(reg_rdata[0]),
        .O(\axi_wdata[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_wdata[5]_i_1 
       (.I0(m00_axi_wready),
        .I1(axi_wvalid_reg_0),
        .O(axi_wvalid0));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_wdata[5]_i_2 
       (.I0(reg_rdata[0]),
        .I1(reg_rdata[1]),
        .O(\axi_wdata[5]_i_2_n_0 ));
  FDRE \axi_wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(axi_wvalid0),
        .D(\axi_wdata[1]_i_1_n_0 ),
        .Q(m00_axi_wdata[0]),
        .R(1'b0));
  FDRE \axi_wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(axi_wvalid0),
        .D(reg_rdata[1]),
        .Q(m00_axi_wdata[1]),
        .R(1'b0));
  FDRE \axi_wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(axi_wvalid0),
        .D(\axi_wdata[3]_i_1_n_0 ),
        .Q(m00_axi_wdata[2]),
        .R(1'b0));
  FDRE \axi_wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(axi_wvalid0),
        .D(reg_rdata[0]),
        .Q(m00_axi_wdata[3]),
        .R(1'b0));
  FDRE \axi_wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(axi_wvalid0),
        .D(\axi_wdata[5]_i_2_n_0 ),
        .Q(m00_axi_wdata[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_wvalid_i_1
       (.I0(start_single_write_reg_n_0),
        .I1(axi_wvalid_reg_0),
        .I2(m00_axi_wready),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(axi_wvalid_reg_0),
        .R(axi_awvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFAFFFFF15000000)) 
    read_issued_i_1
       (.I0(mst_exec_state__0[0]),
        .I1(m00_axi_rvalid),
        .I2(axi_rready_reg_0),
        .I3(start_single_read0),
        .I4(mst_exec_state__0[1]),
        .I5(read_issued_reg_n_0),
        .O(read_issued_i_1_n_0));
  FDRE read_issued_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(read_issued_i_1_n_0),
        .Q(read_issued_reg_n_0),
        .R(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \reg_rdata[0]_i_1 
       (.I0(m00_axi_rdata[0]),
        .I1(axi_rready_reg_0),
        .I2(m00_axi_rvalid),
        .I3(reg_rdata[0]),
        .O(\reg_rdata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \reg_rdata[1]_i_1 
       (.I0(m00_axi_rdata[1]),
        .I1(axi_rready_reg_0),
        .I2(m00_axi_rvalid),
        .I3(reg_rdata[1]),
        .O(\reg_rdata[1]_i_1_n_0 ));
  FDRE \reg_rdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\reg_rdata[0]_i_1_n_0 ),
        .Q(reg_rdata[0]),
        .R(1'b0));
  FDRE \reg_rdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\reg_rdata[1]_i_1_n_0 ),
        .Q(reg_rdata[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEEFFFF04440000)) 
    start_single_read_i_1
       (.I0(mst_exec_state__0[0]),
        .I1(start_single_read0),
        .I2(m00_axi_rvalid),
        .I3(axi_rready_reg_0),
        .I4(mst_exec_state__0[1]),
        .I5(start_single_read_reg_n_0),
        .O(start_single_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    start_single_read_i_2
       (.I0(read_issued_reg_n_0),
        .I1(m00_axi_arvalid),
        .I2(m00_axi_rvalid),
        .I3(start_single_read_reg_n_0),
        .O(start_single_read0));
  FDRE start_single_read_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_read_i_1_n_0),
        .Q(start_single_read_reg_n_0),
        .R(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFB00404040)) 
    start_single_write_i_1
       (.I0(mst_exec_state__0[1]),
        .I1(mst_exec_state__0[0]),
        .I2(start_single_write0),
        .I3(axi_bready_reg_0),
        .I4(m00_axi_bvalid),
        .I5(start_single_write_reg_n_0),
        .O(start_single_write_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    start_single_write_i_2
       (.I0(m00_axi_bvalid),
        .I1(axi_wvalid_reg_0),
        .I2(write_issued_reg_n_0),
        .I3(start_single_write_reg_n_0),
        .I4(m00_axi_awvalid),
        .O(start_single_write0));
  FDRE start_single_write_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_write_i_1_n_0),
        .Q(start_single_write_reg_n_0),
        .R(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBFF04440000)) 
    write_issued_i_1
       (.I0(mst_exec_state__0[1]),
        .I1(mst_exec_state__0[0]),
        .I2(m00_axi_bvalid),
        .I3(axi_bready_reg_0),
        .I4(start_single_write0),
        .I5(write_issued_reg_n_0),
        .O(write_issued_i_1_n_0));
  FDRE write_issued_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(write_issued_i_1_n_0),
        .Q(write_issued_reg_n_0),
        .R(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axilab_master_0_1,axilab_master_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axilab_master_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (m00_axi_awaddr,
    m00_axi_awprot,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_araddr,
    m00_axi_arprot,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input m00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [5:0]\^m00_axi_wdata ;
  wire m00_axi_wready;
  wire m00_axi_wvalid;

  assign m00_axi_araddr[31] = \<const0> ;
  assign m00_axi_araddr[30] = \<const1> ;
  assign m00_axi_araddr[29] = \<const0> ;
  assign m00_axi_araddr[28] = \<const0> ;
  assign m00_axi_araddr[27] = \<const0> ;
  assign m00_axi_araddr[26] = \<const0> ;
  assign m00_axi_araddr[25] = \<const0> ;
  assign m00_axi_araddr[24] = \<const0> ;
  assign m00_axi_araddr[23] = \<const0> ;
  assign m00_axi_araddr[22] = \<const0> ;
  assign m00_axi_araddr[21] = \<const0> ;
  assign m00_axi_araddr[20] = \<const0> ;
  assign m00_axi_araddr[19] = \<const0> ;
  assign m00_axi_araddr[18] = \<const0> ;
  assign m00_axi_araddr[17] = \<const0> ;
  assign m00_axi_araddr[16] = \<const0> ;
  assign m00_axi_araddr[15] = \<const0> ;
  assign m00_axi_araddr[14] = \<const0> ;
  assign m00_axi_araddr[13] = \<const0> ;
  assign m00_axi_araddr[12] = \<const0> ;
  assign m00_axi_araddr[11] = \<const0> ;
  assign m00_axi_araddr[10] = \<const0> ;
  assign m00_axi_araddr[9] = \<const0> ;
  assign m00_axi_araddr[8] = \<const0> ;
  assign m00_axi_araddr[7] = \<const0> ;
  assign m00_axi_araddr[6] = \<const0> ;
  assign m00_axi_araddr[5] = \<const0> ;
  assign m00_axi_araddr[4] = \<const0> ;
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \<const0> ;
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const1> ;
  assign m00_axi_awaddr[31] = \<const0> ;
  assign m00_axi_awaddr[30] = \<const1> ;
  assign m00_axi_awaddr[29] = \<const0> ;
  assign m00_axi_awaddr[28] = \<const0> ;
  assign m00_axi_awaddr[27] = \<const0> ;
  assign m00_axi_awaddr[26] = \<const0> ;
  assign m00_axi_awaddr[25] = \<const0> ;
  assign m00_axi_awaddr[24] = \<const0> ;
  assign m00_axi_awaddr[23] = \<const0> ;
  assign m00_axi_awaddr[22] = \<const0> ;
  assign m00_axi_awaddr[21] = \<const0> ;
  assign m00_axi_awaddr[20] = \<const0> ;
  assign m00_axi_awaddr[19] = \<const0> ;
  assign m00_axi_awaddr[18] = \<const0> ;
  assign m00_axi_awaddr[17] = \<const0> ;
  assign m00_axi_awaddr[16] = \<const1> ;
  assign m00_axi_awaddr[15] = \<const0> ;
  assign m00_axi_awaddr[14] = \<const0> ;
  assign m00_axi_awaddr[13] = \<const0> ;
  assign m00_axi_awaddr[12] = \<const0> ;
  assign m00_axi_awaddr[11] = \<const0> ;
  assign m00_axi_awaddr[10] = \<const0> ;
  assign m00_axi_awaddr[9] = \<const0> ;
  assign m00_axi_awaddr[8] = \<const0> ;
  assign m00_axi_awaddr[7] = \<const0> ;
  assign m00_axi_awaddr[6] = \<const0> ;
  assign m00_axi_awaddr[5] = \<const0> ;
  assign m00_axi_awaddr[4] = \<const0> ;
  assign m00_axi_awaddr[3] = \<const0> ;
  assign m00_axi_awaddr[2] = \<const0> ;
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_wdata[31] = \<const0> ;
  assign m00_axi_wdata[30] = \<const0> ;
  assign m00_axi_wdata[29] = \<const0> ;
  assign m00_axi_wdata[28] = \<const0> ;
  assign m00_axi_wdata[27] = \<const0> ;
  assign m00_axi_wdata[26] = \<const0> ;
  assign m00_axi_wdata[25] = \<const0> ;
  assign m00_axi_wdata[24] = \<const0> ;
  assign m00_axi_wdata[23] = \<const0> ;
  assign m00_axi_wdata[22] = \<const0> ;
  assign m00_axi_wdata[21] = \<const0> ;
  assign m00_axi_wdata[20] = \<const0> ;
  assign m00_axi_wdata[19] = \<const0> ;
  assign m00_axi_wdata[18] = \<const0> ;
  assign m00_axi_wdata[17] = \<const0> ;
  assign m00_axi_wdata[16] = \<const0> ;
  assign m00_axi_wdata[15] = \<const0> ;
  assign m00_axi_wdata[14] = \<const0> ;
  assign m00_axi_wdata[13] = \<const0> ;
  assign m00_axi_wdata[12] = \<const0> ;
  assign m00_axi_wdata[11] = \<const0> ;
  assign m00_axi_wdata[10] = \<const0> ;
  assign m00_axi_wdata[9] = \<const0> ;
  assign m00_axi_wdata[8] = \<const0> ;
  assign m00_axi_wdata[7] = \<const0> ;
  assign m00_axi_wdata[6] = \<const0> ;
  assign m00_axi_wdata[5] = \^m00_axi_wdata [5];
  assign m00_axi_wdata[4] = \^m00_axi_wdata [0];
  assign m00_axi_wdata[3:0] = \^m00_axi_wdata [3:0];
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilab_master_v1_0 U0
       (.axi_bready_reg(m00_axi_bready),
        .axi_rready_reg(m00_axi_rready),
        .axi_wvalid_reg(m00_axi_wvalid),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata[1:0]),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata({\^m00_axi_wdata [5],\^m00_axi_wdata [0],\^m00_axi_wdata [3:1]}),
        .m00_axi_wready(m00_axi_wready));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
