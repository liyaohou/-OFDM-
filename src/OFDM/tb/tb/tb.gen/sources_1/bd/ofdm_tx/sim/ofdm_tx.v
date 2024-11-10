//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Mon Nov  4 14:44:12 2024
//Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
//Command     : generate_target ofdm_tx.bd
//Design      : ofdm_tx
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ofdm_tx,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ofdm_tx,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_clkrst_cnt=21,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ofdm_tx.hwdef" *) 
module ofdm_tx
   (TxPWR,
    clk_125m,
    clk_20m,
    dac_din_rdy,
    dac_dout,
    dac_dout_Index,
    dac_dout_last,
    dac_dout_vld,
    locked,
    mcu_config_din,
    mcu_config_din_start,
    mcu_config_din_vld,
    mcu_config_dout_rdy,
    mcu_mac_din,
    mcu_mac_din_vld,
    mcu_mac_dout_rdy,
    tx_end);
  output [2:0]TxPWR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_125M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_125M, CLK_DOMAIN ofdm_tx_clk_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_125m;
  input clk_20m;
  input dac_din_rdy;
  output [15:0]dac_dout;
  output [8:0]dac_dout_Index;
  output dac_dout_last;
  output dac_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.LOCKED RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.LOCKED, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input locked;
  input [20:0]mcu_config_din;
  input mcu_config_din_start;
  input mcu_config_din_vld;
  output mcu_config_dout_rdy;
  input [7:0]mcu_mac_din;
  input mcu_mac_din_vld;
  output mcu_mac_dout_rdy;
  input tx_end;

  wire clk_0_1;
  wire clk_dac_0_1;
  wire [1:0]convenc_0_m_axis_conv_TDATA;
  wire [3:0]convenc_0_m_axis_conv_TID;
  wire convenc_0_m_axis_conv_TREADY;
  wire convenc_0_m_axis_conv_TSTRB;
  wire convenc_0_m_axis_conv_TVALID;
  wire [15:0]dac_0_dac_dout;
  wire [8:0]dac_0_dac_dout_Index;
  wire dac_0_dac_dout_last;
  wire dac_0_dac_dout_vld;
  wire dac_din_rdy_0_1;
  wire [15:0]ifft_0_m_axis_ifft_TDATA;
  wire ifft_0_m_axis_ifft_TLAST;
  wire ifft_0_m_axis_ifft_TREADY;
  wire [7:0]ifft_0_m_axis_ifft_TUSER;
  wire ifft_0_m_axis_ifft_TVALID;
  wire interleaver_1_0_m_axis_intv1_TDATA;
  wire [1:0]interleaver_1_0_m_axis_intv1_TID;
  wire interleaver_1_0_m_axis_intv1_TREADY;
  wire interleaver_1_0_m_axis_intv1_TSTRB;
  wire interleaver_1_0_m_axis_intv1_TVALID;
  wire interleaver_2_0_m_axis_intv2_TDATA;
  wire [1:0]interleaver_2_0_m_axis_intv2_TID;
  wire interleaver_2_0_m_axis_intv2_TREADY;
  wire interleaver_2_0_m_axis_intv2_TVALID;
  wire [15:0]maping_0_m_axis_map_TDATA;
  wire maping_0_m_axis_map_TREADY;
  wire [5:0]maping_0_m_axis_map_TUSER;
  wire maping_0_m_axis_map_TVALID;
  wire [20:0]mcu_config_din_0_1;
  wire mcu_config_din_start_0_1;
  wire mcu_config_din_vld_0_1;
  wire [7:0]mcu_mac_din_0_1;
  wire mcu_mac_din_vld_0_1;
  wire [15:0]pilot_0_m_axis_pilot_TDATA;
  wire pilot_0_m_axis_pilot_TLAST;
  wire pilot_0_m_axis_pilot_TREADY;
  wire pilot_0_m_axis_pilot_TVALID;
  wire puncture_0_m_axis_punt_TDATA;
  wire [1:0]puncture_0_m_axis_punt_TID;
  wire puncture_0_m_axis_punt_TREADY;
  wire puncture_0_m_axis_punt_TSTRB;
  wire puncture_0_m_axis_punt_TVALID;
  wire rst_n_0_1;
  wire scramler_0_m_axis_scram_TDATA;
  wire [3:0]scramler_0_m_axis_scram_TID;
  wire scramler_0_m_axis_scram_TREADY;
  wire scramler_0_m_axis_scram_TSTRB;
  wire scramler_0_m_axis_scram_TVALID;
  wire [15:0]symbol_train_0_m_axis_train_TDATA;
  wire symbol_train_0_m_axis_train_TLAST;
  wire symbol_train_0_m_axis_train_TREADY;
  wire [8:0]symbol_train_0_m_axis_train_TUSER;
  wire symbol_train_0_m_axis_train_TVALID;
  wire tx_end_0_1;
  wire [2:0]tx_mcu_0_TxPWR;
  wire tx_mcu_0_m_axis_mcu_TDATA;
  wire [3:0]tx_mcu_0_m_axis_mcu_TID;
  wire tx_mcu_0_m_axis_mcu_TREADY;
  wire tx_mcu_0_m_axis_mcu_TSTRB;
  wire tx_mcu_0_m_axis_mcu_TVALID;
  wire tx_mcu_0_mcu_config_dout_rdy;
  wire tx_mcu_0_mcu_dout_scram_load;
  wire [6:0]tx_mcu_0_mcu_dout_scram_seed;
  wire tx_mcu_0_mcu_mac_dout_rdy;
  wire tx_mcu_0_phy_rst_n;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;

  assign TxPWR[2:0] = tx_mcu_0_TxPWR;
  assign clk_0_1 = clk_125m;
  assign clk_dac_0_1 = clk_20m;
  assign dac_din_rdy_0_1 = dac_din_rdy;
  assign dac_dout[15:0] = dac_0_dac_dout;
  assign dac_dout_Index[8:0] = dac_0_dac_dout_Index;
  assign dac_dout_last = dac_0_dac_dout_last;
  assign dac_dout_vld = dac_0_dac_dout_vld;
  assign mcu_config_din_0_1 = mcu_config_din[20:0];
  assign mcu_config_din_start_0_1 = mcu_config_din_start;
  assign mcu_config_din_vld_0_1 = mcu_config_din_vld;
  assign mcu_config_dout_rdy = tx_mcu_0_mcu_config_dout_rdy;
  assign mcu_mac_din_0_1 = mcu_mac_din[7:0];
  assign mcu_mac_din_vld_0_1 = mcu_mac_din_vld;
  assign mcu_mac_dout_rdy = tx_mcu_0_mcu_mac_dout_rdy;
  assign rst_n_0_1 = locked;
  assign tx_end_0_1 = tx_end;
  ofdm_tx_convenc_0_0 convenc_0
       (.clk(clk_0_1),
        .conv_din(scramler_0_m_axis_scram_TDATA),
        .conv_din_rate_con(scramler_0_m_axis_scram_TID),
        .conv_din_rdy(convenc_0_m_axis_conv_TREADY),
        .conv_din_sig_flag(scramler_0_m_axis_scram_TSTRB),
        .conv_din_vld(scramler_0_m_axis_scram_TVALID),
        .conv_dout(convenc_0_m_axis_conv_TDATA),
        .conv_dout_rate_con(convenc_0_m_axis_conv_TID),
        .conv_dout_rdy(scramler_0_m_axis_scram_TREADY),
        .conv_dout_sig_flag(convenc_0_m_axis_conv_TSTRB),
        .conv_dout_vld(convenc_0_m_axis_conv_TVALID),
        .rst_n(util_vector_logic_0_Res));
  ofdm_tx_dac_0_0 dac_0
       (.clk(clk_0_1),
        .clk_dac(clk_dac_0_1),
        .dac_din_rdy(dac_din_rdy_0_1),
        .dac_dout(dac_0_dac_dout),
        .dac_dout_Index(dac_0_dac_dout_Index),
        .dac_dout_last(dac_0_dac_dout_last),
        .dac_dout_vld(dac_0_dac_dout_vld),
        .dac_ifft_din(ifft_0_m_axis_ifft_TDATA),
        .dac_ifft_din_Index(ifft_0_m_axis_ifft_TUSER),
        .dac_ifft_din_last(ifft_0_m_axis_ifft_TLAST),
        .dac_ifft_din_vld(ifft_0_m_axis_ifft_TVALID),
        .dac_ifft_dout_rdy(ifft_0_m_axis_ifft_TREADY),
        .dac_train_din(symbol_train_0_m_axis_train_TDATA),
        .dac_train_din_Index(symbol_train_0_m_axis_train_TUSER),
        .dac_train_din_last(symbol_train_0_m_axis_train_TLAST),
        .dac_train_din_vld(symbol_train_0_m_axis_train_TVALID),
        .dac_train_dout_rdy(symbol_train_0_m_axis_train_TREADY),
        .mcu_config(util_vector_logic_1_Res),
        .rst_n(util_vector_logic_0_Res));
  ofdm_tx_ifft_0_0 ifft_0
       (.clk(clk_0_1),
        .ifft_din(pilot_0_m_axis_pilot_TDATA),
        .ifft_din_last(pilot_0_m_axis_pilot_TLAST),
        .ifft_din_rdy(ifft_0_m_axis_ifft_TREADY),
        .ifft_din_vld(pilot_0_m_axis_pilot_TVALID),
        .ifft_dout(ifft_0_m_axis_ifft_TDATA),
        .ifft_dout_Index(ifft_0_m_axis_ifft_TUSER),
        .ifft_dout_last(ifft_0_m_axis_ifft_TLAST),
        .ifft_dout_rdy(pilot_0_m_axis_pilot_TREADY),
        .ifft_dout_vld(ifft_0_m_axis_ifft_TVALID),
        .rst_n(util_vector_logic_0_Res));
  ofdm_tx_interleaver_1_0_0 interleaver_1_0
       (.clk(clk_0_1),
        .intv1_din(puncture_0_m_axis_punt_TDATA),
        .intv1_din_Map_Type(puncture_0_m_axis_punt_TID),
        .intv1_din_rdy(interleaver_1_0_m_axis_intv1_TREADY),
        .intv1_din_sig_flag(puncture_0_m_axis_punt_TSTRB),
        .intv1_din_vld(puncture_0_m_axis_punt_TVALID),
        .intv1_dout(interleaver_1_0_m_axis_intv1_TDATA),
        .intv1_dout_Map_Type(interleaver_1_0_m_axis_intv1_TID),
        .intv1_dout_rdy(puncture_0_m_axis_punt_TREADY),
        .intv1_dout_sig_flag(interleaver_1_0_m_axis_intv1_TSTRB),
        .intv1_dout_vld(interleaver_1_0_m_axis_intv1_TVALID),
        .rst_n(util_vector_logic_0_Res));
  ofdm_tx_interleaver_2_0_0 interleaver_2_0
       (.clk(clk_0_1),
        .intv2_din(interleaver_1_0_m_axis_intv1_TDATA),
        .intv2_din_Map_Type(interleaver_1_0_m_axis_intv1_TID),
        .intv2_din_rdy(interleaver_2_0_m_axis_intv2_TREADY),
        .intv2_din_sig_flag(interleaver_1_0_m_axis_intv1_TSTRB),
        .intv2_din_vld(interleaver_1_0_m_axis_intv1_TVALID),
        .intv2_dout(interleaver_2_0_m_axis_intv2_TDATA),
        .intv2_dout_Map_Type(interleaver_2_0_m_axis_intv2_TID),
        .intv2_dout_rdy(interleaver_1_0_m_axis_intv1_TREADY),
        .intv2_dout_vld(interleaver_2_0_m_axis_intv2_TVALID),
        .rst_n(util_vector_logic_0_Res));
  ofdm_tx_maping_0_0 maping_0
       (.clk(clk_0_1),
        .map_din(interleaver_2_0_m_axis_intv2_TDATA),
        .map_din_Map_Type(interleaver_2_0_m_axis_intv2_TID),
        .map_din_rdy(maping_0_m_axis_map_TREADY),
        .map_din_vld(interleaver_2_0_m_axis_intv2_TVALID),
        .map_dout(maping_0_m_axis_map_TDATA),
        .map_dout_Index(maping_0_m_axis_map_TUSER),
        .map_dout_rdy(interleaver_2_0_m_axis_intv2_TREADY),
        .map_dout_vld(maping_0_m_axis_map_TVALID),
        .rst_n(util_vector_logic_0_Res));
  ofdm_tx_pilot_0_0 pilot_0
       (.clk(clk_0_1),
        .pilot_din(maping_0_m_axis_map_TDATA),
        .pilot_din_Index(maping_0_m_axis_map_TUSER),
        .pilot_din_rdy(pilot_0_m_axis_pilot_TREADY),
        .pilot_din_vld(maping_0_m_axis_map_TVALID),
        .pilot_dout(pilot_0_m_axis_pilot_TDATA),
        .pilot_dout_last(pilot_0_m_axis_pilot_TLAST),
        .pilot_dout_rdy(maping_0_m_axis_map_TREADY),
        .pilot_dout_vld(pilot_0_m_axis_pilot_TVALID),
        .rst_n(util_vector_logic_0_Res));
  ofdm_tx_puncture_0_0 puncture_0
       (.clk(clk_0_1),
        .punt_din(convenc_0_m_axis_conv_TDATA),
        .punt_din_rate_con(convenc_0_m_axis_conv_TID),
        .punt_din_rdy(puncture_0_m_axis_punt_TREADY),
        .punt_din_sig_flag(convenc_0_m_axis_conv_TSTRB),
        .punt_din_vld(convenc_0_m_axis_conv_TVALID),
        .punt_dout(puncture_0_m_axis_punt_TDATA),
        .punt_dout_Map_Type(puncture_0_m_axis_punt_TID),
        .punt_dout_rdy(convenc_0_m_axis_conv_TREADY),
        .punt_dout_sig_flag(puncture_0_m_axis_punt_TSTRB),
        .punt_dout_vld(puncture_0_m_axis_punt_TVALID),
        .rst_n(util_vector_logic_0_Res));
  ofdm_tx_scramler_0_0 scramler_0
       (.clk(clk_0_1),
        .rst_n(util_vector_logic_0_Res),
        .scram_din(tx_mcu_0_m_axis_mcu_TDATA),
        .scram_din_rate_con(tx_mcu_0_m_axis_mcu_TID),
        .scram_din_rdy(scramler_0_m_axis_scram_TREADY),
        .scram_din_sig_flag(tx_mcu_0_m_axis_mcu_TSTRB),
        .scram_din_vld(tx_mcu_0_m_axis_mcu_TVALID),
        .scram_dout(scramler_0_m_axis_scram_TDATA),
        .scram_dout_rate_con(scramler_0_m_axis_scram_TID),
        .scram_dout_rdy(tx_mcu_0_m_axis_mcu_TREADY),
        .scram_dout_sig_flag(scramler_0_m_axis_scram_TSTRB),
        .scram_dout_vld(scramler_0_m_axis_scram_TVALID),
        .scram_load(tx_mcu_0_mcu_dout_scram_load),
        .scram_seed(tx_mcu_0_mcu_dout_scram_seed));
  ofdm_tx_symbol_train_0_0 symbol_train_0
       (.clk(clk_0_1),
        .rst_n(util_vector_logic_0_Res),
        .train_din_rdy(symbol_train_0_m_axis_train_TREADY),
        .train_dout(symbol_train_0_m_axis_train_TDATA),
        .train_dout_Index(symbol_train_0_m_axis_train_TUSER),
        .train_dout_last(symbol_train_0_m_axis_train_TLAST),
        .train_dout_vld(symbol_train_0_m_axis_train_TVALID));
  ofdm_tx_tx_mcu_0_0 tx_mcu_0
       (.TxPWR(tx_mcu_0_TxPWR),
        .clk(clk_0_1),
        .mcu_config_din(mcu_config_din_0_1),
        .mcu_config_din_start(mcu_config_din_start_0_1),
        .mcu_config_din_vld(mcu_config_din_vld_0_1),
        .mcu_config_dout_rdy(tx_mcu_0_mcu_config_dout_rdy),
        .mcu_din_rdy(tx_mcu_0_m_axis_mcu_TREADY),
        .mcu_dout(tx_mcu_0_m_axis_mcu_TDATA),
        .mcu_dout_rate_con(tx_mcu_0_m_axis_mcu_TID),
        .mcu_dout_scram_load(tx_mcu_0_mcu_dout_scram_load),
        .mcu_dout_scram_seed(tx_mcu_0_mcu_dout_scram_seed),
        .mcu_dout_sig_flag(tx_mcu_0_m_axis_mcu_TSTRB),
        .mcu_dout_vld(tx_mcu_0_m_axis_mcu_TVALID),
        .mcu_mac_din(mcu_mac_din_0_1),
        .mcu_mac_din_vld(mcu_mac_din_vld_0_1),
        .mcu_mac_dout_rdy(tx_mcu_0_mcu_mac_dout_rdy),
        .phy_rst_n(tx_mcu_0_phy_rst_n),
        .rst_n(rst_n_0_1),
        .tx_end(tx_end_0_1));
  ofdm_tx_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_n_0_1),
        .Op2(tx_mcu_0_phy_rst_n),
        .Res(util_vector_logic_0_Res));
  ofdm_tx_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(mcu_config_din_vld_0_1),
        .Op2(tx_mcu_0_mcu_config_dout_rdy),
        .Res(util_vector_logic_1_Res));
endmodule
