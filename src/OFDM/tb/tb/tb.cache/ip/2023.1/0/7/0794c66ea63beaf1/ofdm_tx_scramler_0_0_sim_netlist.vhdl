-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:14 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_scramler_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_scramler_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scramler is
  port (
    scram_dout : out STD_LOGIC;
    scram_dout_sig_flag : out STD_LOGIC;
    scram_dout_rate_con : out STD_LOGIC_VECTOR ( 3 downto 0 );
    scram_dout_vld : out STD_LOGIC;
    scram_din_vld : in STD_LOGIC;
    scram_din_rdy : in STD_LOGIC;
    scram_load : in STD_LOGIC;
    clk : in STD_LOGIC;
    scram_din_sig_flag : in STD_LOGIC;
    scram_din_rate_con : in STD_LOGIC_VECTOR ( 3 downto 0 );
    scram_seed : in STD_LOGIC_VECTOR ( 6 downto 0 );
    scram_din : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scramler;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scramler is
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal scram_dout0_in : STD_LOGIC;
  signal scram_dout_i_1_n_0 : STD_LOGIC;
  signal scram_dout_i_2_n_0 : STD_LOGIC;
  signal \^scram_dout_vld\ : STD_LOGIC;
  signal scram_dout_vld_i_1_n_0 : STD_LOGIC;
  signal \shift_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \scram_dout_rate_con_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_scram TID";
  attribute X_INTERFACE_INFO of \scram_dout_rate_con_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_scram TID";
  attribute X_INTERFACE_INFO of \scram_dout_rate_con_reg[2]\ : label is "xilinx.com:interface:axis:1.0 m_axis_scram TID";
  attribute X_INTERFACE_INFO of \scram_dout_rate_con_reg[3]\ : label is "xilinx.com:interface:axis:1.0 m_axis_scram TID";
  attribute X_INTERFACE_INFO of scram_dout_reg : label is "xilinx.com:interface:axis:1.0 m_axis_scram TDATA";
  attribute X_INTERFACE_INFO of scram_dout_sig_flag_reg : label is "xilinx.com:interface:axis:1.0 m_axis_scram TSTRB";
  attribute X_INTERFACE_INFO of scram_dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_scram TVALID";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shift_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shift_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_reg[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_reg[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_reg[5]_i_1\ : label is "soft_lutpair1";
begin
  scram_dout_vld <= \^scram_dout_vld\;
scram_dout0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F906"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => scram_din_sig_flag,
      I3 => scram_din,
      O => scram_dout0_in
    );
scram_dout_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => scram_din_vld,
      I1 => scram_din_rdy,
      I2 => scram_load,
      O => scram_dout_i_1_n_0
    );
scram_dout_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => scram_dout_i_2_n_0
    );
\scram_dout_rate_con_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => scram_dout_i_1_n_0,
      D => scram_din_rate_con(0),
      PRE => scram_dout_i_2_n_0,
      Q => scram_dout_rate_con(0)
    );
\scram_dout_rate_con_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => scram_dout_i_1_n_0,
      D => scram_din_rate_con(1),
      PRE => scram_dout_i_2_n_0,
      Q => scram_dout_rate_con(1)
    );
\scram_dout_rate_con_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scram_dout_i_1_n_0,
      CLR => scram_dout_i_2_n_0,
      D => scram_din_rate_con(2),
      Q => scram_dout_rate_con(2)
    );
\scram_dout_rate_con_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => scram_dout_i_1_n_0,
      D => scram_din_rate_con(3),
      PRE => scram_dout_i_2_n_0,
      Q => scram_dout_rate_con(3)
    );
scram_dout_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scram_dout_i_1_n_0,
      CLR => scram_dout_i_2_n_0,
      D => scram_dout0_in,
      Q => scram_dout
    );
scram_dout_sig_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scram_dout_i_1_n_0,
      CLR => scram_dout_i_2_n_0,
      D => scram_din_sig_flag,
      Q => scram_dout_sig_flag
    );
scram_dout_vld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5404"
    )
        port map (
      I0 => scram_load,
      I1 => \^scram_dout_vld\,
      I2 => scram_din_rdy,
      I3 => scram_din_vld,
      O => scram_dout_vld_i_1_n_0
    );
scram_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => scram_dout_i_2_n_0,
      D => scram_dout_vld_i_1_n_0,
      Q => \^scram_dout_vld\
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => scram_seed(0),
      I1 => scram_load,
      I2 => p_1_in,
      I3 => p_0_in,
      O => \shift_reg[0]_i_1_n_0\
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => scram_seed(1),
      I1 => scram_load,
      I2 => \shift_reg_reg_n_0_[0]\,
      O => \shift_reg[1]_i_1_n_0\
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => scram_seed(2),
      I1 => scram_load,
      I2 => \shift_reg_reg_n_0_[1]\,
      O => \shift_reg[2]_i_1_n_0\
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => scram_seed(3),
      I1 => scram_load,
      I2 => \shift_reg_reg_n_0_[2]\,
      O => \shift_reg[3]_i_1_n_0\
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => scram_seed(4),
      I1 => scram_load,
      I2 => p_0_in,
      O => \shift_reg[4]_i_1_n_0\
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => scram_seed(5),
      I1 => scram_load,
      I2 => \shift_reg_reg_n_0_[4]\,
      O => \shift_reg[5]_i_1_n_0\
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => scram_load,
      I1 => scram_din_sig_flag,
      I2 => scram_din_rdy,
      I3 => scram_din_vld,
      O => \shift_reg[6]_i_1_n_0\
    );
\shift_reg[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => scram_seed(6),
      I1 => scram_load,
      I2 => \shift_reg_reg_n_0_[5]\,
      O => \shift_reg[6]_i_2_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \shift_reg[6]_i_1_n_0\,
      D => \shift_reg[0]_i_1_n_0\,
      PRE => scram_dout_i_2_n_0,
      Q => \shift_reg_reg_n_0_[0]\
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_reg[6]_i_1_n_0\,
      CLR => scram_dout_i_2_n_0,
      D => \shift_reg[1]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[1]\
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \shift_reg[6]_i_1_n_0\,
      D => \shift_reg[2]_i_1_n_0\,
      PRE => scram_dout_i_2_n_0,
      Q => \shift_reg_reg_n_0_[2]\
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \shift_reg[6]_i_1_n_0\,
      D => \shift_reg[3]_i_1_n_0\,
      PRE => scram_dout_i_2_n_0,
      Q => p_0_in
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \shift_reg[6]_i_1_n_0\,
      D => \shift_reg[4]_i_1_n_0\,
      PRE => scram_dout_i_2_n_0,
      Q => \shift_reg_reg_n_0_[4]\
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \shift_reg[6]_i_1_n_0\,
      CLR => scram_dout_i_2_n_0,
      D => \shift_reg[5]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[5]\
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \shift_reg[6]_i_1_n_0\,
      D => \shift_reg[6]_i_2_n_0\,
      PRE => scram_dout_i_2_n_0,
      Q => p_1_in
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
    scram_seed : in STD_LOGIC_VECTOR ( 6 downto 0 );
    scram_load : in STD_LOGIC;
    scram_din : in STD_LOGIC;
    scram_din_vld : in STD_LOGIC;
    scram_din_rdy : in STD_LOGIC;
    scram_din_sig_flag : in STD_LOGIC;
    scram_din_rate_con : in STD_LOGIC_VECTOR ( 3 downto 0 );
    scram_dout : out STD_LOGIC;
    scram_dout_vld : out STD_LOGIC;
    scram_dout_rdy : out STD_LOGIC;
    scram_dout_sig_flag : out STD_LOGIC;
    scram_dout_rate_con : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ofdm_tx_scramler_0_0,scramler,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "scramler,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^scram_din_rdy\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_scram:m_axis_scram, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of scram_din : signal is "xilinx.com:interface:axis:1.0 s_axis_scram TDATA";
  attribute X_INTERFACE_INFO of scram_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_scram TREADY";
  attribute X_INTERFACE_INFO of scram_din_sig_flag : signal is "xilinx.com:interface:axis:1.0 s_axis_scram TSTRB";
  attribute X_INTERFACE_INFO of scram_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_scram TVALID";
  attribute X_INTERFACE_INFO of scram_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_scram TDATA";
  attribute X_INTERFACE_INFO of scram_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_scram TREADY";
  attribute X_INTERFACE_PARAMETER of scram_dout_rdy : signal is "XIL_INTERFACENAME s_axis_scram, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of scram_dout_sig_flag : signal is "xilinx.com:interface:axis:1.0 m_axis_scram TSTRB";
  attribute X_INTERFACE_INFO of scram_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_scram TVALID";
  attribute X_INTERFACE_INFO of scram_din_rate_con : signal is "xilinx.com:interface:axis:1.0 s_axis_scram TID";
  attribute X_INTERFACE_INFO of scram_dout_rate_con : signal is "xilinx.com:interface:axis:1.0 m_axis_scram TID";
  attribute X_INTERFACE_PARAMETER of scram_dout_rate_con : signal is "XIL_INTERFACENAME m_axis_scram, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^scram_din_rdy\ <= scram_din_rdy;
  scram_dout_rdy <= \^scram_din_rdy\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scramler
     port map (
      clk => clk,
      rst_n => rst_n,
      scram_din => scram_din,
      scram_din_rate_con(3 downto 0) => scram_din_rate_con(3 downto 0),
      scram_din_rdy => \^scram_din_rdy\,
      scram_din_sig_flag => scram_din_sig_flag,
      scram_din_vld => scram_din_vld,
      scram_dout => scram_dout,
      scram_dout_rate_con(3 downto 0) => scram_dout_rate_con(3 downto 0),
      scram_dout_sig_flag => scram_dout_sig_flag,
      scram_dout_vld => scram_dout_vld,
      scram_load => scram_load,
      scram_seed(6 downto 0) => scram_seed(6 downto 0)
    );
end STRUCTURE;
