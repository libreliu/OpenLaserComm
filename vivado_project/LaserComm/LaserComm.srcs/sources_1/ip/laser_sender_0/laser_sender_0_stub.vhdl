-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jan 14 04:22:18 2020
-- Host        : DESKTOP-AOPHFHK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/vivado/zybo/zybo.srcs/sources_1/ip/laser_sender_0/laser_sender_0_stub.vhdl
-- Design      : laser_sender_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity laser_sender_0 is
  Port ( 
    sig : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );

end laser_sender_0;

architecture stub of laser_sender_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sig,s_axis_tdata[7:0],s_axis_tkeep[0:0],s_axis_tlast,s_axis_tvalid,s_axis_tready,s_axis_aclk,s_axis_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "laser_sender_v1_0,Vivado 2019.1";
begin
end;
