// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:53:45 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_ifft_0_0/ofdm_tx_ifft_0_0_sim_netlist.v
// Design      : ofdm_tx_ifft_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ofdm_tx_ifft_0_0,ifft,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ifft,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ofdm_tx_ifft_0_0
   (clk,
    rst_n,
    ifft_din,
    ifft_din_vld,
    ifft_din_rdy,
    ifft_din_last,
    ifft_dout,
    ifft_dout_vld,
    ifft_dout_rdy,
    ifft_dout_last,
    ifft_dout_Index);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_ifft:m_axis_ifft, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TDATA" *) input [15:0]ifft_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TVALID" *) input ifft_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TREADY" *) input ifft_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TLAST" *) input ifft_din_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TDATA" *) output [15:0]ifft_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TVALID" *) output ifft_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ifft, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output ifft_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TLAST" *) output ifft_dout_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ifft, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]ifft_dout_Index;

  wire clk;
  wire [15:0]ifft_din;
  wire ifft_din_last;
  wire ifft_din_rdy;
  wire ifft_din_vld;
  wire [15:0]ifft_dout;
  wire [7:0]ifft_dout_Index;
  wire ifft_dout_last;
  wire ifft_dout_rdy;
  wire ifft_dout_vld;
  wire rst_n;

  ofdm_tx_ifft_0_0_ifft inst
       (.clk(clk),
        .ifft_din(ifft_din),
        .ifft_din_last(ifft_din_last),
        .ifft_din_rdy(ifft_din_rdy),
        .ifft_din_vld(ifft_din_vld),
        .ifft_dout(ifft_dout),
        .ifft_dout_Index(ifft_dout_Index),
        .ifft_dout_last(ifft_dout_last),
        .ifft_dout_rdy(ifft_dout_rdy),
        .ifft_dout_vld(ifft_dout_vld),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "edge_detection" *) 
module ofdm_tx_ifft_0_0_edge_detection
   (ifft_dout,
    \bbstub_m_axis_data_tuser[0] ,
    ifft_dout_vld,
    clk,
    Q,
    m_axis_data_tdata,
    ifft_dout_Index);
  output [15:0]ifft_dout;
  output \bbstub_m_axis_data_tuser[0] ;
  input ifft_dout_vld;
  input clk;
  input [13:0]Q;
  input [15:0]m_axis_data_tdata;
  input [7:0]ifft_dout_Index;

  wire [13:0]Q;
  wire \bbstub_m_axis_data_tuser[0] ;
  wire clk;
  wire edge_din_r;
  wire [15:0]ifft_dout;
  wire [7:1]ifft_dout1;
  wire \ifft_dout[10]_INST_0_i_1_n_0 ;
  wire \ifft_dout[10]_INST_0_i_1_n_1 ;
  wire \ifft_dout[10]_INST_0_i_1_n_2 ;
  wire \ifft_dout[10]_INST_0_i_1_n_3 ;
  wire \ifft_dout[10]_INST_0_i_2_n_0 ;
  wire \ifft_dout[10]_INST_0_i_3_n_0 ;
  wire \ifft_dout[10]_INST_0_i_4_n_0 ;
  wire \ifft_dout[10]_INST_0_i_5_n_0 ;
  wire \ifft_dout[15]_INST_0_i_1_n_0 ;
  wire \ifft_dout[15]_INST_0_i_2_n_1 ;
  wire \ifft_dout[15]_INST_0_i_2_n_2 ;
  wire \ifft_dout[15]_INST_0_i_2_n_3 ;
  wire \ifft_dout[15]_INST_0_i_4_n_0 ;
  wire \ifft_dout[15]_INST_0_i_5_n_0 ;
  wire \ifft_dout[15]_INST_0_i_6_n_0 ;
  wire \ifft_dout[15]_INST_0_i_7_n_0 ;
  wire \ifft_dout[2]_INST_0_i_1_n_0 ;
  wire \ifft_dout[2]_INST_0_i_1_n_1 ;
  wire \ifft_dout[2]_INST_0_i_1_n_2 ;
  wire \ifft_dout[2]_INST_0_i_1_n_3 ;
  wire \ifft_dout[2]_INST_0_i_1_n_4 ;
  wire \ifft_dout[2]_INST_0_i_1_n_5 ;
  wire \ifft_dout[2]_INST_0_i_1_n_6 ;
  wire \ifft_dout[2]_INST_0_i_2_n_0 ;
  wire \ifft_dout[2]_INST_0_i_3_n_0 ;
  wire \ifft_dout[2]_INST_0_i_4_n_0 ;
  wire \ifft_dout[2]_INST_0_i_5_n_0 ;
  wire \ifft_dout[7]_INST_0_i_1_n_1 ;
  wire \ifft_dout[7]_INST_0_i_1_n_2 ;
  wire \ifft_dout[7]_INST_0_i_1_n_3 ;
  wire \ifft_dout[7]_INST_0_i_1_n_4 ;
  wire \ifft_dout[7]_INST_0_i_1_n_5 ;
  wire \ifft_dout[7]_INST_0_i_1_n_6 ;
  wire \ifft_dout[7]_INST_0_i_1_n_7 ;
  wire \ifft_dout[7]_INST_0_i_2_n_0 ;
  wire \ifft_dout[7]_INST_0_i_3_n_0 ;
  wire \ifft_dout[7]_INST_0_i_4_n_0 ;
  wire \ifft_dout[7]_INST_0_i_5_n_0 ;
  wire [7:0]ifft_dout_Index;
  wire ifft_dout_vld;
  wire [15:0]m_axis_data_tdata;
  wire [0:0]\NLW_ifft_dout[10]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_ifft_dout[15]_INST_0_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_ifft_dout[2]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_ifft_dout[7]_INST_0_i_1_CO_UNCONNECTED ;

  FDRE edge_din_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(ifft_dout_vld),
        .Q(edge_din_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[0]_INST_0 
       (.I0(m_axis_data_tdata[0]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(\ifft_dout[2]_INST_0_i_1_n_6 ),
        .O(ifft_dout[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[10]_INST_0 
       (.I0(m_axis_data_tdata[10]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(ifft_dout1[3]),
        .O(ifft_dout[10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ifft_dout[10]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\ifft_dout[10]_INST_0_i_1_n_0 ,\ifft_dout[10]_INST_0_i_1_n_1 ,\ifft_dout[10]_INST_0_i_1_n_2 ,\ifft_dout[10]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[10:7]),
        .O({ifft_dout1[3:1],\NLW_ifft_dout[10]_INST_0_i_1_O_UNCONNECTED [0]}),
        .S({\ifft_dout[10]_INST_0_i_2_n_0 ,\ifft_dout[10]_INST_0_i_3_n_0 ,\ifft_dout[10]_INST_0_i_4_n_0 ,\ifft_dout[10]_INST_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[10]_INST_0_i_2 
       (.I0(Q[10]),
        .I1(m_axis_data_tdata[11]),
        .O(\ifft_dout[10]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[10]_INST_0_i_3 
       (.I0(Q[9]),
        .I1(m_axis_data_tdata[10]),
        .O(\ifft_dout[10]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[10]_INST_0_i_4 
       (.I0(Q[8]),
        .I1(m_axis_data_tdata[9]),
        .O(\ifft_dout[10]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[10]_INST_0_i_5 
       (.I0(Q[7]),
        .I1(m_axis_data_tdata[8]),
        .O(\ifft_dout[10]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[11]_INST_0 
       (.I0(m_axis_data_tdata[11]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(ifft_dout1[4]),
        .O(ifft_dout[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[12]_INST_0 
       (.I0(m_axis_data_tdata[12]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(ifft_dout1[5]),
        .O(ifft_dout[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[13]_INST_0 
       (.I0(m_axis_data_tdata[13]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(ifft_dout1[6]),
        .O(ifft_dout[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[14]_INST_0 
       (.I0(m_axis_data_tdata[14]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(ifft_dout1[7]),
        .O(ifft_dout[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[15]_INST_0 
       (.I0(m_axis_data_tdata[15]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(ifft_dout1[7]),
        .O(ifft_dout[15]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \ifft_dout[15]_INST_0_i_1 
       (.I0(edge_din_r),
        .I1(ifft_dout_vld),
        .I2(ifft_dout_Index[4]),
        .I3(ifft_dout_Index[5]),
        .I4(\bbstub_m_axis_data_tuser[0] ),
        .O(\ifft_dout[15]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ifft_dout[15]_INST_0_i_2 
       (.CI(\ifft_dout[10]_INST_0_i_1_n_0 ),
        .CO({\NLW_ifft_dout[15]_INST_0_i_2_CO_UNCONNECTED [3],\ifft_dout[15]_INST_0_i_2_n_1 ,\ifft_dout[15]_INST_0_i_2_n_2 ,\ifft_dout[15]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[13:11]}),
        .O(ifft_dout1[7:4]),
        .S({\ifft_dout[15]_INST_0_i_4_n_0 ,\ifft_dout[15]_INST_0_i_5_n_0 ,\ifft_dout[15]_INST_0_i_6_n_0 ,\ifft_dout[15]_INST_0_i_7_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ifft_dout[15]_INST_0_i_3 
       (.I0(ifft_dout_Index[6]),
        .I1(ifft_dout_Index[7]),
        .I2(ifft_dout_Index[2]),
        .I3(ifft_dout_Index[3]),
        .I4(ifft_dout_Index[1]),
        .I5(ifft_dout_Index[0]),
        .O(\bbstub_m_axis_data_tuser[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[15]_INST_0_i_4 
       (.I0(Q[13]),
        .I1(m_axis_data_tdata[15]),
        .O(\ifft_dout[15]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[15]_INST_0_i_5 
       (.I0(Q[13]),
        .I1(m_axis_data_tdata[14]),
        .O(\ifft_dout[15]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[15]_INST_0_i_6 
       (.I0(Q[12]),
        .I1(m_axis_data_tdata[13]),
        .O(\ifft_dout[15]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[15]_INST_0_i_7 
       (.I0(Q[11]),
        .I1(m_axis_data_tdata[12]),
        .O(\ifft_dout[15]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[1]_INST_0 
       (.I0(m_axis_data_tdata[1]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(\ifft_dout[2]_INST_0_i_1_n_5 ),
        .O(ifft_dout[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[2]_INST_0 
       (.I0(m_axis_data_tdata[2]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(\ifft_dout[2]_INST_0_i_1_n_4 ),
        .O(ifft_dout[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ifft_dout[2]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\ifft_dout[2]_INST_0_i_1_n_0 ,\ifft_dout[2]_INST_0_i_1_n_1 ,\ifft_dout[2]_INST_0_i_1_n_2 ,\ifft_dout[2]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({\ifft_dout[2]_INST_0_i_1_n_4 ,\ifft_dout[2]_INST_0_i_1_n_5 ,\ifft_dout[2]_INST_0_i_1_n_6 ,\NLW_ifft_dout[2]_INST_0_i_1_O_UNCONNECTED [0]}),
        .S({\ifft_dout[2]_INST_0_i_2_n_0 ,\ifft_dout[2]_INST_0_i_3_n_0 ,\ifft_dout[2]_INST_0_i_4_n_0 ,\ifft_dout[2]_INST_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[2]_INST_0_i_2 
       (.I0(Q[3]),
        .I1(m_axis_data_tdata[3]),
        .O(\ifft_dout[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[2]_INST_0_i_3 
       (.I0(Q[2]),
        .I1(m_axis_data_tdata[2]),
        .O(\ifft_dout[2]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[2]_INST_0_i_4 
       (.I0(Q[1]),
        .I1(m_axis_data_tdata[1]),
        .O(\ifft_dout[2]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[2]_INST_0_i_5 
       (.I0(Q[0]),
        .I1(m_axis_data_tdata[0]),
        .O(\ifft_dout[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[3]_INST_0 
       (.I0(m_axis_data_tdata[3]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(\ifft_dout[7]_INST_0_i_1_n_7 ),
        .O(ifft_dout[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[4]_INST_0 
       (.I0(m_axis_data_tdata[4]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(\ifft_dout[7]_INST_0_i_1_n_6 ),
        .O(ifft_dout[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[5]_INST_0 
       (.I0(m_axis_data_tdata[5]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(\ifft_dout[7]_INST_0_i_1_n_5 ),
        .O(ifft_dout[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[6]_INST_0 
       (.I0(m_axis_data_tdata[6]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(\ifft_dout[7]_INST_0_i_1_n_4 ),
        .O(ifft_dout[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[7]_INST_0 
       (.I0(m_axis_data_tdata[7]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(\ifft_dout[7]_INST_0_i_1_n_4 ),
        .O(ifft_dout[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ifft_dout[7]_INST_0_i_1 
       (.CI(\ifft_dout[2]_INST_0_i_1_n_0 ),
        .CO({\NLW_ifft_dout[7]_INST_0_i_1_CO_UNCONNECTED [3],\ifft_dout[7]_INST_0_i_1_n_1 ,\ifft_dout[7]_INST_0_i_1_n_2 ,\ifft_dout[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O({\ifft_dout[7]_INST_0_i_1_n_4 ,\ifft_dout[7]_INST_0_i_1_n_5 ,\ifft_dout[7]_INST_0_i_1_n_6 ,\ifft_dout[7]_INST_0_i_1_n_7 }),
        .S({\ifft_dout[7]_INST_0_i_2_n_0 ,\ifft_dout[7]_INST_0_i_3_n_0 ,\ifft_dout[7]_INST_0_i_4_n_0 ,\ifft_dout[7]_INST_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[7]_INST_0_i_2 
       (.I0(Q[6]),
        .I1(m_axis_data_tdata[7]),
        .O(\ifft_dout[7]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[7]_INST_0_i_3 
       (.I0(Q[6]),
        .I1(m_axis_data_tdata[6]),
        .O(\ifft_dout[7]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[7]_INST_0_i_4 
       (.I0(Q[5]),
        .I1(m_axis_data_tdata[5]),
        .O(\ifft_dout[7]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ifft_dout[7]_INST_0_i_5 
       (.I0(Q[4]),
        .I1(m_axis_data_tdata[4]),
        .O(\ifft_dout[7]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[8]_INST_0 
       (.I0(m_axis_data_tdata[8]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(ifft_dout1[1]),
        .O(ifft_dout[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ifft_dout[9]_INST_0 
       (.I0(m_axis_data_tdata[9]),
        .I1(\ifft_dout[15]_INST_0_i_1_n_0 ),
        .I2(ifft_dout1[2]),
        .O(ifft_dout[9]));
endmodule

(* ORIG_REF_NAME = "ifft" *) 
module ofdm_tx_ifft_0_0_ifft
   (clk,
    rst_n,
    ifft_din,
    ifft_din_vld,
    ifft_din_rdy,
    ifft_din_last,
    ifft_dout,
    ifft_dout_vld,
    ifft_dout_rdy,
    ifft_dout_last,
    ifft_dout_Index);
  input clk;
  input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TDATA" *) input [15:0]ifft_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TVALID" *) input ifft_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TREADY" *) input ifft_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TLAST" *) input ifft_din_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TDATA" *) output [15:0]ifft_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TVALID" *) output ifft_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TREADY" *) output ifft_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TLAST" *) output ifft_dout_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TUSER" *) output [7:0]ifft_dout_Index;

  wire clk;
  wire first_iff_dout;
  wire \first_iff_dout[14]_i_2_n_0 ;
  wire \first_iff_dout_reg_n_0_[0] ;
  wire \first_iff_dout_reg_n_0_[1] ;
  wire \first_iff_dout_reg_n_0_[2] ;
  wire \first_iff_dout_reg_n_0_[3] ;
  wire \first_iff_dout_reg_n_0_[4] ;
  wire \first_iff_dout_reg_n_0_[5] ;
  wire \first_iff_dout_reg_n_0_[6] ;
  wire [15:0]ifft_din;
  wire ifft_din_last;
  wire ifft_din_rdy;
  wire ifft_din_vld;
  wire [15:0]ifft_dout;
  wire [7:0]ifft_dout_Index;
  wire ifft_dout_last;
  wire ifft_dout_rdy;
  wire ifft_dout_vld;
  wire [23:0]m_axis_data_tdata;
  wire [6:0]p_1_in;
  wire rst_n;
  wire u_edge_detection_n_16;
  wire NLW_u_fft_event_data_in_channel_halt_UNCONNECTED;
  wire NLW_u_fft_event_data_out_channel_halt_UNCONNECTED;
  wire NLW_u_fft_event_frame_started_UNCONNECTED;
  wire NLW_u_fft_event_status_channel_halt_UNCONNECTED;
  wire NLW_u_fft_event_tlast_missing_UNCONNECTED;
  wire NLW_u_fft_event_tlast_unexpected_UNCONNECTED;
  wire NLW_u_fft_s_axis_config_tready_UNCONNECTED;
  wire [31:8]NLW_u_fft_m_axis_data_tdata_UNCONNECTED;

  LUT3 #(
    .INIT(8'h01)) 
    \first_iff_dout[14]_i_1 
       (.I0(ifft_dout_Index[5]),
        .I1(ifft_dout_Index[4]),
        .I2(u_edge_detection_n_16),
        .O(first_iff_dout));
  LUT1 #(
    .INIT(2'h1)) 
    \first_iff_dout[14]_i_2 
       (.I0(rst_n),
        .O(\first_iff_dout[14]_i_2_n_0 ));
  FDCE \first_iff_dout_reg[0] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[1]),
        .Q(\first_iff_dout_reg_n_0_[0] ));
  FDCE \first_iff_dout_reg[10] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[19]),
        .Q(p_1_in[2]));
  FDCE \first_iff_dout_reg[11] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[20]),
        .Q(p_1_in[3]));
  FDCE \first_iff_dout_reg[12] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[21]),
        .Q(p_1_in[4]));
  FDCE \first_iff_dout_reg[13] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[22]),
        .Q(p_1_in[5]));
  FDCE \first_iff_dout_reg[14] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[23]),
        .Q(p_1_in[6]));
  FDCE \first_iff_dout_reg[1] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[2]),
        .Q(\first_iff_dout_reg_n_0_[1] ));
  FDCE \first_iff_dout_reg[2] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[3]),
        .Q(\first_iff_dout_reg_n_0_[2] ));
  FDCE \first_iff_dout_reg[3] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[4]),
        .Q(\first_iff_dout_reg_n_0_[3] ));
  FDCE \first_iff_dout_reg[4] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[5]),
        .Q(\first_iff_dout_reg_n_0_[4] ));
  FDCE \first_iff_dout_reg[5] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[6]),
        .Q(\first_iff_dout_reg_n_0_[5] ));
  FDCE \first_iff_dout_reg[6] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[7]),
        .Q(\first_iff_dout_reg_n_0_[6] ));
  FDCE \first_iff_dout_reg[8] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[17]),
        .Q(p_1_in[0]));
  FDCE \first_iff_dout_reg[9] 
       (.C(clk),
        .CE(first_iff_dout),
        .CLR(\first_iff_dout[14]_i_2_n_0 ),
        .D(m_axis_data_tdata[18]),
        .Q(p_1_in[1]));
  ofdm_tx_ifft_0_0_edge_detection u_edge_detection
       (.Q({p_1_in,\first_iff_dout_reg_n_0_[6] ,\first_iff_dout_reg_n_0_[5] ,\first_iff_dout_reg_n_0_[4] ,\first_iff_dout_reg_n_0_[3] ,\first_iff_dout_reg_n_0_[2] ,\first_iff_dout_reg_n_0_[1] ,\first_iff_dout_reg_n_0_[0] }),
        .\bbstub_m_axis_data_tuser[0] (u_edge_detection_n_16),
        .clk(clk),
        .ifft_dout(ifft_dout),
        .ifft_dout_Index(ifft_dout_Index),
        .ifft_dout_vld(ifft_dout_vld),
        .m_axis_data_tdata({m_axis_data_tdata[23:16],m_axis_data_tdata[7:0]}));
  (* x_core_info = "xfft_v9_1_9,Vivado 2023.1" *) 
  ofdm_tx_ifft_0_0_xfft_0 u_fft
       (.aclk(clk),
        .event_data_in_channel_halt(NLW_u_fft_event_data_in_channel_halt_UNCONNECTED),
        .event_data_out_channel_halt(NLW_u_fft_event_data_out_channel_halt_UNCONNECTED),
        .event_frame_started(NLW_u_fft_event_frame_started_UNCONNECTED),
        .event_status_channel_halt(NLW_u_fft_event_status_channel_halt_UNCONNECTED),
        .event_tlast_missing(NLW_u_fft_event_tlast_missing_UNCONNECTED),
        .event_tlast_unexpected(NLW_u_fft_event_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({NLW_u_fft_m_axis_data_tdata_UNCONNECTED[31:24],m_axis_data_tdata}),
        .m_axis_data_tlast(ifft_dout_last),
        .m_axis_data_tready(ifft_din_rdy),
        .m_axis_data_tuser(ifft_dout_Index),
        .m_axis_data_tvalid(ifft_dout_vld),
        .s_axis_config_tdata({1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_config_tready(NLW_u_fft_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b1),
        .s_axis_data_tdata({ifft_din[15],ifft_din[15],ifft_din[15],ifft_din[15],ifft_din[15],ifft_din[15:8],1'b0,1'b0,1'b0,ifft_din[7],ifft_din[7],ifft_din[7],ifft_din[7],ifft_din[7],ifft_din[7:0],1'b0,1'b0,1'b0}),
        .s_axis_data_tlast(ifft_din_last),
        .s_axis_data_tready(ifft_dout_rdy),
        .s_axis_data_tvalid(ifft_din_vld));
endmodule

(* ORIG_REF_NAME = "xfft_0" *) (* X_CORE_INFO = "xfft_v9_1_9,Vivado 2023.1" *) 
module ofdm_tx_ifft_0_0_xfft_0
   (aclk,
    s_axis_config_tdata,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tlast,
    m_axis_data_tdata,
    m_axis_data_tuser,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tlast,
    event_frame_started,
    event_tlast_unexpected,
    event_tlast_missing,
    event_status_channel_halt,
    event_data_in_channel_halt,
    event_data_out_channel_halt);
  (* syn_isclock = "1" *) input aclk;
  input [15:0]s_axis_config_tdata;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [31:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input s_axis_data_tlast;
  output [31:0]m_axis_data_tdata;
  output [7:0]m_axis_data_tuser;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output m_axis_data_tlast;
  output event_frame_started;
  output event_tlast_unexpected;
  output event_tlast_missing;
  output event_status_channel_halt;
  output event_data_in_channel_halt;
  output event_data_out_channel_halt;


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
