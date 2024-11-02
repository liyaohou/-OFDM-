// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:23 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_symbol_train_0_0/ofdm_tx_symbol_train_0_0_sim_netlist.v
// Design      : ofdm_tx_symbol_train_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ofdm_tx_symbol_train_0_0,symbol_train,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "symbol_train,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ofdm_tx_symbol_train_0_0
   (clk,
    rst_n,
    train_din_rdy,
    train_dout,
    train_dout_vld,
    train_dout_last,
    train_dout_Index);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_train, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TREADY" *) input train_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) output [15:0]train_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TVALID" *) output train_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TLAST" *) output train_dout_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_train, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 9, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [8:0]train_dout_Index;

  wire clk;
  wire rst_n;
  wire train_din_rdy;
  wire [15:0]train_dout;
  wire [8:0]train_dout_Index;
  wire train_dout_last;
  wire train_dout_vld;

  ofdm_tx_symbol_train_0_0_symbol_train inst
       (.clk(clk),
        .rst_n(rst_n),
        .train_din_rdy(train_din_rdy),
        .train_dout(train_dout),
        .train_dout_Index(train_dout_Index),
        .train_dout_last(train_dout_last),
        .train_dout_vld(train_dout_vld));
endmodule

(* ORIG_REF_NAME = "LTS" *) 
module ofdm_tx_symbol_train_0_0_LTS
   (LTS_dout_last,
    cnt_last,
    rst_n_0,
    LTS_dout_vld,
    S,
    Q,
    \LTS_dout_reg[15]_0 ,
    \LTS_dout_Index_reg[7]_0 ,
    clk,
    \train_dout0_inferred__0/i__carry__0 ,
    LTS_din_rdy,
    rst_n,
    E,
    \cnt_reg[7] );
  output LTS_dout_last;
  output cnt_last;
  output rst_n_0;
  output LTS_dout_vld;
  output [0:0]S;
  output [15:0]Q;
  output [0:0]\LTS_dout_reg[15]_0 ;
  output [7:0]\LTS_dout_Index_reg[7]_0 ;
  input clk;
  input [1:0]\train_dout0_inferred__0/i__carry__0 ;
  input LTS_din_rdy;
  input rst_n;
  input [0:0]E;
  input [0:0]\cnt_reg[7] ;

  wire [0:0]E;
  wire LTS_din_rdy;
  wire [7:0]\LTS_dout_Index_reg[7]_0 ;
  wire LTS_dout_last;
  wire [0:0]\LTS_dout_reg[15]_0 ;
  wire LTS_dout_vld;
  wire LTS_dout_vld_i_1_n_0;
  wire [15:0]Q;
  wire [0:0]S;
  wire clk;
  wire cnt_last;
  wire [7:0]cnt_reg;
  wire [0:0]\cnt_reg[7] ;
  wire rst_n;
  wire rst_n_0;
  wire [1:0]\train_dout0_inferred__0/i__carry__0 ;
  wire u_counter_n_0;
  wire u_counter_n_1;
  wire u_counter_n_10;
  wire u_counter_n_11;
  wire u_counter_n_12;
  wire u_counter_n_13;
  wire u_counter_n_14;
  wire u_counter_n_15;
  wire u_counter_n_2;
  wire u_counter_n_3;
  wire u_counter_n_4;
  wire u_counter_n_5;
  wire u_counter_n_6;
  wire u_counter_n_7;
  wire u_counter_n_8;
  wire u_counter_n_9;

  FDCE \LTS_dout_Index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_reg[0]),
        .Q(\LTS_dout_Index_reg[7]_0 [0]));
  FDCE \LTS_dout_Index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_reg[1]),
        .Q(\LTS_dout_Index_reg[7]_0 [1]));
  FDCE \LTS_dout_Index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_reg[2]),
        .Q(\LTS_dout_Index_reg[7]_0 [2]));
  FDCE \LTS_dout_Index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_reg[3]),
        .Q(\LTS_dout_Index_reg[7]_0 [3]));
  FDCE \LTS_dout_Index_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_reg[4]),
        .Q(\LTS_dout_Index_reg[7]_0 [4]));
  FDCE \LTS_dout_Index_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_reg[5]),
        .Q(\LTS_dout_Index_reg[7]_0 [5]));
  FDCE \LTS_dout_Index_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_reg[6]),
        .Q(\LTS_dout_Index_reg[7]_0 [6]));
  FDCE \LTS_dout_Index_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_reg[7]),
        .Q(\LTS_dout_Index_reg[7]_0 [7]));
  FDCE LTS_dout_last_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_last),
        .Q(LTS_dout_last));
  FDCE \LTS_dout_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_15),
        .Q(Q[0]));
  FDCE \LTS_dout_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_5),
        .Q(Q[10]));
  FDCE \LTS_dout_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_4),
        .Q(Q[11]));
  FDCE \LTS_dout_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_3),
        .Q(Q[12]));
  FDCE \LTS_dout_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_2),
        .Q(Q[13]));
  FDCE \LTS_dout_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_1),
        .Q(Q[14]));
  FDCE \LTS_dout_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_0),
        .Q(Q[15]));
  FDCE \LTS_dout_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_14),
        .Q(Q[1]));
  FDCE \LTS_dout_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_13),
        .Q(Q[2]));
  FDCE \LTS_dout_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_12),
        .Q(Q[3]));
  FDCE \LTS_dout_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_11),
        .Q(Q[4]));
  FDCE \LTS_dout_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_10),
        .Q(Q[5]));
  FDCE \LTS_dout_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_9),
        .Q(Q[6]));
  FDCE \LTS_dout_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_8),
        .Q(Q[7]));
  FDCE \LTS_dout_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_7),
        .Q(Q[8]));
  FDCE \LTS_dout_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(u_counter_n_6),
        .Q(Q[9]));
  LUT3 #(
    .INIT(8'h74)) 
    LTS_dout_vld_i_1
       (.I0(LTS_dout_last),
        .I1(LTS_din_rdy),
        .I2(LTS_dout_vld),
        .O(LTS_dout_vld_i_1_n_0));
  FDCE LTS_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(LTS_dout_vld_i_1_n_0),
        .Q(LTS_dout_vld));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(Q[15]),
        .I1(\train_dout0_inferred__0/i__carry__0 [1]),
        .O(\LTS_dout_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    train_dout0_carry__0_i_1
       (.I0(Q[7]),
        .I1(\train_dout0_inferred__0/i__carry__0 [0]),
        .O(S));
  ofdm_tx_symbol_train_0_0_counter_0 u_counter
       (.D({u_counter_n_0,u_counter_n_1,u_counter_n_2,u_counter_n_3,u_counter_n_4,u_counter_n_5,u_counter_n_6,u_counter_n_7,u_counter_n_8,u_counter_n_9,u_counter_n_10,u_counter_n_11,u_counter_n_12,u_counter_n_13,u_counter_n_14,u_counter_n_15}),
        .Q(cnt_reg),
        .clk(clk),
        .\cnt_reg[5]_0 (cnt_last),
        .\cnt_reg[7]_0 (\cnt_reg[7] ),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0));
endmodule

(* ORIG_REF_NAME = "STS" *) 
module ofdm_tx_symbol_train_0_0_STS
   (STS_dout_last_reg_0,
    LTS_din_rdy,
    E,
    Q,
    STS_dout_vld_reg_0,
    D,
    \STS_dout_reg[15]_0 ,
    \STS_dout_Index_reg[7]_0 ,
    \STS_dout_reg[3]_0 ,
    \STS_dout_reg[14]_0 ,
    \STS_dout_reg[11]_0 ,
    \STS_dout_reg[14]_1 ,
    clk,
    \cnt_reg[0] ,
    cnt_last,
    train_din_rdy,
    LTS_dout_last,
    LTS_dout_vld,
    train_dout0,
    \train_dout_reg[15] ,
    train_dout02_out,
    S,
    \train_dout_Index_reg[7] );
  output [0:0]STS_dout_last_reg_0;
  output LTS_din_rdy;
  output [0:0]E;
  output [7:0]Q;
  output [0:0]STS_dout_vld_reg_0;
  output [15:0]D;
  output [14:0]\STS_dout_reg[15]_0 ;
  output [8:0]\STS_dout_Index_reg[7]_0 ;
  output [3:0]\STS_dout_reg[3]_0 ;
  output [2:0]\STS_dout_reg[14]_0 ;
  output [3:0]\STS_dout_reg[11]_0 ;
  output [2:0]\STS_dout_reg[14]_1 ;
  input clk;
  input \cnt_reg[0] ;
  input cnt_last;
  input train_din_rdy;
  input LTS_dout_last;
  input LTS_dout_vld;
  input [7:0]train_dout0;
  input [15:0]\train_dout_reg[15] ;
  input [7:0]train_dout02_out;
  input [3:0]S;
  input [3:0]\train_dout_Index_reg[7] ;

  wire [15:0]D;
  wire [0:0]E;
  wire LTS_din_rdy;
  wire LTS_dout_last;
  wire LTS_dout_vld;
  wire [7:0]Q;
  wire [3:0]S;
  wire \STS_dout[15]_i_1_n_0 ;
  wire [8:0]\STS_dout_Index_reg[7]_0 ;
  wire STS_dout_last;
  wire [0:0]STS_dout_last_reg_0;
  wire [3:0]\STS_dout_reg[11]_0 ;
  wire [2:0]\STS_dout_reg[14]_0 ;
  wire [2:0]\STS_dout_reg[14]_1 ;
  wire [14:0]\STS_dout_reg[15]_0 ;
  wire [3:0]\STS_dout_reg[3]_0 ;
  wire STS_dout_vld;
  wire STS_dout_vld_i_1_n_0;
  wire [0:0]STS_dout_vld_reg_0;
  wire clk;
  wire [7:0]cnt;
  wire cnt_last;
  wire cnt_last_0;
  wire \cnt_reg[0] ;
  wire [15:0]p_0_in;
  wire train_din_rdy;
  wire [7:0]train_dout0;
  wire [7:0]train_dout02_out;
  wire \train_dout_Index_reg[3]_i_1_n_0 ;
  wire \train_dout_Index_reg[3]_i_1_n_1 ;
  wire \train_dout_Index_reg[3]_i_1_n_2 ;
  wire \train_dout_Index_reg[3]_i_1_n_3 ;
  wire [3:0]\train_dout_Index_reg[7] ;
  wire \train_dout_Index_reg[7]_i_1_n_0 ;
  wire \train_dout_Index_reg[7]_i_1_n_1 ;
  wire \train_dout_Index_reg[7]_i_1_n_2 ;
  wire \train_dout_Index_reg[7]_i_1_n_3 ;
  wire [15:0]\train_dout_reg[15] ;
  wire u_counter_n_21;
  wire [3:1]\NLW_train_dout_Index_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_train_dout_Index_reg[8]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \LTS_dout[15]_i_1 
       (.I0(LTS_din_rdy),
        .I1(LTS_dout_last),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \STS_dout[15]_i_1 
       (.I0(train_din_rdy),
        .I1(STS_dout_last),
        .O(\STS_dout[15]_i_1_n_0 ));
  FDCE \STS_dout_Index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt[0]),
        .Q(Q[0]));
  FDCE \STS_dout_Index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt[1]),
        .Q(Q[1]));
  FDCE \STS_dout_Index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt[2]),
        .Q(Q[2]));
  FDCE \STS_dout_Index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt[3]),
        .Q(Q[3]));
  FDCE \STS_dout_Index_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt[4]),
        .Q(Q[4]));
  FDCE \STS_dout_Index_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt[5]),
        .Q(Q[5]));
  FDCE \STS_dout_Index_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt[6]),
        .Q(Q[6]));
  FDCE \STS_dout_Index_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt[7]),
        .Q(Q[7]));
  FDCE STS_dout_last_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(cnt_last_0),
        .Q(STS_dout_last));
  FDCE \STS_dout_reg[0] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[0]),
        .Q(\STS_dout_reg[15]_0 [0]));
  FDCE \STS_dout_reg[10] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[10]),
        .Q(\STS_dout_reg[15]_0 [9]));
  FDCE \STS_dout_reg[11] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[11]),
        .Q(\STS_dout_reg[15]_0 [10]));
  FDCE \STS_dout_reg[12] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[12]),
        .Q(\STS_dout_reg[15]_0 [11]));
  FDCE \STS_dout_reg[13] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[13]),
        .Q(\STS_dout_reg[15]_0 [12]));
  FDCE \STS_dout_reg[14] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[14]),
        .Q(\STS_dout_reg[15]_0 [13]));
  FDCE \STS_dout_reg[15] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[15]),
        .Q(\STS_dout_reg[15]_0 [14]));
  FDCE \STS_dout_reg[1] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[1]),
        .Q(\STS_dout_reg[15]_0 [1]));
  FDCE \STS_dout_reg[2] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[2]),
        .Q(\STS_dout_reg[15]_0 [2]));
  FDCE \STS_dout_reg[3] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(u_counter_n_21),
        .Q(\STS_dout_reg[15]_0 [3]));
  FDCE \STS_dout_reg[4] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[4]),
        .Q(\STS_dout_reg[15]_0 [4]));
  FDCE \STS_dout_reg[5] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[5]),
        .Q(\STS_dout_reg[15]_0 [5]));
  FDCE \STS_dout_reg[7] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[7]),
        .Q(\STS_dout_reg[15]_0 [6]));
  FDCE \STS_dout_reg[8] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[8]),
        .Q(\STS_dout_reg[15]_0 [7]));
  FDCE \STS_dout_reg[9] 
       (.C(clk),
        .CE(\STS_dout[15]_i_1_n_0 ),
        .CLR(\cnt_reg[0] ),
        .D(p_0_in[9]),
        .Q(\STS_dout_reg[15]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h74)) 
    STS_dout_vld_i_1
       (.I0(STS_dout_last),
        .I1(train_din_rdy),
        .I2(STS_dout_vld),
        .O(STS_dout_vld_i_1_n_0));
  FDCE STS_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(STS_dout_vld_i_1_n_0),
        .Q(STS_dout_vld));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(\STS_dout_reg[15]_0 [13]),
        .I1(\train_dout_reg[15] [14]),
        .O(\STS_dout_reg[14]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(\STS_dout_reg[15]_0 [12]),
        .I1(\train_dout_reg[15] [13]),
        .O(\STS_dout_reg[14]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(\STS_dout_reg[15]_0 [11]),
        .I1(\train_dout_reg[15] [12]),
        .O(\STS_dout_reg[14]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(\STS_dout_reg[15]_0 [10]),
        .I1(\train_dout_reg[15] [11]),
        .O(\STS_dout_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(\STS_dout_reg[15]_0 [9]),
        .I1(\train_dout_reg[15] [10]),
        .O(\STS_dout_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(\STS_dout_reg[15]_0 [8]),
        .I1(\train_dout_reg[15] [9]),
        .O(\STS_dout_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(\STS_dout_reg[15]_0 [7]),
        .I1(\train_dout_reg[15] [8]),
        .O(\STS_dout_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    train_dout0_carry__0_i_2
       (.I0(\STS_dout_reg[15]_0 [13]),
        .I1(\train_dout_reg[15] [6]),
        .O(\STS_dout_reg[14]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    train_dout0_carry__0_i_3
       (.I0(\STS_dout_reg[15]_0 [5]),
        .I1(\train_dout_reg[15] [5]),
        .O(\STS_dout_reg[14]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    train_dout0_carry__0_i_4
       (.I0(\STS_dout_reg[15]_0 [4]),
        .I1(\train_dout_reg[15] [4]),
        .O(\STS_dout_reg[14]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    train_dout0_carry_i_1
       (.I0(\STS_dout_reg[15]_0 [3]),
        .I1(\train_dout_reg[15] [3]),
        .O(\STS_dout_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    train_dout0_carry_i_2
       (.I0(\STS_dout_reg[15]_0 [2]),
        .I1(\train_dout_reg[15] [2]),
        .O(\STS_dout_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    train_dout0_carry_i_3
       (.I0(\STS_dout_reg[15]_0 [1]),
        .I1(\train_dout_reg[15] [1]),
        .O(\STS_dout_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    train_dout0_carry_i_4
       (.I0(\STS_dout_reg[15]_0 [0]),
        .I1(\train_dout_reg[15] [0]),
        .O(\STS_dout_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[0]_i_1 
       (.I0(train_dout0[0]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [0]),
        .I4(\train_dout_reg[15] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[10]_i_1 
       (.I0(train_dout02_out[2]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [9]),
        .I4(\train_dout_reg[15] [10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[11]_i_1 
       (.I0(train_dout02_out[3]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [10]),
        .I4(\train_dout_reg[15] [11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[12]_i_1 
       (.I0(train_dout02_out[4]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [11]),
        .I4(\train_dout_reg[15] [12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[13]_i_1 
       (.I0(train_dout02_out[5]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [12]),
        .I4(\train_dout_reg[15] [13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[14]_i_1 
       (.I0(train_dout02_out[6]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [13]),
        .I4(\train_dout_reg[15] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \train_dout[15]_i_1 
       (.I0(STS_dout_vld),
        .I1(LTS_dout_vld),
        .O(STS_dout_vld_reg_0));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[15]_i_2 
       (.I0(train_dout02_out[7]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [14]),
        .I4(\train_dout_reg[15] [15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[1]_i_1 
       (.I0(train_dout0[1]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [1]),
        .I4(\train_dout_reg[15] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[2]_i_1 
       (.I0(train_dout0[2]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [2]),
        .I4(\train_dout_reg[15] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[3]_i_1 
       (.I0(train_dout0[3]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [3]),
        .I4(\train_dout_reg[15] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[4]_i_1 
       (.I0(train_dout0[4]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [4]),
        .I4(\train_dout_reg[15] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[5]_i_1 
       (.I0(train_dout0[5]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [5]),
        .I4(\train_dout_reg[15] [5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[6]_i_1 
       (.I0(train_dout0[6]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [13]),
        .I4(\train_dout_reg[15] [6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[7]_i_1 
       (.I0(train_dout0[7]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [6]),
        .I4(\train_dout_reg[15] [7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[8]_i_1 
       (.I0(train_dout02_out[0]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [7]),
        .I4(\train_dout_reg[15] [8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hBFB38C80)) 
    \train_dout[9]_i_1 
       (.I0(train_dout02_out[1]),
        .I1(STS_dout_vld),
        .I2(STS_dout_last),
        .I3(\STS_dout_reg[15]_0 [8]),
        .I4(\train_dout_reg[15] [9]),
        .O(D[9]));
  CARRY4 \train_dout_Index_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\train_dout_Index_reg[3]_i_1_n_0 ,\train_dout_Index_reg[3]_i_1_n_1 ,\train_dout_Index_reg[3]_i_1_n_2 ,\train_dout_Index_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(\STS_dout_Index_reg[7]_0 [3:0]),
        .S(S));
  CARRY4 \train_dout_Index_reg[7]_i_1 
       (.CI(\train_dout_Index_reg[3]_i_1_n_0 ),
        .CO({\train_dout_Index_reg[7]_i_1_n_0 ,\train_dout_Index_reg[7]_i_1_n_1 ,\train_dout_Index_reg[7]_i_1_n_2 ,\train_dout_Index_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\STS_dout_Index_reg[7]_0 [7:4]),
        .S(\train_dout_Index_reg[7] ));
  CARRY4 \train_dout_Index_reg[8]_i_1 
       (.CI(\train_dout_Index_reg[7]_i_1_n_0 ),
        .CO({\NLW_train_dout_Index_reg[8]_i_1_CO_UNCONNECTED [3:1],\STS_dout_Index_reg[7]_0 [8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_train_dout_Index_reg[8]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  ofdm_tx_symbol_train_0_0_counter u_counter
       (.D({p_0_in[15:7],p_0_in[5:4],u_counter_n_21,p_0_in[2:0]}),
        .LTS_din_rdy(LTS_din_rdy),
        .\LTS_dout[15]_i_3_0 (Q),
        .Q(cnt),
        .STS_dout_last(STS_dout_last),
        .STS_dout_last_reg(STS_dout_last_reg_0),
        .clk(clk),
        .cnt_last(cnt_last),
        .cnt_last_0(cnt_last_0),
        .\cnt_reg[0]_0 (\cnt_reg[0] ),
        .train_din_rdy(train_din_rdy));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module ofdm_tx_symbol_train_0_0_counter
   (STS_dout_last_reg,
    LTS_din_rdy,
    Q,
    D,
    cnt_last_0,
    cnt_last,
    train_din_rdy,
    STS_dout_last,
    \LTS_dout[15]_i_3_0 ,
    clk,
    \cnt_reg[0]_0 );
  output [0:0]STS_dout_last_reg;
  output LTS_din_rdy;
  output [7:0]Q;
  output [14:0]D;
  output cnt_last_0;
  input cnt_last;
  input train_din_rdy;
  input STS_dout_last;
  input [7:0]\LTS_dout[15]_i_3_0 ;
  input clk;
  input \cnt_reg[0]_0 ;

  wire [14:0]D;
  wire En_cnt;
  wire LTS_din_rdy;
  wire [7:0]\LTS_dout[15]_i_3_0 ;
  wire \LTS_dout[15]_i_4_n_0 ;
  wire [7:0]Q;
  wire \STS_dout[12]_i_2_n_0 ;
  wire STS_dout_last;
  wire STS_dout_last_i_2_n_0;
  wire [0:0]STS_dout_last_reg;
  wire clk;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[5]_i_1__0_n_0 ;
  wire \cnt[6]_i_2__0_n_0 ;
  wire \cnt[7]_i_2__0_n_0 ;
  wire \cnt[7]_i_3__0_n_0 ;
  wire cnt_last;
  wire cnt_last_0;
  wire \cnt_reg[0]_0 ;
  wire [6:0]p_0_in__1;
  wire train_din_rdy;

  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \LTS_dout[15]_i_3 
       (.I0(STS_dout_last),
        .I1(\LTS_dout[15]_i_4_n_0 ),
        .I2(\LTS_dout[15]_i_3_0 [4]),
        .I3(\LTS_dout[15]_i_3_0 [3]),
        .I4(\LTS_dout[15]_i_3_0 [2]),
        .O(LTS_din_rdy));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \LTS_dout[15]_i_4 
       (.I0(\LTS_dout[15]_i_3_0 [1]),
        .I1(train_din_rdy),
        .I2(\LTS_dout[15]_i_3_0 [0]),
        .I3(\LTS_dout[15]_i_3_0 [7]),
        .I4(\LTS_dout[15]_i_3_0 [5]),
        .I5(\LTS_dout[15]_i_3_0 [6]),
        .O(\LTS_dout[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h9558)) 
    \STS_dout[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEAAEAAEA)) 
    \STS_dout[10]_i_1 
       (.I0(\STS_dout[12]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBEFB)) 
    \STS_dout[11]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000B47B)) 
    \STS_dout[12]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\STS_dout[12]_i_2_n_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h10010000)) 
    \STS_dout[12]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(STS_dout_last_i_2_n_0),
        .O(\STS_dout[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h96A8)) 
    \STS_dout[13]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \STS_dout[14]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h96F0)) 
    \STS_dout[15]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0980)) 
    \STS_dout[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAAEBAE)) 
    \STS_dout[2]_i_1 
       (.I0(\STS_dout[12]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6DFF)) 
    \STS_dout[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00006DC7)) 
    \STS_dout[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\STS_dout[12]_i_2_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6954)) 
    \STS_dout[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \STS_dout[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AA4)) 
    \STS_dout[8]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1408)) 
    \STS_dout[9]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    STS_dout_last_i_1
       (.I0(STS_dout_last_i_2_n_0),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(cnt_last_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    STS_dout_last_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(STS_dout_last_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(p_0_in__1[4]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \cnt[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\cnt[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\cnt[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \cnt[6]_i_1__0 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(\cnt[6]_i_2__0_n_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[6]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\cnt[6]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[7]_i_1 
       (.I0(LTS_din_rdy),
        .I1(cnt_last),
        .O(STS_dout_last_reg));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \cnt[7]_i_1__0 
       (.I0(STS_dout_last_i_2_n_0),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(train_din_rdy),
        .O(En_cnt));
  LUT4 #(
    .INIT(16'hDF20)) 
    \cnt[7]_i_2__0 
       (.I0(Q[6]),
        .I1(\cnt[7]_i_3__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(\cnt[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt[7]_i_3__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\cnt[7]_i_3__0_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(\cnt_reg[0]_0 ),
        .D(p_0_in__1[0]),
        .Q(Q[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(\cnt_reg[0]_0 ),
        .D(p_0_in__1[1]),
        .Q(Q[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(\cnt_reg[0]_0 ),
        .D(p_0_in__1[4]),
        .Q(Q[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[5]_i_1__0_n_0 ),
        .Q(Q[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(\cnt_reg[0]_0 ),
        .D(p_0_in__1[6]),
        .Q(Q[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[7]_i_2__0_n_0 ),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module ofdm_tx_symbol_train_0_0_counter_0
   (D,
    \cnt_reg[5]_0 ,
    Q,
    rst_n_0,
    rst_n,
    \cnt_reg[7]_0 ,
    clk);
  output [15:0]D;
  output \cnt_reg[5]_0 ;
  output [7:0]Q;
  output rst_n_0;
  input rst_n;
  input [0:0]\cnt_reg[7]_0 ;
  input clk;

  wire [15:0]D;
  wire \LTS_dout[3]_i_2_n_0 ;
  wire \LTS_dout[3]_i_3_n_0 ;
  wire \LTS_dout[4]_i_2_n_0 ;
  wire \LTS_dout[5]_i_2_n_0 ;
  wire \LTS_dout[6]_i_2_n_0 ;
  wire \LTS_dout[6]_i_3_n_0 ;
  wire \LTS_dout[6]_i_4_n_0 ;
  wire LTS_dout_last_i_2_n_0;
  wire LTS_dout_last_i_3_n_0;
  wire [7:0]Q;
  wire clk;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[6]_i_2_n_0 ;
  wire \cnt[7]_i_2_n_0 ;
  wire \cnt[7]_i_3_n_0 ;
  wire \cnt_reg[5]_0 ;
  wire [0:0]\cnt_reg[7]_0 ;
  wire [6:1]p_0_in__0;
  wire rst_n;
  wire rst_n_0;

  LUT6 #(
    .INIT(64'h749F93E0C9F92E70)) 
    \LTS_dout[0]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h7C4192FE59418F50)) 
    \LTS_dout[10]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h77B4F6915D8E4550)) 
    \LTS_dout[11]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFBED528AD520800)) 
    \LTS_dout[12]_i_1 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hE7ACCA18D86AE49C)) 
    \LTS_dout[13]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h3B3B7873E1232318)) 
    \LTS_dout[14]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h3B1B787AE1272318)) 
    \LTS_dout[15]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h9BD2EB686577B394)) 
    \LTS_dout[1]_i_1 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hE2E33BA5DCC74790)) 
    \LTS_dout[2]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LTS_dout[3]_i_1 
       (.I0(\LTS_dout[3]_i_2_n_0 ),
        .I1(\LTS_dout[3]_i_3_n_0 ),
        .I2(\cnt_reg[5]_0 ),
        .I3(\LTS_dout[6]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h4510551010110054)) 
    \LTS_dout[3]_i_2 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\LTS_dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA0820AA20A220)) 
    \LTS_dout[3]_i_3 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\LTS_dout[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \LTS_dout[4]_i_1 
       (.I0(\cnt_reg[5]_0 ),
        .I1(\LTS_dout[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h8B099E7E90D1799C)) 
    \LTS_dout[4]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\LTS_dout[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \LTS_dout[5]_i_1 
       (.I0(\LTS_dout[5]_i_2_n_0 ),
        .I1(\cnt_reg[5]_0 ),
        .I2(\LTS_dout[6]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h73FBE1C48D1D7F3B)) 
    \LTS_dout[5]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\LTS_dout[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \LTS_dout[6]_i_1 
       (.I0(\LTS_dout[6]_i_2_n_0 ),
        .I1(\LTS_dout[6]_i_3_n_0 ),
        .I2(\cnt_reg[5]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \LTS_dout[6]_i_2 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\LTS_dout[6]_i_4_n_0 ),
        .O(\LTS_dout[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB5E15FCFCFEA1EB5)) 
    \LTS_dout[6]_i_3 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\LTS_dout[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \LTS_dout[6]_i_4 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\LTS_dout[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4B293BDC94D28191)) 
    \LTS_dout[7]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0941512F8A489020)) 
    \LTS_dout[8]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFD876B2FA69ADE70)) 
    \LTS_dout[9]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    LTS_dout_last_i_1
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(LTS_dout_last_i_2_n_0),
        .I3(LTS_dout_last_i_3_n_0),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\cnt_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    LTS_dout_last_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(LTS_dout_last_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    LTS_dout_last_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(LTS_dout_last_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(Q[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\cnt[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \cnt[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\cnt[6]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \cnt[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[6]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\cnt[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_2 
       (.I0(Q[6]),
        .I1(\cnt[7]_i_3_n_0 ),
        .I2(Q[7]),
        .O(\cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\cnt[7]_i_3_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt_reg[7]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt_reg[7]_0 ),
        .CLR(rst_n_0),
        .D(p_0_in__0[1]),
        .Q(Q[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt_reg[7]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt_reg[7]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt_reg[7]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[4]_i_1__0_n_0 ),
        .Q(Q[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(\cnt_reg[7]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(\cnt_reg[7]_0 ),
        .CLR(rst_n_0),
        .D(p_0_in__0[6]),
        .Q(Q[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(\cnt_reg[7]_0 ),
        .CLR(rst_n_0),
        .D(\cnt[7]_i_2_n_0 ),
        .Q(Q[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \train_dout[15]_i_3 
       (.I0(rst_n),
        .O(rst_n_0));
endmodule

(* ORIG_REF_NAME = "symbol_train" *) 
module ofdm_tx_symbol_train_0_0_symbol_train
   (train_dout,
    train_dout_vld,
    train_dout_last,
    train_dout_Index,
    train_din_rdy,
    clk,
    rst_n);
  output [15:0]train_dout;
  output train_dout_vld;
  output train_dout_last;
  output [8:0]train_dout_Index;
  input train_din_rdy;
  input clk;
  input rst_n;

  wire LTS_din_rdy;
  wire [7:0]LTS_dout_Index;
  wire LTS_dout_last;
  wire LTS_dout_vld;
  wire [7:0]STS_dout_Index;
  wire clk;
  wire cnt_last;
  wire [7:0]p_0_in0_in;
  wire [7:0]p_0_in_0;
  wire [15:0]p_1_in;
  wire [7:0]p_1_in1_in;
  wire rst_n;
  wire train_din_rdy;
  wire [15:0]train_dout;
  wire [7:0]train_dout0;
  wire [7:0]train_dout02_out;
  wire train_dout0_carry__0_n_1;
  wire train_dout0_carry__0_n_2;
  wire train_dout0_carry__0_n_3;
  wire train_dout0_carry_n_0;
  wire train_dout0_carry_n_1;
  wire train_dout0_carry_n_2;
  wire train_dout0_carry_n_3;
  wire \train_dout0_inferred__0/i__carry__0_n_1 ;
  wire \train_dout0_inferred__0/i__carry__0_n_2 ;
  wire \train_dout0_inferred__0/i__carry__0_n_3 ;
  wire \train_dout0_inferred__0/i__carry_n_0 ;
  wire \train_dout0_inferred__0/i__carry_n_1 ;
  wire \train_dout0_inferred__0/i__carry_n_2 ;
  wire \train_dout0_inferred__0/i__carry_n_3 ;
  wire [8:0]train_dout_Index;
  wire [8:0]train_dout_Index0;
  wire \train_dout_Index[3]_i_2_n_0 ;
  wire \train_dout_Index[3]_i_3_n_0 ;
  wire \train_dout_Index[3]_i_4_n_0 ;
  wire \train_dout_Index[3]_i_5_n_0 ;
  wire \train_dout_Index[7]_i_2_n_0 ;
  wire \train_dout_Index[7]_i_3_n_0 ;
  wire \train_dout_Index[7]_i_4_n_0 ;
  wire \train_dout_Index[7]_i_5_n_0 ;
  wire train_dout_last;
  wire train_dout_vld;
  wire u_LTS_n_2;
  wire u_LTS_n_21;
  wire u_LTS_n_4;
  wire u_STS_n_0;
  wire u_STS_n_11;
  wire u_STS_n_2;
  wire u_STS_n_36;
  wire u_STS_n_37;
  wire u_STS_n_38;
  wire u_STS_n_39;
  wire u_STS_n_40;
  wire u_STS_n_41;
  wire u_STS_n_42;
  wire u_STS_n_52;
  wire u_STS_n_53;
  wire u_STS_n_54;
  wire u_STS_n_55;
  wire u_STS_n_56;
  wire u_STS_n_57;
  wire u_STS_n_58;
  wire u_STS_n_59;
  wire u_STS_n_60;
  wire u_STS_n_61;
  wire u_STS_n_62;
  wire u_STS_n_63;
  wire u_STS_n_64;
  wire u_STS_n_65;
  wire [3:3]NLW_train_dout0_carry__0_CO_UNCONNECTED;
  wire [3:3]\NLW_train_dout0_inferred__0/i__carry__0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 train_dout0_carry
       (.CI(1'b0),
        .CO({train_dout0_carry_n_0,train_dout0_carry_n_1,train_dout0_carry_n_2,train_dout0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_STS_n_39,u_STS_n_40,u_STS_n_41,u_STS_n_42}),
        .O(train_dout0[3:0]),
        .S({u_STS_n_52,u_STS_n_53,u_STS_n_54,u_STS_n_55}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 train_dout0_carry__0
       (.CI(train_dout0_carry_n_0),
        .CO({NLW_train_dout0_carry__0_CO_UNCONNECTED[3],train_dout0_carry__0_n_1,train_dout0_carry__0_n_2,train_dout0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in1_in[6],u_STS_n_37,u_STS_n_38}),
        .O(train_dout0[7:4]),
        .S({u_LTS_n_4,u_STS_n_56,u_STS_n_57,u_STS_n_58}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \train_dout0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\train_dout0_inferred__0/i__carry_n_0 ,\train_dout0_inferred__0/i__carry_n_1 ,\train_dout0_inferred__0/i__carry_n_2 ,\train_dout0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in1_in[3:0]),
        .O(train_dout02_out[3:0]),
        .S({u_STS_n_59,u_STS_n_60,u_STS_n_61,u_STS_n_62}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \train_dout0_inferred__0/i__carry__0 
       (.CI(\train_dout0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_train_dout0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\train_dout0_inferred__0/i__carry__0_n_1 ,\train_dout0_inferred__0/i__carry__0_n_2 ,\train_dout0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in1_in[6:4]}),
        .O(train_dout02_out[7:4]),
        .S({u_LTS_n_21,u_STS_n_63,u_STS_n_64,u_STS_n_65}));
  LUT2 #(
    .INIT(4'h6)) 
    \train_dout_Index[3]_i_2 
       (.I0(STS_dout_Index[3]),
        .I1(LTS_dout_Index[3]),
        .O(\train_dout_Index[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \train_dout_Index[3]_i_3 
       (.I0(STS_dout_Index[2]),
        .I1(LTS_dout_Index[2]),
        .O(\train_dout_Index[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \train_dout_Index[3]_i_4 
       (.I0(STS_dout_Index[1]),
        .I1(LTS_dout_Index[1]),
        .O(\train_dout_Index[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \train_dout_Index[3]_i_5 
       (.I0(STS_dout_Index[0]),
        .I1(LTS_dout_Index[0]),
        .O(\train_dout_Index[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \train_dout_Index[7]_i_2 
       (.I0(STS_dout_Index[7]),
        .I1(LTS_dout_Index[7]),
        .O(\train_dout_Index[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \train_dout_Index[7]_i_3 
       (.I0(STS_dout_Index[6]),
        .I1(LTS_dout_Index[6]),
        .O(\train_dout_Index[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \train_dout_Index[7]_i_4 
       (.I0(STS_dout_Index[5]),
        .I1(LTS_dout_Index[5]),
        .O(\train_dout_Index[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \train_dout_Index[7]_i_5 
       (.I0(STS_dout_Index[4]),
        .I1(LTS_dout_Index[4]),
        .O(\train_dout_Index[7]_i_5_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[0]),
        .Q(train_dout_Index[0]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[1]),
        .Q(train_dout_Index[1]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[2]),
        .Q(train_dout_Index[2]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[3]),
        .Q(train_dout_Index[3]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[4]),
        .Q(train_dout_Index[4]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[5]),
        .Q(train_dout_Index[5]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[6]),
        .Q(train_dout_Index[6]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[7]),
        .Q(train_dout_Index[7]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *) 
  FDRE \train_dout_Index_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(train_dout_Index0[8]),
        .Q(train_dout_Index[8]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TLAST" *) 
  FDRE train_dout_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(LTS_dout_last),
        .Q(train_dout_last),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[0] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[0]),
        .Q(train_dout[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[10] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[10]),
        .Q(train_dout[10]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[11] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[11]),
        .Q(train_dout[11]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[12] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[12]),
        .Q(train_dout[12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[13] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[13]),
        .Q(train_dout[13]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[14] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[14]),
        .Q(train_dout[14]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[15] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[15]),
        .Q(train_dout[15]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[1] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[1]),
        .Q(train_dout[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[2] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[2]),
        .Q(train_dout[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[3] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[3]),
        .Q(train_dout[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[4] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[4]),
        .Q(train_dout[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[5] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[5]),
        .Q(train_dout[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[6] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[6]),
        .Q(train_dout[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[7] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[7]),
        .Q(train_dout[7]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[8] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[8]),
        .Q(train_dout[8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *) 
  FDCE \train_dout_reg[9] 
       (.C(clk),
        .CE(u_STS_n_11),
        .CLR(u_LTS_n_2),
        .D(p_1_in[9]),
        .Q(train_dout[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TVALID" *) 
  FDCE train_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_LTS_n_2),
        .D(u_STS_n_11),
        .Q(train_dout_vld));
  ofdm_tx_symbol_train_0_0_LTS u_LTS
       (.E(u_STS_n_2),
        .LTS_din_rdy(LTS_din_rdy),
        .\LTS_dout_Index_reg[7]_0 (LTS_dout_Index),
        .LTS_dout_last(LTS_dout_last),
        .\LTS_dout_reg[15]_0 (u_LTS_n_21),
        .LTS_dout_vld(LTS_dout_vld),
        .Q({p_0_in0_in,p_0_in_0}),
        .S(u_LTS_n_4),
        .clk(clk),
        .cnt_last(cnt_last),
        .\cnt_reg[7] (u_STS_n_0),
        .rst_n(rst_n),
        .rst_n_0(u_LTS_n_2),
        .\train_dout0_inferred__0/i__carry__0 ({p_1_in1_in[7],u_STS_n_36}));
  ofdm_tx_symbol_train_0_0_STS u_STS
       (.D(p_1_in),
        .E(u_STS_n_2),
        .LTS_din_rdy(LTS_din_rdy),
        .LTS_dout_last(LTS_dout_last),
        .LTS_dout_vld(LTS_dout_vld),
        .Q(STS_dout_Index),
        .S({\train_dout_Index[3]_i_2_n_0 ,\train_dout_Index[3]_i_3_n_0 ,\train_dout_Index[3]_i_4_n_0 ,\train_dout_Index[3]_i_5_n_0 }),
        .\STS_dout_Index_reg[7]_0 (train_dout_Index0),
        .STS_dout_last_reg_0(u_STS_n_0),
        .\STS_dout_reg[11]_0 ({u_STS_n_59,u_STS_n_60,u_STS_n_61,u_STS_n_62}),
        .\STS_dout_reg[14]_0 ({u_STS_n_56,u_STS_n_57,u_STS_n_58}),
        .\STS_dout_reg[14]_1 ({u_STS_n_63,u_STS_n_64,u_STS_n_65}),
        .\STS_dout_reg[15]_0 ({p_1_in1_in,u_STS_n_36,u_STS_n_37,u_STS_n_38,u_STS_n_39,u_STS_n_40,u_STS_n_41,u_STS_n_42}),
        .\STS_dout_reg[3]_0 ({u_STS_n_52,u_STS_n_53,u_STS_n_54,u_STS_n_55}),
        .STS_dout_vld_reg_0(u_STS_n_11),
        .clk(clk),
        .cnt_last(cnt_last),
        .\cnt_reg[0] (u_LTS_n_2),
        .train_din_rdy(train_din_rdy),
        .train_dout0(train_dout0),
        .train_dout02_out(train_dout02_out),
        .\train_dout_Index_reg[7] ({\train_dout_Index[7]_i_2_n_0 ,\train_dout_Index[7]_i_3_n_0 ,\train_dout_Index[7]_i_4_n_0 ,\train_dout_Index[7]_i_5_n_0 }),
        .\train_dout_reg[15] ({p_0_in0_in,p_0_in_0}));
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
