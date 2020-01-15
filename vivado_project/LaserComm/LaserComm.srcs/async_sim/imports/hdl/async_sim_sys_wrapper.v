//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jan 14 06:17:12 2020
//Host        : DESKTOP-AOPHFHK running 64-bit major release  (build 9200)
//Command     : generate_target async_sim_sys_wrapper.bd
//Design      : async_sim_sys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module async_sim_sys_wrapper
   (clk_8,
    receiver_axi_tdata,
    receiver_axi_tkeep,
    receiver_axi_tlast,
    receiver_axi_tready,
    receiver_axi_tvalid,
    receiver_clk,
    receiver_rst,
    sender_axi_tdata,
    sender_axi_tkeep,
    sender_axi_tlast,
    sender_axi_tready,
    sender_axi_tvalid,
    sender_clk,
    sender_rst);
  input [7:0]clk_8;
  output [7:0]receiver_axi_tdata;
  output [0:0]receiver_axi_tkeep;
  output receiver_axi_tlast;
  input receiver_axi_tready;
  output receiver_axi_tvalid;
  input receiver_clk;
  input receiver_rst;
  input [7:0]sender_axi_tdata;
  input [0:0]sender_axi_tkeep;
  input sender_axi_tlast;
  output sender_axi_tready;
  input sender_axi_tvalid;
  input sender_clk;
  input sender_rst;

  wire [7:0]clk_8;
  wire [7:0]receiver_axi_tdata;
  wire [0:0]receiver_axi_tkeep;
  wire receiver_axi_tlast;
  wire receiver_axi_tready;
  wire receiver_axi_tvalid;
  wire receiver_clk;
  wire receiver_rst;
  wire [7:0]sender_axi_tdata;
  wire [0:0]sender_axi_tkeep;
  wire sender_axi_tlast;
  wire sender_axi_tready;
  wire sender_axi_tvalid;
  wire sender_clk;
  wire sender_rst;

  async_sim_sys async_sim_sys_i
       (.clk_8(clk_8),
        .receiver_axi_tdata(receiver_axi_tdata),
        .receiver_axi_tkeep(receiver_axi_tkeep),
        .receiver_axi_tlast(receiver_axi_tlast),
        .receiver_axi_tready(receiver_axi_tready),
        .receiver_axi_tvalid(receiver_axi_tvalid),
        .receiver_clk(receiver_clk),
        .receiver_rst(receiver_rst),
        .sender_axi_tdata(sender_axi_tdata),
        .sender_axi_tkeep(sender_axi_tkeep),
        .sender_axi_tlast(sender_axi_tlast),
        .sender_axi_tready(sender_axi_tready),
        .sender_axi_tvalid(sender_axi_tvalid),
        .sender_clk(sender_clk),
        .sender_rst(sender_rst));
endmodule
