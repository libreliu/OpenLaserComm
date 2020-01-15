// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:sig_sync:1.0
// IP Revision: 8

(* X_CORE_INFO = "sig_sync,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "test_sig_sync_0_0,sig_sync,{}" *)
(* CORE_GENERATION_INFO = "test_sig_sync_0_0,sig_sync,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=sig_sync,x_ipVersion=1.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_NUM=6}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module test_sig_sync_0_0 (
  clk,
  sig,
  resyncn,
  AXI_clk,
  sig_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF sig, ASSOCIATED_RESET resyncn, FREQ_HZ 25000000:25000000:25000000:25000000:25000000:25000000, PHASE 330.0:270.0:210.0:150.0:90.0:30.0, INSERT_VIP 0, PortWidth 6" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire [5 : 0] clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sig, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sig DATA" *)
input wire sig;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resyncn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resyncn RST" *)
input wire resyncn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_clk, ASSOCIATED_BUSIF sig_out, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN test_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_clk CLK" *)
input wire AXI_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sig_out, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sig_out DATA" *)
output wire sig_out;

  sig_sync #(
    .CLK_NUM(6)
  ) inst (
    .clk(clk),
    .sig(sig),
    .resyncn(resyncn),
    .AXI_clk(AXI_clk),
    .sig_out(sig_out)
  );
endmodule
