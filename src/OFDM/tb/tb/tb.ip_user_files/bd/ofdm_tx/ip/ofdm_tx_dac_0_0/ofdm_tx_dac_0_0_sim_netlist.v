// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:53:47 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.gen/sources_1/bd/ofdm_tx/ip/ofdm_tx_dac_0_0/ofdm_tx_dac_0_0_sim_netlist.v
// Design      : ofdm_tx_dac_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ofdm_tx_dac_0_0,dac,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dac,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ofdm_tx_dac_0_0
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
    dac_dout_Index);
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

  wire clk;
  wire clk_dac;
  wire dac_din_rdy;
  wire [15:0]dac_dout;
  wire [8:0]dac_dout_Index;
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
  wire rst_n;

  ofdm_tx_dac_0_0_dac inst
       (.clk(clk),
        .clk_dac(clk_dac),
        .dac_din_rdy(dac_din_rdy),
        .dac_dout(dac_dout),
        .dac_dout_Index(dac_dout_Index),
        .dac_dout_last(dac_dout_last),
        .dac_dout_vld(dac_dout_vld),
        .dac_ifft_din(dac_ifft_din),
        .dac_ifft_din_Index(dac_ifft_din_Index),
        .dac_ifft_din_last(dac_ifft_din_last),
        .dac_ifft_din_vld(dac_ifft_din_vld),
        .dac_ifft_dout_rdy(dac_ifft_dout_rdy),
        .dac_train_din(dac_train_din),
        .dac_train_din_Index(dac_train_din_Index),
        .dac_train_din_last(dac_train_din_last),
        .dac_train_din_vld(dac_train_din_vld),
        .dac_train_dout_rdy(dac_train_dout_rdy),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "dac" *) 
module ofdm_tx_dac_0_0_dac
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
    dac_dout_Index);
  input clk;
  input clk_dac;
  input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TDATA" *) input [15:0]dac_ifft_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TVALID" *) input dac_ifft_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TLAST" *) input dac_ifft_din_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TUSER" *) input [7:0]dac_ifft_din_Index;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TREADY" *) output dac_ifft_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TDATA" *) input [15:0]dac_train_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TVALID" *) input dac_train_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TLAST" *) input dac_train_din_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TUSER" *) input [8:0]dac_train_din_Index;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TREADY" *) output dac_train_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TREADY" *) input dac_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TDATA" *) output [15:0]dac_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TVALID" *) output dac_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TLAST" *) output dac_dout_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TUSER" *) output [8:0]dac_dout_Index;

  wire clk;
  wire clk_dac;
  wire dac_din_rdy;
  wire [15:0]dac_dout;
  wire [8:0]dac_dout_Index;
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
  wire rst_n;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [8:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire NLW_u_fifo_rd_rst_busy_UNCONNECTED;
  wire NLW_u_fifo_wr_rst_busy_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dac_ifft_dout_rdy_INST_0
       (.I0(dac_train_din_last),
        .I1(s_axis_tready),
        .O(dac_ifft_dout_rdy));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dac_train_dout_rdy_INST_0
       (.I0(s_axis_tready),
        .I1(dac_train_din_last),
        .O(dac_train_dout_rdy));
  ofdm_tx_dac_0_0_edge_detection u_edge_detection
       (.clk(clk),
        .dac_ifft_din(dac_ifft_din),
        .dac_train_din(dac_train_din),
        .dac_train_din_last(dac_train_din_last),
        .s_axis_tdata(s_axis_tdata));
  (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
  ofdm_tx_dac_0_0_fifo_generator_0 u_fifo
       (.m_aclk(clk_dac),
        .m_axis_tdata(dac_dout),
        .m_axis_tlast(dac_dout_last),
        .m_axis_tready(dac_din_rdy),
        .m_axis_tuser(dac_dout_Index),
        .m_axis_tvalid(dac_dout_vld),
        .rd_rst_busy(NLW_u_fifo_rd_rst_busy_UNCONNECTED),
        .s_aclk(clk),
        .s_aresetn(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .wr_rst_busy(NLW_u_fifo_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    u_fifo_i_1
       (.I0(dac_ifft_din_vld),
        .I1(dac_train_din_last),
        .I2(dac_train_din_vld),
        .O(s_axis_tvalid));
  LUT2 #(
    .INIT(4'h8)) 
    u_fifo_i_18
       (.I0(dac_train_din_last),
        .I1(dac_ifft_din_last),
        .O(s_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    u_fifo_i_19
       (.I0(dac_train_din_Index[8]),
        .I1(dac_train_din_last),
        .O(s_axis_tuser[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    u_fifo_i_20
       (.I0(dac_ifft_din_Index[7]),
        .I1(dac_train_din_Index[7]),
        .I2(dac_train_din_last),
        .O(s_axis_tuser[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    u_fifo_i_21
       (.I0(dac_ifft_din_Index[6]),
        .I1(dac_train_din_Index[6]),
        .I2(dac_train_din_last),
        .O(s_axis_tuser[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    u_fifo_i_22
       (.I0(dac_ifft_din_Index[5]),
        .I1(dac_train_din_Index[5]),
        .I2(dac_train_din_last),
        .O(s_axis_tuser[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    u_fifo_i_23
       (.I0(dac_ifft_din_Index[4]),
        .I1(dac_train_din_Index[4]),
        .I2(dac_train_din_last),
        .O(s_axis_tuser[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    u_fifo_i_24
       (.I0(dac_ifft_din_Index[3]),
        .I1(dac_train_din_Index[3]),
        .I2(dac_train_din_last),
        .O(s_axis_tuser[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    u_fifo_i_25
       (.I0(dac_ifft_din_Index[2]),
        .I1(dac_train_din_Index[2]),
        .I2(dac_train_din_last),
        .O(s_axis_tuser[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    u_fifo_i_26
       (.I0(dac_ifft_din_Index[1]),
        .I1(dac_train_din_Index[1]),
        .I2(dac_train_din_last),
        .O(s_axis_tuser[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    u_fifo_i_27
       (.I0(dac_ifft_din_Index[0]),
        .I1(dac_train_din_Index[0]),
        .I2(dac_train_din_last),
        .O(s_axis_tuser[0]));
endmodule

(* ORIG_REF_NAME = "edge_detection" *) 
module ofdm_tx_dac_0_0_edge_detection
   (s_axis_tdata,
    dac_train_din_last,
    clk,
    dac_ifft_din,
    dac_train_din);
  output [15:0]s_axis_tdata;
  input dac_train_din_last;
  input clk;
  input [15:0]dac_ifft_din;
  input [15:0]dac_train_din;

  wire clk;
  wire [15:0]dac_ifft_din;
  wire [15:0]dac_train_din;
  wire dac_train_din_last;
  wire edge_din_r;
  wire [15:0]s_axis_tdata;
  wire [7:0]s_axis_tdata1;
  wire [7:0]s_axis_tdata12_out;
  wire u_fifo_i_28_n_1;
  wire u_fifo_i_28_n_2;
  wire u_fifo_i_28_n_3;
  wire u_fifo_i_29_n_0;
  wire u_fifo_i_29_n_1;
  wire u_fifo_i_29_n_2;
  wire u_fifo_i_29_n_3;
  wire u_fifo_i_30_n_1;
  wire u_fifo_i_30_n_2;
  wire u_fifo_i_30_n_3;
  wire u_fifo_i_31_n_0;
  wire u_fifo_i_31_n_1;
  wire u_fifo_i_31_n_2;
  wire u_fifo_i_31_n_3;
  wire u_fifo_i_32_n_0;
  wire u_fifo_i_33_n_0;
  wire u_fifo_i_34_n_0;
  wire u_fifo_i_35_n_0;
  wire u_fifo_i_36_n_0;
  wire u_fifo_i_37_n_0;
  wire u_fifo_i_38_n_0;
  wire u_fifo_i_39_n_0;
  wire u_fifo_i_40_n_0;
  wire u_fifo_i_41_n_0;
  wire u_fifo_i_42_n_0;
  wire u_fifo_i_43_n_0;
  wire u_fifo_i_44_n_0;
  wire u_fifo_i_45_n_0;
  wire u_fifo_i_46_n_0;
  wire u_fifo_i_47_n_0;
  wire [3:3]NLW_u_fifo_i_28_CO_UNCONNECTED;
  wire [3:3]NLW_u_fifo_i_30_CO_UNCONNECTED;

  FDRE edge_din_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(dac_train_din_last),
        .Q(edge_din_r),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_10
       (.I0(s_axis_tdata1[7]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[7]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[7]),
        .O(s_axis_tdata[7]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_11
       (.I0(s_axis_tdata1[6]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[6]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[6]),
        .O(s_axis_tdata[6]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_12
       (.I0(s_axis_tdata1[5]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[5]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[5]),
        .O(s_axis_tdata[5]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_13
       (.I0(s_axis_tdata1[4]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[4]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[4]),
        .O(s_axis_tdata[4]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_14
       (.I0(s_axis_tdata1[3]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[3]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[3]),
        .O(s_axis_tdata[3]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_15
       (.I0(s_axis_tdata1[2]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[2]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[2]),
        .O(s_axis_tdata[2]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_16
       (.I0(s_axis_tdata1[1]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[1]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[1]),
        .O(s_axis_tdata[1]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_17
       (.I0(s_axis_tdata1[0]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[0]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[0]),
        .O(s_axis_tdata[0]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_2
       (.I0(s_axis_tdata12_out[7]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[15]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[15]),
        .O(s_axis_tdata[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_fifo_i_28
       (.CI(u_fifo_i_29_n_0),
        .CO({NLW_u_fifo_i_28_CO_UNCONNECTED[3],u_fifo_i_28_n_1,u_fifo_i_28_n_2,u_fifo_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,dac_ifft_din[14:12]}),
        .O(s_axis_tdata12_out[7:4]),
        .S({u_fifo_i_32_n_0,u_fifo_i_33_n_0,u_fifo_i_34_n_0,u_fifo_i_35_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_fifo_i_29
       (.CI(1'b0),
        .CO({u_fifo_i_29_n_0,u_fifo_i_29_n_1,u_fifo_i_29_n_2,u_fifo_i_29_n_3}),
        .CYINIT(1'b0),
        .DI(dac_ifft_din[11:8]),
        .O(s_axis_tdata12_out[3:0]),
        .S({u_fifo_i_36_n_0,u_fifo_i_37_n_0,u_fifo_i_38_n_0,u_fifo_i_39_n_0}));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_3
       (.I0(s_axis_tdata12_out[6]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[14]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[14]),
        .O(s_axis_tdata[14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_fifo_i_30
       (.CI(u_fifo_i_31_n_0),
        .CO({NLW_u_fifo_i_30_CO_UNCONNECTED[3],u_fifo_i_30_n_1,u_fifo_i_30_n_2,u_fifo_i_30_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,dac_ifft_din[6:4]}),
        .O(s_axis_tdata1[7:4]),
        .S({u_fifo_i_40_n_0,u_fifo_i_41_n_0,u_fifo_i_42_n_0,u_fifo_i_43_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 u_fifo_i_31
       (.CI(1'b0),
        .CO({u_fifo_i_31_n_0,u_fifo_i_31_n_1,u_fifo_i_31_n_2,u_fifo_i_31_n_3}),
        .CYINIT(1'b0),
        .DI(dac_ifft_din[3:0]),
        .O(s_axis_tdata1[3:0]),
        .S({u_fifo_i_44_n_0,u_fifo_i_45_n_0,u_fifo_i_46_n_0,u_fifo_i_47_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_32
       (.I0(dac_ifft_din[15]),
        .I1(dac_train_din[15]),
        .O(u_fifo_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_33
       (.I0(dac_ifft_din[14]),
        .I1(dac_train_din[14]),
        .O(u_fifo_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_34
       (.I0(dac_ifft_din[13]),
        .I1(dac_train_din[13]),
        .O(u_fifo_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_35
       (.I0(dac_ifft_din[12]),
        .I1(dac_train_din[12]),
        .O(u_fifo_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_36
       (.I0(dac_ifft_din[11]),
        .I1(dac_train_din[11]),
        .O(u_fifo_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_37
       (.I0(dac_ifft_din[10]),
        .I1(dac_train_din[10]),
        .O(u_fifo_i_37_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_38
       (.I0(dac_ifft_din[9]),
        .I1(dac_train_din[9]),
        .O(u_fifo_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_39
       (.I0(dac_ifft_din[8]),
        .I1(dac_train_din[8]),
        .O(u_fifo_i_39_n_0));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_4
       (.I0(s_axis_tdata12_out[5]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[13]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[13]),
        .O(s_axis_tdata[13]));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_40
       (.I0(dac_ifft_din[7]),
        .I1(dac_train_din[7]),
        .O(u_fifo_i_40_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_41
       (.I0(dac_ifft_din[6]),
        .I1(dac_train_din[6]),
        .O(u_fifo_i_41_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_42
       (.I0(dac_ifft_din[5]),
        .I1(dac_train_din[5]),
        .O(u_fifo_i_42_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_43
       (.I0(dac_ifft_din[4]),
        .I1(dac_train_din[4]),
        .O(u_fifo_i_43_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_44
       (.I0(dac_ifft_din[3]),
        .I1(dac_train_din[3]),
        .O(u_fifo_i_44_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_45
       (.I0(dac_ifft_din[2]),
        .I1(dac_train_din[2]),
        .O(u_fifo_i_45_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_46
       (.I0(dac_ifft_din[1]),
        .I1(dac_train_din[1]),
        .O(u_fifo_i_46_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    u_fifo_i_47
       (.I0(dac_ifft_din[0]),
        .I1(dac_train_din[0]),
        .O(u_fifo_i_47_n_0));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_5
       (.I0(s_axis_tdata12_out[4]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[12]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[12]),
        .O(s_axis_tdata[12]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_6
       (.I0(s_axis_tdata12_out[3]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[11]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[11]),
        .O(s_axis_tdata[11]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_7
       (.I0(s_axis_tdata12_out[2]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[10]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[10]),
        .O(s_axis_tdata[10]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_8
       (.I0(s_axis_tdata12_out[1]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[9]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[9]),
        .O(s_axis_tdata[9]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    u_fifo_i_9
       (.I0(s_axis_tdata12_out[0]),
        .I1(edge_din_r),
        .I2(dac_ifft_din[8]),
        .I3(dac_train_din_last),
        .I4(dac_train_din[8]),
        .O(s_axis_tdata[8]));
endmodule

(* ORIG_REF_NAME = "fifo_generator_0" *) (* X_CORE_INFO = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
module ofdm_tx_dac_0_0_fifo_generator_0
   (wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser);
  output wr_rst_busy;
  output rd_rst_busy;
  (* syn_isclock = "1" *) input m_aclk;
  (* syn_isclock = "1" *) input s_aclk;
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
