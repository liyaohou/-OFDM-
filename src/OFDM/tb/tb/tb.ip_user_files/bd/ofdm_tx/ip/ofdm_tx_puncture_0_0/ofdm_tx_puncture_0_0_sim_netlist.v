// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:16 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_puncture_0_0/ofdm_tx_puncture_0_0_sim_netlist.v
// Design      : ofdm_tx_puncture_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ofdm_tx_puncture_0_0,puncture,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "puncture,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ofdm_tx_puncture_0_0
   (clk,
    rst_n,
    punt_din,
    punt_din_vld,
    punt_din_rdy,
    punt_din_sig_flag,
    punt_din_rate_con,
    punt_dout,
    punt_dout_vld,
    punt_dout_rdy,
    punt_dout_sig_flag,
    punt_dout_Map_Type);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_punt:m_axis_punt, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TDATA" *) input [1:0]punt_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TVALID" *) input punt_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TREADY" *) input punt_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TSTRB" *) input punt_din_sig_flag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TID" *) input [3:0]punt_din_rate_con;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TDATA" *) output punt_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TVALID" *) output punt_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_punt, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output punt_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TSTRB" *) output punt_dout_sig_flag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_punt, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [1:0]punt_dout_Map_Type;

  wire clk;
  wire [1:0]punt_din;
  wire [3:0]punt_din_rate_con;
  wire punt_din_rdy;
  wire punt_din_sig_flag;
  wire punt_din_vld;
  wire punt_dout;
  wire [1:0]punt_dout_Map_Type;
  wire punt_dout_rdy;
  wire punt_dout_sig_flag;
  wire punt_dout_vld;
  wire rst_n;

  ofdm_tx_puncture_0_0_puncture inst
       (.clk(clk),
        .punt_din(punt_din),
        .punt_din_rate_con(punt_din_rate_con),
        .punt_din_rdy(punt_din_rdy),
        .punt_din_sig_flag(punt_din_sig_flag),
        .punt_din_vld(punt_din_vld),
        .punt_dout(punt_dout),
        .punt_dout_Map_Type(punt_dout_Map_Type),
        .punt_dout_rdy(punt_dout_rdy),
        .punt_dout_sig_flag(punt_dout_sig_flag),
        .punt_dout_vld(punt_dout_vld),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "Par2Ser" *) 
module ofdm_tx_puncture_0_0_Par2Ser
   (rst_n_0,
    P2S_dout_vld,
    dout_vld_reg_0,
    punt_din_sig_flag_0,
    punt_dout_rdy,
    rd_en,
    clk,
    cnt,
    rst_n,
    punt_din_vld,
    punt_din_rdy,
    punt_dout,
    punt_din_sig_flag,
    punt_dout_sig_flag,
    punt_din);
  output rst_n_0;
  output P2S_dout_vld;
  output dout_vld_reg_0;
  output punt_din_sig_flag_0;
  output punt_dout_rdy;
  output rd_en;
  input clk;
  input [2:0]cnt;
  input rst_n;
  input punt_din_vld;
  input punt_din_rdy;
  input punt_dout;
  input punt_din_sig_flag;
  input punt_dout_sig_flag;
  input [1:0]punt_din;

  wire P2S_dout_vld;
  wire clk;
  wire [2:0]cnt;
  wire cnt_last;
  wire [1:0]din_r;
  wire \din_r[0]_i_1_n_0 ;
  wire \din_r[1]_i_1_n_0 ;
  wire dout_vld_reg_0;
  wire [1:0]punt_din;
  wire punt_din_rdy;
  wire punt_din_sig_flag;
  wire punt_din_sig_flag_0;
  wire punt_din_vld;
  wire punt_dout;
  wire punt_dout_rdy;
  wire punt_dout_sig_flag;
  wire rd_en;
  wire rst_n;
  wire rst_n_0;
  wire u_counter_P2S_n_2;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[2]_i_2 
       (.I0(punt_din_rdy),
        .I1(P2S_dout_vld),
        .O(rd_en));
  LUT6 #(
    .INIT(64'hAEEEFFFFA2220000)) 
    \din_r[0]_i_1 
       (.I0(punt_din[0]),
        .I1(P2S_dout_vld),
        .I2(cnt_last),
        .I3(punt_din_rdy),
        .I4(punt_din_vld),
        .I5(din_r[0]),
        .O(\din_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEFFFFA2220000)) 
    \din_r[1]_i_1 
       (.I0(punt_din[1]),
        .I1(P2S_dout_vld),
        .I2(cnt_last),
        .I3(punt_din_rdy),
        .I4(punt_din_vld),
        .I5(din_r[1]),
        .O(\din_r[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\din_r[0]_i_1_n_0 ),
        .Q(din_r[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\din_r[1]_i_1_n_0 ),
        .Q(din_r[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TVALID" *) 
  FDCE dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(u_counter_P2S_n_2),
        .Q(P2S_dout_vld));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    punt_dout_sig_flag_i_1
       (.I0(punt_din_sig_flag),
        .I1(punt_din_rdy),
        .I2(P2S_dout_vld),
        .I3(punt_dout_sig_flag),
        .O(punt_din_sig_flag_0));
  ofdm_tx_puncture_0_0_counter u_counter_P2S
       (.clk(clk),
        .cnt(cnt),
        .cnt_last(cnt_last),
        .\cnt_reg[0]_0 (P2S_dout_vld),
        .din_r(din_r),
        .dout_vld_reg(dout_vld_reg_0),
        .punt_din_rdy(punt_din_rdy),
        .punt_din_vld(punt_din_vld),
        .punt_din_vld_0(u_counter_P2S_n_2),
        .punt_dout(punt_dout),
        .punt_dout_rdy(punt_dout_rdy),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module ofdm_tx_puncture_0_0_counter
   (cnt_last,
    rst_n_0,
    punt_din_vld_0,
    dout_vld_reg,
    punt_dout_rdy,
    clk,
    din_r,
    cnt,
    rst_n,
    punt_din_vld,
    punt_din_rdy,
    \cnt_reg[0]_0 ,
    punt_dout);
  output cnt_last;
  output rst_n_0;
  output punt_din_vld_0;
  output dout_vld_reg;
  output punt_dout_rdy;
  input clk;
  input [1:0]din_r;
  input [2:0]cnt;
  input rst_n;
  input punt_din_vld;
  input punt_din_rdy;
  input \cnt_reg[0]_0 ;
  input punt_dout;

  wire clk;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire cnt_last;
  wire \cnt_reg[0]_0 ;
  wire [1:0]din_r;
  wire dout_vld_reg;
  wire punt_din_rdy;
  wire punt_din_vld;
  wire punt_din_vld_0;
  wire punt_dout;
  wire punt_dout_i_3_n_0;
  wire punt_dout_rdy;
  wire rst_n;
  wire rst_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg[0]_0 ),
        .I1(punt_din_rdy),
        .I2(cnt_last),
        .O(\cnt[0]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_last));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBAFA)) 
    dout_vld_i_1
       (.I0(punt_din_vld),
        .I1(punt_din_rdy),
        .I2(\cnt_reg[0]_0 ),
        .I3(cnt_last),
        .O(punt_din_vld_0));
  LUT6 #(
    .INIT(64'hFFBFBFBF00808080)) 
    punt_dout_i_1
       (.I0(punt_dout_i_3_n_0),
        .I1(\cnt_reg[0]_0 ),
        .I2(punt_din_rdy),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .I5(punt_dout),
        .O(dout_vld_reg));
  LUT1 #(
    .INIT(2'h1)) 
    punt_dout_i_2
       (.I0(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    punt_dout_i_3
       (.I0(din_r[0]),
        .I1(cnt_last),
        .I2(din_r[1]),
        .I3(cnt[2]),
        .I4(cnt[0]),
        .I5(cnt[1]),
        .O(punt_dout_i_3_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    punt_dout_rdy_INST_0
       (.I0(punt_din_rdy),
        .I1(cnt_last),
        .I2(\cnt_reg[0]_0 ),
        .O(punt_dout_rdy));
endmodule

(* ORIG_REF_NAME = "counter_in" *) 
module ofdm_tx_puncture_0_0_counter_in
   (\cnt_reg[0]_0 ,
    cnt,
    punt_din_rdy,
    P2S_dout_vld,
    punt_dout_vld,
    rd_en,
    \cnt_reg[2]_0 ,
    \cnt_reg[2]_1 ,
    clk,
    \cnt_reg[0]_1 );
  output \cnt_reg[0]_0 ;
  output [2:0]cnt;
  input punt_din_rdy;
  input P2S_dout_vld;
  input punt_dout_vld;
  input rd_en;
  input \cnt_reg[2]_0 ;
  input \cnt_reg[2]_1 ;
  input clk;
  input \cnt_reg[0]_1 ;

  wire P2S_dout_vld;
  wire clk;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire \cnt_reg[2]_0 ;
  wire \cnt_reg[2]_1 ;
  wire punt_din_rdy;
  wire punt_dout_vld;
  wire rd_en;

  LUT6 #(
    .INIT(64'h14555514AAAAAAAA)) 
    \cnt[0]_i_1 
       (.I0(rd_en),
        .I1(cnt[1]),
        .I2(\cnt_reg[2]_0 ),
        .I3(cnt[2]),
        .I4(\cnt_reg[2]_1 ),
        .I5(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h24666624CCCCCCCC)) 
    \cnt[1]_i_1 
       (.I0(rd_en),
        .I1(cnt[1]),
        .I2(\cnt_reg[2]_0 ),
        .I3(cnt[2]),
        .I4(\cnt_reg[2]_1 ),
        .I5(cnt[0]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h34887708FF00FF00)) 
    \cnt[2]_i_1 
       (.I0(rd_en),
        .I1(cnt[1]),
        .I2(\cnt_reg[2]_0 ),
        .I3(cnt[2]),
        .I4(\cnt_reg[2]_1 ),
        .I5(cnt[0]),
        .O(\cnt[2]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_1 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_1 ),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_1 ),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  LUT6 #(
    .INIT(64'hE7FF00FF27000000)) 
    punt_dout_vld_i_1
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(punt_din_rdy),
        .I4(P2S_dout_vld),
        .I5(punt_dout_vld),
        .O(\cnt_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "puncture" *) 
module ofdm_tx_puncture_0_0_puncture
   (punt_dout_Map_Type,
    punt_dout_rdy,
    punt_dout,
    punt_dout_vld,
    punt_dout_sig_flag,
    punt_din,
    punt_din_rdy,
    punt_din_vld,
    clk,
    punt_din_rate_con,
    punt_din_sig_flag,
    rst_n);
  output [1:0]punt_dout_Map_Type;
  output punt_dout_rdy;
  output punt_dout;
  output punt_dout_vld;
  output punt_dout_sig_flag;
  input [1:0]punt_din;
  input punt_din_rdy;
  input punt_din_vld;
  input clk;
  input [3:0]punt_din_rate_con;
  input punt_din_sig_flag;
  input rst_n;

  wire P2S_dout_vld;
  wire clk;
  wire [2:0]cnt;
  wire \cnt_max[1]_i_1_n_0 ;
  wire \cnt_max[2]_i_1_n_0 ;
  wire \cnt_max_reg_n_0_[1] ;
  wire \cnt_max_reg_n_0_[2] ;
  wire [1:0]punt_din;
  wire [3:0]punt_din_rate_con;
  wire punt_din_rdy;
  wire punt_din_sig_flag;
  wire punt_din_vld;
  wire punt_dout;
  wire [1:0]punt_dout_Map_Type;
  wire \punt_dout_Map_Type[0]_i_1_n_0 ;
  wire \punt_dout_Map_Type[1]_i_1_n_0 ;
  wire punt_dout_rdy;
  wire punt_dout_sig_flag;
  wire punt_dout_vld;
  wire rd_en;
  wire rst_n;
  wire u_Par2Ser_n_0;
  wire u_Par2Ser_n_2;
  wire u_Par2Ser_n_3;
  wire u_counter_n_0;

  LUT6 #(
    .INIT(64'h000001FF00000100)) 
    \cnt_max[1]_i_1 
       (.I0(punt_din_rate_con[3]),
        .I1(punt_din_rate_con[1]),
        .I2(punt_din_rate_con[2]),
        .I3(punt_din_rate_con[0]),
        .I4(punt_din_sig_flag),
        .I5(\cnt_max_reg_n_0_[1] ),
        .O(\cnt_max[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \cnt_max[2]_i_1 
       (.I0(punt_din_rate_con[1]),
        .I1(punt_din_rate_con[0]),
        .I2(punt_din_sig_flag),
        .I3(\cnt_max_reg_n_0_[2] ),
        .O(\cnt_max[2]_i_1_n_0 ));
  FDCE \cnt_max_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_Par2Ser_n_0),
        .D(\cnt_max[1]_i_1_n_0 ),
        .Q(\cnt_max_reg_n_0_[1] ));
  FDCE \cnt_max_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_Par2Ser_n_0),
        .D(\cnt_max[2]_i_1_n_0 ),
        .Q(\cnt_max_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \punt_dout_Map_Type[0]_i_1 
       (.I0(punt_din_rate_con[0]),
        .I1(punt_din_sig_flag),
        .I2(punt_din_rate_con[3]),
        .O(\punt_dout_Map_Type[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \punt_dout_Map_Type[1]_i_1 
       (.I0(punt_din_rate_con[0]),
        .I1(punt_din_sig_flag),
        .I2(punt_din_rate_con[2]),
        .O(\punt_dout_Map_Type[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TID" *) 
  FDCE \punt_dout_Map_Type_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_Par2Ser_n_0),
        .D(\punt_dout_Map_Type[0]_i_1_n_0 ),
        .Q(punt_dout_Map_Type[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TID" *) 
  FDCE \punt_dout_Map_Type_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_Par2Ser_n_0),
        .D(\punt_dout_Map_Type[1]_i_1_n_0 ),
        .Q(punt_dout_Map_Type[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TDATA" *) 
  FDCE punt_dout_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_Par2Ser_n_0),
        .D(u_Par2Ser_n_2),
        .Q(punt_dout));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TSTRB" *) 
  FDCE punt_dout_sig_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_Par2Ser_n_0),
        .D(u_Par2Ser_n_3),
        .Q(punt_dout_sig_flag));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TVALID" *) 
  FDCE punt_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_Par2Ser_n_0),
        .D(u_counter_n_0),
        .Q(punt_dout_vld));
  ofdm_tx_puncture_0_0_Par2Ser u_Par2Ser
       (.P2S_dout_vld(P2S_dout_vld),
        .clk(clk),
        .cnt(cnt),
        .dout_vld_reg_0(u_Par2Ser_n_2),
        .punt_din(punt_din),
        .punt_din_rdy(punt_din_rdy),
        .punt_din_sig_flag(punt_din_sig_flag),
        .punt_din_sig_flag_0(u_Par2Ser_n_3),
        .punt_din_vld(punt_din_vld),
        .punt_dout(punt_dout),
        .punt_dout_rdy(punt_dout_rdy),
        .punt_dout_sig_flag(punt_dout_sig_flag),
        .rd_en(rd_en),
        .rst_n(rst_n),
        .rst_n_0(u_Par2Ser_n_0));
  ofdm_tx_puncture_0_0_counter_in u_counter
       (.P2S_dout_vld(P2S_dout_vld),
        .clk(clk),
        .cnt(cnt),
        .\cnt_reg[0]_0 (u_counter_n_0),
        .\cnt_reg[0]_1 (u_Par2Ser_n_0),
        .\cnt_reg[2]_0 (\cnt_max_reg_n_0_[1] ),
        .\cnt_reg[2]_1 (\cnt_max_reg_n_0_[2] ),
        .punt_din_rdy(punt_din_rdy),
        .punt_dout_vld(punt_dout_vld),
        .rd_en(rd_en));
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
