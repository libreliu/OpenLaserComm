// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jan 14 04:22:18 2020
// Host        : DESKTOP-AOPHFHK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/vivado/zybo/zybo.srcs/sources_1/ip/laser_sender_0/laser_sender_0_sim_netlist.v
// Design      : laser_sender_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "laser_sender_0,laser_sender_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "laser_sender_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module laser_sender_0
   (sig,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_aclk,
    s_axis_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sig DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sig, LAYERED_METADATA undef" *) output sig;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [0:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;

  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire sig;

  laser_sender_0_laser_sender_v1_0 inst
       (.s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .sig(sig));
endmodule

(* ORIG_REF_NAME = "laser_sender_v1_0" *) 
module laser_sender_0_laser_sender_v1_0
   (sig,
    s_axis_tready,
    s_axis_tdata,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_aresetn);
  output sig;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input s_axis_aclk;
  input s_axis_tvalid;
  input s_axis_aresetn;

  wire [3:0]b10;
  wire \b10[0]_i_1_n_0 ;
  wire \b10[1]_i_1_n_0 ;
  wire \b10[2]_i_1_n_0 ;
  wire \b10[3]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire [4:0]p_0_in;
  wire rd;
  wire rd_i_1_n_0;
  wire rd_i_2_n_0;
  wire rd_i_3_n_0;
  wire rd_i_4_n_0;
  wire rd_i_5_n_0;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [4:2]sel0;
  wire sig;
  wire sig_0;
  wire sig_i_11_n_0;
  wire sig_i_12_n_0;
  wire sig_i_13_n_0;
  wire sig_i_14_n_0;
  wire sig_i_15_n_0;
  wire sig_i_16_n_0;
  wire sig_i_17_n_0;
  wire sig_i_18_n_0;
  wire sig_i_2_n_0;
  wire sig_i_5_n_0;
  wire sig_i_6_n_0;
  wire sig_i_7_n_0;
  wire sig_i_8_n_0;
  wire sig_reg_i_10_n_0;
  wire sig_reg_i_3_n_0;
  wire sig_reg_i_4_n_0;
  wire sig_reg_i_9_n_0;
  wire state;
  wire state0;
  wire state_i_1_n_0;
  wire use_alt;
  wire use_alt_i_1_n_0;
  wire use_alt_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \b10[0]_i_1 
       (.I0(b10[0]),
        .O(\b10[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \b10[1]_i_1 
       (.I0(b10[3]),
        .I1(b10[2]),
        .I2(b10[0]),
        .I3(b10[1]),
        .O(\b10[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFC02)) 
    \b10[2]_i_1 
       (.I0(b10[3]),
        .I1(b10[0]),
        .I2(b10[1]),
        .I3(b10[2]),
        .O(\b10[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \b10[3]_i_1 
       (.I0(b10[3]),
        .I1(b10[1]),
        .I2(b10[0]),
        .I3(b10[2]),
        .O(\b10[3]_i_1_n_0 ));
  FDRE \b10_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\b10[0]_i_1_n_0 ),
        .Q(b10[0]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \b10_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\b10[1]_i_1_n_0 ),
        .Q(b10[1]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \b10_reg[2] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\b10[2]_i_1_n_0 ),
        .Q(b10[2]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \b10_reg[3] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\b10[3]_i_1_n_0 ),
        .Q(b10[3]),
        .R(\data[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[7]_i_1 
       (.I0(s_axis_aresetn),
        .O(\data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \data[7]_i_2 
       (.I0(b10[2]),
        .I1(b10[0]),
        .I2(s_axis_tvalid),
        .I3(b10[1]),
        .I4(b10[3]),
        .O(state0));
  FDRE \data_reg[0] 
       (.C(s_axis_aclk),
        .CE(state0),
        .D(s_axis_tdata[0]),
        .Q(p_0_in[0]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[1] 
       (.C(s_axis_aclk),
        .CE(state0),
        .D(s_axis_tdata[1]),
        .Q(p_0_in[1]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[2] 
       (.C(s_axis_aclk),
        .CE(state0),
        .D(s_axis_tdata[2]),
        .Q(p_0_in[2]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[3] 
       (.C(s_axis_aclk),
        .CE(state0),
        .D(s_axis_tdata[3]),
        .Q(p_0_in[3]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[4] 
       (.C(s_axis_aclk),
        .CE(state0),
        .D(s_axis_tdata[4]),
        .Q(p_0_in[4]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[5] 
       (.C(s_axis_aclk),
        .CE(state0),
        .D(s_axis_tdata[5]),
        .Q(sel0[2]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[6] 
       (.C(s_axis_aclk),
        .CE(state0),
        .D(s_axis_tdata[6]),
        .Q(sel0[3]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[7] 
       (.C(s_axis_aclk),
        .CE(state0),
        .D(s_axis_tdata[7]),
        .Q(sel0[4]),
        .R(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    rd_i_1
       (.I0(rd_i_2_n_0),
        .I1(b10[2]),
        .I2(rd_i_3_n_0),
        .I3(rd_i_4_n_0),
        .I4(b10[3]),
        .I5(rd),
        .O(rd_i_1_n_0));
  LUT3 #(
    .INIT(8'h8B)) 
    rd_i_2
       (.I0(rd_i_5_n_0),
        .I1(state),
        .I2(rd),
        .O(rd_i_2_n_0));
  LUT5 #(
    .INIT(32'h7CFF8300)) 
    rd_i_3
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(state),
        .I4(rd),
        .O(rd_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rd_i_4
       (.I0(b10[0]),
        .I1(b10[1]),
        .O(rd_i_4_n_0));
  LUT6 #(
    .INIT(64'h177E7EE0E881811F)) 
    rd_i_5
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(rd),
        .O(rd_i_5_n_0));
  FDRE rd_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(rd_i_1_n_0),
        .Q(rd),
        .R(\data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    s_axis_tready_INST_0
       (.I0(b10[2]),
        .I1(b10[0]),
        .I2(b10[1]),
        .I3(b10[3]),
        .O(s_axis_tready));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    sig_i_1
       (.I0(sig_i_2_n_0),
        .I1(b10[3]),
        .I2(sig_reg_i_3_n_0),
        .I3(b10[2]),
        .I4(sig_reg_i_4_n_0),
        .O(sig_0));
  LUT6 #(
    .INIT(64'h122BEAAA2BB4AAAB)) 
    sig_i_11
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(p_0_in[4]),
        .I4(rd),
        .I5(p_0_in[3]),
        .O(sig_i_11_n_0));
  LUT6 #(
    .INIT(64'h39969660C117177F)) 
    sig_i_12
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(rd),
        .O(sig_i_12_n_0));
  LUT6 #(
    .INIT(64'h4870B0F170F9F1E6)) 
    sig_i_13
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(p_0_in[4]),
        .I4(rd),
        .I5(p_0_in[3]),
        .O(sig_i_13_n_0));
  LUT6 #(
    .INIT(64'hB44C4CCE4CCDCDD1)) 
    sig_i_14
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(rd),
        .O(sig_i_14_n_0));
  LUT6 #(
    .INIT(64'hB330FFFF433F0000)) 
    sig_i_15
       (.I0(use_alt),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(state),
        .I5(rd),
        .O(sig_i_15_n_0));
  LUT5 #(
    .INIT(32'h6A00A9FF)) 
    sig_i_16
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(state),
        .I4(rd),
        .O(sig_i_16_n_0));
  LUT5 #(
    .INIT(32'h0D00CEFF)) 
    sig_i_17
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(state),
        .I4(rd),
        .O(sig_i_17_n_0));
  LUT6 #(
    .INIT(64'h4F00FFFFBF0F0000)) 
    sig_i_18
       (.I0(use_alt),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(state),
        .I5(rd),
        .O(sig_i_18_n_0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    sig_i_2
       (.I0(rd),
        .I1(state),
        .I2(sig_i_5_n_0),
        .I3(b10[0]),
        .I4(sig_i_6_n_0),
        .I5(b10[1]),
        .O(sig_i_2_n_0));
  LUT6 #(
    .INIT(64'h87807F017F01FE1E)) 
    sig_i_5
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(p_0_in[4]),
        .I4(rd),
        .I5(p_0_in[3]),
        .O(sig_i_5_n_0));
  LUT6 #(
    .INIT(64'h477FBFFE8002011D)) 
    sig_i_6
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(p_0_in[4]),
        .I4(rd),
        .I5(p_0_in[3]),
        .O(sig_i_6_n_0));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    sig_i_7
       (.I0(sig_i_11_n_0),
        .I1(b10[0]),
        .I2(sig_i_12_n_0),
        .I3(state),
        .I4(rd),
        .O(sig_i_7_n_0));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    sig_i_8
       (.I0(sig_i_13_n_0),
        .I1(b10[0]),
        .I2(sig_i_14_n_0),
        .I3(state),
        .I4(rd),
        .O(sig_i_8_n_0));
  FDRE sig_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(sig_0),
        .Q(sig),
        .R(1'b0));
  MUXF7 sig_reg_i_10
       (.I0(sig_i_17_n_0),
        .I1(sig_i_18_n_0),
        .O(sig_reg_i_10_n_0),
        .S(b10[0]));
  MUXF7 sig_reg_i_3
       (.I0(sig_i_7_n_0),
        .I1(sig_i_8_n_0),
        .O(sig_reg_i_3_n_0),
        .S(b10[1]));
  MUXF8 sig_reg_i_4
       (.I0(sig_reg_i_9_n_0),
        .I1(sig_reg_i_10_n_0),
        .O(sig_reg_i_4_n_0),
        .S(b10[1]));
  MUXF7 sig_reg_i_9
       (.I0(sig_i_15_n_0),
        .I1(sig_i_16_n_0),
        .O(sig_reg_i_9_n_0),
        .S(b10[0]));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    state_i_1
       (.I0(b10[3]),
        .I1(b10[2]),
        .I2(b10[1]),
        .I3(state),
        .I4(b10[0]),
        .I5(s_axis_tvalid),
        .O(state_i_1_n_0));
  FDRE state_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    use_alt_i_1
       (.I0(use_alt_i_2_n_0),
        .I1(b10[2]),
        .I2(b10[0]),
        .I3(b10[1]),
        .I4(b10[3]),
        .I5(use_alt),
        .O(use_alt_i_1_n_0));
  LUT6 #(
    .INIT(64'h0600001008000060)) 
    use_alt_i_2
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .I4(rd),
        .I5(p_0_in[0]),
        .O(use_alt_i_2_n_0));
  FDRE use_alt_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(use_alt_i_1_n_0),
        .Q(use_alt),
        .R(1'b0));
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
