-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:53:45 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_ifft_0_0/ofdm_tx_ifft_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_ifft_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_ifft_0_0_edge_detection is
  port (
    ifft_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \bbstub_m_axis_data_tuser[0]\ : out STD_LOGIC;
    ifft_dout_vld : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ifft_dout_Index : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_ifft_0_0_edge_detection : entity is "edge_detection";
end ofdm_tx_ifft_0_0_edge_detection;

architecture STRUCTURE of ofdm_tx_ifft_0_0_edge_detection is
  signal \^bbstub_m_axis_data_tuser[0]\ : STD_LOGIC;
  signal edge_din_r : STD_LOGIC;
  signal ifft_dout1 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \ifft_dout[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ifft_dout[10]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \ifft_dout[10]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \ifft_dout[10]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \ifft_dout[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ifft_dout[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ifft_dout[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ifft_dout[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ifft_dout[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ifft_dout[15]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \ifft_dout[15]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \ifft_dout[15]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \ifft_dout[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ifft_dout[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ifft_dout[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ifft_dout[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_1_n_4\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_1_n_5\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_1_n_6\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ifft_dout[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_1_n_4\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_1_n_5\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_1_n_6\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_1_n_7\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ifft_dout[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \NLW_ifft_dout[10]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ifft_dout[15]_INST_0_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ifft_dout[2]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ifft_dout[7]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ifft_dout[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ifft_dout[10]_INST_0\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ifft_dout[10]_INST_0_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \ifft_dout[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ifft_dout[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ifft_dout[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ifft_dout[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ifft_dout[15]_INST_0\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD of \ifft_dout[15]_INST_0_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \ifft_dout[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ifft_dout[2]_INST_0\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD of \ifft_dout[2]_INST_0_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \ifft_dout[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ifft_dout[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ifft_dout[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ifft_dout[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ifft_dout[7]_INST_0\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \ifft_dout[7]_INST_0_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \ifft_dout[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ifft_dout[9]_INST_0\ : label is "soft_lutpair4";
begin
  \bbstub_m_axis_data_tuser[0]\ <= \^bbstub_m_axis_data_tuser[0]\;
edge_din_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ifft_dout_vld,
      Q => edge_din_r,
      R => '0'
    );
\ifft_dout[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(0),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => \ifft_dout[2]_INST_0_i_1_n_6\,
      O => ifft_dout(0)
    );
\ifft_dout[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(10),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => ifft_dout1(3),
      O => ifft_dout(10)
    );
\ifft_dout[10]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ifft_dout[10]_INST_0_i_1_n_0\,
      CO(2) => \ifft_dout[10]_INST_0_i_1_n_1\,
      CO(1) => \ifft_dout[10]_INST_0_i_1_n_2\,
      CO(0) => \ifft_dout[10]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(10 downto 7),
      O(3 downto 1) => ifft_dout1(3 downto 1),
      O(0) => \NLW_ifft_dout[10]_INST_0_i_1_O_UNCONNECTED\(0),
      S(3) => \ifft_dout[10]_INST_0_i_2_n_0\,
      S(2) => \ifft_dout[10]_INST_0_i_3_n_0\,
      S(1) => \ifft_dout[10]_INST_0_i_4_n_0\,
      S(0) => \ifft_dout[10]_INST_0_i_5_n_0\
    );
\ifft_dout[10]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(10),
      I1 => m_axis_data_tdata(11),
      O => \ifft_dout[10]_INST_0_i_2_n_0\
    );
\ifft_dout[10]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(9),
      I1 => m_axis_data_tdata(10),
      O => \ifft_dout[10]_INST_0_i_3_n_0\
    );
\ifft_dout[10]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(8),
      I1 => m_axis_data_tdata(9),
      O => \ifft_dout[10]_INST_0_i_4_n_0\
    );
\ifft_dout[10]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(7),
      I1 => m_axis_data_tdata(8),
      O => \ifft_dout[10]_INST_0_i_5_n_0\
    );
\ifft_dout[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(11),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => ifft_dout1(4),
      O => ifft_dout(11)
    );
\ifft_dout[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(12),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => ifft_dout1(5),
      O => ifft_dout(12)
    );
\ifft_dout[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(13),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => ifft_dout1(6),
      O => ifft_dout(13)
    );
\ifft_dout[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(14),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => ifft_dout1(7),
      O => ifft_dout(14)
    );
\ifft_dout[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(15),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => ifft_dout1(7),
      O => ifft_dout(15)
    );
\ifft_dout[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => edge_din_r,
      I1 => ifft_dout_vld,
      I2 => ifft_dout_Index(4),
      I3 => ifft_dout_Index(5),
      I4 => \^bbstub_m_axis_data_tuser[0]\,
      O => \ifft_dout[15]_INST_0_i_1_n_0\
    );
\ifft_dout[15]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ifft_dout[10]_INST_0_i_1_n_0\,
      CO(3) => \NLW_ifft_dout[15]_INST_0_i_2_CO_UNCONNECTED\(3),
      CO(2) => \ifft_dout[15]_INST_0_i_2_n_1\,
      CO(1) => \ifft_dout[15]_INST_0_i_2_n_2\,
      CO(0) => \ifft_dout[15]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(13 downto 11),
      O(3 downto 0) => ifft_dout1(7 downto 4),
      S(3) => \ifft_dout[15]_INST_0_i_4_n_0\,
      S(2) => \ifft_dout[15]_INST_0_i_5_n_0\,
      S(1) => \ifft_dout[15]_INST_0_i_6_n_0\,
      S(0) => \ifft_dout[15]_INST_0_i_7_n_0\
    );
\ifft_dout[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ifft_dout_Index(6),
      I1 => ifft_dout_Index(7),
      I2 => ifft_dout_Index(2),
      I3 => ifft_dout_Index(3),
      I4 => ifft_dout_Index(1),
      I5 => ifft_dout_Index(0),
      O => \^bbstub_m_axis_data_tuser[0]\
    );
\ifft_dout[15]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(13),
      I1 => m_axis_data_tdata(15),
      O => \ifft_dout[15]_INST_0_i_4_n_0\
    );
\ifft_dout[15]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(13),
      I1 => m_axis_data_tdata(14),
      O => \ifft_dout[15]_INST_0_i_5_n_0\
    );
\ifft_dout[15]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(12),
      I1 => m_axis_data_tdata(13),
      O => \ifft_dout[15]_INST_0_i_6_n_0\
    );
\ifft_dout[15]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(11),
      I1 => m_axis_data_tdata(12),
      O => \ifft_dout[15]_INST_0_i_7_n_0\
    );
\ifft_dout[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(1),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => \ifft_dout[2]_INST_0_i_1_n_5\,
      O => ifft_dout(1)
    );
\ifft_dout[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(2),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => \ifft_dout[2]_INST_0_i_1_n_4\,
      O => ifft_dout(2)
    );
\ifft_dout[2]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ifft_dout[2]_INST_0_i_1_n_0\,
      CO(2) => \ifft_dout[2]_INST_0_i_1_n_1\,
      CO(1) => \ifft_dout[2]_INST_0_i_1_n_2\,
      CO(0) => \ifft_dout[2]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => \ifft_dout[2]_INST_0_i_1_n_4\,
      O(2) => \ifft_dout[2]_INST_0_i_1_n_5\,
      O(1) => \ifft_dout[2]_INST_0_i_1_n_6\,
      O(0) => \NLW_ifft_dout[2]_INST_0_i_1_O_UNCONNECTED\(0),
      S(3) => \ifft_dout[2]_INST_0_i_2_n_0\,
      S(2) => \ifft_dout[2]_INST_0_i_3_n_0\,
      S(1) => \ifft_dout[2]_INST_0_i_4_n_0\,
      S(0) => \ifft_dout[2]_INST_0_i_5_n_0\
    );
\ifft_dout[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(3),
      I1 => m_axis_data_tdata(3),
      O => \ifft_dout[2]_INST_0_i_2_n_0\
    );
\ifft_dout[2]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(2),
      I1 => m_axis_data_tdata(2),
      O => \ifft_dout[2]_INST_0_i_3_n_0\
    );
\ifft_dout[2]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => m_axis_data_tdata(1),
      O => \ifft_dout[2]_INST_0_i_4_n_0\
    );
\ifft_dout[2]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => m_axis_data_tdata(0),
      O => \ifft_dout[2]_INST_0_i_5_n_0\
    );
\ifft_dout[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(3),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => \ifft_dout[7]_INST_0_i_1_n_7\,
      O => ifft_dout(3)
    );
\ifft_dout[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(4),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => \ifft_dout[7]_INST_0_i_1_n_6\,
      O => ifft_dout(4)
    );
\ifft_dout[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(5),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => \ifft_dout[7]_INST_0_i_1_n_5\,
      O => ifft_dout(5)
    );
\ifft_dout[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(6),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => \ifft_dout[7]_INST_0_i_1_n_4\,
      O => ifft_dout(6)
    );
\ifft_dout[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(7),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => \ifft_dout[7]_INST_0_i_1_n_4\,
      O => ifft_dout(7)
    );
\ifft_dout[7]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ifft_dout[2]_INST_0_i_1_n_0\,
      CO(3) => \NLW_ifft_dout[7]_INST_0_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ifft_dout[7]_INST_0_i_1_n_1\,
      CO(1) => \ifft_dout[7]_INST_0_i_1_n_2\,
      CO(0) => \ifft_dout[7]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(6 downto 4),
      O(3) => \ifft_dout[7]_INST_0_i_1_n_4\,
      O(2) => \ifft_dout[7]_INST_0_i_1_n_5\,
      O(1) => \ifft_dout[7]_INST_0_i_1_n_6\,
      O(0) => \ifft_dout[7]_INST_0_i_1_n_7\,
      S(3) => \ifft_dout[7]_INST_0_i_2_n_0\,
      S(2) => \ifft_dout[7]_INST_0_i_3_n_0\,
      S(1) => \ifft_dout[7]_INST_0_i_4_n_0\,
      S(0) => \ifft_dout[7]_INST_0_i_5_n_0\
    );
\ifft_dout[7]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(6),
      I1 => m_axis_data_tdata(7),
      O => \ifft_dout[7]_INST_0_i_2_n_0\
    );
\ifft_dout[7]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(6),
      I1 => m_axis_data_tdata(6),
      O => \ifft_dout[7]_INST_0_i_3_n_0\
    );
\ifft_dout[7]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(5),
      I1 => m_axis_data_tdata(5),
      O => \ifft_dout[7]_INST_0_i_4_n_0\
    );
\ifft_dout[7]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(4),
      I1 => m_axis_data_tdata(4),
      O => \ifft_dout[7]_INST_0_i_5_n_0\
    );
\ifft_dout[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(8),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => ifft_dout1(1),
      O => ifft_dout(8)
    );
\ifft_dout[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_data_tdata(9),
      I1 => \ifft_dout[15]_INST_0_i_1_n_0\,
      I2 => ifft_dout1(2),
      O => ifft_dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_ifft_0_0_ifft is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ifft_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ifft_din_vld : in STD_LOGIC;
    ifft_din_rdy : in STD_LOGIC;
    ifft_din_last : in STD_LOGIC;
    ifft_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ifft_dout_vld : out STD_LOGIC;
    ifft_dout_rdy : out STD_LOGIC;
    ifft_dout_last : out STD_LOGIC;
    ifft_dout_Index : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_ifft_0_0_ifft : entity is "ifft";
end ofdm_tx_ifft_0_0_ifft;

architecture STRUCTURE of ofdm_tx_ifft_0_0_ifft is
  component ofdm_tx_ifft_0_0_xfft_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component ofdm_tx_ifft_0_0_xfft_0;
  signal first_iff_dout : STD_LOGIC;
  signal \first_iff_dout[14]_i_2_n_0\ : STD_LOGIC;
  signal \first_iff_dout_reg_n_0_[0]\ : STD_LOGIC;
  signal \first_iff_dout_reg_n_0_[1]\ : STD_LOGIC;
  signal \first_iff_dout_reg_n_0_[2]\ : STD_LOGIC;
  signal \first_iff_dout_reg_n_0_[3]\ : STD_LOGIC;
  signal \first_iff_dout_reg_n_0_[4]\ : STD_LOGIC;
  signal \first_iff_dout_reg_n_0_[5]\ : STD_LOGIC;
  signal \first_iff_dout_reg_n_0_[6]\ : STD_LOGIC;
  signal \^ifft_dout_index\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ifft_dout_vld\ : STD_LOGIC;
  signal m_axis_data_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal u_edge_detection_n_16 : STD_LOGIC;
  signal NLW_u_fft_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fft_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  attribute x_core_info : string;
  attribute x_core_info of u_fft : label is "xfft_v9_1_9,Vivado 2023.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ifft_din_last : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft TLAST";
  attribute X_INTERFACE_INFO of ifft_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TREADY";
  attribute X_INTERFACE_INFO of ifft_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft TVALID";
  attribute X_INTERFACE_INFO of ifft_dout_last : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TLAST";
  attribute X_INTERFACE_INFO of ifft_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft TREADY";
  attribute X_INTERFACE_INFO of ifft_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TVALID";
  attribute X_INTERFACE_INFO of ifft_din : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft TDATA";
  attribute X_INTERFACE_INFO of ifft_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TDATA";
  attribute X_INTERFACE_INFO of ifft_dout_Index : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TUSER";
begin
  ifft_dout_Index(7 downto 0) <= \^ifft_dout_index\(7 downto 0);
  ifft_dout_vld <= \^ifft_dout_vld\;
\first_iff_dout[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^ifft_dout_index\(5),
      I1 => \^ifft_dout_index\(4),
      I2 => u_edge_detection_n_16,
      O => first_iff_dout
    );
\first_iff_dout[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \first_iff_dout[14]_i_2_n_0\
    );
\first_iff_dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(1),
      Q => \first_iff_dout_reg_n_0_[0]\
    );
\first_iff_dout_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(19),
      Q => p_1_in(2)
    );
\first_iff_dout_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(20),
      Q => p_1_in(3)
    );
\first_iff_dout_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(21),
      Q => p_1_in(4)
    );
\first_iff_dout_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(22),
      Q => p_1_in(5)
    );
\first_iff_dout_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(23),
      Q => p_1_in(6)
    );
\first_iff_dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(2),
      Q => \first_iff_dout_reg_n_0_[1]\
    );
\first_iff_dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(3),
      Q => \first_iff_dout_reg_n_0_[2]\
    );
\first_iff_dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(4),
      Q => \first_iff_dout_reg_n_0_[3]\
    );
\first_iff_dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(5),
      Q => \first_iff_dout_reg_n_0_[4]\
    );
\first_iff_dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(6),
      Q => \first_iff_dout_reg_n_0_[5]\
    );
\first_iff_dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(7),
      Q => \first_iff_dout_reg_n_0_[6]\
    );
\first_iff_dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(17),
      Q => p_1_in(0)
    );
\first_iff_dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => first_iff_dout,
      CLR => \first_iff_dout[14]_i_2_n_0\,
      D => m_axis_data_tdata(18),
      Q => p_1_in(1)
    );
u_edge_detection: entity work.ofdm_tx_ifft_0_0_edge_detection
     port map (
      Q(13 downto 7) => p_1_in(6 downto 0),
      Q(6) => \first_iff_dout_reg_n_0_[6]\,
      Q(5) => \first_iff_dout_reg_n_0_[5]\,
      Q(4) => \first_iff_dout_reg_n_0_[4]\,
      Q(3) => \first_iff_dout_reg_n_0_[3]\,
      Q(2) => \first_iff_dout_reg_n_0_[2]\,
      Q(1) => \first_iff_dout_reg_n_0_[1]\,
      Q(0) => \first_iff_dout_reg_n_0_[0]\,
      \bbstub_m_axis_data_tuser[0]\ => u_edge_detection_n_16,
      clk => clk,
      ifft_dout(15 downto 0) => ifft_dout(15 downto 0),
      ifft_dout_Index(7 downto 0) => \^ifft_dout_index\(7 downto 0),
      ifft_dout_vld => \^ifft_dout_vld\,
      m_axis_data_tdata(15 downto 8) => m_axis_data_tdata(23 downto 16),
      m_axis_data_tdata(7 downto 0) => m_axis_data_tdata(7 downto 0)
    );
u_fft: component ofdm_tx_ifft_0_0_xfft_0
     port map (
      aclk => clk,
      event_data_in_channel_halt => NLW_u_fft_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_u_fft_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_u_fft_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_u_fft_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_u_fft_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_u_fft_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(31 downto 24) => NLW_u_fft_m_axis_data_tdata_UNCONNECTED(31 downto 24),
      m_axis_data_tdata(23 downto 16) => m_axis_data_tdata(23 downto 16),
      m_axis_data_tdata(15 downto 8) => NLW_u_fft_m_axis_data_tdata_UNCONNECTED(15 downto 8),
      m_axis_data_tdata(7 downto 0) => m_axis_data_tdata(7 downto 0),
      m_axis_data_tlast => ifft_dout_last,
      m_axis_data_tready => ifft_din_rdy,
      m_axis_data_tuser(7 downto 0) => \^ifft_dout_index\(7 downto 0),
      m_axis_data_tvalid => \^ifft_dout_vld\,
      s_axis_config_tdata(15 downto 0) => B"0101110000010000",
      s_axis_config_tready => NLW_u_fft_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => '1',
      s_axis_data_tdata(31) => ifft_din(15),
      s_axis_data_tdata(30) => ifft_din(15),
      s_axis_data_tdata(29) => ifft_din(15),
      s_axis_data_tdata(28) => ifft_din(15),
      s_axis_data_tdata(27) => ifft_din(15),
      s_axis_data_tdata(26 downto 19) => ifft_din(15 downto 8),
      s_axis_data_tdata(18 downto 16) => B"000",
      s_axis_data_tdata(15) => ifft_din(7),
      s_axis_data_tdata(14) => ifft_din(7),
      s_axis_data_tdata(13) => ifft_din(7),
      s_axis_data_tdata(12) => ifft_din(7),
      s_axis_data_tdata(11) => ifft_din(7),
      s_axis_data_tdata(10 downto 3) => ifft_din(7 downto 0),
      s_axis_data_tdata(2 downto 0) => B"000",
      s_axis_data_tlast => ifft_din_last,
      s_axis_data_tready => ifft_dout_rdy,
      s_axis_data_tvalid => ifft_din_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_ifft_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ifft_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ifft_din_vld : in STD_LOGIC;
    ifft_din_rdy : in STD_LOGIC;
    ifft_din_last : in STD_LOGIC;
    ifft_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ifft_dout_vld : out STD_LOGIC;
    ifft_dout_rdy : out STD_LOGIC;
    ifft_dout_last : out STD_LOGIC;
    ifft_dout_Index : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ofdm_tx_ifft_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ofdm_tx_ifft_0_0 : entity is "ofdm_tx_ifft_0_0,ifft,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ofdm_tx_ifft_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ofdm_tx_ifft_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ofdm_tx_ifft_0_0 : entity is "ifft,Vivado 2023.1";
end ofdm_tx_ifft_0_0;

architecture STRUCTURE of ofdm_tx_ifft_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_ifft:m_axis_ifft, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ifft_din_last : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft TLAST";
  attribute X_INTERFACE_INFO of ifft_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TREADY";
  attribute X_INTERFACE_INFO of ifft_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft TVALID";
  attribute X_INTERFACE_INFO of ifft_dout_last : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TLAST";
  attribute X_INTERFACE_INFO of ifft_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft TREADY";
  attribute X_INTERFACE_PARAMETER of ifft_dout_rdy : signal is "XIL_INTERFACENAME s_axis_ifft, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ifft_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ifft_din : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft TDATA";
  attribute X_INTERFACE_INFO of ifft_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TDATA";
  attribute X_INTERFACE_INFO of ifft_dout_Index : signal is "xilinx.com:interface:axis:1.0 m_axis_ifft TUSER";
  attribute X_INTERFACE_PARAMETER of ifft_dout_Index : signal is "XIL_INTERFACENAME m_axis_ifft, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.ofdm_tx_ifft_0_0_ifft
     port map (
      clk => clk,
      ifft_din(15 downto 0) => ifft_din(15 downto 0),
      ifft_din_last => ifft_din_last,
      ifft_din_rdy => ifft_din_rdy,
      ifft_din_vld => ifft_din_vld,
      ifft_dout(15 downto 0) => ifft_dout(15 downto 0),
      ifft_dout_Index(7 downto 0) => ifft_dout_Index(7 downto 0),
      ifft_dout_last => ifft_dout_last,
      ifft_dout_rdy => ifft_dout_rdy,
      ifft_dout_vld => ifft_dout_vld,
      rst_n => rst_n
    );
end STRUCTURE;
