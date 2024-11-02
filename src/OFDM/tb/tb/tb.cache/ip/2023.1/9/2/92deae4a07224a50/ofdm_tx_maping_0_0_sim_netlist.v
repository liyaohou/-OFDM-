// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:16 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_maping_0_0_sim_netlist.v
// Design      : ofdm_tx_maping_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_in
   (p_2_in,
    cnt,
    \cnt_reg[1]_0 ,
    \cnt_reg[1]_1 ,
    \cnt_reg[1]_2 ,
    rst_n_0,
    map_din_vld_0,
    map_din_vld,
    full_reg,
    map_din_Map_Type,
    rst_n,
    full_reg_0,
    map_din_rdy,
    clk);
  output p_2_in;
  output [2:0]cnt;
  output \cnt_reg[1]_0 ;
  output \cnt_reg[1]_1 ;
  output \cnt_reg[1]_2 ;
  output rst_n_0;
  output map_din_vld_0;
  input map_din_vld;
  input full_reg;
  input [1:0]map_din_Map_Type;
  input rst_n;
  input full_reg_0;
  input map_din_rdy;
  input clk;

  wire clk;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[1]_1 ;
  wire \cnt_reg[1]_2 ;
  wire full_i_2_n_0;
  wire full_reg;
  wire full_reg_0;
  wire [1:0]map_din_Map_Type;
  wire map_din_rdy;
  wire map_din_vld;
  wire map_din_vld_0;
  wire p_2_in;
  wire rst_n;
  wire rst_n_0;

  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \cnt[0]_i_1 
       (.I0(map_din_Map_Type[0]),
        .I1(map_din_Map_Type[1]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(p_2_in),
        .I5(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFFFF70D00000)) 
    \cnt[1]_i_1 
       (.I0(map_din_Map_Type[0]),
        .I1(map_din_Map_Type[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(p_2_in),
        .I5(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFFA2000000)) 
    \cnt[2]_i_1 
       (.I0(cnt[1]),
        .I1(map_din_Map_Type[1]),
        .I2(map_din_Map_Type[0]),
        .I3(cnt[0]),
        .I4(p_2_in),
        .I5(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[2]_i_2 
       (.I0(map_din_vld),
        .I1(full_reg),
        .O(p_2_in));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00ECECEC)) 
    full_i_1
       (.I0(map_din_vld),
        .I1(full_reg),
        .I2(full_i_2_n_0),
        .I3(full_reg_0),
        .I4(map_din_rdy),
        .O(map_din_vld_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00802009)) 
    full_i_2
       (.I0(cnt[0]),
        .I1(map_din_Map_Type[0]),
        .I2(map_din_Map_Type[1]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .O(full_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \map_din_r[1]_i_2 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .O(\cnt_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \map_din_r[3]_i_2 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .O(\cnt_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \map_din_r[5]_i_2 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(map_din_Map_Type[1]),
        .I3(map_din_Map_Type[0]),
        .O(\cnt_reg[1]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \map_dout_Im[7]_i_3 
       (.I0(rst_n),
        .O(rst_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maping
   (Q,
    map_dout,
    map_dout_rdy,
    map_dout_vld_reg_0,
    map_din_Map_Type,
    clk,
    map_din,
    map_din_vld,
    map_din_rdy,
    rst_n);
  output [5:0]Q;
  output [15:0]map_dout;
  output map_dout_rdy;
  output map_dout_vld_reg_0;
  input [1:0]map_din_Map_Type;
  input clk;
  input map_din;
  input map_din_vld;
  input map_din_rdy;
  input rst_n;

  wire [5:0]Q;
  wire clk;
  wire [2:0]cnt;
  wire full_reg_n_0;
  wire map_din;
  wire [1:0]map_din_Map_Type;
  wire \map_din_r[0]_i_1_n_0 ;
  wire \map_din_r[1]_i_1_n_0 ;
  wire \map_din_r[1]_i_3_n_0 ;
  wire \map_din_r[2]_i_1_n_0 ;
  wire \map_din_r[3]_i_1_n_0 ;
  wire \map_din_r[4]_i_1_n_0 ;
  wire \map_din_r[5]_i_1_n_0 ;
  wire \map_din_r_reg_n_0_[0] ;
  wire \map_din_r_reg_n_0_[2] ;
  wire \map_din_r_reg_n_0_[3] ;
  wire \map_din_r_reg_n_0_[4] ;
  wire \map_din_r_reg_n_0_[5] ;
  wire map_din_rdy;
  wire map_din_vld;
  wire [15:0]map_dout;
  wire \map_dout_Im[0]_i_1_n_0 ;
  wire \map_dout_Im[1]_i_1_n_0 ;
  wire \map_dout_Im[2]_i_1_n_0 ;
  wire \map_dout_Im[3]_i_1_n_0 ;
  wire \map_dout_Im[4]_i_1_n_0 ;
  wire \map_dout_Im[5]_i_1_n_0 ;
  wire \map_dout_Im[5]_i_2_n_0 ;
  wire \map_dout_Im[6]_i_1_n_0 ;
  wire \map_dout_Im[6]_i_2_n_0 ;
  wire \map_dout_Im[7]_i_2_n_0 ;
  wire \map_dout_Im[7]_i_4_n_0 ;
  wire map_dout_Index;
  wire \map_dout_Index[0]_i_1_n_0 ;
  wire \map_dout_Index[1]_i_1_n_0 ;
  wire \map_dout_Index[2]_i_1_n_0 ;
  wire \map_dout_Index[3]_i_1_n_0 ;
  wire \map_dout_Index[4]_i_1_n_0 ;
  wire \map_dout_Index[5]_i_2_n_0 ;
  wire map_dout_Re;
  wire \map_dout_Re[0]_i_1_n_0 ;
  wire \map_dout_Re[1]_i_1_n_0 ;
  wire \map_dout_Re[2]_i_1_n_0 ;
  wire \map_dout_Re[3]_i_1_n_0 ;
  wire \map_dout_Re[4]_i_1_n_0 ;
  wire \map_dout_Re[5]_i_1_n_0 ;
  wire \map_dout_Re[6]_i_1_n_0 ;
  wire \map_dout_Re[7]_i_1_n_0 ;
  wire map_dout_rdy;
  wire map_dout_vld_i_1_n_0;
  wire map_dout_vld_reg_0;
  wire p_2_in;
  wire rst_n;
  wire sel;
  wire u_counter_n_4;
  wire u_counter_n_5;
  wire u_counter_n_6;
  wire u_counter_n_7;
  wire u_counter_n_8;

  FDCE full_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_7),
        .D(u_counter_n_8),
        .Q(full_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \map_din_r[0]_i_1 
       (.I0(map_din),
        .I1(cnt[0]),
        .I2(p_2_in),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .I5(\map_din_r_reg_n_0_[0] ),
        .O(\map_din_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \map_din_r[1]_i_1 
       (.I0(map_din),
        .I1(u_counter_n_6),
        .I2(\map_din_r[1]_i_3_n_0 ),
        .I3(cnt[0]),
        .I4(p_2_in),
        .I5(sel),
        .O(\map_din_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \map_din_r[1]_i_3 
       (.I0(map_din_Map_Type[0]),
        .I1(map_din_Map_Type[1]),
        .O(\map_din_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \map_din_r[2]_i_1 
       (.I0(map_din),
        .I1(u_counter_n_4),
        .I2(map_din_Map_Type[1]),
        .I3(cnt[0]),
        .I4(p_2_in),
        .I5(\map_din_r_reg_n_0_[2] ),
        .O(\map_din_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \map_din_r[3]_i_1 
       (.I0(map_din),
        .I1(u_counter_n_4),
        .I2(map_din_Map_Type[1]),
        .I3(cnt[0]),
        .I4(p_2_in),
        .I5(\map_din_r_reg_n_0_[3] ),
        .O(\map_din_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \map_din_r[4]_i_1 
       (.I0(map_din),
        .I1(u_counter_n_5),
        .I2(cnt[0]),
        .I3(map_din_vld),
        .I4(full_reg_n_0),
        .I5(\map_din_r_reg_n_0_[4] ),
        .O(\map_din_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \map_din_r[5]_i_1 
       (.I0(map_din),
        .I1(u_counter_n_5),
        .I2(cnt[0]),
        .I3(map_din_vld),
        .I4(full_reg_n_0),
        .I5(\map_din_r_reg_n_0_[5] ),
        .O(\map_din_r[5]_i_1_n_0 ));
  FDCE \map_din_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_7),
        .D(\map_din_r[0]_i_1_n_0 ),
        .Q(\map_din_r_reg_n_0_[0] ));
  FDCE \map_din_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_7),
        .D(\map_din_r[1]_i_1_n_0 ),
        .Q(sel));
  FDCE \map_din_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_7),
        .D(\map_din_r[2]_i_1_n_0 ),
        .Q(\map_din_r_reg_n_0_[2] ));
  FDCE \map_din_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_7),
        .D(\map_din_r[3]_i_1_n_0 ),
        .Q(\map_din_r_reg_n_0_[3] ));
  FDCE \map_din_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_7),
        .D(\map_din_r[4]_i_1_n_0 ),
        .Q(\map_din_r_reg_n_0_[4] ));
  FDCE \map_din_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_7),
        .D(\map_din_r[5]_i_1_n_0 ),
        .Q(\map_din_r_reg_n_0_[5] ));
  LUT3 #(
    .INIT(8'hF4)) 
    \map_dout_Im[0]_i_1 
       (.I0(\map_din_r_reg_n_0_[3] ),
        .I1(map_din_Map_Type[1]),
        .I2(map_din_Map_Type[0]),
        .O(\map_dout_Im[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5030503050305F30)) 
    \map_dout_Im[1]_i_1 
       (.I0(\map_din_r_reg_n_0_[5] ),
        .I1(sel),
        .I2(map_din_Map_Type[0]),
        .I3(map_din_Map_Type[1]),
        .I4(\map_din_r_reg_n_0_[3] ),
        .I5(\map_din_r_reg_n_0_[2] ),
        .O(\map_dout_Im[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C0CFCCCF8C83808)) 
    \map_dout_Im[2]_i_1 
       (.I0(\map_din_r_reg_n_0_[2] ),
        .I1(map_din_Map_Type[1]),
        .I2(map_din_Map_Type[0]),
        .I3(sel),
        .I4(\map_din_r_reg_n_0_[4] ),
        .I5(\map_din_r_reg_n_0_[3] ),
        .O(\map_dout_Im[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70407C4C7C4C7040)) 
    \map_dout_Im[3]_i_1 
       (.I0(\map_din_r_reg_n_0_[4] ),
        .I1(map_din_Map_Type[1]),
        .I2(map_din_Map_Type[0]),
        .I3(sel),
        .I4(\map_din_r_reg_n_0_[2] ),
        .I5(\map_din_r_reg_n_0_[3] ),
        .O(\map_dout_Im[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCA003A00CAF03AF0)) 
    \map_dout_Im[4]_i_1 
       (.I0(\map_din_r_reg_n_0_[2] ),
        .I1(\map_din_r_reg_n_0_[5] ),
        .I2(map_din_Map_Type[0]),
        .I3(map_din_Map_Type[1]),
        .I4(\map_din_r_reg_n_0_[3] ),
        .I5(sel),
        .O(\map_dout_Im[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAABAAAAAAABAAA)) 
    \map_dout_Im[5]_i_1 
       (.I0(\map_dout_Im[5]_i_2_n_0 ),
        .I1(\map_din_r_reg_n_0_[5] ),
        .I2(map_din_Map_Type[0]),
        .I3(map_din_Map_Type[1]),
        .I4(\map_din_r_reg_n_0_[3] ),
        .I5(\map_din_r_reg_n_0_[4] ),
        .O(\map_dout_Im[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0066F000)) 
    \map_dout_Im[5]_i_2 
       (.I0(\map_din_r_reg_n_0_[3] ),
        .I1(\map_din_r_reg_n_0_[2] ),
        .I2(sel),
        .I3(map_din_Map_Type[0]),
        .I4(map_din_Map_Type[1]),
        .O(\map_dout_Im[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFAAAAAAA)) 
    \map_dout_Im[6]_i_1 
       (.I0(\map_dout_Im[6]_i_2_n_0 ),
        .I1(\map_din_r_reg_n_0_[5] ),
        .I2(map_din_Map_Type[0]),
        .I3(map_din_Map_Type[1]),
        .I4(\map_din_r_reg_n_0_[4] ),
        .I5(\map_din_r_reg_n_0_[3] ),
        .O(\map_dout_Im[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0530)) 
    \map_dout_Im[6]_i_2 
       (.I0(\map_din_r_reg_n_0_[2] ),
        .I1(sel),
        .I2(map_din_Map_Type[0]),
        .I3(map_din_Map_Type[1]),
        .O(\map_dout_Im[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A002A2A2A2A)) 
    \map_dout_Im[7]_i_1 
       (.I0(full_reg_n_0),
        .I1(map_din_rdy),
        .I2(map_dout_vld_reg_0),
        .I3(\map_dout_Im[7]_i_4_n_0 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(map_dout_Re));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0F335500)) 
    \map_dout_Im[7]_i_2 
       (.I0(sel),
        .I1(\map_din_r_reg_n_0_[2] ),
        .I2(\map_din_r_reg_n_0_[5] ),
        .I3(map_din_Map_Type[0]),
        .I4(map_din_Map_Type[1]),
        .O(\map_dout_Im[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \map_dout_Im[7]_i_4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\map_dout_Im[7]_i_4_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Im_reg[0] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Im[0]_i_1_n_0 ),
        .Q(map_dout[8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Im_reg[1] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Im[1]_i_1_n_0 ),
        .Q(map_dout[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Im_reg[2] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Im[2]_i_1_n_0 ),
        .Q(map_dout[10]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Im_reg[3] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Im[3]_i_1_n_0 ),
        .Q(map_dout[11]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Im_reg[4] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Im[4]_i_1_n_0 ),
        .Q(map_dout[12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Im_reg[5] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Im[5]_i_1_n_0 ),
        .Q(map_dout[13]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Im_reg[6] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Im[6]_i_1_n_0 ),
        .Q(map_dout[14]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Im_reg[7] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Im[7]_i_2_n_0 ),
        .Q(map_dout[15]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \map_dout_Index[0]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\map_dout_Index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h75555555AAAAAAAA)) 
    \map_dout_Index[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\map_dout_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A6AEA6A6A6A)) 
    \map_dout_Index[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\map_dout_Index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAEAAA6AAA6AAA)) 
    \map_dout_Index[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\map_dout_Index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \map_dout_Index[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\map_dout_Index[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2AFF2A2A2A2A)) 
    \map_dout_Index[5]_i_1 
       (.I0(full_reg_n_0),
        .I1(map_din_rdy),
        .I2(map_dout_vld_reg_0),
        .I3(\map_dout_Im[7]_i_4_n_0 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(map_dout_Index));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \map_dout_Index[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\map_dout_Index[5]_i_2_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TUSER" *) 
  FDPE \map_dout_Index_reg[0] 
       (.C(clk),
        .CE(map_dout_Index),
        .D(\map_dout_Index[0]_i_1_n_0 ),
        .PRE(u_counter_n_7),
        .Q(Q[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TUSER" *) 
  FDPE \map_dout_Index_reg[1] 
       (.C(clk),
        .CE(map_dout_Index),
        .D(\map_dout_Index[1]_i_1_n_0 ),
        .PRE(u_counter_n_7),
        .Q(Q[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TUSER" *) 
  FDPE \map_dout_Index_reg[2] 
       (.C(clk),
        .CE(map_dout_Index),
        .D(\map_dout_Index[2]_i_1_n_0 ),
        .PRE(u_counter_n_7),
        .Q(Q[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TUSER" *) 
  FDPE \map_dout_Index_reg[3] 
       (.C(clk),
        .CE(map_dout_Index),
        .D(\map_dout_Index[3]_i_1_n_0 ),
        .PRE(u_counter_n_7),
        .Q(Q[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TUSER" *) 
  FDPE \map_dout_Index_reg[4] 
       (.C(clk),
        .CE(map_dout_Index),
        .D(\map_dout_Index[4]_i_1_n_0 ),
        .PRE(u_counter_n_7),
        .Q(Q[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TUSER" *) 
  FDPE \map_dout_Index_reg[5] 
       (.C(clk),
        .CE(map_dout_Index),
        .D(\map_dout_Index[5]_i_2_n_0 ),
        .PRE(u_counter_n_7),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \map_dout_Re[0]_i_1 
       (.I0(sel),
        .I1(map_din_Map_Type[1]),
        .I2(map_din_Map_Type[0]),
        .O(\map_dout_Re[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55030F00)) 
    \map_dout_Re[1]_i_1 
       (.I0(\map_din_r_reg_n_0_[2] ),
        .I1(sel),
        .I2(\map_din_r_reg_n_0_[0] ),
        .I3(map_din_Map_Type[0]),
        .I4(map_din_Map_Type[1]),
        .O(\map_dout_Re[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6EC0)) 
    \map_dout_Re[2]_i_1 
       (.I0(sel),
        .I1(\map_din_r_reg_n_0_[0] ),
        .I2(map_din_Map_Type[0]),
        .I3(map_din_Map_Type[1]),
        .O(\map_dout_Re[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4E28)) 
    \map_dout_Re[3]_i_1 
       (.I0(map_din_Map_Type[1]),
        .I1(map_din_Map_Type[0]),
        .I2(sel),
        .I3(\map_din_r_reg_n_0_[0] ),
        .O(\map_dout_Re[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA42C)) 
    \map_dout_Re[4]_i_1 
       (.I0(map_din_Map_Type[1]),
        .I1(map_din_Map_Type[0]),
        .I2(\map_din_r_reg_n_0_[0] ),
        .I3(\map_din_r_reg_n_0_[2] ),
        .O(\map_dout_Re[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCC703C40)) 
    \map_dout_Re[5]_i_1 
       (.I0(\map_din_r_reg_n_0_[2] ),
        .I1(map_din_Map_Type[0]),
        .I2(map_din_Map_Type[1]),
        .I3(\map_din_r_reg_n_0_[0] ),
        .I4(sel),
        .O(\map_dout_Re[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h233FE33F)) 
    \map_dout_Re[6]_i_1 
       (.I0(sel),
        .I1(\map_din_r_reg_n_0_[0] ),
        .I2(map_din_Map_Type[1]),
        .I3(map_din_Map_Type[0]),
        .I4(\map_din_r_reg_n_0_[2] ),
        .O(\map_dout_Re[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3555)) 
    \map_dout_Re[7]_i_1 
       (.I0(\map_din_r_reg_n_0_[0] ),
        .I1(\map_din_r_reg_n_0_[2] ),
        .I2(map_din_Map_Type[0]),
        .I3(map_din_Map_Type[1]),
        .O(\map_dout_Re[7]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Re_reg[0] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Re[0]_i_1_n_0 ),
        .Q(map_dout[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Re_reg[1] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Re[1]_i_1_n_0 ),
        .Q(map_dout[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Re_reg[2] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Re[2]_i_1_n_0 ),
        .Q(map_dout[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Re_reg[3] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Re[3]_i_1_n_0 ),
        .Q(map_dout[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Re_reg[4] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Re[4]_i_1_n_0 ),
        .Q(map_dout[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Re_reg[5] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Re[5]_i_1_n_0 ),
        .Q(map_dout[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Re_reg[6] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Re[6]_i_1_n_0 ),
        .Q(map_dout[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) 
  FDCE \map_dout_Re_reg[7] 
       (.C(clk),
        .CE(map_dout_Re),
        .CLR(u_counter_n_7),
        .D(\map_dout_Re[7]_i_1_n_0 ),
        .Q(map_dout[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    map_dout_rdy_INST_0
       (.I0(full_reg_n_0),
        .O(map_dout_rdy));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    map_dout_vld_i_1
       (.I0(full_reg_n_0),
        .I1(map_dout_vld_reg_0),
        .I2(map_din_rdy),
        .O(map_dout_vld_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TVALID" *) 
  FDCE map_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_counter_n_7),
        .D(map_dout_vld_i_1_n_0),
        .Q(map_dout_vld_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_in u_counter
       (.clk(clk),
        .cnt(cnt),
        .\cnt_reg[1]_0 (u_counter_n_4),
        .\cnt_reg[1]_1 (u_counter_n_5),
        .\cnt_reg[1]_2 (u_counter_n_6),
        .full_reg(full_reg_n_0),
        .full_reg_0(map_dout_vld_reg_0),
        .map_din_Map_Type(map_din_Map_Type),
        .map_din_rdy(map_din_rdy),
        .map_din_vld(map_din_vld),
        .map_din_vld_0(u_counter_n_8),
        .p_2_in(p_2_in),
        .rst_n(rst_n),
        .rst_n_0(u_counter_n_7));
endmodule

(* CHECK_LICENSE_TYPE = "ofdm_tx_maping_0_0,maping,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "maping,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    map_din,
    map_din_vld,
    map_din_rdy,
    map_din_Map_Type,
    map_dout,
    map_dout_vld,
    map_dout_rdy,
    map_dout_Index);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_map:m_axis_map, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_map TDATA" *) input map_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_map TVALID" *) input map_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TREADY" *) input map_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_map TID" *) input [1:0]map_din_Map_Type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *) output [15:0]map_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TVALID" *) output map_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_map TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_map, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output map_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_map, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 6, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [5:0]map_dout_Index;

  wire clk;
  wire map_din;
  wire [1:0]map_din_Map_Type;
  wire map_din_rdy;
  wire map_din_vld;
  wire [15:0]map_dout;
  wire [5:0]map_dout_Index;
  wire map_dout_rdy;
  wire map_dout_vld;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maping inst
       (.Q(map_dout_Index),
        .clk(clk),
        .map_din(map_din),
        .map_din_Map_Type(map_din_Map_Type),
        .map_din_rdy(map_din_rdy),
        .map_din_vld(map_din_vld),
        .map_dout(map_dout),
        .map_dout_rdy(map_dout_rdy),
        .map_dout_vld_reg_0(map_dout_vld),
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
