// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:19 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_interleaver_2_0_0_sim_netlist.v
// Design      : ofdm_tx_interleaver_2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser
   (cnt_last,
    dout_vld,
    intv2_dout,
    clk,
    \cnt_reg[0] ,
    u2_P2S_dout,
    intv2_dout1__2,
    S2P_dout_vld,
    intv2_din_rdy,
    \din_r_reg[1]_0 ,
    \din_r_reg[0]_0 );
  output cnt_last;
  output dout_vld;
  output intv2_dout;
  input clk;
  input \cnt_reg[0] ;
  input u2_P2S_dout;
  input intv2_dout1__2;
  input S2P_dout_vld;
  input intv2_din_rdy;
  input \din_r_reg[1]_0 ;
  input \din_r_reg[0]_0 ;

  wire S2P_dout_vld;
  wire clk;
  wire cnt_last;
  wire \cnt_reg[0] ;
  wire \din_r[0]_i_1_n_0 ;
  wire \din_r[1]_i_1_n_0 ;
  wire \din_r_reg[0]_0 ;
  wire \din_r_reg[1]_0 ;
  wire \din_r_reg_n_0_[0] ;
  wire \din_r_reg_n_0_[1] ;
  wire dout_vld;
  wire intv2_din_rdy;
  wire intv2_dout;
  wire intv2_dout1__2;
  wire u2_P2S_dout;
  wire u_counter_P2S_n_2;

  LUT6 #(
    .INIT(64'hAEEEFFFFA2220000)) 
    \din_r[0]_i_1 
       (.I0(\din_r_reg[0]_0 ),
        .I1(dout_vld),
        .I2(cnt_last),
        .I3(intv2_din_rdy),
        .I4(S2P_dout_vld),
        .I5(\din_r_reg_n_0_[0] ),
        .O(\din_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEFFFFA2220000)) 
    \din_r[1]_i_1 
       (.I0(\din_r_reg[1]_0 ),
        .I1(dout_vld),
        .I2(cnt_last),
        .I3(intv2_din_rdy),
        .I4(S2P_dout_vld),
        .I5(\din_r_reg_n_0_[1] ),
        .O(\din_r[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(\din_r[0]_i_1_n_0 ),
        .Q(\din_r_reg_n_0_[0] ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(\din_r[1]_i_1_n_0 ),
        .Q(\din_r_reg_n_0_[1] ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TVALID" *) 
  FDCE dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(u_counter_P2S_n_2),
        .Q(dout_vld));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1 u_counter_P2S
       (.S2P_dout_vld(S2P_dout_vld),
        .clk(clk),
        .\cnt_reg[0]_0 (cnt_last),
        .\cnt_reg[0]_1 (\cnt_reg[0] ),
        .\cnt_reg[0]_2 (dout_vld),
        .dout_vld_reg(u_counter_P2S_n_2),
        .intv2_din_rdy(intv2_din_rdy),
        .intv2_dout(intv2_dout),
        .intv2_dout1__2(intv2_dout1__2),
        .intv2_dout_0(\din_r_reg_n_0_[1] ),
        .intv2_dout_1(\din_r_reg_n_0_[0] ),
        .u2_P2S_dout(u2_P2S_dout));
endmodule

(* ORIG_REF_NAME = "Par2Ser" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser__parameterized0
   (dout_vld_reg_0,
    rd_en__0,
    En_cnt,
    u2_P2S_dout,
    clk,
    \cnt_reg[0] ,
    S2P_dout_vld,
    intv2_din_rdy,
    cnt_last,
    dout_vld,
    \din_r_reg[1]_0 ,
    \din_r_reg[0]_0 );
  output dout_vld_reg_0;
  output rd_en__0;
  output En_cnt;
  output u2_P2S_dout;
  input clk;
  input \cnt_reg[0] ;
  input S2P_dout_vld;
  input intv2_din_rdy;
  input cnt_last;
  input dout_vld;
  input \din_r_reg[1]_0 ;
  input \din_r_reg[0]_0 ;

  wire En_cnt;
  wire S2P_dout_vld;
  wire clk;
  wire cnt;
  wire cnt_last;
  wire \cnt_reg[0] ;
  wire \din_r[0]_i_1_n_0 ;
  wire \din_r[1]_i_1_n_0 ;
  wire \din_r_reg[0]_0 ;
  wire \din_r_reg[1]_0 ;
  wire \din_r_reg_n_0_[0] ;
  wire \din_r_reg_n_0_[1] ;
  wire dout_vld;
  wire dout_vld_reg_0;
  wire intv2_din_rdy;
  wire rd_en__0;
  wire u2_P2S_dout;
  wire u_counter_P2S_n_3;

  LUT3 #(
    .INIT(8'hE0)) 
    \cnt[4]_i_1 
       (.I0(dout_vld_reg_0),
        .I1(dout_vld),
        .I2(intv2_din_rdy),
        .O(En_cnt));
  LUT6 #(
    .INIT(64'hEEAEFFFF22A20000)) 
    \din_r[0]_i_1 
       (.I0(\din_r_reg[0]_0 ),
        .I1(dout_vld_reg_0),
        .I2(intv2_din_rdy),
        .I3(cnt),
        .I4(S2P_dout_vld),
        .I5(\din_r_reg_n_0_[0] ),
        .O(\din_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEFFFF22A20000)) 
    \din_r[1]_i_1 
       (.I0(\din_r_reg[1]_0 ),
        .I1(dout_vld_reg_0),
        .I2(intv2_din_rdy),
        .I3(cnt),
        .I4(S2P_dout_vld),
        .I5(\din_r_reg_n_0_[1] ),
        .O(\din_r[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(\din_r[0]_i_1_n_0 ),
        .Q(\din_r_reg_n_0_[0] ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \din_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(\din_r[1]_i_1_n_0 ),
        .Q(\din_r_reg_n_0_[1] ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TVALID" *) 
  FDCE dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(u_counter_P2S_n_3),
        .Q(dout_vld_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized2 u_counter_P2S
       (.S2P_dout_vld(S2P_dout_vld),
        .clk(clk),
        .cnt(cnt),
        .cnt_last(cnt_last),
        .\cnt_reg[0]_0 (\cnt_reg[0] ),
        .\cnt_reg[0]_1 (dout_vld_reg_0),
        .dout_vld(dout_vld),
        .dout_vld_reg(u_counter_P2S_n_3),
        .intv2_din_rdy(intv2_din_rdy),
        .intv2_dout(\din_r_reg_n_0_[1] ),
        .intv2_dout_0(\din_r_reg_n_0_[0] ),
        .rd_en__0(rd_en__0),
        .u2_P2S_dout(u2_P2S_dout));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Ser2Par
   (S2P_dout_vld,
    dout_rdy_reg_0,
    \dout_reg[1]_0 ,
    \dout_reg[0]_0 ,
    clk,
    \cnt_reg[0] ,
    intv2_din_vld,
    rd_en__0,
    intv2_din);
  output S2P_dout_vld;
  output dout_rdy_reg_0;
  output \dout_reg[1]_0 ;
  output \dout_reg[0]_0 ;
  input clk;
  input \cnt_reg[0] ;
  input intv2_din_vld;
  input rd_en__0;
  input intv2_din;

  wire S2P_dout_vld;
  wire clk;
  wire cnt_last;
  wire \cnt_reg[0] ;
  wire \dout[0]_i_1_n_0 ;
  wire \dout[1]_i_1_n_0 ;
  wire dout_rdy_reg_0;
  wire \dout_reg[0]_0 ;
  wire \dout_reg[1]_0 ;
  wire intv2_din;
  wire intv2_din_vld;
  wire rd_en__0;
  wire u_counter_n_1;
  wire u_counter_n_2;

  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \dout[0]_i_1 
       (.I0(intv2_din),
        .I1(intv2_din_vld),
        .I2(dout_rdy_reg_0),
        .I3(cnt_last),
        .I4(\dout_reg[0]_0 ),
        .O(\dout[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \dout[1]_i_1 
       (.I0(intv2_din),
        .I1(intv2_din_vld),
        .I2(dout_rdy_reg_0),
        .I3(cnt_last),
        .I4(\dout_reg[1]_0 ),
        .O(\dout[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_Ser2Par TREADY" *) 
  FDPE dout_rdy_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_counter_n_2),
        .PRE(\cnt_reg[0] ),
        .Q(dout_rdy_reg_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Ser2Par TDATA" *) 
  FDCE \dout_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(\dout[0]_i_1_n_0 ),
        .Q(\dout_reg[0]_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Ser2Par TDATA" *) 
  FDCE \dout_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(\dout[1]_i_1_n_0 ),
        .Q(\dout_reg[1]_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Ser2Par TVALID" *) 
  FDCE dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0] ),
        .D(u_counter_n_1),
        .Q(S2P_dout_vld));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized0 u_counter
       (.S2P_dout_vld(S2P_dout_vld),
        .clk(clk),
        .cnt_last(cnt_last),
        .\cnt_reg[0]_0 (\cnt_reg[0] ),
        .dout_rdy_reg(u_counter_n_1),
        .dout_rdy_reg_0(u_counter_n_2),
        .dout_vld_reg(dout_rdy_reg_0),
        .intv2_din_vld(intv2_din_vld),
        .rd_en__0(rd_en__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (rst_n_0,
    intv2_dout_vld,
    intv2_dout1__2,
    En_cnt,
    clk,
    dout_vld,
    intv2_dout_vld_0,
    intv2_din_sig_flag,
    rst_n);
  output rst_n_0;
  output intv2_dout_vld;
  output intv2_dout1__2;
  input En_cnt;
  input clk;
  input dout_vld;
  input intv2_dout_vld_0;
  input intv2_din_sig_flag;
  input rst_n;

  wire En_cnt;
  wire clk;
  wire [4:0]cnt;
  wire \cnt[0]_i_1__2_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire dout_vld;
  wire intv2_din_sig_flag;
  wire intv2_dout1__2;
  wire intv2_dout_vld;
  wire intv2_dout_vld_0;
  wire rst_n;
  wire rst_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__2 
       (.I0(cnt[0]),
        .O(\cnt[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F7F0080)) 
    \cnt[3]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[4]),
        .I4(cnt[3]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F807F00)) 
    \cnt[4]_i_2 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[4]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_2_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(rst_n_0),
        .D(\cnt[0]_i_1__2_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(rst_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(rst_n_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(rst_n_0),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(En_cnt),
        .CLR(rst_n_0),
        .D(\cnt[4]_i_2_n_0 ),
        .Q(cnt[4]));
  LUT1 #(
    .INIT(2'h1)) 
    dout_rdy_i_2
       (.I0(rst_n),
        .O(rst_n_0));
  LUT4 #(
    .INIT(16'hFF07)) 
    intv2_dout_INST_0_i_2
       (.I0(cnt[2]),
        .I1(cnt[3]),
        .I2(cnt[4]),
        .I3(intv2_din_sig_flag),
        .O(intv2_dout1__2));
  LUT6 #(
    .INIT(64'hAAAAAAAACCCCCAAA)) 
    intv2_dout_vld_INST_0
       (.I0(dout_vld),
        .I1(intv2_dout_vld_0),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(cnt[4]),
        .I5(intv2_din_sig_flag),
        .O(intv2_dout_vld));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized0
   (cnt_last,
    dout_rdy_reg,
    dout_rdy_reg_0,
    clk,
    \cnt_reg[0]_0 ,
    dout_vld_reg,
    intv2_din_vld,
    rd_en__0,
    S2P_dout_vld);
  output cnt_last;
  output dout_rdy_reg;
  output dout_rdy_reg_0;
  input clk;
  input \cnt_reg[0]_0 ;
  input dout_vld_reg;
  input intv2_din_vld;
  input rd_en__0;
  input S2P_dout_vld;

  wire S2P_dout_vld;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire cnt_last;
  wire \cnt_reg[0]_0 ;
  wire dout_rdy_reg;
  wire dout_rdy_reg_0;
  wire dout_vld_reg;
  wire intv2_din_vld;
  wire rd_en__0;

  LUT3 #(
    .INIT(8'h78)) 
    \cnt[0]_i_1 
       (.I0(intv2_din_vld),
        .I1(dout_vld_reg),
        .I2(cnt_last),
        .O(\cnt[0]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_0 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_last));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F2A)) 
    dout_rdy_i_1
       (.I0(dout_vld_reg),
        .I1(intv2_din_vld),
        .I2(cnt_last),
        .I3(rd_en__0),
        .O(dout_rdy_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    dout_vld_i_1__1
       (.I0(dout_vld_reg),
        .I1(intv2_din_vld),
        .I2(cnt_last),
        .I3(rd_en__0),
        .I4(S2P_dout_vld),
        .O(dout_rdy_reg));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1
   (\cnt_reg[0]_0 ,
    intv2_dout,
    dout_vld_reg,
    clk,
    \cnt_reg[0]_1 ,
    intv2_dout_0,
    intv2_dout_1,
    u2_P2S_dout,
    intv2_dout1__2,
    S2P_dout_vld,
    intv2_din_rdy,
    \cnt_reg[0]_2 );
  output \cnt_reg[0]_0 ;
  output intv2_dout;
  output dout_vld_reg;
  input clk;
  input \cnt_reg[0]_1 ;
  input intv2_dout_0;
  input intv2_dout_1;
  input u2_P2S_dout;
  input intv2_dout1__2;
  input S2P_dout_vld;
  input intv2_din_rdy;
  input \cnt_reg[0]_2 ;

  wire S2P_dout_vld;
  wire clk;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire \cnt_reg[0]_2 ;
  wire dout_vld_reg;
  wire intv2_din_rdy;
  wire intv2_dout;
  wire intv2_dout1__2;
  wire intv2_dout_0;
  wire intv2_dout_1;
  wire u2_P2S_dout;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[0]_i_1__0 
       (.I0(\cnt_reg[0]_2 ),
        .I1(intv2_din_rdy),
        .I2(\cnt_reg[0]_0 ),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_Par2Ser TDATA" *) 
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_reg[0]_1 ),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(\cnt_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    dout_vld_i_1
       (.I0(S2P_dout_vld),
        .I1(intv2_din_rdy),
        .I2(\cnt_reg[0]_0 ),
        .I3(\cnt_reg[0]_2 ),
        .O(dout_vld_reg));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    intv2_dout_INST_0
       (.I0(intv2_dout_0),
        .I1(\cnt_reg[0]_0 ),
        .I2(intv2_dout_1),
        .I3(u2_P2S_dout),
        .I4(intv2_dout1__2),
        .O(intv2_dout));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized2
   (cnt,
    rd_en__0,
    u2_P2S_dout,
    dout_vld_reg,
    clk,
    \cnt_reg[0]_0 ,
    S2P_dout_vld,
    intv2_din_rdy,
    \cnt_reg[0]_1 ,
    cnt_last,
    dout_vld,
    intv2_dout,
    intv2_dout_0);
  output cnt;
  output rd_en__0;
  output u2_P2S_dout;
  output dout_vld_reg;
  input clk;
  input \cnt_reg[0]_0 ;
  input S2P_dout_vld;
  input intv2_din_rdy;
  input \cnt_reg[0]_1 ;
  input cnt_last;
  input dout_vld;
  input intv2_dout;
  input intv2_dout_0;

  wire S2P_dout_vld;
  wire clk;
  wire cnt;
  wire \cnt[0]_i_1__1_n_0 ;
  wire cnt_last;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire dout_vld;
  wire dout_vld_reg;
  wire intv2_din_rdy;
  wire intv2_dout;
  wire intv2_dout_0;
  wire rd_en__0;
  wire u2_P2S_dout;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[0]_i_1__1 
       (.I0(\cnt_reg[0]_1 ),
        .I1(intv2_din_rdy),
        .I2(cnt),
        .O(\cnt[0]_i_1__1_n_0 ));
  FDPE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1__1_n_0 ),
        .PRE(\cnt_reg[0]_0 ),
        .Q(cnt));
  LUT6 #(
    .INIT(64'h20A0000020AA20AA)) 
    dout_rdy_i_3
       (.I0(S2P_dout_vld),
        .I1(cnt),
        .I2(intv2_din_rdy),
        .I3(\cnt_reg[0]_1 ),
        .I4(cnt_last),
        .I5(dout_vld),
        .O(rd_en__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    dout_vld_i_1__0
       (.I0(S2P_dout_vld),
        .I1(cnt),
        .I2(intv2_din_rdy),
        .I3(\cnt_reg[0]_1 ),
        .O(dout_vld_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    intv2_dout_INST_0_i_1
       (.I0(intv2_dout),
        .I1(cnt),
        .I2(intv2_dout_0),
        .O(u2_P2S_dout));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interleaver_2
   (dout_rdy_reg,
    intv2_dout_Map_Type,
    intv2_dout,
    intv2_dout_vld,
    intv2_din,
    intv2_din_vld,
    clk,
    intv2_din_rdy,
    intv2_din_Map_Type,
    intv2_din_sig_flag,
    rst_n);
  output dout_rdy_reg;
  output [1:0]intv2_dout_Map_Type;
  output intv2_dout;
  output intv2_dout_vld;
  input intv2_din;
  input intv2_din_vld;
  input clk;
  input intv2_din_rdy;
  input [1:0]intv2_din_Map_Type;
  input intv2_din_sig_flag;
  input rst_n;

  wire En_cnt;
  wire S2P_dout_vld;
  wire clk;
  wire cnt_last;
  wire dout_rdy_reg;
  wire dout_vld;
  wire intv2_din;
  wire [1:0]intv2_din_Map_Type;
  wire intv2_din_rdy;
  wire intv2_din_sig_flag;
  wire intv2_din_vld;
  wire intv2_dout;
  wire intv2_dout1__2;
  wire [1:0]intv2_dout_Map_Type;
  wire intv2_dout_vld;
  wire rd_en__0;
  wire rst_n;
  wire u2_P2S_dout;
  wire u2_Par2Ser_n_0;
  wire u_Ser2Par_n_2;
  wire u_Ser2Par_n_3;
  wire u_counter_n_0;

  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TID" *) 
  FDPE \intv2_dout_Map_Type_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(intv2_din_Map_Type[0]),
        .PRE(u_counter_n_0),
        .Q(intv2_dout_Map_Type[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TID" *) 
  FDPE \intv2_dout_Map_Type_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(intv2_din_Map_Type[1]),
        .PRE(u_counter_n_0),
        .Q(intv2_dout_Map_Type[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser u1_Par2Ser
       (.S2P_dout_vld(S2P_dout_vld),
        .clk(clk),
        .cnt_last(cnt_last),
        .\cnt_reg[0] (u_counter_n_0),
        .\din_r_reg[0]_0 (u_Ser2Par_n_3),
        .\din_r_reg[1]_0 (u_Ser2Par_n_2),
        .dout_vld(dout_vld),
        .intv2_din_rdy(intv2_din_rdy),
        .intv2_dout(intv2_dout),
        .intv2_dout1__2(intv2_dout1__2),
        .u2_P2S_dout(u2_P2S_dout));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Par2Ser__parameterized0 u2_Par2Ser
       (.En_cnt(En_cnt),
        .S2P_dout_vld(S2P_dout_vld),
        .clk(clk),
        .cnt_last(cnt_last),
        .\cnt_reg[0] (u_counter_n_0),
        .\din_r_reg[0]_0 (u_Ser2Par_n_3),
        .\din_r_reg[1]_0 (u_Ser2Par_n_2),
        .dout_vld(dout_vld),
        .dout_vld_reg_0(u2_Par2Ser_n_0),
        .intv2_din_rdy(intv2_din_rdy),
        .rd_en__0(rd_en__0),
        .u2_P2S_dout(u2_P2S_dout));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Ser2Par u_Ser2Par
       (.S2P_dout_vld(S2P_dout_vld),
        .clk(clk),
        .\cnt_reg[0] (u_counter_n_0),
        .dout_rdy_reg_0(dout_rdy_reg),
        .\dout_reg[0]_0 (u_Ser2Par_n_3),
        .\dout_reg[1]_0 (u_Ser2Par_n_2),
        .intv2_din(intv2_din),
        .intv2_din_vld(intv2_din_vld),
        .rd_en__0(rd_en__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter u_counter
       (.En_cnt(En_cnt),
        .clk(clk),
        .dout_vld(dout_vld),
        .intv2_din_sig_flag(intv2_din_sig_flag),
        .intv2_dout1__2(intv2_dout1__2),
        .intv2_dout_vld(intv2_dout_vld),
        .intv2_dout_vld_0(u2_Par2Ser_n_0),
        .rst_n(rst_n),
        .rst_n_0(u_counter_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "ofdm_tx_interleaver_2_0_0,interleaver_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "interleaver_2,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    intv2_din,
    intv2_din_vld,
    intv2_din_rdy,
    intv2_din_sig_flag,
    intv2_din_Map_Type,
    intv2_dout,
    intv2_dout_vld,
    intv2_dout_rdy,
    intv2_dout_Map_Type);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_intv2:m_axis_intv2, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TDATA" *) input intv2_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TVALID" *) input intv2_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TREADY" *) input intv2_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TSTRB" *) input intv2_din_sig_flag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TID" *) input [1:0]intv2_din_Map_Type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TDATA" *) output intv2_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TVALID" *) output intv2_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_intv2, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output intv2_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_intv2, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [1:0]intv2_dout_Map_Type;

  wire clk;
  wire intv2_din;
  wire [1:0]intv2_din_Map_Type;
  wire intv2_din_rdy;
  wire intv2_din_sig_flag;
  wire intv2_din_vld;
  wire intv2_dout;
  wire [1:0]intv2_dout_Map_Type;
  wire intv2_dout_rdy;
  wire intv2_dout_vld;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interleaver_2 inst
       (.clk(clk),
        .dout_rdy_reg(intv2_dout_rdy),
        .intv2_din(intv2_din),
        .intv2_din_Map_Type(intv2_din_Map_Type),
        .intv2_din_rdy(intv2_din_rdy),
        .intv2_din_sig_flag(intv2_din_sig_flag),
        .intv2_din_vld(intv2_din_vld),
        .intv2_dout(intv2_dout),
        .intv2_dout_Map_Type(intv2_dout_Map_Type),
        .intv2_dout_vld(intv2_dout_vld),
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
