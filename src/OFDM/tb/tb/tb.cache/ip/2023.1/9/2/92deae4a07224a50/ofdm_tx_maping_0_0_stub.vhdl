-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Nov  2 20:52:16 2024
-- Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_maping_0_0_stub.vhdl
-- Design      : ofdm_tx_maping_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    map_din : in STD_LOGIC;
    map_din_vld : in STD_LOGIC;
    map_din_rdy : in STD_LOGIC;
    map_din_Map_Type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    map_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    map_dout_vld : out STD_LOGIC;
    map_dout_rdy : out STD_LOGIC;
    map_dout_Index : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,map_din,map_din_vld,map_din_rdy,map_din_Map_Type[1:0],map_dout[15:0],map_dout_vld,map_dout_rdy,map_dout_Index[5:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "maping,Vivado 2023.1";
begin
end;
