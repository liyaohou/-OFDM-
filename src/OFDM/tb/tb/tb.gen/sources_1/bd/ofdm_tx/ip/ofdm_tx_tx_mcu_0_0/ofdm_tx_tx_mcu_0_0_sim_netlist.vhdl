-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Nov 10 19:35:21 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_tx_mcu_0_0/ofdm_tx_tx_mcu_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_tx_mcu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_tx_mcu_0_0_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mcu_config_din_vld_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_dout_vld_reg : out STD_LOGIC;
    sig_dout_vld_reg_0 : out STD_LOGIC;
    sig_dout_vld_reg_1 : out STD_LOGIC;
    sig_dout_vld_reg_2 : out STD_LOGIC;
    sig_dout_vld_reg_3 : out STD_LOGIC;
    sig_dout_vld_reg_4 : out STD_LOGIC;
    sig_dout_vld_reg_5 : out STD_LOGIC;
    sig_dout_vld_reg_6 : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    sig_dout_vld_reg_7 : out STD_LOGIC;
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \cnt_reg[1]_1\ : out STD_LOGIC;
    \sig_dout_rate_con_reg[1]\ : in STD_LOGIC;
    P2S_dout_rdy : in STD_LOGIC;
    sig_dout_sig_flag : in STD_LOGIC;
    sig_dout_rdy_reg : in STD_LOGIC;
    mcu_config_din_vld : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_tx_mcu_0_0_counter : entity is "counter";
end ofdm_tx_tx_mcu_0_0_counter;

architecture STRUCTURE of ofdm_tx_tx_mcu_0_0_counter is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal \sig_dout_rate_con[3]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \din_r[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sig_dout_rate_con[3]_i_3\ : label is "soft_lutpair5";
begin
  rst_n_0 <= \^rst_n_0\;
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF4000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \sig_dout_rate_con_reg[1]\,
      I2 => P2S_dout_rdy,
      I3 => sig_dout_sig_flag,
      I4 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF8000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \sig_dout_rate_con_reg[1]\,
      I2 => P2S_dout_rdy,
      I3 => sig_dout_sig_flag,
      I4 => \cnt_reg_n_0_[1]\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg_n_0_[1]\
    );
\din_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \sig_dout_rate_con_reg[1]\,
      I1 => Q(16),
      I2 => \cnt_reg_n_0_[0]\,
      I3 => Q(9),
      I4 => \cnt_reg_n_0_[1]\,
      I5 => Q(1),
      O => sig_dout_vld_reg_5
    );
\din_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \sig_dout_rate_con_reg[1]\,
      I1 => Q(15),
      I2 => \cnt_reg_n_0_[0]\,
      I3 => Q(8),
      I4 => \cnt_reg_n_0_[1]\,
      I5 => Q(0),
      O => sig_dout_vld_reg_4
    );
\din_r[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \sig_dout_rate_con_reg[1]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => Q(7),
      I3 => \cnt_reg_n_0_[0]\,
      I4 => Q(14),
      O => sig_dout_vld_reg_3
    );
\din_r[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \sig_dout_rate_con_reg[1]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => Q(6),
      I3 => \cnt_reg_n_0_[0]\,
      I4 => Q(13),
      O => sig_dout_vld_reg_2
    );
\din_r[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \sig_dout_rate_con_reg[1]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => Q(5),
      O => sig_dout_vld_reg_6
    );
\din_r[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \sig_dout_rate_con_reg[1]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => Q(4),
      I3 => \cnt_reg_n_0_[0]\,
      I4 => Q(12),
      O => sig_dout_vld_reg_1
    );
\din_r[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \sig_dout_rate_con_reg[1]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => Q(3),
      I3 => \cnt_reg_n_0_[0]\,
      I4 => Q(11),
      O => sig_dout_vld_reg_0
    );
\din_r[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \sig_dout_rate_con_reg[1]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => Q(2),
      I3 => \cnt_reg_n_0_[0]\,
      I4 => Q(10),
      O => sig_dout_vld_reg
    );
mcu_config_dout_rdy_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
\sig_dout_rate_con[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888888888888"
    )
        port map (
      I0 => mcu_config_din_vld,
      I1 => sig_dout_rdy_reg,
      I2 => \sig_dout_rate_con[3]_i_3_n_0\,
      I3 => \sig_dout_rate_con_reg[1]\,
      I4 => P2S_dout_rdy,
      I5 => sig_dout_sig_flag,
      O => mcu_config_din_vld_0(0)
    );
\sig_dout_rate_con[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      O => \sig_dout_rate_con[3]_i_3_n_0\
    );
sig_dout_rdy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => \sig_dout_rate_con[3]_i_3_n_0\,
      I1 => \sig_dout_rate_con_reg[1]\,
      I2 => P2S_dout_rdy,
      I3 => sig_dout_sig_flag,
      I4 => mcu_config_din_vld,
      I5 => sig_dout_rdy_reg,
      O => sig_dout_vld_reg_7
    );
sig_dout_sig_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF0000DFFFFFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \sig_dout_rate_con_reg[1]\,
      I3 => P2S_dout_rdy,
      I4 => sig_dout_sig_flag,
      I5 => sig_dout_rdy_reg,
      O => \cnt_reg[1]_0\
    );
sig_dout_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0F0F0F0DFFFFFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \sig_dout_rate_con_reg[1]\,
      I3 => P2S_dout_rdy,
      I4 => sig_dout_sig_flag,
      I5 => sig_dout_rdy_reg,
      O => \cnt_reg[1]_1\
    );
\sig_frame[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFFFFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \sig_dout_rate_con_reg[1]\,
      I3 => P2S_dout_rdy,
      I4 => sig_dout_sig_flag,
      I5 => sig_dout_rdy_reg,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ofdm_tx_tx_mcu_0_0_counter__parameterized0\ is
  port (
    mcu_mac_dout_rdy : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mcu_dout_sig_flag : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mcu_mac_din_vld_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[8]_0\ : in STD_LOGIC;
    P2S_dout_rdy : in STD_LOGIC;
    phy_rst_n : in STD_LOGIC;
    sig_dout_vld : in STD_LOGIC;
    mcu_mac_din_vld : in STD_LOGIC;
    mcu_mac_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \din_r_reg[0]\ : in STD_LOGIC;
    \din_r_reg[1]\ : in STD_LOGIC;
    \din_r_reg[2]\ : in STD_LOGIC;
    \din_r_reg[3]\ : in STD_LOGIC;
    \din_r_reg[4]\ : in STD_LOGIC;
    \din_r_reg[5]\ : in STD_LOGIC;
    \din_r_reg[6]\ : in STD_LOGIC;
    \din_r_reg[7]\ : in STD_LOGIC;
    dout_vld_reg : in STD_LOGIC;
    \dout_rdy0__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ofdm_tx_tx_mcu_0_0_counter__parameterized0\ : entity is "counter";
end \ofdm_tx_tx_mcu_0_0_counter__parameterized0\;

architecture STRUCTURE of \ofdm_tx_tx_mcu_0_0_counter__parameterized0\ is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal dout_vld_i_2_n_0 : STD_LOGIC;
  signal mcu_mac_dout_rdy_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of dout_vld_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of mcu_dout_sig_flag_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of mcu_mac_dout_rdy_INST_0_i_1 : label is "soft_lutpair4";
begin
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555555555555"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I2 => cnt_reg(3),
      I3 => cnt_reg(2),
      I4 => cnt_reg(7),
      I5 => cnt_reg(8),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA54AA55AA55AA55"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I2 => cnt_reg(3),
      I3 => cnt_reg(2),
      I4 => cnt_reg(7),
      I5 => cnt_reg(8),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => cnt_reg(3),
      I2 => cnt_reg(2),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515AAAA5555AAAA"
    )
        port map (
      I0 => \cnt[4]_i_2_n_0\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(5),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => cnt_reg(4),
      I5 => dout_vld_i_2_n_0,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => cnt_reg(2),
      O => \cnt[4]_i_2_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A1A5A5A5A5A5A5A"
    )
        port map (
      I0 => \cnt[5]_i_2_n_0\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(5),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => cnt_reg(4),
      I5 => dout_vld_i_2_n_0,
      O => \cnt[5]_i_1_n_0\
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(2),
      I2 => cnt_reg(1),
      I3 => cnt_reg(0),
      I4 => cnt_reg(3),
      O => \cnt[5]_i_2_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6626666666666666"
    )
        port map (
      I0 => \cnt[8]_i_3_n_0\,
      I1 => cnt_reg(6),
      I2 => cnt_reg(5),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => cnt_reg(4),
      I5 => dout_vld_i_2_n_0,
      O => \cnt[6]_i_1_n_0\
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => \cnt[6]_i_2_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A006A6A"
    )
        port map (
      I0 => cnt_reg(7),
      I1 => cnt_reg(6),
      I2 => \cnt[8]_i_3_n_0\,
      I3 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I4 => dout_vld_i_2_n_0,
      O => \cnt[7]_i_1_n_0\
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAAAAAAA"
    )
        port map (
      I0 => phy_rst_n,
      I1 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I2 => cnt_reg(3),
      I3 => cnt_reg(2),
      I4 => cnt_reg(7),
      I5 => cnt_reg(8),
      O => \cnt[8]_i_1_n_0\
    );
\cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA00006AAA6AAA"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => cnt_reg(7),
      I2 => \cnt[8]_i_3_n_0\,
      I3 => cnt_reg(6),
      I4 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I5 => dout_vld_i_2_n_0,
      O => \cnt[8]_i_2_n_0\
    );
\cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => cnt_reg(3),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => cnt_reg(2),
      I5 => cnt_reg(4),
      O => \cnt[8]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt_reg(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt_reg(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt_reg(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[3]_i_1_n_0\,
      Q => cnt_reg(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[4]_i_1_n_0\,
      Q => cnt_reg(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[5]_i_1_n_0\,
      Q => cnt_reg(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[6]_i_1_n_0\,
      Q => cnt_reg(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[7]_i_1_n_0\,
      Q => cnt_reg(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[8]_i_1_n_0\,
      CLR => \cnt_reg[8]_0\,
      D => \cnt[8]_i_2_n_0\,
      Q => cnt_reg(8)
    );
\din_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mcu_mac_din(0),
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => \din_r_reg[0]\,
      O => D(0)
    );
\din_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mcu_mac_din(1),
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => \din_r_reg[1]\,
      O => D(1)
    );
\din_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mcu_mac_din(2),
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => \din_r_reg[2]\,
      O => D(2)
    );
\din_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mcu_mac_din(3),
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => \din_r_reg[3]\,
      O => D(3)
    );
\din_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mcu_mac_din(4),
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => \din_r_reg[4]\,
      O => D(4)
    );
\din_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mcu_mac_din(5),
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => \din_r_reg[5]\,
      O => D(5)
    );
\din_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mcu_mac_din(6),
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => \din_r_reg[6]\,
      O => D(6)
    );
\din_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888088"
    )
        port map (
      I0 => P2S_dout_rdy,
      I1 => sig_dout_vld,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => dout_vld_i_2_n_0,
      I4 => mcu_mac_din_vld,
      O => E(0)
    );
\din_r[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mcu_mac_din(7),
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => \din_r_reg[7]\,
      O => D(7)
    );
dout_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FFFFFB08"
    )
        port map (
      I0 => mcu_mac_din_vld,
      I1 => dout_vld_i_2_n_0,
      I2 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I3 => sig_dout_vld,
      I4 => dout_vld_reg,
      I5 => \dout_rdy0__0\,
      O => mcu_mac_din_vld_0
    );
dout_vld_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt_reg(2),
      I2 => cnt_reg(7),
      I3 => cnt_reg(8),
      O => dout_vld_i_2_n_0
    );
mcu_dout_sig_flag_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I1 => cnt_reg(3),
      I2 => cnt_reg(2),
      I3 => cnt_reg(7),
      I4 => cnt_reg(8),
      O => mcu_dout_sig_flag
    );
mcu_mac_dout_rdy_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => mcu_mac_dout_rdy_INST_0_i_1_n_0,
      I1 => cnt_reg(3),
      I2 => cnt_reg(2),
      I3 => cnt_reg(7),
      I4 => cnt_reg(8),
      I5 => P2S_dout_rdy,
      O => mcu_mac_dout_rdy
    );
mcu_mac_dout_rdy_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(5),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => cnt_reg(4),
      O => mcu_mac_dout_rdy_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ofdm_tx_tx_mcu_0_0_counter__parameterized1\ is
  port (
    P2S_dout_rdy : out STD_LOGIC;
    \dout_rdy0__0\ : out STD_LOGIC;
    mcu_dout : out STD_LOGIC;
    mcu_din_rdy : in STD_LOGIC;
    \cnt_reg[2]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    \cnt_reg[2]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ofdm_tx_tx_mcu_0_0_counter__parameterized1\ : entity is "counter";
end \ofdm_tx_tx_mcu_0_0_counter__parameterized1\;

architecture STRUCTURE of \ofdm_tx_tx_mcu_0_0_counter__parameterized1\ is
  signal cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal mcu_dout_INST_0_i_1_n_0 : STD_LOGIC;
  signal mcu_dout_INST_0_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of dout_vld_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mcu_mac_dout_rdy_INST_0_i_2 : label is "soft_lutpair0";
begin
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mcu_din_rdy,
      I1 => \cnt_reg[2]_0\,
      I2 => cnt(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt(0),
      I1 => mcu_din_rdy,
      I2 => \cnt_reg[2]_0\,
      I3 => cnt(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(1),
      I2 => mcu_din_rdy,
      I3 => \cnt_reg[2]_0\,
      I4 => cnt(2),
      O => \cnt[2]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[2]_1\,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[2]_1\,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[2]_1\,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2)
    );
dout_vld_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(2),
      I2 => cnt(1),
      I3 => \cnt_reg[2]_0\,
      I4 => mcu_din_rdy,
      O => \dout_rdy0__0\
    );
mcu_dout_INST_0: unisim.vcomponents.MUXF7
     port map (
      I0 => mcu_dout_INST_0_i_1_n_0,
      I1 => mcu_dout_INST_0_i_2_n_0,
      O => mcu_dout,
      S => cnt(2)
    );
mcu_dout_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => cnt(1),
      I3 => Q(1),
      I4 => cnt(0),
      I5 => Q(0),
      O => mcu_dout_INST_0_i_1_n_0
    );
mcu_dout_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => cnt(1),
      I3 => Q(5),
      I4 => cnt(0),
      I5 => Q(4),
      O => mcu_dout_INST_0_i_2_n_0
    );
mcu_mac_dout_rdy_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => mcu_din_rdy,
      I1 => cnt(1),
      I2 => cnt(2),
      I3 => cnt(0),
      I4 => \cnt_reg[2]_0\,
      O => P2S_dout_rdy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_tx_mcu_0_0_Par2Ser is
  port (
    dout_vld_reg_0 : out STD_LOGIC;
    P2S_dout_rdy : out STD_LOGIC;
    \dout_rdy0__0\ : out STD_LOGIC;
    mcu_dout : out STD_LOGIC;
    dout_vld_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[2]\ : in STD_LOGIC;
    mcu_din_rdy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_tx_mcu_0_0_Par2Ser : entity is "Par2Ser";
end ofdm_tx_tx_mcu_0_0_Par2Ser;

architecture STRUCTURE of ofdm_tx_tx_mcu_0_0_Par2Ser is
  signal din_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dout_vld_reg_0\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \din_r_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[2]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[3]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[4]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[5]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[6]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[7]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TVALID";
begin
  dout_vld_reg_0 <= \^dout_vld_reg_0\;
\din_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \cnt_reg[2]\,
      D => D(0),
      Q => din_r(0)
    );
\din_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \cnt_reg[2]\,
      D => D(1),
      Q => din_r(1)
    );
\din_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \cnt_reg[2]\,
      D => D(2),
      Q => din_r(2)
    );
\din_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \cnt_reg[2]\,
      D => D(3),
      Q => din_r(3)
    );
\din_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \cnt_reg[2]\,
      D => D(4),
      Q => din_r(4)
    );
\din_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \cnt_reg[2]\,
      D => D(5),
      Q => din_r(5)
    );
\din_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \cnt_reg[2]\,
      D => D(6),
      Q => din_r(6)
    );
\din_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \cnt_reg[2]\,
      D => D(7),
      Q => din_r(7)
    );
dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[2]\,
      D => dout_vld_reg_1,
      Q => \^dout_vld_reg_0\
    );
u_counter_P2S: entity work.\ofdm_tx_tx_mcu_0_0_counter__parameterized1\
     port map (
      P2S_dout_rdy => P2S_dout_rdy,
      Q(7 downto 0) => din_r(7 downto 0),
      clk => clk,
      \cnt_reg[2]_0\ => \^dout_vld_reg_0\,
      \cnt_reg[2]_1\ => \cnt_reg[2]\,
      \dout_rdy0__0\ => \dout_rdy0__0\,
      mcu_din_rdy => mcu_din_rdy,
      mcu_dout => mcu_dout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_tx_mcu_0_0_tx_gen_pkt_sig is
  port (
    sig_dout_vld : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    sig_dout_vld_reg_0 : out STD_LOGIC;
    sig_dout_vld_reg_1 : out STD_LOGIC;
    sig_dout_vld_reg_2 : out STD_LOGIC;
    sig_dout_vld_reg_3 : out STD_LOGIC;
    sig_dout_vld_reg_4 : out STD_LOGIC;
    sig_dout_vld_reg_5 : out STD_LOGIC;
    sig_dout_vld_reg_6 : out STD_LOGIC;
    sig_dout_vld_reg_7 : out STD_LOGIC;
    mcu_dout_rate_con : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    P2S_dout_rdy : in STD_LOGIC;
    mcu_config_din_vld : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    mcu_config_din : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_tx_mcu_0_0_tx_gen_pkt_sig : entity is "tx_gen_pkt_sig";
end ofdm_tx_tx_mcu_0_0_tx_gen_pkt_sig;

architecture STRUCTURE of ofdm_tx_tx_mcu_0_0_tx_gen_pkt_sig is
  signal length : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^mcu_dout_rate_con\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^rst_n_0\ : STD_LOGIC;
  signal sig_dout_rate_con : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal sig_dout_rdy_reg_n_0 : STD_LOGIC;
  signal sig_dout_sig_flag : STD_LOGIC;
  signal \^sig_dout_vld\ : STD_LOGIC;
  signal sig_frame : STD_LOGIC_VECTOR ( 23 downto 6 );
  signal \sig_frame[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_frame[6]_i_2_n_0\ : STD_LOGIC;
  signal \sig_frame[6]_i_3_n_0\ : STD_LOGIC;
  signal u_counter_n_0 : STD_LOGIC;
  signal u_counter_n_1 : STD_LOGIC;
  signal u_counter_n_11 : STD_LOGIC;
  signal u_counter_n_12 : STD_LOGIC;
  signal u_counter_n_13 : STD_LOGIC;
begin
  mcu_dout_rate_con(2 downto 0) <= \^mcu_dout_rate_con\(2 downto 0);
  rst_n_0 <= \^rst_n_0\;
  sig_dout_vld <= \^sig_dout_vld\;
\length_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(17),
      Q => length(0)
    );
\length_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(7),
      Q => length(10)
    );
\length_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(6),
      Q => length(11)
    );
\length_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(16),
      Q => length(1)
    );
\length_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(15),
      Q => length(2)
    );
\length_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(14),
      Q => length(3)
    );
\length_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(13),
      Q => length(4)
    );
\length_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(12),
      Q => length(5)
    );
\length_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(11),
      Q => length(6)
    );
\length_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(10),
      Q => length(7)
    );
\length_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(9),
      Q => length(8)
    );
\length_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => mcu_config_din(8),
      Q => length(9)
    );
\sig_dout_rate_con[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400010000040020"
    )
        port map (
      I0 => mcu_config_din(0),
      I1 => mcu_config_din(5),
      I2 => mcu_config_din(3),
      I3 => mcu_config_din(4),
      I4 => mcu_config_din(2),
      I5 => mcu_config_din(1),
      O => sig_dout_rate_con(1)
    );
\sig_dout_rate_con[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFBEBFF"
    )
        port map (
      I0 => mcu_config_din(0),
      I1 => mcu_config_din(5),
      I2 => mcu_config_din(3),
      I3 => mcu_config_din(4),
      I4 => mcu_config_din(2),
      I5 => mcu_config_din(1),
      O => sig_dout_rate_con(2)
    );
\sig_dout_rate_con[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDEFFEFF7"
    )
        port map (
      I0 => mcu_config_din(2),
      I1 => mcu_config_din(3),
      I2 => mcu_config_din(5),
      I3 => mcu_config_din(4),
      I4 => mcu_config_din(1),
      I5 => mcu_config_din(0),
      O => sig_dout_rate_con(3)
    );
\sig_dout_rate_con_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_1,
      CLR => \^rst_n_0\,
      D => sig_dout_rate_con(1),
      Q => \^mcu_dout_rate_con\(0)
    );
\sig_dout_rate_con_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_1,
      D => sig_dout_rate_con(2),
      PRE => \^rst_n_0\,
      Q => \^mcu_dout_rate_con\(1)
    );
\sig_dout_rate_con_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_1,
      D => sig_dout_rate_con(3),
      PRE => \^rst_n_0\,
      Q => \^mcu_dout_rate_con\(2)
    );
sig_dout_rdy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => u_counter_n_11,
      PRE => \^rst_n_0\,
      Q => sig_dout_rdy_reg_n_0
    );
sig_dout_sig_flag_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => u_counter_n_12,
      PRE => \^rst_n_0\,
      Q => sig_dout_sig_flag
    );
sig_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => u_counter_n_13,
      Q => \^sig_dout_vld\
    );
\sig_frame[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \sig_frame[6]_i_2_n_0\,
      I1 => \sig_frame[6]_i_3_n_0\,
      I2 => length(3),
      I3 => length(1),
      I4 => length(0),
      O => \sig_frame[6]_i_1_n_0\
    );
\sig_frame[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => length(10),
      I1 => length(9),
      I2 => \^mcu_dout_rate_con\(1),
      I3 => \^mcu_dout_rate_con\(2),
      I4 => length(11),
      I5 => \^mcu_dout_rate_con\(0),
      O => \sig_frame[6]_i_2_n_0\
    );
\sig_frame[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => length(5),
      I1 => length(2),
      I2 => length(7),
      I3 => length(8),
      I4 => length(4),
      I5 => length(6),
      O => \sig_frame[6]_i_3_n_0\
    );
\sig_frame_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(3),
      Q => sig_frame(10)
    );
\sig_frame_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(4),
      Q => sig_frame(11)
    );
\sig_frame_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(5),
      Q => sig_frame(12)
    );
\sig_frame_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(6),
      Q => sig_frame(13)
    );
\sig_frame_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(7),
      Q => sig_frame(14)
    );
\sig_frame_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(8),
      Q => sig_frame(15)
    );
\sig_frame_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(9),
      Q => sig_frame(16)
    );
\sig_frame_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(10),
      Q => sig_frame(17)
    );
\sig_frame_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(11),
      Q => sig_frame(18)
    );
\sig_frame_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => '1',
      Q => sig_frame(20)
    );
\sig_frame_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => \^mcu_dout_rate_con\(0),
      Q => sig_frame(21)
    );
\sig_frame_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => \^mcu_dout_rate_con\(1),
      Q => sig_frame(22)
    );
\sig_frame_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => \^mcu_dout_rate_con\(2),
      Q => sig_frame(23)
    );
\sig_frame_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => \sig_frame[6]_i_1_n_0\,
      Q => sig_frame(6)
    );
\sig_frame_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(0),
      Q => sig_frame(7)
    );
\sig_frame_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(1),
      Q => sig_frame(8)
    );
\sig_frame_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_counter_n_0,
      CLR => \^rst_n_0\,
      D => length(2),
      Q => sig_frame(9)
    );
u_counter: entity work.ofdm_tx_tx_mcu_0_0_counter
     port map (
      E(0) => u_counter_n_0,
      P2S_dout_rdy => P2S_dout_rdy,
      Q(16 downto 13) => sig_frame(23 downto 20),
      Q(12 downto 0) => sig_frame(18 downto 6),
      clk => clk,
      \cnt_reg[1]_0\ => u_counter_n_12,
      \cnt_reg[1]_1\ => u_counter_n_13,
      mcu_config_din_vld => mcu_config_din_vld,
      mcu_config_din_vld_0(0) => u_counter_n_1,
      rst_n => rst_n,
      rst_n_0 => \^rst_n_0\,
      \sig_dout_rate_con_reg[1]\ => \^sig_dout_vld\,
      sig_dout_rdy_reg => sig_dout_rdy_reg_n_0,
      sig_dout_sig_flag => sig_dout_sig_flag,
      sig_dout_vld_reg => sig_dout_vld_reg_0,
      sig_dout_vld_reg_0 => sig_dout_vld_reg_1,
      sig_dout_vld_reg_1 => sig_dout_vld_reg_2,
      sig_dout_vld_reg_2 => sig_dout_vld_reg_3,
      sig_dout_vld_reg_3 => sig_dout_vld_reg_4,
      sig_dout_vld_reg_4 => sig_dout_vld_reg_5,
      sig_dout_vld_reg_5 => sig_dout_vld_reg_6,
      sig_dout_vld_reg_6 => sig_dout_vld_reg_7,
      sig_dout_vld_reg_7 => u_counter_n_11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_tx_mcu_0_0_tx_mcu is
  port (
    mcu_mac_dout_rdy : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    mcu_dout_rate_con : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dout_vld_reg : out STD_LOGIC;
    mcu_dout_scram_seed : out STD_LOGIC_VECTOR ( 0 to 0 );
    mcu_dout_scram_load : out STD_LOGIC;
    mcu_dout_sig_flag : out STD_LOGIC;
    mcu_dout : out STD_LOGIC;
    mcu_config_dout_rdy : out STD_LOGIC;
    mcu_config_din_vld : in STD_LOGIC;
    clk : in STD_LOGIC;
    mcu_config_din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    mcu_din_rdy : in STD_LOGIC;
    mcu_mac_din_vld : in STD_LOGIC;
    mcu_mac_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mcu_config_din_start : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    tx_end : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_tx_mcu_0_0_tx_mcu : entity is "tx_mcu";
end ofdm_tx_tx_mcu_0_0_tx_mcu;

architecture STRUCTURE of ofdm_tx_tx_mcu_0_0_tx_mcu is
  signal P2S_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal P2S_dout_rdy : STD_LOGIC;
  signal \dout_rdy0__0\ : STD_LOGIC;
  signal \^dout_vld_reg\ : STD_LOGIC;
  signal \^mcu_config_dout_rdy\ : STD_LOGIC;
  signal mcu_config_dout_rdy_i_1_n_0 : STD_LOGIC;
  signal mcu_dout_scram_load_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^phy_rst_n\ : STD_LOGIC;
  signal sig_dout_vld : STD_LOGIC;
  signal u_counter_n_11 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_1 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_2 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_3 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_4 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_5 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_6 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_7 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_8 : STD_LOGIC;
  signal u_tx_gen_pkt_sig_n_9 : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of mcu_config_dout_rdy_reg : label is "xilinx.com:interface:axis:1.0 s_axis_mcu_config TREADY";
begin
  dout_vld_reg <= \^dout_vld_reg\;
  mcu_config_dout_rdy <= \^mcu_config_dout_rdy\;
  phy_rst_n <= \^phy_rst_n\;
Par2Ser_u2: entity work.ofdm_tx_tx_mcu_0_0_Par2Ser
     port map (
      D(7 downto 0) => P2S_din(7 downto 0),
      E(0) => wr_en,
      P2S_dout_rdy => P2S_dout_rdy,
      clk => clk,
      \cnt_reg[2]\ => u_tx_gen_pkt_sig_n_1,
      \dout_rdy0__0\ => \dout_rdy0__0\,
      dout_vld_reg_0 => \^dout_vld_reg\,
      dout_vld_reg_1 => u_counter_n_11,
      mcu_din_rdy => mcu_din_rdy,
      mcu_dout => mcu_dout
    );
mcu_config_dout_rdy_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => tx_end,
      I1 => mcu_config_din_vld,
      I2 => \^mcu_config_dout_rdy\,
      O => mcu_config_dout_rdy_i_1_n_0
    );
mcu_config_dout_rdy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => mcu_config_dout_rdy_i_1_n_0,
      PRE => u_tx_gen_pkt_sig_n_1,
      Q => \^mcu_config_dout_rdy\
    );
mcu_dout_scram_load_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^phy_rst_n\,
      O => mcu_dout_scram_load_i_1_n_0
    );
mcu_dout_scram_load_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_tx_gen_pkt_sig_n_1,
      D => mcu_dout_scram_load_i_1_n_0,
      Q => mcu_dout_scram_load
    );
\mcu_dout_scram_seed_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_tx_gen_pkt_sig_n_1,
      D => '1',
      Q => mcu_dout_scram_seed(0)
    );
phy_rst_n_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mcu_config_din_start,
      O => p_0_in
    );
phy_rst_n_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      PRE => u_tx_gen_pkt_sig_n_1,
      Q => \^phy_rst_n\
    );
u_counter: entity work.\ofdm_tx_tx_mcu_0_0_counter__parameterized0\
     port map (
      D(7 downto 0) => P2S_din(7 downto 0),
      E(0) => wr_en,
      P2S_dout_rdy => P2S_dout_rdy,
      clk => clk,
      \cnt_reg[8]_0\ => u_tx_gen_pkt_sig_n_1,
      \din_r_reg[0]\ => u_tx_gen_pkt_sig_n_8,
      \din_r_reg[1]\ => u_tx_gen_pkt_sig_n_7,
      \din_r_reg[2]\ => u_tx_gen_pkt_sig_n_6,
      \din_r_reg[3]\ => u_tx_gen_pkt_sig_n_5,
      \din_r_reg[4]\ => u_tx_gen_pkt_sig_n_9,
      \din_r_reg[5]\ => u_tx_gen_pkt_sig_n_4,
      \din_r_reg[6]\ => u_tx_gen_pkt_sig_n_3,
      \din_r_reg[7]\ => u_tx_gen_pkt_sig_n_2,
      \dout_rdy0__0\ => \dout_rdy0__0\,
      dout_vld_reg => \^dout_vld_reg\,
      mcu_dout_sig_flag => mcu_dout_sig_flag,
      mcu_mac_din(7 downto 0) => mcu_mac_din(7 downto 0),
      mcu_mac_din_vld => mcu_mac_din_vld,
      mcu_mac_din_vld_0 => u_counter_n_11,
      mcu_mac_dout_rdy => mcu_mac_dout_rdy,
      phy_rst_n => \^phy_rst_n\,
      sig_dout_vld => sig_dout_vld
    );
u_tx_gen_pkt_sig: entity work.ofdm_tx_tx_mcu_0_0_tx_gen_pkt_sig
     port map (
      P2S_dout_rdy => P2S_dout_rdy,
      clk => clk,
      mcu_config_din(17 downto 0) => mcu_config_din(17 downto 0),
      mcu_config_din_vld => mcu_config_din_vld,
      mcu_dout_rate_con(2 downto 0) => mcu_dout_rate_con(2 downto 0),
      rst_n => rst_n,
      rst_n_0 => u_tx_gen_pkt_sig_n_1,
      sig_dout_vld => sig_dout_vld,
      sig_dout_vld_reg_0 => u_tx_gen_pkt_sig_n_2,
      sig_dout_vld_reg_1 => u_tx_gen_pkt_sig_n_3,
      sig_dout_vld_reg_2 => u_tx_gen_pkt_sig_n_4,
      sig_dout_vld_reg_3 => u_tx_gen_pkt_sig_n_5,
      sig_dout_vld_reg_4 => u_tx_gen_pkt_sig_n_6,
      sig_dout_vld_reg_5 => u_tx_gen_pkt_sig_n_7,
      sig_dout_vld_reg_6 => u_tx_gen_pkt_sig_n_8,
      sig_dout_vld_reg_7 => u_tx_gen_pkt_sig_n_9
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_tx_mcu_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    mcu_config_din : in STD_LOGIC_VECTOR ( 20 downto 0 );
    mcu_config_din_vld : in STD_LOGIC;
    mcu_config_din_start : in STD_LOGIC;
    mcu_config_dout_rdy : out STD_LOGIC;
    mcu_mac_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mcu_mac_din_vld : in STD_LOGIC;
    mcu_mac_dout_rdy : out STD_LOGIC;
    mcu_din_rdy : in STD_LOGIC;
    mcu_dout : out STD_LOGIC;
    mcu_dout_vld : out STD_LOGIC;
    mcu_dout_sig_flag : out STD_LOGIC;
    mcu_dout_rate_con : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mcu_dout_scram_seed : out STD_LOGIC_VECTOR ( 6 downto 0 );
    mcu_dout_scram_load : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    tx_end : in STD_LOGIC;
    TxPWR : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ofdm_tx_tx_mcu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ofdm_tx_tx_mcu_0_0 : entity is "ofdm_tx_tx_mcu_0_0,tx_mcu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ofdm_tx_tx_mcu_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ofdm_tx_tx_mcu_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ofdm_tx_tx_mcu_0_0 : entity is "tx_mcu,Vivado 2023.1";
end ofdm_tx_tx_mcu_0_0;

architecture STRUCTURE of ofdm_tx_tx_mcu_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^mcu_config_din\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \^mcu_dout_rate_con\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^mcu_dout_scram_seed\ : STD_LOGIC_VECTOR ( 4 to 4 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_mcu_config:s_axis_mcu_mac:m_axis_mcu, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mcu_config_din_start : signal is "xilinx.com:interface:axis:1.0 s_axis_mcu_config TSTRB";
  attribute X_INTERFACE_INFO of mcu_config_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_mcu_config TVALID";
  attribute X_INTERFACE_INFO of mcu_config_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_mcu_config TREADY";
  attribute X_INTERFACE_PARAMETER of mcu_config_dout_rdy : signal is "XIL_INTERFACENAME s_axis_mcu_config, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mcu_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_mcu TREADY";
  attribute X_INTERFACE_INFO of mcu_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_mcu TDATA";
  attribute X_INTERFACE_INFO of mcu_dout_sig_flag : signal is "xilinx.com:interface:axis:1.0 m_axis_mcu TSTRB";
  attribute X_INTERFACE_INFO of mcu_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_mcu TVALID";
  attribute X_INTERFACE_INFO of mcu_mac_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TVALID";
  attribute X_INTERFACE_INFO of mcu_mac_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TREADY";
  attribute X_INTERFACE_PARAMETER of mcu_mac_dout_rdy : signal is "XIL_INTERFACENAME s_axis_mcu_mac, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of phy_rst_n : signal is "xilinx.com:signal:reset:1.0 phy_rst_n RST";
  attribute X_INTERFACE_PARAMETER of phy_rst_n : signal is "XIL_INTERFACENAME phy_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mcu_config_din : signal is "xilinx.com:interface:axis:1.0 s_axis_mcu_config TDATA";
  attribute X_INTERFACE_INFO of mcu_dout_rate_con : signal is "xilinx.com:interface:axis:1.0 m_axis_mcu TID";
  attribute X_INTERFACE_PARAMETER of mcu_dout_rate_con : signal is "XIL_INTERFACENAME m_axis_mcu, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mcu_mac_din : signal is "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TDATA";
begin
  TxPWR(2 downto 0) <= \^mcu_config_din\(2 downto 0);
  \^mcu_config_din\(20 downto 0) <= mcu_config_din(20 downto 0);
  mcu_dout_rate_con(3 downto 1) <= \^mcu_dout_rate_con\(3 downto 1);
  mcu_dout_rate_con(0) <= \<const1>\;
  mcu_dout_scram_seed(6) <= \^mcu_dout_scram_seed\(4);
  mcu_dout_scram_seed(5) <= \<const0>\;
  mcu_dout_scram_seed(4) <= \^mcu_dout_scram_seed\(4);
  mcu_dout_scram_seed(3) <= \^mcu_dout_scram_seed\(4);
  mcu_dout_scram_seed(2) <= \^mcu_dout_scram_seed\(4);
  mcu_dout_scram_seed(1) <= \<const0>\;
  mcu_dout_scram_seed(0) <= \^mcu_dout_scram_seed\(4);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.ofdm_tx_tx_mcu_0_0_tx_mcu
     port map (
      clk => clk,
      dout_vld_reg => mcu_dout_vld,
      mcu_config_din(17 downto 0) => \^mcu_config_din\(20 downto 3),
      mcu_config_din_start => mcu_config_din_start,
      mcu_config_din_vld => mcu_config_din_vld,
      mcu_config_dout_rdy => mcu_config_dout_rdy,
      mcu_din_rdy => mcu_din_rdy,
      mcu_dout => mcu_dout,
      mcu_dout_rate_con(2 downto 0) => \^mcu_dout_rate_con\(3 downto 1),
      mcu_dout_scram_load => mcu_dout_scram_load,
      mcu_dout_scram_seed(0) => \^mcu_dout_scram_seed\(4),
      mcu_dout_sig_flag => mcu_dout_sig_flag,
      mcu_mac_din(7 downto 0) => mcu_mac_din(7 downto 0),
      mcu_mac_din_vld => mcu_mac_din_vld,
      mcu_mac_dout_rdy => mcu_mac_dout_rdy,
      phy_rst_n => phy_rst_n,
      rst_n => rst_n,
      tx_end => tx_end
    );
end STRUCTURE;
