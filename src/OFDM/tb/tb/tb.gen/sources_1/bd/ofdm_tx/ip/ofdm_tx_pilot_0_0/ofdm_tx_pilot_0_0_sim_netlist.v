// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:23 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_pilot_0_0/ofdm_tx_pilot_0_0_sim_netlist.v
// Design      : ofdm_tx_pilot_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ofdm_tx_pilot_0_0,pilot,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pilot,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ofdm_tx_pilot_0_0
   (clk,
    rst_n,
    pilot_din_Index,
    pilot_din,
    pilot_din_vld,
    pilot_din_rdy,
    pilot_dout,
    pilot_dout_vld,
    pilot_dout_rdy,
    pilot_dout_last);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_pilot:m_axis_pilot, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TUSER" *) input [5:0]pilot_din_Index;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TDATA" *) input [15:0]pilot_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TVALID" *) input pilot_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TREADY" *) input pilot_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TDATA" *) output [15:0]pilot_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TVALID" *) output pilot_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_pilot, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 6, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output pilot_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_pilot, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output pilot_dout_last;

  wire clk;
  wire [15:0]pilot_din;
  wire [5:0]pilot_din_Index;
  wire pilot_din_rdy;
  wire pilot_din_vld;
  wire [15:0]pilot_dout;
  wire pilot_dout_last;
  wire pilot_dout_rdy;
  wire pilot_dout_vld;
  wire rst_n;

  ofdm_tx_pilot_0_0_pilot inst
       (.clk(clk),
        .pilot_din(pilot_din),
        .pilot_din_Index(pilot_din_Index),
        .pilot_din_rdy(pilot_din_rdy),
        .pilot_din_vld(pilot_din_vld),
        .pilot_dout(pilot_dout),
        .pilot_dout_last(pilot_dout_last),
        .pilot_dout_rdy(pilot_dout_rdy),
        .pilot_dout_vld(pilot_dout_vld),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module ofdm_tx_pilot_0_0_counter
   (E,
    D,
    rst_n_0,
    \cnt_reg[0]_0 ,
    Q,
    rst_n,
    clk);
  output [0:0]E;
  output [6:0]D;
  output rst_n_0;
  input [0:0]\cnt_reg[0]_0 ;
  input [6:0]Q;
  input rst_n;
  input clk;

  wire [6:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[5]_i_1__0_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[6]_i_2_n_0 ;
  wire [6:0]cnt_reg;
  wire [0:0]\cnt_reg[0]_0 ;
  wire rst_n;
  wire rst_n_0;
  wire \shift_reg[6]_i_3_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \cnt[0]_i_1 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55558AAA)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[1]),
        .I1(\shift_reg[6]_i_3_n_0 ),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[0]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h66666666A0AAAAAA)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(\shift_reg[6]_i_3_n_0 ),
        .I3(cnt_reg[5]),
        .I4(cnt_reg[6]),
        .I5(cnt_reg[0]),
        .O(\cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F7F80807F7F8080)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[4]),
        .I4(cnt_reg[3]),
        .I5(\cnt[4]_i_2_n_0 ),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F80FF007F80FF00)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[4]),
        .I4(cnt_reg[3]),
        .I5(\cnt[4]_i_2_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt[4]_i_2 
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[0]),
        .O(\cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5A5A4A5A)) 
    \cnt[5]_i_1__0 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\shift_reg[6]_i_3_n_0 ),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[0]),
        .O(\cnt[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5FA04FA0)) 
    \cnt[6]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\shift_reg[6]_i_3_n_0 ),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[6]),
        .I4(cnt_reg[0]),
        .O(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[6]_i_2 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .O(\cnt[6]_i_2_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt_reg[0]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt_reg[0]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt_reg[0]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt_reg[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt_reg[0]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt_reg[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt_reg[0]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt_reg[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(\cnt_reg[0]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[5]_i_1__0_n_0 ),
        .Q(cnt_reg[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(\cnt_reg[0]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt_reg[6]));
  LUT1 #(
    .INIT(2'h1)) 
    pilot_dout_vld_i_1
       (.I0(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0040FFFFFFFF0040)) 
    \shift_reg[0]_i_1 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .I4(Q[3]),
        .I5(Q[6]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \shift_reg[1]_i_1 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .I4(Q[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \shift_reg[2]_i_1 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .I4(Q[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \shift_reg[3]_i_1 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .I4(Q[2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \shift_reg[4]_i_1 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .I4(Q[3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \shift_reg[5]_i_1 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .I4(Q[4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \shift_reg[6]_i_1 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .I4(\cnt_reg[0]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \shift_reg[6]_i_2 
       (.I0(\shift_reg[6]_i_3_n_0 ),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[0]),
        .I4(Q[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \shift_reg[6]_i_3 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[3]),
        .O(\shift_reg[6]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module ofdm_tx_pilot_0_0_counter__parameterized0
   (buffer_flag_reg,
    r_cnt_last,
    bufferB_full_reg,
    E,
    Q,
    buffer_flag,
    bufferA_full,
    pilot_dout_vld,
    pilot_din_rdy,
    bufferB_full,
    pilot_din_vld,
    pilot_din_Index,
    clk,
    \cnt_reg[0]_0 );
  output buffer_flag_reg;
  output r_cnt_last;
  output bufferB_full_reg;
  output [0:0]E;
  output [5:0]Q;
  input buffer_flag;
  input bufferA_full;
  input pilot_dout_vld;
  input pilot_din_rdy;
  input bufferB_full;
  input pilot_din_vld;
  input [5:0]pilot_din_Index;
  input clk;
  input \cnt_reg[0]_0 ;

  wire [0:0]E;
  wire [5:0]Q;
  wire bufferA_full;
  wire bufferA_full1;
  wire bufferB_full;
  wire bufferB_full_i_2_n_0;
  wire bufferB_full_reg;
  wire buffer_flag;
  wire buffer_flag_reg;
  wire clk;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire [5:0]pilot_din_Index;
  wire pilot_din_rdy;
  wire pilot_din_vld;
  wire pilot_dout_vld;
  wire r_cnt_last;

  LUT6 #(
    .INIT(64'h44F4F4F4F4F4F4F4)) 
    bufferA_full_i_1
       (.I0(buffer_flag),
        .I1(bufferA_full1),
        .I2(bufferA_full),
        .I3(r_cnt_last),
        .I4(pilot_dout_vld),
        .I5(pilot_din_rdy),
        .O(buffer_flag_reg));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    bufferA_full_i_2
       (.I0(pilot_din_Index[4]),
        .I1(pilot_din_Index[3]),
        .I2(pilot_din_Index[5]),
        .I3(pilot_din_Index[2]),
        .I4(pilot_din_Index[0]),
        .I5(pilot_din_Index[1]),
        .O(bufferA_full1));
  LUT6 #(
    .INIT(64'h88F8F8F8F8F8F8F8)) 
    bufferB_full_i_1
       (.I0(bufferB_full_i_2_n_0),
        .I1(bufferA_full1),
        .I2(bufferB_full),
        .I3(r_cnt_last),
        .I4(pilot_dout_vld),
        .I5(pilot_din_rdy),
        .O(bufferB_full_reg));
  LUT4 #(
    .INIT(16'h0888)) 
    bufferB_full_i_2
       (.I0(buffer_flag),
        .I1(pilot_din_vld),
        .I2(bufferA_full),
        .I3(bufferB_full),
        .O(bufferB_full_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(Q[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \cnt[4]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFF0000)) 
    \cnt[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\cnt[5]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[4]_i_1__0_n_0 ),
        .Q(Q[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(Q[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    pilot_dout_last_i_1
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(r_cnt_last));
  LUT2 #(
    .INIT(4'hE)) 
    u_pilot_ram_i_1
       (.I0(bufferA_full),
        .I1(bufferB_full),
        .O(E));
endmodule

(* ORIG_REF_NAME = "pilot" *) 
module ofdm_tx_pilot_0_0_pilot
   (clk,
    rst_n,
    pilot_din_Index,
    pilot_din,
    pilot_din_vld,
    pilot_din_rdy,
    pilot_dout,
    pilot_dout_vld,
    pilot_dout_rdy,
    pilot_dout_last);
  input clk;
  input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TUSER" *) input [5:0]pilot_din_Index;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TDATA" *) input [15:0]pilot_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TVALID" *) input pilot_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TREADY" *) input pilot_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TDATA" *) output [15:0]pilot_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TVALID" *) output pilot_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TREADY" *) output pilot_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TLAST" *) output pilot_dout_last;

  wire En_cnt;
  wire En_cnt_reg_n_0;
  wire [5:1]addra;
  wire \addra[0]_i_1_n_0 ;
  wire \addra[0]_i_2_n_0 ;
  wire \addra[0]_i_3_n_0 ;
  wire \addra[1]_i_1_n_0 ;
  wire \addra[1]_i_2_n_0 ;
  wire \addra[2]_i_1_n_0 ;
  wire \addra[2]_i_2_n_0 ;
  wire \addra[3]_i_1_n_0 ;
  wire \addra[3]_i_2_n_0 ;
  wire \addra[4]_i_1_n_0 ;
  wire \addra[4]_i_2_n_0 ;
  wire \addra[5]_i_1_n_0 ;
  wire \addra[5]_i_2_n_0 ;
  wire \addra[6]_i_1_n_0 ;
  wire \addra_reg_n_0_[0] ;
  wire \addra_reg_n_0_[1] ;
  wire \addra_reg_n_0_[2] ;
  wire \addra_reg_n_0_[3] ;
  wire \addra_reg_n_0_[4] ;
  wire \addra_reg_n_0_[5] ;
  wire \addra_reg_n_0_[6] ;
  wire bufferA_full;
  wire bufferB_full;
  wire buffer_flag;
  wire buffer_flag0;
  wire buffer_flag_i_1_n_0;
  wire clk;
  wire \dina[0]_i_1_n_0 ;
  wire \dina[10]_i_1_n_0 ;
  wire \dina[11]_i_1_n_0 ;
  wire \dina[12]_i_1_n_0 ;
  wire \dina[13]_i_1_n_0 ;
  wire \dina[14]_i_1_n_0 ;
  wire \dina[15]_i_1_n_0 ;
  wire \dina[1]_i_1_n_0 ;
  wire \dina[2]_i_1_n_0 ;
  wire \dina[3]_i_1_n_0 ;
  wire \dina[4]_i_1_n_0 ;
  wire \dina[5]_i_1_n_0 ;
  wire \dina[6]_i_1_n_0 ;
  wire \dina[7]_i_1_n_0 ;
  wire \dina[7]_i_2_n_0 ;
  wire \dina[8]_i_1_n_0 ;
  wire \dina[9]_i_1_n_0 ;
  wire \dina_reg_n_0_[0] ;
  wire \dina_reg_n_0_[10] ;
  wire \dina_reg_n_0_[11] ;
  wire \dina_reg_n_0_[12] ;
  wire \dina_reg_n_0_[13] ;
  wire \dina_reg_n_0_[14] ;
  wire \dina_reg_n_0_[15] ;
  wire \dina_reg_n_0_[1] ;
  wire \dina_reg_n_0_[2] ;
  wire \dina_reg_n_0_[3] ;
  wire \dina_reg_n_0_[4] ;
  wire \dina_reg_n_0_[5] ;
  wire \dina_reg_n_0_[6] ;
  wire \dina_reg_n_0_[7] ;
  wire \dina_reg_n_0_[8] ;
  wire \dina_reg_n_0_[9] ;
  wire enb;
  wire insert_i_1_n_0;
  wire insert_i_2_n_0;
  wire insert_i_3_n_0;
  wire insert_reg_n_0;
  wire p_0_in;
  wire p_1_in;
  wire [15:0]pilot_din;
  wire [5:0]pilot_din_Index;
  wire pilot_din_rdy;
  wire pilot_din_vld;
  wire [15:0]pilot_dout;
  wire pilot_dout_last;
  wire pilot_dout_rdy;
  wire pilot_dout_vld;
  wire [5:0]r_cnt;
  wire r_cnt_last;
  wire rst_n;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire u_counter_n_0;
  wire u_counter_n_1;
  wire u_counter_n_2;
  wire u_counter_n_3;
  wire u_counter_n_4;
  wire u_counter_n_5;
  wire u_counter_n_6;
  wire u_counter_n_7;
  wire u_counter_n_8;
  wire u_counter_r_n_0;
  wire u_counter_r_n_2;
  wire wea_i_1_n_0;
  wire wea_reg_n_0;

  LUT6 #(
    .INIT(64'h2000000000000000)) 
    En_cnt_i_1
       (.I0(pilot_din_Index[5]),
        .I1(pilot_din_Index[4]),
        .I2(pilot_din_Index[1]),
        .I3(pilot_din_Index[0]),
        .I4(pilot_din_Index[3]),
        .I5(pilot_din_Index[2]),
        .O(En_cnt));
  FDCE En_cnt_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(En_cnt),
        .Q(En_cnt_reg_n_0));
  LUT6 #(
    .INIT(64'hEAFF2A002A002A00)) 
    \addra[0]_i_1 
       (.I0(\addra[0]_i_2_n_0 ),
        .I1(bufferB_full),
        .I2(bufferA_full),
        .I3(pilot_din_vld),
        .I4(insert_reg_n_0),
        .I5(\addra[0]_i_3_n_0 ),
        .O(\addra[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1115A23144005CCE)) 
    \addra[0]_i_2 
       (.I0(pilot_din_Index[4]),
        .I1(pilot_din_Index[3]),
        .I2(pilot_din_Index[1]),
        .I3(pilot_din_Index[2]),
        .I4(pilot_din_Index[5]),
        .I5(pilot_din_Index[0]),
        .O(\addra[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000002081)) 
    \addra[0]_i_3 
       (.I0(\addra_reg_n_0_[0] ),
        .I1(\addra_reg_n_0_[4] ),
        .I2(\addra_reg_n_0_[2] ),
        .I3(\addra_reg_n_0_[1] ),
        .I4(\addra_reg_n_0_[5] ),
        .I5(\addra_reg_n_0_[3] ),
        .O(\addra[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFF2A002A002A00)) 
    \addra[1]_i_1 
       (.I0(\addra[1]_i_2_n_0 ),
        .I1(bufferB_full),
        .I2(bufferA_full),
        .I3(pilot_din_vld),
        .I4(insert_reg_n_0),
        .I5(addra[1]),
        .O(\addra[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h41457869050525A7)) 
    \addra[1]_i_2 
       (.I0(pilot_din_Index[4]),
        .I1(pilot_din_Index[3]),
        .I2(pilot_din_Index[1]),
        .I3(pilot_din_Index[2]),
        .I4(pilot_din_Index[5]),
        .I5(pilot_din_Index[0]),
        .O(\addra[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000001)) 
    \addra[1]_i_3 
       (.I0(\addra_reg_n_0_[5] ),
        .I1(\addra_reg_n_0_[1] ),
        .I2(\addra_reg_n_0_[3] ),
        .I3(\addra_reg_n_0_[4] ),
        .I4(\addra_reg_n_0_[2] ),
        .I5(\addra_reg_n_0_[0] ),
        .O(addra[1]));
  LUT6 #(
    .INIT(64'hEAFF2A002A002A00)) 
    \addra[2]_i_1 
       (.I0(\addra[2]_i_2_n_0 ),
        .I1(bufferB_full),
        .I2(bufferA_full),
        .I3(pilot_din_vld),
        .I4(insert_reg_n_0),
        .I5(addra[2]),
        .O(\addra[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01507F8105507A07)) 
    \addra[2]_i_2 
       (.I0(pilot_din_Index[4]),
        .I1(pilot_din_Index[3]),
        .I2(pilot_din_Index[1]),
        .I3(pilot_din_Index[2]),
        .I4(pilot_din_Index[5]),
        .I5(pilot_din_Index[0]),
        .O(\addra[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000001)) 
    \addra[2]_i_3 
       (.I0(\addra_reg_n_0_[5] ),
        .I1(\addra_reg_n_0_[3] ),
        .I2(\addra_reg_n_0_[4] ),
        .I3(\addra_reg_n_0_[2] ),
        .I4(\addra_reg_n_0_[1] ),
        .I5(\addra_reg_n_0_[0] ),
        .O(addra[2]));
  LUT6 #(
    .INIT(64'hEAFF2A002A002A00)) 
    \addra[3]_i_1 
       (.I0(\addra[3]_i_2_n_0 ),
        .I1(bufferB_full),
        .I2(bufferA_full),
        .I3(pilot_din_vld),
        .I4(insert_reg_n_0),
        .I5(addra[5]),
        .O(\addra[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4511B3324111B334)) 
    \addra[3]_i_2 
       (.I0(pilot_din_Index[4]),
        .I1(pilot_din_Index[3]),
        .I2(pilot_din_Index[1]),
        .I3(pilot_din_Index[2]),
        .I4(pilot_din_Index[5]),
        .I5(pilot_din_Index[0]),
        .O(\addra[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFF2A002A002A00)) 
    \addra[4]_i_1 
       (.I0(\addra[4]_i_2_n_0 ),
        .I1(bufferB_full),
        .I2(bufferA_full),
        .I3(pilot_din_vld),
        .I4(insert_reg_n_0),
        .I5(addra[4]),
        .O(\addra[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5444666654446662)) 
    \addra[4]_i_2 
       (.I0(pilot_din_Index[4]),
        .I1(pilot_din_Index[3]),
        .I2(pilot_din_Index[1]),
        .I3(pilot_din_Index[2]),
        .I4(pilot_din_Index[5]),
        .I5(pilot_din_Index[0]),
        .O(\addra[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000808000000)) 
    \addra[4]_i_3 
       (.I0(\addra_reg_n_0_[1] ),
        .I1(\addra_reg_n_0_[0] ),
        .I2(\addra_reg_n_0_[4] ),
        .I3(\addra_reg_n_0_[5] ),
        .I4(\addra_reg_n_0_[3] ),
        .I5(\addra_reg_n_0_[2] ),
        .O(addra[4]));
  LUT6 #(
    .INIT(64'hEAFF2A002A002A00)) 
    \addra[5]_i_1 
       (.I0(\addra[5]_i_2_n_0 ),
        .I1(bufferB_full),
        .I2(bufferA_full),
        .I3(pilot_din_vld),
        .I4(insert_reg_n_0),
        .I5(addra[5]),
        .O(\addra[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \addra[5]_i_2 
       (.I0(pilot_din_Index[4]),
        .I1(pilot_din_Index[3]),
        .I2(pilot_din_Index[5]),
        .O(\addra[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002008000000)) 
    \addra[5]_i_3 
       (.I0(\addra_reg_n_0_[0] ),
        .I1(\addra_reg_n_0_[3] ),
        .I2(\addra_reg_n_0_[4] ),
        .I3(\addra_reg_n_0_[5] ),
        .I4(\addra_reg_n_0_[1] ),
        .I5(\addra_reg_n_0_[2] ),
        .O(addra[5]));
  LUT6 #(
    .INIT(64'hFBBBAAAA0888AAAA)) 
    \addra[6]_i_1 
       (.I0(buffer_flag),
        .I1(pilot_din_vld),
        .I2(bufferA_full),
        .I3(bufferB_full),
        .I4(insert_reg_n_0),
        .I5(\addra_reg_n_0_[6] ),
        .O(\addra[6]_i_1_n_0 ));
  FDCE \addra_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(\addra[0]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[0] ));
  FDCE \addra_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(\addra[1]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[1] ));
  FDCE \addra_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(\addra[2]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[2] ));
  FDCE \addra_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(\addra[3]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[3] ));
  FDCE \addra_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(\addra[4]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[4] ));
  FDCE \addra_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(\addra[5]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[5] ));
  FDCE \addra_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(\addra[6]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[6] ));
  FDCE bufferA_full_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(u_counter_r_n_0),
        .Q(bufferA_full));
  FDCE bufferB_full_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(u_counter_r_n_2),
        .Q(bufferB_full));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    buffer_flag_i_1
       (.I0(En_cnt),
        .I1(buffer_flag),
        .O(buffer_flag_i_1_n_0));
  FDCE buffer_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(buffer_flag_i_1_n_0),
        .Q(buffer_flag));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[0]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[0]),
        .O(\dina[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[10]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[10]),
        .O(\dina[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[11]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[11]),
        .O(\dina[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[12]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[12]),
        .O(\dina[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[13]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[13]),
        .O(\dina[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[14]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[14]),
        .O(\dina[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[15]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[15]),
        .O(\dina[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[1]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[1]),
        .O(\dina[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[2]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[2]),
        .O(\dina[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[3]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[3]),
        .O(\dina[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[4]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[4]),
        .O(\dina[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[5]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[5]),
        .O(\dina[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \dina[6]_i_1 
       (.I0(pilot_din[6]),
        .I1(pilot_din_vld),
        .I2(bufferA_full),
        .I3(bufferB_full),
        .O(\dina[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8888BBB8BBBB888)) 
    \dina[7]_i_1 
       (.I0(pilot_din[7]),
        .I1(\dina[7]_i_2_n_0 ),
        .I2(\addra_reg_n_0_[2] ),
        .I3(\addra_reg_n_0_[1] ),
        .I4(p_0_in),
        .I5(p_1_in),
        .O(\dina[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \dina[7]_i_2 
       (.I0(bufferB_full),
        .I1(bufferA_full),
        .I2(pilot_din_vld),
        .O(\dina[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[8]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[8]),
        .O(\dina[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \dina[9]_i_1 
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(pilot_din[9]),
        .O(\dina[9]_i_1_n_0 ));
  FDCE \dina_reg[0] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[0]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[0] ));
  FDCE \dina_reg[10] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[10]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[10] ));
  FDCE \dina_reg[11] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[11]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[11] ));
  FDCE \dina_reg[12] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[12]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[12] ));
  FDCE \dina_reg[13] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[13]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[13] ));
  FDCE \dina_reg[14] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[14]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[14] ));
  FDCE \dina_reg[15] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[15]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[15] ));
  FDCE \dina_reg[1] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[1]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[1] ));
  FDCE \dina_reg[2] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[2]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[2] ));
  FDCE \dina_reg[3] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[3]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[3] ));
  FDCE \dina_reg[4] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[4]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[4] ));
  FDCE \dina_reg[5] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[5]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[5] ));
  FDCE \dina_reg[6] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[6]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[6] ));
  FDCE \dina_reg[7] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[7]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[7] ));
  FDCE \dina_reg[8] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[8]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[8] ));
  FDCE \dina_reg[9] 
       (.C(clk),
        .CE(wea_i_1_n_0),
        .CLR(u_counter_n_8),
        .D(\dina[9]_i_1_n_0 ),
        .Q(\dina_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h8B88)) 
    insert_i_1
       (.I0(insert_i_2_n_0),
        .I1(En_cnt_reg_n_0),
        .I2(insert_i_3_n_0),
        .I3(insert_reg_n_0),
        .O(insert_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    insert_i_2
       (.I0(\addra_reg_n_0_[5] ),
        .I1(\addra_reg_n_0_[4] ),
        .I2(\addra_reg_n_0_[2] ),
        .I3(\addra_reg_n_0_[1] ),
        .I4(\addra_reg_n_0_[3] ),
        .I5(\addra_reg_n_0_[0] ),
        .O(insert_i_2_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    insert_i_3
       (.I0(\addra_reg_n_0_[1] ),
        .I1(\addra_reg_n_0_[2] ),
        .I2(\addra_reg_n_0_[5] ),
        .I3(\addra_reg_n_0_[0] ),
        .I4(\addra_reg_n_0_[4] ),
        .I5(\addra_reg_n_0_[3] ),
        .O(insert_i_3_n_0));
  FDPE insert_reg
       (.C(clk),
        .CE(1'b1),
        .D(insert_i_1_n_0),
        .PRE(u_counter_n_8),
        .Q(insert_reg_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TLAST" *) 
  FDCE pilot_dout_last_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(r_cnt_last),
        .Q(pilot_dout_last));
  LUT2 #(
    .INIT(4'h7)) 
    pilot_dout_rdy_INST_0
       (.I0(bufferA_full),
        .I1(bufferB_full),
        .O(pilot_dout_rdy));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TVALID" *) 
  FDCE pilot_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(enb),
        .Q(pilot_dout_vld));
  FDPE \shift_reg_reg[0] 
       (.C(clk),
        .CE(u_counter_n_0),
        .D(u_counter_n_7),
        .PRE(u_counter_n_8),
        .Q(\shift_reg_reg_n_0_[0] ));
  FDPE \shift_reg_reg[1] 
       (.C(clk),
        .CE(u_counter_n_0),
        .D(u_counter_n_6),
        .PRE(u_counter_n_8),
        .Q(\shift_reg_reg_n_0_[1] ));
  FDPE \shift_reg_reg[2] 
       (.C(clk),
        .CE(u_counter_n_0),
        .D(u_counter_n_5),
        .PRE(u_counter_n_8),
        .Q(\shift_reg_reg_n_0_[2] ));
  FDPE \shift_reg_reg[3] 
       (.C(clk),
        .CE(u_counter_n_0),
        .D(u_counter_n_4),
        .PRE(u_counter_n_8),
        .Q(p_0_in));
  FDPE \shift_reg_reg[4] 
       (.C(clk),
        .CE(u_counter_n_0),
        .D(u_counter_n_3),
        .PRE(u_counter_n_8),
        .Q(\shift_reg_reg_n_0_[4] ));
  FDPE \shift_reg_reg[5] 
       (.C(clk),
        .CE(u_counter_n_0),
        .D(u_counter_n_2),
        .PRE(u_counter_n_8),
        .Q(\shift_reg_reg_n_0_[5] ));
  FDPE \shift_reg_reg[6] 
       (.C(clk),
        .CE(u_counter_n_0),
        .D(u_counter_n_1),
        .PRE(u_counter_n_8),
        .Q(p_1_in));
  ofdm_tx_pilot_0_0_counter u_counter
       (.D({u_counter_n_1,u_counter_n_2,u_counter_n_3,u_counter_n_4,u_counter_n_5,u_counter_n_6,u_counter_n_7}),
        .E(u_counter_n_0),
        .Q({p_1_in,\shift_reg_reg_n_0_[5] ,\shift_reg_reg_n_0_[4] ,p_0_in,\shift_reg_reg_n_0_[2] ,\shift_reg_reg_n_0_[1] ,\shift_reg_reg_n_0_[0] }),
        .clk(clk),
        .\cnt_reg[0]_0 (En_cnt_reg_n_0),
        .rst_n(rst_n),
        .rst_n_0(u_counter_n_8));
  ofdm_tx_pilot_0_0_counter__parameterized0 u_counter_r
       (.E(enb),
        .Q(r_cnt),
        .bufferA_full(bufferA_full),
        .bufferB_full(bufferB_full),
        .bufferB_full_reg(u_counter_r_n_2),
        .buffer_flag(buffer_flag),
        .buffer_flag_reg(u_counter_r_n_0),
        .clk(clk),
        .\cnt_reg[0]_0 (u_counter_n_8),
        .pilot_din_Index(pilot_din_Index),
        .pilot_din_rdy(pilot_din_rdy),
        .pilot_din_vld(pilot_din_vld),
        .pilot_dout_vld(pilot_dout_vld),
        .r_cnt_last(r_cnt_last));
  (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
  ofdm_tx_pilot_0_0_pilot_ram u_pilot_ram
       (.addra({\addra_reg_n_0_[6] ,\addra_reg_n_0_[5] ,\addra_reg_n_0_[4] ,\addra_reg_n_0_[3] ,\addra_reg_n_0_[2] ,\addra_reg_n_0_[1] ,\addra_reg_n_0_[0] }),
        .addrb({buffer_flag0,r_cnt}),
        .clka(clk),
        .clkb(clk),
        .dina({\dina_reg_n_0_[15] ,\dina_reg_n_0_[14] ,\dina_reg_n_0_[13] ,\dina_reg_n_0_[12] ,\dina_reg_n_0_[11] ,\dina_reg_n_0_[10] ,\dina_reg_n_0_[9] ,\dina_reg_n_0_[8] ,\dina_reg_n_0_[7] ,\dina_reg_n_0_[6] ,\dina_reg_n_0_[5] ,\dina_reg_n_0_[4] ,\dina_reg_n_0_[3] ,\dina_reg_n_0_[2] ,\dina_reg_n_0_[1] ,\dina_reg_n_0_[0] }),
        .doutb(pilot_dout),
        .enb(enb),
        .wea(wea_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    u_pilot_ram_i_2
       (.I0(buffer_flag),
        .O(buffer_flag0));
  LUT5 #(
    .INIT(32'hFF2A2A2A)) 
    wea_i_1
       (.I0(pilot_din_vld),
        .I1(bufferA_full),
        .I2(bufferB_full),
        .I3(\addra[0]_i_3_n_0 ),
        .I4(insert_reg_n_0),
        .O(wea_i_1_n_0));
  FDCE wea_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_8),
        .D(wea_i_1_n_0),
        .Q(wea_reg_n_0));
endmodule

(* ORIG_REF_NAME = "pilot_ram" *) (* X_CORE_INFO = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
module ofdm_tx_pilot_0_0_pilot_ram
   (clka,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* syn_isclock = "1" *) input clka;
  input [0:0]wea;
  input [6:0]addra;
  input [15:0]dina;
  (* syn_isclock = "1" *) input clkb;
  input enb;
  input [6:0]addrb;
  output [15:0]doutb;


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
