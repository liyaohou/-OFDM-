-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:14 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_scramler_0_0/ofdm_tx_scramler_0_0_stub.vhdl
-- Design      : ofdm_tx_scramler_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ofdm_tx_scramler_0_0 is
  Port ( 
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

end ofdm_tx_scramler_0_0;

architecture stub of ofdm_tx_scramler_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,scram_seed[6:0],scram_load,scram_din,scram_din_vld,scram_din_rdy,scram_din_sig_flag,scram_din_rate_con[3:0],scram_dout,scram_dout_vld,scram_dout_rdy,scram_dout_sig_flag,scram_dout_rate_con[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "scramler,Vivado 2023.1";
begin
end;
