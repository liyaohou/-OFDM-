-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:16 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_puncture_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_puncture_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  port (
    cnt_last : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    punt_din_vld_0 : out STD_LOGIC;
    dout_vld_reg : out STD_LOGIC;
    punt_dout_rdy : out STD_LOGIC;
    clk : in STD_LOGIC;
    din_r : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_n : in STD_LOGIC;
    punt_din_vld : in STD_LOGIC;
    punt_din_rdy : in STD_LOGIC;
    \cnt_reg[0]_0\ : in STD_LOGIC;
    punt_dout : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \^cnt_last\ : STD_LOGIC;
  signal punt_dout_i_3_n_0 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \cnt_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute SOFT_HLUTNM of dout_vld_i_1 : label is "soft_lutpair0";
begin
  cnt_last <= \^cnt_last\;
  rst_n_0 <= \^rst_n_0\;
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg[0]_0\,
      I1 => punt_din_rdy,
      I2 => \^cnt_last\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt_last\
    );
dout_vld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFA"
    )
        port map (
      I0 => punt_din_vld,
      I1 => punt_din_rdy,
      I2 => \cnt_reg[0]_0\,
      I3 => \^cnt_last\,
      O => punt_din_vld_0
    );
punt_dout_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBF00808080"
    )
        port map (
      I0 => punt_dout_i_3_n_0,
      I1 => \cnt_reg[0]_0\,
      I2 => punt_din_rdy,
      I3 => cnt(2),
      I4 => cnt(1),
      I5 => punt_dout,
      O => dout_vld_reg
    );
punt_dout_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
punt_dout_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E2E2E200E2"
    )
        port map (
      I0 => din_r(0),
      I1 => \^cnt_last\,
      I2 => din_r(1),
      I3 => cnt(2),
      I4 => cnt(0),
      I5 => cnt(1),
      O => punt_dout_i_3_n_0
    );
punt_dout_rdy_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => punt_din_rdy,
      I1 => \^cnt_last\,
      I2 => \cnt_reg[0]_0\,
      O => punt_dout_rdy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_in is
  port (
    \cnt_reg[0]_0\ : out STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 2 downto 0 );
    punt_din_rdy : in STD_LOGIC;
    P2S_dout_vld : in STD_LOGIC;
    punt_dout_vld : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \cnt_reg[2]_0\ : in STD_LOGIC;
    \cnt_reg[2]_1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[0]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_in;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_in is
  signal \^cnt\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
begin
  cnt(2 downto 0) <= \^cnt\(2 downto 0);
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14555514AAAAAAAA"
    )
        port map (
      I0 => rd_en,
      I1 => \^cnt\(1),
      I2 => \cnt_reg[2]_0\,
      I3 => \^cnt\(2),
      I4 => \cnt_reg[2]_1\,
      I5 => \^cnt\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24666624CCCCCCCC"
    )
        port map (
      I0 => rd_en,
      I1 => \^cnt\(1),
      I2 => \cnt_reg[2]_0\,
      I3 => \^cnt\(2),
      I4 => \cnt_reg[2]_1\,
      I5 => \^cnt\(0),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34887708FF00FF00"
    )
        port map (
      I0 => rd_en,
      I1 => \^cnt\(1),
      I2 => \cnt_reg[2]_0\,
      I3 => \^cnt\(2),
      I4 => \cnt_reg[2]_1\,
      I5 => \^cnt\(0),
      O => \cnt[2]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]_1\,
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt\(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]_1\,
      D => \cnt[1]_i_1_n_0\,
      Q => \^cnt\(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]_1\,
      D => \cnt[2]_i_1_n_0\,
      Q => \^cnt\(2)
    );
punt_dout_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7FF00FF27000000"
    )
        port map (
      I0 => \^cnt\(0),
      I1 => \^cnt\(1),
      I2 => \^cnt\(2),
      I3 => punt_din_rdy,
      I4 => P2S_dout_vld,
      I5 => punt_dout_vld,
      O => \cnt_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser is
  port (
    rst_n_0 : out STD_LOGIC;
    P2S_dout_vld : out STD_LOGIC;
    dout_vld_reg_0 : out STD_LOGIC;
    punt_din_sig_flag_0 : out STD_LOGIC;
    punt_dout_rdy : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    clk : in STD_LOGIC;
    cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_n : in STD_LOGIC;
    punt_din_vld : in STD_LOGIC;
    punt_din_rdy : in STD_LOGIC;
    punt_dout : in STD_LOGIC;
    punt_din_sig_flag : in STD_LOGIC;
    punt_dout_sig_flag : in STD_LOGIC;
    punt_din : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser is
  signal \^p2s_dout_vld\ : STD_LOGIC;
  signal cnt_last : STD_LOGIC;
  signal din_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \din_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \din_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal u_counter_P2S_n_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[2]_i_2\ : label is "soft_lutpair1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \din_r_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TVALID";
  attribute SOFT_HLUTNM of punt_dout_sig_flag_i_1 : label is "soft_lutpair1";
begin
  P2S_dout_vld <= \^p2s_dout_vld\;
  rst_n_0 <= \^rst_n_0\;
\cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => punt_din_rdy,
      I1 => \^p2s_dout_vld\,
      O => rd_en
    );
\din_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEFFFFA2220000"
    )
        port map (
      I0 => punt_din(0),
      I1 => \^p2s_dout_vld\,
      I2 => cnt_last,
      I3 => punt_din_rdy,
      I4 => punt_din_vld,
      I5 => din_r(0),
      O => \din_r[0]_i_1_n_0\
    );
\din_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEFFFFA2220000"
    )
        port map (
      I0 => punt_din(1),
      I1 => \^p2s_dout_vld\,
      I2 => cnt_last,
      I3 => punt_din_rdy,
      I4 => punt_din_vld,
      I5 => din_r(1),
      O => \din_r[1]_i_1_n_0\
    );
\din_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \din_r[0]_i_1_n_0\,
      Q => din_r(0)
    );
\din_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \din_r[1]_i_1_n_0\,
      Q => din_r(1)
    );
dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => u_counter_P2S_n_2,
      Q => \^p2s_dout_vld\
    );
punt_dout_sig_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => punt_din_sig_flag,
      I1 => punt_din_rdy,
      I2 => \^p2s_dout_vld\,
      I3 => punt_dout_sig_flag,
      O => punt_din_sig_flag_0
    );
u_counter_P2S: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
     port map (
      clk => clk,
      cnt(2 downto 0) => cnt(2 downto 0),
      cnt_last => cnt_last,
      \cnt_reg[0]_0\ => \^p2s_dout_vld\,
      din_r(1 downto 0) => din_r(1 downto 0),
      dout_vld_reg => dout_vld_reg_0,
      punt_din_rdy => punt_din_rdy,
      punt_din_vld => punt_din_vld,
      punt_din_vld_0 => u_counter_P2S_n_2,
      punt_dout => punt_dout,
      punt_dout_rdy => punt_dout_rdy,
      rst_n => rst_n,
      rst_n_0 => \^rst_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_puncture is
  port (
    punt_dout_Map_Type : out STD_LOGIC_VECTOR ( 1 downto 0 );
    punt_dout_rdy : out STD_LOGIC;
    punt_dout : out STD_LOGIC;
    punt_dout_vld : out STD_LOGIC;
    punt_dout_sig_flag : out STD_LOGIC;
    punt_din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    punt_din_rdy : in STD_LOGIC;
    punt_din_vld : in STD_LOGIC;
    clk : in STD_LOGIC;
    punt_din_rate_con : in STD_LOGIC_VECTOR ( 3 downto 0 );
    punt_din_sig_flag : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_puncture;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_puncture is
  signal P2S_dout_vld : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_max[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_max[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_max_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_max_reg_n_0_[2]\ : STD_LOGIC;
  signal \^punt_dout\ : STD_LOGIC;
  signal \punt_dout_Map_Type[0]_i_1_n_0\ : STD_LOGIC;
  signal \punt_dout_Map_Type[1]_i_1_n_0\ : STD_LOGIC;
  signal \^punt_dout_sig_flag\ : STD_LOGIC;
  signal \^punt_dout_vld\ : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal u_Par2Ser_n_0 : STD_LOGIC;
  signal u_Par2Ser_n_2 : STD_LOGIC;
  signal u_Par2Ser_n_3 : STD_LOGIC;
  signal u_counter_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_max[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \punt_dout_Map_Type[0]_i_1\ : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \punt_dout_Map_Type_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_punt TID";
  attribute X_INTERFACE_INFO of \punt_dout_Map_Type_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_punt TID";
  attribute X_INTERFACE_INFO of punt_dout_reg : label is "xilinx.com:interface:axis:1.0 m_axis_punt TDATA";
  attribute X_INTERFACE_INFO of punt_dout_sig_flag_reg : label is "xilinx.com:interface:axis:1.0 m_axis_punt TSTRB";
  attribute X_INTERFACE_INFO of punt_dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_punt TVALID";
begin
  punt_dout <= \^punt_dout\;
  punt_dout_sig_flag <= \^punt_dout_sig_flag\;
  punt_dout_vld <= \^punt_dout_vld\;
\cnt_max[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001FF00000100"
    )
        port map (
      I0 => punt_din_rate_con(3),
      I1 => punt_din_rate_con(1),
      I2 => punt_din_rate_con(2),
      I3 => punt_din_rate_con(0),
      I4 => punt_din_sig_flag,
      I5 => \cnt_max_reg_n_0_[1]\,
      O => \cnt_max[1]_i_1_n_0\
    );
\cnt_max[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => punt_din_rate_con(1),
      I1 => punt_din_rate_con(0),
      I2 => punt_din_sig_flag,
      I3 => \cnt_max_reg_n_0_[2]\,
      O => \cnt_max[2]_i_1_n_0\
    );
\cnt_max_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_Par2Ser_n_0,
      D => \cnt_max[1]_i_1_n_0\,
      Q => \cnt_max_reg_n_0_[1]\
    );
\cnt_max_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_Par2Ser_n_0,
      D => \cnt_max[2]_i_1_n_0\,
      Q => \cnt_max_reg_n_0_[2]\
    );
\punt_dout_Map_Type[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => punt_din_rate_con(0),
      I1 => punt_din_sig_flag,
      I2 => punt_din_rate_con(3),
      O => \punt_dout_Map_Type[0]_i_1_n_0\
    );
\punt_dout_Map_Type[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => punt_din_rate_con(0),
      I1 => punt_din_sig_flag,
      I2 => punt_din_rate_con(2),
      O => \punt_dout_Map_Type[1]_i_1_n_0\
    );
\punt_dout_Map_Type_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_Par2Ser_n_0,
      D => \punt_dout_Map_Type[0]_i_1_n_0\,
      Q => punt_dout_Map_Type(0)
    );
\punt_dout_Map_Type_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_Par2Ser_n_0,
      D => \punt_dout_Map_Type[1]_i_1_n_0\,
      Q => punt_dout_Map_Type(1)
    );
punt_dout_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_Par2Ser_n_0,
      D => u_Par2Ser_n_2,
      Q => \^punt_dout\
    );
punt_dout_sig_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_Par2Ser_n_0,
      D => u_Par2Ser_n_3,
      Q => \^punt_dout_sig_flag\
    );
punt_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_Par2Ser_n_0,
      D => u_counter_n_0,
      Q => \^punt_dout_vld\
    );
u_Par2Ser: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser
     port map (
      P2S_dout_vld => P2S_dout_vld,
      clk => clk,
      cnt(2 downto 0) => cnt(2 downto 0),
      dout_vld_reg_0 => u_Par2Ser_n_2,
      punt_din(1 downto 0) => punt_din(1 downto 0),
      punt_din_rdy => punt_din_rdy,
      punt_din_sig_flag => punt_din_sig_flag,
      punt_din_sig_flag_0 => u_Par2Ser_n_3,
      punt_din_vld => punt_din_vld,
      punt_dout => \^punt_dout\,
      punt_dout_rdy => punt_dout_rdy,
      punt_dout_sig_flag => \^punt_dout_sig_flag\,
      rd_en => rd_en,
      rst_n => rst_n,
      rst_n_0 => u_Par2Ser_n_0
    );
u_counter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_in
     port map (
      P2S_dout_vld => P2S_dout_vld,
      clk => clk,
      cnt(2 downto 0) => cnt(2 downto 0),
      \cnt_reg[0]_0\ => u_counter_n_0,
      \cnt_reg[0]_1\ => u_Par2Ser_n_0,
      \cnt_reg[2]_0\ => \cnt_max_reg_n_0_[1]\,
      \cnt_reg[2]_1\ => \cnt_max_reg_n_0_[2]\,
      punt_din_rdy => punt_din_rdy,
      punt_dout_vld => \^punt_dout_vld\,
      rd_en => rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    punt_din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    punt_din_vld : in STD_LOGIC;
    punt_din_rdy : in STD_LOGIC;
    punt_din_sig_flag : in STD_LOGIC;
    punt_din_rate_con : in STD_LOGIC_VECTOR ( 3 downto 0 );
    punt_dout : out STD_LOGIC;
    punt_dout_vld : out STD_LOGIC;
    punt_dout_rdy : out STD_LOGIC;
    punt_dout_sig_flag : out STD_LOGIC;
    punt_dout_Map_Type : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ofdm_tx_puncture_0_0,puncture,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "puncture,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_punt:m_axis_punt, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of punt_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_punt TREADY";
  attribute X_INTERFACE_INFO of punt_din_sig_flag : signal is "xilinx.com:interface:axis:1.0 s_axis_punt TSTRB";
  attribute X_INTERFACE_INFO of punt_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_punt TVALID";
  attribute X_INTERFACE_INFO of punt_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_punt TDATA";
  attribute X_INTERFACE_INFO of punt_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_punt TREADY";
  attribute X_INTERFACE_PARAMETER of punt_dout_rdy : signal is "XIL_INTERFACENAME s_axis_punt, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of punt_dout_sig_flag : signal is "xilinx.com:interface:axis:1.0 m_axis_punt TSTRB";
  attribute X_INTERFACE_INFO of punt_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_punt TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of punt_din : signal is "xilinx.com:interface:axis:1.0 s_axis_punt TDATA";
  attribute X_INTERFACE_INFO of punt_din_rate_con : signal is "xilinx.com:interface:axis:1.0 s_axis_punt TID";
  attribute X_INTERFACE_INFO of punt_dout_Map_Type : signal is "xilinx.com:interface:axis:1.0 m_axis_punt TID";
  attribute X_INTERFACE_PARAMETER of punt_dout_Map_Type : signal is "XIL_INTERFACENAME m_axis_punt, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_puncture
     port map (
      clk => clk,
      punt_din(1 downto 0) => punt_din(1 downto 0),
      punt_din_rate_con(3 downto 0) => punt_din_rate_con(3 downto 0),
      punt_din_rdy => punt_din_rdy,
      punt_din_sig_flag => punt_din_sig_flag,
      punt_din_vld => punt_din_vld,
      punt_dout => punt_dout,
      punt_dout_Map_Type(1 downto 0) => punt_dout_Map_Type(1 downto 0),
      punt_dout_rdy => punt_dout_rdy,
      punt_dout_sig_flag => punt_dout_sig_flag,
      punt_dout_vld => punt_dout_vld,
      rst_n => rst_n
    );
end STRUCTURE;
