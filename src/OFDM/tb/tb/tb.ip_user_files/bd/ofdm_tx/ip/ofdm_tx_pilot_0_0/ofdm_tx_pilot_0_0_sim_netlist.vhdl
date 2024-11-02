-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:23 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_pilot_0_0/ofdm_tx_pilot_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_pilot_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_pilot_0_0_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rst_n_0 : out STD_LOGIC;
    \cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_pilot_0_0_counter : entity is "counter";
end ofdm_tx_pilot_0_0_counter;

architecture STRUCTURE of ofdm_tx_pilot_0_0_counter is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^rst_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[5]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shift_reg[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_reg[6]_i_3\ : label is "soft_lutpair3";
begin
  rst_n_0 <= \^rst_n_0\;
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55558AAA"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => \shift_reg[6]_i_3_n_0\,
      I2 => cnt_reg(5),
      I3 => cnt_reg(6),
      I4 => cnt_reg(0),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66666666A0AAAAAA"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(1),
      I2 => \shift_reg[6]_i_3_n_0\,
      I3 => cnt_reg(5),
      I4 => cnt_reg(6),
      I5 => cnt_reg(0),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F7F80807F7F8080"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(2),
      I2 => cnt_reg(1),
      I3 => cnt_reg(4),
      I4 => cnt_reg(3),
      I5 => \cnt[4]_i_2_n_0\,
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F80FF007F80FF00"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(2),
      I2 => cnt_reg(1),
      I3 => cnt_reg(4),
      I4 => cnt_reg(3),
      I5 => \cnt[4]_i_2_n_0\,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => cnt_reg(6),
      I2 => cnt_reg(0),
      O => \cnt[4]_i_2_n_0\
    );
\cnt[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5A4A5A"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => \shift_reg[6]_i_3_n_0\,
      I2 => cnt_reg(5),
      I3 => cnt_reg(6),
      I4 => cnt_reg(0),
      O => \cnt[5]_i_1__0_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FA04FA0"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => \shift_reg[6]_i_3_n_0\,
      I2 => cnt_reg(5),
      I3 => cnt_reg(6),
      I4 => cnt_reg(0),
      O => \cnt[6]_i_1_n_0\
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(2),
      I2 => cnt_reg(0),
      I3 => cnt_reg(1),
      I4 => cnt_reg(3),
      O => \cnt[6]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[0]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt_reg(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[0]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt_reg(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[0]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt_reg(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[0]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[3]_i_1_n_0\,
      Q => cnt_reg(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[0]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[4]_i_1_n_0\,
      Q => cnt_reg(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[0]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[5]_i_1__0_n_0\,
      Q => cnt_reg(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt_reg[0]_0\(0),
      CLR => \^rst_n_0\,
      D => \cnt[6]_i_1_n_0\,
      Q => cnt_reg(6)
    );
pilot_dout_vld_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFFFFFF0040"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      I4 => Q(3),
      I5 => Q(6),
      O => D(0)
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      I4 => Q(0),
      O => D(1)
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      I4 => Q(1),
      O => D(2)
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      I4 => Q(2),
      O => D(3)
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      I4 => Q(3),
      O => D(4)
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      I4 => Q(4),
      O => D(5)
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      I4 => \cnt_reg[0]_0\(0),
      O => E(0)
    );
\shift_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \shift_reg[6]_i_3_n_0\,
      I1 => cnt_reg(5),
      I2 => cnt_reg(6),
      I3 => cnt_reg(0),
      I4 => Q(5),
      O => D(6)
    );
\shift_reg[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(1),
      I2 => cnt_reg(4),
      I3 => cnt_reg(3),
      O => \shift_reg[6]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ofdm_tx_pilot_0_0_counter__parameterized0\ is
  port (
    buffer_flag_reg : out STD_LOGIC;
    r_cnt_last : out STD_LOGIC;
    bufferB_full_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    buffer_flag : in STD_LOGIC;
    bufferA_full : in STD_LOGIC;
    pilot_dout_vld : in STD_LOGIC;
    pilot_din_rdy : in STD_LOGIC;
    bufferB_full : in STD_LOGIC;
    pilot_din_vld : in STD_LOGIC;
    pilot_din_Index : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    \cnt_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ofdm_tx_pilot_0_0_counter__parameterized0\ : entity is "counter";
end \ofdm_tx_pilot_0_0_counter__parameterized0\;

architecture STRUCTURE of \ofdm_tx_pilot_0_0_counter__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal bufferA_full1 : STD_LOGIC;
  signal bufferB_full_i_2_n_0 : STD_LOGIC;
  signal \cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \^r_cnt_last\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[4]_i_1__0\ : label is "soft_lutpair4";
begin
  E(0) <= \^e\(0);
  Q(5 downto 0) <= \^q\(5 downto 0);
  r_cnt_last <= \^r_cnt_last\;
bufferA_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4F4F4F4F4F4F4"
    )
        port map (
      I0 => buffer_flag,
      I1 => bufferA_full1,
      I2 => bufferA_full,
      I3 => \^r_cnt_last\,
      I4 => pilot_dout_vld,
      I5 => pilot_din_rdy,
      O => buffer_flag_reg
    );
bufferA_full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => pilot_din_Index(4),
      I1 => pilot_din_Index(3),
      I2 => pilot_din_Index(5),
      I3 => pilot_din_Index(2),
      I4 => pilot_din_Index(0),
      I5 => pilot_din_Index(1),
      O => bufferA_full1
    );
bufferB_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F8F8F8F8F8"
    )
        port map (
      I0 => bufferB_full_i_2_n_0,
      I1 => bufferA_full1,
      I2 => bufferB_full,
      I3 => \^r_cnt_last\,
      I4 => pilot_dout_vld,
      I5 => pilot_din_rdy,
      O => bufferB_full_reg
    );
bufferB_full_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => buffer_flag,
      I1 => pilot_din_vld,
      I2 => bufferA_full,
      I3 => bufferB_full,
      O => bufferB_full_i_2_n_0
    );
\cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \cnt[0]_i_1__0_n_0\
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \cnt[4]_i_1__0_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFF0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \^q\(3),
      O => \cnt[5]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^e\(0),
      CLR => \cnt_reg[0]_0\,
      D => \cnt[0]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^e\(0),
      CLR => \cnt_reg[0]_0\,
      D => \cnt[1]_i_1__0_n_0\,
      Q => \^q\(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^e\(0),
      CLR => \cnt_reg[0]_0\,
      D => \cnt[2]_i_1__0_n_0\,
      Q => \^q\(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^e\(0),
      CLR => \cnt_reg[0]_0\,
      D => \cnt[3]_i_1__0_n_0\,
      Q => \^q\(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^e\(0),
      CLR => \cnt_reg[0]_0\,
      D => \cnt[4]_i_1__0_n_0\,
      Q => \^q\(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^e\(0),
      CLR => \cnt_reg[0]_0\,
      D => \cnt[5]_i_1_n_0\,
      Q => \^q\(5)
    );
pilot_dout_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \^r_cnt_last\
    );
u_pilot_ram_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bufferA_full,
      I1 => bufferB_full,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_pilot_0_0_pilot is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pilot_din_Index : in STD_LOGIC_VECTOR ( 5 downto 0 );
    pilot_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pilot_din_vld : in STD_LOGIC;
    pilot_din_rdy : in STD_LOGIC;
    pilot_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pilot_dout_vld : out STD_LOGIC;
    pilot_dout_rdy : out STD_LOGIC;
    pilot_dout_last : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_pilot_0_0_pilot : entity is "pilot";
end ofdm_tx_pilot_0_0_pilot;

architecture STRUCTURE of ofdm_tx_pilot_0_0_pilot is
  component ofdm_tx_pilot_0_0_pilot_ram is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 6 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ofdm_tx_pilot_0_0_pilot_ram;
  signal En_cnt : STD_LOGIC;
  signal En_cnt_reg_n_0 : STD_LOGIC;
  signal addra : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \addra[0]_i_1_n_0\ : STD_LOGIC;
  signal \addra[0]_i_2_n_0\ : STD_LOGIC;
  signal \addra[0]_i_3_n_0\ : STD_LOGIC;
  signal \addra[1]_i_1_n_0\ : STD_LOGIC;
  signal \addra[1]_i_2_n_0\ : STD_LOGIC;
  signal \addra[2]_i_1_n_0\ : STD_LOGIC;
  signal \addra[2]_i_2_n_0\ : STD_LOGIC;
  signal \addra[3]_i_1_n_0\ : STD_LOGIC;
  signal \addra[3]_i_2_n_0\ : STD_LOGIC;
  signal \addra[4]_i_1_n_0\ : STD_LOGIC;
  signal \addra[4]_i_2_n_0\ : STD_LOGIC;
  signal \addra[5]_i_1_n_0\ : STD_LOGIC;
  signal \addra[5]_i_2_n_0\ : STD_LOGIC;
  signal \addra[6]_i_1_n_0\ : STD_LOGIC;
  signal \addra_reg_n_0_[0]\ : STD_LOGIC;
  signal \addra_reg_n_0_[1]\ : STD_LOGIC;
  signal \addra_reg_n_0_[2]\ : STD_LOGIC;
  signal \addra_reg_n_0_[3]\ : STD_LOGIC;
  signal \addra_reg_n_0_[4]\ : STD_LOGIC;
  signal \addra_reg_n_0_[5]\ : STD_LOGIC;
  signal \addra_reg_n_0_[6]\ : STD_LOGIC;
  signal bufferA_full : STD_LOGIC;
  signal bufferB_full : STD_LOGIC;
  signal buffer_flag : STD_LOGIC;
  signal buffer_flag0 : STD_LOGIC;
  signal buffer_flag_i_1_n_0 : STD_LOGIC;
  signal \dina[0]_i_1_n_0\ : STD_LOGIC;
  signal \dina[10]_i_1_n_0\ : STD_LOGIC;
  signal \dina[11]_i_1_n_0\ : STD_LOGIC;
  signal \dina[12]_i_1_n_0\ : STD_LOGIC;
  signal \dina[13]_i_1_n_0\ : STD_LOGIC;
  signal \dina[14]_i_1_n_0\ : STD_LOGIC;
  signal \dina[15]_i_1_n_0\ : STD_LOGIC;
  signal \dina[1]_i_1_n_0\ : STD_LOGIC;
  signal \dina[2]_i_1_n_0\ : STD_LOGIC;
  signal \dina[3]_i_1_n_0\ : STD_LOGIC;
  signal \dina[4]_i_1_n_0\ : STD_LOGIC;
  signal \dina[5]_i_1_n_0\ : STD_LOGIC;
  signal \dina[6]_i_1_n_0\ : STD_LOGIC;
  signal \dina[7]_i_1_n_0\ : STD_LOGIC;
  signal \dina[7]_i_2_n_0\ : STD_LOGIC;
  signal \dina[8]_i_1_n_0\ : STD_LOGIC;
  signal \dina[9]_i_1_n_0\ : STD_LOGIC;
  signal \dina_reg_n_0_[0]\ : STD_LOGIC;
  signal \dina_reg_n_0_[10]\ : STD_LOGIC;
  signal \dina_reg_n_0_[11]\ : STD_LOGIC;
  signal \dina_reg_n_0_[12]\ : STD_LOGIC;
  signal \dina_reg_n_0_[13]\ : STD_LOGIC;
  signal \dina_reg_n_0_[14]\ : STD_LOGIC;
  signal \dina_reg_n_0_[15]\ : STD_LOGIC;
  signal \dina_reg_n_0_[1]\ : STD_LOGIC;
  signal \dina_reg_n_0_[2]\ : STD_LOGIC;
  signal \dina_reg_n_0_[3]\ : STD_LOGIC;
  signal \dina_reg_n_0_[4]\ : STD_LOGIC;
  signal \dina_reg_n_0_[5]\ : STD_LOGIC;
  signal \dina_reg_n_0_[6]\ : STD_LOGIC;
  signal \dina_reg_n_0_[7]\ : STD_LOGIC;
  signal \dina_reg_n_0_[8]\ : STD_LOGIC;
  signal \dina_reg_n_0_[9]\ : STD_LOGIC;
  signal enb : STD_LOGIC;
  signal insert_i_1_n_0 : STD_LOGIC;
  signal insert_i_2_n_0 : STD_LOGIC;
  signal insert_i_3_n_0 : STD_LOGIC;
  signal insert_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^pilot_dout_vld\ : STD_LOGIC;
  signal r_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal r_cnt_last : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal u_counter_n_0 : STD_LOGIC;
  signal u_counter_n_1 : STD_LOGIC;
  signal u_counter_n_2 : STD_LOGIC;
  signal u_counter_n_3 : STD_LOGIC;
  signal u_counter_n_4 : STD_LOGIC;
  signal u_counter_n_5 : STD_LOGIC;
  signal u_counter_n_6 : STD_LOGIC;
  signal u_counter_n_7 : STD_LOGIC;
  signal u_counter_n_8 : STD_LOGIC;
  signal u_counter_r_n_0 : STD_LOGIC;
  signal u_counter_r_n_2 : STD_LOGIC;
  signal wea_i_1_n_0 : STD_LOGIC;
  signal wea_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of buffer_flag_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dina[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dina[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dina[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dina[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dina[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dina[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dina[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dina[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dina[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dina[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dina[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dina[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dina[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dina[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dina[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dina[9]_i_1\ : label is "soft_lutpair10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pilot_dout_last_reg : label is "xilinx.com:interface:axis:1.0 m_axis_pilot TLAST";
  attribute X_INTERFACE_INFO of pilot_dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_pilot TVALID";
  attribute x_core_info : string;
  attribute x_core_info of u_pilot_ram : label is "blk_mem_gen_v8_4_6,Vivado 2023.1";
  attribute SOFT_HLUTNM of u_pilot_ram_i_2 : label is "soft_lutpair14";
  attribute X_INTERFACE_INFO of pilot_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_pilot TREADY";
  attribute X_INTERFACE_INFO of pilot_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_pilot TVALID";
  attribute X_INTERFACE_INFO of pilot_dout_last : signal is "xilinx.com:interface:axis:1.0 m_axis_pilot TLAST";
  attribute X_INTERFACE_INFO of pilot_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_pilot TREADY";
  attribute X_INTERFACE_INFO of pilot_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_pilot TVALID";
  attribute X_INTERFACE_INFO of pilot_din : signal is "xilinx.com:interface:axis:1.0 s_axis_pilot TDATA";
  attribute X_INTERFACE_INFO of pilot_din_Index : signal is "xilinx.com:interface:axis:1.0 s_axis_pilot TUSER";
  attribute X_INTERFACE_INFO of pilot_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_pilot TDATA";
begin
  pilot_dout_vld <= \^pilot_dout_vld\;
En_cnt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => pilot_din_Index(5),
      I1 => pilot_din_Index(4),
      I2 => pilot_din_Index(1),
      I3 => pilot_din_Index(0),
      I4 => pilot_din_Index(3),
      I5 => pilot_din_Index(2),
      O => En_cnt
    );
En_cnt_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => En_cnt,
      Q => En_cnt_reg_n_0
    );
\addra[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFF2A002A002A00"
    )
        port map (
      I0 => \addra[0]_i_2_n_0\,
      I1 => bufferB_full,
      I2 => bufferA_full,
      I3 => pilot_din_vld,
      I4 => insert_reg_n_0,
      I5 => \addra[0]_i_3_n_0\,
      O => \addra[0]_i_1_n_0\
    );
\addra[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1115A23144005CCE"
    )
        port map (
      I0 => pilot_din_Index(4),
      I1 => pilot_din_Index(3),
      I2 => pilot_din_Index(1),
      I3 => pilot_din_Index(2),
      I4 => pilot_din_Index(5),
      I5 => pilot_din_Index(0),
      O => \addra[0]_i_2_n_0\
    );
\addra[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000002081"
    )
        port map (
      I0 => \addra_reg_n_0_[0]\,
      I1 => \addra_reg_n_0_[4]\,
      I2 => \addra_reg_n_0_[2]\,
      I3 => \addra_reg_n_0_[1]\,
      I4 => \addra_reg_n_0_[5]\,
      I5 => \addra_reg_n_0_[3]\,
      O => \addra[0]_i_3_n_0\
    );
\addra[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFF2A002A002A00"
    )
        port map (
      I0 => \addra[1]_i_2_n_0\,
      I1 => bufferB_full,
      I2 => bufferA_full,
      I3 => pilot_din_vld,
      I4 => insert_reg_n_0,
      I5 => addra(1),
      O => \addra[1]_i_1_n_0\
    );
\addra[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41457869050525A7"
    )
        port map (
      I0 => pilot_din_Index(4),
      I1 => pilot_din_Index(3),
      I2 => pilot_din_Index(1),
      I3 => pilot_din_Index(2),
      I4 => pilot_din_Index(5),
      I5 => pilot_din_Index(0),
      O => \addra[1]_i_2_n_0\
    );
\addra[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000001"
    )
        port map (
      I0 => \addra_reg_n_0_[5]\,
      I1 => \addra_reg_n_0_[1]\,
      I2 => \addra_reg_n_0_[3]\,
      I3 => \addra_reg_n_0_[4]\,
      I4 => \addra_reg_n_0_[2]\,
      I5 => \addra_reg_n_0_[0]\,
      O => addra(1)
    );
\addra[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFF2A002A002A00"
    )
        port map (
      I0 => \addra[2]_i_2_n_0\,
      I1 => bufferB_full,
      I2 => bufferA_full,
      I3 => pilot_din_vld,
      I4 => insert_reg_n_0,
      I5 => addra(2),
      O => \addra[2]_i_1_n_0\
    );
\addra[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01507F8105507A07"
    )
        port map (
      I0 => pilot_din_Index(4),
      I1 => pilot_din_Index(3),
      I2 => pilot_din_Index(1),
      I3 => pilot_din_Index(2),
      I4 => pilot_din_Index(5),
      I5 => pilot_din_Index(0),
      O => \addra[2]_i_2_n_0\
    );
\addra[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000001"
    )
        port map (
      I0 => \addra_reg_n_0_[5]\,
      I1 => \addra_reg_n_0_[3]\,
      I2 => \addra_reg_n_0_[4]\,
      I3 => \addra_reg_n_0_[2]\,
      I4 => \addra_reg_n_0_[1]\,
      I5 => \addra_reg_n_0_[0]\,
      O => addra(2)
    );
\addra[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFF2A002A002A00"
    )
        port map (
      I0 => \addra[3]_i_2_n_0\,
      I1 => bufferB_full,
      I2 => bufferA_full,
      I3 => pilot_din_vld,
      I4 => insert_reg_n_0,
      I5 => addra(5),
      O => \addra[3]_i_1_n_0\
    );
\addra[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4511B3324111B334"
    )
        port map (
      I0 => pilot_din_Index(4),
      I1 => pilot_din_Index(3),
      I2 => pilot_din_Index(1),
      I3 => pilot_din_Index(2),
      I4 => pilot_din_Index(5),
      I5 => pilot_din_Index(0),
      O => \addra[3]_i_2_n_0\
    );
\addra[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFF2A002A002A00"
    )
        port map (
      I0 => \addra[4]_i_2_n_0\,
      I1 => bufferB_full,
      I2 => bufferA_full,
      I3 => pilot_din_vld,
      I4 => insert_reg_n_0,
      I5 => addra(4),
      O => \addra[4]_i_1_n_0\
    );
\addra[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444666654446662"
    )
        port map (
      I0 => pilot_din_Index(4),
      I1 => pilot_din_Index(3),
      I2 => pilot_din_Index(1),
      I3 => pilot_din_Index(2),
      I4 => pilot_din_Index(5),
      I5 => pilot_din_Index(0),
      O => \addra[4]_i_2_n_0\
    );
\addra[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000808000000"
    )
        port map (
      I0 => \addra_reg_n_0_[1]\,
      I1 => \addra_reg_n_0_[0]\,
      I2 => \addra_reg_n_0_[4]\,
      I3 => \addra_reg_n_0_[5]\,
      I4 => \addra_reg_n_0_[3]\,
      I5 => \addra_reg_n_0_[2]\,
      O => addra(4)
    );
\addra[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFF2A002A002A00"
    )
        port map (
      I0 => \addra[5]_i_2_n_0\,
      I1 => bufferB_full,
      I2 => bufferA_full,
      I3 => pilot_din_vld,
      I4 => insert_reg_n_0,
      I5 => addra(5),
      O => \addra[5]_i_1_n_0\
    );
\addra[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => pilot_din_Index(4),
      I1 => pilot_din_Index(3),
      I2 => pilot_din_Index(5),
      O => \addra[5]_i_2_n_0\
    );
\addra[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002008000000"
    )
        port map (
      I0 => \addra_reg_n_0_[0]\,
      I1 => \addra_reg_n_0_[3]\,
      I2 => \addra_reg_n_0_[4]\,
      I3 => \addra_reg_n_0_[5]\,
      I4 => \addra_reg_n_0_[1]\,
      I5 => \addra_reg_n_0_[2]\,
      O => addra(5)
    );
\addra[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBAAAA0888AAAA"
    )
        port map (
      I0 => buffer_flag,
      I1 => pilot_din_vld,
      I2 => bufferA_full,
      I3 => bufferB_full,
      I4 => insert_reg_n_0,
      I5 => \addra_reg_n_0_[6]\,
      O => \addra[6]_i_1_n_0\
    );
\addra_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => \addra[0]_i_1_n_0\,
      Q => \addra_reg_n_0_[0]\
    );
\addra_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => \addra[1]_i_1_n_0\,
      Q => \addra_reg_n_0_[1]\
    );
\addra_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => \addra[2]_i_1_n_0\,
      Q => \addra_reg_n_0_[2]\
    );
\addra_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => \addra[3]_i_1_n_0\,
      Q => \addra_reg_n_0_[3]\
    );
\addra_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => \addra[4]_i_1_n_0\,
      Q => \addra_reg_n_0_[4]\
    );
\addra_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => \addra[5]_i_1_n_0\,
      Q => \addra_reg_n_0_[5]\
    );
\addra_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => \addra[6]_i_1_n_0\,
      Q => \addra_reg_n_0_[6]\
    );
bufferA_full_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => u_counter_r_n_0,
      Q => bufferA_full
    );
bufferB_full_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => u_counter_r_n_2,
      Q => bufferB_full
    );
buffer_flag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => En_cnt,
      I1 => buffer_flag,
      O => buffer_flag_i_1_n_0
    );
buffer_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => buffer_flag_i_1_n_0,
      Q => buffer_flag
    );
\dina[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(0),
      O => \dina[0]_i_1_n_0\
    );
\dina[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(10),
      O => \dina[10]_i_1_n_0\
    );
\dina[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(11),
      O => \dina[11]_i_1_n_0\
    );
\dina[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(12),
      O => \dina[12]_i_1_n_0\
    );
\dina[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(13),
      O => \dina[13]_i_1_n_0\
    );
\dina[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(14),
      O => \dina[14]_i_1_n_0\
    );
\dina[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(15),
      O => \dina[15]_i_1_n_0\
    );
\dina[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(1),
      O => \dina[1]_i_1_n_0\
    );
\dina[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(2),
      O => \dina[2]_i_1_n_0\
    );
\dina[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(3),
      O => \dina[3]_i_1_n_0\
    );
\dina[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(4),
      O => \dina[4]_i_1_n_0\
    );
\dina[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(5),
      O => \dina[5]_i_1_n_0\
    );
\dina[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => pilot_din(6),
      I1 => pilot_din_vld,
      I2 => bufferA_full,
      I3 => bufferB_full,
      O => \dina[6]_i_1_n_0\
    );
\dina[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8888BBB8BBBB888"
    )
        port map (
      I0 => pilot_din(7),
      I1 => \dina[7]_i_2_n_0\,
      I2 => \addra_reg_n_0_[2]\,
      I3 => \addra_reg_n_0_[1]\,
      I4 => p_0_in,
      I5 => p_1_in,
      O => \dina[7]_i_1_n_0\
    );
\dina[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => bufferB_full,
      I1 => bufferA_full,
      I2 => pilot_din_vld,
      O => \dina[7]_i_2_n_0\
    );
\dina[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(8),
      O => \dina[8]_i_1_n_0\
    );
\dina[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => pilot_din(9),
      O => \dina[9]_i_1_n_0\
    );
\dina_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[0]_i_1_n_0\,
      Q => \dina_reg_n_0_[0]\
    );
\dina_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[10]_i_1_n_0\,
      Q => \dina_reg_n_0_[10]\
    );
\dina_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[11]_i_1_n_0\,
      Q => \dina_reg_n_0_[11]\
    );
\dina_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[12]_i_1_n_0\,
      Q => \dina_reg_n_0_[12]\
    );
\dina_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[13]_i_1_n_0\,
      Q => \dina_reg_n_0_[13]\
    );
\dina_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[14]_i_1_n_0\,
      Q => \dina_reg_n_0_[14]\
    );
\dina_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[15]_i_1_n_0\,
      Q => \dina_reg_n_0_[15]\
    );
\dina_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[1]_i_1_n_0\,
      Q => \dina_reg_n_0_[1]\
    );
\dina_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[2]_i_1_n_0\,
      Q => \dina_reg_n_0_[2]\
    );
\dina_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[3]_i_1_n_0\,
      Q => \dina_reg_n_0_[3]\
    );
\dina_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[4]_i_1_n_0\,
      Q => \dina_reg_n_0_[4]\
    );
\dina_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[5]_i_1_n_0\,
      Q => \dina_reg_n_0_[5]\
    );
\dina_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[6]_i_1_n_0\,
      Q => \dina_reg_n_0_[6]\
    );
\dina_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[7]_i_1_n_0\,
      Q => \dina_reg_n_0_[7]\
    );
\dina_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[8]_i_1_n_0\,
      Q => \dina_reg_n_0_[8]\
    );
\dina_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wea_i_1_n_0,
      CLR => u_counter_n_8,
      D => \dina[9]_i_1_n_0\,
      Q => \dina_reg_n_0_[9]\
    );
insert_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8B88"
    )
        port map (
      I0 => insert_i_2_n_0,
      I1 => En_cnt_reg_n_0,
      I2 => insert_i_3_n_0,
      I3 => insert_reg_n_0,
      O => insert_i_1_n_0
    );
insert_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \addra_reg_n_0_[5]\,
      I1 => \addra_reg_n_0_[4]\,
      I2 => \addra_reg_n_0_[2]\,
      I3 => \addra_reg_n_0_[1]\,
      I4 => \addra_reg_n_0_[3]\,
      I5 => \addra_reg_n_0_[0]\,
      O => insert_i_2_n_0
    );
insert_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \addra_reg_n_0_[1]\,
      I1 => \addra_reg_n_0_[2]\,
      I2 => \addra_reg_n_0_[5]\,
      I3 => \addra_reg_n_0_[0]\,
      I4 => \addra_reg_n_0_[4]\,
      I5 => \addra_reg_n_0_[3]\,
      O => insert_i_3_n_0
    );
insert_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => insert_i_1_n_0,
      PRE => u_counter_n_8,
      Q => insert_reg_n_0
    );
pilot_dout_last_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => r_cnt_last,
      Q => pilot_dout_last
    );
pilot_dout_rdy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => bufferA_full,
      I1 => bufferB_full,
      O => pilot_dout_rdy
    );
pilot_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => enb,
      Q => \^pilot_dout_vld\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_0,
      D => u_counter_n_7,
      PRE => u_counter_n_8,
      Q => \shift_reg_reg_n_0_[0]\
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_0,
      D => u_counter_n_6,
      PRE => u_counter_n_8,
      Q => \shift_reg_reg_n_0_[1]\
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_0,
      D => u_counter_n_5,
      PRE => u_counter_n_8,
      Q => \shift_reg_reg_n_0_[2]\
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_0,
      D => u_counter_n_4,
      PRE => u_counter_n_8,
      Q => p_0_in
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_0,
      D => u_counter_n_3,
      PRE => u_counter_n_8,
      Q => \shift_reg_reg_n_0_[4]\
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_0,
      D => u_counter_n_2,
      PRE => u_counter_n_8,
      Q => \shift_reg_reg_n_0_[5]\
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => u_counter_n_0,
      D => u_counter_n_1,
      PRE => u_counter_n_8,
      Q => p_1_in
    );
u_counter: entity work.ofdm_tx_pilot_0_0_counter
     port map (
      D(6) => u_counter_n_1,
      D(5) => u_counter_n_2,
      D(4) => u_counter_n_3,
      D(3) => u_counter_n_4,
      D(2) => u_counter_n_5,
      D(1) => u_counter_n_6,
      D(0) => u_counter_n_7,
      E(0) => u_counter_n_0,
      Q(6) => p_1_in,
      Q(5) => \shift_reg_reg_n_0_[5]\,
      Q(4) => \shift_reg_reg_n_0_[4]\,
      Q(3) => p_0_in,
      Q(2) => \shift_reg_reg_n_0_[2]\,
      Q(1) => \shift_reg_reg_n_0_[1]\,
      Q(0) => \shift_reg_reg_n_0_[0]\,
      clk => clk,
      \cnt_reg[0]_0\(0) => En_cnt_reg_n_0,
      rst_n => rst_n,
      rst_n_0 => u_counter_n_8
    );
u_counter_r: entity work.\ofdm_tx_pilot_0_0_counter__parameterized0\
     port map (
      E(0) => enb,
      Q(5 downto 0) => r_cnt(5 downto 0),
      bufferA_full => bufferA_full,
      bufferB_full => bufferB_full,
      bufferB_full_reg => u_counter_r_n_2,
      buffer_flag => buffer_flag,
      buffer_flag_reg => u_counter_r_n_0,
      clk => clk,
      \cnt_reg[0]_0\ => u_counter_n_8,
      pilot_din_Index(5 downto 0) => pilot_din_Index(5 downto 0),
      pilot_din_rdy => pilot_din_rdy,
      pilot_din_vld => pilot_din_vld,
      pilot_dout_vld => \^pilot_dout_vld\,
      r_cnt_last => r_cnt_last
    );
u_pilot_ram: component ofdm_tx_pilot_0_0_pilot_ram
     port map (
      addra(6) => \addra_reg_n_0_[6]\,
      addra(5) => \addra_reg_n_0_[5]\,
      addra(4) => \addra_reg_n_0_[4]\,
      addra(3) => \addra_reg_n_0_[3]\,
      addra(2) => \addra_reg_n_0_[2]\,
      addra(1) => \addra_reg_n_0_[1]\,
      addra(0) => \addra_reg_n_0_[0]\,
      addrb(6) => buffer_flag0,
      addrb(5 downto 0) => r_cnt(5 downto 0),
      clka => clk,
      clkb => clk,
      dina(15) => \dina_reg_n_0_[15]\,
      dina(14) => \dina_reg_n_0_[14]\,
      dina(13) => \dina_reg_n_0_[13]\,
      dina(12) => \dina_reg_n_0_[12]\,
      dina(11) => \dina_reg_n_0_[11]\,
      dina(10) => \dina_reg_n_0_[10]\,
      dina(9) => \dina_reg_n_0_[9]\,
      dina(8) => \dina_reg_n_0_[8]\,
      dina(7) => \dina_reg_n_0_[7]\,
      dina(6) => \dina_reg_n_0_[6]\,
      dina(5) => \dina_reg_n_0_[5]\,
      dina(4) => \dina_reg_n_0_[4]\,
      dina(3) => \dina_reg_n_0_[3]\,
      dina(2) => \dina_reg_n_0_[2]\,
      dina(1) => \dina_reg_n_0_[1]\,
      dina(0) => \dina_reg_n_0_[0]\,
      doutb(15 downto 0) => pilot_dout(15 downto 0),
      enb => enb,
      wea(0) => wea_reg_n_0
    );
u_pilot_ram_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buffer_flag,
      O => buffer_flag0
    );
wea_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A2A2A"
    )
        port map (
      I0 => pilot_din_vld,
      I1 => bufferA_full,
      I2 => bufferB_full,
      I3 => \addra[0]_i_3_n_0\,
      I4 => insert_reg_n_0,
      O => wea_i_1_n_0
    );
wea_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_counter_n_8,
      D => wea_i_1_n_0,
      Q => wea_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_pilot_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pilot_din_Index : in STD_LOGIC_VECTOR ( 5 downto 0 );
    pilot_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pilot_din_vld : in STD_LOGIC;
    pilot_din_rdy : in STD_LOGIC;
    pilot_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pilot_dout_vld : out STD_LOGIC;
    pilot_dout_rdy : out STD_LOGIC;
    pilot_dout_last : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ofdm_tx_pilot_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ofdm_tx_pilot_0_0 : entity is "ofdm_tx_pilot_0_0,pilot,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ofdm_tx_pilot_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ofdm_tx_pilot_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ofdm_tx_pilot_0_0 : entity is "pilot,Vivado 2023.1";
end ofdm_tx_pilot_0_0;

architecture STRUCTURE of ofdm_tx_pilot_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_pilot:m_axis_pilot, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pilot_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_pilot TREADY";
  attribute X_INTERFACE_INFO of pilot_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_pilot TVALID";
  attribute X_INTERFACE_INFO of pilot_dout_last : signal is "xilinx.com:interface:axis:1.0 m_axis_pilot TLAST";
  attribute X_INTERFACE_PARAMETER of pilot_dout_last : signal is "XIL_INTERFACENAME m_axis_pilot, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pilot_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_pilot TREADY";
  attribute X_INTERFACE_PARAMETER of pilot_dout_rdy : signal is "XIL_INTERFACENAME s_axis_pilot, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 6, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pilot_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_pilot TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pilot_din : signal is "xilinx.com:interface:axis:1.0 s_axis_pilot TDATA";
  attribute X_INTERFACE_INFO of pilot_din_Index : signal is "xilinx.com:interface:axis:1.0 s_axis_pilot TUSER";
  attribute X_INTERFACE_INFO of pilot_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_pilot TDATA";
begin
inst: entity work.ofdm_tx_pilot_0_0_pilot
     port map (
      clk => clk,
      pilot_din(15 downto 0) => pilot_din(15 downto 0),
      pilot_din_Index(5 downto 0) => pilot_din_Index(5 downto 0),
      pilot_din_rdy => pilot_din_rdy,
      pilot_din_vld => pilot_din_vld,
      pilot_dout(15 downto 0) => pilot_dout(15 downto 0),
      pilot_dout_last => pilot_dout_last,
      pilot_dout_rdy => pilot_dout_rdy,
      pilot_dout_vld => pilot_dout_vld,
      rst_n => rst_n
    );
end STRUCTURE;
