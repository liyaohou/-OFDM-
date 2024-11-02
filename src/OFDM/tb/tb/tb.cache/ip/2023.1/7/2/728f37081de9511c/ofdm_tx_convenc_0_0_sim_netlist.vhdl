-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:14 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_convenc_0_0_sim_netlist.vhdl
-- Design      : ofdm_tx_convenc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convenc is
  port (
    conv_dout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    conv_dout_sig_flag : out STD_LOGIC;
    conv_dout_rate_con : out STD_LOGIC_VECTOR ( 3 downto 0 );
    conv_dout_vld : out STD_LOGIC;
    clk : in STD_LOGIC;
    conv_din : in STD_LOGIC;
    conv_din_sig_flag : in STD_LOGIC;
    conv_din_rate_con : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_n : in STD_LOGIC;
    conv_din_vld : in STD_LOGIC;
    conv_din_rdy : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convenc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convenc is
  signal \conv_dout02_out__0\ : STD_LOGIC;
  signal \conv_dout0__0\ : STD_LOGIC;
  signal \conv_dout[1]_i_2_n_0\ : STD_LOGIC;
  signal \^conv_dout_vld\ : STD_LOGIC;
  signal conv_dout_vld_i_1_n_0 : STD_LOGIC;
  signal conv_en : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \conv_dout_rate_con_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_conv TID";
  attribute X_INTERFACE_INFO of \conv_dout_rate_con_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_conv TID";
  attribute X_INTERFACE_INFO of \conv_dout_rate_con_reg[2]\ : label is "xilinx.com:interface:axis:1.0 m_axis_conv TID";
  attribute X_INTERFACE_INFO of \conv_dout_rate_con_reg[3]\ : label is "xilinx.com:interface:axis:1.0 m_axis_conv TID";
  attribute X_INTERFACE_INFO of \conv_dout_reg[0]\ : label is "xilinx.com:interface:axis:1.0 m_axis_conv TDATA";
  attribute X_INTERFACE_INFO of \conv_dout_reg[1]\ : label is "xilinx.com:interface:axis:1.0 m_axis_conv TDATA";
  attribute X_INTERFACE_INFO of conv_dout_sig_flag_reg : label is "xilinx.com:interface:axis:1.0 m_axis_conv TSTRB";
  attribute X_INTERFACE_INFO of conv_dout_vld_reg : label is "xilinx.com:interface:axis:1.0 m_axis_conv TVALID";
begin
  conv_dout_vld <= \^conv_dout_vld\;
conv_dout0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => conv_din,
      I2 => p_1_in,
      I3 => p_0_in,
      I4 => p_0_in0_in,
      O => \conv_dout0__0\
    );
conv_dout02_out: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => conv_din,
      I2 => p_1_in,
      I3 => \shift_reg_reg_n_0_[0]\,
      I4 => p_0_in0_in,
      O => \conv_dout02_out__0\
    );
\conv_dout[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => conv_din_rdy,
      I1 => conv_din_vld,
      O => conv_en
    );
\conv_dout[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \conv_dout[1]_i_2_n_0\
    );
\conv_dout_rate_con_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => conv_en,
      D => conv_din_rate_con(0),
      PRE => \conv_dout[1]_i_2_n_0\,
      Q => conv_dout_rate_con(0)
    );
\conv_dout_rate_con_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => conv_en,
      D => conv_din_rate_con(1),
      PRE => \conv_dout[1]_i_2_n_0\,
      Q => conv_dout_rate_con(1)
    );
\conv_dout_rate_con_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => conv_din_rate_con(2),
      Q => conv_dout_rate_con(2)
    );
\conv_dout_rate_con_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => conv_en,
      D => conv_din_rate_con(3),
      PRE => \conv_dout[1]_i_2_n_0\,
      Q => conv_dout_rate_con(3)
    );
\conv_dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => \conv_dout0__0\,
      Q => conv_dout(0)
    );
\conv_dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => \conv_dout02_out__0\,
      Q => conv_dout(1)
    );
conv_dout_sig_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => conv_din_sig_flag,
      Q => conv_dout_sig_flag
    );
conv_dout_vld_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => conv_din_vld,
      I1 => conv_din_rdy,
      I2 => \^conv_dout_vld\,
      O => conv_dout_vld_i_1_n_0
    );
conv_dout_vld_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \conv_dout[1]_i_2_n_0\,
      D => conv_dout_vld_i_1_n_0,
      Q => \^conv_dout_vld\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => conv_din,
      Q => \shift_reg_reg_n_0_[0]\
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => \shift_reg_reg_n_0_[0]\,
      Q => p_0_in1_in
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => p_0_in1_in,
      Q => p_0_in0_in
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => p_0_in0_in,
      Q => \shift_reg_reg_n_0_[3]\
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => \shift_reg_reg_n_0_[3]\,
      Q => p_0_in
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => conv_en,
      CLR => \conv_dout[1]_i_2_n_0\,
      D => p_0_in,
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
    conv_din : in STD_LOGIC;
    conv_din_vld : in STD_LOGIC;
    conv_din_rdy : in STD_LOGIC;
    conv_din_sig_flag : in STD_LOGIC;
    conv_din_rate_con : in STD_LOGIC_VECTOR ( 3 downto 0 );
    conv_dout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    conv_dout_vld : out STD_LOGIC;
    conv_dout_rdy : out STD_LOGIC;
    conv_dout_sig_flag : out STD_LOGIC;
    conv_dout_rate_con : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ofdm_tx_convenc_0_0,convenc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "convenc,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^conv_din_rdy\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_conv:m_axis_conv, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of conv_din : signal is "xilinx.com:interface:axis:1.0 s_axis_conv TDATA";
  attribute X_INTERFACE_INFO of conv_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_conv TREADY";
  attribute X_INTERFACE_INFO of conv_din_sig_flag : signal is "xilinx.com:interface:axis:1.0 s_axis_conv TSTRB";
  attribute X_INTERFACE_INFO of conv_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_conv TVALID";
  attribute X_INTERFACE_INFO of conv_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_conv TREADY";
  attribute X_INTERFACE_PARAMETER of conv_dout_rdy : signal is "XIL_INTERFACENAME s_axis_conv, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of conv_dout_sig_flag : signal is "xilinx.com:interface:axis:1.0 m_axis_conv TSTRB";
  attribute X_INTERFACE_INFO of conv_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_conv TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of conv_din_rate_con : signal is "xilinx.com:interface:axis:1.0 s_axis_conv TID";
  attribute X_INTERFACE_INFO of conv_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_conv TDATA";
  attribute X_INTERFACE_INFO of conv_dout_rate_con : signal is "xilinx.com:interface:axis:1.0 m_axis_conv TID";
  attribute X_INTERFACE_PARAMETER of conv_dout_rate_con : signal is "XIL_INTERFACENAME m_axis_conv, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^conv_din_rdy\ <= conv_din_rdy;
  conv_dout_rdy <= \^conv_din_rdy\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convenc
     port map (
      clk => clk,
      conv_din => conv_din,
      conv_din_rate_con(3 downto 0) => conv_din_rate_con(3 downto 0),
      conv_din_rdy => \^conv_din_rdy\,
      conv_din_sig_flag => conv_din_sig_flag,
      conv_din_vld => conv_din_vld,
      conv_dout(1 downto 0) => conv_dout(1 downto 0),
      conv_dout_rate_con(3 downto 0) => conv_dout_rate_con(3 downto 0),
      conv_dout_sig_flag => conv_dout_sig_flag,
      conv_dout_vld => conv_dout_vld,
      rst_n => rst_n
    );
end STRUCTURE;
