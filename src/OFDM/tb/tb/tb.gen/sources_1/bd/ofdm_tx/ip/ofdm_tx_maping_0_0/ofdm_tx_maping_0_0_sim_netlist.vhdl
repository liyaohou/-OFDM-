-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:17 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_maping_0_0/ofdm_tx_maping_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_maping_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_maping_0_0_counter_in is
  port (
    p_2_in : out STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \cnt_reg[1]_1\ : out STD_LOGIC;
    \cnt_reg[1]_2\ : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    map_din_vld_0 : out STD_LOGIC;
    map_din_vld : in STD_LOGIC;
    full_reg : in STD_LOGIC;
    map_din_Map_Type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rst_n : in STD_LOGIC;
    full_reg_0 : in STD_LOGIC;
    map_din_rdy : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_maping_0_0_counter_in : entity is "counter_in";
end ofdm_tx_maping_0_0_counter_in;

architecture STRUCTURE of ofdm_tx_maping_0_0_counter_in is
  signal \^cnt\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal full_i_2_n_0 : STD_LOGIC;
  signal \^p_2_in\ : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of full_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of full_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \map_din_r[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \map_din_r[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \map_din_r[5]_i_2\ : label is "soft_lutpair0";
begin
  cnt(2 downto 0) <= \^cnt\(2 downto 0);
  p_2_in <= \^p_2_in\;
  rst_n_0 <= \^rst_n_0\;
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => map_din_Map_Type(0),
      I1 => map_din_Map_Type(1),
      I2 => \^cnt\(1),
      I3 => \^cnt\(2),
      I4 => \^p_2_in\,
      I5 => \^cnt\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFFFF70D00000"
    )
        port map (
      I0 => map_din_Map_Type(0),
      I1 => map_din_Map_Type(1),
      I2 => \^cnt\(0),
      I3 => \^cnt\(2),
      I4 => \^p_2_in\,
      I5 => \^cnt\(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FFFFFFA2000000"
    )
        port map (
      I0 => \^cnt\(1),
      I1 => map_din_Map_Type(1),
      I2 => map_din_Map_Type(0),
      I3 => \^cnt\(0),
      I4 => \^p_2_in\,
      I5 => \^cnt\(2),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => map_din_vld,
      I1 => full_reg,
      O => \^p_2_in\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt\(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt[1]_i_1_n_0\,
      Q => \^cnt\(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt[2]_i_1_n_0\,
      Q => \^cnt\(2)
    );
full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ECECEC"
    )
        port map (
      I0 => map_din_vld,
      I1 => full_reg,
      I2 => full_i_2_n_0,
      I3 => full_reg_0,
      I4 => map_din_rdy,
      O => map_din_vld_0
    );
full_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00802009"
    )
        port map (
      I0 => \^cnt\(0),
      I1 => map_din_Map_Type(0),
      I2 => map_din_Map_Type(1),
      I3 => \^cnt\(1),
      I4 => \^cnt\(2),
      O => full_i_2_n_0
    );
\map_din_r[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^cnt\(1),
      I1 => \^cnt\(2),
      O => \cnt_reg[1]_2\
    );
\map_din_r[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt\(1),
      I1 => \^cnt\(2),
      O => \cnt_reg[1]_0\
    );
\map_din_r[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^cnt\(1),
      I1 => \^cnt\(2),
      I2 => map_din_Map_Type(1),
      I3 => map_din_Map_Type(0),
      O => \cnt_reg[1]_1\
    );
\map_dout_Im[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_maping_0_0_maping is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    map_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    map_dout_rdy : out STD_LOGIC;
    map_dout_vld_reg_0 : out STD_LOGIC;
    map_din_Map_Type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    map_din : in STD_LOGIC;
    map_din_vld : in STD_LOGIC;
    map_din_rdy : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_maping_0_0_maping : entity is "maping";
end ofdm_tx_maping_0_0_maping;

architecture STRUCTURE of ofdm_tx_maping_0_0_maping is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal full_reg_n_0 : STD_LOGIC;
  signal \map_din_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \map_din_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \map_din_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \map_din_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \map_din_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \map_din_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \map_din_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \map_din_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \map_din_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \map_din_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \map_din_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \map_din_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \map_dout_Im[0]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Im[1]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Im[2]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Im[3]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Im[4]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Im[5]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Im[5]_i_2_n_0\ : STD_LOGIC;
  signal \map_dout_Im[6]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Im[6]_i_2_n_0\ : STD_LOGIC;
  signal \map_dout_Im[7]_i_2_n_0\ : STD_LOGIC;
  signal \map_dout_Im[7]_i_4_n_0\ : STD_LOGIC;
  signal map_dout_Index : STD_LOGIC;
  signal \map_dout_Index[0]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Index[3]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Index[4]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Index[5]_i_2_n_0\ : STD_LOGIC;
  signal map_dout_Re : STD_LOGIC;
  signal \map_dout_Re[0]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Re[1]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Re[2]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Re[3]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Re[4]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Re[5]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Re[6]_i_1_n_0\ : STD_LOGIC;
  signal \map_dout_Re[7]_i_1_n_0\ : STD_LOGIC;
  signal map_dout_vld_i_1_n_0 : STD_LOGIC;
  signal \^map_dout_vld_reg_0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal u_counter_n_4 : STD_LOGIC;
  signal u_counter_n_5 : STD_LOGIC;
  signal u_counter_n_6 : STD_LOGIC;
  signal u_counter_n_7 : STD_LOGIC;
  signal u_counter_n_8 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \map_din_r[1]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \map_dout_Im[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \map_dout_Im[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \map_dout_Im[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \map_dout_Im[7]_i_4\ : label is "soft_lutpair7";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \map_dout_Im_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Im_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Im_reg[2]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Im_reg[3]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Im_reg[4]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Im_reg[5]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Im_reg[6]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Im_reg[7]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute SOFT_HLUTNM of \map_dout_Index[4]_i_1\ : label is "soft_lutpair7";
  attribute X_INTERFACE_INFO of \map_dout_Index_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TUSER";
  attribute X_INTERFACE_INFO of \map_dout_Index_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TUSER";
  attribute X_INTERFACE_INFO of \map_dout_Index_reg[2]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TUSER";
  attribute X_INTERFACE_INFO of \map_dout_Index_reg[3]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TUSER";
  attribute X_INTERFACE_INFO of \map_dout_Index_reg[4]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TUSER";
  attribute X_INTERFACE_INFO of \map_dout_Index_reg[5]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TUSER";
  attribute SOFT_HLUTNM of \map_dout_Re[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \map_dout_Re[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \map_dout_Re[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \map_dout_Re[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \map_dout_Re[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \map_dout_Re[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \map_dout_Re[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \map_dout_Re[7]_i_1\ : label is "soft_lutpair9";
  attribute X_INTERFACE_INFO of \map_dout_Re_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Re_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Re_reg[2]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Re_reg[3]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Re_reg[4]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Re_reg[5]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Re_reg[6]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of \map_dout_Re_reg[7]\ : label is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute SOFT_HLUTNM of map_dout_rdy_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of map_dout_vld_i_1 : label is "soft_lutpair10";
  attribute X_INTERFACE_INFO of map_dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_map TVALID";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  map_dout_vld_reg_0 <= \^map_dout_vld_reg_0\;
full_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_7,
      D => u_counter_n_8,
      Q => full_reg_n_0
    );
\map_din_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => map_din,
      I1 => cnt(0),
      I2 => p_2_in,
      I3 => cnt(2),
      I4 => cnt(1),
      I5 => \map_din_r_reg_n_0_[0]\,
      O => \map_din_r[0]_i_1_n_0\
    );
\map_din_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => map_din,
      I1 => u_counter_n_6,
      I2 => \map_din_r[1]_i_3_n_0\,
      I3 => cnt(0),
      I4 => p_2_in,
      I5 => sel,
      O => \map_din_r[1]_i_1_n_0\
    );
\map_din_r[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => map_din_Map_Type(0),
      I1 => map_din_Map_Type(1),
      O => \map_din_r[1]_i_3_n_0\
    );
\map_din_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => map_din,
      I1 => u_counter_n_4,
      I2 => map_din_Map_Type(1),
      I3 => cnt(0),
      I4 => p_2_in,
      I5 => \map_din_r_reg_n_0_[2]\,
      O => \map_din_r[2]_i_1_n_0\
    );
\map_din_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => map_din,
      I1 => u_counter_n_4,
      I2 => map_din_Map_Type(1),
      I3 => cnt(0),
      I4 => p_2_in,
      I5 => \map_din_r_reg_n_0_[3]\,
      O => \map_din_r[3]_i_1_n_0\
    );
\map_din_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => map_din,
      I1 => u_counter_n_5,
      I2 => cnt(0),
      I3 => map_din_vld,
      I4 => full_reg_n_0,
      I5 => \map_din_r_reg_n_0_[4]\,
      O => \map_din_r[4]_i_1_n_0\
    );
\map_din_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => map_din,
      I1 => u_counter_n_5,
      I2 => cnt(0),
      I3 => map_din_vld,
      I4 => full_reg_n_0,
      I5 => \map_din_r_reg_n_0_[5]\,
      O => \map_din_r[5]_i_1_n_0\
    );
\map_din_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_7,
      D => \map_din_r[0]_i_1_n_0\,
      Q => \map_din_r_reg_n_0_[0]\
    );
\map_din_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_7,
      D => \map_din_r[1]_i_1_n_0\,
      Q => sel
    );
\map_din_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_7,
      D => \map_din_r[2]_i_1_n_0\,
      Q => \map_din_r_reg_n_0_[2]\
    );
\map_din_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_7,
      D => \map_din_r[3]_i_1_n_0\,
      Q => \map_din_r_reg_n_0_[3]\
    );
\map_din_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_7,
      D => \map_din_r[4]_i_1_n_0\,
      Q => \map_din_r_reg_n_0_[4]\
    );
\map_din_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_7,
      D => \map_din_r[5]_i_1_n_0\,
      Q => \map_din_r_reg_n_0_[5]\
    );
\map_dout_Im[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[3]\,
      I1 => map_din_Map_Type(1),
      I2 => map_din_Map_Type(0),
      O => \map_dout_Im[0]_i_1_n_0\
    );
\map_dout_Im[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5030503050305F30"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[5]\,
      I1 => sel,
      I2 => map_din_Map_Type(0),
      I3 => map_din_Map_Type(1),
      I4 => \map_din_r_reg_n_0_[3]\,
      I5 => \map_din_r_reg_n_0_[2]\,
      O => \map_dout_Im[1]_i_1_n_0\
    );
\map_dout_Im[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C0CFCCCF8C83808"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[2]\,
      I1 => map_din_Map_Type(1),
      I2 => map_din_Map_Type(0),
      I3 => sel,
      I4 => \map_din_r_reg_n_0_[4]\,
      I5 => \map_din_r_reg_n_0_[3]\,
      O => \map_dout_Im[2]_i_1_n_0\
    );
\map_dout_Im[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70407C4C7C4C7040"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[4]\,
      I1 => map_din_Map_Type(1),
      I2 => map_din_Map_Type(0),
      I3 => sel,
      I4 => \map_din_r_reg_n_0_[2]\,
      I5 => \map_din_r_reg_n_0_[3]\,
      O => \map_dout_Im[3]_i_1_n_0\
    );
\map_dout_Im[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA003A00CAF03AF0"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[2]\,
      I1 => \map_din_r_reg_n_0_[5]\,
      I2 => map_din_Map_Type(0),
      I3 => map_din_Map_Type(1),
      I4 => \map_din_r_reg_n_0_[3]\,
      I5 => sel,
      O => \map_dout_Im[4]_i_1_n_0\
    );
\map_dout_Im[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAABAAAAAAABAAA"
    )
        port map (
      I0 => \map_dout_Im[5]_i_2_n_0\,
      I1 => \map_din_r_reg_n_0_[5]\,
      I2 => map_din_Map_Type(0),
      I3 => map_din_Map_Type(1),
      I4 => \map_din_r_reg_n_0_[3]\,
      I5 => \map_din_r_reg_n_0_[4]\,
      O => \map_dout_Im[5]_i_1_n_0\
    );
\map_dout_Im[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0066F000"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[3]\,
      I1 => \map_din_r_reg_n_0_[2]\,
      I2 => sel,
      I3 => map_din_Map_Type(0),
      I4 => map_din_Map_Type(1),
      O => \map_dout_Im[5]_i_2_n_0\
    );
\map_dout_Im[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAAFAAAAAAA"
    )
        port map (
      I0 => \map_dout_Im[6]_i_2_n_0\,
      I1 => \map_din_r_reg_n_0_[5]\,
      I2 => map_din_Map_Type(0),
      I3 => map_din_Map_Type(1),
      I4 => \map_din_r_reg_n_0_[4]\,
      I5 => \map_din_r_reg_n_0_[3]\,
      O => \map_dout_Im[6]_i_1_n_0\
    );
\map_dout_Im[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0530"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[2]\,
      I1 => sel,
      I2 => map_din_Map_Type(0),
      I3 => map_din_Map_Type(1),
      O => \map_dout_Im[6]_i_2_n_0\
    );
\map_dout_Im[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2A002A2A2A2A"
    )
        port map (
      I0 => full_reg_n_0,
      I1 => map_din_rdy,
      I2 => \^map_dout_vld_reg_0\,
      I3 => \map_dout_Im[7]_i_4_n_0\,
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => map_dout_Re
    );
\map_dout_Im[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F335500"
    )
        port map (
      I0 => sel,
      I1 => \map_din_r_reg_n_0_[2]\,
      I2 => \map_din_r_reg_n_0_[5]\,
      I3 => map_din_Map_Type(0),
      I4 => map_din_Map_Type(1),
      O => \map_dout_Im[7]_i_2_n_0\
    );
\map_dout_Im[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \map_dout_Im[7]_i_4_n_0\
    );
\map_dout_Im_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Im[0]_i_1_n_0\,
      Q => map_dout(8)
    );
\map_dout_Im_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Im[1]_i_1_n_0\,
      Q => map_dout(9)
    );
\map_dout_Im_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Im[2]_i_1_n_0\,
      Q => map_dout(10)
    );
\map_dout_Im_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Im[3]_i_1_n_0\,
      Q => map_dout(11)
    );
\map_dout_Im_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Im[4]_i_1_n_0\,
      Q => map_dout(12)
    );
\map_dout_Im_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Im[5]_i_1_n_0\,
      Q => map_dout(13)
    );
\map_dout_Im_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Im[6]_i_1_n_0\,
      Q => map_dout(14)
    );
\map_dout_Im_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Im[7]_i_2_n_0\,
      Q => map_dout(15)
    );
\map_dout_Index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \map_dout_Index[0]_i_1_n_0\
    );
\map_dout_Index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75555555AAAAAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \map_dout_Index[1]_i_1_n_0\
    );
\map_dout_Index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6A6AEA6A6A6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(4),
      O => \map_dout_Index[2]_i_1_n_0\
    );
\map_dout_Index[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAEAAA6AAA6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \map_dout_Index[3]_i_1_n_0\
    );
\map_dout_Index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \map_dout_Index[4]_i_1_n_0\
    );
\map_dout_Index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2AFF2A2A2A2A"
    )
        port map (
      I0 => full_reg_n_0,
      I1 => map_din_rdy,
      I2 => \^map_dout_vld_reg_0\,
      I3 => \map_dout_Im[7]_i_4_n_0\,
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => map_dout_Index
    );
\map_dout_Index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \map_dout_Index[5]_i_2_n_0\
    );
\map_dout_Index_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => map_dout_Index,
      D => \map_dout_Index[0]_i_1_n_0\,
      PRE => u_counter_n_7,
      Q => \^q\(0)
    );
\map_dout_Index_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => map_dout_Index,
      D => \map_dout_Index[1]_i_1_n_0\,
      PRE => u_counter_n_7,
      Q => \^q\(1)
    );
\map_dout_Index_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => map_dout_Index,
      D => \map_dout_Index[2]_i_1_n_0\,
      PRE => u_counter_n_7,
      Q => \^q\(2)
    );
\map_dout_Index_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => map_dout_Index,
      D => \map_dout_Index[3]_i_1_n_0\,
      PRE => u_counter_n_7,
      Q => \^q\(3)
    );
\map_dout_Index_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => map_dout_Index,
      D => \map_dout_Index[4]_i_1_n_0\,
      PRE => u_counter_n_7,
      Q => \^q\(4)
    );
\map_dout_Index_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => map_dout_Index,
      D => \map_dout_Index[5]_i_2_n_0\,
      PRE => u_counter_n_7,
      Q => \^q\(5)
    );
\map_dout_Re[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sel,
      I1 => map_din_Map_Type(1),
      I2 => map_din_Map_Type(0),
      O => \map_dout_Re[0]_i_1_n_0\
    );
\map_dout_Re[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55030F00"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[2]\,
      I1 => sel,
      I2 => \map_din_r_reg_n_0_[0]\,
      I3 => map_din_Map_Type(0),
      I4 => map_din_Map_Type(1),
      O => \map_dout_Re[1]_i_1_n_0\
    );
\map_dout_Re[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6EC0"
    )
        port map (
      I0 => sel,
      I1 => \map_din_r_reg_n_0_[0]\,
      I2 => map_din_Map_Type(0),
      I3 => map_din_Map_Type(1),
      O => \map_dout_Re[2]_i_1_n_0\
    );
\map_dout_Re[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4E28"
    )
        port map (
      I0 => map_din_Map_Type(1),
      I1 => map_din_Map_Type(0),
      I2 => sel,
      I3 => \map_din_r_reg_n_0_[0]\,
      O => \map_dout_Re[3]_i_1_n_0\
    );
\map_dout_Re[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A42C"
    )
        port map (
      I0 => map_din_Map_Type(1),
      I1 => map_din_Map_Type(0),
      I2 => \map_din_r_reg_n_0_[0]\,
      I3 => \map_din_r_reg_n_0_[2]\,
      O => \map_dout_Re[4]_i_1_n_0\
    );
\map_dout_Re[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC703C40"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[2]\,
      I1 => map_din_Map_Type(0),
      I2 => map_din_Map_Type(1),
      I3 => \map_din_r_reg_n_0_[0]\,
      I4 => sel,
      O => \map_dout_Re[5]_i_1_n_0\
    );
\map_dout_Re[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"233FE33F"
    )
        port map (
      I0 => sel,
      I1 => \map_din_r_reg_n_0_[0]\,
      I2 => map_din_Map_Type(1),
      I3 => map_din_Map_Type(0),
      I4 => \map_din_r_reg_n_0_[2]\,
      O => \map_dout_Re[6]_i_1_n_0\
    );
\map_dout_Re[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3555"
    )
        port map (
      I0 => \map_din_r_reg_n_0_[0]\,
      I1 => \map_din_r_reg_n_0_[2]\,
      I2 => map_din_Map_Type(0),
      I3 => map_din_Map_Type(1),
      O => \map_dout_Re[7]_i_1_n_0\
    );
\map_dout_Re_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Re[0]_i_1_n_0\,
      Q => map_dout(0)
    );
\map_dout_Re_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Re[1]_i_1_n_0\,
      Q => map_dout(1)
    );
\map_dout_Re_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Re[2]_i_1_n_0\,
      Q => map_dout(2)
    );
\map_dout_Re_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Re[3]_i_1_n_0\,
      Q => map_dout(3)
    );
\map_dout_Re_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Re[4]_i_1_n_0\,
      Q => map_dout(4)
    );
\map_dout_Re_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Re[5]_i_1_n_0\,
      Q => map_dout(5)
    );
\map_dout_Re_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Re[6]_i_1_n_0\,
      Q => map_dout(6)
    );
\map_dout_Re_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => map_dout_Re,
      CLR => u_counter_n_7,
      D => \map_dout_Re[7]_i_1_n_0\,
      Q => map_dout(7)
    );
map_dout_rdy_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => full_reg_n_0,
      O => map_dout_rdy
    );
map_dout_vld_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => full_reg_n_0,
      I1 => \^map_dout_vld_reg_0\,
      I2 => map_din_rdy,
      O => map_dout_vld_i_1_n_0
    );
map_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_7,
      D => map_dout_vld_i_1_n_0,
      Q => \^map_dout_vld_reg_0\
    );
u_counter: entity work.ofdm_tx_maping_0_0_counter_in
     port map (
      clk => clk,
      cnt(2 downto 0) => cnt(2 downto 0),
      \cnt_reg[1]_0\ => u_counter_n_4,
      \cnt_reg[1]_1\ => u_counter_n_5,
      \cnt_reg[1]_2\ => u_counter_n_6,
      full_reg => full_reg_n_0,
      full_reg_0 => \^map_dout_vld_reg_0\,
      map_din_Map_Type(1 downto 0) => map_din_Map_Type(1 downto 0),
      map_din_rdy => map_din_rdy,
      map_din_vld => map_din_vld,
      map_din_vld_0 => u_counter_n_8,
      p_2_in => p_2_in,
      rst_n => rst_n,
      rst_n_0 => u_counter_n_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_maping_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    map_din : in STD_LOGIC;
    map_din_vld : in STD_LOGIC;
    map_din_rdy : in STD_LOGIC;
    map_din_Map_Type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    map_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    map_dout_vld : out STD_LOGIC;
    map_dout_rdy : out STD_LOGIC;
    map_dout_Index : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ofdm_tx_maping_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ofdm_tx_maping_0_0 : entity is "ofdm_tx_maping_0_0,maping,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ofdm_tx_maping_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ofdm_tx_maping_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ofdm_tx_maping_0_0 : entity is "maping,Vivado 2023.1";
end ofdm_tx_maping_0_0;

architecture STRUCTURE of ofdm_tx_maping_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_map:m_axis_map, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of map_din : signal is "xilinx.com:interface:axis:1.0 s_axis_map TDATA";
  attribute X_INTERFACE_INFO of map_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_map TREADY";
  attribute X_INTERFACE_INFO of map_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_map TVALID";
  attribute X_INTERFACE_INFO of map_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_map TREADY";
  attribute X_INTERFACE_PARAMETER of map_dout_rdy : signal is "XIL_INTERFACENAME s_axis_map, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of map_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_map TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of map_din_Map_Type : signal is "xilinx.com:interface:axis:1.0 s_axis_map TID";
  attribute X_INTERFACE_INFO of map_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_map TDATA";
  attribute X_INTERFACE_INFO of map_dout_Index : signal is "xilinx.com:interface:axis:1.0 m_axis_map TUSER";
  attribute X_INTERFACE_PARAMETER of map_dout_Index : signal is "XIL_INTERFACENAME m_axis_map, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 6, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.ofdm_tx_maping_0_0_maping
     port map (
      Q(5 downto 0) => map_dout_Index(5 downto 0),
      clk => clk,
      map_din => map_din,
      map_din_Map_Type(1 downto 0) => map_din_Map_Type(1 downto 0),
      map_din_rdy => map_din_rdy,
      map_din_vld => map_din_vld,
      map_dout(15 downto 0) => map_dout(15 downto 0),
      map_dout_rdy => map_dout_rdy,
      map_dout_vld_reg_0 => map_dout_vld,
      rst_n => rst_n
    );
end STRUCTURE;
