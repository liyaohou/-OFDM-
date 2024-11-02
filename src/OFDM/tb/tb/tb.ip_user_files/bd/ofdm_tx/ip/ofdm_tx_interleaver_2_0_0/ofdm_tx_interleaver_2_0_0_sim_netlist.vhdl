-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:20 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_interleaver_2_0_0/ofdm_tx_interleaver_2_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_interleaver_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_interleaver_2_0_0_counter is
  port (
    rst_n_0 : out STD_LOGIC;
    intv2_dout_vld : out STD_LOGIC;
    \intv2_dout1__2\ : out STD_LOGIC;
    En_cnt : in STD_LOGIC;
    clk : in STD_LOGIC;
    dout_vld : in STD_LOGIC;
    intv2_dout_vld_0 : in STD_LOGIC;
    intv2_din_sig_flag : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_interleaver_2_0_0_counter : entity is "counter";
end ofdm_tx_interleaver_2_0_0_counter;

architecture STRUCTURE of ofdm_tx_interleaver_2_0_0_counter is
  signal cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[4]_i_2\ : label is "soft_lutpair3";
begin
  rst_n_0 <= \^rst_n_0\;
\cnt[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      O => \cnt[0]_i_1__2_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F0080"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      I3 => cnt(4),
      I4 => cnt(3),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F807F00"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      I3 => cnt(4),
      I4 => cnt(3),
      O => \cnt[4]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \^rst_n_0\,
      D => \cnt[0]_i_1__2_n_0\,
      Q => cnt(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \^rst_n_0\,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \^rst_n_0\,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \^rst_n_0\,
      D => \cnt[3]_i_1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \^rst_n_0\,
      D => \cnt[4]_i_2_n_0\,
      Q => cnt(4)
    );
dout_rdy_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
intv2_dout_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF07"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(3),
      I2 => cnt(4),
      I3 => intv2_din_sig_flag,
      O => \intv2_dout1__2\
    );
intv2_dout_vld_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCCCCAAA"
    )
        port map (
      I0 => dout_vld,
      I1 => intv2_dout_vld_0,
      I2 => cnt(2),
      I3 => cnt(3),
      I4 => cnt(4),
      I5 => intv2_din_sig_flag,
      O => intv2_dout_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ofdm_tx_interleaver_2_0_0_counter__parameterized0\ is
  port (
    cnt_last : out STD_LOGIC;
    dout_rdy_reg : out STD_LOGIC;
    dout_rdy_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[0]_0\ : in STD_LOGIC;
    dout_vld_reg : in STD_LOGIC;
    intv2_din_vld : in STD_LOGIC;
    \rd_en__0\ : in STD_LOGIC;
    S2P_dout_vld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ofdm_tx_interleaver_2_0_0_counter__parameterized0\ : entity is "counter";
end \ofdm_tx_interleaver_2_0_0_counter__parameterized0\;

architecture STRUCTURE of \ofdm_tx_interleaver_2_0_0_counter__parameterized0\ is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \^cnt_last\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dout_rdy_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout_vld_i_1__1\ : label is "soft_lutpair2";
begin
  cnt_last <= \^cnt_last\;
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => intv2_din_vld,
      I1 => dout_vld_reg,
      I2 => \^cnt_last\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt_last\
    );
dout_rdy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F2A"
    )
        port map (
      I0 => dout_vld_reg,
      I1 => intv2_din_vld,
      I2 => \^cnt_last\,
      I3 => \rd_en__0\,
      O => dout_rdy_reg_0
    );
\dout_vld_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => dout_vld_reg,
      I1 => intv2_din_vld,
      I2 => \^cnt_last\,
      I3 => \rd_en__0\,
      I4 => S2P_dout_vld,
      O => dout_rdy_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ofdm_tx_interleaver_2_0_0_counter__parameterized1\ is
  port (
    \cnt_reg[0]_0\ : out STD_LOGIC;
    intv2_dout : out STD_LOGIC;
    dout_vld_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[0]_1\ : in STD_LOGIC;
    intv2_dout_0 : in STD_LOGIC;
    intv2_dout_1 : in STD_LOGIC;
    u2_P2S_dout : in STD_LOGIC;
    \intv2_dout1__2\ : in STD_LOGIC;
    S2P_dout_vld : in STD_LOGIC;
    intv2_din_rdy : in STD_LOGIC;
    \cnt_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ofdm_tx_interleaver_2_0_0_counter__parameterized1\ : entity is "counter";
end \ofdm_tx_interleaver_2_0_0_counter__parameterized1\;

architecture STRUCTURE of \ofdm_tx_interleaver_2_0_0_counter__parameterized1\ is
  signal \cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \^cnt_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__0\ : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \cnt_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute SOFT_HLUTNM of dout_vld_i_1 : label is "soft_lutpair0";
begin
  \cnt_reg[0]_0\ <= \^cnt_reg[0]_0\;
\cnt[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => intv2_din_rdy,
      I2 => \^cnt_reg[0]_0\,
      O => \cnt[0]_i_1__0_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]_1\,
      D => \cnt[0]_i_1__0_n_0\,
      Q => \^cnt_reg[0]_0\
    );
dout_vld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => S2P_dout_vld,
      I1 => intv2_din_rdy,
      I2 => \^cnt_reg[0]_0\,
      I3 => \cnt_reg[0]_2\,
      O => dout_vld_reg
    );
intv2_dout_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => intv2_dout_0,
      I1 => \^cnt_reg[0]_0\,
      I2 => intv2_dout_1,
      I3 => u2_P2S_dout,
      I4 => \intv2_dout1__2\,
      O => intv2_dout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ofdm_tx_interleaver_2_0_0_counter__parameterized2\ is
  port (
    cnt : out STD_LOGIC;
    \rd_en__0\ : out STD_LOGIC;
    u2_P2S_dout : out STD_LOGIC;
    dout_vld_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[0]_0\ : in STD_LOGIC;
    S2P_dout_vld : in STD_LOGIC;
    intv2_din_rdy : in STD_LOGIC;
    \cnt_reg[0]_1\ : in STD_LOGIC;
    cnt_last : in STD_LOGIC;
    dout_vld : in STD_LOGIC;
    intv2_dout : in STD_LOGIC;
    intv2_dout_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ofdm_tx_interleaver_2_0_0_counter__parameterized2\ : entity is "counter";
end \ofdm_tx_interleaver_2_0_0_counter__parameterized2\;

architecture STRUCTURE of \ofdm_tx_interleaver_2_0_0_counter__parameterized2\ is
  signal \^cnt\ : STD_LOGIC;
  signal \cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout_vld_i_1__0\ : label is "soft_lutpair1";
begin
  cnt <= \^cnt\;
\cnt[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg[0]_1\,
      I1 => intv2_din_rdy,
      I2 => \^cnt\,
      O => \cnt[0]_i_1__1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1__1_n_0\,
      PRE => \cnt_reg[0]_0\,
      Q => \^cnt\
    );
dout_rdy_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A0000020AA20AA"
    )
        port map (
      I0 => S2P_dout_vld,
      I1 => \^cnt\,
      I2 => intv2_din_rdy,
      I3 => \cnt_reg[0]_1\,
      I4 => cnt_last,
      I5 => dout_vld,
      O => \rd_en__0\
    );
\dout_vld_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => S2P_dout_vld,
      I1 => \^cnt\,
      I2 => intv2_din_rdy,
      I3 => \cnt_reg[0]_1\,
      O => dout_vld_reg
    );
intv2_dout_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => intv2_dout,
      I1 => \^cnt\,
      I2 => intv2_dout_0,
      O => u2_P2S_dout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_interleaver_2_0_0_Par2Ser is
  port (
    cnt_last : out STD_LOGIC;
    dout_vld : out STD_LOGIC;
    intv2_dout : out STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[0]\ : in STD_LOGIC;
    u2_P2S_dout : in STD_LOGIC;
    \intv2_dout1__2\ : in STD_LOGIC;
    S2P_dout_vld : in STD_LOGIC;
    intv2_din_rdy : in STD_LOGIC;
    \din_r_reg[1]_0\ : in STD_LOGIC;
    \din_r_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_interleaver_2_0_0_Par2Ser : entity is "Par2Ser";
end ofdm_tx_interleaver_2_0_0_Par2Ser;

architecture STRUCTURE of ofdm_tx_interleaver_2_0_0_Par2Ser is
  signal \^cnt_last\ : STD_LOGIC;
  signal \din_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \din_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \din_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \^dout_vld\ : STD_LOGIC;
  signal u_counter_P2S_n_2 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \din_r_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TVALID";
begin
  cnt_last <= \^cnt_last\;
  dout_vld <= \^dout_vld\;
\din_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEFFFFA2220000"
    )
        port map (
      I0 => \din_r_reg[0]_0\,
      I1 => \^dout_vld\,
      I2 => \^cnt_last\,
      I3 => intv2_din_rdy,
      I4 => S2P_dout_vld,
      I5 => \din_r_reg_n_0_[0]\,
      O => \din_r[0]_i_1_n_0\
    );
\din_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEFFFFA2220000"
    )
        port map (
      I0 => \din_r_reg[1]_0\,
      I1 => \^dout_vld\,
      I2 => \^cnt_last\,
      I3 => intv2_din_rdy,
      I4 => S2P_dout_vld,
      I5 => \din_r_reg_n_0_[1]\,
      O => \din_r[1]_i_1_n_0\
    );
\din_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => \din_r[0]_i_1_n_0\,
      Q => \din_r_reg_n_0_[0]\
    );
\din_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => \din_r[1]_i_1_n_0\,
      Q => \din_r_reg_n_0_[1]\
    );
dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => u_counter_P2S_n_2,
      Q => \^dout_vld\
    );
u_counter_P2S: entity work.\ofdm_tx_interleaver_2_0_0_counter__parameterized1\
     port map (
      S2P_dout_vld => S2P_dout_vld,
      clk => clk,
      \cnt_reg[0]_0\ => \^cnt_last\,
      \cnt_reg[0]_1\ => \cnt_reg[0]\,
      \cnt_reg[0]_2\ => \^dout_vld\,
      dout_vld_reg => u_counter_P2S_n_2,
      intv2_din_rdy => intv2_din_rdy,
      intv2_dout => intv2_dout,
      \intv2_dout1__2\ => \intv2_dout1__2\,
      intv2_dout_0 => \din_r_reg_n_0_[1]\,
      intv2_dout_1 => \din_r_reg_n_0_[0]\,
      u2_P2S_dout => u2_P2S_dout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ofdm_tx_interleaver_2_0_0_Par2Ser__parameterized0\ is
  port (
    dout_vld_reg_0 : out STD_LOGIC;
    \rd_en__0\ : out STD_LOGIC;
    En_cnt : out STD_LOGIC;
    u2_P2S_dout : out STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[0]\ : in STD_LOGIC;
    S2P_dout_vld : in STD_LOGIC;
    intv2_din_rdy : in STD_LOGIC;
    cnt_last : in STD_LOGIC;
    dout_vld : in STD_LOGIC;
    \din_r_reg[1]_0\ : in STD_LOGIC;
    \din_r_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ofdm_tx_interleaver_2_0_0_Par2Ser__parameterized0\ : entity is "Par2Ser";
end \ofdm_tx_interleaver_2_0_0_Par2Ser__parameterized0\;

architecture STRUCTURE of \ofdm_tx_interleaver_2_0_0_Par2Ser__parameterized0\ is
  signal cnt : STD_LOGIC;
  signal \din_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \din_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \din_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \din_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \^dout_vld_reg_0\ : STD_LOGIC;
  signal u_counter_P2S_n_3 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \din_r_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of \din_r_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA";
  attribute X_INTERFACE_INFO of dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TVALID";
begin
  dout_vld_reg_0 <= \^dout_vld_reg_0\;
\cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^dout_vld_reg_0\,
      I1 => dout_vld,
      I2 => intv2_din_rdy,
      O => En_cnt
    );
\din_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEFFFF22A20000"
    )
        port map (
      I0 => \din_r_reg[0]_0\,
      I1 => \^dout_vld_reg_0\,
      I2 => intv2_din_rdy,
      I3 => cnt,
      I4 => S2P_dout_vld,
      I5 => \din_r_reg_n_0_[0]\,
      O => \din_r[0]_i_1_n_0\
    );
\din_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEFFFF22A20000"
    )
        port map (
      I0 => \din_r_reg[1]_0\,
      I1 => \^dout_vld_reg_0\,
      I2 => intv2_din_rdy,
      I3 => cnt,
      I4 => S2P_dout_vld,
      I5 => \din_r_reg_n_0_[1]\,
      O => \din_r[1]_i_1_n_0\
    );
\din_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => \din_r[0]_i_1_n_0\,
      Q => \din_r_reg_n_0_[0]\
    );
\din_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => \din_r[1]_i_1_n_0\,
      Q => \din_r_reg_n_0_[1]\
    );
dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => u_counter_P2S_n_3,
      Q => \^dout_vld_reg_0\
    );
u_counter_P2S: entity work.\ofdm_tx_interleaver_2_0_0_counter__parameterized2\
     port map (
      S2P_dout_vld => S2P_dout_vld,
      clk => clk,
      cnt => cnt,
      cnt_last => cnt_last,
      \cnt_reg[0]_0\ => \cnt_reg[0]\,
      \cnt_reg[0]_1\ => \^dout_vld_reg_0\,
      dout_vld => dout_vld,
      dout_vld_reg => u_counter_P2S_n_3,
      intv2_din_rdy => intv2_din_rdy,
      intv2_dout => \din_r_reg_n_0_[1]\,
      intv2_dout_0 => \din_r_reg_n_0_[0]\,
      \rd_en__0\ => \rd_en__0\,
      u2_P2S_dout => u2_P2S_dout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_interleaver_2_0_0_Ser2Par is
  port (
    S2P_dout_vld : out STD_LOGIC;
    dout_rdy_reg_0 : out STD_LOGIC;
    \dout_reg[1]_0\ : out STD_LOGIC;
    \dout_reg[0]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[0]\ : in STD_LOGIC;
    intv2_din_vld : in STD_LOGIC;
    \rd_en__0\ : in STD_LOGIC;
    intv2_din : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_interleaver_2_0_0_Ser2Par : entity is "Ser2Par";
end ofdm_tx_interleaver_2_0_0_Ser2Par;

architecture STRUCTURE of ofdm_tx_interleaver_2_0_0_Ser2Par is
  signal \^s2p_dout_vld\ : STD_LOGIC;
  signal cnt_last : STD_LOGIC;
  signal \dout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1_n_0\ : STD_LOGIC;
  signal \^dout_rdy_reg_0\ : STD_LOGIC;
  signal \^dout_reg[0]_0\ : STD_LOGIC;
  signal \^dout_reg[1]_0\ : STD_LOGIC;
  signal u_counter_n_1 : STD_LOGIC;
  signal u_counter_n_2 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dout_rdy_reg : label is "xilinx.com:interface:axis:1.0 s_axis_Ser2Par TREADY";
  attribute X_INTERFACE_INFO of \dout_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Ser2Par TDATA";
  attribute X_INTERFACE_INFO of \dout_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_Ser2Par TDATA";
  attribute X_INTERFACE_INFO of dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_Ser2Par TVALID";
begin
  S2P_dout_vld <= \^s2p_dout_vld\;
  dout_rdy_reg_0 <= \^dout_rdy_reg_0\;
  \dout_reg[0]_0\ <= \^dout_reg[0]_0\;
  \dout_reg[1]_0\ <= \^dout_reg[1]_0\;
\dout[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => intv2_din,
      I1 => intv2_din_vld,
      I2 => \^dout_rdy_reg_0\,
      I3 => cnt_last,
      I4 => \^dout_reg[0]_0\,
      O => \dout[0]_i_1_n_0\
    );
\dout[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => intv2_din,
      I1 => intv2_din_vld,
      I2 => \^dout_rdy_reg_0\,
      I3 => cnt_last,
      I4 => \^dout_reg[1]_0\,
      O => \dout[1]_i_1_n_0\
    );
dout_rdy_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => u_counter_n_2,
      PRE => \cnt_reg[0]\,
      Q => \^dout_rdy_reg_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => \dout[0]_i_1_n_0\,
      Q => \^dout_reg[0]_0\
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => \dout[1]_i_1_n_0\,
      Q => \^dout_reg[1]_0\
    );
dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => u_counter_n_1,
      Q => \^s2p_dout_vld\
    );
u_counter: entity work.\ofdm_tx_interleaver_2_0_0_counter__parameterized0\
     port map (
      S2P_dout_vld => \^s2p_dout_vld\,
      clk => clk,
      cnt_last => cnt_last,
      \cnt_reg[0]_0\ => \cnt_reg[0]\,
      dout_rdy_reg => u_counter_n_1,
      dout_rdy_reg_0 => u_counter_n_2,
      dout_vld_reg => \^dout_rdy_reg_0\,
      intv2_din_vld => intv2_din_vld,
      \rd_en__0\ => \rd_en__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_interleaver_2_0_0_interleaver_2 is
  port (
    dout_rdy_reg : out STD_LOGIC;
    intv2_dout_Map_Type : out STD_LOGIC_VECTOR ( 1 downto 0 );
    intv2_dout : out STD_LOGIC;
    intv2_dout_vld : out STD_LOGIC;
    intv2_din : in STD_LOGIC;
    intv2_din_vld : in STD_LOGIC;
    clk : in STD_LOGIC;
    intv2_din_rdy : in STD_LOGIC;
    intv2_din_Map_Type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    intv2_din_sig_flag : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_interleaver_2_0_0_interleaver_2 : entity is "interleaver_2";
end ofdm_tx_interleaver_2_0_0_interleaver_2;

architecture STRUCTURE of ofdm_tx_interleaver_2_0_0_interleaver_2 is
  signal En_cnt : STD_LOGIC;
  signal S2P_dout_vld : STD_LOGIC;
  signal cnt_last : STD_LOGIC;
  signal dout_vld : STD_LOGIC;
  signal \intv2_dout1__2\ : STD_LOGIC;
  signal \rd_en__0\ : STD_LOGIC;
  signal u2_P2S_dout : STD_LOGIC;
  signal u2_Par2Ser_n_0 : STD_LOGIC;
  signal u_Ser2Par_n_2 : STD_LOGIC;
  signal u_Ser2Par_n_3 : STD_LOGIC;
  signal u_counter_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \intv2_dout_Map_Type_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_intv2 TID";
  attribute X_INTERFACE_INFO of \intv2_dout_Map_Type_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_intv2 TID";
begin
\intv2_dout_Map_Type_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => intv2_din_Map_Type(0),
      PRE => u_counter_n_0,
      Q => intv2_dout_Map_Type(0)
    );
\intv2_dout_Map_Type_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => intv2_din_Map_Type(1),
      PRE => u_counter_n_0,
      Q => intv2_dout_Map_Type(1)
    );
u1_Par2Ser: entity work.ofdm_tx_interleaver_2_0_0_Par2Ser
     port map (
      S2P_dout_vld => S2P_dout_vld,
      clk => clk,
      cnt_last => cnt_last,
      \cnt_reg[0]\ => u_counter_n_0,
      \din_r_reg[0]_0\ => u_Ser2Par_n_3,
      \din_r_reg[1]_0\ => u_Ser2Par_n_2,
      dout_vld => dout_vld,
      intv2_din_rdy => intv2_din_rdy,
      intv2_dout => intv2_dout,
      \intv2_dout1__2\ => \intv2_dout1__2\,
      u2_P2S_dout => u2_P2S_dout
    );
u2_Par2Ser: entity work.\ofdm_tx_interleaver_2_0_0_Par2Ser__parameterized0\
     port map (
      En_cnt => En_cnt,
      S2P_dout_vld => S2P_dout_vld,
      clk => clk,
      cnt_last => cnt_last,
      \cnt_reg[0]\ => u_counter_n_0,
      \din_r_reg[0]_0\ => u_Ser2Par_n_3,
      \din_r_reg[1]_0\ => u_Ser2Par_n_2,
      dout_vld => dout_vld,
      dout_vld_reg_0 => u2_Par2Ser_n_0,
      intv2_din_rdy => intv2_din_rdy,
      \rd_en__0\ => \rd_en__0\,
      u2_P2S_dout => u2_P2S_dout
    );
u_Ser2Par: entity work.ofdm_tx_interleaver_2_0_0_Ser2Par
     port map (
      S2P_dout_vld => S2P_dout_vld,
      clk => clk,
      \cnt_reg[0]\ => u_counter_n_0,
      dout_rdy_reg_0 => dout_rdy_reg,
      \dout_reg[0]_0\ => u_Ser2Par_n_3,
      \dout_reg[1]_0\ => u_Ser2Par_n_2,
      intv2_din => intv2_din,
      intv2_din_vld => intv2_din_vld,
      \rd_en__0\ => \rd_en__0\
    );
u_counter: entity work.ofdm_tx_interleaver_2_0_0_counter
     port map (
      En_cnt => En_cnt,
      clk => clk,
      dout_vld => dout_vld,
      intv2_din_sig_flag => intv2_din_sig_flag,
      \intv2_dout1__2\ => \intv2_dout1__2\,
      intv2_dout_vld => intv2_dout_vld,
      intv2_dout_vld_0 => u2_Par2Ser_n_0,
      rst_n => rst_n,
      rst_n_0 => u_counter_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_interleaver_2_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    intv2_din : in STD_LOGIC;
    intv2_din_vld : in STD_LOGIC;
    intv2_din_rdy : in STD_LOGIC;
    intv2_din_sig_flag : in STD_LOGIC;
    intv2_din_Map_Type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    intv2_dout : out STD_LOGIC;
    intv2_dout_vld : out STD_LOGIC;
    intv2_dout_rdy : out STD_LOGIC;
    intv2_dout_Map_Type : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ofdm_tx_interleaver_2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ofdm_tx_interleaver_2_0_0 : entity is "ofdm_tx_interleaver_2_0_0,interleaver_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ofdm_tx_interleaver_2_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ofdm_tx_interleaver_2_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ofdm_tx_interleaver_2_0_0 : entity is "interleaver_2,Vivado 2023.1";
end ofdm_tx_interleaver_2_0_0;

architecture STRUCTURE of ofdm_tx_interleaver_2_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_intv2:m_axis_intv2, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of intv2_din : signal is "xilinx.com:interface:axis:1.0 s_axis_intv2 TDATA";
  attribute X_INTERFACE_INFO of intv2_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_intv2 TREADY";
  attribute X_INTERFACE_INFO of intv2_din_sig_flag : signal is "xilinx.com:interface:axis:1.0 s_axis_intv2 TSTRB";
  attribute X_INTERFACE_INFO of intv2_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_intv2 TVALID";
  attribute X_INTERFACE_INFO of intv2_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_intv2 TDATA";
  attribute X_INTERFACE_INFO of intv2_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_intv2 TREADY";
  attribute X_INTERFACE_PARAMETER of intv2_dout_rdy : signal is "XIL_INTERFACENAME s_axis_intv2, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of intv2_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_intv2 TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of intv2_din_Map_Type : signal is "xilinx.com:interface:axis:1.0 s_axis_intv2 TID";
  attribute X_INTERFACE_INFO of intv2_dout_Map_Type : signal is "xilinx.com:interface:axis:1.0 m_axis_intv2 TID";
  attribute X_INTERFACE_PARAMETER of intv2_dout_Map_Type : signal is "XIL_INTERFACENAME m_axis_intv2, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.ofdm_tx_interleaver_2_0_0_interleaver_2
     port map (
      clk => clk,
      dout_rdy_reg => intv2_dout_rdy,
      intv2_din => intv2_din,
      intv2_din_Map_Type(1 downto 0) => intv2_din_Map_Type(1 downto 0),
      intv2_din_rdy => intv2_din_rdy,
      intv2_din_sig_flag => intv2_din_sig_flag,
      intv2_din_vld => intv2_din_vld,
      intv2_dout => intv2_dout,
      intv2_dout_Map_Type(1 downto 0) => intv2_dout_Map_Type(1 downto 0),
      intv2_dout_vld => intv2_dout_vld,
      rst_n => rst_n
    );
end STRUCTURE;
