// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jan 14 04:22:18 2020
// Host        : DESKTOP-AOPHFHK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/vivado/zybo/zybo.srcs/sources_1/ip/laser_sender_0/laser_sender_0_stub.v
// Design      : laser_sender_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "laser_sender_v1_0,Vivado 2019.1" *)
module laser_sender_0(sig, s_axis_tdata, s_axis_tkeep, s_axis_tlast, 
  s_axis_tvalid, s_axis_tready, s_axis_aclk, s_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="sig,s_axis_tdata[7:0],s_axis_tkeep[0:0],s_axis_tlast,s_axis_tvalid,s_axis_tready,s_axis_aclk,s_axis_aresetn" */;
  output sig;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_aclk;
  input s_axis_aresetn;
endmodule
