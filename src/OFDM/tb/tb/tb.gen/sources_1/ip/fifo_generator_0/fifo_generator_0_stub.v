// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Nov  1 22:32:13 2024
// Host        : WIN-SHBOMJ4SJAL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Administrator/Desktop/tb/tb/tb.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_stub.v
// Design      : fifo_generator_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *)
module fifo_generator_0(wr_rst_busy, rd_rst_busy, m_aclk, s_aclk, 
  s_aresetn, s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tlast, s_axis_tuser, 
  m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tlast, m_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="wr_rst_busy,rd_rst_busy,s_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[15:0],s_axis_tlast,s_axis_tuser[8:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[15:0],m_axis_tlast,m_axis_tuser[8:0]" */
/* synthesis syn_force_seq_prim="m_aclk" */
/* synthesis syn_force_seq_prim="s_aclk" */;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk /* synthesis syn_isclock = 1 */;
  input s_aclk /* synthesis syn_isclock = 1 */;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input s_axis_tlast;
  input [8:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [15:0]m_axis_tdata;
  output m_axis_tlast;
  output [8:0]m_axis_tuser;
endmodule
