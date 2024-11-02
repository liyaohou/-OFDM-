-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:22 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_symbol_train_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_symbol_train_0_0
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
    STS_dout_last_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    LTS_din_rdy : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    cnt_last_0 : out STD_LOGIC;
    cnt_last : in STD_LOGIC;
    train_din_rdy : in STD_LOGIC;
    STS_dout_last : in STD_LOGIC;
    \LTS_dout[15]_i_3_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    \cnt_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  signal En_cnt : STD_LOGIC;
  signal \^lts_din_rdy\ : STD_LOGIC;
  signal \LTS_dout[15]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \STS_dout[12]_i_2_n_0\ : STD_LOGIC;
  signal STS_dout_last_i_2_n_0 : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \STS_dout[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \STS_dout[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \STS_dout[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \STS_dout[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \STS_dout[12]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \STS_dout[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \STS_dout[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \STS_dout[15]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \STS_dout[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \STS_dout[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \STS_dout[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \STS_dout[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \STS_dout[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \STS_dout[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \STS_dout[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \STS_dout[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of STS_dout_last_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of STS_dout_last_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[6]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[7]_i_3__0\ : label is "soft_lutpair10";
begin
  LTS_din_rdy <= \^lts_din_rdy\;
  Q(7 downto 0) <= \^q\(7 downto 0);
\LTS_dout[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => STS_dout_last,
      I1 => \LTS_dout[15]_i_4_n_0\,
      I2 => \LTS_dout[15]_i_3_0\(4),
      I3 => \LTS_dout[15]_i_3_0\(3),
      I4 => \LTS_dout[15]_i_3_0\(2),
      O => \^lts_din_rdy\
    );
\LTS_dout[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \LTS_dout[15]_i_3_0\(1),
      I1 => train_din_rdy,
      I2 => \LTS_dout[15]_i_3_0\(0),
      I3 => \LTS_dout[15]_i_3_0\(7),
      I4 => \LTS_dout[15]_i_3_0\(5),
      I5 => \LTS_dout[15]_i_3_0\(6),
      O => \LTS_dout[15]_i_4_n_0\
    );
\STS_dout[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9558"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => D(0)
    );
\STS_dout[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAEAAEA"
    )
        port map (
      I0 => \STS_dout[12]_i_2_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => D(9)
    );
\STS_dout[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEFB"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => D(10)
    );
\STS_dout[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B47B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \STS_dout[12]_i_2_n_0\,
      O => D(11)
    );
\STS_dout[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10010000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => STS_dout_last_i_2_n_0,
      O => \STS_dout[12]_i_2_n_0\
    );
\STS_dout[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96A8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(12)
    );
\STS_dout[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => D(13)
    );
\STS_dout[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96F0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(14)
    );
\STS_dout[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0980"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => D(1)
    );
\STS_dout[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEBAE"
    )
        port map (
      I0 => \STS_dout[12]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => D(2)
    );
\STS_dout[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6DFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => D(3)
    );
\STS_dout[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006DC7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \STS_dout[12]_i_2_n_0\,
      O => D(4)
    );
\STS_dout[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6954"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(5)
    );
\STS_dout[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69F0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(6)
    );
\STS_dout[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA4"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => D(7)
    );
\STS_dout[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1408"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => D(8)
    );
STS_dout_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => STS_dout_last_i_2_n_0,
      I1 => \^q\(4),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => cnt_last_0
    );
STS_dout_last_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => STS_dout_last_i_2_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__1\(0)
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \p_0_in__1\(1)
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \p_0_in__1\(4)
    );
\cnt[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \cnt[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \cnt[5]_i_1__0_n_0\
    );
\cnt[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(3),
      I2 => \cnt[6]_i_2__0_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \p_0_in__1\(6)
    );
\cnt[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \cnt[6]_i_2__0_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^lts_din_rdy\,
      I1 => cnt_last,
      O => STS_dout_last_reg(0)
    );
\cnt[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFF00000000"
    )
        port map (
      I0 => STS_dout_last_i_2_n_0,
      I1 => \^q\(4),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => train_din_rdy,
      O => En_cnt
    );
\cnt[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(6),
      I1 => \cnt[7]_i_3__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      O => \cnt[7]_i_2__0_n_0\
    );
\cnt[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \cnt[7]_i_3__0_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \cnt_reg[0]_0\,
      D => \p_0_in__1\(0),
      Q => \^q\(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \cnt_reg[0]_0\,
      D => \p_0_in__1\(1),
      Q => \^q\(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \cnt_reg[0]_0\,
      D => \cnt[2]_i_1__0_n_0\,
      Q => \^q\(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \cnt_reg[0]_0\,
      D => \cnt[3]_i_1__0_n_0\,
      Q => \^q\(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \cnt_reg[0]_0\,
      D => \p_0_in__1\(4),
      Q => \^q\(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \cnt_reg[0]_0\,
      D => \cnt[5]_i_1__0_n_0\,
      Q => \^q\(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \cnt_reg[0]_0\,
      D => \p_0_in__1\(6),
      Q => \^q\(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => En_cnt,
      CLR => \cnt_reg[0]_0\,
      D => \cnt[7]_i_2__0_n_0\,
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \cnt_reg[5]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_n_0 : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    \cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 : entity is "counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 is
  signal \LTS_dout[3]_i_2_n_0\ : STD_LOGIC;
  signal \LTS_dout[3]_i_3_n_0\ : STD_LOGIC;
  signal \LTS_dout[4]_i_2_n_0\ : STD_LOGIC;
  signal \LTS_dout[5]_i_2_n_0\ : STD_LOGIC;
  signal \LTS_dout[6]_i_2_n_0\ : STD_LOGIC;
  signal \LTS_dout[6]_i_3_n_0\ : STD_LOGIC;
  signal \LTS_dout[6]_i_4_n_0\ : STD_LOGIC;
  signal LTS_dout_last_i_2_n_0 : STD_LOGIC;
  signal LTS_dout_last_i_3_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \^cnt_reg[5]_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \^rst_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LTS_dout[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LTS_dout[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LTS_dout[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LTS_dout[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LTS_dout[6]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of LTS_dout_last_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of LTS_dout_last_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[6]_i_2\ : label is "soft_lutpair5";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \cnt_reg[5]_0\ <= \^cnt_reg[5]_0\;
  rst_n_0 <= \^rst_n_0\;
\LTS_dout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"749F93E0C9F92E70"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => D(0)
    );
\LTS_dout[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C4192FE59418F50"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => D(10)
    );
\LTS_dout[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77B4F6915D8E4550"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(11)
    );
\LTS_dout[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBED528AD520800"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => D(12)
    );
\LTS_dout[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7ACCA18D86AE49C"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(0),
      O => D(13)
    );
\LTS_dout[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3B7873E1232318"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => D(14)
    );
\LTS_dout[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B1B787AE1272318"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => D(15)
    );
\LTS_dout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BD2EB686577B394"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => D(1)
    );
\LTS_dout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E33BA5DCC74790"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => D(2)
    );
\LTS_dout[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LTS_dout[3]_i_2_n_0\,
      I1 => \LTS_dout[3]_i_3_n_0\,
      I2 => \^cnt_reg[5]_0\,
      I3 => \LTS_dout[6]_i_2_n_0\,
      O => D(3)
    );
\LTS_dout[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4510551010110054"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \LTS_dout[3]_i_2_n_0\
    );
\LTS_dout[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0820AA20A220"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \LTS_dout[3]_i_3_n_0\
    );
\LTS_dout[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg[5]_0\,
      I1 => \LTS_dout[4]_i_2_n_0\,
      O => D(4)
    );
\LTS_dout[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B099E7E90D1799C"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \LTS_dout[4]_i_2_n_0\
    );
\LTS_dout[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \LTS_dout[5]_i_2_n_0\,
      I1 => \^cnt_reg[5]_0\,
      I2 => \LTS_dout[6]_i_2_n_0\,
      O => D(5)
    );
\LTS_dout[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73FBE1C48D1D7F3B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \LTS_dout[5]_i_2_n_0\
    );
\LTS_dout[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \LTS_dout[6]_i_2_n_0\,
      I1 => \LTS_dout[6]_i_3_n_0\,
      I2 => \^cnt_reg[5]_0\,
      O => D(6)
    );
\LTS_dout[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \LTS_dout[6]_i_4_n_0\,
      O => \LTS_dout[6]_i_2_n_0\
    );
\LTS_dout[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B5E15FCFCFEA1EB5"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \LTS_dout[6]_i_3_n_0\
    );
\LTS_dout[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => \LTS_dout[6]_i_4_n_0\
    );
\LTS_dout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B293BDC94D28191"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => D(7)
    );
\LTS_dout[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0941512F8A489020"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => D(8)
    );
\LTS_dout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD876B2FA69ADE70"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(0),
      O => D(9)
    );
LTS_dout_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      I2 => LTS_dout_last_i_2_n_0,
      I3 => LTS_dout_last_i_3_n_0,
      I4 => \^q\(4),
      I5 => \^q\(6),
      O => \^cnt_reg[5]_0\
    );
LTS_dout_last_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => LTS_dout_last_i_2_n_0
    );
LTS_dout_last_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => LTS_dout_last_i_3_n_0
    );
\cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \cnt[0]_i_1__0_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \p_0_in__0\(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \cnt[4]_i_1__0_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \cnt[6]_i_2_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \cnt[5]_i_1_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \cnt[6]_i_2_n_0\,
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \p_0_in__0\(6)
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \cnt[6]_i_2_n_0\
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(6),
      I1 => \cnt[7]_i_3_n_0\,
      I2 => \^q\(7),
      O => \cnt[7]_i_2_n_0\
    );
\cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \cnt[7]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[7]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[0]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[7]_0\(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(1),
      Q => \^q\(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[7]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[7]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[7]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[4]_i_1__0_n_0\,
      Q => \^q\(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[7]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[7]_0\(0),
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(6),
      Q => \^q\(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[7]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[7]_i_2_n_0\,
      Q => \^q\(7)
    );
\train_dout[15]_i_3\: unisim.vcomponents.LUT1
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LTS is
  port (
    LTS_dout_last : out STD_LOGIC;
    cnt_last : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    LTS_dout_vld : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \LTS_dout_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LTS_dout_Index_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    \train_dout0_inferred__0/i__carry__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    LTS_din_rdy : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LTS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LTS is
  signal \^lts_dout_last\ : STD_LOGIC;
  signal \^lts_dout_vld\ : STD_LOGIC;
  signal LTS_dout_vld_i_1_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^cnt_last\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rst_n_0\ : STD_LOGIC;
  signal u_counter_n_0 : STD_LOGIC;
  signal u_counter_n_1 : STD_LOGIC;
  signal u_counter_n_10 : STD_LOGIC;
  signal u_counter_n_11 : STD_LOGIC;
  signal u_counter_n_12 : STD_LOGIC;
  signal u_counter_n_13 : STD_LOGIC;
  signal u_counter_n_14 : STD_LOGIC;
  signal u_counter_n_15 : STD_LOGIC;
  signal u_counter_n_2 : STD_LOGIC;
  signal u_counter_n_3 : STD_LOGIC;
  signal u_counter_n_4 : STD_LOGIC;
  signal u_counter_n_5 : STD_LOGIC;
  signal u_counter_n_6 : STD_LOGIC;
  signal u_counter_n_7 : STD_LOGIC;
  signal u_counter_n_8 : STD_LOGIC;
  signal u_counter_n_9 : STD_LOGIC;
begin
  LTS_dout_last <= \^lts_dout_last\;
  LTS_dout_vld <= \^lts_dout_vld\;
  Q(15 downto 0) <= \^q\(15 downto 0);
  cnt_last <= \^cnt_last\;
  rst_n_0 <= \^rst_n_0\;
\LTS_dout_Index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_reg(0),
      Q => \LTS_dout_Index_reg[7]_0\(0)
    );
\LTS_dout_Index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_reg(1),
      Q => \LTS_dout_Index_reg[7]_0\(1)
    );
\LTS_dout_Index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_reg(2),
      Q => \LTS_dout_Index_reg[7]_0\(2)
    );
\LTS_dout_Index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_reg(3),
      Q => \LTS_dout_Index_reg[7]_0\(3)
    );
\LTS_dout_Index_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_reg(4),
      Q => \LTS_dout_Index_reg[7]_0\(4)
    );
\LTS_dout_Index_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_reg(5),
      Q => \LTS_dout_Index_reg[7]_0\(5)
    );
\LTS_dout_Index_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_reg(6),
      Q => \LTS_dout_Index_reg[7]_0\(6)
    );
\LTS_dout_Index_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt_reg(7),
      Q => \LTS_dout_Index_reg[7]_0\(7)
    );
LTS_dout_last_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \^cnt_last\,
      Q => \^lts_dout_last\
    );
\LTS_dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_15,
      Q => \^q\(0)
    );
\LTS_dout_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_5,
      Q => \^q\(10)
    );
\LTS_dout_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_4,
      Q => \^q\(11)
    );
\LTS_dout_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_3,
      Q => \^q\(12)
    );
\LTS_dout_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_2,
      Q => \^q\(13)
    );
\LTS_dout_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_1,
      Q => \^q\(14)
    );
\LTS_dout_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_0,
      Q => \^q\(15)
    );
\LTS_dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_14,
      Q => \^q\(1)
    );
\LTS_dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_13,
      Q => \^q\(2)
    );
\LTS_dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_12,
      Q => \^q\(3)
    );
\LTS_dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_11,
      Q => \^q\(4)
    );
\LTS_dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_10,
      Q => \^q\(5)
    );
\LTS_dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_9,
      Q => \^q\(6)
    );
\LTS_dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_8,
      Q => \^q\(7)
    );
\LTS_dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_7,
      Q => \^q\(8)
    );
\LTS_dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => u_counter_n_6,
      Q => \^q\(9)
    );
LTS_dout_vld_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^lts_dout_last\,
      I1 => LTS_din_rdy,
      I2 => \^lts_dout_vld\,
      O => LTS_dout_vld_i_1_n_0
    );
LTS_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => LTS_dout_vld_i_1_n_0,
      Q => \^lts_dout_vld\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(15),
      I1 => \train_dout0_inferred__0/i__carry__0\(1),
      O => \LTS_dout_reg[15]_0\(0)
    );
\train_dout0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => \train_dout0_inferred__0/i__carry__0\(0),
      O => S(0)
    );
u_counter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0
     port map (
      D(15) => u_counter_n_0,
      D(14) => u_counter_n_1,
      D(13) => u_counter_n_2,
      D(12) => u_counter_n_3,
      D(11) => u_counter_n_4,
      D(10) => u_counter_n_5,
      D(9) => u_counter_n_6,
      D(8) => u_counter_n_7,
      D(7) => u_counter_n_8,
      D(6) => u_counter_n_9,
      D(5) => u_counter_n_10,
      D(4) => u_counter_n_11,
      D(3) => u_counter_n_12,
      D(2) => u_counter_n_13,
      D(1) => u_counter_n_14,
      D(0) => u_counter_n_15,
      Q(7 downto 0) => cnt_reg(7 downto 0),
      clk => clk,
      \cnt_reg[5]_0\ => \^cnt_last\,
      \cnt_reg[7]_0\(0) => \cnt_reg[7]\(0),
      rst_n => rst_n,
      rst_n_0 => \^rst_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_STS is
  port (
    STS_dout_last_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LTS_din_rdy : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    STS_dout_vld_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \STS_dout_reg[15]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \STS_dout_Index_reg[7]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \STS_dout_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \STS_dout_reg[14]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \STS_dout_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \STS_dout_reg[14]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    \cnt_reg[0]\ : in STD_LOGIC;
    cnt_last : in STD_LOGIC;
    train_din_rdy : in STD_LOGIC;
    LTS_dout_last : in STD_LOGIC;
    LTS_dout_vld : in STD_LOGIC;
    train_dout0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \train_dout_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    train_dout02_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \train_dout_Index_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_STS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_STS is
  signal \^lts_din_rdy\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \STS_dout[15]_i_1_n_0\ : STD_LOGIC;
  signal STS_dout_last : STD_LOGIC;
  signal \^sts_dout_reg[15]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal STS_dout_vld : STD_LOGIC;
  signal STS_dout_vld_i_1_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cnt_last_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \train_dout_Index_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \train_dout_Index_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \train_dout_Index_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \train_dout_Index_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \train_dout_Index_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \train_dout_Index_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \train_dout_Index_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \train_dout_Index_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal u_counter_n_21 : STD_LOGIC;
  signal \NLW_train_dout_Index_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_train_dout_Index_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of STS_dout_vld_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \train_dout[15]_i_1\ : label is "soft_lutpair19";
begin
  LTS_din_rdy <= \^lts_din_rdy\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  \STS_dout_reg[15]_0\(14 downto 0) <= \^sts_dout_reg[15]_0\(14 downto 0);
\LTS_dout[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^lts_din_rdy\,
      I1 => LTS_dout_last,
      O => E(0)
    );
\STS_dout[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => train_din_rdy,
      I1 => STS_dout_last,
      O => \STS_dout[15]_i_1_n_0\
    );
\STS_dout_Index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt(0),
      Q => \^q\(0)
    );
\STS_dout_Index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt(1),
      Q => \^q\(1)
    );
\STS_dout_Index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt(2),
      Q => \^q\(2)
    );
\STS_dout_Index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt(3),
      Q => \^q\(3)
    );
\STS_dout_Index_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt(4),
      Q => \^q\(4)
    );
\STS_dout_Index_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt(5),
      Q => \^q\(5)
    );
\STS_dout_Index_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt(6),
      Q => \^q\(6)
    );
\STS_dout_Index_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt(7),
      Q => \^q\(7)
    );
STS_dout_last_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => cnt_last_0,
      Q => STS_dout_last
    );
\STS_dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(0),
      Q => \^sts_dout_reg[15]_0\(0)
    );
\STS_dout_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(10),
      Q => \^sts_dout_reg[15]_0\(9)
    );
\STS_dout_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(11),
      Q => \^sts_dout_reg[15]_0\(10)
    );
\STS_dout_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(12),
      Q => \^sts_dout_reg[15]_0\(11)
    );
\STS_dout_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(13),
      Q => \^sts_dout_reg[15]_0\(12)
    );
\STS_dout_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(14),
      Q => \^sts_dout_reg[15]_0\(13)
    );
\STS_dout_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(15),
      Q => \^sts_dout_reg[15]_0\(14)
    );
\STS_dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(1),
      Q => \^sts_dout_reg[15]_0\(1)
    );
\STS_dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(2),
      Q => \^sts_dout_reg[15]_0\(2)
    );
\STS_dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => u_counter_n_21,
      Q => \^sts_dout_reg[15]_0\(3)
    );
\STS_dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(4),
      Q => \^sts_dout_reg[15]_0\(4)
    );
\STS_dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(5),
      Q => \^sts_dout_reg[15]_0\(5)
    );
\STS_dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(7),
      Q => \^sts_dout_reg[15]_0\(6)
    );
\STS_dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(8),
      Q => \^sts_dout_reg[15]_0\(7)
    );
\STS_dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \STS_dout[15]_i_1_n_0\,
      CLR => \cnt_reg[0]\,
      D => p_0_in(9),
      Q => \^sts_dout_reg[15]_0\(8)
    );
STS_dout_vld_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => STS_dout_last,
      I1 => train_din_rdy,
      I2 => STS_dout_vld,
      O => STS_dout_vld_i_1_n_0
    );
STS_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_reg[0]\,
      D => STS_dout_vld_i_1_n_0,
      Q => STS_dout_vld
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(13),
      I1 => \train_dout_reg[15]\(14),
      O => \STS_dout_reg[14]_1\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(12),
      I1 => \train_dout_reg[15]\(13),
      O => \STS_dout_reg[14]_1\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(11),
      I1 => \train_dout_reg[15]\(12),
      O => \STS_dout_reg[14]_1\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(10),
      I1 => \train_dout_reg[15]\(11),
      O => \STS_dout_reg[11]_0\(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(9),
      I1 => \train_dout_reg[15]\(10),
      O => \STS_dout_reg[11]_0\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(8),
      I1 => \train_dout_reg[15]\(9),
      O => \STS_dout_reg[11]_0\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(7),
      I1 => \train_dout_reg[15]\(8),
      O => \STS_dout_reg[11]_0\(0)
    );
\train_dout0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(13),
      I1 => \train_dout_reg[15]\(6),
      O => \STS_dout_reg[14]_0\(2)
    );
\train_dout0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(5),
      I1 => \train_dout_reg[15]\(5),
      O => \STS_dout_reg[14]_0\(1)
    );
\train_dout0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(4),
      I1 => \train_dout_reg[15]\(4),
      O => \STS_dout_reg[14]_0\(0)
    );
train_dout0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(3),
      I1 => \train_dout_reg[15]\(3),
      O => \STS_dout_reg[3]_0\(3)
    );
train_dout0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(2),
      I1 => \train_dout_reg[15]\(2),
      O => \STS_dout_reg[3]_0\(2)
    );
train_dout0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(1),
      I1 => \train_dout_reg[15]\(1),
      O => \STS_dout_reg[3]_0\(1)
    );
train_dout0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sts_dout_reg[15]_0\(0),
      I1 => \train_dout_reg[15]\(0),
      O => \STS_dout_reg[3]_0\(0)
    );
\train_dout[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout0(0),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(0),
      I4 => \train_dout_reg[15]\(0),
      O => D(0)
    );
\train_dout[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout02_out(2),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(9),
      I4 => \train_dout_reg[15]\(10),
      O => D(10)
    );
\train_dout[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout02_out(3),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(10),
      I4 => \train_dout_reg[15]\(11),
      O => D(11)
    );
\train_dout[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout02_out(4),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(11),
      I4 => \train_dout_reg[15]\(12),
      O => D(12)
    );
\train_dout[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout02_out(5),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(12),
      I4 => \train_dout_reg[15]\(13),
      O => D(13)
    );
\train_dout[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout02_out(6),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(13),
      I4 => \train_dout_reg[15]\(14),
      O => D(14)
    );
\train_dout[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => STS_dout_vld,
      I1 => LTS_dout_vld,
      O => STS_dout_vld_reg_0(0)
    );
\train_dout[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout02_out(7),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(14),
      I4 => \train_dout_reg[15]\(15),
      O => D(15)
    );
\train_dout[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout0(1),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(1),
      I4 => \train_dout_reg[15]\(1),
      O => D(1)
    );
\train_dout[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout0(2),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(2),
      I4 => \train_dout_reg[15]\(2),
      O => D(2)
    );
\train_dout[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout0(3),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(3),
      I4 => \train_dout_reg[15]\(3),
      O => D(3)
    );
\train_dout[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout0(4),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(4),
      I4 => \train_dout_reg[15]\(4),
      O => D(4)
    );
\train_dout[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout0(5),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(5),
      I4 => \train_dout_reg[15]\(5),
      O => D(5)
    );
\train_dout[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout0(6),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(13),
      I4 => \train_dout_reg[15]\(6),
      O => D(6)
    );
\train_dout[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout0(7),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(6),
      I4 => \train_dout_reg[15]\(7),
      O => D(7)
    );
\train_dout[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout02_out(0),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(7),
      I4 => \train_dout_reg[15]\(8),
      O => D(8)
    );
\train_dout[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB38C80"
    )
        port map (
      I0 => train_dout02_out(1),
      I1 => STS_dout_vld,
      I2 => STS_dout_last,
      I3 => \^sts_dout_reg[15]_0\(8),
      I4 => \train_dout_reg[15]\(9),
      O => D(9)
    );
\train_dout_Index_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \train_dout_Index_reg[3]_i_1_n_0\,
      CO(2) => \train_dout_Index_reg[3]_i_1_n_1\,
      CO(1) => \train_dout_Index_reg[3]_i_1_n_2\,
      CO(0) => \train_dout_Index_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => \STS_dout_Index_reg[7]_0\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\train_dout_Index_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \train_dout_Index_reg[3]_i_1_n_0\,
      CO(3) => \train_dout_Index_reg[7]_i_1_n_0\,
      CO(2) => \train_dout_Index_reg[7]_i_1_n_1\,
      CO(1) => \train_dout_Index_reg[7]_i_1_n_2\,
      CO(0) => \train_dout_Index_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => \STS_dout_Index_reg[7]_0\(7 downto 4),
      S(3 downto 0) => \train_dout_Index_reg[7]\(3 downto 0)
    );
\train_dout_Index_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \train_dout_Index_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_train_dout_Index_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \STS_dout_Index_reg[7]_0\(8),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_train_dout_Index_reg[8]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
u_counter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
     port map (
      D(14 downto 6) => p_0_in(15 downto 7),
      D(5 downto 4) => p_0_in(5 downto 4),
      D(3) => u_counter_n_21,
      D(2 downto 0) => p_0_in(2 downto 0),
      LTS_din_rdy => \^lts_din_rdy\,
      \LTS_dout[15]_i_3_0\(7 downto 0) => \^q\(7 downto 0),
      Q(7 downto 0) => cnt(7 downto 0),
      STS_dout_last => STS_dout_last,
      STS_dout_last_reg(0) => STS_dout_last_reg_0(0),
      clk => clk,
      cnt_last => cnt_last,
      cnt_last_0 => cnt_last_0,
      \cnt_reg[0]_0\ => \cnt_reg[0]\,
      train_din_rdy => train_din_rdy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_symbol_train is
  port (
    train_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    train_dout_vld : out STD_LOGIC;
    train_dout_last : out STD_LOGIC;
    train_dout_Index : out STD_LOGIC_VECTOR ( 8 downto 0 );
    train_din_rdy : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_symbol_train;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_symbol_train is
  signal LTS_din_rdy : STD_LOGIC;
  signal LTS_dout_Index : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal LTS_dout_last : STD_LOGIC;
  signal LTS_dout_vld : STD_LOGIC;
  signal STS_dout_Index : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cnt_last : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal train_dout0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal train_dout02_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \train_dout0_carry__0_n_1\ : STD_LOGIC;
  signal \train_dout0_carry__0_n_2\ : STD_LOGIC;
  signal \train_dout0_carry__0_n_3\ : STD_LOGIC;
  signal train_dout0_carry_n_0 : STD_LOGIC;
  signal train_dout0_carry_n_1 : STD_LOGIC;
  signal train_dout0_carry_n_2 : STD_LOGIC;
  signal train_dout0_carry_n_3 : STD_LOGIC;
  signal \train_dout0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \train_dout0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \train_dout0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \train_dout0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \train_dout0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \train_dout0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \train_dout0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal train_dout_Index0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \train_dout_Index[3]_i_2_n_0\ : STD_LOGIC;
  signal \train_dout_Index[3]_i_3_n_0\ : STD_LOGIC;
  signal \train_dout_Index[3]_i_4_n_0\ : STD_LOGIC;
  signal \train_dout_Index[3]_i_5_n_0\ : STD_LOGIC;
  signal \train_dout_Index[7]_i_2_n_0\ : STD_LOGIC;
  signal \train_dout_Index[7]_i_3_n_0\ : STD_LOGIC;
  signal \train_dout_Index[7]_i_4_n_0\ : STD_LOGIC;
  signal \train_dout_Index[7]_i_5_n_0\ : STD_LOGIC;
  signal u_LTS_n_2 : STD_LOGIC;
  signal u_LTS_n_21 : STD_LOGIC;
  signal u_LTS_n_4 : STD_LOGIC;
  signal u_STS_n_0 : STD_LOGIC;
  signal u_STS_n_11 : STD_LOGIC;
  signal u_STS_n_2 : STD_LOGIC;
  signal u_STS_n_36 : STD_LOGIC;
  signal u_STS_n_37 : STD_LOGIC;
  signal u_STS_n_38 : STD_LOGIC;
  signal u_STS_n_39 : STD_LOGIC;
  signal u_STS_n_40 : STD_LOGIC;
  signal u_STS_n_41 : STD_LOGIC;
  signal u_STS_n_42 : STD_LOGIC;
  signal u_STS_n_52 : STD_LOGIC;
  signal u_STS_n_53 : STD_LOGIC;
  signal u_STS_n_54 : STD_LOGIC;
  signal u_STS_n_55 : STD_LOGIC;
  signal u_STS_n_56 : STD_LOGIC;
  signal u_STS_n_57 : STD_LOGIC;
  signal u_STS_n_58 : STD_LOGIC;
  signal u_STS_n_59 : STD_LOGIC;
  signal u_STS_n_60 : STD_LOGIC;
  signal u_STS_n_61 : STD_LOGIC;
  signal u_STS_n_62 : STD_LOGIC;
  signal u_STS_n_63 : STD_LOGIC;
  signal u_STS_n_64 : STD_LOGIC;
  signal u_STS_n_65 : STD_LOGIC;
  signal \NLW_train_dout0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_train_dout0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of train_dout0_carry : label is 35;
  attribute ADDER_THRESHOLD of \train_dout0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \train_dout0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \train_dout0_inferred__0/i__carry__0\ : label is 35;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[2]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[3]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[4]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[5]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[6]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[7]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of \train_dout_Index_reg[8]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_INFO of train_dout_last_reg : label is "xilinx.com:interface:axis:1.0 m_axis_train TLAST";
  attribute X_INTERFACE_INFO of \train_dout_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[10]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[11]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[12]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[13]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[14]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[15]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[2]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[3]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[4]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[5]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[6]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[7]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[8]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of \train_dout_reg[9]\ : label is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of train_dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_train TVALID";
begin
train_dout0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => train_dout0_carry_n_0,
      CO(2) => train_dout0_carry_n_1,
      CO(1) => train_dout0_carry_n_2,
      CO(0) => train_dout0_carry_n_3,
      CYINIT => '0',
      DI(3) => u_STS_n_39,
      DI(2) => u_STS_n_40,
      DI(1) => u_STS_n_41,
      DI(0) => u_STS_n_42,
      O(3 downto 0) => train_dout0(3 downto 0),
      S(3) => u_STS_n_52,
      S(2) => u_STS_n_53,
      S(1) => u_STS_n_54,
      S(0) => u_STS_n_55
    );
\train_dout0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => train_dout0_carry_n_0,
      CO(3) => \NLW_train_dout0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \train_dout0_carry__0_n_1\,
      CO(1) => \train_dout0_carry__0_n_2\,
      CO(0) => \train_dout0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => p_1_in1_in(6),
      DI(1) => u_STS_n_37,
      DI(0) => u_STS_n_38,
      O(3 downto 0) => train_dout0(7 downto 4),
      S(3) => u_LTS_n_4,
      S(2) => u_STS_n_56,
      S(1) => u_STS_n_57,
      S(0) => u_STS_n_58
    );
\train_dout0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \train_dout0_inferred__0/i__carry_n_0\,
      CO(2) => \train_dout0_inferred__0/i__carry_n_1\,
      CO(1) => \train_dout0_inferred__0/i__carry_n_2\,
      CO(0) => \train_dout0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in1_in(3 downto 0),
      O(3 downto 0) => train_dout02_out(3 downto 0),
      S(3) => u_STS_n_59,
      S(2) => u_STS_n_60,
      S(1) => u_STS_n_61,
      S(0) => u_STS_n_62
    );
\train_dout0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \train_dout0_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_train_dout0_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \train_dout0_inferred__0/i__carry__0_n_1\,
      CO(1) => \train_dout0_inferred__0/i__carry__0_n_2\,
      CO(0) => \train_dout0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p_1_in1_in(6 downto 4),
      O(3 downto 0) => train_dout02_out(7 downto 4),
      S(3) => u_LTS_n_21,
      S(2) => u_STS_n_63,
      S(1) => u_STS_n_64,
      S(0) => u_STS_n_65
    );
\train_dout_Index[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => STS_dout_Index(3),
      I1 => LTS_dout_Index(3),
      O => \train_dout_Index[3]_i_2_n_0\
    );
\train_dout_Index[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => STS_dout_Index(2),
      I1 => LTS_dout_Index(2),
      O => \train_dout_Index[3]_i_3_n_0\
    );
\train_dout_Index[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => STS_dout_Index(1),
      I1 => LTS_dout_Index(1),
      O => \train_dout_Index[3]_i_4_n_0\
    );
\train_dout_Index[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => STS_dout_Index(0),
      I1 => LTS_dout_Index(0),
      O => \train_dout_Index[3]_i_5_n_0\
    );
\train_dout_Index[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => STS_dout_Index(7),
      I1 => LTS_dout_Index(7),
      O => \train_dout_Index[7]_i_2_n_0\
    );
\train_dout_Index[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => STS_dout_Index(6),
      I1 => LTS_dout_Index(6),
      O => \train_dout_Index[7]_i_3_n_0\
    );
\train_dout_Index[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => STS_dout_Index(5),
      I1 => LTS_dout_Index(5),
      O => \train_dout_Index[7]_i_4_n_0\
    );
\train_dout_Index[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => STS_dout_Index(4),
      I1 => LTS_dout_Index(4),
      O => \train_dout_Index[7]_i_5_n_0\
    );
\train_dout_Index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(0),
      Q => train_dout_Index(0),
      R => '0'
    );
\train_dout_Index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(1),
      Q => train_dout_Index(1),
      R => '0'
    );
\train_dout_Index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(2),
      Q => train_dout_Index(2),
      R => '0'
    );
\train_dout_Index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(3),
      Q => train_dout_Index(3),
      R => '0'
    );
\train_dout_Index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(4),
      Q => train_dout_Index(4),
      R => '0'
    );
\train_dout_Index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(5),
      Q => train_dout_Index(5),
      R => '0'
    );
\train_dout_Index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(6),
      Q => train_dout_Index(6),
      R => '0'
    );
\train_dout_Index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(7),
      Q => train_dout_Index(7),
      R => '0'
    );
\train_dout_Index_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => train_dout_Index0(8),
      Q => train_dout_Index(8),
      R => '0'
    );
train_dout_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => LTS_dout_last,
      Q => train_dout_last,
      R => '0'
    );
\train_dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(0),
      Q => train_dout(0)
    );
\train_dout_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(10),
      Q => train_dout(10)
    );
\train_dout_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(11),
      Q => train_dout(11)
    );
\train_dout_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(12),
      Q => train_dout(12)
    );
\train_dout_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(13),
      Q => train_dout(13)
    );
\train_dout_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(14),
      Q => train_dout(14)
    );
\train_dout_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(15),
      Q => train_dout(15)
    );
\train_dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(1),
      Q => train_dout(1)
    );
\train_dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(2),
      Q => train_dout(2)
    );
\train_dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(3),
      Q => train_dout(3)
    );
\train_dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(4),
      Q => train_dout(4)
    );
\train_dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(5),
      Q => train_dout(5)
    );
\train_dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(6),
      Q => train_dout(6)
    );
\train_dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(7),
      Q => train_dout(7)
    );
\train_dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(8),
      Q => train_dout(8)
    );
\train_dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => u_STS_n_11,
      CLR => u_LTS_n_2,
      D => p_1_in(9),
      Q => train_dout(9)
    );
train_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_LTS_n_2,
      D => u_STS_n_11,
      Q => train_dout_vld
    );
u_LTS: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LTS
     port map (
      E(0) => u_STS_n_2,
      LTS_din_rdy => LTS_din_rdy,
      \LTS_dout_Index_reg[7]_0\(7 downto 0) => LTS_dout_Index(7 downto 0),
      LTS_dout_last => LTS_dout_last,
      \LTS_dout_reg[15]_0\(0) => u_LTS_n_21,
      LTS_dout_vld => LTS_dout_vld,
      Q(15 downto 8) => p_0_in0_in(7 downto 0),
      Q(7 downto 0) => p_0_in_0(7 downto 0),
      S(0) => u_LTS_n_4,
      clk => clk,
      cnt_last => cnt_last,
      \cnt_reg[7]\(0) => u_STS_n_0,
      rst_n => rst_n,
      rst_n_0 => u_LTS_n_2,
      \train_dout0_inferred__0/i__carry__0\(1) => p_1_in1_in(7),
      \train_dout0_inferred__0/i__carry__0\(0) => u_STS_n_36
    );
u_STS: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_STS
     port map (
      D(15 downto 0) => p_1_in(15 downto 0),
      E(0) => u_STS_n_2,
      LTS_din_rdy => LTS_din_rdy,
      LTS_dout_last => LTS_dout_last,
      LTS_dout_vld => LTS_dout_vld,
      Q(7 downto 0) => STS_dout_Index(7 downto 0),
      S(3) => \train_dout_Index[3]_i_2_n_0\,
      S(2) => \train_dout_Index[3]_i_3_n_0\,
      S(1) => \train_dout_Index[3]_i_4_n_0\,
      S(0) => \train_dout_Index[3]_i_5_n_0\,
      \STS_dout_Index_reg[7]_0\(8 downto 0) => train_dout_Index0(8 downto 0),
      STS_dout_last_reg_0(0) => u_STS_n_0,
      \STS_dout_reg[11]_0\(3) => u_STS_n_59,
      \STS_dout_reg[11]_0\(2) => u_STS_n_60,
      \STS_dout_reg[11]_0\(1) => u_STS_n_61,
      \STS_dout_reg[11]_0\(0) => u_STS_n_62,
      \STS_dout_reg[14]_0\(2) => u_STS_n_56,
      \STS_dout_reg[14]_0\(1) => u_STS_n_57,
      \STS_dout_reg[14]_0\(0) => u_STS_n_58,
      \STS_dout_reg[14]_1\(2) => u_STS_n_63,
      \STS_dout_reg[14]_1\(1) => u_STS_n_64,
      \STS_dout_reg[14]_1\(0) => u_STS_n_65,
      \STS_dout_reg[15]_0\(14 downto 7) => p_1_in1_in(7 downto 0),
      \STS_dout_reg[15]_0\(6) => u_STS_n_36,
      \STS_dout_reg[15]_0\(5) => u_STS_n_37,
      \STS_dout_reg[15]_0\(4) => u_STS_n_38,
      \STS_dout_reg[15]_0\(3) => u_STS_n_39,
      \STS_dout_reg[15]_0\(2) => u_STS_n_40,
      \STS_dout_reg[15]_0\(1) => u_STS_n_41,
      \STS_dout_reg[15]_0\(0) => u_STS_n_42,
      \STS_dout_reg[3]_0\(3) => u_STS_n_52,
      \STS_dout_reg[3]_0\(2) => u_STS_n_53,
      \STS_dout_reg[3]_0\(1) => u_STS_n_54,
      \STS_dout_reg[3]_0\(0) => u_STS_n_55,
      STS_dout_vld_reg_0(0) => u_STS_n_11,
      clk => clk,
      cnt_last => cnt_last,
      \cnt_reg[0]\ => u_LTS_n_2,
      train_din_rdy => train_din_rdy,
      train_dout0(7 downto 0) => train_dout0(7 downto 0),
      train_dout02_out(7 downto 0) => train_dout02_out(7 downto 0),
      \train_dout_Index_reg[7]\(3) => \train_dout_Index[7]_i_2_n_0\,
      \train_dout_Index_reg[7]\(2) => \train_dout_Index[7]_i_3_n_0\,
      \train_dout_Index_reg[7]\(1) => \train_dout_Index[7]_i_4_n_0\,
      \train_dout_Index_reg[7]\(0) => \train_dout_Index[7]_i_5_n_0\,
      \train_dout_reg[15]\(15 downto 8) => p_0_in0_in(7 downto 0),
      \train_dout_reg[15]\(7 downto 0) => p_0_in_0(7 downto 0)
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
    train_din_rdy : in STD_LOGIC;
    train_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    train_dout_vld : out STD_LOGIC;
    train_dout_last : out STD_LOGIC;
    train_dout_Index : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ofdm_tx_symbol_train_0_0,symbol_train,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "symbol_train,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_train, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of train_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_train TREADY";
  attribute X_INTERFACE_INFO of train_dout_last : signal is "xilinx.com:interface:axis:1.0 m_axis_train TLAST";
  attribute X_INTERFACE_INFO of train_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_train TVALID";
  attribute X_INTERFACE_INFO of train_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_train TDATA";
  attribute X_INTERFACE_INFO of train_dout_Index : signal is "xilinx.com:interface:axis:1.0 m_axis_train TUSER";
  attribute X_INTERFACE_PARAMETER of train_dout_Index : signal is "XIL_INTERFACENAME m_axis_train, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 9, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_symbol_train
     port map (
      clk => clk,
      rst_n => rst_n,
      train_din_rdy => train_din_rdy,
      train_dout(15 downto 0) => train_dout(15 downto 0),
      train_dout_Index(8 downto 0) => train_dout_Index(8 downto 0),
      train_dout_last => train_dout_last,
      train_dout_vld => train_dout_vld
    );
end STRUCTURE;
