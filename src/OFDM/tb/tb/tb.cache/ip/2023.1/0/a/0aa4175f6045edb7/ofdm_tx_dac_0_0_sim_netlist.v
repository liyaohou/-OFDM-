// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 10 19:35:21 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_dac_0_0_sim_netlist.v
// Design      : ofdm_tx_dac_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BufferCC_dac
   (io_dataIn,
    io_dataOut,
    clk1,
    rstN1);
  input [9:0]io_dataIn;
  output [9:0]io_dataOut;
  input clk1;
  input rstN1;

  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) (* async_reg = "true" *) wire [9:0]buffers_0;
  wire \buffers_0[9]_i_1_n_0 ;
  (* async_reg = "true" *) wire [9:0]buffers_1;
  wire clk1;
  wire [9:0]io_dataIn;
  wire rstN1;

  assign io_dataOut[9:0] = buffers_1;
  LUT1 #(
    .INIT(2'h1)) 
    \buffers_0[9]_i_1 
       (.I0(rstN1),
        .O(\buffers_0[9]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[0] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[0]),
        .Q(buffers_0[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[1] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[1]),
        .Q(buffers_0[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[2] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[2]),
        .Q(buffers_0[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[3] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[3]),
        .Q(buffers_0[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[4] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[4]),
        .Q(buffers_0[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[5] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[5]),
        .Q(buffers_0[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[6] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[6]),
        .Q(buffers_0[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[7] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[7]),
        .Q(buffers_0[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[8] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[8]),
        .Q(buffers_0[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[9] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[9]),
        .Q(buffers_0[9]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[0] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[0]),
        .Q(buffers_1[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[1] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[1]),
        .Q(buffers_1[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[2] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[2]),
        .Q(buffers_1[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[3] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[3]),
        .Q(buffers_1[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[4] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[4]),
        .Q(buffers_1[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[5] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[5]),
        .Q(buffers_1[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[6] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[6]),
        .Q(buffers_1[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[7] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[7]),
        .Q(buffers_1[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[8] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[8]),
        .Q(buffers_1[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[9] 
       (.C(clk1),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[9]),
        .Q(buffers_1[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BufferCC_dac1
   (io_dataIn,
    io_dataOut,
    clk2,
    rstN1);
  input io_dataIn;
  output io_dataOut;
  input clk2;
  input rstN1;

  (* async_reg = "true" *) wire buffers_0;
  wire buffers_0_i_1_n_0;
  (* async_reg = "true" *) wire buffers_1;
  wire clk2;
  wire io_dataIn;
  wire rstN1;

  assign io_dataOut = buffers_1;
  LUT1 #(
    .INIT(2'h1)) 
    buffers_0_i_1
       (.I0(rstN1),
        .O(buffers_0_i_1_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE buffers_0_reg
       (.C(clk2),
        .CE(1'b1),
        .CLR(buffers_0_i_1_n_0),
        .D(io_dataIn),
        .Q(buffers_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE buffers_1_reg
       (.C(clk2),
        .CE(1'b1),
        .CLR(buffers_0_i_1_n_0),
        .D(buffers_0),
        .Q(buffers_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BufferCC_dac2
   (io_dataIn,
    io_dataOut,
    clk2,
    toplevel_rstN1_synchronized);
  input [9:0]io_dataIn;
  output [9:0]io_dataOut;
  input clk2;
  input toplevel_rstN1_synchronized;

  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) (* async_reg = "true" *) wire [9:0]buffers_0;
  wire \buffers_0[9]_i_1_n_0 ;
  (* async_reg = "true" *) wire [9:0]buffers_1;
  wire clk2;
  wire [9:0]io_dataIn;
  wire toplevel_rstN1_synchronized;

  assign io_dataOut[9:0] = buffers_1;
  LUT1 #(
    .INIT(2'h1)) 
    \buffers_0[9]_i_1 
       (.I0(toplevel_rstN1_synchronized),
        .O(\buffers_0[9]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[0] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[0]),
        .Q(buffers_0[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[1] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[1]),
        .Q(buffers_0[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[2] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[2]),
        .Q(buffers_0[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[3] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[3]),
        .Q(buffers_0[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[4] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[4]),
        .Q(buffers_0[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[5] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[5]),
        .Q(buffers_0[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[6] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[6]),
        .Q(buffers_0[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[7] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[7]),
        .Q(buffers_0[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[8] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[8]),
        .Q(buffers_0[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \buffers_0_reg[9] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(io_dataIn[9]),
        .Q(buffers_0[9]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[0] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[0]),
        .Q(buffers_1[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[1] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[1]),
        .Q(buffers_1[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[2] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[2]),
        .Q(buffers_1[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[3] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[3]),
        .Q(buffers_1[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[4] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[4]),
        .Q(buffers_1[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[5] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[5]),
        .Q(buffers_1[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[6] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[6]),
        .Q(buffers_1[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[7] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[7]),
        .Q(buffers_1[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[8] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[8]),
        .Q(buffers_1[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \buffers_1_reg[9] 
       (.C(clk2),
        .CE(1'b1),
        .CLR(\buffers_0[9]_i_1_n_0 ),
        .D(buffers_0[9]),
        .Q(buffers_1[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac
   (dac_dout,
    DOBDO,
    popCC_addressGen_rValid_reg,
    dac_train_dout_rdy,
    mcu_config_r,
    dac_ifft_dout_rdy,
    clk,
    rst_n,
    clk_dac,
    dac_train_din_last,
    mcu_config,
    dac_ifft_din,
    dac_train_din,
    dac_ifft_din_vld,
    dac_train_din_vld,
    dac_ifft_din_last,
    dac_ifft_din_Index,
    dac_train_din_Index,
    dac_din_rdy);
  output [15:0]dac_dout;
  output [2:0]DOBDO;
  output popCC_addressGen_rValid_reg;
  output dac_train_dout_rdy;
  output mcu_config_r;
  output dac_ifft_dout_rdy;
  input clk;
  input rst_n;
  input clk_dac;
  input dac_train_din_last;
  input mcu_config;
  input [15:0]dac_ifft_din;
  input [15:0]dac_train_din;
  input dac_ifft_din_vld;
  input dac_train_din_vld;
  input dac_ifft_din_last;
  input [1:0]dac_ifft_din_Index;
  input [1:0]dac_train_din_Index;
  input dac_din_rdy;

  wire [2:0]DOBDO;
  wire clk;
  wire clk_dac;
  wire dac_din_rdy;
  wire [15:0]dac_dout;
  wire dac_dout_vld_d0;
  wire dac_dout_vld_d1;
  wire [15:0]dac_ifft_din;
  wire [1:0]dac_ifft_din_Index;
  wire dac_ifft_din_last;
  wire dac_ifft_din_vld;
  wire dac_ifft_dout_rdy;
  wire [15:0]dac_train_din;
  wire [1:0]dac_train_din_Index;
  wire dac_train_din_last;
  wire dac_train_din_vld;
  wire dac_train_dout_rdy;
  wire edge_din_r;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire mcu_config;
  wire mcu_config_d0;
  wire mcu_config_d1;
  wire mcu_config_r;
  wire mcu_config_r_i_1_n_0;
  wire popCC_addressGen_rValid_reg;
  wire rst_n;
  wire [7:0]s_axis_tdata;
  wire [7:0]s_axis_tdata1;
  wire [7:0]s_axis_tdata12_out;
  wire s_axis_tdata1_carry__0_n_1;
  wire s_axis_tdata1_carry__0_n_2;
  wire s_axis_tdata1_carry__0_n_3;
  wire s_axis_tdata1_carry_i_1_n_0;
  wire s_axis_tdata1_carry_i_2_n_0;
  wire s_axis_tdata1_carry_i_3_n_0;
  wire s_axis_tdata1_carry_i_4_n_0;
  wire s_axis_tdata1_carry_n_0;
  wire s_axis_tdata1_carry_n_1;
  wire s_axis_tdata1_carry_n_2;
  wire s_axis_tdata1_carry_n_3;
  wire \s_axis_tdata1_inferred__0/i__carry__0_n_1 ;
  wire \s_axis_tdata1_inferred__0/i__carry__0_n_2 ;
  wire \s_axis_tdata1_inferred__0/i__carry__0_n_3 ;
  wire \s_axis_tdata1_inferred__0/i__carry_n_0 ;
  wire \s_axis_tdata1_inferred__0/i__carry_n_1 ;
  wire \s_axis_tdata1_inferred__0/i__carry_n_2 ;
  wire \s_axis_tdata1_inferred__0/i__carry_n_3 ;
  wire u_fifo_n_19;
  wire u_fifo_n_23;
  wire u_fifo_n_24;
  wire u_fifo_n_25;
  wire u_fifo_n_26;
  wire u_fifo_n_27;
  wire u_fifo_n_28;
  wire u_fifo_n_29;
  wire u_fifo_n_30;
  wire [3:3]NLW_s_axis_tdata1_carry__0_CO_UNCONNECTED;
  wire [3:3]\NLW_s_axis_tdata1_inferred__0/i__carry__0_CO_UNCONNECTED ;

  FDRE dac_dout_vld_d0_reg
       (.C(clk),
        .CE(1'b1),
        .D(popCC_addressGen_rValid_reg),
        .Q(dac_dout_vld_d0),
        .R(1'b0));
  FDRE dac_dout_vld_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(dac_dout_vld_d0),
        .Q(dac_dout_vld_d1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(dac_ifft_din[11]),
        .I1(dac_train_din[11]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(dac_ifft_din[10]),
        .I1(dac_train_din[10]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(dac_ifft_din[9]),
        .I1(dac_train_din[9]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(dac_ifft_din[8]),
        .I1(dac_train_din[8]),
        .O(i__carry_i_4_n_0));
  FDRE mcu_config_d0_reg
       (.C(clk),
        .CE(1'b1),
        .D(mcu_config),
        .Q(mcu_config_d0),
        .R(1'b0));
  FDRE mcu_config_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(mcu_config_d0),
        .Q(mcu_config_d1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFAA)) 
    mcu_config_r_i_1
       (.I0(mcu_config_d1),
        .I1(dac_dout_vld_d0),
        .I2(dac_dout_vld_d1),
        .I3(mcu_config_r),
        .O(mcu_config_r_i_1_n_0));
  FDCE mcu_config_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_fifo_n_19),
        .D(mcu_config_r_i_1_n_0),
        .Q(mcu_config_r));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_axis_tdata1_carry
       (.CI(1'b0),
        .CO({s_axis_tdata1_carry_n_0,s_axis_tdata1_carry_n_1,s_axis_tdata1_carry_n_2,s_axis_tdata1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(dac_ifft_din[3:0]),
        .O(s_axis_tdata1[3:0]),
        .S({s_axis_tdata1_carry_i_1_n_0,s_axis_tdata1_carry_i_2_n_0,s_axis_tdata1_carry_i_3_n_0,s_axis_tdata1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_axis_tdata1_carry__0
       (.CI(s_axis_tdata1_carry_n_0),
        .CO({NLW_s_axis_tdata1_carry__0_CO_UNCONNECTED[3],s_axis_tdata1_carry__0_n_1,s_axis_tdata1_carry__0_n_2,s_axis_tdata1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,dac_ifft_din[6:4]}),
        .O(s_axis_tdata1[7:4]),
        .S({u_fifo_n_23,u_fifo_n_24,u_fifo_n_25,u_fifo_n_26}));
  LUT2 #(
    .INIT(4'h6)) 
    s_axis_tdata1_carry_i_1
       (.I0(dac_ifft_din[3]),
        .I1(dac_train_din[3]),
        .O(s_axis_tdata1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_axis_tdata1_carry_i_2
       (.I0(dac_ifft_din[2]),
        .I1(dac_train_din[2]),
        .O(s_axis_tdata1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_axis_tdata1_carry_i_3
       (.I0(dac_ifft_din[1]),
        .I1(dac_train_din[1]),
        .O(s_axis_tdata1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_axis_tdata1_carry_i_4
       (.I0(dac_ifft_din[0]),
        .I1(dac_train_din[0]),
        .O(s_axis_tdata1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axis_tdata1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\s_axis_tdata1_inferred__0/i__carry_n_0 ,\s_axis_tdata1_inferred__0/i__carry_n_1 ,\s_axis_tdata1_inferred__0/i__carry_n_2 ,\s_axis_tdata1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(dac_ifft_din[11:8]),
        .O(s_axis_tdata12_out[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axis_tdata1_inferred__0/i__carry__0 
       (.CI(\s_axis_tdata1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_s_axis_tdata1_inferred__0/i__carry__0_CO_UNCONNECTED [3],\s_axis_tdata1_inferred__0/i__carry__0_n_1 ,\s_axis_tdata1_inferred__0/i__carry__0_n_2 ,\s_axis_tdata1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,dac_ifft_din[14:12]}),
        .O(s_axis_tdata12_out[7:4]),
        .S({u_fifo_n_27,u_fifo_n_28,u_fifo_n_29,u_fifo_n_30}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detection u_edge_detection
       (.DIADI(s_axis_tdata),
        .clk(clk),
        .dac_ifft_din(dac_ifft_din[7:0]),
        .dac_train_din(dac_train_din[7:0]),
        .dac_train_din_last(dac_train_din_last),
        .edge_din_r(edge_din_r),
        .s_axis_tdata1(s_axis_tdata1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_1 u_fifo
       (.DIADI(s_axis_tdata),
        .DOBDO(DOBDO),
        .S({u_fifo_n_23,u_fifo_n_24,u_fifo_n_25,u_fifo_n_26}),
        .clk(clk),
        .clk_dac(clk_dac),
        .dac_din_rdy(dac_din_rdy),
        .dac_dout(dac_dout),
        .dac_ifft_din(dac_ifft_din[15:4]),
        .\dac_ifft_din[15] ({u_fifo_n_27,u_fifo_n_28,u_fifo_n_29,u_fifo_n_30}),
        .dac_ifft_din_Index(dac_ifft_din_Index),
        .dac_ifft_din_last(dac_ifft_din_last),
        .dac_ifft_din_vld(dac_ifft_din_vld),
        .dac_ifft_dout_rdy(dac_ifft_dout_rdy),
        .dac_train_din(dac_train_din[15:4]),
        .dac_train_din_Index(dac_train_din_Index),
        .dac_train_din_last(dac_train_din_last),
        .dac_train_din_vld(dac_train_din_vld),
        .dac_train_dout_rdy(dac_train_dout_rdy),
        .edge_din_r(edge_din_r),
        .mcu_config_r(mcu_config_r),
        .popCC_addressGen_rValid_reg_0(popCC_addressGen_rValid_reg),
        .rst_n(rst_n),
        .rst_n_0(u_fifo_n_19),
        .s_axis_tdata12_out(s_axis_tdata12_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detection
   (edge_din_r,
    DIADI,
    dac_train_din_last,
    clk,
    s_axis_tdata1,
    dac_ifft_din,
    dac_train_din);
  output edge_din_r;
  output [7:0]DIADI;
  input dac_train_din_last;
  input clk;
  input [7:0]s_axis_tdata1;
  input [7:0]dac_ifft_din;
  input [7:0]dac_train_din;

  wire [7:0]DIADI;
  wire clk;
  wire [7:0]dac_ifft_din;
  wire [7:0]dac_train_din;
  wire dac_train_din_last;
  wire edge_din_r;
  wire [7:0]s_axis_tdata1;

  FDRE edge_din_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(dac_train_din_last),
        .Q(edge_din_r),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_11
       (.I0(s_axis_tdata1[7]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[7]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[7]),
        .O(DIADI[7]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_12
       (.I0(s_axis_tdata1[6]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[6]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[6]),
        .O(DIADI[6]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_13
       (.I0(s_axis_tdata1[5]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[5]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[5]),
        .O(DIADI[5]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_14
       (.I0(s_axis_tdata1[4]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[4]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[4]),
        .O(DIADI[4]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_15
       (.I0(s_axis_tdata1[3]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[3]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[3]),
        .O(DIADI[3]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_16
       (.I0(s_axis_tdata1[2]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[2]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[2]),
        .O(DIADI[2]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_17
       (.I0(s_axis_tdata1[1]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[1]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[1]),
        .O(DIADI[1]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_18
       (.I0(s_axis_tdata1[0]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[0]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[0]),
        .O(DIADI[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_1
   (dac_dout,
    DOBDO,
    rst_n_0,
    popCC_addressGen_rValid_reg_0,
    dac_train_dout_rdy,
    dac_ifft_dout_rdy,
    S,
    \dac_ifft_din[15] ,
    clk,
    rst_n,
    clk_dac,
    DIADI,
    s_axis_tdata12_out,
    edge_din_r,
    dac_ifft_din,
    dac_train_din_last,
    dac_train_din,
    mcu_config_r,
    dac_ifft_din_vld,
    dac_train_din_vld,
    dac_ifft_din_last,
    dac_ifft_din_Index,
    dac_train_din_Index,
    dac_din_rdy);
  output [15:0]dac_dout;
  output [2:0]DOBDO;
  output rst_n_0;
  output popCC_addressGen_rValid_reg_0;
  output dac_train_dout_rdy;
  output dac_ifft_dout_rdy;
  output [3:0]S;
  output [3:0]\dac_ifft_din[15] ;
  input clk;
  input rst_n;
  input clk_dac;
  input [7:0]DIADI;
  input [7:0]s_axis_tdata12_out;
  input edge_din_r;
  input [11:0]dac_ifft_din;
  input dac_train_din_last;
  input [11:0]dac_train_din;
  input mcu_config_r;
  input dac_ifft_din_vld;
  input dac_train_din_vld;
  input dac_ifft_din_last;
  input [1:0]dac_ifft_din_Index;
  input [1:0]dac_train_din_Index;
  input dac_din_rdy;

  wire [7:0]DIADI;
  wire [2:0]DOBDO;
  wire [3:0]S;
  wire _zz_io_popOccupancy_8;
  wire _zz_io_pushOccupancy_8;
  wire clk;
  wire clk_dac;
  wire dac_din_rdy;
  wire [15:0]dac_dout;
  wire [11:0]dac_ifft_din;
  wire [3:0]\dac_ifft_din[15] ;
  wire [1:0]dac_ifft_din_Index;
  wire dac_ifft_din_last;
  wire dac_ifft_din_vld;
  wire dac_ifft_dout_rdy;
  wire [11:0]dac_train_din;
  wire [1:0]dac_train_din_Index;
  wire dac_train_din_last;
  wire dac_train_din_vld;
  wire dac_train_dout_rdy;
  wire dac_train_dout_rdy_INST_0_i_1_n_0;
  wire dac_train_dout_rdy_INST_0_i_2_n_0;
  wire dac_train_dout_rdy_INST_0_i_3_n_0;
  wire edge_din_r;
  wire io_push_fire;
  wire mcu_config_r;
  wire [1:0]p_0_in;
  wire p_1_in;
  wire p_1_in15_in;
  wire p_2_in17_in;
  wire p_2_in3_in;
  wire p_3_in;
  wire p_3_in19_in;
  wire p_4_in21_in;
  wire p_4_in6_in;
  wire p_5_in23_in;
  wire p_5_in8_in;
  wire p_6_in;
  wire p_6_in25_in;
  wire p_7_in11_in;
  wire p_7_in27_in;
  wire p_8_in;
  wire p_8_in29_in;
  wire popCC_addressGen_rValid_i_1_n_0;
  wire popCC_addressGen_rValid_i_2_n_0;
  wire popCC_addressGen_rValid_reg_0;
  wire popCC_addressGen_valid;
  wire popCC_empty;
  wire popCC_empty_carry_i_1_n_0;
  wire popCC_empty_carry_i_2_n_0;
  wire popCC_empty_carry_i_3_n_0;
  wire popCC_empty_carry_i_4_n_0;
  wire popCC_empty_carry_i_5_n_0;
  wire popCC_empty_carry_i_6_n_0;
  wire popCC_empty_carry_i_7_n_0;
  wire popCC_empty_carry_n_1;
  wire popCC_empty_carry_n_2;
  wire popCC_empty_carry_n_3;
  wire [9:0]popCC_popPtr;
  wire [8:1]popCC_popPtrGray;
  (* RTL_KEEP = "true" *) (* syn_keep = "true" *) wire [9:0]popCC_popPtrPlus;
  wire popCC_popPtrPlus_inferred_i_11_n_0;
  wire [9:0]popCC_ptrToPush;
  wire popCC_readArbitation_fire;
  wire popCC_readPort_cmd_valid;
  wire popToPushGray_buffercc_n_1;
  wire pushCC_full00_in;
  wire pushCC_full0__14;
  wire [8:1]pushCC_pushPtrGray0;
  wire \pushCC_pushPtrGray[0]_i_1_n_0 ;
  wire \pushCC_pushPtrGray[5]_i_2_n_0 ;
  wire \pushCC_pushPtrGray[8]_i_3_n_0 ;
  wire \pushCC_pushPtrGray_reg_n_0_[0] ;
  wire \pushCC_pushPtrGray_reg_n_0_[1] ;
  wire \pushCC_pushPtrGray_reg_n_0_[2] ;
  wire \pushCC_pushPtrGray_reg_n_0_[3] ;
  wire \pushCC_pushPtrGray_reg_n_0_[4] ;
  wire \pushCC_pushPtrGray_reg_n_0_[5] ;
  wire \pushCC_pushPtrGray_reg_n_0_[6] ;
  wire \pushCC_pushPtrGray_reg_n_0_[7] ;
  wire [8:0]pushCC_pushPtrPlus;
  wire [9:9]pushCC_pushPtrPlus__0;
  wire [8:0]pushCC_pushPtr_reg;
  wire pushToPopGray_buffercc_n_1;
  wire rst_n;
  wire rst_n_0;
  wire [15:8]s_axis_tdata;
  wire [7:0]s_axis_tdata12_out;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut;
  wire [3:0]NLW_popCC_empty_carry_O_UNCONNECTED;
  wire [3:0]NLW_popCC_empty_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_popCC_empty_carry__0_O_UNCONNECTED;
  wire [15:3]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAA22AA22AAAAA)) 
    dac_ifft_dout_rdy_INST_0
       (.I0(dac_train_din_last),
        .I1(pushCC_full0__14),
        .I2(p_0_in[0]),
        .I3(popToPushGray_buffercc_n_1),
        .I4(p_0_in[1]),
        .I5(_zz_io_pushOccupancy_8),
        .O(dac_ifft_dout_rdy));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    dac_ifft_dout_rdy_INST_0_i_1
       (.I0(p_1_in15_in),
        .I1(\pushCC_pushPtrGray_reg_n_0_[7] ),
        .I2(p_2_in17_in),
        .I3(\pushCC_pushPtrGray_reg_n_0_[6] ),
        .I4(dac_train_dout_rdy_INST_0_i_2_n_0),
        .I5(dac_train_dout_rdy_INST_0_i_3_n_0),
        .O(pushCC_full0__14));
  LUT6 #(
    .INIT(64'h00000000BFFF0000)) 
    dac_train_dout_rdy_INST_0
       (.I0(dac_train_dout_rdy_INST_0_i_1_n_0),
        .I1(dac_train_dout_rdy_INST_0_i_2_n_0),
        .I2(dac_train_dout_rdy_INST_0_i_3_n_0),
        .I3(pushCC_full00_in),
        .I4(mcu_config_r),
        .I5(dac_train_din_last),
        .O(dac_train_dout_rdy));
  LUT4 #(
    .INIT(16'h6FF6)) 
    dac_train_dout_rdy_INST_0_i_1
       (.I0(\pushCC_pushPtrGray_reg_n_0_[6] ),
        .I1(p_2_in17_in),
        .I2(\pushCC_pushPtrGray_reg_n_0_[7] ),
        .I3(p_1_in15_in),
        .O(dac_train_dout_rdy_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    dac_train_dout_rdy_INST_0_i_2
       (.I0(\pushCC_pushPtrGray_reg_n_0_[3] ),
        .I1(p_5_in23_in),
        .I2(p_3_in19_in),
        .I3(\pushCC_pushPtrGray_reg_n_0_[5] ),
        .I4(p_4_in21_in),
        .I5(\pushCC_pushPtrGray_reg_n_0_[4] ),
        .O(dac_train_dout_rdy_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    dac_train_dout_rdy_INST_0_i_3
       (.I0(\pushCC_pushPtrGray_reg_n_0_[0] ),
        .I1(p_8_in29_in),
        .I2(p_6_in25_in),
        .I3(\pushCC_pushPtrGray_reg_n_0_[2] ),
        .I4(p_7_in27_in),
        .I5(\pushCC_pushPtrGray_reg_n_0_[1] ),
        .O(dac_train_dout_rdy_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    dac_train_dout_rdy_INST_0_i_4
       (.I0(p_0_in[0]),
        .I1(popToPushGray_buffercc_n_1),
        .I2(p_0_in[1]),
        .I3(_zz_io_pushOccupancy_8),
        .O(pushCC_full00_in));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(dac_ifft_din[11]),
        .I1(dac_train_din[11]),
        .O(\dac_ifft_din[15] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(dac_ifft_din[10]),
        .I1(dac_train_din[10]),
        .O(\dac_ifft_din[15] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(dac_ifft_din[9]),
        .I1(dac_train_din[9]),
        .O(\dac_ifft_din[15] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(dac_ifft_din[8]),
        .I1(dac_train_din[8]),
        .O(\dac_ifft_din[15] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    mcu_config_r_i_2
       (.I0(rst_n),
        .O(rst_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    popCC_addressGen_rValid_i_1
       (.I0(popCC_addressGen_valid),
        .I1(dac_din_rdy),
        .I2(popCC_addressGen_rValid_reg_0),
        .O(popCC_addressGen_rValid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    popCC_addressGen_rValid_i_2
       (.I0(toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut),
        .O(popCC_addressGen_rValid_i_2_n_0));
  FDCE popCC_addressGen_rValid_reg
       (.C(clk_dac),
        .CE(1'b1),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_addressGen_rValid_i_1_n_0),
        .Q(popCC_addressGen_rValid_reg_0));
  CARRY4 popCC_empty_carry
       (.CI(1'b0),
        .CO({popCC_empty,popCC_empty_carry_n_1,popCC_empty_carry_n_2,popCC_empty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_popCC_empty_carry_O_UNCONNECTED[3:0]),
        .S({popCC_empty_carry_i_1_n_0,popCC_empty_carry_i_2_n_0,popCC_empty_carry_i_3_n_0,popCC_empty_carry_i_4_n_0}));
  CARRY4 popCC_empty_carry__0
       (.CI(popCC_empty),
        .CO(NLW_popCC_empty_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_popCC_empty_carry__0_O_UNCONNECTED[3:1],popCC_addressGen_valid}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    popCC_empty_carry_i_1
       (.I0(_zz_io_popOccupancy_8),
        .I1(popCC_popPtr[9]),
        .O(popCC_empty_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    popCC_empty_carry_i_2
       (.I0(popCC_popPtr[6]),
        .I1(popCC_popPtr[7]),
        .I2(p_2_in3_in),
        .I3(popCC_empty_carry_i_5_n_0),
        .O(popCC_empty_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    popCC_empty_carry_i_3
       (.I0(popCC_popPtr[3]),
        .I1(popCC_popPtr[4]),
        .I2(p_5_in8_in),
        .I3(popCC_empty_carry_i_6_n_0),
        .O(popCC_empty_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6900)) 
    popCC_empty_carry_i_4
       (.I0(popCC_popPtr[0]),
        .I1(popCC_popPtr[1]),
        .I2(p_8_in),
        .I3(popCC_empty_carry_i_7_n_0),
        .O(popCC_empty_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h09606009)) 
    popCC_empty_carry_i_5
       (.I0(popCC_popPtr[7]),
        .I1(p_1_in),
        .I2(popCC_popPtr[8]),
        .I3(popCC_popPtr[9]),
        .I4(pushToPopGray_buffercc_n_1),
        .O(popCC_empty_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h09606009)) 
    popCC_empty_carry_i_6
       (.I0(popCC_popPtr[4]),
        .I1(p_4_in6_in),
        .I2(popCC_popPtr[5]),
        .I3(popCC_popPtr[6]),
        .I4(p_3_in),
        .O(popCC_empty_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h09606009)) 
    popCC_empty_carry_i_7
       (.I0(popCC_popPtr[1]),
        .I1(p_7_in11_in),
        .I2(popCC_popPtr[2]),
        .I3(popCC_popPtr[3]),
        .I4(p_6_in),
        .O(popCC_empty_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    popCC_popPtrPlus_inferred_i_1
       (.I0(popCC_popPtr[7]),
        .I1(popCC_popPtrPlus_inferred_i_11_n_0),
        .I2(popCC_popPtr[6]),
        .I3(popCC_popPtr[8]),
        .I4(popCC_popPtr[9]),
        .O(popCC_popPtrPlus[9]));
  LUT1 #(
    .INIT(2'h1)) 
    popCC_popPtrPlus_inferred_i_10
       (.I0(popCC_popPtr[0]),
        .O(popCC_popPtrPlus[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    popCC_popPtrPlus_inferred_i_11
       (.I0(popCC_popPtr[5]),
        .I1(popCC_popPtr[3]),
        .I2(popCC_popPtr[1]),
        .I3(popCC_popPtr[0]),
        .I4(popCC_popPtr[2]),
        .I5(popCC_popPtr[4]),
        .O(popCC_popPtrPlus_inferred_i_11_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    popCC_popPtrPlus_inferred_i_2
       (.I0(popCC_popPtr[6]),
        .I1(popCC_popPtrPlus_inferred_i_11_n_0),
        .I2(popCC_popPtr[7]),
        .I3(popCC_popPtr[8]),
        .O(popCC_popPtrPlus[8]));
  LUT3 #(
    .INIT(8'h78)) 
    popCC_popPtrPlus_inferred_i_3
       (.I0(popCC_popPtrPlus_inferred_i_11_n_0),
        .I1(popCC_popPtr[6]),
        .I2(popCC_popPtr[7]),
        .O(popCC_popPtrPlus[7]));
  LUT2 #(
    .INIT(4'h6)) 
    popCC_popPtrPlus_inferred_i_4
       (.I0(popCC_popPtrPlus_inferred_i_11_n_0),
        .I1(popCC_popPtr[6]),
        .O(popCC_popPtrPlus[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    popCC_popPtrPlus_inferred_i_5
       (.I0(popCC_popPtr[3]),
        .I1(popCC_popPtr[1]),
        .I2(popCC_popPtr[0]),
        .I3(popCC_popPtr[2]),
        .I4(popCC_popPtr[4]),
        .I5(popCC_popPtr[5]),
        .O(popCC_popPtrPlus[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    popCC_popPtrPlus_inferred_i_6
       (.I0(popCC_popPtr[2]),
        .I1(popCC_popPtr[0]),
        .I2(popCC_popPtr[1]),
        .I3(popCC_popPtr[3]),
        .I4(popCC_popPtr[4]),
        .O(popCC_popPtrPlus[4]));
  LUT4 #(
    .INIT(16'h7F80)) 
    popCC_popPtrPlus_inferred_i_7
       (.I0(popCC_popPtr[1]),
        .I1(popCC_popPtr[0]),
        .I2(popCC_popPtr[2]),
        .I3(popCC_popPtr[3]),
        .O(popCC_popPtrPlus[3]));
  LUT3 #(
    .INIT(8'h78)) 
    popCC_popPtrPlus_inferred_i_8
       (.I0(popCC_popPtr[0]),
        .I1(popCC_popPtr[1]),
        .I2(popCC_popPtr[2]),
        .O(popCC_popPtrPlus[2]));
  LUT2 #(
    .INIT(4'h6)) 
    popCC_popPtrPlus_inferred_i_9
       (.I0(popCC_popPtr[0]),
        .I1(popCC_popPtr[1]),
        .O(popCC_popPtrPlus[1]));
  FDCE \popCC_popPtr_reg[0] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[0]),
        .Q(popCC_popPtr[0]));
  FDCE \popCC_popPtr_reg[1] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[1]),
        .Q(popCC_popPtr[1]));
  FDCE \popCC_popPtr_reg[2] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[2]),
        .Q(popCC_popPtr[2]));
  FDCE \popCC_popPtr_reg[3] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[3]),
        .Q(popCC_popPtr[3]));
  FDCE \popCC_popPtr_reg[4] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[4]),
        .Q(popCC_popPtr[4]));
  FDCE \popCC_popPtr_reg[5] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[5]),
        .Q(popCC_popPtr[5]));
  FDCE \popCC_popPtr_reg[6] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[6]),
        .Q(popCC_popPtr[6]));
  FDCE \popCC_popPtr_reg[7] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[7]),
        .Q(popCC_popPtr[7]));
  FDCE \popCC_popPtr_reg[8] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[8]),
        .Q(popCC_popPtr[8]));
  FDCE \popCC_popPtr_reg[9] 
       (.C(clk_dac),
        .CE(popCC_readPort_cmd_valid),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[9]),
        .Q(popCC_popPtr[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \popCC_ptrToPush[1]_i_1 
       (.I0(popCC_popPtr[1]),
        .I1(popCC_popPtr[2]),
        .O(popCC_popPtrGray[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \popCC_ptrToPush[2]_i_1 
       (.I0(popCC_popPtr[2]),
        .I1(popCC_popPtr[3]),
        .O(popCC_popPtrGray[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \popCC_ptrToPush[3]_i_1 
       (.I0(popCC_popPtr[3]),
        .I1(popCC_popPtr[4]),
        .O(popCC_popPtrGray[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \popCC_ptrToPush[4]_i_1 
       (.I0(popCC_popPtr[4]),
        .I1(popCC_popPtr[5]),
        .O(popCC_popPtrGray[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \popCC_ptrToPush[5]_i_1 
       (.I0(popCC_popPtr[5]),
        .I1(popCC_popPtr[6]),
        .O(popCC_popPtrGray[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \popCC_ptrToPush[6]_i_1 
       (.I0(popCC_popPtr[6]),
        .I1(popCC_popPtr[7]),
        .O(popCC_popPtrGray[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \popCC_ptrToPush[7]_i_1 
       (.I0(popCC_popPtr[7]),
        .I1(popCC_popPtr[8]),
        .O(popCC_popPtrGray[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \popCC_ptrToPush[8]_i_1 
       (.I0(popCC_popPtr[8]),
        .I1(popCC_popPtr[9]),
        .O(popCC_popPtrGray[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \popCC_ptrToPush[9]_i_1 
       (.I0(popCC_addressGen_rValid_reg_0),
        .I1(dac_din_rdy),
        .O(popCC_readArbitation_fire));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[0] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrPlus[1]),
        .Q(popCC_ptrToPush[0]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[1] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrGray[1]),
        .Q(popCC_ptrToPush[1]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[2] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrGray[2]),
        .Q(popCC_ptrToPush[2]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[3] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrGray[3]),
        .Q(popCC_ptrToPush[3]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[4] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrGray[4]),
        .Q(popCC_ptrToPush[4]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[5] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrGray[5]),
        .Q(popCC_ptrToPush[5]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[6] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrGray[6]),
        .Q(popCC_ptrToPush[6]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[7] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrGray[7]),
        .Q(popCC_ptrToPush[7]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[8] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtrGray[8]),
        .Q(popCC_ptrToPush[8]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \popCC_ptrToPush_reg[9] 
       (.C(clk_dac),
        .CE(popCC_readArbitation_fire),
        .CLR(popCC_addressGen_rValid_i_2_n_0),
        .D(popCC_popPtr[9]),
        .Q(popCC_ptrToPush[9]));
  (* KEEP_HIERARCHY = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BufferCC_dac popToPushGray_buffercc
       (.clk1(clk),
        .io_dataIn(popCC_ptrToPush),
        .io_dataOut({_zz_io_pushOccupancy_8,popToPushGray_buffercc_n_1,p_1_in15_in,p_2_in17_in,p_3_in19_in,p_4_in21_in,p_5_in23_in,p_6_in25_in,p_7_in27_in,p_8_in29_in}),
        .rstN1(rst_n));
  LUT1 #(
    .INIT(2'h1)) 
    \pushCC_pushPtrGray[0]_i_1 
       (.I0(pushCC_pushPtr_reg[1]),
        .O(\pushCC_pushPtrGray[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \pushCC_pushPtrGray[1]_i_1 
       (.I0(pushCC_pushPtr_reg[2]),
        .I1(pushCC_pushPtr_reg[1]),
        .I2(pushCC_pushPtr_reg[0]),
        .O(pushCC_pushPtrGray0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5666)) 
    \pushCC_pushPtrGray[2]_i_1 
       (.I0(pushCC_pushPtr_reg[3]),
        .I1(pushCC_pushPtr_reg[2]),
        .I2(pushCC_pushPtr_reg[0]),
        .I3(pushCC_pushPtr_reg[1]),
        .O(pushCC_pushPtrGray0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h56666666)) 
    \pushCC_pushPtrGray[3]_i_1 
       (.I0(pushCC_pushPtr_reg[4]),
        .I1(pushCC_pushPtr_reg[3]),
        .I2(pushCC_pushPtr_reg[1]),
        .I3(pushCC_pushPtr_reg[0]),
        .I4(pushCC_pushPtr_reg[2]),
        .O(pushCC_pushPtrGray0[3]));
  LUT6 #(
    .INIT(64'h5666666666666666)) 
    \pushCC_pushPtrGray[4]_i_1 
       (.I0(pushCC_pushPtr_reg[5]),
        .I1(pushCC_pushPtr_reg[4]),
        .I2(pushCC_pushPtr_reg[2]),
        .I3(pushCC_pushPtr_reg[0]),
        .I4(pushCC_pushPtr_reg[1]),
        .I5(pushCC_pushPtr_reg[3]),
        .O(pushCC_pushPtrGray0[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \pushCC_pushPtrGray[5]_i_1 
       (.I0(pushCC_pushPtr_reg[6]),
        .I1(pushCC_pushPtr_reg[5]),
        .I2(\pushCC_pushPtrGray[5]_i_2_n_0 ),
        .O(pushCC_pushPtrGray0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \pushCC_pushPtrGray[5]_i_2 
       (.I0(pushCC_pushPtr_reg[4]),
        .I1(pushCC_pushPtr_reg[2]),
        .I2(pushCC_pushPtr_reg[0]),
        .I3(pushCC_pushPtr_reg[1]),
        .I4(pushCC_pushPtr_reg[3]),
        .O(\pushCC_pushPtrGray[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \pushCC_pushPtrGray[6]_i_1 
       (.I0(pushCC_pushPtr_reg[7]),
        .I1(pushCC_pushPtr_reg[6]),
        .I2(\pushCC_pushPtrGray[8]_i_3_n_0 ),
        .O(pushCC_pushPtrGray0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5666)) 
    \pushCC_pushPtrGray[7]_i_1 
       (.I0(pushCC_pushPtr_reg[8]),
        .I1(pushCC_pushPtr_reg[7]),
        .I2(\pushCC_pushPtrGray[8]_i_3_n_0 ),
        .I3(pushCC_pushPtr_reg[6]),
        .O(pushCC_pushPtrGray0[7]));
  LUT6 #(
    .INIT(64'hAAAAA22AA22AAAAA)) 
    \pushCC_pushPtrGray[8]_i_1 
       (.I0(s_axis_tvalid),
        .I1(pushCC_full0__14),
        .I2(p_0_in[0]),
        .I3(popToPushGray_buffercc_n_1),
        .I4(p_0_in[1]),
        .I5(_zz_io_pushOccupancy_8),
        .O(io_push_fire));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h56666666)) 
    \pushCC_pushPtrGray[8]_i_2 
       (.I0(p_0_in[1]),
        .I1(pushCC_pushPtr_reg[8]),
        .I2(pushCC_pushPtr_reg[6]),
        .I3(\pushCC_pushPtrGray[8]_i_3_n_0 ),
        .I4(pushCC_pushPtr_reg[7]),
        .O(pushCC_pushPtrGray0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pushCC_pushPtrGray[8]_i_3 
       (.I0(pushCC_pushPtr_reg[5]),
        .I1(pushCC_pushPtr_reg[3]),
        .I2(pushCC_pushPtr_reg[1]),
        .I3(pushCC_pushPtr_reg[0]),
        .I4(pushCC_pushPtr_reg[2]),
        .I5(pushCC_pushPtr_reg[4]),
        .O(\pushCC_pushPtrGray[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pushCC_pushPtrGray[9]_i_1 
       (.I0(pushCC_pushPtr_reg[7]),
        .I1(\pushCC_pushPtrGray[8]_i_3_n_0 ),
        .I2(pushCC_pushPtr_reg[6]),
        .I3(pushCC_pushPtr_reg[8]),
        .I4(p_0_in[1]),
        .O(pushCC_pushPtrPlus__0));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[0] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(\pushCC_pushPtrGray[0]_i_1_n_0 ),
        .Q(\pushCC_pushPtrGray_reg_n_0_[0] ));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[1] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrGray0[1]),
        .Q(\pushCC_pushPtrGray_reg_n_0_[1] ));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[2] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrGray0[2]),
        .Q(\pushCC_pushPtrGray_reg_n_0_[2] ));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[3] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrGray0[3]),
        .Q(\pushCC_pushPtrGray_reg_n_0_[3] ));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[4] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrGray0[4]),
        .Q(\pushCC_pushPtrGray_reg_n_0_[4] ));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[5] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrGray0[5]),
        .Q(\pushCC_pushPtrGray_reg_n_0_[5] ));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[6] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrGray0[6]),
        .Q(\pushCC_pushPtrGray_reg_n_0_[6] ));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[7] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrGray0[7]),
        .Q(\pushCC_pushPtrGray_reg_n_0_[7] ));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[8] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrGray0[8]),
        .Q(p_0_in[0]));
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) 
  FDCE \pushCC_pushPtrGray_reg[9] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus__0),
        .Q(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \pushCC_pushPtr[0]_i_1 
       (.I0(pushCC_pushPtr_reg[0]),
        .O(pushCC_pushPtrPlus[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushCC_pushPtr[1]_i_1 
       (.I0(pushCC_pushPtr_reg[0]),
        .I1(pushCC_pushPtr_reg[1]),
        .O(pushCC_pushPtrPlus[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pushCC_pushPtr[2]_i_1 
       (.I0(pushCC_pushPtr_reg[0]),
        .I1(pushCC_pushPtr_reg[1]),
        .I2(pushCC_pushPtr_reg[2]),
        .O(pushCC_pushPtrPlus[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pushCC_pushPtr[3]_i_1 
       (.I0(pushCC_pushPtr_reg[1]),
        .I1(pushCC_pushPtr_reg[0]),
        .I2(pushCC_pushPtr_reg[2]),
        .I3(pushCC_pushPtr_reg[3]),
        .O(pushCC_pushPtrPlus[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pushCC_pushPtr[4]_i_1 
       (.I0(pushCC_pushPtr_reg[2]),
        .I1(pushCC_pushPtr_reg[0]),
        .I2(pushCC_pushPtr_reg[1]),
        .I3(pushCC_pushPtr_reg[3]),
        .I4(pushCC_pushPtr_reg[4]),
        .O(pushCC_pushPtrPlus[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pushCC_pushPtr[5]_i_1 
       (.I0(pushCC_pushPtr_reg[3]),
        .I1(pushCC_pushPtr_reg[1]),
        .I2(pushCC_pushPtr_reg[0]),
        .I3(pushCC_pushPtr_reg[2]),
        .I4(pushCC_pushPtr_reg[4]),
        .I5(pushCC_pushPtr_reg[5]),
        .O(pushCC_pushPtrPlus[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushCC_pushPtr[6]_i_1 
       (.I0(\pushCC_pushPtrGray[8]_i_3_n_0 ),
        .I1(pushCC_pushPtr_reg[6]),
        .O(pushCC_pushPtrPlus[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pushCC_pushPtr[7]_i_1 
       (.I0(\pushCC_pushPtrGray[8]_i_3_n_0 ),
        .I1(pushCC_pushPtr_reg[6]),
        .I2(pushCC_pushPtr_reg[7]),
        .O(pushCC_pushPtrPlus[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pushCC_pushPtr[8]_i_1 
       (.I0(pushCC_pushPtr_reg[6]),
        .I1(\pushCC_pushPtrGray[8]_i_3_n_0 ),
        .I2(pushCC_pushPtr_reg[7]),
        .I3(pushCC_pushPtr_reg[8]),
        .O(pushCC_pushPtrPlus[8]));
  FDCE \pushCC_pushPtr_reg[0] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[0]),
        .Q(pushCC_pushPtr_reg[0]));
  FDCE \pushCC_pushPtr_reg[1] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[1]),
        .Q(pushCC_pushPtr_reg[1]));
  FDCE \pushCC_pushPtr_reg[2] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[2]),
        .Q(pushCC_pushPtr_reg[2]));
  FDCE \pushCC_pushPtr_reg[3] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[3]),
        .Q(pushCC_pushPtr_reg[3]));
  FDCE \pushCC_pushPtr_reg[4] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[4]),
        .Q(pushCC_pushPtr_reg[4]));
  FDCE \pushCC_pushPtr_reg[5] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[5]),
        .Q(pushCC_pushPtr_reg[5]));
  FDCE \pushCC_pushPtr_reg[6] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[6]),
        .Q(pushCC_pushPtr_reg[6]));
  FDCE \pushCC_pushPtr_reg[7] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[7]),
        .Q(pushCC_pushPtr_reg[7]));
  FDCE \pushCC_pushPtr_reg[8] 
       (.C(clk),
        .CE(io_push_fire),
        .CLR(rst_n_0),
        .D(pushCC_pushPtrPlus[8]),
        .Q(pushCC_pushPtr_reg[8]));
  (* KEEP_HIERARCHY = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BufferCC_dac2 pushToPopGray_buffercc
       (.clk2(clk_dac),
        .io_dataIn({p_0_in,\pushCC_pushPtrGray_reg_n_0_[7] ,\pushCC_pushPtrGray_reg_n_0_[6] ,\pushCC_pushPtrGray_reg_n_0_[5] ,\pushCC_pushPtrGray_reg_n_0_[4] ,\pushCC_pushPtrGray_reg_n_0_[3] ,\pushCC_pushPtrGray_reg_n_0_[2] ,\pushCC_pushPtrGray_reg_n_0_[1] ,\pushCC_pushPtrGray_reg_n_0_[0] }),
        .io_dataOut({_zz_io_popOccupancy_8,pushToPopGray_buffercc_n_1,p_1_in,p_2_in3_in,p_3_in,p_4_in6_in,p_5_in8_in,p_6_in,p_7_in11_in,p_8_in}),
        .toplevel_rstN1_synchronized(toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d19" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d19" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "9728" *) 
  (* RTL_RAM_NAME = "inst/u_fifo/ram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "18" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    ram_reg
       (.ADDRARDADDR({popCC_popPtr[8:0],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({pushCC_pushPtr_reg,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_dac),
        .CLKBWRCLK(clk),
        .DIADI({s_axis_tdata,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s_axis_tuser,s_axis_tlast}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(dac_dout),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:3],DOBDO}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(popCC_readPort_cmd_valid),
        .ENBWREN(s_axis_tvalid),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({s_axis_tready,s_axis_tready,s_axis_tready,s_axis_tready}));
  LUT3 #(
    .INIT(8'hA2)) 
    ram_reg_i_1
       (.I0(popCC_addressGen_valid),
        .I1(popCC_addressGen_rValid_reg_0),
        .I2(dac_din_rdy),
        .O(popCC_readPort_cmd_valid));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_10
       (.I0(s_axis_tdata12_out[0]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[4]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[4]),
        .O(s_axis_tdata[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_19
       (.I0(dac_ifft_din_Index[1]),
        .I1(dac_train_din_last),
        .I2(dac_train_din_Index[1]),
        .O(s_axis_tuser[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2
       (.I0(dac_ifft_din_vld),
        .I1(dac_train_din_last),
        .I2(dac_train_din_vld),
        .O(s_axis_tvalid));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_20
       (.I0(dac_ifft_din_Index[0]),
        .I1(dac_train_din_last),
        .I2(dac_train_din_Index[0]),
        .O(s_axis_tuser[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_21
       (.I0(dac_train_din_last),
        .I1(dac_ifft_din_last),
        .O(s_axis_tlast));
  LUT5 #(
    .INIT(32'hF99FFFFF)) 
    ram_reg_i_22
       (.I0(_zz_io_pushOccupancy_8),
        .I1(p_0_in[1]),
        .I2(popToPushGray_buffercc_n_1),
        .I3(p_0_in[0]),
        .I4(pushCC_full0__14),
        .O(s_axis_tready));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_3
       (.I0(s_axis_tdata12_out[7]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[11]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[11]),
        .O(s_axis_tdata[15]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_4
       (.I0(s_axis_tdata12_out[6]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[10]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[10]),
        .O(s_axis_tdata[14]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_5
       (.I0(s_axis_tdata12_out[5]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[9]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[9]),
        .O(s_axis_tdata[13]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_6
       (.I0(s_axis_tdata12_out[4]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[8]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[8]),
        .O(s_axis_tdata[12]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_7
       (.I0(s_axis_tdata12_out[3]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[7]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[7]),
        .O(s_axis_tdata[11]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_8
       (.I0(s_axis_tdata12_out[2]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[6]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[6]),
        .O(s_axis_tdata[10]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    ram_reg_i_9
       (.I0(s_axis_tdata12_out[1]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[5]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[5]),
        .O(s_axis_tdata[9]));
  LUT2 #(
    .INIT(4'h6)) 
    s_axis_tdata1_carry__0_i_1
       (.I0(dac_ifft_din[3]),
        .I1(dac_train_din[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    s_axis_tdata1_carry__0_i_2
       (.I0(dac_ifft_din[2]),
        .I1(dac_train_din[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    s_axis_tdata1_carry__0_i_3
       (.I0(dac_ifft_din[1]),
        .I1(dac_train_din[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    s_axis_tdata1_carry__0_i_4
       (.I0(dac_ifft_din[0]),
        .I1(dac_train_din[0]),
        .O(S[0]));
  (* KEEP_HIERARCHY = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BufferCC_dac1 toplevel_rstN1_asyncAssertSyncDeassert_buffercc
       (.clk2(clk_dac),
        .io_dataIn(1'b1),
        .io_dataOut(toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut),
        .rstN1(rst_n));
endmodule

(* CHECK_LICENSE_TYPE = "ofdm_tx_dac_0_0,dac,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dac,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    clk_dac,
    rst_n,
    dac_ifft_din,
    dac_ifft_din_vld,
    dac_ifft_din_last,
    dac_ifft_din_Index,
    dac_ifft_dout_rdy,
    dac_train_din,
    dac_train_din_vld,
    dac_train_din_last,
    dac_train_din_Index,
    dac_train_dout_rdy,
    dac_din_rdy,
    dac_dout,
    dac_dout_vld,
    dac_dout_last,
    dac_dout_Index,
    mcu_config,
    mcu_config_r);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_ifft_dac:s_axis_train_dac:m_axis_dac, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  input clk_dac;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TDATA" *) input [15:0]dac_ifft_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TVALID" *) input dac_ifft_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TLAST" *) input dac_ifft_din_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TUSER" *) input [7:0]dac_ifft_din_Index;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ifft_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output dac_ifft_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TDATA" *) input [15:0]dac_train_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TVALID" *) input dac_train_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TLAST" *) input dac_train_din_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TUSER" *) input [8:0]dac_train_din_Index;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_train_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 9, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output dac_train_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TREADY" *) input dac_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TDATA" *) output [15:0]dac_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TVALID" *) output dac_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TLAST" *) output dac_dout_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 9, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [8:0]dac_dout_Index;
  input mcu_config;
  output mcu_config_r;

  wire \<const0> ;
  wire clk;
  wire clk_dac;
  wire dac_din_rdy;
  wire [15:0]dac_dout;
  wire [1:0]\^dac_dout_Index ;
  wire dac_dout_last;
  wire dac_dout_vld;
  wire [15:0]dac_ifft_din;
  wire [7:0]dac_ifft_din_Index;
  wire dac_ifft_din_last;
  wire dac_ifft_din_vld;
  wire dac_ifft_dout_rdy;
  wire [15:0]dac_train_din;
  wire [8:0]dac_train_din_Index;
  wire dac_train_din_last;
  wire dac_train_din_vld;
  wire dac_train_dout_rdy;
  wire mcu_config;
  wire mcu_config_r;
  wire rst_n;

  assign dac_dout_Index[8] = \<const0> ;
  assign dac_dout_Index[7] = \<const0> ;
  assign dac_dout_Index[6] = \<const0> ;
  assign dac_dout_Index[5] = \<const0> ;
  assign dac_dout_Index[4] = \<const0> ;
  assign dac_dout_Index[3] = \<const0> ;
  assign dac_dout_Index[2] = \<const0> ;
  assign dac_dout_Index[1:0] = \^dac_dout_Index [1:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac inst
       (.DOBDO({\^dac_dout_Index ,dac_dout_last}),
        .clk(clk),
        .clk_dac(clk_dac),
        .dac_din_rdy(dac_din_rdy),
        .dac_dout(dac_dout),
        .dac_ifft_din(dac_ifft_din),
        .dac_ifft_din_Index(dac_ifft_din_Index[1:0]),
        .dac_ifft_din_last(dac_ifft_din_last),
        .dac_ifft_din_vld(dac_ifft_din_vld),
        .dac_ifft_dout_rdy(dac_ifft_dout_rdy),
        .dac_train_din(dac_train_din),
        .dac_train_din_Index(dac_train_din_Index[1:0]),
        .dac_train_din_last(dac_train_din_last),
        .dac_train_din_vld(dac_train_din_vld),
        .dac_train_dout_rdy(dac_train_dout_rdy),
        .mcu_config(mcu_config),
        .mcu_config_r(mcu_config_r),
        .popCC_addressGen_rValid_reg(dac_dout_vld),
        .rst_n(rst_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
