// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 10 19:35:21 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_dac_0_0_stub.v
// Design      : ofdm_tx_dac_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dac,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, clk_dac, rst_n, dac_ifft_din, 
  dac_ifft_din_vld, dac_ifft_din_last, dac_ifft_din_Index, dac_ifft_dout_rdy, 
  dac_train_din, dac_train_din_vld, dac_train_din_last, dac_train_din_Index, 
  dac_train_dout_rdy, dac_din_rdy, dac_dout, dac_dout_vld, dac_dout_last, dac_dout_Index, 
  mcu_config, mcu_config_r)
/* synthesis syn_black_box black_box_pad_pin="rst_n,dac_ifft_din[15:0],dac_ifft_din_vld,dac_ifft_din_last,dac_ifft_din_Index[7:0],dac_ifft_dout_rdy,dac_train_din[15:0],dac_train_din_vld,dac_train_din_last,dac_train_din_Index[8:0],dac_train_dout_rdy,dac_din_rdy,dac_dout[15:0],dac_dout_vld,dac_dout_last,dac_dout_Index[8:0],mcu_config,mcu_config_r" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="clk_dac" */;
  input clk /* synthesis syn_isclock = 1 */;
  input clk_dac /* synthesis syn_isclock = 1 */;
  input rst_n;
  input [15:0]dac_ifft_din;
  input dac_ifft_din_vld;
  input dac_ifft_din_last;
  input [7:0]dac_ifft_din_Index;
  output dac_ifft_dout_rdy;
  input [15:0]dac_train_din;
  input dac_train_din_vld;
  input dac_train_din_last;
  input [8:0]dac_train_din_Index;
  output dac_train_dout_rdy;
  input dac_din_rdy;
  output [15:0]dac_dout;
  output dac_dout_vld;
  output dac_dout_last;
  output [8:0]dac_dout_Index;
  input mcu_config;
  output mcu_config_r;
endmodule
