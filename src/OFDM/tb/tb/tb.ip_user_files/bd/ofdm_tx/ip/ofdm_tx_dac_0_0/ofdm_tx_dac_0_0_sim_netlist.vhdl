-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:53:47 2024
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
entity ofdm_tx_dac_0_0_edge_detection is
  port (
    s_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_train_din_last : in STD_LOGIC;
    clk : in STD_LOGIC;
    dac_ifft_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_train_din : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_dac_0_0_edge_detection : entity is "edge_detection";
end ofdm_tx_dac_0_0_edge_detection;

architecture STRUCTURE of ofdm_tx_dac_0_0_edge_detection is
  signal edge_din_r : STD_LOGIC;
  signal s_axis_tdata1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_tdata12_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal u_fifo_i_28_n_1 : STD_LOGIC;
  signal u_fifo_i_28_n_2 : STD_LOGIC;
  signal u_fifo_i_28_n_3 : STD_LOGIC;
  signal u_fifo_i_29_n_0 : STD_LOGIC;
  signal u_fifo_i_29_n_1 : STD_LOGIC;
  signal u_fifo_i_29_n_2 : STD_LOGIC;
  signal u_fifo_i_29_n_3 : STD_LOGIC;
  signal u_fifo_i_30_n_1 : STD_LOGIC;
  signal u_fifo_i_30_n_2 : STD_LOGIC;
  signal u_fifo_i_30_n_3 : STD_LOGIC;
  signal u_fifo_i_31_n_0 : STD_LOGIC;
  signal u_fifo_i_31_n_1 : STD_LOGIC;
  signal u_fifo_i_31_n_2 : STD_LOGIC;
  signal u_fifo_i_31_n_3 : STD_LOGIC;
  signal u_fifo_i_32_n_0 : STD_LOGIC;
  signal u_fifo_i_33_n_0 : STD_LOGIC;
  signal u_fifo_i_34_n_0 : STD_LOGIC;
  signal u_fifo_i_35_n_0 : STD_LOGIC;
  signal u_fifo_i_36_n_0 : STD_LOGIC;
  signal u_fifo_i_37_n_0 : STD_LOGIC;
  signal u_fifo_i_38_n_0 : STD_LOGIC;
  signal u_fifo_i_39_n_0 : STD_LOGIC;
  signal u_fifo_i_40_n_0 : STD_LOGIC;
  signal u_fifo_i_41_n_0 : STD_LOGIC;
  signal u_fifo_i_42_n_0 : STD_LOGIC;
  signal u_fifo_i_43_n_0 : STD_LOGIC;
  signal u_fifo_i_44_n_0 : STD_LOGIC;
  signal u_fifo_i_45_n_0 : STD_LOGIC;
  signal u_fifo_i_46_n_0 : STD_LOGIC;
  signal u_fifo_i_47_n_0 : STD_LOGIC;
  signal NLW_u_fifo_i_28_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_u_fifo_i_30_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of u_fifo_i_28 : label is 35;
  attribute ADDER_THRESHOLD of u_fifo_i_29 : label is 35;
  attribute ADDER_THRESHOLD of u_fifo_i_30 : label is 35;
  attribute ADDER_THRESHOLD of u_fifo_i_31 : label is 35;
begin
edge_din_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dac_train_din_last,
      Q => edge_din_r,
      R => '0'
    );
u_fifo_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(7),
      I1 => edge_din_r,
      I2 => dac_ifft_din(7),
      I3 => dac_train_din_last,
      I4 => dac_train_din(7),
      O => s_axis_tdata(7)
    );
u_fifo_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(6),
      I1 => edge_din_r,
      I2 => dac_ifft_din(6),
      I3 => dac_train_din_last,
      I4 => dac_train_din(6),
      O => s_axis_tdata(6)
    );
u_fifo_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(5),
      I1 => edge_din_r,
      I2 => dac_ifft_din(5),
      I3 => dac_train_din_last,
      I4 => dac_train_din(5),
      O => s_axis_tdata(5)
    );
u_fifo_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(4),
      I1 => edge_din_r,
      I2 => dac_ifft_din(4),
      I3 => dac_train_din_last,
      I4 => dac_train_din(4),
      O => s_axis_tdata(4)
    );
u_fifo_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(3),
      I1 => edge_din_r,
      I2 => dac_ifft_din(3),
      I3 => dac_train_din_last,
      I4 => dac_train_din(3),
      O => s_axis_tdata(3)
    );
u_fifo_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(2),
      I1 => edge_din_r,
      I2 => dac_ifft_din(2),
      I3 => dac_train_din_last,
      I4 => dac_train_din(2),
      O => s_axis_tdata(2)
    );
u_fifo_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(1),
      I1 => edge_din_r,
      I2 => dac_ifft_din(1),
      I3 => dac_train_din_last,
      I4 => dac_train_din(1),
      O => s_axis_tdata(1)
    );
u_fifo_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata1(0),
      I1 => edge_din_r,
      I2 => dac_ifft_din(0),
      I3 => dac_train_din_last,
      I4 => dac_train_din(0),
      O => s_axis_tdata(0)
    );
u_fifo_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(7),
      I1 => edge_din_r,
      I2 => dac_ifft_din(15),
      I3 => dac_train_din_last,
      I4 => dac_train_din(15),
      O => s_axis_tdata(15)
    );
u_fifo_i_28: unisim.vcomponents.CARRY4
     port map (
      CI => u_fifo_i_29_n_0,
      CO(3) => NLW_u_fifo_i_28_CO_UNCONNECTED(3),
      CO(2) => u_fifo_i_28_n_1,
      CO(1) => u_fifo_i_28_n_2,
      CO(0) => u_fifo_i_28_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => dac_ifft_din(14 downto 12),
      O(3 downto 0) => s_axis_tdata12_out(7 downto 4),
      S(3) => u_fifo_i_32_n_0,
      S(2) => u_fifo_i_33_n_0,
      S(1) => u_fifo_i_34_n_0,
      S(0) => u_fifo_i_35_n_0
    );
u_fifo_i_29: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => u_fifo_i_29_n_0,
      CO(2) => u_fifo_i_29_n_1,
      CO(1) => u_fifo_i_29_n_2,
      CO(0) => u_fifo_i_29_n_3,
      CYINIT => '0',
      DI(3 downto 0) => dac_ifft_din(11 downto 8),
      O(3 downto 0) => s_axis_tdata12_out(3 downto 0),
      S(3) => u_fifo_i_36_n_0,
      S(2) => u_fifo_i_37_n_0,
      S(1) => u_fifo_i_38_n_0,
      S(0) => u_fifo_i_39_n_0
    );
u_fifo_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(6),
      I1 => edge_din_r,
      I2 => dac_ifft_din(14),
      I3 => dac_train_din_last,
      I4 => dac_train_din(14),
      O => s_axis_tdata(14)
    );
u_fifo_i_30: unisim.vcomponents.CARRY4
     port map (
      CI => u_fifo_i_31_n_0,
      CO(3) => NLW_u_fifo_i_30_CO_UNCONNECTED(3),
      CO(2) => u_fifo_i_30_n_1,
      CO(1) => u_fifo_i_30_n_2,
      CO(0) => u_fifo_i_30_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => dac_ifft_din(6 downto 4),
      O(3 downto 0) => s_axis_tdata1(7 downto 4),
      S(3) => u_fifo_i_40_n_0,
      S(2) => u_fifo_i_41_n_0,
      S(1) => u_fifo_i_42_n_0,
      S(0) => u_fifo_i_43_n_0
    );
u_fifo_i_31: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => u_fifo_i_31_n_0,
      CO(2) => u_fifo_i_31_n_1,
      CO(1) => u_fifo_i_31_n_2,
      CO(0) => u_fifo_i_31_n_3,
      CYINIT => '0',
      DI(3 downto 0) => dac_ifft_din(3 downto 0),
      O(3 downto 0) => s_axis_tdata1(3 downto 0),
      S(3) => u_fifo_i_44_n_0,
      S(2) => u_fifo_i_45_n_0,
      S(1) => u_fifo_i_46_n_0,
      S(0) => u_fifo_i_47_n_0
    );
u_fifo_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(15),
      I1 => dac_train_din(15),
      O => u_fifo_i_32_n_0
    );
u_fifo_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(14),
      I1 => dac_train_din(14),
      O => u_fifo_i_33_n_0
    );
u_fifo_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(13),
      I1 => dac_train_din(13),
      O => u_fifo_i_34_n_0
    );
u_fifo_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(12),
      I1 => dac_train_din(12),
      O => u_fifo_i_35_n_0
    );
u_fifo_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(11),
      I1 => dac_train_din(11),
      O => u_fifo_i_36_n_0
    );
u_fifo_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(10),
      I1 => dac_train_din(10),
      O => u_fifo_i_37_n_0
    );
u_fifo_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(9),
      I1 => dac_train_din(9),
      O => u_fifo_i_38_n_0
    );
u_fifo_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(8),
      I1 => dac_train_din(8),
      O => u_fifo_i_39_n_0
    );
u_fifo_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(5),
      I1 => edge_din_r,
      I2 => dac_ifft_din(13),
      I3 => dac_train_din_last,
      I4 => dac_train_din(13),
      O => s_axis_tdata(13)
    );
u_fifo_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(7),
      I1 => dac_train_din(7),
      O => u_fifo_i_40_n_0
    );
u_fifo_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(6),
      I1 => dac_train_din(6),
      O => u_fifo_i_41_n_0
    );
u_fifo_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(5),
      I1 => dac_train_din(5),
      O => u_fifo_i_42_n_0
    );
u_fifo_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(4),
      I1 => dac_train_din(4),
      O => u_fifo_i_43_n_0
    );
u_fifo_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(3),
      I1 => dac_train_din(3),
      O => u_fifo_i_44_n_0
    );
u_fifo_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(2),
      I1 => dac_train_din(2),
      O => u_fifo_i_45_n_0
    );
u_fifo_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(1),
      I1 => dac_train_din(1),
      O => u_fifo_i_46_n_0
    );
u_fifo_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dac_ifft_din(0),
      I1 => dac_train_din(0),
      O => u_fifo_i_47_n_0
    );
u_fifo_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(4),
      I1 => edge_din_r,
      I2 => dac_ifft_din(12),
      I3 => dac_train_din_last,
      I4 => dac_train_din(12),
      O => s_axis_tdata(12)
    );
u_fifo_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(3),
      I1 => edge_din_r,
      I2 => dac_ifft_din(11),
      I3 => dac_train_din_last,
      I4 => dac_train_din(11),
      O => s_axis_tdata(11)
    );
u_fifo_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(2),
      I1 => edge_din_r,
      I2 => dac_ifft_din(10),
      I3 => dac_train_din_last,
      I4 => dac_train_din(10),
      O => s_axis_tdata(10)
    );
u_fifo_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(1),
      I1 => edge_din_r,
      I2 => dac_ifft_din(9),
      I3 => dac_train_din_last,
      I4 => dac_train_din(9),
      O => s_axis_tdata(9)
    );
u_fifo_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => s_axis_tdata12_out(0),
      I1 => edge_din_r,
      I2 => dac_ifft_din(8),
      I3 => dac_train_din_last,
      I4 => dac_train_din(8),
      O => s_axis_tdata(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ofdm_tx_dac_0_0_dac is
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
    dac_dout_Index : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ofdm_tx_dac_0_0_dac : entity is "dac";
end ofdm_tx_dac_0_0_dac;

architecture STRUCTURE of ofdm_tx_dac_0_0_dac is
  component ofdm_tx_dac_0_0_fifo_generator_0 is
  port (
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component ofdm_tx_dac_0_0_fifo_generator_0;
  signal s_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axis_tlast : STD_LOGIC;
  signal s_axis_tready : STD_LOGIC;
  signal s_axis_tuser : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal s_axis_tvalid : STD_LOGIC;
  signal NLW_u_fifo_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_u_fifo_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dac_ifft_dout_rdy_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of dac_train_dout_rdy_INST_0 : label is "soft_lutpair5";
  attribute x_core_info : string;
  attribute x_core_info of u_fifo : label is "fifo_generator_v13_2_8,Vivado 2023.1";
  attribute SOFT_HLUTNM of u_fifo_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of u_fifo_i_19 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of u_fifo_i_20 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of u_fifo_i_21 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of u_fifo_i_22 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of u_fifo_i_23 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of u_fifo_i_24 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of u_fifo_i_25 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of u_fifo_i_26 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of u_fifo_i_27 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dac_din_rdy : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TREADY";
  attribute X_INTERFACE_INFO of dac_dout_last : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TLAST";
  attribute X_INTERFACE_INFO of dac_dout_vld : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TVALID";
  attribute X_INTERFACE_INFO of dac_ifft_din_last : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TLAST";
  attribute X_INTERFACE_INFO of dac_ifft_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TVALID";
  attribute X_INTERFACE_INFO of dac_ifft_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TREADY";
  attribute X_INTERFACE_INFO of dac_train_din_last : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TLAST";
  attribute X_INTERFACE_INFO of dac_train_din_vld : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TVALID";
  attribute X_INTERFACE_INFO of dac_train_dout_rdy : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TREADY";
  attribute X_INTERFACE_INFO of dac_dout : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TDATA";
  attribute X_INTERFACE_INFO of dac_dout_Index : signal is "xilinx.com:interface:axis:1.0 m_axis_dac TUSER";
  attribute X_INTERFACE_INFO of dac_ifft_din : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TDATA";
  attribute X_INTERFACE_INFO of dac_ifft_din_Index : signal is "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TUSER";
  attribute X_INTERFACE_INFO of dac_train_din : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TDATA";
  attribute X_INTERFACE_INFO of dac_train_din_Index : signal is "xilinx.com:interface:axis:1.0 s_axis_train_dac TUSER";
begin
dac_ifft_dout_rdy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dac_train_din_last,
      I1 => s_axis_tready,
      O => dac_ifft_dout_rdy
    );
dac_train_dout_rdy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tready,
      I1 => dac_train_din_last,
      O => dac_train_dout_rdy
    );
u_edge_detection: entity work.ofdm_tx_dac_0_0_edge_detection
     port map (
      clk => clk,
      dac_ifft_din(15 downto 0) => dac_ifft_din(15 downto 0),
      dac_train_din(15 downto 0) => dac_train_din(15 downto 0),
      dac_train_din_last => dac_train_din_last,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0)
    );
u_fifo: component ofdm_tx_dac_0_0_fifo_generator_0
     port map (
      m_aclk => clk_dac,
      m_axis_tdata(15 downto 0) => dac_dout(15 downto 0),
      m_axis_tlast => dac_dout_last,
      m_axis_tready => dac_din_rdy,
      m_axis_tuser(8 downto 0) => dac_dout_Index(8 downto 0),
      m_axis_tvalid => dac_dout_vld,
      rd_rst_busy => NLW_u_fifo_rd_rst_busy_UNCONNECTED,
      s_aclk => clk,
      s_aresetn => rst_n,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(8 downto 0) => s_axis_tuser(8 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      wr_rst_busy => NLW_u_fifo_wr_rst_busy_UNCONNECTED
    );
u_fifo_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dac_ifft_din_vld,
      I1 => dac_train_din_last,
      I2 => dac_train_din_vld,
      O => s_axis_tvalid
    );
u_fifo_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dac_train_din_last,
      I1 => dac_ifft_din_last,
      O => s_axis_tlast
    );
u_fifo_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dac_train_din_Index(8),
      I1 => dac_train_din_last,
      O => s_axis_tuser(8)
    );
u_fifo_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => dac_ifft_din_Index(7),
      I1 => dac_train_din_Index(7),
      I2 => dac_train_din_last,
      O => s_axis_tuser(7)
    );
u_fifo_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => dac_ifft_din_Index(6),
      I1 => dac_train_din_Index(6),
      I2 => dac_train_din_last,
      O => s_axis_tuser(6)
    );
u_fifo_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => dac_ifft_din_Index(5),
      I1 => dac_train_din_Index(5),
      I2 => dac_train_din_last,
      O => s_axis_tuser(5)
    );
u_fifo_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => dac_ifft_din_Index(4),
      I1 => dac_train_din_Index(4),
      I2 => dac_train_din_last,
      O => s_axis_tuser(4)
    );
u_fifo_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => dac_ifft_din_Index(3),
      I1 => dac_train_din_Index(3),
      I2 => dac_train_din_last,
      O => s_axis_tuser(3)
    );
u_fifo_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => dac_ifft_din_Index(2),
      I1 => dac_train_din_Index(2),
      I2 => dac_train_din_last,
      O => s_axis_tuser(2)
    );
u_fifo_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => dac_ifft_din_Index(1),
      I1 => dac_train_din_Index(1),
      I2 => dac_train_din_last,
      O => s_axis_tuser(1)
    );
u_fifo_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => dac_ifft_din_Index(0),
      I1 => dac_train_din_Index(0),
      I2 => dac_train_din_last,
      O => s_axis_tuser(0)
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
    dac_dout_Index : out STD_LOGIC_VECTOR ( 8 downto 0 )
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
inst: entity work.ofdm_tx_dac_0_0_dac
     port map (
      clk => clk,
      clk_dac => clk_dac,
      dac_din_rdy => dac_din_rdy,
      dac_dout(15 downto 0) => dac_dout(15 downto 0),
      dac_dout_Index(8 downto 0) => dac_dout_Index(8 downto 0),
      dac_dout_last => dac_dout_last,
      dac_dout_vld => dac_dout_vld,
      dac_ifft_din(15 downto 0) => dac_ifft_din(15 downto 0),
      dac_ifft_din_Index(7 downto 0) => dac_ifft_din_Index(7 downto 0),
      dac_ifft_din_last => dac_ifft_din_last,
      dac_ifft_din_vld => dac_ifft_din_vld,
      dac_ifft_dout_rdy => dac_ifft_dout_rdy,
      dac_train_din(15 downto 0) => dac_train_din(15 downto 0),
      dac_train_din_Index(8 downto 0) => dac_train_din_Index(8 downto 0),
      dac_train_din_last => dac_train_din_last,
      dac_train_din_vld => dac_train_din_vld,
      dac_train_dout_rdy => dac_train_dout_rdy,
      rst_n => rst_n
    );
end STRUCTURE;
