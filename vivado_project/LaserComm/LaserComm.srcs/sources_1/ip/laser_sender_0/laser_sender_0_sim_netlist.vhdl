-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jan 14 04:22:18 2020
-- Host        : DESKTOP-AOPHFHK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/vivado/zybo/zybo.srcs/sources_1/ip/laser_sender_0/laser_sender_0_sim_netlist.vhdl
-- Design      : laser_sender_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity laser_sender_0_laser_sender_v1_0 is
  port (
    sig : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of laser_sender_0_laser_sender_v1_0 : entity is "laser_sender_v1_0";
end laser_sender_0_laser_sender_v1_0;

architecture STRUCTURE of laser_sender_0_laser_sender_v1_0 is
  signal b10 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \b10[0]_i_1_n_0\ : STD_LOGIC;
  signal \b10[1]_i_1_n_0\ : STD_LOGIC;
  signal \b10[2]_i_1_n_0\ : STD_LOGIC;
  signal \b10[3]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd : STD_LOGIC;
  signal rd_i_1_n_0 : STD_LOGIC;
  signal rd_i_2_n_0 : STD_LOGIC;
  signal rd_i_3_n_0 : STD_LOGIC;
  signal rd_i_4_n_0 : STD_LOGIC;
  signal rd_i_5_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal sig_0 : STD_LOGIC;
  signal sig_i_11_n_0 : STD_LOGIC;
  signal sig_i_12_n_0 : STD_LOGIC;
  signal sig_i_13_n_0 : STD_LOGIC;
  signal sig_i_14_n_0 : STD_LOGIC;
  signal sig_i_15_n_0 : STD_LOGIC;
  signal sig_i_16_n_0 : STD_LOGIC;
  signal sig_i_17_n_0 : STD_LOGIC;
  signal sig_i_18_n_0 : STD_LOGIC;
  signal sig_i_2_n_0 : STD_LOGIC;
  signal sig_i_5_n_0 : STD_LOGIC;
  signal sig_i_6_n_0 : STD_LOGIC;
  signal sig_i_7_n_0 : STD_LOGIC;
  signal sig_i_8_n_0 : STD_LOGIC;
  signal sig_reg_i_10_n_0 : STD_LOGIC;
  signal sig_reg_i_3_n_0 : STD_LOGIC;
  signal sig_reg_i_4_n_0 : STD_LOGIC;
  signal sig_reg_i_9_n_0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state0 : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal use_alt : STD_LOGIC;
  signal use_alt_i_1_n_0 : STD_LOGIC;
  signal use_alt_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \b10[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \b10[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \b10[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \b10[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of rd_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair0";
begin
\b10[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b10(0),
      O => \b10[0]_i_1_n_0\
    );
\b10[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F00E"
    )
        port map (
      I0 => b10(3),
      I1 => b10(2),
      I2 => b10(0),
      I3 => b10(1),
      O => \b10[1]_i_1_n_0\
    );
\b10[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC02"
    )
        port map (
      I0 => b10(3),
      I1 => b10(0),
      I2 => b10(1),
      I3 => b10(2),
      O => \b10[2]_i_1_n_0\
    );
\b10[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => b10(3),
      I1 => b10(1),
      I2 => b10(0),
      I3 => b10(2),
      O => \b10[3]_i_1_n_0\
    );
\b10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \b10[0]_i_1_n_0\,
      Q => b10(0),
      R => \data[7]_i_1_n_0\
    );
\b10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \b10[1]_i_1_n_0\,
      Q => b10(1),
      R => \data[7]_i_1_n_0\
    );
\b10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \b10[2]_i_1_n_0\,
      Q => b10(2),
      R => \data[7]_i_1_n_0\
    );
\b10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \b10[3]_i_1_n_0\,
      Q => b10(3),
      R => \data[7]_i_1_n_0\
    );
\data[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_aresetn,
      O => \data[7]_i_1_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => b10(2),
      I1 => b10(0),
      I2 => s_axis_tvalid,
      I3 => b10(1),
      I4 => b10(3),
      O => state0
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => state0,
      D => s_axis_tdata(0),
      Q => p_0_in(0),
      R => \data[7]_i_1_n_0\
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => state0,
      D => s_axis_tdata(1),
      Q => p_0_in(1),
      R => \data[7]_i_1_n_0\
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => state0,
      D => s_axis_tdata(2),
      Q => p_0_in(2),
      R => \data[7]_i_1_n_0\
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => state0,
      D => s_axis_tdata(3),
      Q => p_0_in(3),
      R => \data[7]_i_1_n_0\
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => state0,
      D => s_axis_tdata(4),
      Q => p_0_in(4),
      R => \data[7]_i_1_n_0\
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => state0,
      D => s_axis_tdata(5),
      Q => sel0(2),
      R => \data[7]_i_1_n_0\
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => state0,
      D => s_axis_tdata(6),
      Q => sel0(3),
      R => \data[7]_i_1_n_0\
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => state0,
      D => s_axis_tdata(7),
      Q => sel0(4),
      R => \data[7]_i_1_n_0\
    );
rd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => rd_i_2_n_0,
      I1 => b10(2),
      I2 => rd_i_3_n_0,
      I3 => rd_i_4_n_0,
      I4 => b10(3),
      I5 => rd,
      O => rd_i_1_n_0
    );
rd_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => rd_i_5_n_0,
      I1 => state,
      I2 => rd,
      O => rd_i_2_n_0
    );
rd_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7CFF8300"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => state,
      I4 => rd,
      O => rd_i_3_n_0
    );
rd_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b10(0),
      I1 => b10(1),
      O => rd_i_4_n_0
    );
rd_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"177E7EE0E881811F"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => rd,
      O => rd_i_5_n_0
    );
rd_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => rd_i_1_n_0,
      Q => rd,
      R => \data[7]_i_1_n_0\
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => b10(2),
      I1 => b10(0),
      I2 => b10(1),
      I3 => b10(3),
      O => s_axis_tready
    );
sig_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => sig_i_2_n_0,
      I1 => b10(3),
      I2 => sig_reg_i_3_n_0,
      I3 => b10(2),
      I4 => sig_reg_i_4_n_0,
      O => sig_0
    );
sig_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"122BEAAA2BB4AAAB"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => p_0_in(4),
      I4 => rd,
      I5 => p_0_in(3),
      O => sig_i_11_n_0
    );
sig_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"39969660C117177F"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => rd,
      O => sig_i_12_n_0
    );
sig_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4870B0F170F9F1E6"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => p_0_in(4),
      I4 => rd,
      I5 => p_0_in(3),
      O => sig_i_13_n_0
    );
sig_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B44C4CCE4CCDCDD1"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => rd,
      O => sig_i_14_n_0
    );
sig_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B330FFFF433F0000"
    )
        port map (
      I0 => use_alt,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => state,
      I5 => rd,
      O => sig_i_15_n_0
    );
sig_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A00A9FF"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => state,
      I4 => rd,
      O => sig_i_16_n_0
    );
sig_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D00CEFF"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => state,
      I4 => rd,
      O => sig_i_17_n_0
    );
sig_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00FFFFBF0F0000"
    )
        port map (
      I0 => use_alt,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => state,
      I5 => rd,
      O => sig_i_18_n_0
    );
sig_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => rd,
      I1 => state,
      I2 => sig_i_5_n_0,
      I3 => b10(0),
      I4 => sig_i_6_n_0,
      I5 => b10(1),
      O => sig_i_2_n_0
    );
sig_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87807F017F01FE1E"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => p_0_in(4),
      I4 => rd,
      I5 => p_0_in(3),
      O => sig_i_5_n_0
    );
sig_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"477FBFFE8002011D"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => p_0_in(4),
      I4 => rd,
      I5 => p_0_in(3),
      O => sig_i_6_n_0
    );
sig_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => sig_i_11_n_0,
      I1 => b10(0),
      I2 => sig_i_12_n_0,
      I3 => state,
      I4 => rd,
      O => sig_i_7_n_0
    );
sig_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => sig_i_13_n_0,
      I1 => b10(0),
      I2 => sig_i_14_n_0,
      I3 => state,
      I4 => rd,
      O => sig_i_8_n_0
    );
sig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => sig_0,
      Q => sig,
      R => '0'
    );
sig_reg_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => sig_i_17_n_0,
      I1 => sig_i_18_n_0,
      O => sig_reg_i_10_n_0,
      S => b10(0)
    );
sig_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => sig_i_7_n_0,
      I1 => sig_i_8_n_0,
      O => sig_reg_i_3_n_0,
      S => b10(1)
    );
sig_reg_i_4: unisim.vcomponents.MUXF8
     port map (
      I0 => sig_reg_i_9_n_0,
      I1 => sig_reg_i_10_n_0,
      O => sig_reg_i_4_n_0,
      S => b10(1)
    );
sig_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => sig_i_15_n_0,
      I1 => sig_i_16_n_0,
      O => sig_reg_i_9_n_0,
      S => b10(0)
    );
state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => b10(3),
      I1 => b10(2),
      I2 => b10(1),
      I3 => state,
      I4 => b10(0),
      I5 => s_axis_tvalid,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state,
      R => \data[7]_i_1_n_0\
    );
use_alt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => use_alt_i_2_n_0,
      I1 => b10(2),
      I2 => b10(0),
      I3 => b10(1),
      I4 => b10(3),
      I5 => use_alt,
      O => use_alt_i_1_n_0
    );
use_alt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600001008000060"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(4),
      I3 => p_0_in(3),
      I4 => rd,
      I5 => p_0_in(0),
      O => use_alt_i_2_n_0
    );
use_alt_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => use_alt_i_1_n_0,
      Q => use_alt,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity laser_sender_0 is
  port (
    sig : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of laser_sender_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of laser_sender_0 : entity is "laser_sender_0,laser_sender_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of laser_sender_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of laser_sender_0 : entity is "laser_sender_v1_0,Vivado 2019.1";
end laser_sender_0;

architecture STRUCTURE of laser_sender_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of sig : signal is "xilinx.com:signal:data:1.0 sig DATA";
  attribute X_INTERFACE_PARAMETER of sig : signal is "XIL_INTERFACENAME sig, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
inst: entity work.laser_sender_0_laser_sender_v1_0
     port map (
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      sig => sig
    );
end STRUCTURE;
