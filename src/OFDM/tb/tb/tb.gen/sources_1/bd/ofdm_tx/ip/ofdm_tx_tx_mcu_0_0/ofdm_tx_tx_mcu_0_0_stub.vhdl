-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:53:45 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_tx_mcu_0_0/ofdm_tx_tx_mcu_0_0_stub.vhdl
-- Design      : ofdm_tx_tx_mcu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ofdm_tx_tx_mcu_0_0 is
  Port ( 
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

end ofdm_tx_tx_mcu_0_0;

architecture stub of ofdm_tx_tx_mcu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,mcu_config_din[20:0],mcu_config_din_vld,mcu_config_din_start,mcu_config_dout_rdy,mcu_mac_din[7:0],mcu_mac_din_vld,mcu_mac_dout_rdy,mcu_din_rdy,mcu_dout,mcu_dout_vld,mcu_dout_sig_flag,mcu_dout_rate_con[3:0],mcu_dout_scram_seed[6:0],mcu_dout_scram_load,phy_rst_n,tx_end,TxPWR[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tx_mcu,Vivado 2023.1";
begin
end;
