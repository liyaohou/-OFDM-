// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 10 19:35:20 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_tx_mcu_0_0_sim_netlist.v
// Design      : ofdm_tx_tx_mcu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser
   (dout_vld_reg_0,
    P2S_dout_rdy,
    dout_rdy0__0,
    mcu_dout,
    dout_vld_reg_1,
    clk,
    \cnt_reg[2] ,
    mcu_din_rdy,
    E,
    D);
  output dout_vld_reg_0;
  output P2S_dout_rdy;
  output dout_rdy0__0;
  output mcu_dout;
  input dout_vld_reg_1;
  input clk;
  input \cnt_reg[2] ;
  input mcu_din_rdy;
  input [0:0]E;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire P2S_dout_rdy;
  wire clk;
  wire \cnt_reg[2] ;
  wire [7:0]din_r;
  wire dout_rdy0__0;
  wire dout_vld_reg_0;
  wire dout_vld_reg_1;
  wire mcu_din_rdy;
  wire mcu_dout;

  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[2] ),
        .D(D[0]),
        .Q(din_r[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[2] ),
        .D(D[1]),
        .Q(din_r[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[2] ),
        .D(D[2]),
        .Q(din_r[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[2] ),
        .D(D[3]),
        .Q(din_r[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[2] ),
        .D(D[4]),
        .Q(din_r[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[2] ),
        .D(D[5]),
        .Q(din_r[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[2] ),
        .D(D[6]),
        .Q(din_r[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\cnt_reg[2] ),
        .D(D[7]),
        .Q(din_r[7]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TVALID" *) 
  FDCE dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[2] ),
        .D(dout_vld_reg_1),
        .Q(dout_vld_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1 u_counter_P2S
       (.P2S_dout_rdy(P2S_dout_rdy),
        .Q(din_r),
        .clk(clk),
        .\cnt_reg[2]_0 (dout_vld_reg_0),
        .\cnt_reg[2]_1 (\cnt_reg[2] ),
        .dout_rdy0__0(dout_rdy0__0),
        .mcu_din_rdy(mcu_din_rdy),
        .mcu_dout(mcu_dout));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (E,
    mcu_config_din_vld_0,
    sig_dout_vld_reg,
    sig_dout_vld_reg_0,
    sig_dout_vld_reg_1,
    sig_dout_vld_reg_2,
    sig_dout_vld_reg_3,
    sig_dout_vld_reg_4,
    sig_dout_vld_reg_5,
    sig_dout_vld_reg_6,
    rst_n_0,
    sig_dout_vld_reg_7,
    \cnt_reg[1]_0 ,
    \cnt_reg[1]_1 ,
    \sig_dout_rate_con_reg[1] ,
    P2S_dout_rdy,
    sig_dout_sig_flag,
    sig_dout_rdy_reg,
    mcu_config_din_vld,
    Q,
    rst_n,
    clk);
  output [0:0]E;
  output [0:0]mcu_config_din_vld_0;
  output sig_dout_vld_reg;
  output sig_dout_vld_reg_0;
  output sig_dout_vld_reg_1;
  output sig_dout_vld_reg_2;
  output sig_dout_vld_reg_3;
  output sig_dout_vld_reg_4;
  output sig_dout_vld_reg_5;
  output sig_dout_vld_reg_6;
  output rst_n_0;
  output sig_dout_vld_reg_7;
  output \cnt_reg[1]_0 ;
  output \cnt_reg[1]_1 ;
  input \sig_dout_rate_con_reg[1] ;
  input P2S_dout_rdy;
  input sig_dout_sig_flag;
  input sig_dout_rdy_reg;
  input mcu_config_din_vld;
  input [16:0]Q;
  input rst_n;
  input clk;

  wire [0:0]E;
  wire P2S_dout_rdy;
  wire [16:0]Q;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[1]_1 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire mcu_config_din_vld;
  wire [0:0]mcu_config_din_vld_0;
  wire rst_n;
  wire rst_n_0;
  wire \sig_dout_rate_con[3]_i_3_n_0 ;
  wire \sig_dout_rate_con_reg[1] ;
  wire sig_dout_rdy_reg;
  wire sig_dout_sig_flag;
  wire sig_dout_vld_reg;
  wire sig_dout_vld_reg_0;
  wire sig_dout_vld_reg_1;
  wire sig_dout_vld_reg_2;
  wire sig_dout_vld_reg_3;
  wire sig_dout_vld_reg_4;
  wire sig_dout_vld_reg_5;
  wire sig_dout_vld_reg_6;
  wire sig_dout_vld_reg_7;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\sig_dout_rate_con_reg[1] ),
        .I2(P2S_dout_rdy),
        .I3(sig_dout_sig_flag),
        .I4(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h3FFF8000)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\sig_dout_rate_con_reg[1] ),
        .I2(P2S_dout_rdy),
        .I3(sig_dout_sig_flag),
        .I4(\cnt_reg_n_0_[1] ),
        .O(\cnt[1]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \din_r[0]_i_2 
       (.I0(\sig_dout_rate_con_reg[1] ),
        .I1(Q[16]),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(Q[9]),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(Q[1]),
        .O(sig_dout_vld_reg_5));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \din_r[1]_i_2 
       (.I0(\sig_dout_rate_con_reg[1] ),
        .I1(Q[15]),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(Q[8]),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(Q[0]),
        .O(sig_dout_vld_reg_4));
  LUT5 #(
    .INIT(32'h20222000)) 
    \din_r[2]_i_2 
       (.I0(\sig_dout_rate_con_reg[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(Q[7]),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(Q[14]),
        .O(sig_dout_vld_reg_3));
  LUT5 #(
    .INIT(32'h20222000)) 
    \din_r[3]_i_2 
       (.I0(\sig_dout_rate_con_reg[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(Q[6]),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(Q[13]),
        .O(sig_dout_vld_reg_2));
  LUT4 #(
    .INIT(16'h2000)) 
    \din_r[4]_i_2 
       (.I0(\sig_dout_rate_con_reg[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(Q[5]),
        .O(sig_dout_vld_reg_6));
  LUT5 #(
    .INIT(32'h20222000)) 
    \din_r[5]_i_2 
       (.I0(\sig_dout_rate_con_reg[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(Q[4]),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(Q[12]),
        .O(sig_dout_vld_reg_1));
  LUT5 #(
    .INIT(32'h20222000)) 
    \din_r[6]_i_2 
       (.I0(\sig_dout_rate_con_reg[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(Q[3]),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(Q[11]),
        .O(sig_dout_vld_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h20222000)) 
    \din_r[7]_i_3 
       (.I0(\sig_dout_rate_con_reg[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(Q[10]),
        .O(sig_dout_vld_reg));
  LUT1 #(
    .INIT(2'h1)) 
    mcu_config_dout_rdy_i_2
       (.I0(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0888888888888888)) 
    \sig_dout_rate_con[3]_i_1 
       (.I0(mcu_config_din_vld),
        .I1(sig_dout_rdy_reg),
        .I2(\sig_dout_rate_con[3]_i_3_n_0 ),
        .I3(\sig_dout_rate_con_reg[1] ),
        .I4(P2S_dout_rdy),
        .I5(sig_dout_sig_flag),
        .O(mcu_config_din_vld_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_dout_rate_con[3]_i_3 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .O(\sig_dout_rate_con[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    sig_dout_rdy_i_1
       (.I0(\sig_dout_rate_con[3]_i_3_n_0 ),
        .I1(\sig_dout_rate_con_reg[1] ),
        .I2(P2S_dout_rdy),
        .I3(sig_dout_sig_flag),
        .I4(mcu_config_din_vld),
        .I5(sig_dout_rdy_reg),
        .O(sig_dout_vld_reg_7));
  LUT6 #(
    .INIT(64'hDFFF0000DFFFFFFF)) 
    sig_dout_sig_flag_i_1
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\sig_dout_rate_con_reg[1] ),
        .I3(P2S_dout_rdy),
        .I4(sig_dout_sig_flag),
        .I5(sig_dout_rdy_reg),
        .O(\cnt_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hD0F0F0F0DFFFFFFF)) 
    sig_dout_vld_i_1
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\sig_dout_rate_con_reg[1] ),
        .I3(P2S_dout_rdy),
        .I4(sig_dout_sig_flag),
        .I5(sig_dout_rdy_reg),
        .O(\cnt_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00000000DFFFFFFF)) 
    \sig_frame[23]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\sig_dout_rate_con_reg[1] ),
        .I3(P2S_dout_rdy),
        .I4(sig_dout_sig_flag),
        .I5(sig_dout_rdy_reg),
        .O(E));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized0
   (mcu_mac_dout_rdy,
    E,
    mcu_dout_sig_flag,
    D,
    mcu_mac_din_vld_0,
    clk,
    \cnt_reg[8]_0 ,
    P2S_dout_rdy,
    phy_rst_n,
    sig_dout_vld,
    mcu_mac_din_vld,
    mcu_mac_din,
    \din_r_reg[0] ,
    \din_r_reg[1] ,
    \din_r_reg[2] ,
    \din_r_reg[3] ,
    \din_r_reg[4] ,
    \din_r_reg[5] ,
    \din_r_reg[6] ,
    \din_r_reg[7] ,
    dout_vld_reg,
    dout_rdy0__0);
  output mcu_mac_dout_rdy;
  output [0:0]E;
  output mcu_dout_sig_flag;
  output [7:0]D;
  output mcu_mac_din_vld_0;
  input clk;
  input \cnt_reg[8]_0 ;
  input P2S_dout_rdy;
  input phy_rst_n;
  input sig_dout_vld;
  input mcu_mac_din_vld;
  input [7:0]mcu_mac_din;
  input \din_r_reg[0] ;
  input \din_r_reg[1] ;
  input \din_r_reg[2] ;
  input \din_r_reg[3] ;
  input \din_r_reg[4] ;
  input \din_r_reg[5] ;
  input \din_r_reg[6] ;
  input \din_r_reg[7] ;
  input dout_vld_reg;
  input dout_rdy0__0;

  wire [7:0]D;
  wire [0:0]E;
  wire P2S_dout_rdy;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[6]_i_2_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[8]_i_1_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt[8]_i_3_n_0 ;
  wire [8:0]cnt_reg;
  wire \cnt_reg[8]_0 ;
  wire \din_r_reg[0] ;
  wire \din_r_reg[1] ;
  wire \din_r_reg[2] ;
  wire \din_r_reg[3] ;
  wire \din_r_reg[4] ;
  wire \din_r_reg[5] ;
  wire \din_r_reg[6] ;
  wire \din_r_reg[7] ;
  wire dout_rdy0__0;
  wire dout_vld_i_2_n_0;
  wire dout_vld_reg;
  wire mcu_dout_sig_flag;
  wire [7:0]mcu_mac_din;
  wire mcu_mac_din_vld;
  wire mcu_mac_din_vld_0;
  wire mcu_mac_dout_rdy;
  wire mcu_mac_dout_rdy_INST_0_i_1_n_0;
  wire phy_rst_n;
  wire sig_dout_vld;

  LUT6 #(
    .INIT(64'h5554555555555555)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .I1(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[7]),
        .I5(cnt_reg[8]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA54AA55AA55AA55)) 
    \cnt[2]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[7]),
        .I5(cnt_reg[8]),
        .O(\cnt[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \cnt[3]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5515AAAA5555AAAA)) 
    \cnt[4]_i_1 
       (.I0(\cnt[4]_i_2_n_0 ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[5]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(cnt_reg[4]),
        .I5(dout_vld_i_2_n_0),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt[4]_i_2 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[2]),
        .O(\cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5A1A5A5A5A5A5A5A)) 
    \cnt[5]_i_1 
       (.I0(\cnt[5]_i_2_n_0 ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[5]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(cnt_reg[4]),
        .I5(dout_vld_i_2_n_0),
        .O(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[5]_i_2 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[3]),
        .O(\cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6626666666666666)) 
    \cnt[6]_i_1 
       (.I0(\cnt[8]_i_3_n_0 ),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[5]),
        .I3(\cnt[6]_i_2_n_0 ),
        .I4(cnt_reg[4]),
        .I5(dout_vld_i_2_n_0),
        .O(\cnt[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[6]_i_2 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(\cnt[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6A006A6A)) 
    \cnt[7]_i_1 
       (.I0(cnt_reg[7]),
        .I1(cnt_reg[6]),
        .I2(\cnt[8]_i_3_n_0 ),
        .I3(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I4(dout_vld_i_2_n_0),
        .O(\cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \cnt[8]_i_1 
       (.I0(phy_rst_n),
        .I1(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[7]),
        .I5(cnt_reg[8]),
        .O(\cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA00006AAA6AAA)) 
    \cnt[8]_i_2 
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[7]),
        .I2(\cnt[8]_i_3_n_0 ),
        .I3(cnt_reg[6]),
        .I4(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I5(dout_vld_i_2_n_0),
        .O(\cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[8]_i_3 
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[2]),
        .I5(cnt_reg[4]),
        .O(\cnt[8]_i_3_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt_reg[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt_reg[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt_reg[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(cnt_reg[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt_reg[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[7]_i_1_n_0 ),
        .Q(cnt_reg[7]));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(\cnt[8]_i_1_n_0 ),
        .CLR(\cnt_reg[8]_0 ),
        .D(\cnt[8]_i_2_n_0 ),
        .Q(cnt_reg[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \din_r[0]_i_1 
       (.I0(mcu_mac_din[0]),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(\din_r_reg[0] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \din_r[1]_i_1 
       (.I0(mcu_mac_din[1]),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(\din_r_reg[1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \din_r[2]_i_1 
       (.I0(mcu_mac_din[2]),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(\din_r_reg[2] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \din_r[3]_i_1 
       (.I0(mcu_mac_din[3]),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(\din_r_reg[3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \din_r[4]_i_1 
       (.I0(mcu_mac_din[4]),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(\din_r_reg[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \din_r[5]_i_1 
       (.I0(mcu_mac_din[5]),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(\din_r_reg[5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \din_r[6]_i_1 
       (.I0(mcu_mac_din[6]),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(\din_r_reg[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h8A888088)) 
    \din_r[7]_i_1 
       (.I0(P2S_dout_rdy),
        .I1(sig_dout_vld),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(dout_vld_i_2_n_0),
        .I4(mcu_mac_din_vld),
        .O(E));
  LUT4 #(
    .INIT(16'hFB08)) 
    \din_r[7]_i_2 
       (.I0(mcu_mac_din[7]),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(\din_r_reg[7] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFB08FB08FFFFFB08)) 
    dout_vld_i_1
       (.I0(mcu_mac_din_vld),
        .I1(dout_vld_i_2_n_0),
        .I2(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I3(sig_dout_vld),
        .I4(dout_vld_reg),
        .I5(dout_rdy0__0),
        .O(mcu_mac_din_vld_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    dout_vld_i_2
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[8]),
        .O(dout_vld_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    mcu_dout_sig_flag_INST_0
       (.I0(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[7]),
        .I4(cnt_reg[8]),
        .O(mcu_dout_sig_flag));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    mcu_mac_dout_rdy_INST_0
       (.I0(mcu_mac_dout_rdy_INST_0_i_1_n_0),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[7]),
        .I4(cnt_reg[8]),
        .I5(P2S_dout_rdy),
        .O(mcu_mac_dout_rdy));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    mcu_mac_dout_rdy_INST_0_i_1
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[4]),
        .O(mcu_mac_dout_rdy_INST_0_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1
   (P2S_dout_rdy,
    dout_rdy0__0,
    mcu_dout,
    mcu_din_rdy,
    \cnt_reg[2]_0 ,
    Q,
    clk,
    \cnt_reg[2]_1 );
  output P2S_dout_rdy;
  output dout_rdy0__0;
  output mcu_dout;
  input mcu_din_rdy;
  input \cnt_reg[2]_0 ;
  input [7:0]Q;
  input clk;
  input \cnt_reg[2]_1 ;

  wire P2S_dout_rdy;
  wire [7:0]Q;
  wire clk;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt_reg[2]_0 ;
  wire \cnt_reg[2]_1 ;
  wire dout_rdy0__0;
  wire mcu_din_rdy;
  wire mcu_dout;
  wire mcu_dout_INST_0_i_1_n_0;
  wire mcu_dout_INST_0_i_2_n_0;

  LUT3 #(
    .INIT(8'h78)) 
    \cnt[0]_i_1 
       (.I0(mcu_din_rdy),
        .I1(\cnt_reg[2]_0 ),
        .I2(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(mcu_din_rdy),
        .I2(\cnt_reg[2]_0 ),
        .I3(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[2]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(mcu_din_rdy),
        .I3(\cnt_reg[2]_0 ),
        .I4(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[2]_1 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[2]_1 ),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[2]_1 ),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    dout_vld_i_3
       (.I0(cnt[0]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(\cnt_reg[2]_0 ),
        .I4(mcu_din_rdy),
        .O(dout_rdy0__0));
  MUXF7 mcu_dout_INST_0
       (.I0(mcu_dout_INST_0_i_1_n_0),
        .I1(mcu_dout_INST_0_i_2_n_0),
        .O(mcu_dout),
        .S(cnt[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mcu_dout_INST_0_i_1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(cnt[1]),
        .I3(Q[1]),
        .I4(cnt[0]),
        .I5(Q[0]),
        .O(mcu_dout_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mcu_dout_INST_0_i_2
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(cnt[1]),
        .I3(Q[5]),
        .I4(cnt[0]),
        .I5(Q[4]),
        .O(mcu_dout_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    mcu_mac_dout_rdy_INST_0_i_2
       (.I0(mcu_din_rdy),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(\cnt_reg[2]_0 ),
        .O(P2S_dout_rdy));
endmodule

(* CHECK_LICENSE_TYPE = "ofdm_tx_tx_mcu_0_0,tx_mcu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tx_mcu,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    mcu_config_din,
    mcu_config_din_vld,
    mcu_config_din_start,
    mcu_config_dout_rdy,
    mcu_mac_din,
    mcu_mac_din_vld,
    mcu_mac_dout_rdy,
    mcu_din_rdy,
    mcu_dout,
    mcu_dout_vld,
    mcu_dout_sig_flag,
    mcu_dout_rate_con,
    mcu_dout_scram_seed,
    mcu_dout_scram_load,
    phy_rst_n,
    tx_end,
    TxPWR);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_mcu_config:s_axis_mcu_mac:m_axis_mcu, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TDATA" *) input [20:0]mcu_config_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TVALID" *) input mcu_config_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TSTRB" *) input mcu_config_din_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_mcu_config, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output mcu_config_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TDATA" *) input [7:0]mcu_mac_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TVALID" *) input mcu_mac_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_mcu_mac, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output mcu_mac_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TREADY" *) input mcu_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TDATA" *) output mcu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TVALID" *) output mcu_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TSTRB" *) output mcu_dout_sig_flag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_mcu, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [3:0]mcu_dout_rate_con;
  output [6:0]mcu_dout_scram_seed;
  output mcu_dout_scram_load;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 phy_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output phy_rst_n;
  input tx_end;
  output [2:0]TxPWR;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [20:0]mcu_config_din;
  wire mcu_config_din_start;
  wire mcu_config_din_vld;
  wire mcu_config_dout_rdy;
  wire mcu_din_rdy;
  wire mcu_dout;
  wire [3:1]\^mcu_dout_rate_con ;
  wire mcu_dout_scram_load;
  wire [4:4]\^mcu_dout_scram_seed ;
  wire mcu_dout_sig_flag;
  wire mcu_dout_vld;
  wire [7:0]mcu_mac_din;
  wire mcu_mac_din_vld;
  wire mcu_mac_dout_rdy;
  wire phy_rst_n;
  wire rst_n;
  wire tx_end;

  assign TxPWR[2:0] = mcu_config_din[2:0];
  assign mcu_dout_rate_con[3:1] = \^mcu_dout_rate_con [3:1];
  assign mcu_dout_rate_con[0] = \<const1> ;
  assign mcu_dout_scram_seed[6] = \^mcu_dout_scram_seed [4];
  assign mcu_dout_scram_seed[5] = \<const0> ;
  assign mcu_dout_scram_seed[4] = \^mcu_dout_scram_seed [4];
  assign mcu_dout_scram_seed[3] = \^mcu_dout_scram_seed [4];
  assign mcu_dout_scram_seed[2] = \^mcu_dout_scram_seed [4];
  assign mcu_dout_scram_seed[1] = \<const0> ;
  assign mcu_dout_scram_seed[0] = \^mcu_dout_scram_seed [4];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_mcu inst
       (.clk(clk),
        .dout_vld_reg(mcu_dout_vld),
        .mcu_config_din(mcu_config_din[20:3]),
        .mcu_config_din_start(mcu_config_din_start),
        .mcu_config_din_vld(mcu_config_din_vld),
        .mcu_config_dout_rdy(mcu_config_dout_rdy),
        .mcu_din_rdy(mcu_din_rdy),
        .mcu_dout(mcu_dout),
        .mcu_dout_rate_con(\^mcu_dout_rate_con ),
        .mcu_dout_scram_load(mcu_dout_scram_load),
        .mcu_dout_scram_seed(\^mcu_dout_scram_seed ),
        .mcu_dout_sig_flag(mcu_dout_sig_flag),
        .mcu_mac_din(mcu_mac_din),
        .mcu_mac_din_vld(mcu_mac_din_vld),
        .mcu_mac_dout_rdy(mcu_mac_dout_rdy),
        .phy_rst_n(phy_rst_n),
        .rst_n(rst_n),
        .tx_end(tx_end));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_gen_pkt_sig
   (sig_dout_vld,
    rst_n_0,
    sig_dout_vld_reg_0,
    sig_dout_vld_reg_1,
    sig_dout_vld_reg_2,
    sig_dout_vld_reg_3,
    sig_dout_vld_reg_4,
    sig_dout_vld_reg_5,
    sig_dout_vld_reg_6,
    sig_dout_vld_reg_7,
    mcu_dout_rate_con,
    clk,
    P2S_dout_rdy,
    mcu_config_din_vld,
    rst_n,
    mcu_config_din);
  output sig_dout_vld;
  output rst_n_0;
  output sig_dout_vld_reg_0;
  output sig_dout_vld_reg_1;
  output sig_dout_vld_reg_2;
  output sig_dout_vld_reg_3;
  output sig_dout_vld_reg_4;
  output sig_dout_vld_reg_5;
  output sig_dout_vld_reg_6;
  output sig_dout_vld_reg_7;
  output [2:0]mcu_dout_rate_con;
  input clk;
  input P2S_dout_rdy;
  input mcu_config_din_vld;
  input rst_n;
  input [17:0]mcu_config_din;

  wire P2S_dout_rdy;
  wire clk;
  wire [11:0]length;
  wire [17:0]mcu_config_din;
  wire mcu_config_din_vld;
  wire [2:0]mcu_dout_rate_con;
  wire rst_n;
  wire rst_n_0;
  wire [3:1]sig_dout_rate_con;
  wire sig_dout_rdy_reg_n_0;
  wire sig_dout_sig_flag;
  wire sig_dout_vld;
  wire sig_dout_vld_reg_0;
  wire sig_dout_vld_reg_1;
  wire sig_dout_vld_reg_2;
  wire sig_dout_vld_reg_3;
  wire sig_dout_vld_reg_4;
  wire sig_dout_vld_reg_5;
  wire sig_dout_vld_reg_6;
  wire sig_dout_vld_reg_7;
  wire [23:6]sig_frame;
  wire \sig_frame[6]_i_1_n_0 ;
  wire \sig_frame[6]_i_2_n_0 ;
  wire \sig_frame[6]_i_3_n_0 ;
  wire u_counter_n_0;
  wire u_counter_n_1;
  wire u_counter_n_11;
  wire u_counter_n_12;
  wire u_counter_n_13;

  FDCE \length_reg[0] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[17]),
        .Q(length[0]));
  FDCE \length_reg[10] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[7]),
        .Q(length[10]));
  FDCE \length_reg[11] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[6]),
        .Q(length[11]));
  FDCE \length_reg[1] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[16]),
        .Q(length[1]));
  FDCE \length_reg[2] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[15]),
        .Q(length[2]));
  FDCE \length_reg[3] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[14]),
        .Q(length[3]));
  FDCE \length_reg[4] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[13]),
        .Q(length[4]));
  FDCE \length_reg[5] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[12]),
        .Q(length[5]));
  FDCE \length_reg[6] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[11]),
        .Q(length[6]));
  FDCE \length_reg[7] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[10]),
        .Q(length[7]));
  FDCE \length_reg[8] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[9]),
        .Q(length[8]));
  FDCE \length_reg[9] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(mcu_config_din[8]),
        .Q(length[9]));
  LUT6 #(
    .INIT(64'h0400010000040020)) 
    \sig_dout_rate_con[1]_i_1 
       (.I0(mcu_config_din[0]),
        .I1(mcu_config_din[5]),
        .I2(mcu_config_din[3]),
        .I3(mcu_config_din[4]),
        .I4(mcu_config_din[2]),
        .I5(mcu_config_din[1]),
        .O(sig_dout_rate_con[1]));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFBEBFF)) 
    \sig_dout_rate_con[2]_i_1 
       (.I0(mcu_config_din[0]),
        .I1(mcu_config_din[5]),
        .I2(mcu_config_din[3]),
        .I3(mcu_config_din[4]),
        .I4(mcu_config_din[2]),
        .I5(mcu_config_din[1]),
        .O(sig_dout_rate_con[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFDEFFEFF7)) 
    \sig_dout_rate_con[3]_i_2 
       (.I0(mcu_config_din[2]),
        .I1(mcu_config_din[3]),
        .I2(mcu_config_din[5]),
        .I3(mcu_config_din[4]),
        .I4(mcu_config_din[1]),
        .I5(mcu_config_din[0]),
        .O(sig_dout_rate_con[3]));
  FDCE \sig_dout_rate_con_reg[1] 
       (.C(clk),
        .CE(u_counter_n_1),
        .CLR(rst_n_0),
        .D(sig_dout_rate_con[1]),
        .Q(mcu_dout_rate_con[0]));
  FDPE \sig_dout_rate_con_reg[2] 
       (.C(clk),
        .CE(u_counter_n_1),
        .D(sig_dout_rate_con[2]),
        .PRE(rst_n_0),
        .Q(mcu_dout_rate_con[1]));
  FDPE \sig_dout_rate_con_reg[3] 
       (.C(clk),
        .CE(u_counter_n_1),
        .D(sig_dout_rate_con[3]),
        .PRE(rst_n_0),
        .Q(mcu_dout_rate_con[2]));
  FDPE sig_dout_rdy_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_counter_n_11),
        .PRE(rst_n_0),
        .Q(sig_dout_rdy_reg_n_0));
  FDPE sig_dout_sig_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_counter_n_12),
        .PRE(rst_n_0),
        .Q(sig_dout_sig_flag));
  FDCE sig_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(u_counter_n_13),
        .Q(sig_dout_vld));
  LUT5 #(
    .INIT(32'h69969669)) 
    \sig_frame[6]_i_1 
       (.I0(\sig_frame[6]_i_2_n_0 ),
        .I1(\sig_frame[6]_i_3_n_0 ),
        .I2(length[3]),
        .I3(length[1]),
        .I4(length[0]),
        .O(\sig_frame[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sig_frame[6]_i_2 
       (.I0(length[10]),
        .I1(length[9]),
        .I2(mcu_dout_rate_con[1]),
        .I3(mcu_dout_rate_con[2]),
        .I4(length[11]),
        .I5(mcu_dout_rate_con[0]),
        .O(\sig_frame[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sig_frame[6]_i_3 
       (.I0(length[5]),
        .I1(length[2]),
        .I2(length[7]),
        .I3(length[8]),
        .I4(length[4]),
        .I5(length[6]),
        .O(\sig_frame[6]_i_3_n_0 ));
  FDCE \sig_frame_reg[10] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[3]),
        .Q(sig_frame[10]));
  FDCE \sig_frame_reg[11] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[4]),
        .Q(sig_frame[11]));
  FDCE \sig_frame_reg[12] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[5]),
        .Q(sig_frame[12]));
  FDCE \sig_frame_reg[13] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[6]),
        .Q(sig_frame[13]));
  FDCE \sig_frame_reg[14] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[7]),
        .Q(sig_frame[14]));
  FDCE \sig_frame_reg[15] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[8]),
        .Q(sig_frame[15]));
  FDCE \sig_frame_reg[16] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[9]),
        .Q(sig_frame[16]));
  FDCE \sig_frame_reg[17] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[10]),
        .Q(sig_frame[17]));
  FDCE \sig_frame_reg[18] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[11]),
        .Q(sig_frame[18]));
  FDCE \sig_frame_reg[20] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(1'b1),
        .Q(sig_frame[20]));
  FDCE \sig_frame_reg[21] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(mcu_dout_rate_con[0]),
        .Q(sig_frame[21]));
  FDCE \sig_frame_reg[22] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(mcu_dout_rate_con[1]),
        .Q(sig_frame[22]));
  FDCE \sig_frame_reg[23] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(mcu_dout_rate_con[2]),
        .Q(sig_frame[23]));
  FDCE \sig_frame_reg[6] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(\sig_frame[6]_i_1_n_0 ),
        .Q(sig_frame[6]));
  FDCE \sig_frame_reg[7] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[0]),
        .Q(sig_frame[7]));
  FDCE \sig_frame_reg[8] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[1]),
        .Q(sig_frame[8]));
  FDCE \sig_frame_reg[9] 
       (.C(clk),
        .CE(u_counter_n_0),
        .CLR(rst_n_0),
        .D(length[2]),
        .Q(sig_frame[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter u_counter
       (.E(u_counter_n_0),
        .P2S_dout_rdy(P2S_dout_rdy),
        .Q({sig_frame[23:20],sig_frame[18:6]}),
        .clk(clk),
        .\cnt_reg[1]_0 (u_counter_n_12),
        .\cnt_reg[1]_1 (u_counter_n_13),
        .mcu_config_din_vld(mcu_config_din_vld),
        .mcu_config_din_vld_0(u_counter_n_1),
        .rst_n(rst_n),
        .rst_n_0(rst_n_0),
        .\sig_dout_rate_con_reg[1] (sig_dout_vld),
        .sig_dout_rdy_reg(sig_dout_rdy_reg_n_0),
        .sig_dout_sig_flag(sig_dout_sig_flag),
        .sig_dout_vld_reg(sig_dout_vld_reg_0),
        .sig_dout_vld_reg_0(sig_dout_vld_reg_1),
        .sig_dout_vld_reg_1(sig_dout_vld_reg_2),
        .sig_dout_vld_reg_2(sig_dout_vld_reg_3),
        .sig_dout_vld_reg_3(sig_dout_vld_reg_4),
        .sig_dout_vld_reg_4(sig_dout_vld_reg_5),
        .sig_dout_vld_reg_5(sig_dout_vld_reg_6),
        .sig_dout_vld_reg_6(sig_dout_vld_reg_7),
        .sig_dout_vld_reg_7(u_counter_n_11));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_mcu
   (mcu_mac_dout_rdy,
    phy_rst_n,
    mcu_dout_rate_con,
    dout_vld_reg,
    mcu_dout_scram_seed,
    mcu_dout_scram_load,
    mcu_dout_sig_flag,
    mcu_dout,
    mcu_config_dout_rdy,
    mcu_config_din_vld,
    clk,
    mcu_config_din,
    mcu_din_rdy,
    mcu_mac_din_vld,
    mcu_mac_din,
    mcu_config_din_start,
    rst_n,
    tx_end);
  output mcu_mac_dout_rdy;
  output phy_rst_n;
  output [2:0]mcu_dout_rate_con;
  output dout_vld_reg;
  output [0:0]mcu_dout_scram_seed;
  output mcu_dout_scram_load;
  output mcu_dout_sig_flag;
  output mcu_dout;
  output mcu_config_dout_rdy;
  input mcu_config_din_vld;
  input clk;
  input [17:0]mcu_config_din;
  input mcu_din_rdy;
  input mcu_mac_din_vld;
  input [7:0]mcu_mac_din;
  input mcu_config_din_start;
  input rst_n;
  input tx_end;

  wire [7:0]P2S_din;
  wire P2S_dout_rdy;
  wire clk;
  wire dout_rdy0__0;
  wire dout_vld_reg;
  wire [17:0]mcu_config_din;
  wire mcu_config_din_start;
  wire mcu_config_din_vld;
  wire mcu_config_dout_rdy;
  wire mcu_config_dout_rdy_i_1_n_0;
  wire mcu_din_rdy;
  wire mcu_dout;
  wire [2:0]mcu_dout_rate_con;
  wire mcu_dout_scram_load;
  wire mcu_dout_scram_load_i_1_n_0;
  wire [0:0]mcu_dout_scram_seed;
  wire mcu_dout_sig_flag;
  wire [7:0]mcu_mac_din;
  wire mcu_mac_din_vld;
  wire mcu_mac_dout_rdy;
  wire p_0_in;
  wire phy_rst_n;
  wire rst_n;
  wire sig_dout_vld;
  wire tx_end;
  wire u_counter_n_11;
  wire u_tx_gen_pkt_sig_n_1;
  wire u_tx_gen_pkt_sig_n_2;
  wire u_tx_gen_pkt_sig_n_3;
  wire u_tx_gen_pkt_sig_n_4;
  wire u_tx_gen_pkt_sig_n_5;
  wire u_tx_gen_pkt_sig_n_6;
  wire u_tx_gen_pkt_sig_n_7;
  wire u_tx_gen_pkt_sig_n_8;
  wire u_tx_gen_pkt_sig_n_9;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser Par2Ser_u2
       (.D(P2S_din),
        .E(wr_en),
        .P2S_dout_rdy(P2S_dout_rdy),
        .clk(clk),
        .\cnt_reg[2] (u_tx_gen_pkt_sig_n_1),
        .dout_rdy0__0(dout_rdy0__0),
        .dout_vld_reg_0(dout_vld_reg),
        .dout_vld_reg_1(u_counter_n_11),
        .mcu_din_rdy(mcu_din_rdy),
        .mcu_dout(mcu_dout));
  LUT3 #(
    .INIT(8'hBA)) 
    mcu_config_dout_rdy_i_1
       (.I0(tx_end),
        .I1(mcu_config_din_vld),
        .I2(mcu_config_dout_rdy),
        .O(mcu_config_dout_rdy_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TREADY" *) 
  FDPE mcu_config_dout_rdy_reg
       (.C(clk),
        .CE(1'b1),
        .D(mcu_config_dout_rdy_i_1_n_0),
        .PRE(u_tx_gen_pkt_sig_n_1),
        .Q(mcu_config_dout_rdy));
  LUT1 #(
    .INIT(2'h1)) 
    mcu_dout_scram_load_i_1
       (.I0(phy_rst_n),
        .O(mcu_dout_scram_load_i_1_n_0));
  FDCE mcu_dout_scram_load_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_tx_gen_pkt_sig_n_1),
        .D(mcu_dout_scram_load_i_1_n_0),
        .Q(mcu_dout_scram_load));
  FDCE \mcu_dout_scram_seed_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_tx_gen_pkt_sig_n_1),
        .D(1'b1),
        .Q(mcu_dout_scram_seed));
  LUT1 #(
    .INIT(2'h1)) 
    phy_rst_n_i_1
       (.I0(mcu_config_din_start),
        .O(p_0_in));
  FDPE phy_rst_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .PRE(u_tx_gen_pkt_sig_n_1),
        .Q(phy_rst_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized0 u_counter
       (.D(P2S_din),
        .E(wr_en),
        .P2S_dout_rdy(P2S_dout_rdy),
        .clk(clk),
        .\cnt_reg[8]_0 (u_tx_gen_pkt_sig_n_1),
        .\din_r_reg[0] (u_tx_gen_pkt_sig_n_8),
        .\din_r_reg[1] (u_tx_gen_pkt_sig_n_7),
        .\din_r_reg[2] (u_tx_gen_pkt_sig_n_6),
        .\din_r_reg[3] (u_tx_gen_pkt_sig_n_5),
        .\din_r_reg[4] (u_tx_gen_pkt_sig_n_9),
        .\din_r_reg[5] (u_tx_gen_pkt_sig_n_4),
        .\din_r_reg[6] (u_tx_gen_pkt_sig_n_3),
        .\din_r_reg[7] (u_tx_gen_pkt_sig_n_2),
        .dout_rdy0__0(dout_rdy0__0),
        .dout_vld_reg(dout_vld_reg),
        .mcu_dout_sig_flag(mcu_dout_sig_flag),
        .mcu_mac_din(mcu_mac_din),
        .mcu_mac_din_vld(mcu_mac_din_vld),
        .mcu_mac_din_vld_0(u_counter_n_11),
        .mcu_mac_dout_rdy(mcu_mac_dout_rdy),
        .phy_rst_n(phy_rst_n),
        .sig_dout_vld(sig_dout_vld));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_gen_pkt_sig u_tx_gen_pkt_sig
       (.P2S_dout_rdy(P2S_dout_rdy),
        .clk(clk),
        .mcu_config_din(mcu_config_din),
        .mcu_config_din_vld(mcu_config_din_vld),
        .mcu_dout_rate_con(mcu_dout_rate_con),
        .rst_n(rst_n),
        .rst_n_0(u_tx_gen_pkt_sig_n_1),
        .sig_dout_vld(sig_dout_vld),
        .sig_dout_vld_reg_0(u_tx_gen_pkt_sig_n_2),
        .sig_dout_vld_reg_1(u_tx_gen_pkt_sig_n_3),
        .sig_dout_vld_reg_2(u_tx_gen_pkt_sig_n_4),
        .sig_dout_vld_reg_3(u_tx_gen_pkt_sig_n_5),
        .sig_dout_vld_reg_4(u_tx_gen_pkt_sig_n_6),
        .sig_dout_vld_reg_5(u_tx_gen_pkt_sig_n_7),
        .sig_dout_vld_reg_6(u_tx_gen_pkt_sig_n_8),
        .sig_dout_vld_reg_7(u_tx_gen_pkt_sig_n_9));
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
