// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:53:45 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_tx_mcu_0_0_stub.v
// Design      : ofdm_tx_tx_mcu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tx_mcu,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, mcu_config_din, mcu_config_din_vld, 
  mcu_config_din_start, mcu_config_dout_rdy, mcu_mac_din, mcu_mac_din_vld, 
  mcu_mac_dout_rdy, mcu_din_rdy, mcu_dout, mcu_dout_vld, mcu_dout_sig_flag, 
  mcu_dout_rate_con, mcu_dout_scram_seed, mcu_dout_scram_load, phy_rst_n, tx_end, TxPWR)
/* synthesis syn_black_box black_box_pad_pin="rst_n,mcu_config_din[20:0],mcu_config_din_vld,mcu_config_din_start,mcu_config_dout_rdy,mcu_mac_din[7:0],mcu_mac_din_vld,mcu_mac_dout_rdy,mcu_din_rdy,mcu_dout,mcu_dout_vld,mcu_dout_sig_flag,mcu_dout_rate_con[3:0],mcu_dout_scram_seed[6:0],mcu_dout_scram_load,phy_rst_n,tx_end,TxPWR[2:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input [20:0]mcu_config_din;
  input mcu_config_din_vld;
  input mcu_config_din_start;
  output mcu_config_dout_rdy;
  input [7:0]mcu_mac_din;
  input mcu_mac_din_vld;
  output mcu_mac_dout_rdy;
  input mcu_din_rdy;
  output mcu_dout;
  output mcu_dout_vld;
  output mcu_dout_sig_flag;
  output [3:0]mcu_dout_rate_con;
  output [6:0]mcu_dout_scram_seed;
  output mcu_dout_scram_load;
  output phy_rst_n;
  input tx_end;
  output [2:0]TxPWR;
endmodule
