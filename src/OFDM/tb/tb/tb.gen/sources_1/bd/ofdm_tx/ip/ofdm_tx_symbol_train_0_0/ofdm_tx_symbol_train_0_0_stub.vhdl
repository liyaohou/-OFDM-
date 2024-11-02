-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:23 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_symbol_train_0_0/ofdm_tx_symbol_train_0_0_stub.vhdl
-- Design      : ofdm_tx_symbol_train_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ofdm_tx_symbol_train_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    train_din_rdy : in STD_LOGIC;
    train_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    train_dout_vld : out STD_LOGIC;
    train_dout_last : out STD_LOGIC;
    train_dout_Index : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end ofdm_tx_symbol_train_0_0;

architecture stub of ofdm_tx_symbol_train_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,train_din_rdy,train_dout[15:0],train_dout_vld,train_dout_last,train_dout_Index[8:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "symbol_train,Vivado 2023.1";
begin
end;
