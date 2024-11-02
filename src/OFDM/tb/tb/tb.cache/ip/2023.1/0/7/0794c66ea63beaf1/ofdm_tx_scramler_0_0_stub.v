// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:14 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_scramler_0_0_stub.v
// Design      : ofdm_tx_scramler_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "scramler,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, scram_seed, scram_load, scram_din, 
  scram_din_vld, scram_din_rdy, scram_din_sig_flag, scram_din_rate_con, scram_dout, 
  scram_dout_vld, scram_dout_rdy, scram_dout_sig_flag, scram_dout_rate_con)
/* synthesis syn_black_box black_box_pad_pin="rst_n,scram_seed[6:0],scram_load,scram_din,scram_din_vld,scram_din_rdy,scram_din_sig_flag,scram_din_rate_con[3:0],scram_dout,scram_dout_vld,scram_dout_rdy,scram_dout_sig_flag,scram_dout_rate_con[3:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input [6:0]scram_seed;
  input scram_load;
  input scram_din;
  input scram_din_vld;
  input scram_din_rdy;
  input scram_din_sig_flag;
  input [3:0]scram_din_rate_con;
  output scram_dout;
  output scram_dout_vld;
  output scram_dout_rdy;
  output scram_dout_sig_flag;
  output [3:0]scram_dout_rate_con;
endmodule
