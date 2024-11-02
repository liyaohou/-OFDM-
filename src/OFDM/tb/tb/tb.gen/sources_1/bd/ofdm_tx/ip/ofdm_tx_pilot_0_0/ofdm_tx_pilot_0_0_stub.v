// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:23 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_pilot_0_0/ofdm_tx_pilot_0_0_stub.v
// Design      : ofdm_tx_pilot_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pilot,Vivado 2023.1" *)
module ofdm_tx_pilot_0_0(clk, rst_n, pilot_din_Index, pilot_din, 
  pilot_din_vld, pilot_din_rdy, pilot_dout, pilot_dout_vld, pilot_dout_rdy, pilot_dout_last)
/* synthesis syn_black_box black_box_pad_pin="rst_n,pilot_din_Index[5:0],pilot_din[15:0],pilot_din_vld,pilot_din_rdy,pilot_dout[15:0],pilot_dout_vld,pilot_dout_rdy,pilot_dout_last" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input [5:0]pilot_din_Index;
  input [15:0]pilot_din;
  input pilot_din_vld;
  input pilot_din_rdy;
  output [15:0]pilot_dout;
  output pilot_dout_vld;
  output pilot_dout_rdy;
  output pilot_dout_last;
endmodule
