//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Sat Nov  2 21:41:42 2024
//Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
//Command     : generate_target ofdm_tx_wrapper.bd
//Design      : ofdm_tx_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ofdm_tx_wrapper
   (TxPWR,
    clk_125m,
    clk_20m,
    dac_din_rdy,
    dac_dout,
    dac_dout_Index,
    dac_dout_last,
    dac_dout_vld,
    locked,
    mcu_config_din,
    mcu_config_din_start,
    mcu_config_din_vld,
    mcu_config_dout_rdy,
    mcu_mac_din,
    mcu_mac_din_vld,
    mcu_mac_dout_rdy,
    tx_end);
  output [2:0]TxPWR;
  input clk_125m;
  input clk_20m;
  input dac_din_rdy;
  output [15:0]dac_dout;
  output [8:0]dac_dout_Index;
  output dac_dout_last;
  output dac_dout_vld;
  input locked;
  input [20:0]mcu_config_din;
  input mcu_config_din_start;
  input mcu_config_din_vld;
  output mcu_config_dout_rdy;
  input [7:0]mcu_mac_din;
  input mcu_mac_din_vld;
  output mcu_mac_dout_rdy;
  input tx_end;

  wire [2:0]TxPWR;
  wire clk_125m;
  wire clk_20m;
  wire dac_din_rdy;
  wire [15:0]dac_dout;
  wire [8:0]dac_dout_Index;
  wire dac_dout_last;
  wire dac_dout_vld;
  wire locked;
  wire [20:0]mcu_config_din;
  wire mcu_config_din_start;
  wire mcu_config_din_vld;
  wire mcu_config_dout_rdy;
  wire [7:0]mcu_mac_din;
  wire mcu_mac_din_vld;
  wire mcu_mac_dout_rdy;
  wire tx_end;

  ofdm_tx ofdm_tx_i
       (.TxPWR(TxPWR),
        .clk_125m(clk_125m),
        .clk_20m(clk_20m),
        .dac_din_rdy(dac_din_rdy),
        .dac_dout(dac_dout),
        .dac_dout_Index(dac_dout_Index),
        .dac_dout_last(dac_dout_last),
        .dac_dout_vld(dac_dout_vld),
        .locked(locked),
        .mcu_config_din(mcu_config_din),
        .mcu_config_din_start(mcu_config_din_start),
        .mcu_config_din_vld(mcu_config_din_vld),
        .mcu_config_dout_rdy(mcu_config_dout_rdy),
        .mcu_mac_din(mcu_mac_din),
        .mcu_mac_din_vld(mcu_mac_din_vld),
        .mcu_mac_dout_rdy(mcu_mac_dout_rdy),
        .tx_end(tx_end));
endmodule
