-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Nov 10 19:35:21 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_dac_0_0/ofdm_tx_dac_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_dac_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_dac_0_0_BufferCC_dac is
  port (
    io_dataIn : in STD_LOGIC_VECTOR ( 9 downto 0 );
    io_dataOut : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clk1 : in STD_LOGIC;
    rstN1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_dac_0_0_BufferCC_dac : entity is "BufferCC_dac";
end ofdm_tx_dac_0_0_BufferCC_dac;

architecture STRUCTURE of ofdm_tx_dac_0_0_BufferCC_dac is
  signal buffers_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute altera_attribute : string;
  attribute altera_attribute of buffers_0 : signal is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute async_reg : string;
  attribute async_reg of buffers_0 : signal is "true";
  signal \buffers_0[9]_i_1_n_0\ : STD_LOGIC;
  signal buffers_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute async_reg of buffers_1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \buffers_0_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \buffers_0_reg[0]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[0]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[1]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[1]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[1]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[2]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[2]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[2]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[3]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[3]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[3]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[4]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[4]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[4]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[5]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[5]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[5]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[6]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[6]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[6]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[7]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[7]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[7]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[8]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[8]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[8]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[9]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[9]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[9]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_1_reg[0]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[8]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[9]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[9]\ : label is "yes";
begin
  io_dataOut(9 downto 0) <= buffers_1(9 downto 0);
\buffers_0[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstN1,
      O => \buffers_0[9]_i_1_n_0\
    );
\buffers_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(0),
      Q => buffers_0(0)
    );
\buffers_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(1),
      Q => buffers_0(1)
    );
\buffers_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(2),
      Q => buffers_0(2)
    );
\buffers_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(3),
      Q => buffers_0(3)
    );
\buffers_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(4),
      Q => buffers_0(4)
    );
\buffers_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(5),
      Q => buffers_0(5)
    );
\buffers_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(6),
      Q => buffers_0(6)
    );
\buffers_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(7),
      Q => buffers_0(7)
    );
\buffers_0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(8),
      Q => buffers_0(8)
    );
\buffers_0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(9),
      Q => buffers_0(9)
    );
\buffers_1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(0),
      Q => buffers_1(0)
    );
\buffers_1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(1),
      Q => buffers_1(1)
    );
\buffers_1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(2),
      Q => buffers_1(2)
    );
\buffers_1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(3),
      Q => buffers_1(3)
    );
\buffers_1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(4),
      Q => buffers_1(4)
    );
\buffers_1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(5),
      Q => buffers_1(5)
    );
\buffers_1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(6),
      Q => buffers_1(6)
    );
\buffers_1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(7),
      Q => buffers_1(7)
    );
\buffers_1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(8),
      Q => buffers_1(8)
    );
\buffers_1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk1,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(9),
      Q => buffers_1(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_dac_0_0_BufferCC_dac1 is
  port (
    io_dataIn : in STD_LOGIC;
    io_dataOut : out STD_LOGIC;
    clk2 : in STD_LOGIC;
    rstN1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_dac_0_0_BufferCC_dac1 : entity is "BufferCC_dac1";
end ofdm_tx_dac_0_0_BufferCC_dac1;

architecture STRUCTURE of ofdm_tx_dac_0_0_BufferCC_dac1 is
  signal buffers_0 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of buffers_0 : signal is "true";
  signal buffers_0_i_1_n_0 : STD_LOGIC;
  signal buffers_1 : STD_LOGIC;
  attribute async_reg of buffers_1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of buffers_0_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of buffers_0_reg : label is "yes";
  attribute ASYNC_REG_boolean of buffers_1_reg : label is std.standard.true;
  attribute KEEP of buffers_1_reg : label is "yes";
begin
  io_dataOut <= buffers_1;
buffers_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstN1,
      O => buffers_0_i_1_n_0
    );
buffers_0_reg: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => buffers_0_i_1_n_0,
      D => io_dataIn,
      Q => buffers_0
    );
buffers_1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => buffers_0_i_1_n_0,
      D => buffers_0,
      Q => buffers_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_dac_0_0_BufferCC_dac2 is
  port (
    io_dataIn : in STD_LOGIC_VECTOR ( 9 downto 0 );
    io_dataOut : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clk2 : in STD_LOGIC;
    toplevel_rstN1_synchronized : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_dac_0_0_BufferCC_dac2 : entity is "BufferCC_dac2";
end ofdm_tx_dac_0_0_BufferCC_dac2;

architecture STRUCTURE of ofdm_tx_dac_0_0_BufferCC_dac2 is
  signal buffers_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute altera_attribute : string;
  attribute altera_attribute of buffers_0 : signal is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute async_reg : string;
  attribute async_reg of buffers_0 : signal is "true";
  signal \buffers_0[9]_i_1_n_0\ : STD_LOGIC;
  signal buffers_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute async_reg of buffers_1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \buffers_0_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \buffers_0_reg[0]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[0]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[1]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[1]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[1]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[2]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[2]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[2]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[3]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[3]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[3]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[4]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[4]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[4]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[5]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[5]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[5]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[6]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[6]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[6]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[7]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[7]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[7]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[8]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[8]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[8]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_0_reg[9]\ : label is std.standard.true;
  attribute KEEP of \buffers_0_reg[9]\ : label is "yes";
  attribute altera_attribute of \buffers_0_reg[9]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute ASYNC_REG_boolean of \buffers_1_reg[0]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[8]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \buffers_1_reg[9]\ : label is std.standard.true;
  attribute KEEP of \buffers_1_reg[9]\ : label is "yes";
begin
  io_dataOut(9 downto 0) <= buffers_1(9 downto 0);
\buffers_0[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toplevel_rstN1_synchronized,
      O => \buffers_0[9]_i_1_n_0\
    );
\buffers_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(0),
      Q => buffers_0(0)
    );
\buffers_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(1),
      Q => buffers_0(1)
    );
\buffers_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(2),
      Q => buffers_0(2)
    );
\buffers_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(3),
      Q => buffers_0(3)
    );
\buffers_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(4),
      Q => buffers_0(4)
    );
\buffers_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(5),
      Q => buffers_0(5)
    );
\buffers_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(6),
      Q => buffers_0(6)
    );
\buffers_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(7),
      Q => buffers_0(7)
    );
\buffers_0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(8),
      Q => buffers_0(8)
    );
\buffers_0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => io_dataIn(9),
      Q => buffers_0(9)
    );
\buffers_1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(0),
      Q => buffers_1(0)
    );
\buffers_1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(1),
      Q => buffers_1(1)
    );
\buffers_1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(2),
      Q => buffers_1(2)
    );
\buffers_1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(3),
      Q => buffers_1(3)
    );
\buffers_1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(4),
      Q => buffers_1(4)
    );
\buffers_1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(5),
      Q => buffers_1(5)
    );
\buffers_1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(6),
      Q => buffers_1(6)
    );
\buffers_1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(7),
      Q => buffers_1(7)
    );
\buffers_1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(8),
      Q => buffers_1(8)
    );
\buffers_1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk2,
      CE => '1',
      CLR => \buffers_0[9]_i_1_n_0\,
      D => buffers_0(9),
      Q => buffers_1(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_dac_0_0_edge_detection is
  port (
    edge_din_r : out STD_LOGIC;
    DIADI : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dac_train_din_last : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dac_ifft_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dac_train_din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_dac_0_0_edge_detection : entity is "edge_detection";
end ofdm_tx_dac_0_0_edge_detection;

architecture STRUCTURE of ofdm_tx_dac_0_0_edge_detection is
  signal \^edge_din_r\ : STD_LOGIC;
begin
  edge_din_r <= \^edge_din_r\;
edge_din_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dac_train_din_last,
      Q => \^edge_din_r\,
      R => '0'
    );
ram_reg_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(7),
      I1 => \^edge_din_r\,
      I2 => dac_ifft_din(7),
      I3 => dac_train_din_last,
      I4 => dac_train_din(7),
      O => DIADI(7)
    );
ram_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(6),
      I1 => \^edge_din_r\,
      I2 => dac_ifft_din(6),
      I3 => dac_train_din_last,
      I4 => dac_train_din(6),
      O => DIADI(6)
    );
ram_reg_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(5),
      I1 => \^edge_din_r\,
      I2 => dac_ifft_din(5),
      I3 => dac_train_din_last,
      I4 => dac_train_din(5),
      O => DIADI(5)
    );
ram_reg_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(4),
      I1 => \^edge_din_r\,
      I2 => dac_ifft_din(4),
      I3 => dac_train_din_last,
      I4 => dac_train_din(4),
      O => DIADI(4)
    );
ram_reg_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(3),
      I1 => \^edge_din_r\,
      I2 => dac_ifft_din(3),
      I3 => dac_train_din_last,
      I4 => dac_train_din(3),
      O => DIADI(3)
    );
ram_reg_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(2),
      I1 => \^edge_din_r\,
      I2 => dac_ifft_din(2),
      I3 => dac_train_din_last,
      I4 => dac_train_din(2),
      O => DIADI(2)
    );
ram_reg_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(1),
      I1 => \^edge_din_r\,
      I2 => dac_ifft_din(1),
      I3 => dac_train_din_last,
      I4 => dac_train_din(1),
      O => DIADI(1)
    );
ram_reg_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(0),
      I1 => \^edge_din_r\,
      I2 => dac_ifft_din(0),
      I3 => dac_train_din_last,
      I4 => dac_train_din(0),
      O => DIADI(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_dac_0_0_fifo_generator_1 is
  port (
    dac_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_n_0 : out STD_LOGIC;
    popCC_addressGen_rValid_reg_0 : out STD_LOGIC;
    dac_train_dout_rdy : out STD_LOGIC;
    dac_ifft_dout_rdy : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dac_ifft_din[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    clk_dac : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdata12_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    edge_din_r : in STD_LOGIC;
    dac_ifft_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac_train_din_last : in STD_LOGIC;
    dac_train_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mcu_config_r : in STD_LOGIC;
    dac_ifft_din_vld : in STD_LOGIC;
    dac_train_din_vld : in STD_LOGIC;
    dac_ifft_din_last : in STD_LOGIC;
    dac_ifft_din_Index : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dac_train_din_Index : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dac_din_rdy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_dac_0_0_fifo_generator_1 : entity is "fifo_generator_1";
end ofdm_tx_dac_0_0_fifo_generator_1;

architecture STRUCTURE of ofdm_tx_dac_0_0_fifo_generator_1 is
  signal \_zz_io_popOccupancy_8\ : STD_LOGIC;
  signal \_zz_io_pushOccupancy_8\ : STD_LOGIC;
  signal dac_train_dout_rdy_INST_0_i_1_n_0 : STD_LOGIC;
  signal dac_train_dout_rdy_INST_0_i_2_n_0 : STD_LOGIC;
  signal dac_train_dout_rdy_INST_0_i_3_n_0 : STD_LOGIC;
  signal io_push_fire : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in15_in : STD_LOGIC;
  signal p_2_in17_in : STD_LOGIC;
  signal p_2_in3_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_3_in19_in : STD_LOGIC;
  signal p_4_in21_in : STD_LOGIC;
  signal p_4_in6_in : STD_LOGIC;
  signal p_5_in23_in : STD_LOGIC;
  signal p_5_in8_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_in25_in : STD_LOGIC;
  signal p_7_in11_in : STD_LOGIC;
  signal p_7_in27_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_8_in29_in : STD_LOGIC;
  signal popCC_addressGen_rValid_i_1_n_0 : STD_LOGIC;
  signal popCC_addressGen_rValid_i_2_n_0 : STD_LOGIC;
  signal \^popcc_addressgen_rvalid_reg_0\ : STD_LOGIC;
  signal popCC_addressGen_valid : STD_LOGIC;
  signal popCC_empty : STD_LOGIC;
  signal popCC_empty_carry_i_1_n_0 : STD_LOGIC;
  signal popCC_empty_carry_i_2_n_0 : STD_LOGIC;
  signal popCC_empty_carry_i_3_n_0 : STD_LOGIC;
  signal popCC_empty_carry_i_4_n_0 : STD_LOGIC;
  signal popCC_empty_carry_i_5_n_0 : STD_LOGIC;
  signal popCC_empty_carry_i_6_n_0 : STD_LOGIC;
  signal popCC_empty_carry_i_7_n_0 : STD_LOGIC;
  signal popCC_empty_carry_n_1 : STD_LOGIC;
  signal popCC_empty_carry_n_2 : STD_LOGIC;
  signal popCC_empty_carry_n_3 : STD_LOGIC;
  signal popCC_popPtr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal popCC_popPtrGray : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal popCC_popPtrPlus : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of popCC_popPtrPlus : signal is "true";
  attribute syn_keep : string;
  attribute syn_keep of popCC_popPtrPlus : signal is "true";
  signal popCC_popPtrPlus_inferred_i_11_n_0 : STD_LOGIC;
  signal popCC_ptrToPush : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal popCC_readArbitation_fire : STD_LOGIC;
  signal popCC_readPort_cmd_valid : STD_LOGIC;
  signal popToPushGray_buffercc_n_1 : STD_LOGIC;
  signal pushCC_full00_in : STD_LOGIC;
  signal \pushCC_full0__14\ : STD_LOGIC;
  signal pushCC_pushPtrGray0 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \pushCC_pushPtrGray[0]_i_1_n_0\ : STD_LOGIC;
  signal \pushCC_pushPtrGray[5]_i_2_n_0\ : STD_LOGIC;
  signal \pushCC_pushPtrGray[8]_i_3_n_0\ : STD_LOGIC;
  signal \pushCC_pushPtrGray_reg_n_0_[0]\ : STD_LOGIC;
  signal \pushCC_pushPtrGray_reg_n_0_[1]\ : STD_LOGIC;
  signal \pushCC_pushPtrGray_reg_n_0_[2]\ : STD_LOGIC;
  signal \pushCC_pushPtrGray_reg_n_0_[3]\ : STD_LOGIC;
  signal \pushCC_pushPtrGray_reg_n_0_[4]\ : STD_LOGIC;
  signal \pushCC_pushPtrGray_reg_n_0_[5]\ : STD_LOGIC;
  signal \pushCC_pushPtrGray_reg_n_0_[6]\ : STD_LOGIC;
  signal \pushCC_pushPtrGray_reg_n_0_[7]\ : STD_LOGIC;
  signal pushCC_pushPtrPlus : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pushCC_pushPtrPlus__0\ : STD_LOGIC_VECTOR ( 9 to 9 );
  signal pushCC_pushPtr_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pushToPopGray_buffercc_n_1 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal s_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal s_axis_tlast : STD_LOGIC;
  signal s_axis_tready : STD_LOGIC;
  signal s_axis_tuser : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axis_tvalid : STD_LOGIC;
  signal toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut : STD_LOGIC;
  signal NLW_popCC_empty_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_popCC_empty_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_popCC_empty_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of popCC_empty_carry_i_5 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of popCC_empty_carry_i_6 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of popCC_empty_carry_i_7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \popCC_ptrToPush[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \popCC_ptrToPush[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \popCC_ptrToPush[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \popCC_ptrToPush[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \popCC_ptrToPush[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \popCC_ptrToPush[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \popCC_ptrToPush[7]_i_1\ : label is "soft_lutpair5";
  attribute altera_attribute : string;
  attribute altera_attribute of \popCC_ptrToPush_reg[0]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[1]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[2]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[3]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[4]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[5]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[6]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[7]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[8]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \popCC_ptrToPush_reg[9]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of popToPushGray_buffercc : label is "true";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[8]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pushCC_pushPtrGray[9]_i_1\ : label is "soft_lutpair0";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[0]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[1]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[2]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[3]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[4]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[5]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[6]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[7]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[8]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute altera_attribute of \pushCC_pushPtrGray_reg[9]\ : label is "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW";
  attribute SOFT_HLUTNM of \pushCC_pushPtr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pushCC_pushPtr[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pushCC_pushPtr[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pushCC_pushPtr[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pushCC_pushPtr[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pushCC_pushPtr[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pushCC_pushPtr[8]_i_1\ : label is "soft_lutpair6";
  attribute KEEP_HIERARCHY of pushToPopGray_buffercc : label is "true";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d19";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d19";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 9728;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "inst/u_fifo/ram_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 18;
  attribute KEEP_HIERARCHY of toplevel_rstN1_asyncAssertSyncDeassert_buffercc : label is "true";
begin
  popCC_addressGen_rValid_reg_0 <= \^popcc_addressgen_rvalid_reg_0\;
  rst_n_0 <= \^rst_n_0\;
dac_ifft_dout_rdy_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA22AA22AAAAA"
    )
        port map (
      I0 => dac_train_din_last,
      I1 => \pushCC_full0__14\,
      I2 => p_0_in(0),
      I3 => popToPushGray_buffercc_n_1,
      I4 => p_0_in(1),
      I5 => \_zz_io_pushOccupancy_8\,
      O => dac_ifft_dout_rdy
    );
dac_ifft_dout_rdy_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => p_1_in15_in,
      I1 => \pushCC_pushPtrGray_reg_n_0_[7]\,
      I2 => p_2_in17_in,
      I3 => \pushCC_pushPtrGray_reg_n_0_[6]\,
      I4 => dac_train_dout_rdy_INST_0_i_2_n_0,
      I5 => dac_train_dout_rdy_INST_0_i_3_n_0,
      O => \pushCC_full0__14\
    );
dac_train_dout_rdy_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFFF0000"
    )
        port map (
      I0 => dac_train_dout_rdy_INST_0_i_1_n_0,
      I1 => dac_train_dout_rdy_INST_0_i_2_n_0,
      I2 => dac_train_dout_rdy_INST_0_i_3_n_0,
      I3 => pushCC_full00_in,
      I4 => mcu_config_r,
      I5 => dac_train_din_last,
      O => dac_train_dout_rdy
    );
dac_train_dout_rdy_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \pushCC_pushPtrGray_reg_n_0_[6]\,
      I1 => p_2_in17_in,
      I2 => \pushCC_pushPtrGray_reg_n_0_[7]\,
      I3 => p_1_in15_in,
      O => dac_train_dout_rdy_INST_0_i_1_n_0
    );
dac_train_dout_rdy_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pushCC_pushPtrGray_reg_n_0_[3]\,
      I1 => p_5_in23_in,
      I2 => p_3_in19_in,
      I3 => \pushCC_pushPtrGray_reg_n_0_[5]\,
      I4 => p_4_in21_in,
      I5 => \pushCC_pushPtrGray_reg_n_0_[4]\,
      O => dac_train_dout_rdy_INST_0_i_2_n_0
    );
dac_train_dout_rdy_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pushCC_pushPtrGray_reg_n_0_[0]\,
      I1 => p_8_in29_in,
      I2 => p_6_in25_in,
      I3 => \pushCC_pushPtrGray_reg_n_0_[2]\,
      I4 => p_7_in27_in,
      I5 => \pushCC_pushPtrGray_reg_n_0_[1]\,
      O => dac_train_dout_rdy_INST_0_i_3_n_0
    );
dac_train_dout_rdy_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => p_0_in(0),
      I1 => popToPushGray_buffercc_n_1,
      I2 => p_0_in(1),
      I3 => \_zz_io_pushOccupancy_8\,
      O => pushCC_full00_in
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(11),
      I1 => dac_train_din(11),
      O => \dac_ifft_din[15]\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(10),
      I1 => dac_train_din(10),
      O => \dac_ifft_din[15]\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(9),
      I1 => dac_train_din(9),
      O => \dac_ifft_din[15]\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(8),
      I1 => dac_train_din(8),
      O => \dac_ifft_din[15]\(0)
    );
mcu_config_r_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
popCC_addressGen_rValid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => popCC_addressGen_valid,
      I1 => dac_din_rdy,
      I2 => \^popcc_addressgen_rvalid_reg_0\,
      O => popCC_addressGen_rValid_i_1_n_0
    );
popCC_addressGen_rValid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut,
      O => popCC_addressGen_rValid_i_2_n_0
    );
popCC_addressGen_rValid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => '1',
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_addressGen_rValid_i_1_n_0,
      Q => \^popcc_addressgen_rvalid_reg_0\
    );
popCC_empty_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => popCC_empty,
      CO(2) => popCC_empty_carry_n_1,
      CO(1) => popCC_empty_carry_n_2,
      CO(0) => popCC_empty_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_popCC_empty_carry_O_UNCONNECTED(3 downto 0),
      S(3) => popCC_empty_carry_i_1_n_0,
      S(2) => popCC_empty_carry_i_2_n_0,
      S(1) => popCC_empty_carry_i_3_n_0,
      S(0) => popCC_empty_carry_i_4_n_0
    );
\popCC_empty_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => popCC_empty,
      CO(3 downto 0) => \NLW_popCC_empty_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_popCC_empty_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => popCC_addressGen_valid,
      S(3 downto 0) => B"0001"
    );
popCC_empty_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \_zz_io_popOccupancy_8\,
      I1 => popCC_popPtr(9),
      O => popCC_empty_carry_i_1_n_0
    );
popCC_empty_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => popCC_popPtr(6),
      I1 => popCC_popPtr(7),
      I2 => p_2_in3_in,
      I3 => popCC_empty_carry_i_5_n_0,
      O => popCC_empty_carry_i_2_n_0
    );
popCC_empty_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => popCC_popPtr(3),
      I1 => popCC_popPtr(4),
      I2 => p_5_in8_in,
      I3 => popCC_empty_carry_i_6_n_0,
      O => popCC_empty_carry_i_3_n_0
    );
popCC_empty_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => popCC_popPtr(0),
      I1 => popCC_popPtr(1),
      I2 => p_8_in,
      I3 => popCC_empty_carry_i_7_n_0,
      O => popCC_empty_carry_i_4_n_0
    );
popCC_empty_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09606009"
    )
        port map (
      I0 => popCC_popPtr(7),
      I1 => p_1_in,
      I2 => popCC_popPtr(8),
      I3 => popCC_popPtr(9),
      I4 => pushToPopGray_buffercc_n_1,
      O => popCC_empty_carry_i_5_n_0
    );
popCC_empty_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09606009"
    )
        port map (
      I0 => popCC_popPtr(4),
      I1 => p_4_in6_in,
      I2 => popCC_popPtr(5),
      I3 => popCC_popPtr(6),
      I4 => p_3_in,
      O => popCC_empty_carry_i_6_n_0
    );
popCC_empty_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09606009"
    )
        port map (
      I0 => popCC_popPtr(1),
      I1 => p_7_in11_in,
      I2 => popCC_popPtr(2),
      I3 => popCC_popPtr(3),
      I4 => p_6_in,
      O => popCC_empty_carry_i_7_n_0
    );
popCC_popPtrPlus_inferred_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => popCC_popPtr(7),
      I1 => popCC_popPtrPlus_inferred_i_11_n_0,
      I2 => popCC_popPtr(6),
      I3 => popCC_popPtr(8),
      I4 => popCC_popPtr(9),
      O => popCC_popPtrPlus(9)
    );
popCC_popPtrPlus_inferred_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => popCC_popPtr(0),
      O => popCC_popPtrPlus(0)
    );
popCC_popPtrPlus_inferred_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => popCC_popPtr(5),
      I1 => popCC_popPtr(3),
      I2 => popCC_popPtr(1),
      I3 => popCC_popPtr(0),
      I4 => popCC_popPtr(2),
      I5 => popCC_popPtr(4),
      O => popCC_popPtrPlus_inferred_i_11_n_0
    );
popCC_popPtrPlus_inferred_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => popCC_popPtr(6),
      I1 => popCC_popPtrPlus_inferred_i_11_n_0,
      I2 => popCC_popPtr(7),
      I3 => popCC_popPtr(8),
      O => popCC_popPtrPlus(8)
    );
popCC_popPtrPlus_inferred_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => popCC_popPtrPlus_inferred_i_11_n_0,
      I1 => popCC_popPtr(6),
      I2 => popCC_popPtr(7),
      O => popCC_popPtrPlus(7)
    );
popCC_popPtrPlus_inferred_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtrPlus_inferred_i_11_n_0,
      I1 => popCC_popPtr(6),
      O => popCC_popPtrPlus(6)
    );
popCC_popPtrPlus_inferred_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => popCC_popPtr(3),
      I1 => popCC_popPtr(1),
      I2 => popCC_popPtr(0),
      I3 => popCC_popPtr(2),
      I4 => popCC_popPtr(4),
      I5 => popCC_popPtr(5),
      O => popCC_popPtrPlus(5)
    );
popCC_popPtrPlus_inferred_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => popCC_popPtr(2),
      I1 => popCC_popPtr(0),
      I2 => popCC_popPtr(1),
      I3 => popCC_popPtr(3),
      I4 => popCC_popPtr(4),
      O => popCC_popPtrPlus(4)
    );
popCC_popPtrPlus_inferred_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => popCC_popPtr(1),
      I1 => popCC_popPtr(0),
      I2 => popCC_popPtr(2),
      I3 => popCC_popPtr(3),
      O => popCC_popPtrPlus(3)
    );
popCC_popPtrPlus_inferred_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => popCC_popPtr(0),
      I1 => popCC_popPtr(1),
      I2 => popCC_popPtr(2),
      O => popCC_popPtrPlus(2)
    );
popCC_popPtrPlus_inferred_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(0),
      I1 => popCC_popPtr(1),
      O => popCC_popPtrPlus(1)
    );
\popCC_popPtr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(0),
      Q => popCC_popPtr(0)
    );
\popCC_popPtr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(1),
      Q => popCC_popPtr(1)
    );
\popCC_popPtr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(2),
      Q => popCC_popPtr(2)
    );
\popCC_popPtr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(3),
      Q => popCC_popPtr(3)
    );
\popCC_popPtr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(4),
      Q => popCC_popPtr(4)
    );
\popCC_popPtr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(5),
      Q => popCC_popPtr(5)
    );
\popCC_popPtr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(6),
      Q => popCC_popPtr(6)
    );
\popCC_popPtr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(7),
      Q => popCC_popPtr(7)
    );
\popCC_popPtr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(8),
      Q => popCC_popPtr(8)
    );
\popCC_popPtr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readPort_cmd_valid,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(9),
      Q => popCC_popPtr(9)
    );
\popCC_ptrToPush[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(1),
      I1 => popCC_popPtr(2),
      O => popCC_popPtrGray(1)
    );
\popCC_ptrToPush[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(2),
      I1 => popCC_popPtr(3),
      O => popCC_popPtrGray(2)
    );
\popCC_ptrToPush[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(3),
      I1 => popCC_popPtr(4),
      O => popCC_popPtrGray(3)
    );
\popCC_ptrToPush[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(4),
      I1 => popCC_popPtr(5),
      O => popCC_popPtrGray(4)
    );
\popCC_ptrToPush[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(5),
      I1 => popCC_popPtr(6),
      O => popCC_popPtrGray(5)
    );
\popCC_ptrToPush[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(6),
      I1 => popCC_popPtr(7),
      O => popCC_popPtrGray(6)
    );
\popCC_ptrToPush[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(7),
      I1 => popCC_popPtr(8),
      O => popCC_popPtrGray(7)
    );
\popCC_ptrToPush[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => popCC_popPtr(8),
      I1 => popCC_popPtr(9),
      O => popCC_popPtrGray(8)
    );
\popCC_ptrToPush[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^popcc_addressgen_rvalid_reg_0\,
      I1 => dac_din_rdy,
      O => popCC_readArbitation_fire
    );
\popCC_ptrToPush_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrPlus(1),
      Q => popCC_ptrToPush(0)
    );
\popCC_ptrToPush_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrGray(1),
      Q => popCC_ptrToPush(1)
    );
\popCC_ptrToPush_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrGray(2),
      Q => popCC_ptrToPush(2)
    );
\popCC_ptrToPush_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrGray(3),
      Q => popCC_ptrToPush(3)
    );
\popCC_ptrToPush_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrGray(4),
      Q => popCC_ptrToPush(4)
    );
\popCC_ptrToPush_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrGray(5),
      Q => popCC_ptrToPush(5)
    );
\popCC_ptrToPush_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrGray(6),
      Q => popCC_ptrToPush(6)
    );
\popCC_ptrToPush_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrGray(7),
      Q => popCC_ptrToPush(7)
    );
\popCC_ptrToPush_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtrGray(8),
      Q => popCC_ptrToPush(8)
    );
\popCC_ptrToPush_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dac,
      CE => popCC_readArbitation_fire,
      CLR => popCC_addressGen_rValid_i_2_n_0,
      D => popCC_popPtr(9),
      Q => popCC_ptrToPush(9)
    );
popToPushGray_buffercc: entity work.ofdm_tx_dac_0_0_BufferCC_dac
     port map (
      clk1 => clk,
      io_dataIn(9 downto 0) => popCC_ptrToPush(9 downto 0),
      io_dataOut(9) => \_zz_io_pushOccupancy_8\,
      io_dataOut(8) => popToPushGray_buffercc_n_1,
      io_dataOut(7) => p_1_in15_in,
      io_dataOut(6) => p_2_in17_in,
      io_dataOut(5) => p_3_in19_in,
      io_dataOut(4) => p_4_in21_in,
      io_dataOut(3) => p_5_in23_in,
      io_dataOut(2) => p_6_in25_in,
      io_dataOut(1) => p_7_in27_in,
      io_dataOut(0) => p_8_in29_in,
      rstN1 => rst_n
    );
\pushCC_pushPtrGray[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pushCC_pushPtr_reg(1),
      O => \pushCC_pushPtrGray[0]_i_1_n_0\
    );
\pushCC_pushPtrGray[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => pushCC_pushPtr_reg(2),
      I1 => pushCC_pushPtr_reg(1),
      I2 => pushCC_pushPtr_reg(0),
      O => pushCC_pushPtrGray0(1)
    );
\pushCC_pushPtrGray[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => pushCC_pushPtr_reg(3),
      I1 => pushCC_pushPtr_reg(2),
      I2 => pushCC_pushPtr_reg(0),
      I3 => pushCC_pushPtr_reg(1),
      O => pushCC_pushPtrGray0(2)
    );
\pushCC_pushPtrGray[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56666666"
    )
        port map (
      I0 => pushCC_pushPtr_reg(4),
      I1 => pushCC_pushPtr_reg(3),
      I2 => pushCC_pushPtr_reg(1),
      I3 => pushCC_pushPtr_reg(0),
      I4 => pushCC_pushPtr_reg(2),
      O => pushCC_pushPtrGray0(3)
    );
\pushCC_pushPtrGray[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5666666666666666"
    )
        port map (
      I0 => pushCC_pushPtr_reg(5),
      I1 => pushCC_pushPtr_reg(4),
      I2 => pushCC_pushPtr_reg(2),
      I3 => pushCC_pushPtr_reg(0),
      I4 => pushCC_pushPtr_reg(1),
      I5 => pushCC_pushPtr_reg(3),
      O => pushCC_pushPtrGray0(4)
    );
\pushCC_pushPtrGray[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => pushCC_pushPtr_reg(6),
      I1 => pushCC_pushPtr_reg(5),
      I2 => \pushCC_pushPtrGray[5]_i_2_n_0\,
      O => pushCC_pushPtrGray0(5)
    );
\pushCC_pushPtrGray[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => pushCC_pushPtr_reg(4),
      I1 => pushCC_pushPtr_reg(2),
      I2 => pushCC_pushPtr_reg(0),
      I3 => pushCC_pushPtr_reg(1),
      I4 => pushCC_pushPtr_reg(3),
      O => \pushCC_pushPtrGray[5]_i_2_n_0\
    );
\pushCC_pushPtrGray[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => pushCC_pushPtr_reg(7),
      I1 => pushCC_pushPtr_reg(6),
      I2 => \pushCC_pushPtrGray[8]_i_3_n_0\,
      O => pushCC_pushPtrGray0(6)
    );
\pushCC_pushPtrGray[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => pushCC_pushPtr_reg(8),
      I1 => pushCC_pushPtr_reg(7),
      I2 => \pushCC_pushPtrGray[8]_i_3_n_0\,
      I3 => pushCC_pushPtr_reg(6),
      O => pushCC_pushPtrGray0(7)
    );
\pushCC_pushPtrGray[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA22AA22AAAAA"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \pushCC_full0__14\,
      I2 => p_0_in(0),
      I3 => popToPushGray_buffercc_n_1,
      I4 => p_0_in(1),
      I5 => \_zz_io_pushOccupancy_8\,
      O => io_push_fire
    );
\pushCC_pushPtrGray[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56666666"
    )
        port map (
      I0 => p_0_in(1),
      I1 => pushCC_pushPtr_reg(8),
      I2 => pushCC_pushPtr_reg(6),
      I3 => \pushCC_pushPtrGray[8]_i_3_n_0\,
      I4 => pushCC_pushPtr_reg(7),
      O => pushCC_pushPtrGray0(8)
    );
\pushCC_pushPtrGray[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pushCC_pushPtr_reg(5),
      I1 => pushCC_pushPtr_reg(3),
      I2 => pushCC_pushPtr_reg(1),
      I3 => pushCC_pushPtr_reg(0),
      I4 => pushCC_pushPtr_reg(2),
      I5 => pushCC_pushPtr_reg(4),
      O => \pushCC_pushPtrGray[8]_i_3_n_0\
    );
\pushCC_pushPtrGray[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => pushCC_pushPtr_reg(7),
      I1 => \pushCC_pushPtrGray[8]_i_3_n_0\,
      I2 => pushCC_pushPtr_reg(6),
      I3 => pushCC_pushPtr_reg(8),
      I4 => p_0_in(1),
      O => \pushCC_pushPtrPlus__0\(9)
    );
\pushCC_pushPtrGray_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => \pushCC_pushPtrGray[0]_i_1_n_0\,
      Q => \pushCC_pushPtrGray_reg_n_0_[0]\
    );
\pushCC_pushPtrGray_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrGray0(1),
      Q => \pushCC_pushPtrGray_reg_n_0_[1]\
    );
\pushCC_pushPtrGray_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrGray0(2),
      Q => \pushCC_pushPtrGray_reg_n_0_[2]\
    );
\pushCC_pushPtrGray_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrGray0(3),
      Q => \pushCC_pushPtrGray_reg_n_0_[3]\
    );
\pushCC_pushPtrGray_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrGray0(4),
      Q => \pushCC_pushPtrGray_reg_n_0_[4]\
    );
\pushCC_pushPtrGray_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrGray0(5),
      Q => \pushCC_pushPtrGray_reg_n_0_[5]\
    );
\pushCC_pushPtrGray_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrGray0(6),
      Q => \pushCC_pushPtrGray_reg_n_0_[6]\
    );
\pushCC_pushPtrGray_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrGray0(7),
      Q => \pushCC_pushPtrGray_reg_n_0_[7]\
    );
\pushCC_pushPtrGray_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrGray0(8),
      Q => p_0_in(0)
    );
\pushCC_pushPtrGray_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => \pushCC_pushPtrPlus__0\(9),
      Q => p_0_in(1)
    );
\pushCC_pushPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pushCC_pushPtr_reg(0),
      O => pushCC_pushPtrPlus(0)
    );
\pushCC_pushPtr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pushCC_pushPtr_reg(0),
      I1 => pushCC_pushPtr_reg(1),
      O => pushCC_pushPtrPlus(1)
    );
\pushCC_pushPtr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => pushCC_pushPtr_reg(0),
      I1 => pushCC_pushPtr_reg(1),
      I2 => pushCC_pushPtr_reg(2),
      O => pushCC_pushPtrPlus(2)
    );
\pushCC_pushPtr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pushCC_pushPtr_reg(1),
      I1 => pushCC_pushPtr_reg(0),
      I2 => pushCC_pushPtr_reg(2),
      I3 => pushCC_pushPtr_reg(3),
      O => pushCC_pushPtrPlus(3)
    );
\pushCC_pushPtr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => pushCC_pushPtr_reg(2),
      I1 => pushCC_pushPtr_reg(0),
      I2 => pushCC_pushPtr_reg(1),
      I3 => pushCC_pushPtr_reg(3),
      I4 => pushCC_pushPtr_reg(4),
      O => pushCC_pushPtrPlus(4)
    );
\pushCC_pushPtr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => pushCC_pushPtr_reg(3),
      I1 => pushCC_pushPtr_reg(1),
      I2 => pushCC_pushPtr_reg(0),
      I3 => pushCC_pushPtr_reg(2),
      I4 => pushCC_pushPtr_reg(4),
      I5 => pushCC_pushPtr_reg(5),
      O => pushCC_pushPtrPlus(5)
    );
\pushCC_pushPtr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pushCC_pushPtrGray[8]_i_3_n_0\,
      I1 => pushCC_pushPtr_reg(6),
      O => pushCC_pushPtrPlus(6)
    );
\pushCC_pushPtr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \pushCC_pushPtrGray[8]_i_3_n_0\,
      I1 => pushCC_pushPtr_reg(6),
      I2 => pushCC_pushPtr_reg(7),
      O => pushCC_pushPtrPlus(7)
    );
\pushCC_pushPtr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pushCC_pushPtr_reg(6),
      I1 => \pushCC_pushPtrGray[8]_i_3_n_0\,
      I2 => pushCC_pushPtr_reg(7),
      I3 => pushCC_pushPtr_reg(8),
      O => pushCC_pushPtrPlus(8)
    );
\pushCC_pushPtr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(0),
      Q => pushCC_pushPtr_reg(0)
    );
\pushCC_pushPtr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(1),
      Q => pushCC_pushPtr_reg(1)
    );
\pushCC_pushPtr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(2),
      Q => pushCC_pushPtr_reg(2)
    );
\pushCC_pushPtr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(3),
      Q => pushCC_pushPtr_reg(3)
    );
\pushCC_pushPtr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(4),
      Q => pushCC_pushPtr_reg(4)
    );
\pushCC_pushPtr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(5),
      Q => pushCC_pushPtr_reg(5)
    );
\pushCC_pushPtr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(6),
      Q => pushCC_pushPtr_reg(6)
    );
\pushCC_pushPtr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(7),
      Q => pushCC_pushPtr_reg(7)
    );
\pushCC_pushPtr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => io_push_fire,
      CLR => \^rst_n_0\,
      D => pushCC_pushPtrPlus(8),
      Q => pushCC_pushPtr_reg(8)
    );
pushToPopGray_buffercc: entity work.ofdm_tx_dac_0_0_BufferCC_dac2
     port map (
      clk2 => clk_dac,
      io_dataIn(9 downto 8) => p_0_in(1 downto 0),
      io_dataIn(7) => \pushCC_pushPtrGray_reg_n_0_[7]\,
      io_dataIn(6) => \pushCC_pushPtrGray_reg_n_0_[6]\,
      io_dataIn(5) => \pushCC_pushPtrGray_reg_n_0_[5]\,
      io_dataIn(4) => \pushCC_pushPtrGray_reg_n_0_[4]\,
      io_dataIn(3) => \pushCC_pushPtrGray_reg_n_0_[3]\,
      io_dataIn(2) => \pushCC_pushPtrGray_reg_n_0_[2]\,
      io_dataIn(1) => \pushCC_pushPtrGray_reg_n_0_[1]\,
      io_dataIn(0) => \pushCC_pushPtrGray_reg_n_0_[0]\,
      io_dataOut(9) => \_zz_io_popOccupancy_8\,
      io_dataOut(8) => pushToPopGray_buffercc_n_1,
      io_dataOut(7) => p_1_in,
      io_dataOut(6) => p_2_in3_in,
      io_dataOut(5) => p_3_in,
      io_dataOut(4) => p_4_in6_in,
      io_dataOut(3) => p_5_in8_in,
      io_dataOut(2) => p_6_in,
      io_dataOut(1) => p_7_in11_in,
      io_dataOut(0) => p_8_in,
      toplevel_rstN1_synchronized => toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut
    );
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => popCC_popPtr(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 5) => pushCC_pushPtr_reg(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => clk_dac,
      CLKBWRCLK => clk,
      DIADI(15 downto 8) => s_axis_tdata(15 downto 8),
      DIADI(7 downto 0) => DIADI(7 downto 0),
      DIBDI(15 downto 3) => B"1111111111111",
      DIBDI(2 downto 1) => s_axis_tuser(1 downto 0),
      DIBDI(0) => s_axis_tlast,
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => dac_dout(15 downto 0),
      DOBDO(15 downto 3) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 3),
      DOBDO(2 downto 0) => DOBDO(2 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => popCC_readPort_cmd_valid,
      ENBWREN => s_axis_tvalid,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => s_axis_tready,
      WEBWE(2) => s_axis_tready,
      WEBWE(1) => s_axis_tready,
      WEBWE(0) => s_axis_tready
    );
ram_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => popCC_addressGen_valid,
      I1 => \^popcc_addressgen_rvalid_reg_0\,
      I2 => dac_din_rdy,
      O => popCC_readPort_cmd_valid
    );
ram_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(0),
      I1 => edge_din_r,
      I2 => dac_ifft_din(4),
      I3 => dac_train_din_last,
      I4 => dac_train_din(4),
      O => s_axis_tdata(8)
    );
ram_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dac_ifft_din_Index(1),
      I1 => dac_train_din_last,
      I2 => dac_train_din_Index(1),
      O => s_axis_tuser(1)
    );
ram_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dac_ifft_din_vld,
      I1 => dac_train_din_last,
      I2 => dac_train_din_vld,
      O => s_axis_tvalid
    );
ram_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dac_ifft_din_Index(0),
      I1 => dac_train_din_last,
      I2 => dac_train_din_Index(0),
      O => s_axis_tuser(0)
    );
ram_reg_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dac_train_din_last,
      I1 => dac_ifft_din_last,
      O => s_axis_tlast
    );
ram_reg_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F99FFFFF"
    )
        port map (
      I0 => \_zz_io_pushOccupancy_8\,
      I1 => p_0_in(1),
      I2 => popToPushGray_buffercc_n_1,
      I3 => p_0_in(0),
      I4 => \pushCC_full0__14\,
      O => s_axis_tready
    );
ram_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(7),
      I1 => edge_din_r,
      I2 => dac_ifft_din(11),
      I3 => dac_train_din_last,
      I4 => dac_train_din(11),
      O => s_axis_tdata(15)
    );
ram_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(6),
      I1 => edge_din_r,
      I2 => dac_ifft_din(10),
      I3 => dac_train_din_last,
      I4 => dac_train_din(10),
      O => s_axis_tdata(14)
    );
ram_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(5),
      I1 => edge_din_r,
      I2 => dac_ifft_din(9),
      I3 => dac_train_din_last,
      I4 => dac_train_din(9),
      O => s_axis_tdata(13)
    );
ram_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(4),
      I1 => edge_din_r,
      I2 => dac_ifft_din(8),
      I3 => dac_train_din_last,
      I4 => dac_train_din(8),
      O => s_axis_tdata(12)
    );
ram_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(3),
      I1 => edge_din_r,
      I2 => dac_ifft_din(7),
      I3 => dac_train_din_last,
      I4 => dac_train_din(7),
      O => s_axis_tdata(11)
    );
ram_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(2),
      I1 => edge_din_r,
      I2 => dac_ifft_din(6),
      I3 => dac_train_din_last,
      I4 => dac_train_din(6),
      O => s_axis_tdata(10)
    );
ram_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(1),
      I1 => edge_din_r,
      I2 => dac_ifft_din(5),
      I3 => dac_train_din_last,
      I4 => dac_train_din(5),
      O => s_axis_tdata(9)
    );
\s_axis_tdata1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(3),
      I1 => dac_train_din(3),
      O => S(3)
    );
\s_axis_tdata1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(2),
      I1 => dac_train_din(2),
      O => S(2)
    );
\s_axis_tdata1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(1),
      I1 => dac_train_din(1),
      O => S(1)
    );
\s_axis_tdata1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(0),
      I1 => dac_train_din(0),
      O => S(0)
    );
toplevel_rstN1_asyncAssertSyncDeassert_buffercc: entity work.ofdm_tx_dac_0_0_BufferCC_dac1
     port map (
      clk2 => clk_dac,
      io_dataIn => '1',
      io_dataOut => toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut,
      rstN1 => rst_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_dac_0_0_dac is
  port (
    dac_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 2 downto 0 );
    popCC_addressGen_rValid_reg : out STD_LOGIC;
    dac_train_dout_rdy : out STD_LOGIC;
    mcu_config_r : out STD_LOGIC;
    dac_ifft_dout_rdy : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    clk_dac : in STD_LOGIC;
    dac_train_din_last : in STD_LOGIC;
    mcu_config : in STD_LOGIC;
    dac_ifft_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_train_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_ifft_din_vld : in STD_LOGIC;
    dac_train_din_vld : in STD_LOGIC;
    dac_ifft_din_last : in STD_LOGIC;
    dac_ifft_din_Index : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dac_train_din_Index : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dac_din_rdy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_dac_0_0_dac : entity is "dac";
end ofdm_tx_dac_0_0_dac;

architecture STRUCTURE of ofdm_tx_dac_0_0_dac is
  signal dac_dout_vld_d0 : STD_LOGIC;
  signal dac_dout_vld_d1 : STD_LOGIC;
  signal edge_din_r : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal mcu_config_d0 : STD_LOGIC;
  signal mcu_config_d1 : STD_LOGIC;
  signal \^mcu_config_r\ : STD_LOGIC;
  signal mcu_config_r_i_1_n_0 : STD_LOGIC;
  signal \^popcc_addressgen_rvalid_reg\ : STD_LOGIC;
  signal s_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_tdata1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_tdata12_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_axis_tdata1_carry__0_n_1\ : STD_LOGIC;
  signal \s_axis_tdata1_carry__0_n_2\ : STD_LOGIC;
  signal \s_axis_tdata1_carry__0_n_3\ : STD_LOGIC;
  signal s_axis_tdata1_carry_i_1_n_0 : STD_LOGIC;
  signal s_axis_tdata1_carry_i_2_n_0 : STD_LOGIC;
  signal s_axis_tdata1_carry_i_3_n_0 : STD_LOGIC;
  signal s_axis_tdata1_carry_i_4_n_0 : STD_LOGIC;
  signal s_axis_tdata1_carry_n_0 : STD_LOGIC;
  signal s_axis_tdata1_carry_n_1 : STD_LOGIC;
  signal s_axis_tdata1_carry_n_2 : STD_LOGIC;
  signal s_axis_tdata1_carry_n_3 : STD_LOGIC;
  signal \s_axis_tdata1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \s_axis_tdata1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \s_axis_tdata1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \s_axis_tdata1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \s_axis_tdata1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \s_axis_tdata1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \s_axis_tdata1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal u_fifo_n_19 : STD_LOGIC;
  signal u_fifo_n_23 : STD_LOGIC;
  signal u_fifo_n_24 : STD_LOGIC;
  signal u_fifo_n_25 : STD_LOGIC;
  signal u_fifo_n_26 : STD_LOGIC;
  signal u_fifo_n_27 : STD_LOGIC;
  signal u_fifo_n_28 : STD_LOGIC;
  signal u_fifo_n_29 : STD_LOGIC;
  signal u_fifo_n_30 : STD_LOGIC;
  signal \NLW_s_axis_tdata1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_axis_tdata1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of s_axis_tdata1_carry : label is 35;
  attribute ADDER_THRESHOLD of \s_axis_tdata1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s_axis_tdata1_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \s_axis_tdata1_inferred__0/i__carry__0\ : label is 35;
begin
  mcu_config_r <= \^mcu_config_r\;
  popCC_addressGen_rValid_reg <= \^popcc_addressgen_rvalid_reg\;
dac_dout_vld_d0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^popcc_addressgen_rvalid_reg\,
      Q => dac_dout_vld_d0,
      R => '0'
    );
dac_dout_vld_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dac_dout_vld_d0,
      Q => dac_dout_vld_d1,
      R => '0'
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(11),
      I1 => dac_train_din(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(10),
      I1 => dac_train_din(10),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(9),
      I1 => dac_train_din(9),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(8),
      I1 => dac_train_din(8),
      O => \i__carry_i_4_n_0\
    );
mcu_config_d0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mcu_config,
      Q => mcu_config_d0,
      R => '0'
    );
mcu_config_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mcu_config_d0,
      Q => mcu_config_d1,
      R => '0'
    );
mcu_config_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => mcu_config_d1,
      I1 => dac_dout_vld_d0,
      I2 => dac_dout_vld_d1,
      I3 => \^mcu_config_r\,
      O => mcu_config_r_i_1_n_0
    );
mcu_config_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_fifo_n_19,
      D => mcu_config_r_i_1_n_0,
      Q => \^mcu_config_r\
    );
s_axis_tdata1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_axis_tdata1_carry_n_0,
      CO(2) => s_axis_tdata1_carry_n_1,
      CO(1) => s_axis_tdata1_carry_n_2,
      CO(0) => s_axis_tdata1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => dac_ifft_din(3 downto 0),
      O(3 downto 0) => s_axis_tdata1(3 downto 0),
      S(3) => s_axis_tdata1_carry_i_1_n_0,
      S(2) => s_axis_tdata1_carry_i_2_n_0,
      S(1) => s_axis_tdata1_carry_i_3_n_0,
      S(0) => s_axis_tdata1_carry_i_4_n_0
    );
\s_axis_tdata1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_axis_tdata1_carry_n_0,
      CO(3) => \NLW_s_axis_tdata1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \s_axis_tdata1_carry__0_n_1\,
      CO(1) => \s_axis_tdata1_carry__0_n_2\,
      CO(0) => \s_axis_tdata1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => dac_ifft_din(6 downto 4),
      O(3 downto 0) => s_axis_tdata1(7 downto 4),
      S(3) => u_fifo_n_23,
      S(2) => u_fifo_n_24,
      S(1) => u_fifo_n_25,
      S(0) => u_fifo_n_26
    );
s_axis_tdata1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(3),
      I1 => dac_train_din(3),
      O => s_axis_tdata1_carry_i_1_n_0
    );
s_axis_tdata1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(2),
      I1 => dac_train_din(2),
      O => s_axis_tdata1_carry_i_2_n_0
    );
s_axis_tdata1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(1),
      I1 => dac_train_din(1),
      O => s_axis_tdata1_carry_i_3_n_0
    );
s_axis_tdata1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(0),
      I1 => dac_train_din(0),
      O => s_axis_tdata1_carry_i_4_n_0
    );
\s_axis_tdata1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_axis_tdata1_inferred__0/i__carry_n_0\,
      CO(2) => \s_axis_tdata1_inferred__0/i__carry_n_1\,
      CO(1) => \s_axis_tdata1_inferred__0/i__carry_n_2\,
      CO(0) => \s_axis_tdata1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dac_ifft_din(11 downto 8),
      O(3 downto 0) => s_axis_tdata12_out(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\s_axis_tdata1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_axis_tdata1_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_s_axis_tdata1_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \s_axis_tdata1_inferred__0/i__carry__0_n_1\,
      CO(1) => \s_axis_tdata1_inferred__0/i__carry__0_n_2\,
      CO(0) => \s_axis_tdata1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => dac_ifft_din(14 downto 12),
      O(3 downto 0) => s_axis_tdata12_out(7 downto 4),
      S(3) => u_fifo_n_27,
      S(2) => u_fifo_n_28,
      S(1) => u_fifo_n_29,
      S(0) => u_fifo_n_30
    );
u_edge_detection: entity work.ofdm_tx_dac_0_0_edge_detection
     port map (
      DIADI(7 downto 0) => s_axis_tdata(7 downto 0),
      clk => clk,
      dac_ifft_din(7 downto 0) => dac_ifft_din(7 downto 0),
      dac_train_din(7 downto 0) => dac_train_din(7 downto 0),
      dac_train_din_last => dac_train_din_last,
      edge_din_r => edge_din_r,
      s_axis_tdata1(7 downto 0) => s_axis_tdata1(7 downto 0)
    );
u_fifo: entity work.ofdm_tx_dac_0_0_fifo_generator_1
     port map (
      DIADI(7 downto 0) => s_axis_tdata(7 downto 0),
      DOBDO(2 downto 0) => DOBDO(2 downto 0),
      S(3) => u_fifo_n_23,
      S(2) => u_fifo_n_24,
      S(1) => u_fifo_n_25,
      S(0) => u_fifo_n_26,
      clk => clk,
      clk_dac => clk_dac,
      dac_din_rdy => dac_din_rdy,
      dac_dout(15 downto 0) => dac_dout(15 downto 0),
      dac_ifft_din(11 downto 0) => dac_ifft_din(15 downto 4),
      \dac_ifft_din[15]\(3) => u_fifo_n_27,
      \dac_ifft_din[15]\(2) => u_fifo_n_28,
      \dac_ifft_din[15]\(1) => u_fifo_n_29,
      \dac_ifft_din[15]\(0) => u_fifo_n_30,
      dac_ifft_din_Index(1 downto 0) => dac_ifft_din_Index(1 downto 0),
      dac_ifft_din_last => dac_ifft_din_last,
      dac_ifft_din_vld => dac_ifft_din_vld,
      dac_ifft_dout_rdy => dac_ifft_dout_rdy,
      dac_train_din(11 downto 0) => dac_train_din(15 downto 4),
      dac_train_din_Index(1 downto 0) => dac_train_din_Index(1 downto 0),
      dac_train_din_last => dac_train_din_last,
      dac_train_din_vld => dac_train_din_vld,
      dac_train_dout_rdy => dac_train_dout_rdy,
      edge_din_r => edge_din_r,
      mcu_config_r => \^mcu_config_r\,
      popCC_addressGen_rValid_reg_0 => \^popcc_addressgen_rvalid_reg\,
      rst_n => rst_n,
      rst_n_0 => u_fifo_n_19,
      s_axis_tdata12_out(7 downto 0) => s_axis_tdata12_out(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_dac_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_dac : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    dac_ifft_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_ifft_din_vld : in STD_LOGIC;
    dac_ifft_din_last : in STD_LOGIC;
    dac_ifft_din_Index : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dac_ifft_dout_rdy : out STD_LOGIC;
    dac_train_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_train_din_vld : in STD_LOGIC;
    dac_train_din_last : in STD_LOGIC;
    dac_train_din_Index : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dac_train_dout_rdy : out STD_LOGIC;
    dac_din_rdy : in STD_LOGIC;
    dac_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_dout_vld : out STD_LOGIC;
    dac_dout_last : out STD_LOGIC;
    dac_dout_Index : out STD_LOGIC_VECTOR ( 8 downto 0 );
    mcu_config : in STD_LOGIC;
    mcu_config_r : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ofdm_tx_dac_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ofdm_tx_dac_0_0 : entity is "ofdm_tx_dac_0_0,dac,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ofdm_tx_dac_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ofdm_tx_dac_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ofdm_tx_dac_0_0 : entity is "dac,Vivado 2023.1";
end ofdm_tx_dac_0_0;

architecture STRUCTURE of ofdm_tx_dac_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^dac_dout_index\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_ifft_dac:s_axis_train_dac:m_axis_dac, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TREADY";
  attribute X_INTERFACE_INFO of dac_dout_last : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TLAST";
  attribute X_INTERFACE_INFO of dac_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TVALID";
  attribute X_INTERFACE_INFO of dac_ifft_din_last : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TLAST";
  attribute X_INTERFACE_INFO of dac_ifft_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TVALID";
  attribute X_INTERFACE_INFO of dac_ifft_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TREADY";
  attribute X_INTERFACE_PARAMETER of dac_ifft_dout_rdy : signal is "XIL_INTERFACENAME s_axis_ifft_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac_train_din_last : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TLAST";
  attribute X_INTERFACE_INFO of dac_train_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TVALID";
  attribute X_INTERFACE_INFO of dac_train_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TREADY";
  attribute X_INTERFACE_PARAMETER of dac_train_dout_rdy : signal is "XIL_INTERFACENAME s_axis_train_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 9, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TDATA";
  attribute X_INTERFACE_INFO of dac_dout_Index : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TUSER";
  attribute X_INTERFACE_PARAMETER of dac_dout_Index : signal is "XIL_INTERFACENAME m_axis_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 9, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac_ifft_din : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TDATA";
  attribute X_INTERFACE_INFO of dac_ifft_din_Index : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TUSER";
  attribute X_INTERFACE_INFO of dac_train_din : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TDATA";
  attribute X_INTERFACE_INFO of dac_train_din_Index : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TUSER";
begin
  dac_dout_Index(8) <= \<const0>\;
  dac_dout_Index(7) <= \<const0>\;
  dac_dout_Index(6) <= \<const0>\;
  dac_dout_Index(5) <= \<const0>\;
  dac_dout_Index(4) <= \<const0>\;
  dac_dout_Index(3) <= \<const0>\;
  dac_dout_Index(2) <= \<const0>\;
  dac_dout_Index(1 downto 0) <= \^dac_dout_index\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.ofdm_tx_dac_0_0_dac
     port map (
      DOBDO(2 downto 1) => \^dac_dout_index\(1 downto 0),
      DOBDO(0) => dac_dout_last,
      clk => clk,
      clk_dac => clk_dac,
      dac_din_rdy => dac_din_rdy,
      dac_dout(15 downto 0) => dac_dout(15 downto 0),
      dac_ifft_din(15 downto 0) => dac_ifft_din(15 downto 0),
      dac_ifft_din_Index(1 downto 0) => dac_ifft_din_Index(1 downto 0),
      dac_ifft_din_last => dac_ifft_din_last,
      dac_ifft_din_vld => dac_ifft_din_vld,
      dac_ifft_dout_rdy => dac_ifft_dout_rdy,
      dac_train_din(15 downto 0) => dac_train_din(15 downto 0),
      dac_train_din_Index(1 downto 0) => dac_train_din_Index(1 downto 0),
      dac_train_din_last => dac_train_din_last,
      dac_train_din_vld => dac_train_din_vld,
      dac_train_dout_rdy => dac_train_dout_rdy,
      mcu_config => mcu_config,
      mcu_config_r => mcu_config_r,
      popCC_addressGen_rValid_reg => dac_dout_vld,
      rst_n => rst_n
    );
end STRUCTURE;
