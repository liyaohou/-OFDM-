-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:23 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_pilot_0_0/ofdm_tx_pilot_0_0_stub.vhdl
-- Design      : ofdm_tx_pilot_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ofdm_tx_pilot_0_0 is
  Port ( 
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

end ofdm_tx_pilot_0_0;

architecture stub of ofdm_tx_pilot_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,pilot_din_Index[5:0],pilot_din[15:0],pilot_din_vld,pilot_din_rdy,pilot_dout[15:0],pilot_dout_vld,pilot_dout_rdy,pilot_dout_last";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pilot,Vivado 2023.1";
begin
end;
