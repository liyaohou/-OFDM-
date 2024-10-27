// Generator : SpinalHDL dev    git head : f13a74bfab8e20a9c8983318fb04e5dd3821a5a0
// Component : TxTop
// Git hash  : 7ccb2a306d5c78898c0645e63252ba3228e48821

`timescale 1ns/1ps

module TxTop (
  input  wire          sys_rst_n,
  input  wire          rgmii_rxc,
  input  wire [3:0]    rgmii_rxd,
  input  wire          rgmii_rx_ctl,
  output wire          rgmii_txc,
  output wire [3:0]    rgmii_txd,
  output wire          rgmii_tx_ctl,
  output wire          rgmii_rst_n,
  output wire [0:0]    ddr3_ckP,
  output wire [0:0]    ddr3_ckN,
  output wire [0:0]    ddr3_cke,
  output wire [0:0]    ddr3_resetN,
  output wire [0:0]    ddr3_rasN,
  output wire [0:0]    ddr3_casN,
  output wire [0:0]    ddr3_weN,
  output wire [0:0]    ddr3_csN,
  output wire [2:0]    ddr3_ba,
  output wire [14:0]   ddr3_addr,
  output wire [0:0]    ddr3_odt,
  output wire [1:0]    ddr3_dm,
  inout  wire [1:0]    ddr3_dqsP,
  inout  wire [1:0]    ddr3_dqsN,
  inout  wire [15:0]   ddr3_dq,
  output wire          txEnd,
  output wire          dacClk,
  output wire [15:0]   dacData
);

  reg                 workClockArea_ethMac_port_udp_rx_hdr_ready;
  wire       [0:0]    workClockArea_ethMac_port_udp_tx_axis_payload_user;
  wire       [0:0]    workClockArea_configRx_io_udpAxisIn_payload_user;
  wire       [0:0]    workClockArea_harMatch_io_axiIn_payload_user;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_axisWr_payload_user;
  wire       [0:0]    workClockArea_axisTxRateCtrl_io_axiIn_payload_user;
  wire                pll_clk_1_locked;
  wire                pll_clk_1_clk_out1;
  wire                pll_clk_1_clk_out2;
  wire                pll_clk_1_clk_out3;
  wire                pll_clk_1_clk_out4;
  wire                pll_clk_1_clk_out5;
  wire                pll_clk_1_clk_out6;
  wire                workClockArea_ethMac_rgmii_txc;
  wire       [3:0]    workClockArea_ethMac_rgmii_txd;
  wire                workClockArea_ethMac_rgmii_tx_ctl;
  wire                workClockArea_ethMac_rgmii_rst_n;
  wire                workClockArea_ethMac_port_udp_rx_hdr_valid;
  wire                workClockArea_ethMac_port_udp_rx_axis_valid;
  wire       [7:0]    workClockArea_ethMac_port_udp_rx_axis_payload_data;
  wire                workClockArea_ethMac_port_udp_rx_axis_payload_last;
  wire       [0:0]    workClockArea_ethMac_port_udp_rx_axis_payload_user;
  wire       [9:0]    workClockArea_ethMac_port_udp_rx_length;
  wire                workClockArea_ethMac_port_udp_tx_hdr_ready;
  wire                workClockArea_ethMac_port_udp_tx_axis_ready;
  wire                workClockArea_ethMac_port_eth_tx_axis_valid;
  wire       [7:0]    workClockArea_ethMac_port_eth_tx_axis_payload_data;
  wire                workClockArea_ethMac_port_eth_tx_axis_payload_last;
  wire       [0:0]    workClockArea_ethMac_port_eth_tx_axis_payload_user;
  wire                workClockArea_configRx_io_udpAxisIn_ready;
  wire                workClockArea_configRx_io_udpAxisOut_valid;
  wire       [7:0]    workClockArea_configRx_io_udpAxisOut_payload_data;
  wire                workClockArea_configRx_io_udpAxisOut_payload_last;
  wire       [0:0]    workClockArea_configRx_io_udpAxisOut_payload_user;
  wire       [20:0]   workClockArea_configRx_io_config;
  wire                workClockArea_configRx_io_end;
  wire                workClockArea_harMatch_io_hdr_valid;
  wire                workClockArea_harMatch_io_axiIn_ready;
  wire                workClockArea_harMatch_io_axiOut_valid;
  wire       [7:0]    workClockArea_harMatch_io_axiOut_payload_data;
  wire                workClockArea_harMatch_io_axiOut_payload_last;
  wire       [0:0]    workClockArea_harMatch_io_axiOut_payload_user;
  wire                workClockArea_ddr3AxisTxIf_io_axisWr_ready;
  wire       [9:0]    workClockArea_ddr3AxisTxIf_io_lengthOut;
  wire                workClockArea_ddr3AxisTxIf_io_axisRd_valid;
  wire       [7:0]    workClockArea_ddr3AxisTxIf_io_axisRd_payload_data;
  wire                workClockArea_ddr3AxisTxIf_io_axisRd_payload_last;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_axisRd_payload_user;
  wire                workClockArea_ddr3AxisTxIf_io_txCtrl_ready;
  wire                workClockArea_ddr3AxisTxIf_io_writeEnd_valid;
  wire                workClockArea_ddr3AxisTxIf_io_readEnd;
  wire                workClockArea_ddr3AxisTxIf_io_ddr3InitDone;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_ckP;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_ckN;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_cke;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_resetN;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_rasN;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_casN;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_weN;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_csN;
  wire       [2:0]    workClockArea_ddr3AxisTxIf_io_ddr3_ba;
  wire       [14:0]   workClockArea_ddr3AxisTxIf_io_ddr3_addr;
  wire       [0:0]    workClockArea_ddr3AxisTxIf_io_ddr3_odt;
  wire       [1:0]    workClockArea_ddr3AxisTxIf_io_ddr3_dm;
  wire                workClockArea_axisTxRateCtrl_io_txCtrl_valid;
  wire                workClockArea_axisTxRateCtrl_io_axiIn_ready;
  wire                workClockArea_axisTxRateCtrl_io_axiOut_valid;
  wire       [7:0]    workClockArea_axisTxRateCtrl_io_axiOut_payload_data;
  wire                workClockArea_axisTxRateCtrl_io_axiOut_payload_last;
  wire       [0:0]    workClockArea_axisTxRateCtrl_io_axiOut_payload_user;
  wire                workClockArea_axisTxRateCtrl_io_config_valid;
  wire                workClockArea_axisTxRateCtrl_io_cfgStart;
  wire                workClockArea_axisTxRateCtrl_io_txEnd;
  wire                rstN;
  wire                workClockArea_rxHdr_valid;
  wire                workClockArea_rxHdr_ready;
  wire                port_udp_rx_hdr_m2sPipe_valid;
  wire                port_udp_rx_hdr_m2sPipe_ready;
  reg                 port_udp_rx_hdr_rValid;
  wire                when_Stream_l393;
  wire                workClockArea_rxHdr_fire;
  reg        [9:0]    workClockArea_lengthIn;

  pll_clk pll_clk_1 (
    .resetn   (sys_rst_n         ), //i
    .locked   (pll_clk_1_locked  ), //o
    .clk_in1  (rgmii_rxc         ), //i
    .clk_out1 (pll_clk_1_clk_out1), //o
    .clk_out2 (pll_clk_1_clk_out2), //o
    .clk_out3 (pll_clk_1_clk_out3), //o
    .clk_out4 (pll_clk_1_clk_out4), //o
    .clk_out5 (pll_clk_1_clk_out5), //o
    .clk_out6 (pll_clk_1_clk_out6)  //o
  );
  eth_mac_tx workClockArea_ethMac (
    .logic_clk                     (pll_clk_1_clk_out6                                     ), //i
    .gtx_clk                       (pll_clk_1_clk_out5                                     ), //i
    .gtx_clk90                     (pll_clk_1_clk_out6                                     ), //i
    .rst_n                         (rstN                                                   ), //i
    .rgmii_rxc                     (pll_clk_1_clk_out1                                     ), //i
    .rgmii_rxd                     (rgmii_rxd[3:0]                                         ), //i
    .rgmii_rx_ctl                  (rgmii_rx_ctl                                           ), //i
    .rgmii_txc                     (workClockArea_ethMac_rgmii_txc                         ), //o
    .rgmii_txd                     (workClockArea_ethMac_rgmii_txd[3:0]                    ), //o
    .rgmii_tx_ctl                  (workClockArea_ethMac_rgmii_tx_ctl                      ), //o
    .rgmii_rst_n                   (workClockArea_ethMac_rgmii_rst_n                       ), //o
    .port_udp_rx_hdr_valid         (workClockArea_ethMac_port_udp_rx_hdr_valid             ), //o
    .port_udp_rx_hdr_ready         (workClockArea_ethMac_port_udp_rx_hdr_ready             ), //i
    .port_udp_rx_axis_valid        (workClockArea_ethMac_port_udp_rx_axis_valid            ), //o
    .port_udp_rx_axis_ready        (workClockArea_ddr3AxisTxIf_io_axisWr_ready             ), //i
    .port_udp_rx_axis_payload_data (workClockArea_ethMac_port_udp_rx_axis_payload_data[7:0]), //o
    .port_udp_rx_axis_payload_last (workClockArea_ethMac_port_udp_rx_axis_payload_last     ), //o
    .port_udp_rx_axis_payload_user (workClockArea_ethMac_port_udp_rx_axis_payload_user     ), //o
    .port_udp_rx_length            (workClockArea_ethMac_port_udp_rx_length[9:0]           ), //o
    .port_udp_tx_hdr_valid         (workClockArea_harMatch_io_hdr_valid                    ), //i
    .port_udp_tx_hdr_ready         (workClockArea_ethMac_port_udp_tx_hdr_ready             ), //o
    .port_udp_tx_axis_valid        (workClockArea_harMatch_io_axiOut_valid                 ), //i
    .port_udp_tx_axis_ready        (workClockArea_ethMac_port_udp_tx_axis_ready            ), //o
    .port_udp_tx_axis_payload_data (workClockArea_harMatch_io_axiOut_payload_data[7:0]     ), //i
    .port_udp_tx_axis_payload_last (workClockArea_harMatch_io_axiOut_payload_last          ), //i
    .port_udp_tx_axis_payload_user (workClockArea_ethMac_port_udp_tx_axis_payload_user     ), //i
    .port_udp_tx_length            (workClockArea_ddr3AxisTxIf_io_lengthOut[9:0]           ), //i
    .port_udp_tx_dest_ip           (32'hc0a80180                                           ), //i
    .port_eth_tx_axis_valid        (workClockArea_ethMac_port_eth_tx_axis_valid            ), //o
    .port_eth_tx_axis_ready        (workClockArea_axisTxRateCtrl_io_axiIn_ready            ), //i
    .port_eth_tx_axis_payload_data (workClockArea_ethMac_port_eth_tx_axis_payload_data[7:0]), //o
    .port_eth_tx_axis_payload_last (workClockArea_ethMac_port_eth_tx_axis_payload_last     ), //o
    .port_eth_tx_axis_payload_user (workClockArea_ethMac_port_eth_tx_axis_payload_user     )  //o
  );
  ConfigRx workClockArea_configRx (
    .io_udpAxisIn_valid         (workClockArea_ddr3AxisTxIf_io_axisRd_valid            ), //i
    .io_udpAxisIn_ready         (workClockArea_configRx_io_udpAxisIn_ready             ), //o
    .io_udpAxisIn_payload_data  (workClockArea_ddr3AxisTxIf_io_axisRd_payload_data[7:0]), //i
    .io_udpAxisIn_payload_last  (workClockArea_ddr3AxisTxIf_io_axisRd_payload_last     ), //i
    .io_udpAxisIn_payload_user  (workClockArea_configRx_io_udpAxisIn_payload_user      ), //i
    .io_udpAxisOut_valid        (workClockArea_configRx_io_udpAxisOut_valid            ), //o
    .io_udpAxisOut_ready        (workClockArea_harMatch_io_axiIn_ready                 ), //i
    .io_udpAxisOut_payload_data (workClockArea_configRx_io_udpAxisOut_payload_data[7:0]), //o
    .io_udpAxisOut_payload_last (workClockArea_configRx_io_udpAxisOut_payload_last     ), //o
    .io_udpAxisOut_payload_user (workClockArea_configRx_io_udpAxisOut_payload_user     ), //o
    .io_lengtnIn                (workClockArea_ddr3AxisTxIf_io_lengthOut[9:0]          ), //i
    .io_config                  (workClockArea_configRx_io_config[20:0]                ), //o
    .io_end                     (workClockArea_configRx_io_end                         ), //o
    .clk_out1                   (pll_clk_1_clk_out1                                    ), //i
    .rstN                       (rstN                                                  )  //i
  );
  HarMacth workClockArea_harMatch (
    .io_hdr_valid           (workClockArea_harMatch_io_hdr_valid                   ), //o
    .io_hdr_ready           (workClockArea_ethMac_port_udp_tx_hdr_ready            ), //i
    .io_axiIn_valid         (workClockArea_configRx_io_udpAxisOut_valid            ), //i
    .io_axiIn_ready         (workClockArea_harMatch_io_axiIn_ready                 ), //o
    .io_axiIn_payload_data  (workClockArea_configRx_io_udpAxisOut_payload_data[7:0]), //i
    .io_axiIn_payload_last  (workClockArea_configRx_io_udpAxisOut_payload_last     ), //i
    .io_axiIn_payload_user  (workClockArea_harMatch_io_axiIn_payload_user          ), //i
    .io_axiOut_valid        (workClockArea_harMatch_io_axiOut_valid                ), //o
    .io_axiOut_ready        (workClockArea_ethMac_port_udp_tx_axis_ready           ), //i
    .io_axiOut_payload_data (workClockArea_harMatch_io_axiOut_payload_data[7:0]    ), //o
    .io_axiOut_payload_last (workClockArea_harMatch_io_axiOut_payload_last         ), //o
    .io_axiOut_payload_user (workClockArea_harMatch_io_axiOut_payload_user         ), //o
    .clk_out1               (pll_clk_1_clk_out1                                    ), //i
    .rstN                   (rstN                                                  )  //i
  );
  Ddr3AxisTxInterface workClockArea_ddr3AxisTxIf (
    .work_clk               (pll_clk_1_clk_out4                                     ), //i
    .ddr_clk                (pll_clk_1_clk_out1                                     ), //i
    .ddr90_clk              (pll_clk_1_clk_out2                                     ), //i
    .ref_clk                (pll_clk_1_clk_out3                                     ), //i
    .io_axisWr_valid        (workClockArea_ethMac_port_udp_rx_axis_valid            ), //i
    .io_axisWr_ready        (workClockArea_ddr3AxisTxIf_io_axisWr_ready             ), //o
    .io_axisWr_payload_data (workClockArea_ethMac_port_udp_rx_axis_payload_data[7:0]), //i
    .io_axisWr_payload_last (workClockArea_ethMac_port_udp_rx_axis_payload_last     ), //i
    .io_axisWr_payload_user (workClockArea_ddr3AxisTxIf_io_axisWr_payload_user      ), //i
    .io_lengthIn            (workClockArea_lengthIn[9:0]                            ), //i
    .io_lengthOut           (workClockArea_ddr3AxisTxIf_io_lengthOut[9:0]           ), //o
    .io_axisRd_valid        (workClockArea_ddr3AxisTxIf_io_axisRd_valid             ), //o
    .io_axisRd_ready        (workClockArea_configRx_io_udpAxisIn_ready              ), //i
    .io_axisRd_payload_data (workClockArea_ddr3AxisTxIf_io_axisRd_payload_data[7:0] ), //o
    .io_axisRd_payload_last (workClockArea_ddr3AxisTxIf_io_axisRd_payload_last      ), //o
    .io_axisRd_payload_user (workClockArea_ddr3AxisTxIf_io_axisRd_payload_user      ), //o
    .io_txCtrl_valid        (workClockArea_axisTxRateCtrl_io_txCtrl_valid           ), //i
    .io_txCtrl_ready        (workClockArea_ddr3AxisTxIf_io_txCtrl_ready             ), //o
    .io_writeEnd_valid      (workClockArea_ddr3AxisTxIf_io_writeEnd_valid           ), //o
    .io_writeEnd_ready      (workClockArea_configRx_io_end                          ), //i
    .io_readEnd             (workClockArea_ddr3AxisTxIf_io_readEnd                  ), //o
    .io_ddr3InitDone        (workClockArea_ddr3AxisTxIf_io_ddr3InitDone             ), //o
    .io_ddr3_ckP            (workClockArea_ddr3AxisTxIf_io_ddr3_ckP                 ), //o
    .io_ddr3_ckN            (workClockArea_ddr3AxisTxIf_io_ddr3_ckN                 ), //o
    .io_ddr3_cke            (workClockArea_ddr3AxisTxIf_io_ddr3_cke                 ), //o
    .io_ddr3_resetN         (workClockArea_ddr3AxisTxIf_io_ddr3_resetN              ), //o
    .io_ddr3_rasN           (workClockArea_ddr3AxisTxIf_io_ddr3_rasN                ), //o
    .io_ddr3_casN           (workClockArea_ddr3AxisTxIf_io_ddr3_casN                ), //o
    .io_ddr3_weN            (workClockArea_ddr3AxisTxIf_io_ddr3_weN                 ), //o
    .io_ddr3_csN            (workClockArea_ddr3AxisTxIf_io_ddr3_csN                 ), //o
    .io_ddr3_ba             (workClockArea_ddr3AxisTxIf_io_ddr3_ba[2:0]             ), //o
    .io_ddr3_addr           (workClockArea_ddr3AxisTxIf_io_ddr3_addr[14:0]          ), //o
    .io_ddr3_odt            (workClockArea_ddr3AxisTxIf_io_ddr3_odt                 ), //o
    .io_ddr3_dm             (workClockArea_ddr3AxisTxIf_io_ddr3_dm[1:0]             ), //o
    .io_ddr3_dqsP           (ddr3_dqsP                                              ), //~
    .io_ddr3_dqsN           (ddr3_dqsN                                              ), //~
    .io_ddr3_dq             (ddr3_dq                                                ), //~
    .clk_out4               (pll_clk_1_clk_out4                                     ), //i
    .rstN                   (rstN                                                   ), //i
    .clk_out1               (pll_clk_1_clk_out1                                     )  //i
  );
  AxisTxRateCtrl workClockArea_axisTxRateCtrl (
    .io_txCtrl_valid        (workClockArea_axisTxRateCtrl_io_txCtrl_valid            ), //o
    .io_txCtrl_ready        (workClockArea_ddr3AxisTxIf_io_txCtrl_ready              ), //i
    .io_axiIn_valid         (workClockArea_ethMac_port_eth_tx_axis_valid             ), //i
    .io_axiIn_ready         (workClockArea_axisTxRateCtrl_io_axiIn_ready             ), //o
    .io_axiIn_payload_data  (workClockArea_ethMac_port_eth_tx_axis_payload_data[7:0] ), //i
    .io_axiIn_payload_last  (workClockArea_ethMac_port_eth_tx_axis_payload_last      ), //i
    .io_axiIn_payload_user  (workClockArea_axisTxRateCtrl_io_axiIn_payload_user      ), //i
    .io_axiOut_valid        (workClockArea_axisTxRateCtrl_io_axiOut_valid            ), //o
    .io_axiOut_ready        (1'b1                                                    ), //i
    .io_axiOut_payload_data (workClockArea_axisTxRateCtrl_io_axiOut_payload_data[7:0]), //o
    .io_axiOut_payload_last (workClockArea_axisTxRateCtrl_io_axiOut_payload_last     ), //o
    .io_axiOut_payload_user (workClockArea_axisTxRateCtrl_io_axiOut_payload_user     ), //o
    .io_config_valid        (workClockArea_axisTxRateCtrl_io_config_valid            ), //o
    .io_config_ready        (1'b1                                                    ), //i
    .io_cfgStart            (workClockArea_axisTxRateCtrl_io_cfgStart                ), //o
    .io_start               (workClockArea_ddr3AxisTxIf_io_writeEnd_valid            ), //i
    .io_rxEnd               (workClockArea_ddr3AxisTxIf_io_readEnd                   ), //i
    .io_txEnd               (workClockArea_axisTxRateCtrl_io_txEnd                   ), //o
    .clk_out1               (pll_clk_1_clk_out1                                      ), //i
    .rstN                   (rstN                                                    )  //i
  );
  assign rstN = (sys_rst_n && pll_clk_1_locked);
  assign workClockArea_rxHdr_ready = 1'b1;
  assign rgmii_txc = workClockArea_ethMac_rgmii_txc;
  assign rgmii_txd = workClockArea_ethMac_rgmii_txd;
  assign rgmii_tx_ctl = workClockArea_ethMac_rgmii_tx_ctl;
  assign rgmii_rst_n = workClockArea_ethMac_rgmii_rst_n;
  always @(*) begin
    workClockArea_ethMac_port_udp_rx_hdr_ready = port_udp_rx_hdr_m2sPipe_ready;
    if(when_Stream_l393) begin
      workClockArea_ethMac_port_udp_rx_hdr_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! port_udp_rx_hdr_m2sPipe_valid);
  assign port_udp_rx_hdr_m2sPipe_valid = port_udp_rx_hdr_rValid;
  assign workClockArea_rxHdr_valid = port_udp_rx_hdr_m2sPipe_valid;
  assign port_udp_rx_hdr_m2sPipe_ready = workClockArea_rxHdr_ready;
  assign workClockArea_rxHdr_fire = (workClockArea_rxHdr_valid && workClockArea_rxHdr_ready);
  assign workClockArea_harMatch_io_axiIn_payload_user[0 : 0] = workClockArea_configRx_io_udpAxisOut_payload_user[0 : 0];
  assign workClockArea_ethMac_port_udp_tx_axis_payload_user[0 : 0] = workClockArea_harMatch_io_axiOut_payload_user[0 : 0];
  assign workClockArea_ddr3AxisTxIf_io_axisWr_payload_user[0 : 0] = workClockArea_ethMac_port_udp_rx_axis_payload_user[0 : 0];
  assign workClockArea_configRx_io_udpAxisIn_payload_user[0 : 0] = workClockArea_ddr3AxisTxIf_io_axisRd_payload_user[0 : 0];
  assign ddr3_ckP = workClockArea_ddr3AxisTxIf_io_ddr3_ckP;
  assign ddr3_ckN = workClockArea_ddr3AxisTxIf_io_ddr3_ckN;
  assign ddr3_cke = workClockArea_ddr3AxisTxIf_io_ddr3_cke;
  assign ddr3_resetN = workClockArea_ddr3AxisTxIf_io_ddr3_resetN;
  assign ddr3_rasN = workClockArea_ddr3AxisTxIf_io_ddr3_rasN;
  assign ddr3_casN = workClockArea_ddr3AxisTxIf_io_ddr3_casN;
  assign ddr3_weN = workClockArea_ddr3AxisTxIf_io_ddr3_weN;
  assign ddr3_csN = workClockArea_ddr3AxisTxIf_io_ddr3_csN;
  assign ddr3_ba = workClockArea_ddr3AxisTxIf_io_ddr3_ba;
  assign ddr3_addr = workClockArea_ddr3AxisTxIf_io_ddr3_addr;
  assign ddr3_odt = workClockArea_ddr3AxisTxIf_io_ddr3_odt;
  assign ddr3_dm = workClockArea_ddr3AxisTxIf_io_ddr3_dm;
  assign workClockArea_axisTxRateCtrl_io_axiIn_payload_user[0 : 0] = workClockArea_ethMac_port_eth_tx_axis_payload_user[0 : 0];
  assign txEnd = workClockArea_axisTxRateCtrl_io_txEnd;
  assign dacClk = rgmii_rxc;
  assign dacData = 16'h0;
  always @(posedge pll_clk_1_clk_out1 or negedge rstN) begin
    if(!rstN) begin
      port_udp_rx_hdr_rValid <= 1'b0;
    end else begin
      if(workClockArea_ethMac_port_udp_rx_hdr_ready) begin
        port_udp_rx_hdr_rValid <= workClockArea_ethMac_port_udp_rx_hdr_valid;
      end
    end
  end

  always @(posedge pll_clk_1_clk_out1) begin
    if(workClockArea_rxHdr_fire) begin
      workClockArea_lengthIn <= workClockArea_ethMac_port_udp_rx_length;
    end
  end


endmodule

module AxisTxRateCtrl (
  output reg           io_txCtrl_valid,
  input  wire          io_txCtrl_ready,
  input  wire          io_axiIn_valid,
  output wire          io_axiIn_ready,
  input  wire [7:0]    io_axiIn_payload_data,
  input  wire          io_axiIn_payload_last,
  input  wire [0:0]    io_axiIn_payload_user,
  output wire          io_axiOut_valid,
  input  wire          io_axiOut_ready,
  output wire [7:0]    io_axiOut_payload_data,
  output wire          io_axiOut_payload_last,
  output wire [0:0]    io_axiOut_payload_user,
  output reg           io_config_valid,
  input  wire          io_config_ready,
  output wire          io_cfgStart,
  input  wire          io_start,
  input  wire          io_rxEnd,
  output reg           io_txEnd,
  input  wire          clk_out1,
  input  wire          rstN
);
  localparam fsm_enumDef_2_BOOT = 3'd0;
  localparam fsm_enumDef_2_idle = 3'd1;
  localparam fsm_enumDef_2_cfg = 3'd2;
  localparam fsm_enumDef_2_need = 3'd3;
  localparam fsm_enumDef_2_rxd = 3'd4;
  localparam fsm_enumDef_2_txd = 3'd5;
  localparam fsm_enumDef_2_end_1 = 3'd6;

  wire       [0:0]    fifo_io_push_payload_user;
  wire                fifo_io_pop_ready;
  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [7:0]    fifo_io_pop_payload_data;
  wire                fifo_io_pop_payload_last;
  wire       [0:0]    fifo_io_pop_payload_user;
  wire       [7:0]    fifo_io_occupancy;
  wire       [7:0]    fifo_io_availability;
  reg                 cfgStart;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  wire                _zz_io_axiOut_valid;
  wire       [0:0]    _zz_io_axiOut_payload_user;
  reg        [2:0]    fsm_stateReg;
  reg        [2:0]    fsm_stateNext;
  reg                 io_start_regNext;
  wire                when_AxisTxRateCtrl_l35;
  reg                 _zz_1;
  wire                when_AxisTxRateCtrl_l51;
  wire                when_AxisTxRateCtrl_l57;
  wire                when_AxisTxRateCtrl_l60;
  wire                when_AxisTxRateCtrl_l63;
  wire                when_StateMachine_l253;
  `ifndef SYNTHESIS
  reg [39:0] fsm_stateReg_string;
  reg [39:0] fsm_stateNext_string;
  `endif


  StreamFifoLowLatency_5 fifo (
    .io_push_valid        (io_axiIn_valid               ), //i
    .io_push_ready        (fifo_io_push_ready           ), //o
    .io_push_payload_data (io_axiIn_payload_data[7:0]   ), //i
    .io_push_payload_last (io_axiIn_payload_last        ), //i
    .io_push_payload_user (fifo_io_push_payload_user    ), //i
    .io_pop_valid         (fifo_io_pop_valid            ), //o
    .io_pop_ready         (fifo_io_pop_ready            ), //i
    .io_pop_payload_data  (fifo_io_pop_payload_data[7:0]), //o
    .io_pop_payload_last  (fifo_io_pop_payload_last     ), //o
    .io_pop_payload_user  (fifo_io_pop_payload_user     ), //o
    .io_flush             (1'b0                         ), //i
    .io_occupancy         (fifo_io_occupancy[7:0]       ), //o
    .io_availability      (fifo_io_availability[7:0]    ), //o
    .clk_out1             (clk_out1                     ), //i
    .rstN                 (rstN                         )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_2_BOOT : fsm_stateReg_string = "BOOT ";
      fsm_enumDef_2_idle : fsm_stateReg_string = "idle ";
      fsm_enumDef_2_cfg : fsm_stateReg_string = "cfg  ";
      fsm_enumDef_2_need : fsm_stateReg_string = "need ";
      fsm_enumDef_2_rxd : fsm_stateReg_string = "rxd  ";
      fsm_enumDef_2_txd : fsm_stateReg_string = "txd  ";
      fsm_enumDef_2_end_1 : fsm_stateReg_string = "end_1";
      default : fsm_stateReg_string = "?????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_2_BOOT : fsm_stateNext_string = "BOOT ";
      fsm_enumDef_2_idle : fsm_stateNext_string = "idle ";
      fsm_enumDef_2_cfg : fsm_stateNext_string = "cfg  ";
      fsm_enumDef_2_need : fsm_stateNext_string = "need ";
      fsm_enumDef_2_rxd : fsm_stateNext_string = "rxd  ";
      fsm_enumDef_2_txd : fsm_stateNext_string = "txd  ";
      fsm_enumDef_2_end_1 : fsm_stateNext_string = "end_1";
      default : fsm_stateNext_string = "?????";
    endcase
  end
  `endif

  assign io_cfgStart = cfgStart;
  always @(*) begin
    io_config_valid = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_2_idle : begin
      end
      fsm_enumDef_2_cfg : begin
        io_config_valid = 1'b1;
      end
      fsm_enumDef_2_need : begin
      end
      fsm_enumDef_2_rxd : begin
      end
      fsm_enumDef_2_txd : begin
      end
      fsm_enumDef_2_end_1 : begin
      end
      default : begin
      end
    endcase
  end

  assign io_axiIn_ready = fifo_io_push_ready;
  assign fifo_io_push_payload_user[0 : 0] = io_axiIn_payload_user[0 : 0];
  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_2_idle : begin
      end
      fsm_enumDef_2_cfg : begin
      end
      fsm_enumDef_2_need : begin
      end
      fsm_enumDef_2_rxd : begin
      end
      fsm_enumDef_2_txd : begin
      end
      fsm_enumDef_2_end_1 : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  assign _zz_io_axiOut_valid = (! (fsm_stateReg == fsm_enumDef_2_rxd));
  assign fifo_io_pop_ready = (io_axiOut_ready && _zz_io_axiOut_valid);
  assign _zz_io_axiOut_payload_user[0 : 0] = fifo_io_pop_payload_user[0 : 0];
  assign io_axiOut_valid = (fifo_io_pop_valid && _zz_io_axiOut_valid);
  assign io_axiOut_payload_data = fifo_io_pop_payload_data;
  assign io_axiOut_payload_last = fifo_io_pop_payload_last;
  assign io_axiOut_payload_user[0 : 0] = _zz_io_axiOut_payload_user[0 : 0];
  always @(*) begin
    io_txCtrl_valid = 1'b0;
    if(when_StateMachine_l253) begin
      io_txCtrl_valid = 1'b1;
    end
  end

  always @(*) begin
    io_txEnd = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_2_idle : begin
      end
      fsm_enumDef_2_cfg : begin
      end
      fsm_enumDef_2_need : begin
      end
      fsm_enumDef_2_rxd : begin
      end
      fsm_enumDef_2_txd : begin
      end
      fsm_enumDef_2_end_1 : begin
        if(when_AxisTxRateCtrl_l63) begin
          io_txEnd = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_2_idle : begin
        if(when_AxisTxRateCtrl_l35) begin
          fsm_stateNext = fsm_enumDef_2_cfg;
        end
      end
      fsm_enumDef_2_cfg : begin
        if(io_config_ready) begin
          fsm_stateNext = fsm_enumDef_2_need;
        end
      end
      fsm_enumDef_2_need : begin
        if(_zz_1) begin
          fsm_stateNext = fsm_enumDef_2_rxd;
        end else begin
          if(when_AxisTxRateCtrl_l51) begin
            fsm_stateNext = fsm_enumDef_2_txd;
          end
        end
      end
      fsm_enumDef_2_rxd : begin
        if(when_AxisTxRateCtrl_l57) begin
          fsm_stateNext = fsm_enumDef_2_need;
        end
      end
      fsm_enumDef_2_txd : begin
        if(when_AxisTxRateCtrl_l60) begin
          fsm_stateNext = fsm_enumDef_2_need;
        end
        if(io_rxEnd) begin
          fsm_stateNext = fsm_enumDef_2_end_1;
        end
      end
      fsm_enumDef_2_end_1 : begin
        if(when_AxisTxRateCtrl_l63) begin
          fsm_stateNext = fsm_enumDef_2_idle;
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_2_idle;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_2_BOOT;
    end
  end

  assign when_AxisTxRateCtrl_l35 = (io_start && (! io_start_regNext));
  assign when_AxisTxRateCtrl_l51 = (8'h5c < fifo_io_occupancy);
  assign when_AxisTxRateCtrl_l57 = (8'h5c <= fifo_io_occupancy);
  assign when_AxisTxRateCtrl_l60 = (fifo_io_occupancy <= 8'h5c);
  assign when_AxisTxRateCtrl_l63 = (fifo_io_occupancy == 8'h0);
  assign when_StateMachine_l253 = ((! (fsm_stateReg == fsm_enumDef_2_need)) && (fsm_stateNext == fsm_enumDef_2_need));
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      cfgStart <= 1'b0;
      fsm_stateReg <= fsm_enumDef_2_BOOT;
    end else begin
      fsm_stateReg <= fsm_stateNext;
      case(fsm_stateReg)
        fsm_enumDef_2_idle : begin
        end
        fsm_enumDef_2_cfg : begin
          cfgStart <= 1'b1;
        end
        fsm_enumDef_2_need : begin
        end
        fsm_enumDef_2_rxd : begin
        end
        fsm_enumDef_2_txd : begin
        end
        fsm_enumDef_2_end_1 : begin
          if(when_AxisTxRateCtrl_l63) begin
            cfgStart <= 1'b0;
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk_out1) begin
    io_start_regNext <= io_start;
  end

  always @(posedge clk_out1) begin
    _zz_1 <= ((fsm_stateNext != fsm_enumDef_2_cfg) && (fsm_stateReg == fsm_enumDef_2_cfg));
  end


endmodule

module Ddr3AxisTxInterface (
  input  wire          work_clk,
  input  wire          ddr_clk,
  input  wire          ddr90_clk,
  input  wire          ref_clk,
  input  wire          io_axisWr_valid,
  output wire          io_axisWr_ready,
  input  wire [7:0]    io_axisWr_payload_data,
  input  wire          io_axisWr_payload_last,
  input  wire [0:0]    io_axisWr_payload_user,
  input  wire [9:0]    io_lengthIn,
  output wire [9:0]    io_lengthOut,
  output wire          io_axisRd_valid,
  input  wire          io_axisRd_ready,
  output wire [7:0]    io_axisRd_payload_data,
  output wire          io_axisRd_payload_last,
  output wire [0:0]    io_axisRd_payload_user,
  input  wire          io_txCtrl_valid,
  output wire          io_txCtrl_ready,
  output wire          io_writeEnd_valid,
  input  wire          io_writeEnd_ready,
  output wire          io_readEnd,
  output wire          io_ddr3InitDone,
  output wire [0:0]    io_ddr3_ckP,
  output wire [0:0]    io_ddr3_ckN,
  output wire [0:0]    io_ddr3_cke,
  output wire [0:0]    io_ddr3_resetN,
  output wire [0:0]    io_ddr3_rasN,
  output wire [0:0]    io_ddr3_casN,
  output wire [0:0]    io_ddr3_weN,
  output wire [0:0]    io_ddr3_csN,
  output wire [2:0]    io_ddr3_ba,
  output wire [14:0]   io_ddr3_addr,
  output wire [0:0]    io_ddr3_odt,
  output wire [1:0]    io_ddr3_dm,
  inout  wire [1:0]    io_ddr3_dqsP,
  inout  wire [1:0]    io_ddr3_dqsN,
  inout  wire [15:0]   io_ddr3_dq,
  input  wire          clk_out4,
  input  wire          rstN,
  input  wire          clk_out1
);

  wire       [0:0]    axi4StreamToBmb_1_axiIn_payload_user;
  wire                axi4StreamToBmb_1_axiIn_ready;
  wire                axi4StreamToBmb_1_axiOut_valid;
  wire       [7:0]    axi4StreamToBmb_1_axiOut_payload_data;
  wire                axi4StreamToBmb_1_axiOut_payload_last;
  wire       [0:0]    axi4StreamToBmb_1_axiOut_payload_user;
  wire                axi4StreamToBmb_1_rdCtr_ready;
  wire                axi4StreamToBmb_1_writeEnd_valid;
  wire                axi4StreamToBmb_1_bmb_cmd_valid;
  wire                axi4StreamToBmb_1_bmb_cmd_payload_last;
  wire       [0:0]    axi4StreamToBmb_1_bmb_cmd_payload_fragment_opcode;
  wire       [28:0]   axi4StreamToBmb_1_bmb_cmd_payload_fragment_address;
  wire       [9:0]    axi4StreamToBmb_1_bmb_cmd_payload_fragment_length;
  wire       [31:0]   axi4StreamToBmb_1_bmb_cmd_payload_fragment_data;
  wire       [3:0]    axi4StreamToBmb_1_bmb_cmd_payload_fragment_mask;
  wire       [3:0]    axi4StreamToBmb_1_bmb_cmd_payload_fragment_context;
  wire                axi4StreamToBmb_1_bmb_rsp_ready;
  wire                axi4StreamToBmb_1_error;
  wire                axi4StreamToBmb_1_readEnd;
  wire       [9:0]    axi4StreamToBmb_1_lengthOut;
  wire                bmbClockArea_bmbDfiDdr3_io_bmb_cmd_ready;
  wire                bmbClockArea_bmbDfiDdr3_io_bmb_rsp_valid;
  wire                bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_last;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_opcode;
  wire       [31:0]   bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_data;
  wire       [3:0]    bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_context;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_ckP;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_ckN;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_cke;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_resetN;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_rasN;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_casN;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_weN;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_csN;
  wire       [2:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_ba;
  wire       [14:0]   bmbClockArea_bmbDfiDdr3_io_ddr3_addr;
  wire       [0:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_odt;
  wire       [1:0]    bmbClockArea_bmbDfiDdr3_io_ddr3_dm;
  wire                bmbClockArea_bmbDfiDdr3_io_initDone;

  Axi4StreamToBmb axi4StreamToBmb_1 (
    .axiIn_valid                      (io_axisWr_valid                                                 ), //i
    .axiIn_ready                      (axi4StreamToBmb_1_axiIn_ready                                   ), //o
    .axiIn_payload_data               (io_axisWr_payload_data[7:0]                                     ), //i
    .axiIn_payload_last               (io_axisWr_payload_last                                          ), //i
    .axiIn_payload_user               (axi4StreamToBmb_1_axiIn_payload_user                            ), //i
    .axiOut_valid                     (axi4StreamToBmb_1_axiOut_valid                                  ), //o
    .axiOut_ready                     (io_axisRd_ready                                                 ), //i
    .axiOut_payload_data              (axi4StreamToBmb_1_axiOut_payload_data[7:0]                      ), //o
    .axiOut_payload_last              (axi4StreamToBmb_1_axiOut_payload_last                           ), //o
    .axiOut_payload_user              (axi4StreamToBmb_1_axiOut_payload_user                           ), //o
    .rdCtr_valid                      (io_txCtrl_valid                                                 ), //i
    .rdCtr_ready                      (axi4StreamToBmb_1_rdCtr_ready                                   ), //o
    .writeEnd_valid                   (axi4StreamToBmb_1_writeEnd_valid                                ), //o
    .writeEnd_ready                   (io_writeEnd_ready                                               ), //i
    .bmb_cmd_valid                    (axi4StreamToBmb_1_bmb_cmd_valid                                 ), //o
    .bmb_cmd_ready                    (bmbClockArea_bmbDfiDdr3_io_bmb_cmd_ready                        ), //i
    .bmb_cmd_payload_last             (axi4StreamToBmb_1_bmb_cmd_payload_last                          ), //o
    .bmb_cmd_payload_fragment_opcode  (axi4StreamToBmb_1_bmb_cmd_payload_fragment_opcode               ), //o
    .bmb_cmd_payload_fragment_address (axi4StreamToBmb_1_bmb_cmd_payload_fragment_address[28:0]        ), //o
    .bmb_cmd_payload_fragment_length  (axi4StreamToBmb_1_bmb_cmd_payload_fragment_length[9:0]          ), //o
    .bmb_cmd_payload_fragment_data    (axi4StreamToBmb_1_bmb_cmd_payload_fragment_data[31:0]           ), //o
    .bmb_cmd_payload_fragment_mask    (axi4StreamToBmb_1_bmb_cmd_payload_fragment_mask[3:0]            ), //o
    .bmb_cmd_payload_fragment_context (axi4StreamToBmb_1_bmb_cmd_payload_fragment_context[3:0]         ), //o
    .bmb_rsp_valid                    (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_valid                        ), //i
    .bmb_rsp_ready                    (axi4StreamToBmb_1_bmb_rsp_ready                                 ), //o
    .bmb_rsp_payload_last             (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_last                 ), //i
    .bmb_rsp_payload_fragment_opcode  (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_opcode      ), //i
    .bmb_rsp_payload_fragment_data    (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_data[31:0]  ), //i
    .bmb_rsp_payload_fragment_context (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_context[3:0]), //i
    .error                            (axi4StreamToBmb_1_error                                         ), //o
    .readEnd                          (axi4StreamToBmb_1_readEnd                                       ), //o
    .lengthIn                         (io_lengthIn[9:0]                                                ), //i
    .lengthOut                        (axi4StreamToBmb_1_lengthOut[9:0]                                ), //o
    .clk_out1                         (clk_out1                                                        ), //i
    .rstN                             (rstN                                                            ), //i
    .clk_out4                         (clk_out4                                                        )  //i
  );
  BmbDfiDdr3 bmbClockArea_bmbDfiDdr3 (
    .io_clk1                             (work_clk                                                        ), //i
    .io_clk2                             (ddr_clk                                                         ), //i
    .io_clk3                             (ddr90_clk                                                       ), //i
    .io_clk4                             (ref_clk                                                         ), //i
    .io_bmb_cmd_valid                    (axi4StreamToBmb_1_bmb_cmd_valid                                 ), //i
    .io_bmb_cmd_ready                    (bmbClockArea_bmbDfiDdr3_io_bmb_cmd_ready                        ), //o
    .io_bmb_cmd_payload_last             (axi4StreamToBmb_1_bmb_cmd_payload_last                          ), //i
    .io_bmb_cmd_payload_fragment_opcode  (axi4StreamToBmb_1_bmb_cmd_payload_fragment_opcode               ), //i
    .io_bmb_cmd_payload_fragment_address (axi4StreamToBmb_1_bmb_cmd_payload_fragment_address[28:0]        ), //i
    .io_bmb_cmd_payload_fragment_length  (axi4StreamToBmb_1_bmb_cmd_payload_fragment_length[9:0]          ), //i
    .io_bmb_cmd_payload_fragment_data    (axi4StreamToBmb_1_bmb_cmd_payload_fragment_data[31:0]           ), //i
    .io_bmb_cmd_payload_fragment_mask    (axi4StreamToBmb_1_bmb_cmd_payload_fragment_mask[3:0]            ), //i
    .io_bmb_cmd_payload_fragment_context (axi4StreamToBmb_1_bmb_cmd_payload_fragment_context[3:0]         ), //i
    .io_bmb_rsp_valid                    (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_valid                        ), //o
    .io_bmb_rsp_ready                    (axi4StreamToBmb_1_bmb_rsp_ready                                 ), //i
    .io_bmb_rsp_payload_last             (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_last                 ), //o
    .io_bmb_rsp_payload_fragment_opcode  (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_opcode      ), //o
    .io_bmb_rsp_payload_fragment_data    (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_data[31:0]  ), //o
    .io_bmb_rsp_payload_fragment_context (bmbClockArea_bmbDfiDdr3_io_bmb_rsp_payload_fragment_context[3:0]), //o
    .io_ddr3_ckP                         (bmbClockArea_bmbDfiDdr3_io_ddr3_ckP                             ), //o
    .io_ddr3_ckN                         (bmbClockArea_bmbDfiDdr3_io_ddr3_ckN                             ), //o
    .io_ddr3_cke                         (bmbClockArea_bmbDfiDdr3_io_ddr3_cke                             ), //o
    .io_ddr3_resetN                      (bmbClockArea_bmbDfiDdr3_io_ddr3_resetN                          ), //o
    .io_ddr3_rasN                        (bmbClockArea_bmbDfiDdr3_io_ddr3_rasN                            ), //o
    .io_ddr3_casN                        (bmbClockArea_bmbDfiDdr3_io_ddr3_casN                            ), //o
    .io_ddr3_weN                         (bmbClockArea_bmbDfiDdr3_io_ddr3_weN                             ), //o
    .io_ddr3_csN                         (bmbClockArea_bmbDfiDdr3_io_ddr3_csN                             ), //o
    .io_ddr3_ba                          (bmbClockArea_bmbDfiDdr3_io_ddr3_ba[2:0]                         ), //o
    .io_ddr3_addr                        (bmbClockArea_bmbDfiDdr3_io_ddr3_addr[14:0]                      ), //o
    .io_ddr3_odt                         (bmbClockArea_bmbDfiDdr3_io_ddr3_odt                             ), //o
    .io_ddr3_dm                          (bmbClockArea_bmbDfiDdr3_io_ddr3_dm[1:0]                         ), //o
    .io_ddr3_dqsP                        (io_ddr3_dqsP                                                    ), //~
    .io_ddr3_dqsN                        (io_ddr3_dqsN                                                    ), //~
    .io_ddr3_dq                          (io_ddr3_dq                                                      ), //~
    .io_initDone                         (bmbClockArea_bmbDfiDdr3_io_initDone                             ), //o
    .clk_out4                            (clk_out4                                                        ), //i
    .rstN                                (rstN                                                            )  //i
  );
  assign io_axisWr_ready = axi4StreamToBmb_1_axiIn_ready;
  assign axi4StreamToBmb_1_axiIn_payload_user[0 : 0] = io_axisWr_payload_user[0 : 0];
  assign io_lengthOut = axi4StreamToBmb_1_lengthOut;
  assign io_axisRd_valid = axi4StreamToBmb_1_axiOut_valid;
  assign io_axisRd_payload_data = axi4StreamToBmb_1_axiOut_payload_data;
  assign io_axisRd_payload_last = axi4StreamToBmb_1_axiOut_payload_last;
  assign io_axisRd_payload_user[0 : 0] = axi4StreamToBmb_1_axiOut_payload_user[0 : 0];
  assign io_txCtrl_ready = axi4StreamToBmb_1_rdCtr_ready;
  assign io_writeEnd_valid = axi4StreamToBmb_1_writeEnd_valid;
  assign io_readEnd = axi4StreamToBmb_1_readEnd;
  assign io_ddr3InitDone = bmbClockArea_bmbDfiDdr3_io_initDone;
  assign io_ddr3_ckP = bmbClockArea_bmbDfiDdr3_io_ddr3_ckP;
  assign io_ddr3_ckN = bmbClockArea_bmbDfiDdr3_io_ddr3_ckN;
  assign io_ddr3_cke = bmbClockArea_bmbDfiDdr3_io_ddr3_cke;
  assign io_ddr3_resetN = bmbClockArea_bmbDfiDdr3_io_ddr3_resetN;
  assign io_ddr3_rasN = bmbClockArea_bmbDfiDdr3_io_ddr3_rasN;
  assign io_ddr3_casN = bmbClockArea_bmbDfiDdr3_io_ddr3_casN;
  assign io_ddr3_weN = bmbClockArea_bmbDfiDdr3_io_ddr3_weN;
  assign io_ddr3_csN = bmbClockArea_bmbDfiDdr3_io_ddr3_csN;
  assign io_ddr3_ba = bmbClockArea_bmbDfiDdr3_io_ddr3_ba;
  assign io_ddr3_addr = bmbClockArea_bmbDfiDdr3_io_ddr3_addr;
  assign io_ddr3_odt = bmbClockArea_bmbDfiDdr3_io_ddr3_odt;
  assign io_ddr3_dm = bmbClockArea_bmbDfiDdr3_io_ddr3_dm;

endmodule

module HarMacth (
  output reg           io_hdr_valid,
  input  wire          io_hdr_ready,
  input  wire          io_axiIn_valid,
  output wire          io_axiIn_ready,
  input  wire [7:0]    io_axiIn_payload_data,
  input  wire          io_axiIn_payload_last,
  input  wire [0:0]    io_axiIn_payload_user,
  output reg           io_axiOut_valid,
  input  wire          io_axiOut_ready,
  output reg  [7:0]    io_axiOut_payload_data,
  output reg           io_axiOut_payload_last,
  output reg  [0:0]    io_axiOut_payload_user,
  input  wire          clk_out1,
  input  wire          rstN
);
  localparam fsm_enumDef_BOOT = 2'd0;
  localparam fsm_enumDef_idle = 2'd1;
  localparam fsm_enumDef_head = 2'd2;
  localparam fsm_enumDef_main = 2'd3;

  wire       [0:0]    io_axiIn_fifo_io_push_payload_user;
  wire                io_axiIn_fifo_io_push_ready;
  wire                io_axiIn_fifo_io_pop_valid;
  wire       [7:0]    io_axiIn_fifo_io_pop_payload_data;
  wire                io_axiIn_fifo_io_pop_payload_last;
  wire       [0:0]    io_axiIn_fifo_io_pop_payload_user;
  wire       [4:0]    io_axiIn_fifo_io_occupancy;
  wire       [4:0]    io_axiIn_fifo_io_availability;
  wire                fifo_valid;
  reg                 fifo_ready;
  wire       [7:0]    fifo_payload_data;
  wire                fifo_payload_last;
  wire       [0:0]    fifo_payload_user;
  wire       [9:0]    _zz_io_axiOut_payload_data;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [1:0]    fsm_stateReg;
  reg        [1:0]    fsm_stateNext;
  wire                when_HarMacth_l23;
  wire                io_axiOut_fire;
  wire                when_HarMacth_l25;
  `ifndef SYNTHESIS
  reg [31:0] fsm_stateReg_string;
  reg [31:0] fsm_stateNext_string;
  `endif


  StreamFifo io_axiIn_fifo (
    .io_push_valid        (io_axiIn_valid                        ), //i
    .io_push_ready        (io_axiIn_fifo_io_push_ready           ), //o
    .io_push_payload_data (io_axiIn_payload_data[7:0]            ), //i
    .io_push_payload_last (io_axiIn_payload_last                 ), //i
    .io_push_payload_user (io_axiIn_fifo_io_push_payload_user    ), //i
    .io_pop_valid         (io_axiIn_fifo_io_pop_valid            ), //o
    .io_pop_ready         (fifo_ready                            ), //i
    .io_pop_payload_data  (io_axiIn_fifo_io_pop_payload_data[7:0]), //o
    .io_pop_payload_last  (io_axiIn_fifo_io_pop_payload_last     ), //o
    .io_pop_payload_user  (io_axiIn_fifo_io_pop_payload_user     ), //o
    .io_flush             (1'b0                                  ), //i
    .io_occupancy         (io_axiIn_fifo_io_occupancy[4:0]       ), //o
    .io_availability      (io_axiIn_fifo_io_availability[4:0]    ), //o
    .clk_out1             (clk_out1                              ), //i
    .rstN                 (rstN                                  )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_BOOT : fsm_stateReg_string = "BOOT";
      fsm_enumDef_idle : fsm_stateReg_string = "idle";
      fsm_enumDef_head : fsm_stateReg_string = "head";
      fsm_enumDef_main : fsm_stateReg_string = "main";
      default : fsm_stateReg_string = "????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_BOOT : fsm_stateNext_string = "BOOT";
      fsm_enumDef_idle : fsm_stateNext_string = "idle";
      fsm_enumDef_head : fsm_stateNext_string = "head";
      fsm_enumDef_main : fsm_stateNext_string = "main";
      default : fsm_stateNext_string = "????";
    endcase
  end
  `endif

  assign io_axiIn_ready = io_axiIn_fifo_io_push_ready;
  assign io_axiIn_fifo_io_push_payload_user[0 : 0] = io_axiIn_payload_user[0 : 0];
  assign fifo_valid = io_axiIn_fifo_io_pop_valid;
  assign fifo_payload_data = io_axiIn_fifo_io_pop_payload_data;
  assign fifo_payload_last = io_axiIn_fifo_io_pop_payload_last;
  assign fifo_payload_user[0 : 0] = io_axiIn_fifo_io_pop_payload_user[0 : 0];
  always @(*) begin
    io_hdr_valid = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_idle : begin
      end
      fsm_enumDef_head : begin
        io_hdr_valid = 1'b1;
      end
      fsm_enumDef_main : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axiOut_valid = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_idle : begin
      end
      fsm_enumDef_head : begin
      end
      fsm_enumDef_main : begin
        io_axiOut_valid = fifo_valid;
      end
      default : begin
      end
    endcase
  end

  assign _zz_io_axiOut_payload_data = 10'h0;
  always @(*) begin
    io_axiOut_payload_data = _zz_io_axiOut_payload_data[7 : 0];
    case(fsm_stateReg)
      fsm_enumDef_idle : begin
      end
      fsm_enumDef_head : begin
      end
      fsm_enumDef_main : begin
        io_axiOut_payload_data = fifo_payload_data;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axiOut_payload_last = _zz_io_axiOut_payload_data[8];
    case(fsm_stateReg)
      fsm_enumDef_idle : begin
      end
      fsm_enumDef_head : begin
      end
      fsm_enumDef_main : begin
        io_axiOut_payload_last = fifo_payload_last;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axiOut_payload_user = _zz_io_axiOut_payload_data[9 : 9];
    case(fsm_stateReg)
      fsm_enumDef_idle : begin
      end
      fsm_enumDef_head : begin
      end
      fsm_enumDef_main : begin
        io_axiOut_payload_user[0 : 0] = fifo_payload_user[0 : 0];
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    fifo_ready = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_idle : begin
      end
      fsm_enumDef_head : begin
      end
      fsm_enumDef_main : begin
        fifo_ready = io_axiOut_ready;
      end
      default : begin
      end
    endcase
  end

  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_idle : begin
      end
      fsm_enumDef_head : begin
      end
      fsm_enumDef_main : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_idle : begin
        if(when_HarMacth_l23) begin
          fsm_stateNext = fsm_enumDef_head;
        end
      end
      fsm_enumDef_head : begin
        if(io_hdr_ready) begin
          fsm_stateNext = fsm_enumDef_main;
        end
      end
      fsm_enumDef_main : begin
        if(when_HarMacth_l25) begin
          fsm_stateNext = fsm_enumDef_idle;
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_idle;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_BOOT;
    end
  end

  assign when_HarMacth_l23 = (fifo_valid && io_axiOut_ready);
  assign io_axiOut_fire = (io_axiOut_valid && io_axiOut_ready);
  assign when_HarMacth_l25 = (io_axiOut_payload_last && io_axiOut_fire);
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      fsm_stateReg <= fsm_enumDef_BOOT;
    end else begin
      fsm_stateReg <= fsm_stateNext;
    end
  end


endmodule

module ConfigRx (
  input  wire          io_udpAxisIn_valid,
  output reg           io_udpAxisIn_ready,
  input  wire [7:0]    io_udpAxisIn_payload_data,
  input  wire          io_udpAxisIn_payload_last,
  input  wire [0:0]    io_udpAxisIn_payload_user,
  output wire          io_udpAxisOut_valid,
  input  wire          io_udpAxisOut_ready,
  output wire [7:0]    io_udpAxisOut_payload_data,
  output wire          io_udpAxisOut_payload_last,
  output wire [0:0]    io_udpAxisOut_payload_user,
  input  wire [9:0]    io_lengtnIn,
  output wire [20:0]   io_config,
  output reg           io_end,
  input  wire          clk_out1,
  input  wire          rstN
);

  wire       [1:0]    _zz_counter_valueNext;
  wire       [0:0]    _zz_counter_valueNext_1;
  reg                 drop;
  reg        [23:0]   config_1;
  wire                hit;
  reg                 counter_willIncrement;
  wire                counter_willClear;
  reg        [1:0]    counter_valueNext;
  reg        [1:0]    counter_value;
  wire                counter_willOverflowIfInc;
  wire                counter_willOverflow;
  wire                io_udpAxisIn_fire;
  wire       [3:0]    _zz_1;
  reg                 io_udpAxisIn_thrown_valid;
  wire                io_udpAxisIn_thrown_ready;
  wire       [7:0]    io_udpAxisIn_thrown_payload_data;
  wire                io_udpAxisIn_thrown_payload_last;
  wire       [0:0]    io_udpAxisIn_thrown_payload_user;

  assign _zz_counter_valueNext_1 = counter_willIncrement;
  assign _zz_counter_valueNext = {1'd0, _zz_counter_valueNext_1};
  always @(*) begin
    io_end = 1'b0;
    if(counter_willOverflowIfInc) begin
      io_end = 1'b1;
    end
  end

  assign hit = (io_lengtnIn == 10'h002);
  always @(*) begin
    counter_willIncrement = 1'b0;
    if(io_udpAxisIn_fire) begin
      counter_willIncrement = 1'b1;
    end
  end

  assign counter_willClear = 1'b0;
  assign counter_willOverflowIfInc = (counter_value == 2'b10);
  assign counter_willOverflow = (counter_willOverflowIfInc && counter_willIncrement);
  always @(*) begin
    if(counter_willOverflow) begin
      counter_valueNext = 2'b00;
    end else begin
      counter_valueNext = (counter_value + _zz_counter_valueNext);
    end
    if(counter_willClear) begin
      counter_valueNext = 2'b00;
    end
  end

  assign io_config = config_1[20:0];
  assign io_udpAxisIn_fire = (io_udpAxisIn_valid && io_udpAxisIn_ready);
  assign _zz_1 = ({3'd0,1'b1} <<< counter_value);
  always @(*) begin
    io_udpAxisIn_thrown_valid = io_udpAxisIn_valid;
    if(drop) begin
      io_udpAxisIn_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    io_udpAxisIn_ready = io_udpAxisIn_thrown_ready;
    if(drop) begin
      io_udpAxisIn_ready = 1'b1;
    end
  end

  assign io_udpAxisIn_thrown_payload_data = io_udpAxisIn_payload_data;
  assign io_udpAxisIn_thrown_payload_last = io_udpAxisIn_payload_last;
  assign io_udpAxisIn_thrown_payload_user[0 : 0] = io_udpAxisIn_payload_user[0 : 0];
  assign io_udpAxisOut_valid = io_udpAxisIn_thrown_valid;
  assign io_udpAxisIn_thrown_ready = io_udpAxisOut_ready;
  assign io_udpAxisOut_payload_data = io_udpAxisIn_thrown_payload_data;
  assign io_udpAxisOut_payload_last = io_udpAxisIn_thrown_payload_last;
  assign io_udpAxisOut_payload_user[0 : 0] = io_udpAxisIn_thrown_payload_user[0 : 0];
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      drop <= 1'b0;
      counter_value <= 2'b00;
    end else begin
      counter_value <= counter_valueNext;
      if(io_udpAxisIn_fire) begin
        drop <= 1'b1;
      end
      if(counter_willOverflowIfInc) begin
        drop <= 1'b0;
      end
    end
  end

  always @(posedge clk_out1) begin
    if(io_udpAxisIn_fire) begin
      if(_zz_1[0]) begin
        config_1[7 : 0] <= io_udpAxisIn_payload_data;
      end
      if(_zz_1[1]) begin
        config_1[15 : 8] <= io_udpAxisIn_payload_data;
      end
      if(_zz_1[2]) begin
        config_1[23 : 16] <= io_udpAxisIn_payload_data;
      end
    end
  end


endmodule

module StreamFifoLowLatency_5 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload_data,
  input  wire          io_push_payload_last,
  input  wire [0:0]    io_push_payload_user,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [7:0]    io_pop_payload_data,
  output wire          io_pop_payload_last,
  output wire [0:0]    io_pop_payload_user,
  input  wire          io_flush,
  output wire [7:0]    io_occupancy,
  output wire [7:0]    io_availability,
  input  wire          clk_out1,
  input  wire          rstN
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [7:0]    fifo_io_pop_payload_data;
  wire                fifo_io_pop_payload_last;
  wire       [0:0]    fifo_io_pop_payload_user;
  wire       [7:0]    fifo_io_occupancy;
  wire       [7:0]    fifo_io_availability;

  StreamFifo_7 fifo (
    .io_push_valid        (io_push_valid                ), //i
    .io_push_ready        (fifo_io_push_ready           ), //o
    .io_push_payload_data (io_push_payload_data[7:0]    ), //i
    .io_push_payload_last (io_push_payload_last         ), //i
    .io_push_payload_user (io_push_payload_user         ), //i
    .io_pop_valid         (fifo_io_pop_valid            ), //o
    .io_pop_ready         (io_pop_ready                 ), //i
    .io_pop_payload_data  (fifo_io_pop_payload_data[7:0]), //o
    .io_pop_payload_last  (fifo_io_pop_payload_last     ), //o
    .io_pop_payload_user  (fifo_io_pop_payload_user     ), //o
    .io_flush             (io_flush                     ), //i
    .io_occupancy         (fifo_io_occupancy[7:0]       ), //o
    .io_availability      (fifo_io_availability[7:0]    ), //o
    .clk_out1             (clk_out1                     ), //i
    .rstN                 (rstN                         )  //i
  );
  assign io_push_ready = fifo_io_push_ready;
  assign io_pop_valid = fifo_io_pop_valid;
  assign io_pop_payload_data = fifo_io_pop_payload_data;
  assign io_pop_payload_last = fifo_io_pop_payload_last;
  assign io_pop_payload_user = fifo_io_pop_payload_user;
  assign io_occupancy = fifo_io_occupancy;
  assign io_availability = fifo_io_availability;

endmodule

module BmbDfiDdr3 (
  input  wire          io_clk1,
  input  wire          io_clk2,
  input  wire          io_clk3,
  input  wire          io_clk4,
  input  wire          io_bmb_cmd_valid,
  output wire          io_bmb_cmd_ready,
  input  wire          io_bmb_cmd_payload_last,
  input  wire [0:0]    io_bmb_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_bmb_cmd_payload_fragment_address,
  input  wire [9:0]    io_bmb_cmd_payload_fragment_length,
  input  wire [31:0]   io_bmb_cmd_payload_fragment_data,
  input  wire [3:0]    io_bmb_cmd_payload_fragment_mask,
  input  wire [3:0]    io_bmb_cmd_payload_fragment_context,
  output wire          io_bmb_rsp_valid,
  input  wire          io_bmb_rsp_ready,
  output wire          io_bmb_rsp_payload_last,
  output wire [0:0]    io_bmb_rsp_payload_fragment_opcode,
  output wire [31:0]   io_bmb_rsp_payload_fragment_data,
  output wire [3:0]    io_bmb_rsp_payload_fragment_context,
  output wire [0:0]    io_ddr3_ckP,
  output wire [0:0]    io_ddr3_ckN,
  output wire [0:0]    io_ddr3_cke,
  output wire [0:0]    io_ddr3_resetN,
  output wire [0:0]    io_ddr3_rasN,
  output wire [0:0]    io_ddr3_casN,
  output wire [0:0]    io_ddr3_weN,
  output wire [0:0]    io_ddr3_csN,
  output wire [2:0]    io_ddr3_ba,
  output wire [14:0]   io_ddr3_addr,
  output wire [0:0]    io_ddr3_odt,
  output wire [1:0]    io_ddr3_dm,
  inout  wire [1:0]    io_ddr3_dqsP,
  inout  wire [1:0]    io_ddr3_dqsN,
  inout  wire [15:0]   io_ddr3_dq,
  output wire          io_initDone,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                clockArea_dfiController_io_dfi_read_rd_0_rddataValid;
  wire                ddr3_dfi_phy_0_io_rst;
  wire       [0:0]    ddr3_dfi_phy_0_io_dfi_control_csN;
  wire       [0:0]    ddr3_dfi_phy_0_io_dfi_control_cke;
  wire                clockArea_dfiController_io_bmb_cmd_ready;
  wire                clockArea_dfiController_io_bmb_rsp_valid;
  wire                clockArea_dfiController_io_bmb_rsp_payload_last;
  wire       [0:0]    clockArea_dfiController_io_bmb_rsp_payload_fragment_opcode;
  wire       [31:0]   clockArea_dfiController_io_bmb_rsp_payload_fragment_data;
  wire       [3:0]    clockArea_dfiController_io_bmb_rsp_payload_fragment_context;
  wire       [14:0]   clockArea_dfiController_io_dfi_control_address;
  wire       [2:0]    clockArea_dfiController_io_dfi_control_bank;
  wire       [0:0]    clockArea_dfiController_io_dfi_control_rasN;
  wire       [0:0]    clockArea_dfiController_io_dfi_control_casN;
  wire       [0:0]    clockArea_dfiController_io_dfi_control_weN;
  wire       [0:0]    clockArea_dfiController_io_dfi_control_csN;
  wire       [0:0]    clockArea_dfiController_io_dfi_control_cke;
  wire                clockArea_dfiController_io_dfi_read_rden_0;
  wire                clockArea_dfiController_io_dfi_write_wr_0_wrdataEn;
  wire       [31:0]   clockArea_dfiController_io_dfi_write_wr_0_wrdata;
  wire       [3:0]    clockArea_dfiController_io_dfi_write_wr_0_wrdataMask;
  wire                ddr3_dfi_phy_0_io_initDone;
  wire                ddr3_dfi_phy_0_io_dfi_read_rd_0_rddataValid;
  wire       [31:0]   ddr3_dfi_phy_0_io_dfi_read_rd_0_rddata;
  wire       [3:0]    ddr3_dfi_phy_0_io_dfi_read_rd_0_rddataDnv;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_ckP;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_ckN;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_cke;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_resetN;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_rasN;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_casN;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_weN;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_csN;
  wire       [2:0]    ddr3_dfi_phy_0_io_ddr3_ba;
  wire       [14:0]   ddr3_dfi_phy_0_io_ddr3_addr;
  wire       [0:0]    ddr3_dfi_phy_0_io_ddr3_odt;
  wire       [1:0]    ddr3_dfi_phy_0_io_ddr3_dm;
  wire                _zz_io_bmb_rsp_valid;
  wire                _zz_io_bmb_rsp_ready;
  wire                _zz_io_bmb_rsp_payload_last;
  wire       [0:0]    _zz_io_bmb_rsp_payload_fragment_opcode;
  wire       [31:0]   _zz_io_bmb_rsp_payload_fragment_data;
  wire       [3:0]    _zz_io_bmb_rsp_payload_fragment_context;
  wire                io_bmb_cmd_s2mPipe_valid;
  reg                 io_bmb_cmd_s2mPipe_ready;
  wire                io_bmb_cmd_s2mPipe_payload_last;
  wire       [0:0]    io_bmb_cmd_s2mPipe_payload_fragment_opcode;
  wire       [28:0]   io_bmb_cmd_s2mPipe_payload_fragment_address;
  wire       [9:0]    io_bmb_cmd_s2mPipe_payload_fragment_length;
  wire       [31:0]   io_bmb_cmd_s2mPipe_payload_fragment_data;
  wire       [3:0]    io_bmb_cmd_s2mPipe_payload_fragment_mask;
  wire       [3:0]    io_bmb_cmd_s2mPipe_payload_fragment_context;
  reg                 io_bmb_cmd_rValidN;
  reg                 io_bmb_cmd_rData_last;
  reg        [0:0]    io_bmb_cmd_rData_fragment_opcode;
  reg        [28:0]   io_bmb_cmd_rData_fragment_address;
  reg        [9:0]    io_bmb_cmd_rData_fragment_length;
  reg        [31:0]   io_bmb_cmd_rData_fragment_data;
  reg        [3:0]    io_bmb_cmd_rData_fragment_mask;
  reg        [3:0]    io_bmb_cmd_rData_fragment_context;
  wire                io_bmb_cmd_s2mPipe_m2sPipe_valid;
  wire                io_bmb_cmd_s2mPipe_m2sPipe_ready;
  wire                io_bmb_cmd_s2mPipe_m2sPipe_payload_last;
  wire       [0:0]    io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_opcode;
  wire       [28:0]   io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_address;
  wire       [9:0]    io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_length;
  wire       [31:0]   io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_data;
  wire       [3:0]    io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_mask;
  wire       [3:0]    io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_context;
  reg                 io_bmb_cmd_s2mPipe_rValid;
  reg                 io_bmb_cmd_s2mPipe_rData_last;
  reg        [0:0]    io_bmb_cmd_s2mPipe_rData_fragment_opcode;
  reg        [28:0]   io_bmb_cmd_s2mPipe_rData_fragment_address;
  reg        [9:0]    io_bmb_cmd_s2mPipe_rData_fragment_length;
  reg        [31:0]   io_bmb_cmd_s2mPipe_rData_fragment_data;
  reg        [3:0]    io_bmb_cmd_s2mPipe_rData_fragment_mask;
  reg        [3:0]    io_bmb_cmd_s2mPipe_rData_fragment_context;
  wire                when_Stream_l393;
  reg                 _zz_1;
  reg                 _zz_io_bmb_rsp_payload_last_1;
  reg                 _zz_io_bmb_rsp_payload_last_2;
  reg        [0:0]    _zz_io_bmb_rsp_payload_fragment_opcode_1;
  reg        [31:0]   _zz_io_bmb_rsp_payload_fragment_data_1;
  reg        [3:0]    _zz_io_bmb_rsp_payload_fragment_context_1;
  wire                _zz_io_bmb_rsp_valid_1;
  reg                 _zz_io_bmb_rsp_valid_2;
  reg                 _zz_io_bmb_rsp_payload_last_3;
  reg        [0:0]    _zz_io_bmb_rsp_payload_fragment_opcode_2;
  reg        [31:0]   _zz_io_bmb_rsp_payload_fragment_data_2;
  reg        [3:0]    _zz_io_bmb_rsp_payload_fragment_context_2;
  wire                when_Stream_l393_1;

  DfiController clockArea_dfiController (
    .io_bmb_cmd_valid                    (io_bmb_cmd_s2mPipe_m2sPipe_valid                                ), //i
    .io_bmb_cmd_ready                    (clockArea_dfiController_io_bmb_cmd_ready                        ), //o
    .io_bmb_cmd_payload_last             (io_bmb_cmd_s2mPipe_m2sPipe_payload_last                         ), //i
    .io_bmb_cmd_payload_fragment_opcode  (io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_opcode              ), //i
    .io_bmb_cmd_payload_fragment_address (io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_address[28:0]       ), //i
    .io_bmb_cmd_payload_fragment_length  (io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_length[9:0]         ), //i
    .io_bmb_cmd_payload_fragment_data    (io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_data[31:0]          ), //i
    .io_bmb_cmd_payload_fragment_mask    (io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_mask[3:0]           ), //i
    .io_bmb_cmd_payload_fragment_context (io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_context[3:0]        ), //i
    .io_bmb_rsp_valid                    (clockArea_dfiController_io_bmb_rsp_valid                        ), //o
    .io_bmb_rsp_ready                    (_zz_io_bmb_rsp_ready                                            ), //i
    .io_bmb_rsp_payload_last             (clockArea_dfiController_io_bmb_rsp_payload_last                 ), //o
    .io_bmb_rsp_payload_fragment_opcode  (clockArea_dfiController_io_bmb_rsp_payload_fragment_opcode      ), //o
    .io_bmb_rsp_payload_fragment_data    (clockArea_dfiController_io_bmb_rsp_payload_fragment_data[31:0]  ), //o
    .io_bmb_rsp_payload_fragment_context (clockArea_dfiController_io_bmb_rsp_payload_fragment_context[3:0]), //o
    .io_dfi_control_address              (clockArea_dfiController_io_dfi_control_address[14:0]            ), //o
    .io_dfi_control_bank                 (clockArea_dfiController_io_dfi_control_bank[2:0]                ), //o
    .io_dfi_control_rasN                 (clockArea_dfiController_io_dfi_control_rasN                     ), //o
    .io_dfi_control_casN                 (clockArea_dfiController_io_dfi_control_casN                     ), //o
    .io_dfi_control_weN                  (clockArea_dfiController_io_dfi_control_weN                      ), //o
    .io_dfi_control_csN                  (clockArea_dfiController_io_dfi_control_csN                      ), //o
    .io_dfi_control_cke                  (clockArea_dfiController_io_dfi_control_cke                      ), //o
    .io_dfi_write_wr_0_wrdataEn          (clockArea_dfiController_io_dfi_write_wr_0_wrdataEn              ), //o
    .io_dfi_write_wr_0_wrdata            (clockArea_dfiController_io_dfi_write_wr_0_wrdata[31:0]          ), //o
    .io_dfi_write_wr_0_wrdataMask        (clockArea_dfiController_io_dfi_write_wr_0_wrdataMask[3:0]       ), //o
    .io_dfi_read_rden_0                  (clockArea_dfiController_io_dfi_read_rden_0                      ), //o
    .io_dfi_read_rd_0_rddataValid        (clockArea_dfiController_io_dfi_read_rd_0_rddataValid            ), //i
    .io_dfi_read_rd_0_rddata             (ddr3_dfi_phy_0_io_dfi_read_rd_0_rddata[31:0]                    ), //i
    .clk_out4                            (clk_out4                                                        ), //i
    .rstN                                (rstN                                                            )  //i
  );
  DfiPhyDdr3 ddr3_dfi_phy_0 (
    .io_clk_work                  (io_clk1                                                  ), //i
    .io_clk_ddr                   (io_clk2                                                  ), //i
    .io_clk_ddr90                 (io_clk3                                                  ), //i
    .io_clk_ref                   (io_clk4                                                  ), //i
    .io_rst                       (ddr3_dfi_phy_0_io_rst                                    ), //i
    .io_initDone                  (ddr3_dfi_phy_0_io_initDone                               ), //o
    .io_dfi_control_address       (clockArea_dfiController_io_dfi_control_address[14:0]     ), //i
    .io_dfi_control_bank          (clockArea_dfiController_io_dfi_control_bank[2:0]         ), //i
    .io_dfi_control_rasN          (clockArea_dfiController_io_dfi_control_rasN              ), //i
    .io_dfi_control_casN          (clockArea_dfiController_io_dfi_control_casN              ), //i
    .io_dfi_control_weN           (clockArea_dfiController_io_dfi_control_weN               ), //i
    .io_dfi_control_csN           (ddr3_dfi_phy_0_io_dfi_control_csN                        ), //i
    .io_dfi_control_cke           (ddr3_dfi_phy_0_io_dfi_control_cke                        ), //i
    .io_dfi_control_odt           (1'b0                                                     ), //i
    .io_dfi_control_resetN        (1'b1                                                     ), //i
    .io_dfi_write_wr_0_wrdataEn   (clockArea_dfiController_io_dfi_write_wr_0_wrdataEn       ), //i
    .io_dfi_write_wr_0_wrdata     (clockArea_dfiController_io_dfi_write_wr_0_wrdata[31:0]   ), //i
    .io_dfi_write_wr_0_wrdataMask (clockArea_dfiController_io_dfi_write_wr_0_wrdataMask[3:0]), //i
    .io_dfi_read_rden_0           (clockArea_dfiController_io_dfi_read_rden_0               ), //i
    .io_dfi_read_rd_0_rddataValid (ddr3_dfi_phy_0_io_dfi_read_rd_0_rddataValid              ), //o
    .io_dfi_read_rd_0_rddata      (ddr3_dfi_phy_0_io_dfi_read_rd_0_rddata[31:0]             ), //o
    .io_dfi_read_rd_0_rddataDnv   (ddr3_dfi_phy_0_io_dfi_read_rd_0_rddataDnv[3:0]           ), //o
    .io_ddr3_ckP                  (ddr3_dfi_phy_0_io_ddr3_ckP                               ), //o
    .io_ddr3_ckN                  (ddr3_dfi_phy_0_io_ddr3_ckN                               ), //o
    .io_ddr3_cke                  (ddr3_dfi_phy_0_io_ddr3_cke                               ), //o
    .io_ddr3_resetN               (ddr3_dfi_phy_0_io_ddr3_resetN                            ), //o
    .io_ddr3_rasN                 (ddr3_dfi_phy_0_io_ddr3_rasN                              ), //o
    .io_ddr3_casN                 (ddr3_dfi_phy_0_io_ddr3_casN                              ), //o
    .io_ddr3_weN                  (ddr3_dfi_phy_0_io_ddr3_weN                               ), //o
    .io_ddr3_csN                  (ddr3_dfi_phy_0_io_ddr3_csN                               ), //o
    .io_ddr3_ba                   (ddr3_dfi_phy_0_io_ddr3_ba[2:0]                           ), //o
    .io_ddr3_addr                 (ddr3_dfi_phy_0_io_ddr3_addr[14:0]                        ), //o
    .io_ddr3_odt                  (ddr3_dfi_phy_0_io_ddr3_odt                               ), //o
    .io_ddr3_dm                   (ddr3_dfi_phy_0_io_ddr3_dm[1:0]                           ), //o
    .io_ddr3_dqsP                 (io_ddr3_dqsP                                             ), //~
    .io_ddr3_dqsN                 (io_ddr3_dqsN                                             ), //~
    .io_ddr3_dq                   (io_ddr3_dq                                               ), //~
    .clk_out4                     (clk_out4                                                 ), //i
    .rstN                         (rstN                                                     )  //i
  );
  assign io_bmb_cmd_ready = io_bmb_cmd_rValidN;
  assign io_bmb_cmd_s2mPipe_valid = (io_bmb_cmd_valid || (! io_bmb_cmd_rValidN));
  assign io_bmb_cmd_s2mPipe_payload_last = (io_bmb_cmd_rValidN ? io_bmb_cmd_payload_last : io_bmb_cmd_rData_last);
  assign io_bmb_cmd_s2mPipe_payload_fragment_opcode = (io_bmb_cmd_rValidN ? io_bmb_cmd_payload_fragment_opcode : io_bmb_cmd_rData_fragment_opcode);
  assign io_bmb_cmd_s2mPipe_payload_fragment_address = (io_bmb_cmd_rValidN ? io_bmb_cmd_payload_fragment_address : io_bmb_cmd_rData_fragment_address);
  assign io_bmb_cmd_s2mPipe_payload_fragment_length = (io_bmb_cmd_rValidN ? io_bmb_cmd_payload_fragment_length : io_bmb_cmd_rData_fragment_length);
  assign io_bmb_cmd_s2mPipe_payload_fragment_data = (io_bmb_cmd_rValidN ? io_bmb_cmd_payload_fragment_data : io_bmb_cmd_rData_fragment_data);
  assign io_bmb_cmd_s2mPipe_payload_fragment_mask = (io_bmb_cmd_rValidN ? io_bmb_cmd_payload_fragment_mask : io_bmb_cmd_rData_fragment_mask);
  assign io_bmb_cmd_s2mPipe_payload_fragment_context = (io_bmb_cmd_rValidN ? io_bmb_cmd_payload_fragment_context : io_bmb_cmd_rData_fragment_context);
  always @(*) begin
    io_bmb_cmd_s2mPipe_ready = io_bmb_cmd_s2mPipe_m2sPipe_ready;
    if(when_Stream_l393) begin
      io_bmb_cmd_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! io_bmb_cmd_s2mPipe_m2sPipe_valid);
  assign io_bmb_cmd_s2mPipe_m2sPipe_valid = io_bmb_cmd_s2mPipe_rValid;
  assign io_bmb_cmd_s2mPipe_m2sPipe_payload_last = io_bmb_cmd_s2mPipe_rData_last;
  assign io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_opcode = io_bmb_cmd_s2mPipe_rData_fragment_opcode;
  assign io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_address = io_bmb_cmd_s2mPipe_rData_fragment_address;
  assign io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_length = io_bmb_cmd_s2mPipe_rData_fragment_length;
  assign io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_data = io_bmb_cmd_s2mPipe_rData_fragment_data;
  assign io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_mask = io_bmb_cmd_s2mPipe_rData_fragment_mask;
  assign io_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_context = io_bmb_cmd_s2mPipe_rData_fragment_context;
  assign io_bmb_cmd_s2mPipe_m2sPipe_ready = clockArea_dfiController_io_bmb_cmd_ready;
  assign _zz_io_bmb_rsp_ready = _zz_io_bmb_rsp_payload_last_1;
  always @(*) begin
    _zz_1 = io_bmb_rsp_ready;
    if(when_Stream_l393_1) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l393_1 = (! _zz_io_bmb_rsp_valid_1);
  assign _zz_io_bmb_rsp_valid_1 = _zz_io_bmb_rsp_valid_2;
  assign io_bmb_rsp_valid = _zz_io_bmb_rsp_valid_1;
  assign io_bmb_rsp_payload_last = _zz_io_bmb_rsp_payload_last_3;
  assign io_bmb_rsp_payload_fragment_opcode = _zz_io_bmb_rsp_payload_fragment_opcode_2;
  assign io_bmb_rsp_payload_fragment_data = _zz_io_bmb_rsp_payload_fragment_data_2;
  assign io_bmb_rsp_payload_fragment_context = _zz_io_bmb_rsp_payload_fragment_context_2;
  assign _zz_io_bmb_rsp_valid = clockArea_dfiController_io_bmb_rsp_valid;
  assign _zz_io_bmb_rsp_payload_last = clockArea_dfiController_io_bmb_rsp_payload_last;
  assign _zz_io_bmb_rsp_payload_fragment_opcode = clockArea_dfiController_io_bmb_rsp_payload_fragment_opcode;
  assign _zz_io_bmb_rsp_payload_fragment_data = clockArea_dfiController_io_bmb_rsp_payload_fragment_data;
  assign _zz_io_bmb_rsp_payload_fragment_context = clockArea_dfiController_io_bmb_rsp_payload_fragment_context;
  assign clockArea_dfiController_io_dfi_read_rd_0_rddataValid = (|ddr3_dfi_phy_0_io_dfi_read_rd_0_rddataValid);
  assign io_initDone = (&ddr3_dfi_phy_0_io_initDone);
  assign ddr3_dfi_phy_0_io_rst = (! rstN);
  assign ddr3_dfi_phy_0_io_dfi_control_cke[0] = clockArea_dfiController_io_dfi_control_cke[0];
  assign ddr3_dfi_phy_0_io_dfi_control_csN[0] = clockArea_dfiController_io_dfi_control_csN[0];
  assign io_ddr3_ckP[0] = ddr3_dfi_phy_0_io_ddr3_ckP[0];
  assign io_ddr3_ckN[0] = ddr3_dfi_phy_0_io_ddr3_ckN[0];
  assign io_ddr3_cke[0] = ddr3_dfi_phy_0_io_ddr3_cke[0];
  assign io_ddr3_resetN[0] = ddr3_dfi_phy_0_io_ddr3_resetN[0];
  assign io_ddr3_rasN[0] = ddr3_dfi_phy_0_io_ddr3_rasN[0];
  assign io_ddr3_casN[0] = ddr3_dfi_phy_0_io_ddr3_casN[0];
  assign io_ddr3_weN[0] = ddr3_dfi_phy_0_io_ddr3_weN[0];
  assign io_ddr3_csN[0] = ddr3_dfi_phy_0_io_ddr3_csN[0];
  assign io_ddr3_ba[2 : 0] = ddr3_dfi_phy_0_io_ddr3_ba;
  assign io_ddr3_addr[14 : 0] = ddr3_dfi_phy_0_io_ddr3_addr;
  assign io_ddr3_odt[0] = ddr3_dfi_phy_0_io_ddr3_odt[0];
  assign io_ddr3_dm[1 : 0] = ddr3_dfi_phy_0_io_ddr3_dm;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      io_bmb_cmd_rValidN <= 1'b1;
      io_bmb_cmd_s2mPipe_rValid <= 1'b0;
      _zz_io_bmb_rsp_payload_last_1 <= 1'b1;
      _zz_io_bmb_rsp_valid_2 <= 1'b0;
    end else begin
      if(io_bmb_cmd_valid) begin
        io_bmb_cmd_rValidN <= 1'b0;
      end
      if(io_bmb_cmd_s2mPipe_ready) begin
        io_bmb_cmd_rValidN <= 1'b1;
      end
      if(io_bmb_cmd_s2mPipe_ready) begin
        io_bmb_cmd_s2mPipe_rValid <= io_bmb_cmd_s2mPipe_valid;
      end
      if(_zz_io_bmb_rsp_valid) begin
        _zz_io_bmb_rsp_payload_last_1 <= 1'b0;
      end
      if(_zz_1) begin
        _zz_io_bmb_rsp_payload_last_1 <= 1'b1;
      end
      if(_zz_1) begin
        _zz_io_bmb_rsp_valid_2 <= (_zz_io_bmb_rsp_valid || (! _zz_io_bmb_rsp_payload_last_1));
      end
    end
  end

  always @(posedge clk_out4) begin
    if(io_bmb_cmd_ready) begin
      io_bmb_cmd_rData_last <= io_bmb_cmd_payload_last;
      io_bmb_cmd_rData_fragment_opcode <= io_bmb_cmd_payload_fragment_opcode;
      io_bmb_cmd_rData_fragment_address <= io_bmb_cmd_payload_fragment_address;
      io_bmb_cmd_rData_fragment_length <= io_bmb_cmd_payload_fragment_length;
      io_bmb_cmd_rData_fragment_data <= io_bmb_cmd_payload_fragment_data;
      io_bmb_cmd_rData_fragment_mask <= io_bmb_cmd_payload_fragment_mask;
      io_bmb_cmd_rData_fragment_context <= io_bmb_cmd_payload_fragment_context;
    end
    if(io_bmb_cmd_s2mPipe_ready) begin
      io_bmb_cmd_s2mPipe_rData_last <= io_bmb_cmd_s2mPipe_payload_last;
      io_bmb_cmd_s2mPipe_rData_fragment_opcode <= io_bmb_cmd_s2mPipe_payload_fragment_opcode;
      io_bmb_cmd_s2mPipe_rData_fragment_address <= io_bmb_cmd_s2mPipe_payload_fragment_address;
      io_bmb_cmd_s2mPipe_rData_fragment_length <= io_bmb_cmd_s2mPipe_payload_fragment_length;
      io_bmb_cmd_s2mPipe_rData_fragment_data <= io_bmb_cmd_s2mPipe_payload_fragment_data;
      io_bmb_cmd_s2mPipe_rData_fragment_mask <= io_bmb_cmd_s2mPipe_payload_fragment_mask;
      io_bmb_cmd_s2mPipe_rData_fragment_context <= io_bmb_cmd_s2mPipe_payload_fragment_context;
    end
    if(_zz_io_bmb_rsp_ready) begin
      _zz_io_bmb_rsp_payload_last_2 <= _zz_io_bmb_rsp_payload_last;
      _zz_io_bmb_rsp_payload_fragment_opcode_1 <= _zz_io_bmb_rsp_payload_fragment_opcode;
      _zz_io_bmb_rsp_payload_fragment_data_1 <= _zz_io_bmb_rsp_payload_fragment_data;
      _zz_io_bmb_rsp_payload_fragment_context_1 <= _zz_io_bmb_rsp_payload_fragment_context;
    end
    if(_zz_1) begin
      _zz_io_bmb_rsp_payload_last_3 <= (_zz_io_bmb_rsp_payload_last_1 ? _zz_io_bmb_rsp_payload_last : _zz_io_bmb_rsp_payload_last_2);
      _zz_io_bmb_rsp_payload_fragment_opcode_2 <= (_zz_io_bmb_rsp_payload_last_1 ? _zz_io_bmb_rsp_payload_fragment_opcode : _zz_io_bmb_rsp_payload_fragment_opcode_1);
      _zz_io_bmb_rsp_payload_fragment_data_2 <= (_zz_io_bmb_rsp_payload_last_1 ? _zz_io_bmb_rsp_payload_fragment_data : _zz_io_bmb_rsp_payload_fragment_data_1);
      _zz_io_bmb_rsp_payload_fragment_context_2 <= (_zz_io_bmb_rsp_payload_last_1 ? _zz_io_bmb_rsp_payload_fragment_context : _zz_io_bmb_rsp_payload_fragment_context_1);
    end
  end


endmodule

module Axi4StreamToBmb (
  input  wire          axiIn_valid,
  output wire          axiIn_ready,
  input  wire [7:0]    axiIn_payload_data,
  input  wire          axiIn_payload_last,
  input  wire [0:0]    axiIn_payload_user,
  output wire          axiOut_valid,
  input  wire          axiOut_ready,
  output wire [7:0]    axiOut_payload_data,
  output wire          axiOut_payload_last,
  output wire [0:0]    axiOut_payload_user,
  input  wire          rdCtr_valid,
  output wire          rdCtr_ready,
  output wire          writeEnd_valid,
  input  wire          writeEnd_ready,
  output wire          bmb_cmd_valid,
  input  wire          bmb_cmd_ready,
  output wire          bmb_cmd_payload_last,
  output wire [0:0]    bmb_cmd_payload_fragment_opcode,
  output wire [28:0]   bmb_cmd_payload_fragment_address,
  output wire [9:0]    bmb_cmd_payload_fragment_length,
  output wire [31:0]   bmb_cmd_payload_fragment_data,
  output wire [3:0]    bmb_cmd_payload_fragment_mask,
  output wire [3:0]    bmb_cmd_payload_fragment_context,
  input  wire          bmb_rsp_valid,
  output wire          bmb_rsp_ready,
  input  wire          bmb_rsp_payload_last,
  input  wire [0:0]    bmb_rsp_payload_fragment_opcode,
  input  wire [31:0]   bmb_rsp_payload_fragment_data,
  input  wire [3:0]    bmb_rsp_payload_fragment_context,
  output wire          error,
  output wire          readEnd,
  input  wire [9:0]    lengthIn,
  output wire [9:0]    lengthOut,
  input  wire          clk_out1,
  input  wire          rstN,
  input  wire          clk_out4
);

  wire       [0:0]    axiIn_fifo_io_push_payload_user;
  wire                adapter_bmbClockArea_bmbRdGen_io_start;
  wire                axiIn_fifo_io_push_ready;
  wire                axiIn_fifo_io_pop_valid;
  wire       [7:0]    axiIn_fifo_io_pop_payload_data;
  wire                axiIn_fifo_io_pop_payload_last;
  wire       [0:0]    axiIn_fifo_io_pop_payload_user;
  wire       [8:0]    axiIn_fifo_io_occupancy;
  wire       [8:0]    axiIn_fifo_io_availability;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_input_cmd_ready;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_valid;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_last;
  wire       [0:0]    axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_fragment_opcode;
  wire       [7:0]    axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_fragment_data;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_valid;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_last;
  wire       [0:0]    axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_opcode;
  wire       [28:0]   axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_address;
  wire       [9:0]    axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_length;
  wire       [31:0]   axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_data;
  wire       [3:0]    axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_mask;
  wire       [3:0]    axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_context;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_output_rsp_ready;
  wire                adapter_bmbCCDomain_io_input_cmd_ready;
  wire                adapter_bmbCCDomain_io_input_rsp_valid;
  wire                adapter_bmbCCDomain_io_input_rsp_payload_last;
  wire       [0:0]    adapter_bmbCCDomain_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   adapter_bmbCCDomain_io_input_rsp_payload_fragment_data;
  wire       [3:0]    adapter_bmbCCDomain_io_input_rsp_payload_fragment_context;
  wire                adapter_bmbCCDomain_io_output_cmd_valid;
  wire                adapter_bmbCCDomain_io_output_cmd_payload_last;
  wire       [0:0]    adapter_bmbCCDomain_io_output_cmd_payload_fragment_opcode;
  wire       [28:0]   adapter_bmbCCDomain_io_output_cmd_payload_fragment_address;
  wire       [9:0]    adapter_bmbCCDomain_io_output_cmd_payload_fragment_length;
  wire       [31:0]   adapter_bmbCCDomain_io_output_cmd_payload_fragment_data;
  wire       [3:0]    adapter_bmbCCDomain_io_output_cmd_payload_fragment_mask;
  wire       [3:0]    adapter_bmbCCDomain_io_output_cmd_payload_fragment_context;
  wire                adapter_bmbCCDomain_io_output_rsp_ready;
  wire                adapter_bmbCCDomain_adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1;
  wire                adapter_headCCDomain_io_input_ready;
  wire                adapter_headCCDomain_io_output_valid;
  wire                adapter_bmbClockArea_bmbRdGen_io_handShake_ready;
  wire       [5:0]    adapter_bmbClockArea_bmbRdGen_io_length;
  wire                adapter_bmbClockArea_bmbRdGen_io_bmbCmd_valid;
  wire                adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_last;
  wire       [0:0]    adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_opcode;
  wire       [28:0]   adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_address;
  wire       [9:0]    adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_length;
  wire       [31:0]   adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_data;
  wire       [3:0]    adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_mask;
  wire       [3:0]    adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_context;
  wire                adapter_bmbClockArea_bmbRdGen_io_end;
  wire                adapter_bmbClockArea_BmbMux_buffercc_io_dataOut;
  wire                adapter_bmbClockArea_bmbRdGen_io_end_buffercc_io_dataOut;
  wire       [28:0]   _zz_axisToBmbBridge_cmd_bmbAddr;
  wire       [10:0]   _zz_axisToBmbBridge_cmd_bmbAddr_1;
  wire       [10:0]   _zz_axisToBmbBridge_cmd_bmbAddr_2;
  wire       [1:0]    _zz_axisToBmbBridge_cmd_bmbAddr_3;
  wire       [5:0]    _zz_axisToBmbBridge_rsp_lastCounter_valueNext;
  wire       [0:0]    _zz_axisToBmbBridge_rsp_lastCounter_valueNext_1;
  wire       [5:0]    _zz_lengthOut;
  wire                axisToBmbBridge_bmbBridge_cmd_valid;
  wire                axisToBmbBridge_bmbBridge_cmd_ready;
  wire                axisToBmbBridge_bmbBridge_cmd_payload_last;
  wire       [0:0]    axisToBmbBridge_bmbBridge_cmd_payload_fragment_opcode;
  wire       [28:0]   axisToBmbBridge_bmbBridge_cmd_payload_fragment_address;
  wire       [9:0]    axisToBmbBridge_bmbBridge_cmd_payload_fragment_length;
  wire       [7:0]    axisToBmbBridge_bmbBridge_cmd_payload_fragment_data;
  wire       [0:0]    axisToBmbBridge_bmbBridge_cmd_payload_fragment_mask;
  wire                axisToBmbBridge_bmbBridge_rsp_valid;
  wire                axisToBmbBridge_bmbBridge_rsp_ready;
  wire                axisToBmbBridge_bmbBridge_rsp_payload_last;
  wire       [0:0]    axisToBmbBridge_bmbBridge_rsp_payload_fragment_opcode;
  wire       [7:0]    axisToBmbBridge_bmbBridge_rsp_payload_fragment_data;
  (* async_reg = "true" *) reg        [28:0]   axisToBmbBridge_cmd_bmbAddr;
  reg                 readEnd_regNext;
  wire                when_Axi4StreamToBmb_l49;
  wire                axisToBmbBridge_cmd_fifo_valid;
  wire                axisToBmbBridge_cmd_fifo_ready;
  wire       [7:0]    axisToBmbBridge_cmd_fifo_payload_data;
  wire                axisToBmbBridge_cmd_fifo_payload_last;
  wire       [0:0]    axisToBmbBridge_cmd_fifo_payload_user;
  wire                axisToBmbBridge_cmd_fifo_fire;
  wire                when_Axi4StreamToBmb_l52;
  reg                 axisToBmbBridge_cmd_error;
  wire                when_Axi4StreamToBmb_l64;
  reg                 axisToBmbBridge_rsp_lastCounter_willIncrement;
  wire                axisToBmbBridge_rsp_lastCounter_willClear;
  reg        [5:0]    axisToBmbBridge_rsp_lastCounter_valueNext;
  reg        [5:0]    axisToBmbBridge_rsp_lastCounter_value;
  wire                axisToBmbBridge_rsp_lastCounter_willOverflowIfInc;
  wire                axisToBmbBridge_rsp_lastCounter_willOverflow;
  wire                axisToBmbBridge_rsp_fifo_valid;
  wire                axisToBmbBridge_rsp_fifo_ready;
  wire       [7:0]    axisToBmbBridge_rsp_fifo_payload_data;
  wire                axisToBmbBridge_rsp_fifo_payload_last;
  wire       [0:0]    axisToBmbBridge_rsp_fifo_payload_user;
  wire                axisToBmbBridge_rsp_fifo_fire;
  (* async_reg = "true" *) reg                 adapter_readFlag1;
  reg                 adapter_bmbClockArea_BmbMux;
  reg                 adapter_bmbClockArea_BmbMux_regNext;
  wire                bmb_cmd_fire;
  wire                when_Axi4StreamToBmb_l96;
  wire                _zz_writeEnd_valid;
  reg                 _zz_writeEnd_valid_1;
  reg                 _zz_readEnd;
  wire                when_Axi4StreamToBmb_l104;
  reg                 readEnd_regNext_1;
  wire                axiOut_fire;
  wire                _zz_when_Stream_l393;
  wire                _zz_io_input_rsp_ready;
  wire                _zz_io_output_rsp_payload_last;
  wire       [0:0]    _zz_io_output_rsp_payload_fragment_opcode;
  wire       [31:0]   _zz_io_output_rsp_payload_fragment_data;
  wire       [3:0]    _zz_io_output_rsp_payload_fragment_context;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_valid;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_ready;
  wire                axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_last;
  wire       [0:0]    axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_opcode;
  wire       [28:0]   axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_address;
  wire       [9:0]    axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_length;
  wire       [31:0]   axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_data;
  wire       [3:0]    axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_mask;
  wire       [3:0]    axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_context;
  reg                 _zz_1;
  reg                 _zz_io_output_rsp_payload_last_1;
  reg                 _zz_io_output_rsp_payload_last_2;
  reg        [0:0]    _zz_io_output_rsp_payload_fragment_opcode_1;
  reg        [31:0]   _zz_io_output_rsp_payload_fragment_data_1;
  reg        [3:0]    _zz_io_output_rsp_payload_fragment_context_1;
  wire                _zz_when_Stream_l393_1;
  reg                 _zz_when_Stream_l393_2;
  reg                 _zz_io_output_rsp_payload_last_3;
  reg        [0:0]    _zz_io_output_rsp_payload_fragment_opcode_2;
  reg        [31:0]   _zz_io_output_rsp_payload_fragment_data_2;
  reg        [3:0]    _zz_io_output_rsp_payload_fragment_context_2;
  wire                when_Stream_l393;

  assign _zz_axisToBmbBridge_cmd_bmbAddr_1 = ({1'b0,lengthIn} + _zz_axisToBmbBridge_cmd_bmbAddr_2);
  assign _zz_axisToBmbBridge_cmd_bmbAddr = {18'd0, _zz_axisToBmbBridge_cmd_bmbAddr_1};
  assign _zz_axisToBmbBridge_cmd_bmbAddr_3 = {1'b0,1'b1};
  assign _zz_axisToBmbBridge_cmd_bmbAddr_2 = {9'd0, _zz_axisToBmbBridge_cmd_bmbAddr_3};
  assign _zz_axisToBmbBridge_rsp_lastCounter_valueNext_1 = axisToBmbBridge_rsp_lastCounter_willIncrement;
  assign _zz_axisToBmbBridge_rsp_lastCounter_valueNext = {5'd0, _zz_axisToBmbBridge_rsp_lastCounter_valueNext_1};
  assign _zz_lengthOut = adapter_bmbClockArea_bmbRdGen_io_length;
  StreamFifoLowLatency axiIn_fifo (
    .io_push_valid        (axiIn_valid                        ), //i
    .io_push_ready        (axiIn_fifo_io_push_ready           ), //o
    .io_push_payload_data (axiIn_payload_data[7:0]            ), //i
    .io_push_payload_last (axiIn_payload_last                 ), //i
    .io_push_payload_user (axiIn_fifo_io_push_payload_user    ), //i
    .io_pop_valid         (axiIn_fifo_io_pop_valid            ), //o
    .io_pop_ready         (axisToBmbBridge_cmd_fifo_ready     ), //i
    .io_pop_payload_data  (axiIn_fifo_io_pop_payload_data[7:0]), //o
    .io_pop_payload_last  (axiIn_fifo_io_pop_payload_last     ), //o
    .io_pop_payload_user  (axiIn_fifo_io_pop_payload_user     ), //o
    .io_flush             (1'b0                               ), //i
    .io_occupancy         (axiIn_fifo_io_occupancy[8:0]       ), //o
    .io_availability      (axiIn_fifo_io_availability[8:0]    ), //o
    .clk_out1             (clk_out1                           ), //i
    .rstN                 (rstN                               )  //i
  );
  BmbUpSizerBridge axisToBmbBridge_bmbBridge_upSizer (
    .io_input_cmd_valid                     (axisToBmbBridge_bmbBridge_cmd_valid                                           ), //i
    .io_input_cmd_ready                     (axisToBmbBridge_bmbBridge_upSizer_io_input_cmd_ready                          ), //o
    .io_input_cmd_payload_last              (axisToBmbBridge_bmbBridge_cmd_payload_last                                    ), //i
    .io_input_cmd_payload_fragment_opcode   (axisToBmbBridge_bmbBridge_cmd_payload_fragment_opcode                         ), //i
    .io_input_cmd_payload_fragment_address  (axisToBmbBridge_bmbBridge_cmd_payload_fragment_address[28:0]                  ), //i
    .io_input_cmd_payload_fragment_length   (axisToBmbBridge_bmbBridge_cmd_payload_fragment_length[9:0]                    ), //i
    .io_input_cmd_payload_fragment_data     (axisToBmbBridge_bmbBridge_cmd_payload_fragment_data[7:0]                      ), //i
    .io_input_cmd_payload_fragment_mask     (axisToBmbBridge_bmbBridge_cmd_payload_fragment_mask                           ), //i
    .io_input_rsp_valid                     (axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_valid                          ), //o
    .io_input_rsp_ready                     (axisToBmbBridge_bmbBridge_rsp_ready                                           ), //i
    .io_input_rsp_payload_last              (axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_last                   ), //o
    .io_input_rsp_payload_fragment_opcode   (axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_fragment_opcode        ), //o
    .io_input_rsp_payload_fragment_data     (axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_fragment_data[7:0]     ), //o
    .io_output_cmd_valid                    (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_valid                         ), //o
    .io_output_cmd_ready                    (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_ready               ), //i
    .io_output_cmd_payload_last             (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_last                  ), //o
    .io_output_cmd_payload_fragment_opcode  (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_opcode       ), //o
    .io_output_cmd_payload_fragment_address (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_address[28:0]), //o
    .io_output_cmd_payload_fragment_length  (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_length[9:0]  ), //o
    .io_output_cmd_payload_fragment_data    (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_data[31:0]   ), //o
    .io_output_cmd_payload_fragment_mask    (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_mask[3:0]    ), //o
    .io_output_cmd_payload_fragment_context (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_context[3:0] ), //o
    .io_output_rsp_valid                    (_zz_when_Stream_l393_1                                                        ), //i
    .io_output_rsp_ready                    (axisToBmbBridge_bmbBridge_upSizer_io_output_rsp_ready                         ), //o
    .io_output_rsp_payload_last             (_zz_io_output_rsp_payload_last_3                                              ), //i
    .io_output_rsp_payload_fragment_opcode  (_zz_io_output_rsp_payload_fragment_opcode_2                                   ), //i
    .io_output_rsp_payload_fragment_data    (_zz_io_output_rsp_payload_fragment_data_2[31:0]                               ), //i
    .io_output_rsp_payload_fragment_context (_zz_io_output_rsp_payload_fragment_context_2[3:0]                             ), //i
    .clk_out1                               (clk_out1                                                                      ), //i
    .rstN                                   (rstN                                                                          )  //i
  );
  BmbCcFifo adapter_bmbCCDomain (
    .io_input_cmd_valid                                                                          (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_valid                                                ), //i
    .io_input_cmd_ready                                                                          (adapter_bmbCCDomain_io_input_cmd_ready                                                                         ), //o
    .io_input_cmd_payload_last                                                                   (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_last                                         ), //i
    .io_input_cmd_payload_fragment_opcode                                                        (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_opcode                              ), //i
    .io_input_cmd_payload_fragment_address                                                       (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_address[28:0]                       ), //i
    .io_input_cmd_payload_fragment_length                                                        (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_length[9:0]                         ), //i
    .io_input_cmd_payload_fragment_data                                                          (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_data[31:0]                          ), //i
    .io_input_cmd_payload_fragment_mask                                                          (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_mask[3:0]                           ), //i
    .io_input_cmd_payload_fragment_context                                                       (axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_context[3:0]                        ), //i
    .io_input_rsp_valid                                                                          (adapter_bmbCCDomain_io_input_rsp_valid                                                                         ), //o
    .io_input_rsp_ready                                                                          (_zz_io_input_rsp_ready                                                                                         ), //i
    .io_input_rsp_payload_last                                                                   (adapter_bmbCCDomain_io_input_rsp_payload_last                                                                  ), //o
    .io_input_rsp_payload_fragment_opcode                                                        (adapter_bmbCCDomain_io_input_rsp_payload_fragment_opcode                                                       ), //o
    .io_input_rsp_payload_fragment_data                                                          (adapter_bmbCCDomain_io_input_rsp_payload_fragment_data[31:0]                                                   ), //o
    .io_input_rsp_payload_fragment_context                                                       (adapter_bmbCCDomain_io_input_rsp_payload_fragment_context[3:0]                                                 ), //o
    .io_output_cmd_valid                                                                         (adapter_bmbCCDomain_io_output_cmd_valid                                                                        ), //o
    .io_output_cmd_ready                                                                         (bmb_cmd_ready                                                                                                  ), //i
    .io_output_cmd_payload_last                                                                  (adapter_bmbCCDomain_io_output_cmd_payload_last                                                                 ), //o
    .io_output_cmd_payload_fragment_opcode                                                       (adapter_bmbCCDomain_io_output_cmd_payload_fragment_opcode                                                      ), //o
    .io_output_cmd_payload_fragment_address                                                      (adapter_bmbCCDomain_io_output_cmd_payload_fragment_address[28:0]                                               ), //o
    .io_output_cmd_payload_fragment_length                                                       (adapter_bmbCCDomain_io_output_cmd_payload_fragment_length[9:0]                                                 ), //o
    .io_output_cmd_payload_fragment_data                                                         (adapter_bmbCCDomain_io_output_cmd_payload_fragment_data[31:0]                                                  ), //o
    .io_output_cmd_payload_fragment_mask                                                         (adapter_bmbCCDomain_io_output_cmd_payload_fragment_mask[3:0]                                                   ), //o
    .io_output_cmd_payload_fragment_context                                                      (adapter_bmbCCDomain_io_output_cmd_payload_fragment_context[3:0]                                                ), //o
    .io_output_rsp_valid                                                                         (bmb_rsp_valid                                                                                                  ), //i
    .io_output_rsp_ready                                                                         (adapter_bmbCCDomain_io_output_rsp_ready                                                                        ), //o
    .io_output_rsp_payload_last                                                                  (bmb_rsp_payload_last                                                                                           ), //i
    .io_output_rsp_payload_fragment_opcode                                                       (bmb_rsp_payload_fragment_opcode                                                                                ), //i
    .io_output_rsp_payload_fragment_data                                                         (bmb_rsp_payload_fragment_data[31:0]                                                                            ), //i
    .io_output_rsp_payload_fragment_context                                                      (bmb_rsp_payload_fragment_context[3:0]                                                                          ), //i
    .clk_out1                                                                                    (clk_out1                                                                                                       ), //i
    .rstN                                                                                        (rstN                                                                                                           ), //i
    .clk_out4                                                                                    (clk_out4                                                                                                       ), //i
    .adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1 (adapter_bmbCCDomain_adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1)  //o
  );
  StreamCCByToggle adapter_headCCDomain (
    .io_input_valid                                                                              (rdCtr_valid                                                                                                    ), //i
    .io_input_ready                                                                              (adapter_headCCDomain_io_input_ready                                                                            ), //o
    .io_output_valid                                                                             (adapter_headCCDomain_io_output_valid                                                                           ), //o
    .io_output_ready                                                                             (adapter_bmbClockArea_bmbRdGen_io_handShake_ready                                                               ), //i
    .clk_out1                                                                                    (clk_out1                                                                                                       ), //i
    .rstN                                                                                        (rstN                                                                                                           ), //i
    .clk_out4                                                                                    (clk_out4                                                                                                       ), //i
    .adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1 (adapter_bmbCCDomain_adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1)  //i
  );
  BmbRdCmdGen adapter_bmbClockArea_bmbRdGen (
    .io_start                           (adapter_bmbClockArea_bmbRdGen_io_start                                ), //i
    .io_handShake_valid                 (adapter_headCCDomain_io_output_valid                                  ), //i
    .io_handShake_ready                 (adapter_bmbClockArea_bmbRdGen_io_handShake_ready                      ), //o
    .io_address                         (axisToBmbBridge_cmd_bmbAddr[28:0]                                     ), //i
    .io_length                          (adapter_bmbClockArea_bmbRdGen_io_length[5:0]                          ), //o
    .io_bmbCmd_valid                    (adapter_bmbClockArea_bmbRdGen_io_bmbCmd_valid                         ), //o
    .io_bmbCmd_ready                    (bmb_cmd_ready                                                         ), //i
    .io_bmbCmd_payload_last             (adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_last                  ), //o
    .io_bmbCmd_payload_fragment_opcode  (adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_opcode       ), //o
    .io_bmbCmd_payload_fragment_address (adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_address[28:0]), //o
    .io_bmbCmd_payload_fragment_length  (adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_length[9:0]  ), //o
    .io_bmbCmd_payload_fragment_data    (adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_data[31:0]   ), //o
    .io_bmbCmd_payload_fragment_mask    (adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_mask[3:0]    ), //o
    .io_bmbCmd_payload_fragment_context (adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_context[3:0] ), //o
    .io_end                             (adapter_bmbClockArea_bmbRdGen_io_end                                  ), //o
    .clk_out4                           (clk_out4                                                              ), //i
    .rstN                               (rstN                                                                  )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_4 adapter_bmbClockArea_BmbMux_buffercc (
    .io_dataIn  (adapter_bmbClockArea_BmbMux                    ), //i
    .io_dataOut (adapter_bmbClockArea_BmbMux_buffercc_io_dataOut), //o
    .clk_out1   (clk_out1                                       ), //i
    .rstN       (rstN                                           )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_4 adapter_bmbClockArea_bmbRdGen_io_end_buffercc (
    .io_dataIn  (adapter_bmbClockArea_bmbRdGen_io_end                    ), //i
    .io_dataOut (adapter_bmbClockArea_bmbRdGen_io_end_buffercc_io_dataOut), //o
    .clk_out1   (clk_out1                                                ), //i
    .rstN       (rstN                                                    )  //i
  );
  assign when_Axi4StreamToBmb_l49 = (readEnd && (! readEnd_regNext));
  assign axiIn_ready = axiIn_fifo_io_push_ready;
  assign axiIn_fifo_io_push_payload_user[0 : 0] = axiIn_payload_user[0 : 0];
  assign axisToBmbBridge_cmd_fifo_valid = axiIn_fifo_io_pop_valid;
  assign axisToBmbBridge_cmd_fifo_payload_data = axiIn_fifo_io_pop_payload_data;
  assign axisToBmbBridge_cmd_fifo_payload_last = axiIn_fifo_io_pop_payload_last;
  assign axisToBmbBridge_cmd_fifo_payload_user[0 : 0] = axiIn_fifo_io_pop_payload_user[0 : 0];
  assign axisToBmbBridge_cmd_fifo_fire = (axisToBmbBridge_cmd_fifo_valid && axisToBmbBridge_cmd_fifo_ready);
  assign when_Axi4StreamToBmb_l52 = (axisToBmbBridge_cmd_fifo_payload_last && axisToBmbBridge_cmd_fifo_fire);
  assign axisToBmbBridge_bmbBridge_cmd_valid = axisToBmbBridge_cmd_fifo_valid;
  assign axisToBmbBridge_cmd_fifo_ready = axisToBmbBridge_bmbBridge_cmd_ready;
  assign axisToBmbBridge_bmbBridge_cmd_payload_fragment_data = axisToBmbBridge_cmd_fifo_payload_data;
  assign axisToBmbBridge_bmbBridge_cmd_payload_last = axisToBmbBridge_cmd_fifo_payload_last;
  assign axisToBmbBridge_bmbBridge_cmd_payload_fragment_length = lengthIn;
  assign axisToBmbBridge_bmbBridge_cmd_payload_fragment_address = axisToBmbBridge_cmd_bmbAddr;
  assign axisToBmbBridge_bmbBridge_cmd_payload_fragment_mask = 1'b0;
  assign axisToBmbBridge_bmbBridge_cmd_payload_fragment_opcode = 1'b1;
  assign when_Axi4StreamToBmb_l64 = ((axisToBmbBridge_cmd_fifo_payload_last && axisToBmbBridge_cmd_fifo_fire) && axisToBmbBridge_cmd_fifo_payload_user[0]);
  assign error = axisToBmbBridge_cmd_error;
  always @(*) begin
    axisToBmbBridge_rsp_lastCounter_willIncrement = 1'b0;
    if(axisToBmbBridge_rsp_fifo_fire) begin
      axisToBmbBridge_rsp_lastCounter_willIncrement = 1'b1;
    end
  end

  assign axisToBmbBridge_rsp_lastCounter_willClear = 1'b0;
  assign axisToBmbBridge_rsp_lastCounter_willOverflowIfInc = (axisToBmbBridge_rsp_lastCounter_value == 6'h3f);
  assign axisToBmbBridge_rsp_lastCounter_willOverflow = (axisToBmbBridge_rsp_lastCounter_willOverflowIfInc && axisToBmbBridge_rsp_lastCounter_willIncrement);
  always @(*) begin
    axisToBmbBridge_rsp_lastCounter_valueNext = (axisToBmbBridge_rsp_lastCounter_value + _zz_axisToBmbBridge_rsp_lastCounter_valueNext);
    if(axisToBmbBridge_rsp_lastCounter_willClear) begin
      axisToBmbBridge_rsp_lastCounter_valueNext = 6'h0;
    end
  end

  assign axisToBmbBridge_rsp_fifo_fire = (axisToBmbBridge_rsp_fifo_valid && axisToBmbBridge_rsp_fifo_ready);
  assign axisToBmbBridge_rsp_fifo_valid = axisToBmbBridge_bmbBridge_rsp_valid;
  assign axisToBmbBridge_bmbBridge_rsp_ready = axisToBmbBridge_rsp_fifo_ready;
  assign axisToBmbBridge_rsp_fifo_payload_user = 1'b0;
  assign axisToBmbBridge_rsp_fifo_payload_data = axisToBmbBridge_bmbBridge_rsp_payload_fragment_data;
  assign axisToBmbBridge_rsp_fifo_payload_last = axisToBmbBridge_rsp_lastCounter_willOverflow;
  assign axiOut_valid = axisToBmbBridge_rsp_fifo_valid;
  assign axisToBmbBridge_rsp_fifo_ready = axiOut_ready;
  assign axiOut_payload_data = axisToBmbBridge_rsp_fifo_payload_data;
  assign axiOut_payload_last = axisToBmbBridge_rsp_fifo_payload_last;
  assign axiOut_payload_user[0 : 0] = axisToBmbBridge_rsp_fifo_payload_user[0 : 0];
  assign axisToBmbBridge_bmbBridge_cmd_ready = axisToBmbBridge_bmbBridge_upSizer_io_input_cmd_ready;
  assign axisToBmbBridge_bmbBridge_rsp_valid = axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_valid;
  assign axisToBmbBridge_bmbBridge_rsp_payload_last = axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_last;
  assign axisToBmbBridge_bmbBridge_rsp_payload_fragment_opcode = axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_fragment_opcode;
  assign axisToBmbBridge_bmbBridge_rsp_payload_fragment_data = axisToBmbBridge_bmbBridge_upSizer_io_input_rsp_payload_fragment_data;
  assign adapter_bmbClockArea_bmbRdGen_io_start = (adapter_bmbClockArea_BmbMux && (! adapter_bmbClockArea_BmbMux_regNext));
  assign bmb_cmd_valid = (adapter_bmbClockArea_BmbMux ? adapter_bmbClockArea_bmbRdGen_io_bmbCmd_valid : adapter_bmbCCDomain_io_output_cmd_valid);
  assign bmb_cmd_payload_last = (adapter_bmbClockArea_BmbMux ? adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_last : adapter_bmbCCDomain_io_output_cmd_payload_last);
  assign bmb_cmd_payload_fragment_opcode = (adapter_bmbClockArea_BmbMux ? adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_opcode : adapter_bmbCCDomain_io_output_cmd_payload_fragment_opcode);
  assign bmb_cmd_payload_fragment_address = (adapter_bmbClockArea_BmbMux ? adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_address : adapter_bmbCCDomain_io_output_cmd_payload_fragment_address);
  assign bmb_cmd_payload_fragment_length = (adapter_bmbClockArea_BmbMux ? adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_length : adapter_bmbCCDomain_io_output_cmd_payload_fragment_length);
  assign bmb_cmd_payload_fragment_data = (adapter_bmbClockArea_BmbMux ? adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_data : adapter_bmbCCDomain_io_output_cmd_payload_fragment_data);
  assign bmb_cmd_payload_fragment_mask = (adapter_bmbClockArea_BmbMux ? adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_mask : adapter_bmbCCDomain_io_output_cmd_payload_fragment_mask);
  assign bmb_cmd_payload_fragment_context = (adapter_bmbClockArea_BmbMux ? adapter_bmbClockArea_bmbRdGen_io_bmbCmd_payload_fragment_context : adapter_bmbCCDomain_io_output_cmd_payload_fragment_context);
  assign bmb_cmd_fire = (bmb_cmd_valid && bmb_cmd_ready);
  assign when_Axi4StreamToBmb_l96 = (adapter_readFlag1 && (bmb_cmd_fire && bmb_cmd_payload_last));
  assign bmb_rsp_ready = adapter_bmbCCDomain_io_output_rsp_ready;
  assign _zz_writeEnd_valid = adapter_bmbClockArea_BmbMux_buffercc_io_dataOut;
  assign writeEnd_valid = (_zz_writeEnd_valid && (! _zz_writeEnd_valid_1));
  assign when_Axi4StreamToBmb_l104 = adapter_bmbClockArea_bmbRdGen_io_end_buffercc_io_dataOut;
  assign axiOut_fire = (axiOut_valid && axiOut_ready);
  assign readEnd = (_zz_readEnd && (axiOut_payload_last && axiOut_fire));
  assign rdCtr_ready = adapter_headCCDomain_io_input_ready;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_valid = axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_valid;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_last = axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_last;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_opcode = axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_opcode;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_address = axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_address;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_length = axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_length;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_data = axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_data;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_mask = axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_mask;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_payload_fragment_context = axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_payload_fragment_context;
  assign axisToBmbBridge_bmbBridge_upSizer_io_output_cmd_combStage_ready = adapter_bmbCCDomain_io_input_cmd_ready;
  assign _zz_io_input_rsp_ready = _zz_io_output_rsp_payload_last_1;
  always @(*) begin
    _zz_1 = axisToBmbBridge_bmbBridge_upSizer_io_output_rsp_ready;
    if(when_Stream_l393) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l393 = (! _zz_when_Stream_l393_1);
  assign _zz_when_Stream_l393_1 = _zz_when_Stream_l393_2;
  assign _zz_when_Stream_l393 = adapter_bmbCCDomain_io_input_rsp_valid;
  assign _zz_io_output_rsp_payload_last = adapter_bmbCCDomain_io_input_rsp_payload_last;
  assign _zz_io_output_rsp_payload_fragment_opcode = adapter_bmbCCDomain_io_input_rsp_payload_fragment_opcode;
  assign _zz_io_output_rsp_payload_fragment_data = adapter_bmbCCDomain_io_input_rsp_payload_fragment_data;
  assign _zz_io_output_rsp_payload_fragment_context = adapter_bmbCCDomain_io_input_rsp_payload_fragment_context;
  assign lengthOut = {4'd0, _zz_lengthOut};
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      axisToBmbBridge_cmd_bmbAddr <= 29'h0;
      axisToBmbBridge_cmd_error <= 1'b0;
      axisToBmbBridge_rsp_lastCounter_value <= 6'h0;
      adapter_readFlag1 <= 1'b0;
      _zz_io_output_rsp_payload_last_1 <= 1'b1;
      _zz_when_Stream_l393_2 <= 1'b0;
    end else begin
      if(when_Axi4StreamToBmb_l49) begin
        axisToBmbBridge_cmd_bmbAddr <= 29'h0;
      end
      if(when_Axi4StreamToBmb_l52) begin
        axisToBmbBridge_cmd_bmbAddr <= (axisToBmbBridge_cmd_bmbAddr + _zz_axisToBmbBridge_cmd_bmbAddr);
      end
      if(when_Axi4StreamToBmb_l64) begin
        axisToBmbBridge_cmd_error <= 1'b1;
      end
      axisToBmbBridge_rsp_lastCounter_value <= axisToBmbBridge_rsp_lastCounter_valueNext;
      if(writeEnd_ready) begin
        adapter_readFlag1 <= 1'b1;
      end
      if(readEnd) begin
        adapter_readFlag1 <= 1'b0;
      end
      if(_zz_when_Stream_l393) begin
        _zz_io_output_rsp_payload_last_1 <= 1'b0;
      end
      if(_zz_1) begin
        _zz_io_output_rsp_payload_last_1 <= 1'b1;
      end
      if(_zz_1) begin
        _zz_when_Stream_l393_2 <= (_zz_when_Stream_l393 || (! _zz_io_output_rsp_payload_last_1));
      end
    end
  end

  always @(posedge clk_out1) begin
    readEnd_regNext <= readEnd;
    _zz_writeEnd_valid_1 <= _zz_writeEnd_valid;
    if(when_Axi4StreamToBmb_l104) begin
      _zz_readEnd <= 1'b1;
    end
    readEnd_regNext_1 <= readEnd;
    if(readEnd_regNext_1) begin
      _zz_readEnd <= 1'b0;
    end
    if(_zz_io_input_rsp_ready) begin
      _zz_io_output_rsp_payload_last_2 <= _zz_io_output_rsp_payload_last;
      _zz_io_output_rsp_payload_fragment_opcode_1 <= _zz_io_output_rsp_payload_fragment_opcode;
      _zz_io_output_rsp_payload_fragment_data_1 <= _zz_io_output_rsp_payload_fragment_data;
      _zz_io_output_rsp_payload_fragment_context_1 <= _zz_io_output_rsp_payload_fragment_context;
    end
    if(_zz_1) begin
      _zz_io_output_rsp_payload_last_3 <= (_zz_io_output_rsp_payload_last_1 ? _zz_io_output_rsp_payload_last : _zz_io_output_rsp_payload_last_2);
      _zz_io_output_rsp_payload_fragment_opcode_2 <= (_zz_io_output_rsp_payload_last_1 ? _zz_io_output_rsp_payload_fragment_opcode : _zz_io_output_rsp_payload_fragment_opcode_1);
      _zz_io_output_rsp_payload_fragment_data_2 <= (_zz_io_output_rsp_payload_last_1 ? _zz_io_output_rsp_payload_fragment_data : _zz_io_output_rsp_payload_fragment_data_1);
      _zz_io_output_rsp_payload_fragment_context_2 <= (_zz_io_output_rsp_payload_last_1 ? _zz_io_output_rsp_payload_fragment_context : _zz_io_output_rsp_payload_fragment_context_1);
    end
  end

  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      adapter_bmbClockArea_BmbMux <= 1'b0;
    end else begin
      if(when_Axi4StreamToBmb_l96) begin
        adapter_bmbClockArea_BmbMux <= 1'b1;
      end
      if(adapter_bmbClockArea_bmbRdGen_io_end) begin
        adapter_bmbClockArea_BmbMux <= 1'b0;
      end
    end
  end

  always @(posedge clk_out4) begin
    adapter_bmbClockArea_BmbMux_regNext <= adapter_bmbClockArea_BmbMux;
  end


endmodule

module StreamFifo (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload_data,
  input  wire          io_push_payload_last,
  input  wire [0:0]    io_push_payload_user,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [7:0]    io_pop_payload_data,
  output wire          io_pop_payload_last,
  output wire [0:0]    io_pop_payload_user,
  input  wire          io_flush,
  output wire [4:0]    io_occupancy,
  output wire [4:0]    io_availability,
  input  wire          clk_out1,
  input  wire          rstN
);

  reg        [9:0]    logic_ram_spinal_port1;
  wire       [9:0]    _zz_logic_ram_port;
  wire       [0:0]    _zz_logic_pop_sync_readPort_rsp_user;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [4:0]    logic_ptr_push;
  reg        [4:0]    logic_ptr_pop;
  wire       [4:0]    logic_ptr_occupancy;
  wire       [4:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [3:0]    logic_push_onRam_write_payload_address;
  wire       [7:0]    logic_push_onRam_write_payload_data_data;
  wire                logic_push_onRam_write_payload_data_last;
  wire       [0:0]    logic_push_onRam_write_payload_data_user;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [3:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [3:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [3:0]    logic_pop_addressGen_rData;
  wire                when_Stream_l393;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [3:0]    logic_pop_sync_readPort_cmd_payload;
  wire       [7:0]    logic_pop_sync_readPort_rsp_data;
  wire                logic_pop_sync_readPort_rsp_last;
  wire       [0:0]    logic_pop_sync_readPort_rsp_user;
  wire       [9:0]    _zz_logic_pop_sync_readPort_rsp_data;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [7:0]    logic_pop_sync_readArbitation_translated_payload_data;
  wire                logic_pop_sync_readArbitation_translated_payload_last;
  wire       [0:0]    logic_pop_sync_readArbitation_translated_payload_user;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [4:0]    logic_pop_sync_popReg;
  reg [9:0] logic_ram [0:15];

  assign _zz_logic_pop_sync_readPort_rsp_user = _zz_logic_pop_sync_readPort_rsp_data[9 : 9];
  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_user,{logic_push_onRam_write_payload_data_last,logic_push_onRam_write_payload_data_data}};
  always @(posedge clk_out1) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  always @(posedge clk_out1) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 5'h10) == 5'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[3:0];
  assign logic_push_onRam_write_payload_data_data = io_push_payload_data;
  assign logic_push_onRam_write_payload_data_last = io_push_payload_last;
  assign logic_push_onRam_write_payload_data_user[0 : 0] = io_push_payload_user[0 : 0];
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[3:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l393) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign _zz_logic_pop_sync_readPort_rsp_data = logic_ram_spinal_port1;
  assign logic_pop_sync_readPort_rsp_data = _zz_logic_pop_sync_readPort_rsp_data[7 : 0];
  assign logic_pop_sync_readPort_rsp_last = _zz_logic_pop_sync_readPort_rsp_data[8];
  assign logic_pop_sync_readPort_rsp_user[0 : 0] = _zz_logic_pop_sync_readPort_rsp_user[0 : 0];
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload_data = logic_pop_sync_readPort_rsp_data;
  assign logic_pop_sync_readArbitation_translated_payload_last = logic_pop_sync_readPort_rsp_last;
  assign logic_pop_sync_readArbitation_translated_payload_user[0 : 0] = logic_pop_sync_readPort_rsp_user[0 : 0];
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_data = logic_pop_sync_readArbitation_translated_payload_data;
  assign io_pop_payload_last = logic_pop_sync_readArbitation_translated_payload_last;
  assign io_pop_payload_user[0 : 0] = logic_pop_sync_readArbitation_translated_payload_user[0 : 0];
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (5'h10 - logic_ptr_occupancy);
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      logic_ptr_push <= 5'h0;
      logic_ptr_pop <= 5'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 5'h0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 5'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 5'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 5'h0;
        logic_ptr_pop <= 5'h0;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 5'h0;
      end
    end
  end

  always @(posedge clk_out1) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

module StreamFifo_7 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload_data,
  input  wire          io_push_payload_last,
  input  wire [0:0]    io_push_payload_user,
  output reg           io_pop_valid,
  input  wire          io_pop_ready,
  output reg  [7:0]    io_pop_payload_data,
  output reg           io_pop_payload_last,
  output reg  [0:0]    io_pop_payload_user,
  input  wire          io_flush,
  output wire [7:0]    io_occupancy,
  output wire [7:0]    io_availability,
  input  wire          clk_out1,
  input  wire          rstN
);

  wire       [9:0]    logic_ram_spinal_port1;
  wire       [7:0]    _zz_logic_ptr_notPow2_counter;
  wire       [7:0]    _zz_logic_ptr_notPow2_counter_1;
  wire       [0:0]    _zz_logic_ptr_notPow2_counter_2;
  wire       [7:0]    _zz_logic_ptr_notPow2_counter_3;
  wire       [0:0]    _zz_logic_ptr_notPow2_counter_4;
  wire       [9:0]    _zz_logic_ram_port;
  reg                 _zz_1;
  reg                 logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [7:0]    logic_ptr_push;
  reg        [7:0]    logic_ptr_pop;
  wire       [7:0]    logic_ptr_occupancy;
  wire       [7:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                when_Stream_l1304;
  wire                when_Stream_l1308;
  reg        [7:0]    logic_ptr_notPow2_counter;
  wire                io_push_fire;
  wire                io_pop_fire;
  wire                logic_push_onRam_write_valid;
  wire       [7:0]    logic_push_onRam_write_payload_address;
  wire       [7:0]    logic_push_onRam_write_payload_data_data;
  wire                logic_push_onRam_write_payload_data_last;
  wire       [0:0]    logic_push_onRam_write_payload_data_user;
  wire                logic_pop_addressGen_valid;
  wire                logic_pop_addressGen_ready;
  wire       [7:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire       [7:0]    logic_pop_async_readed_data;
  wire                logic_pop_async_readed_last;
  wire       [0:0]    logic_pop_async_readed_user;
  wire       [9:0]    _zz_logic_pop_async_readed_data;
  wire                logic_pop_addressGen_translated_valid;
  wire                logic_pop_addressGen_translated_ready;
  wire       [7:0]    logic_pop_addressGen_translated_payload_data;
  wire                logic_pop_addressGen_translated_payload_last;
  wire       [0:0]    logic_pop_addressGen_translated_payload_user;
  (* ram_style = "distributed" *) reg [9:0] logic_ram [0:183];

  assign _zz_logic_ptr_notPow2_counter = (logic_ptr_notPow2_counter + _zz_logic_ptr_notPow2_counter_1);
  assign _zz_logic_ptr_notPow2_counter_2 = io_push_fire;
  assign _zz_logic_ptr_notPow2_counter_1 = {7'd0, _zz_logic_ptr_notPow2_counter_2};
  assign _zz_logic_ptr_notPow2_counter_4 = io_pop_fire;
  assign _zz_logic_ptr_notPow2_counter_3 = {7'd0, _zz_logic_ptr_notPow2_counter_4};
  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_user,{logic_push_onRam_write_payload_data_last,logic_push_onRam_write_payload_data_data}};
  always @(posedge clk_out1) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  assign logic_ram_spinal_port1 = logic_ram[logic_pop_addressGen_payload];
  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = ((logic_ptr_push == logic_ptr_popOnIo) && logic_ptr_wentUp);
  assign logic_ptr_empty = ((logic_ptr_push == logic_ptr_pop) && (! logic_ptr_wentUp));
  assign when_Stream_l1304 = (logic_ptr_push == 8'hb7);
  assign when_Stream_l1308 = (logic_ptr_pop == 8'hb7);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign io_pop_fire = (io_pop_valid && io_pop_ready);
  assign logic_ptr_occupancy = logic_ptr_notPow2_counter;
  assign io_push_ready = (! logic_ptr_full);
  always @(*) begin
    logic_ptr_doPush = io_push_fire;
    if(logic_ptr_empty) begin
      if(io_pop_ready) begin
        logic_ptr_doPush = 1'b0;
      end
    end
  end

  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push;
  assign logic_push_onRam_write_payload_data_data = io_push_payload_data;
  assign logic_push_onRam_write_payload_data_last = io_push_payload_last;
  assign logic_push_onRam_write_payload_data_user[0 : 0] = io_push_payload_user[0 : 0];
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop;
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  assign _zz_logic_pop_async_readed_data = logic_ram_spinal_port1;
  assign logic_pop_async_readed_data = _zz_logic_pop_async_readed_data[7 : 0];
  assign logic_pop_async_readed_last = _zz_logic_pop_async_readed_data[8];
  assign logic_pop_async_readed_user = _zz_logic_pop_async_readed_data[9 : 9];
  assign logic_pop_addressGen_translated_valid = logic_pop_addressGen_valid;
  assign logic_pop_addressGen_ready = logic_pop_addressGen_translated_ready;
  assign logic_pop_addressGen_translated_payload_data = logic_pop_async_readed_data;
  assign logic_pop_addressGen_translated_payload_last = logic_pop_async_readed_last;
  assign logic_pop_addressGen_translated_payload_user[0 : 0] = logic_pop_async_readed_user[0 : 0];
  always @(*) begin
    io_pop_valid = logic_pop_addressGen_translated_valid;
    if(logic_ptr_empty) begin
      io_pop_valid = io_push_valid;
    end
  end

  assign logic_pop_addressGen_translated_ready = io_pop_ready;
  always @(*) begin
    io_pop_payload_data = logic_pop_addressGen_translated_payload_data;
    if(logic_ptr_empty) begin
      io_pop_payload_data = io_push_payload_data;
    end
  end

  always @(*) begin
    io_pop_payload_last = logic_pop_addressGen_translated_payload_last;
    if(logic_ptr_empty) begin
      io_pop_payload_last = io_push_payload_last;
    end
  end

  always @(*) begin
    io_pop_payload_user[0 : 0] = logic_pop_addressGen_translated_payload_user[0 : 0];
    if(logic_ptr_empty) begin
      io_pop_payload_user[0 : 0] = io_push_payload_user[0 : 0];
    end
  end

  assign logic_ptr_popOnIo = logic_ptr_pop;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (8'hb8 - logic_ptr_occupancy);
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      logic_ptr_push <= 8'h0;
      logic_ptr_pop <= 8'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_ptr_notPow2_counter <= 8'h0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 8'h01);
        if(when_Stream_l1304) begin
          logic_ptr_push <= 8'h0;
        end
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 8'h01);
        if(when_Stream_l1308) begin
          logic_ptr_pop <= 8'h0;
        end
      end
      if(io_flush) begin
        logic_ptr_push <= 8'h0;
        logic_ptr_pop <= 8'h0;
      end
      logic_ptr_notPow2_counter <= (_zz_logic_ptr_notPow2_counter - _zz_logic_ptr_notPow2_counter_3);
      if(io_flush) begin
        logic_ptr_notPow2_counter <= 8'h0;
      end
    end
  end


endmodule

module DfiPhyDdr3 (
  input  wire          io_clk_work,
  input  wire          io_clk_ddr,
  input  wire          io_clk_ddr90,
  input  wire          io_clk_ref,
  input  wire          io_rst,
  output wire          io_initDone,
  input  wire [14:0]   io_dfi_control_address,
  input  wire [2:0]    io_dfi_control_bank,
  input  wire [0:0]    io_dfi_control_rasN,
  input  wire [0:0]    io_dfi_control_casN,
  input  wire [0:0]    io_dfi_control_weN,
  input  wire [0:0]    io_dfi_control_csN,
  input  wire [0:0]    io_dfi_control_cke,
  input  wire [0:0]    io_dfi_control_odt,
  input  wire [0:0]    io_dfi_control_resetN,
  input  wire          io_dfi_write_wr_0_wrdataEn,
  input  wire [31:0]   io_dfi_write_wr_0_wrdata,
  input  wire [3:0]    io_dfi_write_wr_0_wrdataMask,
  input  wire          io_dfi_read_rden_0,
  output wire          io_dfi_read_rd_0_rddataValid,
  output wire [31:0]   io_dfi_read_rd_0_rddata,
  output wire [3:0]    io_dfi_read_rd_0_rddataDnv,
  output wire [0:0]    io_ddr3_ckP,
  output wire [0:0]    io_ddr3_ckN,
  output wire [0:0]    io_ddr3_cke,
  output wire [0:0]    io_ddr3_resetN,
  output wire [0:0]    io_ddr3_rasN,
  output wire [0:0]    io_ddr3_casN,
  output wire [0:0]    io_ddr3_weN,
  output wire [0:0]    io_ddr3_csN,
  output wire [2:0]    io_ddr3_ba,
  output wire [14:0]   io_ddr3_addr,
  output wire [0:0]    io_ddr3_odt,
  output wire [1:0]    io_ddr3_dm,
  inout  wire [1:0]    io_ddr3_dqsP,
  inout  wire [1:0]    io_ddr3_dqsN,
  inout  wire [15:0]   io_ddr3_dq,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [14:0]   ddr3Phy_dfi_address_i;
  wire       [2:0]    ddr3Phy_dfi_bank_i;
  wire       [0:0]    ddr3Phy_dfi_ras_n_i;
  wire       [0:0]    ddr3Phy_dfi_cas_n_i;
  wire       [0:0]    ddr3Phy_dfi_we_n_i;
  wire       [0:0]    ddr3Phy_dfi_cs_n_i;
  wire       [0:0]    ddr3Phy_dfi_cke_i;
  wire       [0:0]    ddr3Phy_dfi_odt_i;
  wire       [0:0]    ddr3Phy_dfi_reset_n_i;
  wire                ddr3Phy_dfi_wrdata_en_i;
  wire       [31:0]   ddr3Phy_dfi_wrdata_i;
  wire       [3:0]    ddr3Phy_dfi_wrdata_mask_i;
  wire                ddr3Phy_dfi_rddata_en_i;
  wire       [14:0]   init_io_control_address;
  wire       [2:0]    init_io_control_bank;
  wire       [0:0]    init_io_control_rasN;
  wire       [0:0]    init_io_control_casN;
  wire       [0:0]    init_io_control_weN;
  wire       [0:0]    init_io_control_csN;
  wire       [0:0]    init_io_control_cke;
  wire       [0:0]    init_io_control_odt;
  wire       [0:0]    init_io_control_resetN;
  wire                init_io_initDone;
  wire                ddr3Phy_dfi_rddata_valid_o;
  wire       [31:0]   ddr3Phy_dfi_rddata_o;
  wire       [3:0]    ddr3Phy_dfi_rddata_dnv_o;
  wire       [0:0]    ddr3Phy_ddr3_ck_p_o;
  wire       [0:0]    ddr3Phy_ddr3_ck_n_o;
  wire       [0:0]    ddr3Phy_ddr3_cke_o;
  wire       [0:0]    ddr3Phy_ddr3_reset_n_o;
  wire       [0:0]    ddr3Phy_ddr3_ras_n_o;
  wire       [0:0]    ddr3Phy_ddr3_cas_n_o;
  wire       [0:0]    ddr3Phy_ddr3_we_n_o;
  wire       [0:0]    ddr3Phy_ddr3_cs_n_o;
  wire       [2:0]    ddr3Phy_ddr3_ba_o;
  wire       [14:0]   ddr3Phy_ddr3_addr_o;
  wire       [0:0]    ddr3Phy_ddr3_odt_o;
  wire       [1:0]    ddr3Phy_ddr3_dm_o;
  wire       [36:0]   _zz__zz_initDfi_write_wr_0_wrdataEn;
  wire       [0:0]    _zz_initDfi_read_rden_0;
  reg        [14:0]   initCtrlReg_address;
  reg        [2:0]    initCtrlReg_bank;
  reg        [0:0]    initCtrlReg_rasN;
  reg        [0:0]    initCtrlReg_casN;
  reg        [0:0]    initCtrlReg_weN;
  reg        [0:0]    initCtrlReg_csN;
  reg        [0:0]    initCtrlReg_cke;
  reg        [0:0]    initCtrlReg_odt;
  reg        [0:0]    initCtrlReg_resetN;
  wire       [14:0]   initDfi_control_address;
  wire       [2:0]    initDfi_control_bank;
  wire       [0:0]    initDfi_control_rasN;
  wire       [0:0]    initDfi_control_casN;
  wire       [0:0]    initDfi_control_weN;
  wire       [0:0]    initDfi_control_csN;
  wire       [0:0]    initDfi_control_cke;
  wire       [0:0]    initDfi_control_odt;
  wire       [0:0]    initDfi_control_resetN;
  wire                initDfi_write_wr_0_wrdataEn;
  wire       [31:0]   initDfi_write_wr_0_wrdata;
  wire       [3:0]    initDfi_write_wr_0_wrdataMask;
  wire                initDfi_read_rden_0;
  wire                initDfi_read_rd_0_rddataValid;
  wire       [31:0]   initDfi_read_rd_0_rddata;
  wire       [3:0]    initDfi_read_rd_0_rddataDnv;
  wire       [36:0]   _zz_initDfi_write_wr_0_wrdataEn;

  assign _zz__zz_initDfi_write_wr_0_wrdataEn = 37'h0;
  assign _zz_initDfi_read_rden_0 = 1'b0;
  Initialize init (
    .io_control_address (init_io_control_address[14:0]), //o
    .io_control_bank    (init_io_control_bank[2:0]    ), //o
    .io_control_rasN    (init_io_control_rasN         ), //o
    .io_control_casN    (init_io_control_casN         ), //o
    .io_control_weN     (init_io_control_weN          ), //o
    .io_control_csN     (init_io_control_csN          ), //o
    .io_control_cke     (init_io_control_cke          ), //o
    .io_control_odt     (init_io_control_odt          ), //o
    .io_control_resetN  (init_io_control_resetN       ), //o
    .io_initDone        (init_io_initDone             ), //o
    .clk_out4           (clk_out4                     ), //i
    .rstN               (rstN                         )  //i
  );
  ddr3_dfi_phy #(
    .REFCLK_FREQUENCY   (200),
    .DQS_TAP_DELAY_INIT (27 ),
    .DQ_TAP_DELAY_INIT  (0  ),
    .TPHY_RDLAT         (5  ),
    .TPHY_WRLAT         (5  )
  ) ddr3Phy (
    .clk_i              (io_clk_work                   ), //i
    .clk_ddr_i          (io_clk_ddr                    ), //i
    .clk_ddr90_i        (io_clk_ddr90                  ), //i
    .clk_ref_i          (io_clk_ref                    ), //i
    .rst_i              (io_rst                        ), //i
    .cfg_valid_i        (1'b0                          ), //i
    .cfg_i              (32'h0                         ), //i
    .dfi_address_i      (ddr3Phy_dfi_address_i[14:0]   ), //i
    .dfi_bank_i         (ddr3Phy_dfi_bank_i[2:0]       ), //i
    .dfi_ras_n_i        (ddr3Phy_dfi_ras_n_i           ), //i
    .dfi_cas_n_i        (ddr3Phy_dfi_cas_n_i           ), //i
    .dfi_we_n_i         (ddr3Phy_dfi_we_n_i            ), //i
    .dfi_cs_n_i         (ddr3Phy_dfi_cs_n_i            ), //i
    .dfi_cke_i          (ddr3Phy_dfi_cke_i             ), //i
    .dfi_odt_i          (ddr3Phy_dfi_odt_i             ), //i
    .dfi_reset_n_i      (ddr3Phy_dfi_reset_n_i         ), //i
    .dfi_wrdata_en_i    (ddr3Phy_dfi_wrdata_en_i       ), //i
    .dfi_wrdata_i       (ddr3Phy_dfi_wrdata_i[31:0]    ), //i
    .dfi_wrdata_mask_i  (ddr3Phy_dfi_wrdata_mask_i[3:0]), //i
    .dfi_rddata_en_i    (ddr3Phy_dfi_rddata_en_i       ), //i
    .dfi_rddata_valid_o (ddr3Phy_dfi_rddata_valid_o    ), //o
    .dfi_rddata_o       (ddr3Phy_dfi_rddata_o[31:0]    ), //o
    .dfi_rddata_dnv_o   (ddr3Phy_dfi_rddata_dnv_o[3:0] ), //o
    .ddr3_ck_p_o        (ddr3Phy_ddr3_ck_p_o           ), //o
    .ddr3_ck_n_o        (ddr3Phy_ddr3_ck_n_o           ), //o
    .ddr3_cke_o         (ddr3Phy_ddr3_cke_o            ), //o
    .ddr3_reset_n_o     (ddr3Phy_ddr3_reset_n_o        ), //o
    .ddr3_ras_n_o       (ddr3Phy_ddr3_ras_n_o          ), //o
    .ddr3_cas_n_o       (ddr3Phy_ddr3_cas_n_o          ), //o
    .ddr3_we_n_o        (ddr3Phy_ddr3_we_n_o           ), //o
    .ddr3_cs_n_o        (ddr3Phy_ddr3_cs_n_o           ), //o
    .ddr3_ba_o          (ddr3Phy_ddr3_ba_o[2:0]        ), //o
    .ddr3_addr_o        (ddr3Phy_ddr3_addr_o[14:0]     ), //o
    .ddr3_odt_o         (ddr3Phy_ddr3_odt_o            ), //o
    .ddr3_dm_o          (ddr3Phy_ddr3_dm_o[1:0]        ), //o
    .ddr3_dqs_p_io      (io_ddr3_dqsP                  ), //~
    .ddr3_dqs_n_io      (io_ddr3_dqsN                  ), //~
    .ddr3_dq_io         (io_ddr3_dq                    )  //~
  );
  assign io_initDone = init_io_initDone;
  assign initDfi_control_address = initCtrlReg_address;
  assign initDfi_control_bank = initCtrlReg_bank;
  assign initDfi_control_rasN = initCtrlReg_rasN;
  assign initDfi_control_casN = initCtrlReg_casN;
  assign initDfi_control_weN = initCtrlReg_weN;
  assign initDfi_control_csN = initCtrlReg_csN;
  assign initDfi_control_cke = initCtrlReg_cke;
  assign initDfi_control_odt = initCtrlReg_odt;
  assign initDfi_control_resetN = initCtrlReg_resetN;
  assign _zz_initDfi_write_wr_0_wrdataEn = _zz__zz_initDfi_write_wr_0_wrdataEn[36 : 0];
  assign initDfi_write_wr_0_wrdataEn = _zz_initDfi_write_wr_0_wrdataEn[0];
  assign initDfi_write_wr_0_wrdata = _zz_initDfi_write_wr_0_wrdataEn[32 : 1];
  assign initDfi_write_wr_0_wrdataMask = _zz_initDfi_write_wr_0_wrdataEn[36 : 33];
  assign initDfi_read_rden_0 = _zz_initDfi_read_rden_0[0];
  assign io_ddr3_ckP = ddr3Phy_ddr3_ck_p_o;
  assign io_ddr3_ckN = ddr3Phy_ddr3_ck_n_o;
  assign io_ddr3_cke = ddr3Phy_ddr3_cke_o;
  assign io_ddr3_resetN = ddr3Phy_ddr3_reset_n_o;
  assign io_ddr3_rasN = ddr3Phy_ddr3_ras_n_o;
  assign io_ddr3_casN = ddr3Phy_ddr3_cas_n_o;
  assign io_ddr3_weN = ddr3Phy_ddr3_we_n_o;
  assign io_ddr3_csN = ddr3Phy_ddr3_cs_n_o;
  assign io_ddr3_ba = ddr3Phy_ddr3_ba_o;
  assign io_ddr3_addr = ddr3Phy_ddr3_addr_o;
  assign io_ddr3_odt = ddr3Phy_ddr3_odt_o;
  assign io_ddr3_dm = ddr3Phy_ddr3_dm_o;
  assign ddr3Phy_dfi_address_i = (init_io_initDone ? io_dfi_control_address : initDfi_control_address);
  assign ddr3Phy_dfi_bank_i = (init_io_initDone ? io_dfi_control_bank : initDfi_control_bank);
  assign ddr3Phy_dfi_ras_n_i = (init_io_initDone ? io_dfi_control_rasN : initDfi_control_rasN);
  assign ddr3Phy_dfi_cas_n_i = (init_io_initDone ? io_dfi_control_casN : initDfi_control_casN);
  assign ddr3Phy_dfi_we_n_i = (init_io_initDone ? io_dfi_control_weN : initDfi_control_weN);
  assign ddr3Phy_dfi_cs_n_i = (init_io_initDone ? io_dfi_control_csN : initDfi_control_csN);
  assign ddr3Phy_dfi_cke_i = (init_io_initDone ? io_dfi_control_cke : initDfi_control_cke);
  assign ddr3Phy_dfi_odt_i = (init_io_initDone ? io_dfi_control_odt : initDfi_control_odt);
  assign ddr3Phy_dfi_reset_n_i = (init_io_initDone ? io_dfi_control_resetN : initDfi_control_resetN);
  assign ddr3Phy_dfi_wrdata_en_i = (init_io_initDone ? io_dfi_write_wr_0_wrdataEn : initDfi_write_wr_0_wrdataEn);
  assign ddr3Phy_dfi_wrdata_i = (init_io_initDone ? io_dfi_write_wr_0_wrdata : initDfi_write_wr_0_wrdata);
  assign ddr3Phy_dfi_wrdata_mask_i = (init_io_initDone ? io_dfi_write_wr_0_wrdataMask : initDfi_write_wr_0_wrdataMask);
  assign ddr3Phy_dfi_rddata_en_i = (init_io_initDone ? io_dfi_read_rden_0 : initDfi_read_rden_0);
  assign io_dfi_read_rd_0_rddataValid = ddr3Phy_dfi_rddata_valid_o;
  assign io_dfi_read_rd_0_rddata = ddr3Phy_dfi_rddata_o;
  assign io_dfi_read_rd_0_rddataDnv = ddr3Phy_dfi_rddata_dnv_o;
  always @(posedge clk_out4) begin
    initCtrlReg_address <= init_io_control_address;
    initCtrlReg_bank <= init_io_control_bank;
    initCtrlReg_rasN <= init_io_control_rasN;
    initCtrlReg_casN <= init_io_control_casN;
    initCtrlReg_weN <= init_io_control_weN;
    initCtrlReg_csN <= init_io_control_csN;
    initCtrlReg_cke <= init_io_control_cke;
    initCtrlReg_odt <= init_io_control_odt;
    initCtrlReg_resetN <= init_io_control_resetN;
  end


endmodule

module DfiController (
  input  wire          io_bmb_cmd_valid,
  output wire          io_bmb_cmd_ready,
  input  wire          io_bmb_cmd_payload_last,
  input  wire [0:0]    io_bmb_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_bmb_cmd_payload_fragment_address,
  input  wire [9:0]    io_bmb_cmd_payload_fragment_length,
  input  wire [31:0]   io_bmb_cmd_payload_fragment_data,
  input  wire [3:0]    io_bmb_cmd_payload_fragment_mask,
  input  wire [3:0]    io_bmb_cmd_payload_fragment_context,
  output wire          io_bmb_rsp_valid,
  input  wire          io_bmb_rsp_ready,
  output wire          io_bmb_rsp_payload_last,
  output wire [0:0]    io_bmb_rsp_payload_fragment_opcode,
  output wire [31:0]   io_bmb_rsp_payload_fragment_data,
  output wire [3:0]    io_bmb_rsp_payload_fragment_context,
  output wire [14:0]   io_dfi_control_address,
  output wire [2:0]    io_dfi_control_bank,
  output wire [0:0]    io_dfi_control_rasN,
  output wire [0:0]    io_dfi_control_casN,
  output wire [0:0]    io_dfi_control_weN,
  output wire [0:0]    io_dfi_control_csN,
  output wire [0:0]    io_dfi_control_cke,
  output wire          io_dfi_write_wr_0_wrdataEn,
  output wire [31:0]   io_dfi_write_wr_0_wrdata,
  output wire [3:0]    io_dfi_write_wr_0_wrdataMask,
  output wire          io_dfi_read_rden_0,
  input  wire          io_dfi_read_rd_0_rddataValid,
  input  wire [31:0]   io_dfi_read_rd_0_rddata,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                bmbBridge_1_io_bmb_cmd_ready;
  wire                bmbBridge_1_io_bmb_rsp_valid;
  wire                bmbBridge_1_io_bmb_rsp_payload_last;
  wire       [0:0]    bmbBridge_1_io_bmb_rsp_payload_fragment_opcode;
  wire       [31:0]   bmbBridge_1_io_bmb_rsp_payload_fragment_data;
  wire       [3:0]    bmbBridge_1_io_bmb_rsp_payload_fragment_context;
  wire                bmbBridge_1_io_taskPort_writeData_valid;
  wire       [31:0]   bmbBridge_1_io_taskPort_writeData_payload_data;
  wire       [3:0]    bmbBridge_1_io_taskPort_writeData_payload_mask;
  wire                bmbBridge_1_io_taskPort_rsp_ready;
  wire                bmbBridge_1_io_taskPort_tasks_read;
  wire                bmbBridge_1_io_taskPort_tasks_write;
  wire                bmbBridge_1_io_taskPort_tasks_active;
  wire                bmbBridge_1_io_taskPort_tasks_precharge;
  wire                bmbBridge_1_io_taskPort_tasks_last;
  wire       [0:0]    bmbBridge_1_io_taskPort_tasks_address_byte;
  wire       [9:0]    bmbBridge_1_io_taskPort_tasks_address_column;
  wire       [2:0]    bmbBridge_1_io_taskPort_tasks_address_bank;
  wire       [14:0]   bmbBridge_1_io_taskPort_tasks_address_row;
  wire       [17:0]   bmbBridge_1_io_taskPort_tasks_context;
  wire                bmbBridge_1_io_taskPort_tasks_prechargeAll;
  wire                bmbBridge_1_io_taskPort_tasks_refresh;
  wire                control_1_io_inport_writeData_ready;
  wire                control_1_io_inport_rsp_valid;
  wire                control_1_io_inport_rsp_payload_last;
  wire       [31:0]   control_1_io_inport_rsp_payload_fragment_data;
  wire       [17:0]   control_1_io_inport_rsp_payload_fragment_context;
  wire                control_1_io_outport_cmd_0_valid;
  wire                control_1_io_outport_cmd_0_payload_weN;
  wire                control_1_io_outport_cmd_0_payload_casN;
  wire                control_1_io_outport_cmd_0_payload_rasN;
  wire       [0:0]    control_1_io_outport_cmd_0_payload_csN;
  wire                control_1_io_outport_odt_0_valid;
  wire                control_1_io_outport_address_0_valid;
  wire       [2:0]    control_1_io_outport_address_0_payload_bank;
  wire       [14:0]   control_1_io_outport_address_0_payload_address;
  wire                control_1_io_outport_wrData_0_valid;
  wire       [31:0]   control_1_io_outport_wrData_0_payload_wrData;
  wire       [3:0]    control_1_io_outport_wrData_0_payload_wrDataMask;
  wire                control_1_io_outport_wrCs_0_valid;
  wire                control_1_io_outport_rdData_0_ready;
  wire                control_1_io_outport_rdCs_0_valid;
  wire                control_1_io_outport_clkDisable_valid;
  wire       [0:0]    control_1_io_outport_clkDisable_payload;
  wire                control_1_io_outport_lpCtrlReq_valid;
  wire       [0:0]    control_1_io_outport_cke_0;
  wire                control_1_io_outport_rdEn_0;
  wire                alignment_1_io_inIdfiport_rdData_0_valid;
  wire                alignment_1_io_inIdfiport_rdData_0_payload_last;
  wire       [31:0]   alignment_1_io_inIdfiport_rdData_0_payload_fragment_rdData;
  wire       [14:0]   alignment_1_io_outDfiport_control_address;
  wire       [2:0]    alignment_1_io_outDfiport_control_bank;
  wire       [0:0]    alignment_1_io_outDfiport_control_rasN;
  wire       [0:0]    alignment_1_io_outDfiport_control_casN;
  wire       [0:0]    alignment_1_io_outDfiport_control_weN;
  wire       [0:0]    alignment_1_io_outDfiport_control_csN;
  wire       [0:0]    alignment_1_io_outDfiport_control_cke;
  wire                alignment_1_io_outDfiport_read_rden_0;
  wire                alignment_1_io_outDfiport_write_wr_0_wrdataEn;
  wire       [31:0]   alignment_1_io_outDfiport_write_wr_0_wrdata;
  wire       [3:0]    alignment_1_io_outDfiport_write_wr_0_wrdataMask;

  BmbBridge bmbBridge_1 (
    .io_bmb_cmd_valid                         (io_bmb_cmd_valid                                      ), //i
    .io_bmb_cmd_ready                         (bmbBridge_1_io_bmb_cmd_ready                          ), //o
    .io_bmb_cmd_payload_last                  (io_bmb_cmd_payload_last                               ), //i
    .io_bmb_cmd_payload_fragment_opcode       (io_bmb_cmd_payload_fragment_opcode                    ), //i
    .io_bmb_cmd_payload_fragment_address      (io_bmb_cmd_payload_fragment_address[28:0]             ), //i
    .io_bmb_cmd_payload_fragment_length       (io_bmb_cmd_payload_fragment_length[9:0]               ), //i
    .io_bmb_cmd_payload_fragment_data         (io_bmb_cmd_payload_fragment_data[31:0]                ), //i
    .io_bmb_cmd_payload_fragment_mask         (io_bmb_cmd_payload_fragment_mask[3:0]                 ), //i
    .io_bmb_cmd_payload_fragment_context      (io_bmb_cmd_payload_fragment_context[3:0]              ), //i
    .io_bmb_rsp_valid                         (bmbBridge_1_io_bmb_rsp_valid                          ), //o
    .io_bmb_rsp_ready                         (io_bmb_rsp_ready                                      ), //i
    .io_bmb_rsp_payload_last                  (bmbBridge_1_io_bmb_rsp_payload_last                   ), //o
    .io_bmb_rsp_payload_fragment_opcode       (bmbBridge_1_io_bmb_rsp_payload_fragment_opcode        ), //o
    .io_bmb_rsp_payload_fragment_data         (bmbBridge_1_io_bmb_rsp_payload_fragment_data[31:0]    ), //o
    .io_bmb_rsp_payload_fragment_context      (bmbBridge_1_io_bmb_rsp_payload_fragment_context[3:0]  ), //o
    .io_taskPort_tasks_read                   (bmbBridge_1_io_taskPort_tasks_read                    ), //o
    .io_taskPort_tasks_write                  (bmbBridge_1_io_taskPort_tasks_write                   ), //o
    .io_taskPort_tasks_active                 (bmbBridge_1_io_taskPort_tasks_active                  ), //o
    .io_taskPort_tasks_precharge              (bmbBridge_1_io_taskPort_tasks_precharge               ), //o
    .io_taskPort_tasks_last                   (bmbBridge_1_io_taskPort_tasks_last                    ), //o
    .io_taskPort_tasks_address_byte           (bmbBridge_1_io_taskPort_tasks_address_byte            ), //o
    .io_taskPort_tasks_address_column         (bmbBridge_1_io_taskPort_tasks_address_column[9:0]     ), //o
    .io_taskPort_tasks_address_bank           (bmbBridge_1_io_taskPort_tasks_address_bank[2:0]       ), //o
    .io_taskPort_tasks_address_row            (bmbBridge_1_io_taskPort_tasks_address_row[14:0]       ), //o
    .io_taskPort_tasks_context                (bmbBridge_1_io_taskPort_tasks_context[17:0]           ), //o
    .io_taskPort_tasks_prechargeAll           (bmbBridge_1_io_taskPort_tasks_prechargeAll            ), //o
    .io_taskPort_tasks_refresh                (bmbBridge_1_io_taskPort_tasks_refresh                 ), //o
    .io_taskPort_writeData_valid              (bmbBridge_1_io_taskPort_writeData_valid               ), //o
    .io_taskPort_writeData_ready              (control_1_io_inport_writeData_ready                   ), //i
    .io_taskPort_writeData_payload_data       (bmbBridge_1_io_taskPort_writeData_payload_data[31:0]  ), //o
    .io_taskPort_writeData_payload_mask       (bmbBridge_1_io_taskPort_writeData_payload_mask[3:0]   ), //o
    .io_taskPort_rsp_valid                    (control_1_io_inport_rsp_valid                         ), //i
    .io_taskPort_rsp_ready                    (bmbBridge_1_io_taskPort_rsp_ready                     ), //o
    .io_taskPort_rsp_payload_last             (control_1_io_inport_rsp_payload_last                  ), //i
    .io_taskPort_rsp_payload_fragment_data    (control_1_io_inport_rsp_payload_fragment_data[31:0]   ), //i
    .io_taskPort_rsp_payload_fragment_context (control_1_io_inport_rsp_payload_fragment_context[17:0]), //i
    .clk_out4                                 (clk_out4                                              ), //i
    .rstN                                     (rstN                                                  )  //i
  );
  Control control_1 (
    .io_inport_tasks_read                        (bmbBridge_1_io_taskPort_tasks_read                              ), //i
    .io_inport_tasks_write                       (bmbBridge_1_io_taskPort_tasks_write                             ), //i
    .io_inport_tasks_active                      (bmbBridge_1_io_taskPort_tasks_active                            ), //i
    .io_inport_tasks_precharge                   (bmbBridge_1_io_taskPort_tasks_precharge                         ), //i
    .io_inport_tasks_last                        (bmbBridge_1_io_taskPort_tasks_last                              ), //i
    .io_inport_tasks_address_byte                (bmbBridge_1_io_taskPort_tasks_address_byte                      ), //i
    .io_inport_tasks_address_column              (bmbBridge_1_io_taskPort_tasks_address_column[9:0]               ), //i
    .io_inport_tasks_address_bank                (bmbBridge_1_io_taskPort_tasks_address_bank[2:0]                 ), //i
    .io_inport_tasks_address_row                 (bmbBridge_1_io_taskPort_tasks_address_row[14:0]                 ), //i
    .io_inport_tasks_context                     (bmbBridge_1_io_taskPort_tasks_context[17:0]                     ), //i
    .io_inport_tasks_prechargeAll                (bmbBridge_1_io_taskPort_tasks_prechargeAll                      ), //i
    .io_inport_tasks_refresh                     (bmbBridge_1_io_taskPort_tasks_refresh                           ), //i
    .io_inport_writeData_valid                   (bmbBridge_1_io_taskPort_writeData_valid                         ), //i
    .io_inport_writeData_ready                   (control_1_io_inport_writeData_ready                             ), //o
    .io_inport_writeData_payload_data            (bmbBridge_1_io_taskPort_writeData_payload_data[31:0]            ), //i
    .io_inport_writeData_payload_mask            (bmbBridge_1_io_taskPort_writeData_payload_mask[3:0]             ), //i
    .io_inport_rsp_valid                         (control_1_io_inport_rsp_valid                                   ), //o
    .io_inport_rsp_ready                         (bmbBridge_1_io_taskPort_rsp_ready                               ), //i
    .io_inport_rsp_payload_last                  (control_1_io_inport_rsp_payload_last                            ), //o
    .io_inport_rsp_payload_fragment_data         (control_1_io_inport_rsp_payload_fragment_data[31:0]             ), //o
    .io_inport_rsp_payload_fragment_context      (control_1_io_inport_rsp_payload_fragment_context[17:0]          ), //o
    .io_outport_cke_0                            (control_1_io_outport_cke_0                                      ), //o
    .io_outport_cmd_0_valid                      (control_1_io_outport_cmd_0_valid                                ), //o
    .io_outport_cmd_0_payload_weN                (control_1_io_outport_cmd_0_payload_weN                          ), //o
    .io_outport_cmd_0_payload_casN               (control_1_io_outport_cmd_0_payload_casN                         ), //o
    .io_outport_cmd_0_payload_rasN               (control_1_io_outport_cmd_0_payload_rasN                         ), //o
    .io_outport_cmd_0_payload_csN                (control_1_io_outport_cmd_0_payload_csN                          ), //o
    .io_outport_odt_0_valid                      (control_1_io_outport_odt_0_valid                                ), //o
    .io_outport_address_0_valid                  (control_1_io_outport_address_0_valid                            ), //o
    .io_outport_address_0_payload_bank           (control_1_io_outport_address_0_payload_bank[2:0]                ), //o
    .io_outport_address_0_payload_address        (control_1_io_outport_address_0_payload_address[14:0]            ), //o
    .io_outport_wrData_0_valid                   (control_1_io_outport_wrData_0_valid                             ), //o
    .io_outport_wrData_0_payload_wrData          (control_1_io_outport_wrData_0_payload_wrData[31:0]              ), //o
    .io_outport_wrData_0_payload_wrDataMask      (control_1_io_outport_wrData_0_payload_wrDataMask[3:0]           ), //o
    .io_outport_wrCs_0_valid                     (control_1_io_outport_wrCs_0_valid                               ), //o
    .io_outport_rdEn_0                           (control_1_io_outport_rdEn_0                                     ), //o
    .io_outport_rdData_0_valid                   (alignment_1_io_inIdfiport_rdData_0_valid                        ), //i
    .io_outport_rdData_0_ready                   (control_1_io_outport_rdData_0_ready                             ), //o
    .io_outport_rdData_0_payload_last            (alignment_1_io_inIdfiport_rdData_0_payload_last                 ), //i
    .io_outport_rdData_0_payload_fragment_rdData (alignment_1_io_inIdfiport_rdData_0_payload_fragment_rdData[31:0]), //i
    .io_outport_rdCs_0_valid                     (control_1_io_outport_rdCs_0_valid                               ), //o
    .io_outport_clkDisable_valid                 (control_1_io_outport_clkDisable_valid                           ), //o
    .io_outport_clkDisable_payload               (control_1_io_outport_clkDisable_payload                         ), //o
    .io_outport_lpCtrlReq_valid                  (control_1_io_outport_lpCtrlReq_valid                            ), //o
    .clk_out4                                    (clk_out4                                                        ), //i
    .rstN                                        (rstN                                                            )  //i
  );
  Alignment alignment_1 (
    .io_inIdfiport_cke_0                            (control_1_io_outport_cke_0                                      ), //i
    .io_inIdfiport_cmd_0_valid                      (control_1_io_outport_cmd_0_valid                                ), //i
    .io_inIdfiport_cmd_0_payload_weN                (control_1_io_outport_cmd_0_payload_weN                          ), //i
    .io_inIdfiport_cmd_0_payload_casN               (control_1_io_outport_cmd_0_payload_casN                         ), //i
    .io_inIdfiport_cmd_0_payload_rasN               (control_1_io_outport_cmd_0_payload_rasN                         ), //i
    .io_inIdfiport_cmd_0_payload_csN                (control_1_io_outport_cmd_0_payload_csN                          ), //i
    .io_inIdfiport_odt_0_valid                      (control_1_io_outport_odt_0_valid                                ), //i
    .io_inIdfiport_address_0_valid                  (control_1_io_outport_address_0_valid                            ), //i
    .io_inIdfiport_address_0_payload_bank           (control_1_io_outport_address_0_payload_bank[2:0]                ), //i
    .io_inIdfiport_address_0_payload_address        (control_1_io_outport_address_0_payload_address[14:0]            ), //i
    .io_inIdfiport_wrData_0_valid                   (control_1_io_outport_wrData_0_valid                             ), //i
    .io_inIdfiport_wrData_0_payload_wrData          (control_1_io_outport_wrData_0_payload_wrData[31:0]              ), //i
    .io_inIdfiport_wrData_0_payload_wrDataMask      (control_1_io_outport_wrData_0_payload_wrDataMask[3:0]           ), //i
    .io_inIdfiport_wrCs_0_valid                     (control_1_io_outport_wrCs_0_valid                               ), //i
    .io_inIdfiport_rdEn_0                           (control_1_io_outport_rdEn_0                                     ), //i
    .io_inIdfiport_rdData_0_valid                   (alignment_1_io_inIdfiport_rdData_0_valid                        ), //o
    .io_inIdfiport_rdData_0_ready                   (control_1_io_outport_rdData_0_ready                             ), //i
    .io_inIdfiport_rdData_0_payload_last            (alignment_1_io_inIdfiport_rdData_0_payload_last                 ), //o
    .io_inIdfiport_rdData_0_payload_fragment_rdData (alignment_1_io_inIdfiport_rdData_0_payload_fragment_rdData[31:0]), //o
    .io_inIdfiport_rdCs_0_valid                     (control_1_io_outport_rdCs_0_valid                               ), //i
    .io_inIdfiport_clkDisable_valid                 (control_1_io_outport_clkDisable_valid                           ), //i
    .io_inIdfiport_clkDisable_payload               (control_1_io_outport_clkDisable_payload                         ), //i
    .io_inIdfiport_lpCtrlReq_valid                  (control_1_io_outport_lpCtrlReq_valid                            ), //i
    .io_outDfiport_control_address                  (alignment_1_io_outDfiport_control_address[14:0]                 ), //o
    .io_outDfiport_control_bank                     (alignment_1_io_outDfiport_control_bank[2:0]                     ), //o
    .io_outDfiport_control_rasN                     (alignment_1_io_outDfiport_control_rasN                          ), //o
    .io_outDfiport_control_casN                     (alignment_1_io_outDfiport_control_casN                          ), //o
    .io_outDfiport_control_weN                      (alignment_1_io_outDfiport_control_weN                           ), //o
    .io_outDfiport_control_csN                      (alignment_1_io_outDfiport_control_csN                           ), //o
    .io_outDfiport_control_cke                      (alignment_1_io_outDfiport_control_cke                           ), //o
    .io_outDfiport_write_wr_0_wrdataEn              (alignment_1_io_outDfiport_write_wr_0_wrdataEn                   ), //o
    .io_outDfiport_write_wr_0_wrdata                (alignment_1_io_outDfiport_write_wr_0_wrdata[31:0]               ), //o
    .io_outDfiport_write_wr_0_wrdataMask            (alignment_1_io_outDfiport_write_wr_0_wrdataMask[3:0]            ), //o
    .io_outDfiport_read_rden_0                      (alignment_1_io_outDfiport_read_rden_0                           ), //o
    .io_outDfiport_read_rd_0_rddataValid            (io_dfi_read_rd_0_rddataValid                                    ), //i
    .io_outDfiport_read_rd_0_rddata                 (io_dfi_read_rd_0_rddata[31:0]                                   ), //i
    .clk_out4                                       (clk_out4                                                        ), //i
    .rstN                                           (rstN                                                            )  //i
  );
  assign io_bmb_cmd_ready = bmbBridge_1_io_bmb_cmd_ready;
  assign io_bmb_rsp_valid = bmbBridge_1_io_bmb_rsp_valid;
  assign io_bmb_rsp_payload_last = bmbBridge_1_io_bmb_rsp_payload_last;
  assign io_bmb_rsp_payload_fragment_opcode = bmbBridge_1_io_bmb_rsp_payload_fragment_opcode;
  assign io_bmb_rsp_payload_fragment_data = bmbBridge_1_io_bmb_rsp_payload_fragment_data;
  assign io_bmb_rsp_payload_fragment_context = bmbBridge_1_io_bmb_rsp_payload_fragment_context;
  assign io_dfi_control_address = alignment_1_io_outDfiport_control_address;
  assign io_dfi_control_bank = alignment_1_io_outDfiport_control_bank;
  assign io_dfi_control_rasN = alignment_1_io_outDfiport_control_rasN;
  assign io_dfi_control_casN = alignment_1_io_outDfiport_control_casN;
  assign io_dfi_control_weN = alignment_1_io_outDfiport_control_weN;
  assign io_dfi_control_csN = alignment_1_io_outDfiport_control_csN;
  assign io_dfi_control_cke = alignment_1_io_outDfiport_control_cke;
  assign io_dfi_write_wr_0_wrdataEn = alignment_1_io_outDfiport_write_wr_0_wrdataEn;
  assign io_dfi_write_wr_0_wrdata = alignment_1_io_outDfiport_write_wr_0_wrdata;
  assign io_dfi_write_wr_0_wrdataMask = alignment_1_io_outDfiport_write_wr_0_wrdataMask;
  assign io_dfi_read_rden_0 = alignment_1_io_outDfiport_read_rden_0;

endmodule

//BufferCC_9 replaced by BufferCC_4

//BufferCC_8 replaced by BufferCC_4

module BmbRdCmdGen (
  input  wire          io_start,
  input  wire          io_handShake_valid,
  output reg           io_handShake_ready,
  input  wire [28:0]   io_address,
  output wire [5:0]    io_length,
  output reg           io_bmbCmd_valid,
  input  wire          io_bmbCmd_ready,
  output reg           io_bmbCmd_payload_last,
  output reg  [0:0]    io_bmbCmd_payload_fragment_opcode,
  output reg  [28:0]   io_bmbCmd_payload_fragment_address,
  output reg  [9:0]    io_bmbCmd_payload_fragment_length,
  output wire [31:0]   io_bmbCmd_payload_fragment_data,
  output wire [3:0]    io_bmbCmd_payload_fragment_mask,
  output wire [3:0]    io_bmbCmd_payload_fragment_context,
  output reg           io_end,
  input  wire          clk_out4,
  input  wire          rstN
);
  localparam StateMachineEnum_ = 3'd0;
  localparam StateMachineEnum__1 = 3'd1;
  localparam StateMachineEnum__2 = 3'd2;
  localparam StateMachineEnum__3 = 3'd3;
  localparam StateMachineEnum__4 = 3'd4;

  wire       [23:0]   _zz_counter_valueNext;
  wire       [0:0]    _zz_counter_valueNext_1;
  wire       [28:0]   _zz_addressBridge;
  wire       [5:0]    _zz_addressBridge_1;
  wire       [22:0]   _zz_when_BmbRdCmdGen_l40;
  wire       [22:0]   _zz_when_BmbRdCmdGen_l40_1;
  wire       [22:0]   _zz_when_BmbRdCmdGen_l40_1_1;
  wire       [22:0]   _zz_when_BmbRdCmdGen_l40_1_2;
  wire       [29:0]   _zz_io_bmbCmd_payload_fragment_address;
  wire       [22:0]   _zz_when_BmbRdCmdGen_l57;
  wire       [22:0]   _zz_when_BmbRdCmdGen_l57_1;
  wire       [5:0]    _zz_io_bmbCmd_payload_fragment_length;
  wire       [29:0]   _zz_io_bmbCmd_payload_fragment_address_1;
  wire       [22:0]   _zz_when_BmbRdCmdGen_l57_1_1;
  wire       [22:0]   _zz_when_BmbRdCmdGen_l57_1_2;
  wire       [5:0]    _zz_io_bmbCmd_payload_fragment_length_1;
  reg                 start;
  wire                pipeline_valid;
  reg                 pipeline_ready;
  (* async_reg = "true" *) reg        [5:0]    lengthReg;
  reg                 counter_willIncrement;
  reg                 counter_willClear;
  reg        [23:0]   counter_valueNext;
  reg        [23:0]   counter_value;
  wire                counter_willOverflowIfInc;
  wire                counter_willOverflow;
  wire                io_handShake_m2sPipe_valid;
  wire                io_handShake_m2sPipe_ready;
  reg                 io_handShake_rValid;
  wire                when_Stream_l393;
  wire       [28:0]   addressBridge;
  reg                 _zz_1;
  reg        [2:0]    _zz_when_StateMachine_l237;
  reg        [2:0]    _zz_when_StateMachine_l237_1;
  wire                when_BmbRdCmdGen_l40;
  wire                when_BmbRdCmdGen_l40_1;
  wire                when_StateMachine_l237;
  wire                when_BmbRdCmdGen_l49;
  wire                when_BmbRdCmdGen_l57;
  wire                when_StateMachine_l237_1;
  wire                when_BmbRdCmdGen_l49_1;
  wire                when_BmbRdCmdGen_l57_1;
  `ifndef SYNTHESIS
  reg [15:0] _zz_when_StateMachine_l237_string;
  reg [15:0] _zz_when_StateMachine_l237_1_string;
  `endif


  assign _zz_counter_valueNext_1 = counter_willIncrement;
  assign _zz_counter_valueNext = {23'd0, _zz_counter_valueNext_1};
  assign _zz_addressBridge_1 = 6'h3f;
  assign _zz_addressBridge = {23'd0, _zz_addressBridge_1};
  assign _zz_when_BmbRdCmdGen_l40 = counter_value[22:0];
  assign _zz_when_BmbRdCmdGen_l40_1 = (addressBridge >>> 3'd6);
  assign _zz_when_BmbRdCmdGen_l40_1_1 = counter_value[22:0];
  assign _zz_when_BmbRdCmdGen_l40_1_2 = (addressBridge >>> 3'd6);
  assign _zz_io_bmbCmd_payload_fragment_address = ({6'd0,counter_value} <<< 3'd6);
  assign _zz_when_BmbRdCmdGen_l57 = counter_valueNext[22:0];
  assign _zz_when_BmbRdCmdGen_l57_1 = (addressBridge >>> 3'd6);
  assign _zz_io_bmbCmd_payload_fragment_length = (io_address[5 : 0] - 6'h01);
  assign _zz_io_bmbCmd_payload_fragment_address_1 = ({6'd0,counter_value} <<< 3'd6);
  assign _zz_when_BmbRdCmdGen_l57_1_1 = counter_valueNext[22:0];
  assign _zz_when_BmbRdCmdGen_l57_1_2 = (addressBridge >>> 3'd6);
  assign _zz_io_bmbCmd_payload_fragment_length_1 = (io_address[5 : 0] - 6'h01);
  `ifndef SYNTHESIS
  always @(*) begin
    case(_zz_when_StateMachine_l237)
      StateMachineEnum_ : _zz_when_StateMachine_l237_string = "  ";
      StateMachineEnum__1 : _zz_when_StateMachine_l237_string = "_1";
      StateMachineEnum__2 : _zz_when_StateMachine_l237_string = "_2";
      StateMachineEnum__3 : _zz_when_StateMachine_l237_string = "_3";
      StateMachineEnum__4 : _zz_when_StateMachine_l237_string = "_4";
      default : _zz_when_StateMachine_l237_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_when_StateMachine_l237_1)
      StateMachineEnum_ : _zz_when_StateMachine_l237_1_string = "  ";
      StateMachineEnum__1 : _zz_when_StateMachine_l237_1_string = "_1";
      StateMachineEnum__2 : _zz_when_StateMachine_l237_1_string = "_2";
      StateMachineEnum__3 : _zz_when_StateMachine_l237_1_string = "_3";
      StateMachineEnum__4 : _zz_when_StateMachine_l237_1_string = "_4";
      default : _zz_when_StateMachine_l237_1_string = "??";
    endcase
  end
  `endif

  always @(*) begin
    io_bmbCmd_valid = 1'b0;
    if(start) begin
      if(when_StateMachine_l237) begin
        if(when_BmbRdCmdGen_l49) begin
          io_bmbCmd_valid = 1'b1;
        end
      end
      if(when_StateMachine_l237_1) begin
        if(when_BmbRdCmdGen_l49_1) begin
          io_bmbCmd_valid = 1'b1;
        end
      end
    end
  end

  always @(*) begin
    io_bmbCmd_payload_last = 1'b0;
    if(start) begin
      if(when_StateMachine_l237) begin
        if(when_BmbRdCmdGen_l49) begin
          io_bmbCmd_payload_last = 1'b1;
        end
      end
      if(when_StateMachine_l237_1) begin
        if(when_BmbRdCmdGen_l49_1) begin
          io_bmbCmd_payload_last = 1'b1;
        end
      end
    end
  end

  always @(*) begin
    io_bmbCmd_payload_fragment_opcode = 1'b1;
    if(start) begin
      if(when_StateMachine_l237) begin
        if(when_BmbRdCmdGen_l49) begin
          io_bmbCmd_payload_fragment_opcode = 1'b0;
        end
      end
      if(when_StateMachine_l237_1) begin
        if(when_BmbRdCmdGen_l49_1) begin
          io_bmbCmd_payload_fragment_opcode = 1'b0;
        end
      end
    end
  end

  always @(*) begin
    io_bmbCmd_payload_fragment_address = 29'h0;
    if(start) begin
      if(when_StateMachine_l237) begin
        if(when_BmbRdCmdGen_l49) begin
          io_bmbCmd_payload_fragment_address = _zz_io_bmbCmd_payload_fragment_address[28:0];
        end
      end
      if(when_StateMachine_l237_1) begin
        if(when_BmbRdCmdGen_l49_1) begin
          io_bmbCmd_payload_fragment_address = _zz_io_bmbCmd_payload_fragment_address_1[28:0];
        end
      end
    end
  end

  always @(*) begin
    io_bmbCmd_payload_fragment_length = 10'h0;
    if(start) begin
      if(when_StateMachine_l237) begin
        if(when_BmbRdCmdGen_l49) begin
          if(when_BmbRdCmdGen_l57) begin
            io_bmbCmd_payload_fragment_length = {4'd0, _zz_io_bmbCmd_payload_fragment_length};
          end else begin
            io_bmbCmd_payload_fragment_length = 10'h03f;
          end
        end
      end
      if(when_StateMachine_l237_1) begin
        if(when_BmbRdCmdGen_l49_1) begin
          if(when_BmbRdCmdGen_l57_1) begin
            io_bmbCmd_payload_fragment_length = {4'd0, _zz_io_bmbCmd_payload_fragment_length_1};
          end else begin
            io_bmbCmd_payload_fragment_length = 10'h03f;
          end
        end
      end
    end
  end

  assign io_bmbCmd_payload_fragment_data = 32'h0;
  assign io_bmbCmd_payload_fragment_mask = 4'b0000;
  assign io_bmbCmd_payload_fragment_context = 4'b0000;
  assign io_length = lengthReg;
  always @(*) begin
    counter_willIncrement = 1'b0;
    if(start) begin
      if(when_StateMachine_l237) begin
        if(when_BmbRdCmdGen_l49) begin
          counter_willIncrement = 1'b1;
        end
      end
      if(when_StateMachine_l237_1) begin
        if(when_BmbRdCmdGen_l49_1) begin
          counter_willIncrement = 1'b1;
        end
      end
    end
  end

  always @(*) begin
    counter_willClear = 1'b0;
    if(start) begin
      case(_zz_when_StateMachine_l237)
        StateMachineEnum__1 : begin
        end
        StateMachineEnum__2 : begin
        end
        StateMachineEnum__3 : begin
        end
        StateMachineEnum__4 : begin
          counter_willClear = 1'b1;
        end
        default : begin
        end
      endcase
    end
  end

  assign counter_willOverflowIfInc = (counter_value == 24'h800000);
  assign counter_willOverflow = (counter_willOverflowIfInc && counter_willIncrement);
  always @(*) begin
    if(counter_willOverflow) begin
      counter_valueNext = 24'h0;
    end else begin
      counter_valueNext = (counter_value + _zz_counter_valueNext);
    end
    if(counter_willClear) begin
      counter_valueNext = 24'h0;
    end
  end

  always @(*) begin
    io_handShake_ready = io_handShake_m2sPipe_ready;
    if(when_Stream_l393) begin
      io_handShake_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! io_handShake_m2sPipe_valid);
  assign io_handShake_m2sPipe_valid = io_handShake_rValid;
  assign pipeline_valid = io_handShake_m2sPipe_valid;
  assign io_handShake_m2sPipe_ready = pipeline_ready;
  always @(*) begin
    pipeline_ready = 1'b0;
    if(start) begin
      if(when_StateMachine_l237) begin
        if(when_BmbRdCmdGen_l49) begin
          pipeline_ready = 1'b1;
        end
      end
      if(when_StateMachine_l237_1) begin
        if(when_BmbRdCmdGen_l49_1) begin
          pipeline_ready = 1'b1;
        end
      end
    end
  end

  assign addressBridge = (io_address + _zz_addressBridge);
  always @(*) begin
    io_end = 1'b0;
    if(start) begin
      case(_zz_when_StateMachine_l237)
        StateMachineEnum__1 : begin
        end
        StateMachineEnum__2 : begin
        end
        StateMachineEnum__3 : begin
        end
        StateMachineEnum__4 : begin
          io_end = 1'b1;
        end
        default : begin
        end
      endcase
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    case(_zz_when_StateMachine_l237)
      StateMachineEnum__1 : begin
      end
      StateMachineEnum__2 : begin
      end
      StateMachineEnum__3 : begin
      end
      StateMachineEnum__4 : begin
      end
      default : begin
        _zz_1 = 1'b1;
      end
    endcase
  end

  always @(*) begin
    _zz_when_StateMachine_l237_1 = _zz_when_StateMachine_l237;
    case(_zz_when_StateMachine_l237)
      StateMachineEnum__1 : begin
        if(start) begin
          _zz_when_StateMachine_l237_1 = StateMachineEnum__2;
        end
      end
      StateMachineEnum__2 : begin
        if(when_BmbRdCmdGen_l40) begin
          _zz_when_StateMachine_l237_1 = StateMachineEnum__4;
        end else begin
          if(io_handShake_valid) begin
            _zz_when_StateMachine_l237_1 = StateMachineEnum__3;
          end
        end
      end
      StateMachineEnum__3 : begin
        if(when_BmbRdCmdGen_l40_1) begin
          _zz_when_StateMachine_l237_1 = StateMachineEnum__4;
        end else begin
          if(io_handShake_valid) begin
            _zz_when_StateMachine_l237_1 = StateMachineEnum__2;
          end
        end
      end
      StateMachineEnum__4 : begin
        _zz_when_StateMachine_l237_1 = StateMachineEnum__1;
      end
      default : begin
      end
    endcase
    if(_zz_1) begin
      _zz_when_StateMachine_l237_1 = StateMachineEnum__1;
    end
    if(1'b0) begin
      _zz_when_StateMachine_l237_1 = StateMachineEnum_;
    end
  end

  assign when_BmbRdCmdGen_l40 = (_zz_when_BmbRdCmdGen_l40 == _zz_when_BmbRdCmdGen_l40_1);
  assign when_BmbRdCmdGen_l40_1 = (_zz_when_BmbRdCmdGen_l40_1_1 == _zz_when_BmbRdCmdGen_l40_1_2);
  assign when_StateMachine_l237 = ((_zz_when_StateMachine_l237 == StateMachineEnum__2) && (! (_zz_when_StateMachine_l237_1 == StateMachineEnum__2)));
  assign when_BmbRdCmdGen_l49 = (! ((_zz_when_StateMachine_l237_1 == StateMachineEnum__4) && (_zz_when_StateMachine_l237 != StateMachineEnum__4)));
  assign when_BmbRdCmdGen_l57 = (_zz_when_BmbRdCmdGen_l57 == _zz_when_BmbRdCmdGen_l57_1);
  assign when_StateMachine_l237_1 = ((_zz_when_StateMachine_l237 == StateMachineEnum__3) && (! (_zz_when_StateMachine_l237_1 == StateMachineEnum__3)));
  assign when_BmbRdCmdGen_l49_1 = (! ((_zz_when_StateMachine_l237_1 == StateMachineEnum__4) && (_zz_when_StateMachine_l237 != StateMachineEnum__4)));
  assign when_BmbRdCmdGen_l57_1 = (_zz_when_BmbRdCmdGen_l57_1_1 == _zz_when_BmbRdCmdGen_l57_1_2);
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      start <= 1'b0;
      lengthReg <= 6'h0;
      counter_value <= 24'h0;
      io_handShake_rValid <= 1'b0;
    end else begin
      if(io_end) begin
        start <= 1'b0;
      end
      if(io_start) begin
        start <= 1'b1;
      end
      counter_value <= counter_valueNext;
      if(io_handShake_ready) begin
        io_handShake_rValid <= io_handShake_valid;
      end
      if(start) begin
        if(when_StateMachine_l237) begin
          if(when_BmbRdCmdGen_l49) begin
            lengthReg <= io_bmbCmd_payload_fragment_length[5:0];
          end
        end
        if(when_StateMachine_l237_1) begin
          if(when_BmbRdCmdGen_l49_1) begin
            lengthReg <= io_bmbCmd_payload_fragment_length[5:0];
          end
        end
      end
    end
  end

  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      _zz_when_StateMachine_l237 <= StateMachineEnum_;
    end else begin
      _zz_when_StateMachine_l237 <= _zz_when_StateMachine_l237_1;
    end
  end


endmodule

module StreamCCByToggle (
  input  wire          io_input_valid,
  output wire          io_input_ready,
  output wire          io_output_valid,
  input  wire          io_output_ready,
  input  wire          clk_out1,
  input  wire          rstN,
  input  wire          clk_out4,
  input  wire          adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1
);

  wire                outHitSignal_buffercc_io_dataOut;
  wire                pushArea_target_buffercc_io_dataOut;
  wire                outHitSignal;
  wire                pushArea_hit;
  wire                pushArea_accept;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 pushArea_target;
  wire                io_input_fire;
  wire                popArea_stream_valid;
  reg                 popArea_stream_ready;
  wire                popArea_target;
  wire                popArea_stream_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 popArea_hit;
  wire                popArea_stream_m2sPipe_valid;
  wire                popArea_stream_m2sPipe_ready;
  reg                 popArea_stream_rValid;
  wire                when_Stream_l393;

  (* keep_hierarchy = "TRUE" *) BufferCC_6 outHitSignal_buffercc (
    .io_dataIn  (outHitSignal                    ), //i
    .io_dataOut (outHitSignal_buffercc_io_dataOut), //o
    .clk_out1   (clk_out1                        ), //i
    .rstN       (rstN                            )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_7 pushArea_target_buffercc (
    .io_dataIn                                                                                   (pushArea_target                                                                            ), //i
    .io_dataOut                                                                                  (pushArea_target_buffercc_io_dataOut                                                        ), //o
    .clk_out4                                                                                    (clk_out4                                                                                   ), //i
    .adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1 (adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1)  //i
  );
  assign pushArea_hit = outHitSignal_buffercc_io_dataOut;
  assign io_input_fire = (io_input_valid && io_input_ready);
  assign pushArea_accept = io_input_fire;
  assign io_input_ready = (pushArea_hit == pushArea_target);
  assign popArea_target = pushArea_target_buffercc_io_dataOut;
  assign popArea_stream_fire = (popArea_stream_valid && popArea_stream_ready);
  assign outHitSignal = popArea_hit;
  assign popArea_stream_valid = (popArea_target != popArea_hit);
  always @(*) begin
    popArea_stream_ready = popArea_stream_m2sPipe_ready;
    if(when_Stream_l393) begin
      popArea_stream_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! popArea_stream_m2sPipe_valid);
  assign popArea_stream_m2sPipe_valid = popArea_stream_rValid;
  assign io_output_valid = popArea_stream_m2sPipe_valid;
  assign popArea_stream_m2sPipe_ready = io_output_ready;
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      pushArea_target <= 1'b0;
    end else begin
      if(pushArea_accept) begin
        pushArea_target <= (! pushArea_target);
      end
    end
  end

  always @(posedge clk_out4 or negedge adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1) begin
    if(!adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1) begin
      popArea_hit <= 1'b0;
      popArea_stream_rValid <= 1'b0;
    end else begin
      if(popArea_stream_fire) begin
        popArea_hit <= popArea_target;
      end
      if(popArea_stream_ready) begin
        popArea_stream_rValid <= popArea_stream_valid;
      end
    end
  end


endmodule

module BmbCcFifo (
  input  wire          io_input_cmd_valid,
  output wire          io_input_cmd_ready,
  input  wire          io_input_cmd_payload_last,
  input  wire [0:0]    io_input_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_input_cmd_payload_fragment_address,
  input  wire [9:0]    io_input_cmd_payload_fragment_length,
  input  wire [31:0]   io_input_cmd_payload_fragment_data,
  input  wire [3:0]    io_input_cmd_payload_fragment_mask,
  input  wire [3:0]    io_input_cmd_payload_fragment_context,
  output wire          io_input_rsp_valid,
  input  wire          io_input_rsp_ready,
  output wire          io_input_rsp_payload_last,
  output wire [0:0]    io_input_rsp_payload_fragment_opcode,
  output wire [31:0]   io_input_rsp_payload_fragment_data,
  output wire [3:0]    io_input_rsp_payload_fragment_context,
  output wire          io_output_cmd_valid,
  input  wire          io_output_cmd_ready,
  output wire          io_output_cmd_payload_last,
  output wire [0:0]    io_output_cmd_payload_fragment_opcode,
  output wire [28:0]   io_output_cmd_payload_fragment_address,
  output wire [9:0]    io_output_cmd_payload_fragment_length,
  output wire [31:0]   io_output_cmd_payload_fragment_data,
  output wire [3:0]    io_output_cmd_payload_fragment_mask,
  output wire [3:0]    io_output_cmd_payload_fragment_context,
  input  wire          io_output_rsp_valid,
  output wire          io_output_rsp_ready,
  input  wire          io_output_rsp_payload_last,
  input  wire [0:0]    io_output_rsp_payload_fragment_opcode,
  input  wire [31:0]   io_output_rsp_payload_fragment_data,
  input  wire [3:0]    io_output_rsp_payload_fragment_context,
  input  wire          clk_out1,
  input  wire          rstN,
  input  wire          clk_out4,
  output wire          adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1
);

  wire                io_input_cmd_queue_io_push_ready;
  wire                io_input_cmd_queue_io_pop_valid;
  wire                io_input_cmd_queue_io_pop_payload_last;
  wire       [0:0]    io_input_cmd_queue_io_pop_payload_fragment_opcode;
  wire       [28:0]   io_input_cmd_queue_io_pop_payload_fragment_address;
  wire       [9:0]    io_input_cmd_queue_io_pop_payload_fragment_length;
  wire       [31:0]   io_input_cmd_queue_io_pop_payload_fragment_data;
  wire       [3:0]    io_input_cmd_queue_io_pop_payload_fragment_mask;
  wire       [3:0]    io_input_cmd_queue_io_pop_payload_fragment_context;
  wire       [10:0]   io_input_cmd_queue_io_pushOccupancy;
  wire       [10:0]   io_input_cmd_queue_io_popOccupancy;
  wire                io_input_cmd_queue_adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1;
  wire                io_output_rsp_queue_io_push_ready;
  wire                io_output_rsp_queue_io_pop_valid;
  wire                io_output_rsp_queue_io_pop_payload_last;
  wire       [0:0]    io_output_rsp_queue_io_pop_payload_fragment_opcode;
  wire       [31:0]   io_output_rsp_queue_io_pop_payload_fragment_data;
  wire       [3:0]    io_output_rsp_queue_io_pop_payload_fragment_context;
  wire       [6:0]    io_output_rsp_queue_io_pushOccupancy;
  wire       [6:0]    io_output_rsp_queue_io_popOccupancy;

  StreamFifoCC io_input_cmd_queue (
    .io_push_valid                                                                               (io_input_cmd_valid                                                                                            ), //i
    .io_push_ready                                                                               (io_input_cmd_queue_io_push_ready                                                                              ), //o
    .io_push_payload_last                                                                        (io_input_cmd_payload_last                                                                                     ), //i
    .io_push_payload_fragment_opcode                                                             (io_input_cmd_payload_fragment_opcode                                                                          ), //i
    .io_push_payload_fragment_address                                                            (io_input_cmd_payload_fragment_address[28:0]                                                                   ), //i
    .io_push_payload_fragment_length                                                             (io_input_cmd_payload_fragment_length[9:0]                                                                     ), //i
    .io_push_payload_fragment_data                                                               (io_input_cmd_payload_fragment_data[31:0]                                                                      ), //i
    .io_push_payload_fragment_mask                                                               (io_input_cmd_payload_fragment_mask[3:0]                                                                       ), //i
    .io_push_payload_fragment_context                                                            (io_input_cmd_payload_fragment_context[3:0]                                                                    ), //i
    .io_pop_valid                                                                                (io_input_cmd_queue_io_pop_valid                                                                               ), //o
    .io_pop_ready                                                                                (io_output_cmd_ready                                                                                           ), //i
    .io_pop_payload_last                                                                         (io_input_cmd_queue_io_pop_payload_last                                                                        ), //o
    .io_pop_payload_fragment_opcode                                                              (io_input_cmd_queue_io_pop_payload_fragment_opcode                                                             ), //o
    .io_pop_payload_fragment_address                                                             (io_input_cmd_queue_io_pop_payload_fragment_address[28:0]                                                      ), //o
    .io_pop_payload_fragment_length                                                              (io_input_cmd_queue_io_pop_payload_fragment_length[9:0]                                                        ), //o
    .io_pop_payload_fragment_data                                                                (io_input_cmd_queue_io_pop_payload_fragment_data[31:0]                                                         ), //o
    .io_pop_payload_fragment_mask                                                                (io_input_cmd_queue_io_pop_payload_fragment_mask[3:0]                                                          ), //o
    .io_pop_payload_fragment_context                                                             (io_input_cmd_queue_io_pop_payload_fragment_context[3:0]                                                       ), //o
    .io_pushOccupancy                                                                            (io_input_cmd_queue_io_pushOccupancy[10:0]                                                                     ), //o
    .io_popOccupancy                                                                             (io_input_cmd_queue_io_popOccupancy[10:0]                                                                      ), //o
    .clk_out1                                                                                    (clk_out1                                                                                                      ), //i
    .rstN                                                                                        (rstN                                                                                                          ), //i
    .clk_out4                                                                                    (clk_out4                                                                                                      ), //i
    .adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1 (io_input_cmd_queue_adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1)  //o
  );
  StreamFifoCC_1 io_output_rsp_queue (
    .io_push_valid                    (io_output_rsp_valid                                     ), //i
    .io_push_ready                    (io_output_rsp_queue_io_push_ready                       ), //o
    .io_push_payload_last             (io_output_rsp_payload_last                              ), //i
    .io_push_payload_fragment_opcode  (io_output_rsp_payload_fragment_opcode                   ), //i
    .io_push_payload_fragment_data    (io_output_rsp_payload_fragment_data[31:0]               ), //i
    .io_push_payload_fragment_context (io_output_rsp_payload_fragment_context[3:0]             ), //i
    .io_pop_valid                     (io_output_rsp_queue_io_pop_valid                        ), //o
    .io_pop_ready                     (io_input_rsp_ready                                      ), //i
    .io_pop_payload_last              (io_output_rsp_queue_io_pop_payload_last                 ), //o
    .io_pop_payload_fragment_opcode   (io_output_rsp_queue_io_pop_payload_fragment_opcode      ), //o
    .io_pop_payload_fragment_data     (io_output_rsp_queue_io_pop_payload_fragment_data[31:0]  ), //o
    .io_pop_payload_fragment_context  (io_output_rsp_queue_io_pop_payload_fragment_context[3:0]), //o
    .io_pushOccupancy                 (io_output_rsp_queue_io_pushOccupancy[6:0]               ), //o
    .io_popOccupancy                  (io_output_rsp_queue_io_popOccupancy[6:0]                ), //o
    .clk_out4                         (clk_out4                                                ), //i
    .rstN                             (rstN                                                    ), //i
    .clk_out1                         (clk_out1                                                )  //i
  );
  assign io_input_cmd_ready = io_input_cmd_queue_io_push_ready;
  assign io_output_cmd_valid = io_input_cmd_queue_io_pop_valid;
  assign io_output_cmd_payload_last = io_input_cmd_queue_io_pop_payload_last;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_queue_io_pop_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_queue_io_pop_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_queue_io_pop_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = io_input_cmd_queue_io_pop_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_queue_io_pop_payload_fragment_mask;
  assign io_output_cmd_payload_fragment_context = io_input_cmd_queue_io_pop_payload_fragment_context;
  assign io_output_rsp_ready = io_output_rsp_queue_io_push_ready;
  assign io_input_rsp_valid = io_output_rsp_queue_io_pop_valid;
  assign io_input_rsp_payload_last = io_output_rsp_queue_io_pop_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_queue_io_pop_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_queue_io_pop_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = io_output_rsp_queue_io_pop_payload_fragment_context;
  assign adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1 = io_input_cmd_queue_adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1;

endmodule

module BmbUpSizerBridge (
  input  wire          io_input_cmd_valid,
  output wire          io_input_cmd_ready,
  input  wire          io_input_cmd_payload_last,
  input  wire [0:0]    io_input_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_input_cmd_payload_fragment_address,
  input  wire [9:0]    io_input_cmd_payload_fragment_length,
  input  wire [7:0]    io_input_cmd_payload_fragment_data,
  input  wire [0:0]    io_input_cmd_payload_fragment_mask,
  output wire          io_input_rsp_valid,
  input  wire          io_input_rsp_ready,
  output reg           io_input_rsp_payload_last,
  output wire [0:0]    io_input_rsp_payload_fragment_opcode,
  output wire [7:0]    io_input_rsp_payload_fragment_data,
  output wire          io_output_cmd_valid,
  input  wire          io_output_cmd_ready,
  output wire          io_output_cmd_payload_last,
  output wire [0:0]    io_output_cmd_payload_fragment_opcode,
  output wire [28:0]   io_output_cmd_payload_fragment_address,
  output wire [9:0]    io_output_cmd_payload_fragment_length,
  output reg  [31:0]   io_output_cmd_payload_fragment_data,
  output reg  [3:0]    io_output_cmd_payload_fragment_mask,
  output wire [3:0]    io_output_cmd_payload_fragment_context,
  input  wire          io_output_rsp_valid,
  output wire          io_output_rsp_ready,
  input  wire          io_output_rsp_payload_last,
  input  wire [0:0]    io_output_rsp_payload_fragment_opcode,
  input  wire [31:0]   io_output_rsp_payload_fragment_data,
  input  wire [3:0]    io_output_rsp_payload_fragment_context,
  input  wire          clk_out1,
  input  wire          rstN
);

  wire       [10:0]   _zz_cmdArea_context_selEnd;
  wire       [10:0]   _zz_cmdArea_context_selEnd_1;
  wire       [1:0]    _zz_cmdArea_context_selEnd_2;
  wire       [10:0]   _zz_cmdArea_context_selEnd_3;
  reg        [7:0]    _zz_io_input_rsp_payload_fragment_data;
  wire       [1:0]    cmdArea_selStart;
  wire       [1:0]    cmdArea_context_selStart;
  reg        [1:0]    cmdArea_context_selEnd;
  wire                when_BmbUpSizerBridge_l53;
  reg        [7:0]    cmdArea_writeLogic_dataRegs_0;
  reg        [7:0]    cmdArea_writeLogic_dataRegs_1;
  reg        [7:0]    cmdArea_writeLogic_dataRegs_2;
  reg        [0:0]    cmdArea_writeLogic_maskRegs_0;
  reg        [0:0]    cmdArea_writeLogic_maskRegs_1;
  reg        [0:0]    cmdArea_writeLogic_maskRegs_2;
  reg        [1:0]    cmdArea_writeLogic_selReg;
  wire                io_input_cmd_fire;
  reg                 io_input_cmd_payload_first;
  wire       [1:0]    cmdArea_writeLogic_sel;
  wire       [7:0]    cmdArea_writeLogic_outputData_0;
  wire       [7:0]    cmdArea_writeLogic_outputData_1;
  wire       [7:0]    cmdArea_writeLogic_outputData_2;
  wire       [7:0]    cmdArea_writeLogic_outputData_3;
  wire       [0:0]    cmdArea_writeLogic_outputMask_0;
  wire       [0:0]    cmdArea_writeLogic_outputMask_1;
  wire       [0:0]    cmdArea_writeLogic_outputMask_2;
  wire       [0:0]    cmdArea_writeLogic_outputMask_3;
  wire                when_BmbUpSizerBridge_l85;
  wire                when_BmbUpSizerBridge_l95;
  wire                io_output_cmd_fire;
  wire                when_BmbUpSizerBridge_l85_1;
  wire                when_BmbUpSizerBridge_l95_1;
  wire                when_BmbUpSizerBridge_l85_2;
  wire                when_BmbUpSizerBridge_l95_2;
  wire                io_output_cmd_isStall;
  wire       [1:0]    rspArea_context_selStart;
  wire       [1:0]    rspArea_context_selEnd;
  wire       [3:0]    _zz_rspArea_context_selStart;
  reg        [1:0]    rspArea_readLogic_selReg;
  wire                io_input_rsp_fire;
  reg                 io_input_rsp_payload_first;
  wire       [1:0]    rspArea_readLogic_sel;
  wire                when_BmbUpSizerBridge_l133;

  assign _zz_cmdArea_context_selEnd = (_zz_cmdArea_context_selEnd_1 + _zz_cmdArea_context_selEnd_3[10 : 0]);
  assign _zz_cmdArea_context_selEnd_2 = io_input_cmd_payload_fragment_address[1 : 0];
  assign _zz_cmdArea_context_selEnd_1 = {9'd0, _zz_cmdArea_context_selEnd_2};
  assign _zz_cmdArea_context_selEnd_3 = ({1'b0,io_input_cmd_payload_fragment_length} + 11'h0);
  always @(*) begin
    case(rspArea_readLogic_sel)
      2'b00 : _zz_io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data[7 : 0];
      2'b01 : _zz_io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data[15 : 8];
      2'b10 : _zz_io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data[23 : 16];
      default : _zz_io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data[31 : 24];
    endcase
  end

  assign cmdArea_selStart = io_input_cmd_payload_fragment_address[1 : 0];
  assign cmdArea_context_selStart = cmdArea_selStart;
  always @(*) begin
    cmdArea_context_selEnd = _zz_cmdArea_context_selEnd[1:0];
    if(when_BmbUpSizerBridge_l53) begin
      cmdArea_context_selEnd = io_input_cmd_payload_fragment_address[1 : 0];
    end
  end

  assign when_BmbUpSizerBridge_l53 = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign io_output_cmd_payload_last = io_input_cmd_payload_last;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_context = {cmdArea_context_selEnd,cmdArea_context_selStart};
  assign io_input_cmd_fire = (io_input_cmd_valid && io_input_cmd_ready);
  assign cmdArea_writeLogic_sel = (io_input_cmd_payload_first ? cmdArea_selStart : cmdArea_writeLogic_selReg);
  assign cmdArea_writeLogic_outputData_0 = io_output_cmd_payload_fragment_data[7 : 0];
  assign cmdArea_writeLogic_outputData_1 = io_output_cmd_payload_fragment_data[15 : 8];
  assign cmdArea_writeLogic_outputData_2 = io_output_cmd_payload_fragment_data[23 : 16];
  assign cmdArea_writeLogic_outputData_3 = io_output_cmd_payload_fragment_data[31 : 24];
  assign cmdArea_writeLogic_outputMask_0 = io_output_cmd_payload_fragment_mask[0 : 0];
  assign cmdArea_writeLogic_outputMask_1 = io_output_cmd_payload_fragment_mask[1 : 1];
  assign cmdArea_writeLogic_outputMask_2 = io_output_cmd_payload_fragment_mask[2 : 2];
  assign cmdArea_writeLogic_outputMask_3 = io_output_cmd_payload_fragment_mask[3 : 3];
  always @(*) begin
    io_output_cmd_payload_fragment_data[7 : 0] = io_input_cmd_payload_fragment_data;
    if(when_BmbUpSizerBridge_l85) begin
      io_output_cmd_payload_fragment_data[7 : 0] = cmdArea_writeLogic_dataRegs_0;
    end
    io_output_cmd_payload_fragment_data[15 : 8] = io_input_cmd_payload_fragment_data;
    if(when_BmbUpSizerBridge_l85_1) begin
      io_output_cmd_payload_fragment_data[15 : 8] = cmdArea_writeLogic_dataRegs_1;
    end
    io_output_cmd_payload_fragment_data[23 : 16] = io_input_cmd_payload_fragment_data;
    if(when_BmbUpSizerBridge_l85_2) begin
      io_output_cmd_payload_fragment_data[23 : 16] = cmdArea_writeLogic_dataRegs_2;
    end
    io_output_cmd_payload_fragment_data[31 : 24] = io_input_cmd_payload_fragment_data;
  end

  assign when_BmbUpSizerBridge_l85 = ((! io_input_cmd_payload_first) && (cmdArea_writeLogic_selReg != 2'b00));
  always @(*) begin
    io_output_cmd_payload_fragment_mask[0 : 0] = ((cmdArea_writeLogic_sel == 2'b00) ? io_input_cmd_payload_fragment_mask : cmdArea_writeLogic_maskRegs_0);
    io_output_cmd_payload_fragment_mask[1 : 1] = ((cmdArea_writeLogic_sel == 2'b01) ? io_input_cmd_payload_fragment_mask : cmdArea_writeLogic_maskRegs_1);
    io_output_cmd_payload_fragment_mask[2 : 2] = ((cmdArea_writeLogic_sel == 2'b10) ? io_input_cmd_payload_fragment_mask : cmdArea_writeLogic_maskRegs_2);
    io_output_cmd_payload_fragment_mask[3 : 3] = ((cmdArea_writeLogic_sel == 2'b11) ? io_input_cmd_payload_fragment_mask : 1'b0);
  end

  assign when_BmbUpSizerBridge_l95 = (io_input_cmd_valid && (cmdArea_writeLogic_sel == 2'b00));
  assign io_output_cmd_fire = (io_output_cmd_valid && io_output_cmd_ready);
  assign when_BmbUpSizerBridge_l85_1 = ((! io_input_cmd_payload_first) && (cmdArea_writeLogic_selReg != 2'b01));
  assign when_BmbUpSizerBridge_l95_1 = (io_input_cmd_valid && (cmdArea_writeLogic_sel == 2'b01));
  assign when_BmbUpSizerBridge_l85_2 = ((! io_input_cmd_payload_first) && (cmdArea_writeLogic_selReg != 2'b10));
  assign when_BmbUpSizerBridge_l95_2 = (io_input_cmd_valid && (cmdArea_writeLogic_sel == 2'b10));
  assign io_output_cmd_valid = (io_input_cmd_valid && ((cmdArea_writeLogic_sel == 2'b11) || io_input_cmd_payload_last));
  assign io_output_cmd_isStall = (io_output_cmd_valid && (! io_output_cmd_ready));
  assign io_input_cmd_ready = (! io_output_cmd_isStall);
  assign _zz_rspArea_context_selStart = io_output_rsp_payload_fragment_context;
  assign rspArea_context_selStart = _zz_rspArea_context_selStart[1 : 0];
  assign rspArea_context_selEnd = _zz_rspArea_context_selStart[3 : 2];
  assign io_input_rsp_valid = io_output_rsp_valid;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_fire = (io_input_rsp_valid && io_input_rsp_ready);
  assign rspArea_readLogic_sel = (io_input_rsp_payload_first ? rspArea_context_selStart : rspArea_readLogic_selReg);
  always @(*) begin
    io_input_rsp_payload_last = (io_output_rsp_payload_last && (rspArea_readLogic_sel == rspArea_context_selEnd));
    if(when_BmbUpSizerBridge_l133) begin
      io_input_rsp_payload_last = 1'b0;
    end
  end

  assign io_output_rsp_ready = (io_input_rsp_ready && (io_input_rsp_payload_last || (rspArea_readLogic_sel == 2'b11)));
  assign when_BmbUpSizerBridge_l133 = (rspArea_context_selEnd != rspArea_readLogic_sel);
  assign io_input_rsp_payload_fragment_data = _zz_io_input_rsp_payload_fragment_data;
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      cmdArea_writeLogic_maskRegs_0 <= 1'b0;
      cmdArea_writeLogic_maskRegs_1 <= 1'b0;
      cmdArea_writeLogic_maskRegs_2 <= 1'b0;
      io_input_cmd_payload_first <= 1'b1;
      io_input_rsp_payload_first <= 1'b1;
    end else begin
      if(io_input_cmd_fire) begin
        io_input_cmd_payload_first <= io_input_cmd_payload_last;
      end
      if(when_BmbUpSizerBridge_l95) begin
        cmdArea_writeLogic_maskRegs_0 <= io_input_cmd_payload_fragment_mask;
      end
      if(io_output_cmd_fire) begin
        cmdArea_writeLogic_maskRegs_0 <= 1'b0;
      end
      if(when_BmbUpSizerBridge_l95_1) begin
        cmdArea_writeLogic_maskRegs_1 <= io_input_cmd_payload_fragment_mask;
      end
      if(io_output_cmd_fire) begin
        cmdArea_writeLogic_maskRegs_1 <= 1'b0;
      end
      if(when_BmbUpSizerBridge_l95_2) begin
        cmdArea_writeLogic_maskRegs_2 <= io_input_cmd_payload_fragment_mask;
      end
      if(io_output_cmd_fire) begin
        cmdArea_writeLogic_maskRegs_2 <= 1'b0;
      end
      if(io_input_rsp_fire) begin
        io_input_rsp_payload_first <= io_input_rsp_payload_last;
      end
    end
  end

  always @(posedge clk_out1) begin
    if(io_input_cmd_fire) begin
      cmdArea_writeLogic_selReg <= (cmdArea_writeLogic_sel + 2'b01);
    end
    if(!when_BmbUpSizerBridge_l85) begin
      cmdArea_writeLogic_dataRegs_0 <= io_input_cmd_payload_fragment_data;
    end
    if(!when_BmbUpSizerBridge_l85_1) begin
      cmdArea_writeLogic_dataRegs_1 <= io_input_cmd_payload_fragment_data;
    end
    if(!when_BmbUpSizerBridge_l85_2) begin
      cmdArea_writeLogic_dataRegs_2 <= io_input_cmd_payload_fragment_data;
    end
    rspArea_readLogic_selReg <= rspArea_readLogic_sel;
    if(io_input_rsp_fire) begin
      rspArea_readLogic_selReg <= (rspArea_readLogic_sel + 2'b01);
    end
  end


endmodule

module StreamFifoLowLatency (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload_data,
  input  wire          io_push_payload_last,
  input  wire [0:0]    io_push_payload_user,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [7:0]    io_pop_payload_data,
  output wire          io_pop_payload_last,
  output wire [0:0]    io_pop_payload_user,
  input  wire          io_flush,
  output wire [8:0]    io_occupancy,
  output wire [8:0]    io_availability,
  input  wire          clk_out1,
  input  wire          rstN
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [7:0]    fifo_io_pop_payload_data;
  wire                fifo_io_pop_payload_last;
  wire       [0:0]    fifo_io_pop_payload_user;
  wire       [8:0]    fifo_io_occupancy;
  wire       [8:0]    fifo_io_availability;

  StreamFifo_1 fifo (
    .io_push_valid        (io_push_valid                ), //i
    .io_push_ready        (fifo_io_push_ready           ), //o
    .io_push_payload_data (io_push_payload_data[7:0]    ), //i
    .io_push_payload_last (io_push_payload_last         ), //i
    .io_push_payload_user (io_push_payload_user         ), //i
    .io_pop_valid         (fifo_io_pop_valid            ), //o
    .io_pop_ready         (io_pop_ready                 ), //i
    .io_pop_payload_data  (fifo_io_pop_payload_data[7:0]), //o
    .io_pop_payload_last  (fifo_io_pop_payload_last     ), //o
    .io_pop_payload_user  (fifo_io_pop_payload_user     ), //o
    .io_flush             (io_flush                     ), //i
    .io_occupancy         (fifo_io_occupancy[8:0]       ), //o
    .io_availability      (fifo_io_availability[8:0]    ), //o
    .clk_out1             (clk_out1                     ), //i
    .rstN                 (rstN                         )  //i
  );
  assign io_push_ready = fifo_io_push_ready;
  assign io_pop_valid = fifo_io_pop_valid;
  assign io_pop_payload_data = fifo_io_pop_payload_data;
  assign io_pop_payload_last = fifo_io_pop_payload_last;
  assign io_pop_payload_user = fifo_io_pop_payload_user;
  assign io_occupancy = fifo_io_occupancy;
  assign io_availability = fifo_io_availability;

endmodule

module Initialize (
  output wire [14:0]   io_control_address,
  output wire [2:0]    io_control_bank,
  output wire [0:0]    io_control_rasN,
  output wire [0:0]    io_control_casN,
  output wire [0:0]    io_control_weN,
  output wire [0:0]    io_control_csN,
  output wire [0:0]    io_control_cke,
  output wire [0:0]    io_control_odt,
  output wire [0:0]    io_control_resetN,
  output reg           io_initDone,
  input  wire          clk_out4,
  input  wire          rstN
);

  reg        [22:0]   refreshTimer;
  reg        [0:0]    cmd_weN;
  reg        [0:0]    cmd_casN;
  reg        [0:0]    cmd_rasN;
  reg        [0:0]    cmd_csN;
  reg        [14:0]   control_address;
  reg        [2:0]    control_bank;
  wire       [0:0]    control_rasN;
  wire       [0:0]    control_casN;
  wire       [0:0]    control_weN;
  wire       [0:0]    control_csN;
  reg        [0:0]    control_cke;
  wire       [0:0]    control_odt;
  wire       [0:0]    control_resetN;
  wire       [3:0]    _zz_cmd_weN;
  wire                when_Initialize_l51;
  wire                when_Initialize_l58;
  wire                when_Initialize_l61;
  wire       [3:0]    LOAD_MODE2;
  wire                when_Initialize_l66;
  wire       [3:0]    LOAD_MODE3;
  wire                when_Initialize_l71;
  wire       [3:0]    LOAD_MODE1;
  wire                when_Initialize_l76;
  wire       [3:0]    LOAD_MODE0;
  wire                when_Initialize_l81;
  wire       [3:0]    ZQCL;
  wire                when_Initialize_l85;
  wire       [3:0]    PRECHARGE;
  reg        [14:0]   control_regNext_address;
  reg        [2:0]    control_regNext_bank;
  reg        [0:0]    control_regNext_rasN;
  reg        [0:0]    control_regNext_casN;
  reg        [0:0]    control_regNext_weN;
  reg        [0:0]    control_regNext_csN;
  reg        [0:0]    control_regNext_cke;
  reg        [0:0]    control_regNext_odt;
  reg        [0:0]    control_regNext_resetN;

  assign _zz_cmd_weN = 4'b1111;
  always @(*) begin
    cmd_weN = _zz_cmd_weN[0 : 0];
    if(when_Initialize_l61) begin
      cmd_weN = LOAD_MODE2[0 : 0];
    end
    if(when_Initialize_l66) begin
      cmd_weN = LOAD_MODE3[0 : 0];
    end
    if(when_Initialize_l71) begin
      cmd_weN = LOAD_MODE1[0 : 0];
    end
    if(when_Initialize_l76) begin
      cmd_weN = LOAD_MODE0[0 : 0];
    end
    if(when_Initialize_l81) begin
      cmd_weN = ZQCL[0 : 0];
    end
    if(when_Initialize_l85) begin
      cmd_weN = PRECHARGE[0 : 0];
    end
  end

  always @(*) begin
    cmd_casN = _zz_cmd_weN[1 : 1];
    if(when_Initialize_l61) begin
      cmd_casN = LOAD_MODE2[1 : 1];
    end
    if(when_Initialize_l66) begin
      cmd_casN = LOAD_MODE3[1 : 1];
    end
    if(when_Initialize_l71) begin
      cmd_casN = LOAD_MODE1[1 : 1];
    end
    if(when_Initialize_l76) begin
      cmd_casN = LOAD_MODE0[1 : 1];
    end
    if(when_Initialize_l81) begin
      cmd_casN = ZQCL[1 : 1];
    end
    if(when_Initialize_l85) begin
      cmd_casN = PRECHARGE[1 : 1];
    end
  end

  always @(*) begin
    cmd_rasN = _zz_cmd_weN[2 : 2];
    if(when_Initialize_l61) begin
      cmd_rasN = LOAD_MODE2[2 : 2];
    end
    if(when_Initialize_l66) begin
      cmd_rasN = LOAD_MODE3[2 : 2];
    end
    if(when_Initialize_l71) begin
      cmd_rasN = LOAD_MODE1[2 : 2];
    end
    if(when_Initialize_l76) begin
      cmd_rasN = LOAD_MODE0[2 : 2];
    end
    if(when_Initialize_l81) begin
      cmd_rasN = ZQCL[2 : 2];
    end
    if(when_Initialize_l85) begin
      cmd_rasN = PRECHARGE[2 : 2];
    end
  end

  always @(*) begin
    cmd_csN = _zz_cmd_weN[3 : 3];
    if(when_Initialize_l61) begin
      cmd_csN = LOAD_MODE2[3 : 3];
    end
    if(when_Initialize_l66) begin
      cmd_csN = LOAD_MODE3[3 : 3];
    end
    if(when_Initialize_l71) begin
      cmd_csN = LOAD_MODE1[3 : 3];
    end
    if(when_Initialize_l76) begin
      cmd_csN = LOAD_MODE0[3 : 3];
    end
    if(when_Initialize_l81) begin
      cmd_csN = ZQCL[3 : 3];
    end
    if(when_Initialize_l85) begin
      cmd_csN = PRECHARGE[3 : 3];
    end
  end

  always @(*) begin
    io_initDone = 1'b0;
    if(when_Initialize_l51) begin
      io_initDone = 1'b1;
    end
  end

  always @(*) begin
    control_cke = 1'b1;
    if(when_Initialize_l58) begin
      control_cke = 1'b0;
    end
  end

  assign control_odt = 1'b0;
  assign control_resetN = 1'b1;
  always @(*) begin
    control_address = 15'h0;
    if(when_Initialize_l61) begin
      control_address = 15'h0008;
    end
    if(when_Initialize_l66) begin
      control_address = 15'h0;
    end
    if(when_Initialize_l71) begin
      control_address = 15'h0001;
    end
    if(when_Initialize_l76) begin
      control_address = 15'h0120;
    end
    if(when_Initialize_l81) begin
      control_address[10] = 1'b1;
    end
    if(when_Initialize_l85) begin
      control_address[10] = 1'b1;
    end
  end

  always @(*) begin
    control_bank = 3'b000;
    if(when_Initialize_l61) begin
      control_bank = 3'b010;
    end
    if(when_Initialize_l66) begin
      control_bank = 3'b011;
    end
    if(when_Initialize_l71) begin
      control_bank = 3'b001;
    end
    if(when_Initialize_l76) begin
      control_bank = 3'b000;
    end
  end

  assign when_Initialize_l51 = (refreshTimer == 23'h0);
  assign when_Initialize_l58 = (23'h001388 <= refreshTimer);
  assign when_Initialize_l61 = (refreshTimer == 23'h0012c0);
  assign LOAD_MODE2 = 4'b0000;
  assign when_Initialize_l66 = (refreshTimer == 23'h0011f8);
  assign LOAD_MODE3 = 4'b0000;
  assign when_Initialize_l71 = (refreshTimer == 23'h001130);
  assign LOAD_MODE1 = 4'b0000;
  assign when_Initialize_l76 = (refreshTimer == 23'h001068);
  assign LOAD_MODE0 = 4'b0000;
  assign when_Initialize_l81 = (refreshTimer == 23'h000fa0);
  assign ZQCL = 4'b0110;
  assign when_Initialize_l85 = (refreshTimer == 23'h000014);
  assign PRECHARGE = 4'b0010;
  assign control_rasN = cmd_rasN;
  assign control_casN = cmd_casN;
  assign control_weN = cmd_weN;
  assign control_csN = cmd_csN;
  assign io_control_address = control_regNext_address;
  assign io_control_bank = control_regNext_bank;
  assign io_control_rasN = control_regNext_rasN;
  assign io_control_casN = control_regNext_casN;
  assign io_control_weN = control_regNext_weN;
  assign io_control_csN = control_regNext_csN;
  assign io_control_cke = control_regNext_cke;
  assign io_control_odt = control_regNext_odt;
  assign io_control_resetN = control_regNext_resetN;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      refreshTimer <= 23'h00ea60;
    end else begin
      if(when_Initialize_l51) begin
        refreshTimer <= 23'h0;
      end else begin
        refreshTimer <= (refreshTimer - 23'h000001);
      end
    end
  end

  always @(posedge clk_out4) begin
    control_regNext_address <= control_address;
    control_regNext_bank <= control_bank;
    control_regNext_rasN <= control_rasN;
    control_regNext_casN <= control_casN;
    control_regNext_weN <= control_weN;
    control_regNext_csN <= control_csN;
    control_regNext_cke <= control_cke;
    control_regNext_odt <= control_odt;
    control_regNext_resetN <= control_resetN;
  end


endmodule

module Alignment (
  input  wire [0:0]    io_inIdfiport_cke_0,
  input  wire          io_inIdfiport_cmd_0_valid,
  input  wire          io_inIdfiport_cmd_0_payload_weN,
  input  wire          io_inIdfiport_cmd_0_payload_casN,
  input  wire          io_inIdfiport_cmd_0_payload_rasN,
  input  wire [0:0]    io_inIdfiport_cmd_0_payload_csN,
  input  wire          io_inIdfiport_odt_0_valid,
  input  wire          io_inIdfiport_address_0_valid,
  input  wire [2:0]    io_inIdfiport_address_0_payload_bank,
  input  wire [14:0]   io_inIdfiport_address_0_payload_address,
  input  wire          io_inIdfiport_wrData_0_valid,
  input  wire [31:0]   io_inIdfiport_wrData_0_payload_wrData,
  input  wire [3:0]    io_inIdfiport_wrData_0_payload_wrDataMask,
  input  wire          io_inIdfiport_wrCs_0_valid,
  input  wire          io_inIdfiport_rdEn_0,
  output wire          io_inIdfiport_rdData_0_valid,
  input  wire          io_inIdfiport_rdData_0_ready,
  output wire          io_inIdfiport_rdData_0_payload_last,
  output wire [31:0]   io_inIdfiport_rdData_0_payload_fragment_rdData,
  input  wire          io_inIdfiport_rdCs_0_valid,
  input  wire          io_inIdfiport_clkDisable_valid,
  input  wire [0:0]    io_inIdfiport_clkDisable_payload,
  input  wire          io_inIdfiport_lpCtrlReq_valid,
  output wire [14:0]   io_outDfiport_control_address,
  output wire [2:0]    io_outDfiport_control_bank,
  output wire [0:0]    io_outDfiport_control_rasN,
  output wire [0:0]    io_outDfiport_control_casN,
  output wire [0:0]    io_outDfiport_control_weN,
  output wire [0:0]    io_outDfiport_control_csN,
  output wire [0:0]    io_outDfiport_control_cke,
  output wire          io_outDfiport_write_wr_0_wrdataEn,
  output wire [31:0]   io_outDfiport_write_wr_0_wrdata,
  output wire [3:0]    io_outDfiport_write_wr_0_wrdataMask,
  output wire          io_outDfiport_read_rden_0,
  input  wire          io_outDfiport_read_rd_0_rddataValid,
  input  wire [31:0]   io_outDfiport_read_rd_0_rddata,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [0:0]    caAlignment_1_io_cke_0;
  wire       [14:0]   caAlignment_1_io_output_address;
  wire       [2:0]    caAlignment_1_io_output_bank;
  wire       [0:0]    caAlignment_1_io_output_rasN;
  wire       [0:0]    caAlignment_1_io_output_casN;
  wire       [0:0]    caAlignment_1_io_output_weN;
  wire       [0:0]    caAlignment_1_io_output_csN;
  wire       [0:0]    caAlignment_1_io_output_cke;
  wire                wrAlignment_1_io_dfiWr_wr_0_wrdataEn;
  wire       [31:0]   wrAlignment_1_io_dfiWr_wr_0_wrdata;
  wire       [3:0]    wrAlignment_1_io_dfiWr_wr_0_wrdataMask;
  wire                rdAlignment_1_io_idfiRd_0_valid;
  wire                rdAlignment_1_io_idfiRd_0_payload_last;
  wire       [31:0]   rdAlignment_1_io_idfiRd_0_payload_fragment_rdData;
  wire       [0:0]    _zz_io_cke_0;

  assign _zz_io_cke_0 = 1'b1;
  CAAlignment caAlignment_1 (
    .io_cmd_0_valid               (io_inIdfiport_cmd_0_valid                    ), //i
    .io_cmd_0_payload_weN         (io_inIdfiport_cmd_0_payload_weN              ), //i
    .io_cmd_0_payload_casN        (io_inIdfiport_cmd_0_payload_casN             ), //i
    .io_cmd_0_payload_rasN        (io_inIdfiport_cmd_0_payload_rasN             ), //i
    .io_cmd_0_payload_csN         (io_inIdfiport_cmd_0_payload_csN              ), //i
    .io_address_0_valid           (io_inIdfiport_address_0_valid                ), //i
    .io_address_0_payload_bank    (io_inIdfiport_address_0_payload_bank[2:0]    ), //i
    .io_address_0_payload_address (io_inIdfiport_address_0_payload_address[14:0]), //i
    .io_cke_0                     (caAlignment_1_io_cke_0                       ), //i
    .io_output_address            (caAlignment_1_io_output_address[14:0]        ), //o
    .io_output_bank               (caAlignment_1_io_output_bank[2:0]            ), //o
    .io_output_rasN               (caAlignment_1_io_output_rasN                 ), //o
    .io_output_casN               (caAlignment_1_io_output_casN                 ), //o
    .io_output_weN                (caAlignment_1_io_output_weN                  ), //o
    .io_output_csN                (caAlignment_1_io_output_csN                  ), //o
    .io_output_cke                (caAlignment_1_io_output_cke                  )  //o
  );
  WrAlignment wrAlignment_1 (
    .io_idfiWrData_0_valid              (io_inIdfiport_wrData_0_valid                  ), //i
    .io_idfiWrData_0_payload_wrData     (io_inIdfiport_wrData_0_payload_wrData[31:0]   ), //i
    .io_idfiWrData_0_payload_wrDataMask (io_inIdfiport_wrData_0_payload_wrDataMask[3:0]), //i
    .io_dfiWr_wr_0_wrdataEn             (wrAlignment_1_io_dfiWr_wr_0_wrdataEn          ), //o
    .io_dfiWr_wr_0_wrdata               (wrAlignment_1_io_dfiWr_wr_0_wrdata[31:0]      ), //o
    .io_dfiWr_wr_0_wrdataMask           (wrAlignment_1_io_dfiWr_wr_0_wrdataMask[3:0]   ), //o
    .clk_out4                           (clk_out4                                      ), //i
    .rstN                               (rstN                                          )  //i
  );
  RdAlignment rdAlignment_1 (
    .io_phaseClear                       (1'b0                                                   ), //i
    .io_dfiRd_0_rddataValid              (io_outDfiport_read_rd_0_rddataValid                    ), //i
    .io_dfiRd_0_rddata                   (io_outDfiport_read_rd_0_rddata[31:0]                   ), //i
    .io_idfiRd_0_valid                   (rdAlignment_1_io_idfiRd_0_valid                        ), //o
    .io_idfiRd_0_ready                   (io_inIdfiport_rdData_0_ready                           ), //i
    .io_idfiRd_0_payload_last            (rdAlignment_1_io_idfiRd_0_payload_last                 ), //o
    .io_idfiRd_0_payload_fragment_rdData (rdAlignment_1_io_idfiRd_0_payload_fragment_rdData[31:0]), //o
    .clk_out4                            (clk_out4                                               ), //i
    .rstN                                (rstN                                                   )  //i
  );
  assign caAlignment_1_io_cke_0 = _zz_io_cke_0[0 : 0];
  assign io_outDfiport_control_address = caAlignment_1_io_output_address;
  assign io_outDfiport_control_bank = caAlignment_1_io_output_bank;
  assign io_outDfiport_control_rasN = caAlignment_1_io_output_rasN;
  assign io_outDfiport_control_casN = caAlignment_1_io_output_casN;
  assign io_outDfiport_control_weN = caAlignment_1_io_output_weN;
  assign io_outDfiport_control_csN = caAlignment_1_io_output_csN;
  assign io_outDfiport_control_cke = caAlignment_1_io_output_cke;
  assign io_outDfiport_write_wr_0_wrdataEn = wrAlignment_1_io_dfiWr_wr_0_wrdataEn;
  assign io_outDfiport_write_wr_0_wrdata = wrAlignment_1_io_dfiWr_wr_0_wrdata;
  assign io_outDfiport_write_wr_0_wrdataMask = wrAlignment_1_io_dfiWr_wr_0_wrdataMask;
  assign io_inIdfiport_rdData_0_valid = rdAlignment_1_io_idfiRd_0_valid;
  assign io_inIdfiport_rdData_0_payload_last = rdAlignment_1_io_idfiRd_0_payload_last;
  assign io_inIdfiport_rdData_0_payload_fragment_rdData = rdAlignment_1_io_idfiRd_0_payload_fragment_rdData;
  assign io_outDfiport_read_rden_0 = io_inIdfiport_rdEn_0;

endmodule

module Control (
  input  wire          io_inport_tasks_read,
  input  wire          io_inport_tasks_write,
  input  wire          io_inport_tasks_active,
  input  wire          io_inport_tasks_precharge,
  input  wire          io_inport_tasks_last,
  input  wire [0:0]    io_inport_tasks_address_byte,
  input  wire [9:0]    io_inport_tasks_address_column,
  input  wire [2:0]    io_inport_tasks_address_bank,
  input  wire [14:0]   io_inport_tasks_address_row,
  input  wire [17:0]   io_inport_tasks_context,
  input  wire          io_inport_tasks_prechargeAll,
  input  wire          io_inport_tasks_refresh,
  input  wire          io_inport_writeData_valid,
  output wire          io_inport_writeData_ready,
  input  wire [31:0]   io_inport_writeData_payload_data,
  input  wire [3:0]    io_inport_writeData_payload_mask,
  output wire          io_inport_rsp_valid,
  input  wire          io_inport_rsp_ready,
  output wire          io_inport_rsp_payload_last,
  output wire [31:0]   io_inport_rsp_payload_fragment_data,
  output wire [17:0]   io_inport_rsp_payload_fragment_context,
  output wire [0:0]    io_outport_cke_0,
  output wire          io_outport_cmd_0_valid,
  output wire          io_outport_cmd_0_payload_weN,
  output wire          io_outport_cmd_0_payload_casN,
  output wire          io_outport_cmd_0_payload_rasN,
  output wire [0:0]    io_outport_cmd_0_payload_csN,
  output wire          io_outport_odt_0_valid,
  output wire          io_outport_address_0_valid,
  output wire [2:0]    io_outport_address_0_payload_bank,
  output wire [14:0]   io_outport_address_0_payload_address,
  output wire          io_outport_wrData_0_valid,
  output wire [31:0]   io_outport_wrData_0_payload_wrData,
  output wire [3:0]    io_outport_wrData_0_payload_wrDataMask,
  output wire          io_outport_wrCs_0_valid,
  output wire          io_outport_rdEn_0,
  input  wire          io_outport_rdData_0_valid,
  output wire          io_outport_rdData_0_ready,
  input  wire          io_outport_rdData_0_payload_last,
  input  wire [31:0]   io_outport_rdData_0_payload_fragment_rdData,
  output wire          io_outport_rdCs_0_valid,
  output wire          io_outport_clkDisable_valid,
  output wire [0:0]    io_outport_clkDisable_payload,
  output wire          io_outport_lpCtrlReq_valid,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                cmd_cmdtxd_io_cmd_0_valid;
  wire                cmd_cmdtxd_io_cmd_0_payload_weN;
  wire                cmd_cmdtxd_io_cmd_0_payload_casN;
  wire                cmd_cmdtxd_io_cmd_0_payload_rasN;
  wire       [0:0]    cmd_cmdtxd_io_cmd_0_payload_csN;
  wire                cmd_cmdtxd_io_address_0_valid;
  wire       [2:0]    cmd_cmdtxd_io_address_0_payload_bank;
  wire       [14:0]   cmd_cmdtxd_io_address_0_payload_address;
  wire                wrdata_wrdatatxd_io_taskWrData_ready;
  wire                wrdata_wrdatatxd_io_idfiWrData_0_valid;
  wire       [31:0]   wrdata_wrdatatxd_io_idfiWrData_0_payload_wrData;
  wire       [3:0]    wrdata_wrdatatxd_io_idfiWrData_0_payload_wrDataMask;
  wire                radata_rddatarxd_io_idfiRdData_0_ready;
  wire                radata_rddatarxd_io_rden_0;
  wire                radata_rddatarxd_io_taskRdData_valid;
  wire                radata_rddatarxd_io_taskRdData_payload_last;
  wire       [31:0]   radata_rddatarxd_io_taskRdData_payload_fragment_data;
  wire       [17:0]   radata_rddatarxd_io_taskRdData_payload_fragment_context;
  reg                 io_inport_tasks_init_read;
  reg                 io_inport_tasks_init_write;
  reg                 io_inport_tasks_init_active;
  reg                 io_inport_tasks_init_precharge;
  reg                 io_inport_tasks_init_last;
  reg        [0:0]    io_inport_tasks_init_address_byte;
  reg        [9:0]    io_inport_tasks_init_address_column;
  reg        [2:0]    io_inport_tasks_init_address_bank;
  reg        [14:0]   io_inport_tasks_init_address_row;
  reg        [17:0]   io_inport_tasks_init_context;
  reg                 io_inport_tasks_init_prechargeAll;
  reg                 io_inport_tasks_init_refresh;
  reg                 io_inport_tasks_write_regNext;
  reg                 io_inport_tasks_init_read_1;
  reg                 io_inport_tasks_init_write_1;
  reg                 io_inport_tasks_init_active_1;
  reg                 io_inport_tasks_init_precharge_1;
  reg                 io_inport_tasks_init_last_1;
  reg        [0:0]    io_inport_tasks_init_address_byte_1;
  reg        [9:0]    io_inport_tasks_init_address_column_1;
  reg        [2:0]    io_inport_tasks_init_address_bank_1;
  reg        [14:0]   io_inport_tasks_init_address_row_1;
  reg        [17:0]   io_inport_tasks_init_context_1;
  reg                 io_inport_tasks_init_prechargeAll_1;
  reg                 io_inport_tasks_init_refresh_1;
  wire                radata_rddatarxd_io_taskRdData_toStream_valid;
  wire                radata_rddatarxd_io_taskRdData_toStream_ready;
  wire                radata_rddatarxd_io_taskRdData_toStream_payload_last;
  wire       [31:0]   radata_rddatarxd_io_taskRdData_toStream_payload_fragment_data;
  wire       [17:0]   radata_rddatarxd_io_taskRdData_toStream_payload_fragment_context;

  CmdTxd cmd_cmdtxd (
    .io_task_read                 (io_inport_tasks_init_read                    ), //i
    .io_task_write                (io_inport_tasks_init_write                   ), //i
    .io_task_active               (io_inport_tasks_init_active                  ), //i
    .io_task_precharge            (io_inport_tasks_init_precharge               ), //i
    .io_task_last                 (io_inport_tasks_init_last                    ), //i
    .io_task_address_byte         (io_inport_tasks_init_address_byte            ), //i
    .io_task_address_column       (io_inport_tasks_init_address_column[9:0]     ), //i
    .io_task_address_bank         (io_inport_tasks_init_address_bank[2:0]       ), //i
    .io_task_address_row          (io_inport_tasks_init_address_row[14:0]       ), //i
    .io_task_context              (io_inport_tasks_init_context[17:0]           ), //i
    .io_task_prechargeAll         (io_inport_tasks_init_prechargeAll            ), //i
    .io_task_refresh              (io_inport_tasks_init_refresh                 ), //i
    .io_cmd_0_valid               (cmd_cmdtxd_io_cmd_0_valid                    ), //o
    .io_cmd_0_payload_weN         (cmd_cmdtxd_io_cmd_0_payload_weN              ), //o
    .io_cmd_0_payload_casN        (cmd_cmdtxd_io_cmd_0_payload_casN             ), //o
    .io_cmd_0_payload_rasN        (cmd_cmdtxd_io_cmd_0_payload_rasN             ), //o
    .io_cmd_0_payload_csN         (cmd_cmdtxd_io_cmd_0_payload_csN              ), //o
    .io_address_0_valid           (cmd_cmdtxd_io_address_0_valid                ), //o
    .io_address_0_payload_bank    (cmd_cmdtxd_io_address_0_payload_bank[2:0]    ), //o
    .io_address_0_payload_address (cmd_cmdtxd_io_address_0_payload_address[14:0])  //o
  );
  WrDataTxd wrdata_wrdatatxd (
    .io_write                           (io_inport_tasks_write_regNext                           ), //i
    .io_taskWrData_valid                (io_inport_writeData_valid                               ), //i
    .io_taskWrData_ready                (wrdata_wrdatatxd_io_taskWrData_ready                    ), //o
    .io_taskWrData_payload_data         (io_inport_writeData_payload_data[31:0]                  ), //i
    .io_taskWrData_payload_mask         (io_inport_writeData_payload_mask[3:0]                   ), //i
    .io_idfiWrData_0_valid              (wrdata_wrdatatxd_io_idfiWrData_0_valid                  ), //o
    .io_idfiWrData_0_payload_wrData     (wrdata_wrdatatxd_io_idfiWrData_0_payload_wrData[31:0]   ), //o
    .io_idfiWrData_0_payload_wrDataMask (wrdata_wrdatatxd_io_idfiWrData_0_payload_wrDataMask[3:0]), //o
    .clk_out4                           (clk_out4                                                ), //i
    .rstN                               (rstN                                                    )  //i
  );
  RdDataRxd radata_rddatarxd (
    .io_task_read                            (io_inport_tasks_init_read_1                                  ), //i
    .io_task_write                           (io_inport_tasks_init_write_1                                 ), //i
    .io_task_active                          (io_inport_tasks_init_active_1                                ), //i
    .io_task_precharge                       (io_inport_tasks_init_precharge_1                             ), //i
    .io_task_last                            (io_inport_tasks_init_last_1                                  ), //i
    .io_task_address_byte                    (io_inport_tasks_init_address_byte_1                          ), //i
    .io_task_address_column                  (io_inport_tasks_init_address_column_1[9:0]                   ), //i
    .io_task_address_bank                    (io_inport_tasks_init_address_bank_1[2:0]                     ), //i
    .io_task_address_row                     (io_inport_tasks_init_address_row_1[14:0]                     ), //i
    .io_task_context                         (io_inport_tasks_init_context_1[17:0]                         ), //i
    .io_task_prechargeAll                    (io_inport_tasks_init_prechargeAll_1                          ), //i
    .io_task_refresh                         (io_inport_tasks_init_refresh_1                               ), //i
    .io_idfiRdData_0_valid                   (io_outport_rdData_0_valid                                    ), //i
    .io_idfiRdData_0_ready                   (radata_rddatarxd_io_idfiRdData_0_ready                       ), //o
    .io_idfiRdData_0_payload_last            (io_outport_rdData_0_payload_last                             ), //i
    .io_idfiRdData_0_payload_fragment_rdData (io_outport_rdData_0_payload_fragment_rdData[31:0]            ), //i
    .io_rden_0                               (radata_rddatarxd_io_rden_0                                   ), //o
    .io_taskRdData_valid                     (radata_rddatarxd_io_taskRdData_valid                         ), //o
    .io_taskRdData_payload_last              (radata_rddatarxd_io_taskRdData_payload_last                  ), //o
    .io_taskRdData_payload_fragment_data     (radata_rddatarxd_io_taskRdData_payload_fragment_data[31:0]   ), //o
    .io_taskRdData_payload_fragment_context  (radata_rddatarxd_io_taskRdData_payload_fragment_context[17:0]), //o
    .clk_out4                                (clk_out4                                                     ), //i
    .rstN                                    (rstN                                                         )  //i
  );
  assign io_inport_writeData_ready = wrdata_wrdatatxd_io_taskWrData_ready;
  assign radata_rddatarxd_io_taskRdData_toStream_valid = radata_rddatarxd_io_taskRdData_valid;
  assign radata_rddatarxd_io_taskRdData_toStream_payload_last = radata_rddatarxd_io_taskRdData_payload_last;
  assign radata_rddatarxd_io_taskRdData_toStream_payload_fragment_data = radata_rddatarxd_io_taskRdData_payload_fragment_data;
  assign radata_rddatarxd_io_taskRdData_toStream_payload_fragment_context = radata_rddatarxd_io_taskRdData_payload_fragment_context;
  assign io_inport_rsp_valid = radata_rddatarxd_io_taskRdData_toStream_valid;
  assign radata_rddatarxd_io_taskRdData_toStream_ready = io_inport_rsp_ready;
  assign io_inport_rsp_payload_last = radata_rddatarxd_io_taskRdData_toStream_payload_last;
  assign io_inport_rsp_payload_fragment_data = radata_rddatarxd_io_taskRdData_toStream_payload_fragment_data;
  assign io_inport_rsp_payload_fragment_context = radata_rddatarxd_io_taskRdData_toStream_payload_fragment_context;
  assign io_outport_cmd_0_valid = cmd_cmdtxd_io_cmd_0_valid;
  assign io_outport_cmd_0_payload_weN = cmd_cmdtxd_io_cmd_0_payload_weN;
  assign io_outport_cmd_0_payload_casN = cmd_cmdtxd_io_cmd_0_payload_casN;
  assign io_outport_cmd_0_payload_rasN = cmd_cmdtxd_io_cmd_0_payload_rasN;
  assign io_outport_cmd_0_payload_csN = cmd_cmdtxd_io_cmd_0_payload_csN;
  assign io_outport_address_0_valid = cmd_cmdtxd_io_address_0_valid;
  assign io_outport_address_0_payload_bank = cmd_cmdtxd_io_address_0_payload_bank;
  assign io_outport_address_0_payload_address = cmd_cmdtxd_io_address_0_payload_address;
  assign io_outport_wrData_0_valid = wrdata_wrdatatxd_io_idfiWrData_0_valid;
  assign io_outport_wrData_0_payload_wrData = wrdata_wrdatatxd_io_idfiWrData_0_payload_wrData;
  assign io_outport_wrData_0_payload_wrDataMask = wrdata_wrdatatxd_io_idfiWrData_0_payload_wrDataMask;
  assign io_outport_rdData_0_ready = radata_rddatarxd_io_idfiRdData_0_ready;
  assign io_outport_rdEn_0 = radata_rddatarxd_io_rden_0;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      io_inport_tasks_init_read <= 1'b0;
      io_inport_tasks_init_write <= 1'b0;
      io_inport_tasks_init_precharge <= 1'b0;
      io_inport_tasks_init_active <= 1'b0;
      io_inport_tasks_init_prechargeAll <= 1'b0;
      io_inport_tasks_init_refresh <= 1'b0;
      io_inport_tasks_write_regNext <= 1'b0;
      io_inport_tasks_init_read_1 <= 1'b0;
      io_inport_tasks_init_write_1 <= 1'b0;
      io_inport_tasks_init_precharge_1 <= 1'b0;
      io_inport_tasks_init_active_1 <= 1'b0;
      io_inport_tasks_init_prechargeAll_1 <= 1'b0;
      io_inport_tasks_init_refresh_1 <= 1'b0;
    end else begin
      io_inport_tasks_init_read <= io_inport_tasks_read;
      io_inport_tasks_init_write <= io_inport_tasks_write;
      io_inport_tasks_init_active <= io_inport_tasks_active;
      io_inport_tasks_init_precharge <= io_inport_tasks_precharge;
      io_inport_tasks_init_prechargeAll <= io_inport_tasks_prechargeAll;
      io_inport_tasks_init_refresh <= io_inport_tasks_refresh;
      io_inport_tasks_write_regNext <= io_inport_tasks_write;
      io_inport_tasks_init_read_1 <= io_inport_tasks_read;
      io_inport_tasks_init_write_1 <= io_inport_tasks_write;
      io_inport_tasks_init_active_1 <= io_inport_tasks_active;
      io_inport_tasks_init_precharge_1 <= io_inport_tasks_precharge;
      io_inport_tasks_init_prechargeAll_1 <= io_inport_tasks_prechargeAll;
      io_inport_tasks_init_refresh_1 <= io_inport_tasks_refresh;
    end
  end

  always @(posedge clk_out4) begin
    io_inport_tasks_init_last <= io_inport_tasks_last;
    io_inport_tasks_init_address_byte <= io_inport_tasks_address_byte;
    io_inport_tasks_init_address_column <= io_inport_tasks_address_column;
    io_inport_tasks_init_address_bank <= io_inport_tasks_address_bank;
    io_inport_tasks_init_address_row <= io_inport_tasks_address_row;
    io_inport_tasks_init_context <= io_inport_tasks_context;
    io_inport_tasks_init_last_1 <= io_inport_tasks_last;
    io_inport_tasks_init_address_byte_1 <= io_inport_tasks_address_byte;
    io_inport_tasks_init_address_column_1 <= io_inport_tasks_address_column;
    io_inport_tasks_init_address_bank_1 <= io_inport_tasks_address_bank;
    io_inport_tasks_init_address_row_1 <= io_inport_tasks_address_row;
    io_inport_tasks_init_context_1 <= io_inport_tasks_context;
  end


endmodule

module BmbBridge (
  input  wire          io_bmb_cmd_valid,
  output wire          io_bmb_cmd_ready,
  input  wire          io_bmb_cmd_payload_last,
  input  wire [0:0]    io_bmb_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_bmb_cmd_payload_fragment_address,
  input  wire [9:0]    io_bmb_cmd_payload_fragment_length,
  input  wire [31:0]   io_bmb_cmd_payload_fragment_data,
  input  wire [3:0]    io_bmb_cmd_payload_fragment_mask,
  input  wire [3:0]    io_bmb_cmd_payload_fragment_context,
  output wire          io_bmb_rsp_valid,
  input  wire          io_bmb_rsp_ready,
  output wire          io_bmb_rsp_payload_last,
  output wire [0:0]    io_bmb_rsp_payload_fragment_opcode,
  output wire [31:0]   io_bmb_rsp_payload_fragment_data,
  output wire [3:0]    io_bmb_rsp_payload_fragment_context,
  output wire          io_taskPort_tasks_read,
  output wire          io_taskPort_tasks_write,
  output wire          io_taskPort_tasks_active,
  output wire          io_taskPort_tasks_precharge,
  output wire          io_taskPort_tasks_last,
  output wire [0:0]    io_taskPort_tasks_address_byte,
  output wire [9:0]    io_taskPort_tasks_address_column,
  output wire [2:0]    io_taskPort_tasks_address_bank,
  output wire [14:0]   io_taskPort_tasks_address_row,
  output wire [17:0]   io_taskPort_tasks_context,
  output wire          io_taskPort_tasks_prechargeAll,
  output wire          io_taskPort_tasks_refresh,
  output wire          io_taskPort_writeData_valid,
  input  wire          io_taskPort_writeData_ready,
  output wire [31:0]   io_taskPort_writeData_payload_data,
  output wire [3:0]    io_taskPort_writeData_payload_mask,
  input  wire          io_taskPort_rsp_valid,
  output reg           io_taskPort_rsp_ready,
  input  wire          io_taskPort_rsp_payload_last,
  input  wire [31:0]   io_taskPort_rsp_payload_fragment_data,
  input  wire [17:0]   io_taskPort_rsp_payload_fragment_context,
  input  wire          clk_out4,
  input  wire          rstN
);

  reg                 bmbAdapter_1_io_output_cmd_ready;
  reg                 bmbAdapter_1_io_output_writeData_ready;
  reg                 bmbAdapter_1_io_output_writeDataToken_ready;
  wire                bmbAdapter_1_io_input_cmd_ready;
  wire                bmbAdapter_1_io_input_rsp_valid;
  wire                bmbAdapter_1_io_input_rsp_payload_last;
  wire       [0:0]    bmbAdapter_1_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   bmbAdapter_1_io_input_rsp_payload_fragment_data;
  wire       [3:0]    bmbAdapter_1_io_input_rsp_payload_fragment_context;
  wire                bmbAdapter_1_io_output_cmd_valid;
  wire                bmbAdapter_1_io_output_cmd_payload_write;
  wire       [28:0]   bmbAdapter_1_io_output_cmd_payload_address;
  wire       [17:0]   bmbAdapter_1_io_output_cmd_payload_context;
  wire                bmbAdapter_1_io_output_cmd_payload_burstLast;
  wire       [1:0]    bmbAdapter_1_io_output_cmd_payload_length;
  wire                bmbAdapter_1_io_output_writeDataToken_valid;
  wire                bmbAdapter_1_io_output_writeDataToken_payload_valid;
  wire                bmbAdapter_1_io_output_writeDataToken_payload_ready;
  wire                bmbAdapter_1_io_output_writeData_valid;
  wire       [31:0]   bmbAdapter_1_io_output_writeData_payload_data;
  wire       [3:0]    bmbAdapter_1_io_output_writeData_payload_mask;
  wire                bmbAdapter_1_io_output_rsp_ready;
  wire                maketask_1_io_cmd_ready;
  wire                maketask_1_io_halt;
  wire                maketask_1_io_writeDataToken_ready;
  wire                maketask_1_io_output_read;
  wire                maketask_1_io_output_write;
  wire                maketask_1_io_output_active;
  wire                maketask_1_io_output_precharge;
  wire                maketask_1_io_output_last;
  wire       [0:0]    maketask_1_io_output_address_byte;
  wire       [9:0]    maketask_1_io_output_address_column;
  wire       [2:0]    maketask_1_io_output_address_bank;
  wire       [14:0]   maketask_1_io_output_address_row;
  wire       [17:0]   maketask_1_io_output_context;
  wire                maketask_1_io_output_prechargeAll;
  wire                maketask_1_io_output_refresh;
  wire                bmbAdapter_1_io_output_writeData_m2sPipe_valid;
  wire                bmbAdapter_1_io_output_writeData_m2sPipe_ready;
  wire       [31:0]   bmbAdapter_1_io_output_writeData_m2sPipe_payload_data;
  wire       [3:0]    bmbAdapter_1_io_output_writeData_m2sPipe_payload_mask;
  reg                 bmbAdapter_1_io_output_writeData_rValid;
  reg        [31:0]   bmbAdapter_1_io_output_writeData_rData_data;
  reg        [3:0]    bmbAdapter_1_io_output_writeData_rData_mask;
  wire                when_Stream_l393;
  wire                io_taskPort_rsp_m2sPipe_valid;
  wire                io_taskPort_rsp_m2sPipe_ready;
  wire                io_taskPort_rsp_m2sPipe_payload_last;
  wire       [31:0]   io_taskPort_rsp_m2sPipe_payload_fragment_data;
  wire       [17:0]   io_taskPort_rsp_m2sPipe_payload_fragment_context;
  reg                 io_taskPort_rsp_rValid;
  reg                 io_taskPort_rsp_rData_last;
  reg        [31:0]   io_taskPort_rsp_rData_fragment_data;
  reg        [17:0]   io_taskPort_rsp_rData_fragment_context;
  wire                when_Stream_l393_1;
  wire                bmbAdapter_1_io_output_cmd_m2sPipe_valid;
  wire                bmbAdapter_1_io_output_cmd_m2sPipe_ready;
  wire                bmbAdapter_1_io_output_cmd_m2sPipe_payload_write;
  wire       [28:0]   bmbAdapter_1_io_output_cmd_m2sPipe_payload_address;
  wire       [17:0]   bmbAdapter_1_io_output_cmd_m2sPipe_payload_context;
  wire                bmbAdapter_1_io_output_cmd_m2sPipe_payload_burstLast;
  wire       [1:0]    bmbAdapter_1_io_output_cmd_m2sPipe_payload_length;
  reg                 bmbAdapter_1_io_output_cmd_rValid;
  reg                 bmbAdapter_1_io_output_cmd_rData_write;
  reg        [28:0]   bmbAdapter_1_io_output_cmd_rData_address;
  reg        [17:0]   bmbAdapter_1_io_output_cmd_rData_context;
  reg                 bmbAdapter_1_io_output_cmd_rData_burstLast;
  reg        [1:0]    bmbAdapter_1_io_output_cmd_rData_length;
  wire                when_Stream_l393_2;
  wire                bmbAdapter_1_io_output_writeDataToken_m2sPipe_valid;
  wire                bmbAdapter_1_io_output_writeDataToken_m2sPipe_ready;
  wire                bmbAdapter_1_io_output_writeDataToken_m2sPipe_payload_valid;
  wire                bmbAdapter_1_io_output_writeDataToken_m2sPipe_payload_ready;
  reg                 bmbAdapter_1_io_output_writeDataToken_rValid;
  reg                 bmbAdapter_1_io_output_writeDataToken_rData_valid;
  reg                 bmbAdapter_1_io_output_writeDataToken_rData_ready;
  wire                when_Stream_l393_3;
  reg                 maketask_1_io_halt_regNext;

  BmbAdapter bmbAdapter_1 (
    .io_halt                                (maketask_1_io_halt_regNext                             ), //i
    .io_input_cmd_valid                     (io_bmb_cmd_valid                                       ), //i
    .io_input_cmd_ready                     (bmbAdapter_1_io_input_cmd_ready                        ), //o
    .io_input_cmd_payload_last              (io_bmb_cmd_payload_last                                ), //i
    .io_input_cmd_payload_fragment_opcode   (io_bmb_cmd_payload_fragment_opcode                     ), //i
    .io_input_cmd_payload_fragment_address  (io_bmb_cmd_payload_fragment_address[28:0]              ), //i
    .io_input_cmd_payload_fragment_length   (io_bmb_cmd_payload_fragment_length[9:0]                ), //i
    .io_input_cmd_payload_fragment_data     (io_bmb_cmd_payload_fragment_data[31:0]                 ), //i
    .io_input_cmd_payload_fragment_mask     (io_bmb_cmd_payload_fragment_mask[3:0]                  ), //i
    .io_input_cmd_payload_fragment_context  (io_bmb_cmd_payload_fragment_context[3:0]               ), //i
    .io_input_rsp_valid                     (bmbAdapter_1_io_input_rsp_valid                        ), //o
    .io_input_rsp_ready                     (io_bmb_rsp_ready                                       ), //i
    .io_input_rsp_payload_last              (bmbAdapter_1_io_input_rsp_payload_last                 ), //o
    .io_input_rsp_payload_fragment_opcode   (bmbAdapter_1_io_input_rsp_payload_fragment_opcode      ), //o
    .io_input_rsp_payload_fragment_data     (bmbAdapter_1_io_input_rsp_payload_fragment_data[31:0]  ), //o
    .io_input_rsp_payload_fragment_context  (bmbAdapter_1_io_input_rsp_payload_fragment_context[3:0]), //o
    .io_output_cmd_valid                    (bmbAdapter_1_io_output_cmd_valid                       ), //o
    .io_output_cmd_ready                    (bmbAdapter_1_io_output_cmd_ready                       ), //i
    .io_output_cmd_payload_write            (bmbAdapter_1_io_output_cmd_payload_write               ), //o
    .io_output_cmd_payload_address          (bmbAdapter_1_io_output_cmd_payload_address[28:0]       ), //o
    .io_output_cmd_payload_context          (bmbAdapter_1_io_output_cmd_payload_context[17:0]       ), //o
    .io_output_cmd_payload_burstLast        (bmbAdapter_1_io_output_cmd_payload_burstLast           ), //o
    .io_output_cmd_payload_length           (bmbAdapter_1_io_output_cmd_payload_length[1:0]         ), //o
    .io_output_writeData_valid              (bmbAdapter_1_io_output_writeData_valid                 ), //o
    .io_output_writeData_ready              (bmbAdapter_1_io_output_writeData_ready                 ), //i
    .io_output_writeData_payload_data       (bmbAdapter_1_io_output_writeData_payload_data[31:0]    ), //o
    .io_output_writeData_payload_mask       (bmbAdapter_1_io_output_writeData_payload_mask[3:0]     ), //o
    .io_output_writeDataToken_valid         (bmbAdapter_1_io_output_writeDataToken_valid            ), //o
    .io_output_writeDataToken_ready         (bmbAdapter_1_io_output_writeDataToken_ready            ), //i
    .io_output_writeDataToken_payload_valid (bmbAdapter_1_io_output_writeDataToken_payload_valid    ), //o
    .io_output_writeDataToken_payload_ready (bmbAdapter_1_io_output_writeDataToken_payload_ready    ), //o
    .io_output_rsp_valid                    (io_taskPort_rsp_m2sPipe_valid                          ), //i
    .io_output_rsp_ready                    (bmbAdapter_1_io_output_rsp_ready                       ), //o
    .io_output_rsp_payload_last             (io_taskPort_rsp_m2sPipe_payload_last                   ), //i
    .io_output_rsp_payload_fragment_data    (io_taskPort_rsp_m2sPipe_payload_fragment_data[31:0]    ), //i
    .io_output_rsp_payload_fragment_context (io_taskPort_rsp_m2sPipe_payload_fragment_context[17:0] ), //i
    .clk_out4                               (clk_out4                                               ), //i
    .rstN                                   (rstN                                                   )  //i
  );
  MakeTask maketask_1 (
    .io_cmd_valid                    (bmbAdapter_1_io_output_cmd_m2sPipe_valid                   ), //i
    .io_cmd_ready                    (maketask_1_io_cmd_ready                                    ), //o
    .io_cmd_payload_write            (bmbAdapter_1_io_output_cmd_m2sPipe_payload_write           ), //i
    .io_cmd_payload_address          (bmbAdapter_1_io_output_cmd_m2sPipe_payload_address[28:0]   ), //i
    .io_cmd_payload_context          (bmbAdapter_1_io_output_cmd_m2sPipe_payload_context[17:0]   ), //i
    .io_cmd_payload_burstLast        (bmbAdapter_1_io_output_cmd_m2sPipe_payload_burstLast       ), //i
    .io_cmd_payload_length           (bmbAdapter_1_io_output_cmd_m2sPipe_payload_length[1:0]     ), //i
    .io_halt                         (maketask_1_io_halt                                         ), //o
    .io_writeDataToken_valid         (bmbAdapter_1_io_output_writeDataToken_m2sPipe_valid        ), //i
    .io_writeDataToken_ready         (maketask_1_io_writeDataToken_ready                         ), //o
    .io_writeDataToken_payload_valid (bmbAdapter_1_io_output_writeDataToken_m2sPipe_payload_valid), //i
    .io_writeDataToken_payload_ready (bmbAdapter_1_io_output_writeDataToken_m2sPipe_payload_ready), //i
    .io_output_read                  (maketask_1_io_output_read                                  ), //o
    .io_output_write                 (maketask_1_io_output_write                                 ), //o
    .io_output_active                (maketask_1_io_output_active                                ), //o
    .io_output_precharge             (maketask_1_io_output_precharge                             ), //o
    .io_output_last                  (maketask_1_io_output_last                                  ), //o
    .io_output_address_byte          (maketask_1_io_output_address_byte                          ), //o
    .io_output_address_column        (maketask_1_io_output_address_column[9:0]                   ), //o
    .io_output_address_bank          (maketask_1_io_output_address_bank[2:0]                     ), //o
    .io_output_address_row           (maketask_1_io_output_address_row[14:0]                     ), //o
    .io_output_context               (maketask_1_io_output_context[17:0]                         ), //o
    .io_output_prechargeAll          (maketask_1_io_output_prechargeAll                          ), //o
    .io_output_refresh               (maketask_1_io_output_refresh                               ), //o
    .clk_out4                        (clk_out4                                                   ), //i
    .rstN                            (rstN                                                       )  //i
  );
  assign io_bmb_cmd_ready = bmbAdapter_1_io_input_cmd_ready;
  assign io_bmb_rsp_valid = bmbAdapter_1_io_input_rsp_valid;
  assign io_bmb_rsp_payload_last = bmbAdapter_1_io_input_rsp_payload_last;
  assign io_bmb_rsp_payload_fragment_opcode = bmbAdapter_1_io_input_rsp_payload_fragment_opcode;
  assign io_bmb_rsp_payload_fragment_data = bmbAdapter_1_io_input_rsp_payload_fragment_data;
  assign io_bmb_rsp_payload_fragment_context = bmbAdapter_1_io_input_rsp_payload_fragment_context;
  always @(*) begin
    bmbAdapter_1_io_output_writeData_ready = bmbAdapter_1_io_output_writeData_m2sPipe_ready;
    if(when_Stream_l393) begin
      bmbAdapter_1_io_output_writeData_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! bmbAdapter_1_io_output_writeData_m2sPipe_valid);
  assign bmbAdapter_1_io_output_writeData_m2sPipe_valid = bmbAdapter_1_io_output_writeData_rValid;
  assign bmbAdapter_1_io_output_writeData_m2sPipe_payload_data = bmbAdapter_1_io_output_writeData_rData_data;
  assign bmbAdapter_1_io_output_writeData_m2sPipe_payload_mask = bmbAdapter_1_io_output_writeData_rData_mask;
  assign io_taskPort_writeData_valid = bmbAdapter_1_io_output_writeData_m2sPipe_valid;
  assign bmbAdapter_1_io_output_writeData_m2sPipe_ready = io_taskPort_writeData_ready;
  assign io_taskPort_writeData_payload_data = bmbAdapter_1_io_output_writeData_m2sPipe_payload_data;
  assign io_taskPort_writeData_payload_mask = bmbAdapter_1_io_output_writeData_m2sPipe_payload_mask;
  always @(*) begin
    io_taskPort_rsp_ready = io_taskPort_rsp_m2sPipe_ready;
    if(when_Stream_l393_1) begin
      io_taskPort_rsp_ready = 1'b1;
    end
  end

  assign when_Stream_l393_1 = (! io_taskPort_rsp_m2sPipe_valid);
  assign io_taskPort_rsp_m2sPipe_valid = io_taskPort_rsp_rValid;
  assign io_taskPort_rsp_m2sPipe_payload_last = io_taskPort_rsp_rData_last;
  assign io_taskPort_rsp_m2sPipe_payload_fragment_data = io_taskPort_rsp_rData_fragment_data;
  assign io_taskPort_rsp_m2sPipe_payload_fragment_context = io_taskPort_rsp_rData_fragment_context;
  assign io_taskPort_rsp_m2sPipe_ready = bmbAdapter_1_io_output_rsp_ready;
  always @(*) begin
    bmbAdapter_1_io_output_cmd_ready = bmbAdapter_1_io_output_cmd_m2sPipe_ready;
    if(when_Stream_l393_2) begin
      bmbAdapter_1_io_output_cmd_ready = 1'b1;
    end
  end

  assign when_Stream_l393_2 = (! bmbAdapter_1_io_output_cmd_m2sPipe_valid);
  assign bmbAdapter_1_io_output_cmd_m2sPipe_valid = bmbAdapter_1_io_output_cmd_rValid;
  assign bmbAdapter_1_io_output_cmd_m2sPipe_payload_write = bmbAdapter_1_io_output_cmd_rData_write;
  assign bmbAdapter_1_io_output_cmd_m2sPipe_payload_address = bmbAdapter_1_io_output_cmd_rData_address;
  assign bmbAdapter_1_io_output_cmd_m2sPipe_payload_context = bmbAdapter_1_io_output_cmd_rData_context;
  assign bmbAdapter_1_io_output_cmd_m2sPipe_payload_burstLast = bmbAdapter_1_io_output_cmd_rData_burstLast;
  assign bmbAdapter_1_io_output_cmd_m2sPipe_payload_length = bmbAdapter_1_io_output_cmd_rData_length;
  assign bmbAdapter_1_io_output_cmd_m2sPipe_ready = maketask_1_io_cmd_ready;
  always @(*) begin
    bmbAdapter_1_io_output_writeDataToken_ready = bmbAdapter_1_io_output_writeDataToken_m2sPipe_ready;
    if(when_Stream_l393_3) begin
      bmbAdapter_1_io_output_writeDataToken_ready = 1'b1;
    end
  end

  assign when_Stream_l393_3 = (! bmbAdapter_1_io_output_writeDataToken_m2sPipe_valid);
  assign bmbAdapter_1_io_output_writeDataToken_m2sPipe_valid = bmbAdapter_1_io_output_writeDataToken_rValid;
  assign bmbAdapter_1_io_output_writeDataToken_m2sPipe_payload_valid = bmbAdapter_1_io_output_writeDataToken_rData_valid;
  assign bmbAdapter_1_io_output_writeDataToken_m2sPipe_payload_ready = bmbAdapter_1_io_output_writeDataToken_rData_ready;
  assign bmbAdapter_1_io_output_writeDataToken_m2sPipe_ready = maketask_1_io_writeDataToken_ready;
  assign io_taskPort_tasks_read = maketask_1_io_output_read;
  assign io_taskPort_tasks_write = maketask_1_io_output_write;
  assign io_taskPort_tasks_active = maketask_1_io_output_active;
  assign io_taskPort_tasks_precharge = maketask_1_io_output_precharge;
  assign io_taskPort_tasks_last = maketask_1_io_output_last;
  assign io_taskPort_tasks_address_byte = maketask_1_io_output_address_byte;
  assign io_taskPort_tasks_address_column = maketask_1_io_output_address_column;
  assign io_taskPort_tasks_address_bank = maketask_1_io_output_address_bank;
  assign io_taskPort_tasks_address_row = maketask_1_io_output_address_row;
  assign io_taskPort_tasks_context = maketask_1_io_output_context;
  assign io_taskPort_tasks_prechargeAll = maketask_1_io_output_prechargeAll;
  assign io_taskPort_tasks_refresh = maketask_1_io_output_refresh;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      bmbAdapter_1_io_output_writeData_rValid <= 1'b0;
      io_taskPort_rsp_rValid <= 1'b0;
      bmbAdapter_1_io_output_cmd_rValid <= 1'b0;
      bmbAdapter_1_io_output_writeDataToken_rValid <= 1'b0;
    end else begin
      if(bmbAdapter_1_io_output_writeData_ready) begin
        bmbAdapter_1_io_output_writeData_rValid <= bmbAdapter_1_io_output_writeData_valid;
      end
      if(io_taskPort_rsp_ready) begin
        io_taskPort_rsp_rValid <= io_taskPort_rsp_valid;
      end
      if(bmbAdapter_1_io_output_cmd_ready) begin
        bmbAdapter_1_io_output_cmd_rValid <= bmbAdapter_1_io_output_cmd_valid;
      end
      if(bmbAdapter_1_io_output_writeDataToken_ready) begin
        bmbAdapter_1_io_output_writeDataToken_rValid <= bmbAdapter_1_io_output_writeDataToken_valid;
      end
    end
  end

  always @(posedge clk_out4) begin
    if(bmbAdapter_1_io_output_writeData_ready) begin
      bmbAdapter_1_io_output_writeData_rData_data <= bmbAdapter_1_io_output_writeData_payload_data;
      bmbAdapter_1_io_output_writeData_rData_mask <= bmbAdapter_1_io_output_writeData_payload_mask;
    end
    if(io_taskPort_rsp_ready) begin
      io_taskPort_rsp_rData_last <= io_taskPort_rsp_payload_last;
      io_taskPort_rsp_rData_fragment_data <= io_taskPort_rsp_payload_fragment_data;
      io_taskPort_rsp_rData_fragment_context <= io_taskPort_rsp_payload_fragment_context;
    end
    if(bmbAdapter_1_io_output_cmd_ready) begin
      bmbAdapter_1_io_output_cmd_rData_write <= bmbAdapter_1_io_output_cmd_payload_write;
      bmbAdapter_1_io_output_cmd_rData_address <= bmbAdapter_1_io_output_cmd_payload_address;
      bmbAdapter_1_io_output_cmd_rData_context <= bmbAdapter_1_io_output_cmd_payload_context;
      bmbAdapter_1_io_output_cmd_rData_burstLast <= bmbAdapter_1_io_output_cmd_payload_burstLast;
      bmbAdapter_1_io_output_cmd_rData_length <= bmbAdapter_1_io_output_cmd_payload_length;
    end
    if(bmbAdapter_1_io_output_writeDataToken_ready) begin
      bmbAdapter_1_io_output_writeDataToken_rData_valid <= bmbAdapter_1_io_output_writeDataToken_payload_valid;
      bmbAdapter_1_io_output_writeDataToken_rData_ready <= bmbAdapter_1_io_output_writeDataToken_payload_ready;
    end
    maketask_1_io_halt_regNext <= maketask_1_io_halt;
  end


endmodule

module BufferCC_7 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          clk_out4,
  input  wire          adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_out4 or negedge adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1) begin
    if(!adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_6 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          clk_out1,
  input  wire          rstN
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module StreamFifoCC_1 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_last,
  input  wire [0:0]    io_push_payload_fragment_opcode,
  input  wire [31:0]   io_push_payload_fragment_data,
  input  wire [3:0]    io_push_payload_fragment_context,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_last,
  output wire [0:0]    io_pop_payload_fragment_opcode,
  output wire [31:0]   io_pop_payload_fragment_data,
  output wire [3:0]    io_pop_payload_fragment_context,
  output wire [6:0]    io_pushOccupancy,
  output wire [6:0]    io_popOccupancy,
  input  wire          clk_out4,
  input  wire          rstN,
  input  wire          clk_out1
);

  reg        [37:0]   ram_spinal_port1;
  wire       [6:0]    popToPushGray_buffercc_io_dataOut;
  wire                adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert_buffercc_io_dataOut;
  wire       [6:0]    pushToPopGray_buffercc_io_dataOut;
  wire       [6:0]    _zz_pushCC_pushPtrGray;
  wire       [5:0]    _zz_ram_port;
  wire       [37:0]   _zz_ram_port_1;
  wire       [6:0]    _zz_popCC_popPtrGray;
  reg                 _zz_1;
  wire       [6:0]    popToPushGray;
  wire       [6:0]    pushToPopGray;
  reg        [6:0]    pushCC_pushPtr;
  wire       [6:0]    pushCC_pushPtrPlus;
  wire                io_push_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [6:0]    pushCC_pushPtrGray;
  wire       [6:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                _zz_io_pushOccupancy;
  wire                _zz_io_pushOccupancy_1;
  wire                _zz_io_pushOccupancy_2;
  wire                _zz_io_pushOccupancy_3;
  wire                _zz_io_pushOccupancy_4;
  wire                _zz_io_pushOccupancy_5;
  wire                adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert;
  wire                adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized;
  reg        [6:0]    popCC_popPtr;
  (* keep , syn_keep *) wire       [6:0]    popCC_popPtrPlus /* synthesis syn_keep = 1 */ ;
  wire       [6:0]    popCC_popPtrGray;
  wire       [6:0]    popCC_pushPtrGray;
  wire                popCC_addressGen_valid;
  reg                 popCC_addressGen_ready;
  wire       [5:0]    popCC_addressGen_payload;
  wire                popCC_empty;
  wire                popCC_addressGen_fire;
  wire                popCC_readArbitation_valid;
  wire                popCC_readArbitation_ready;
  wire       [5:0]    popCC_readArbitation_payload;
  reg                 popCC_addressGen_rValid;
  reg        [5:0]    popCC_addressGen_rData;
  wire                when_Stream_l393;
  wire                popCC_readPort_cmd_valid;
  wire       [5:0]    popCC_readPort_cmd_payload;
  wire                popCC_readPort_rsp_last;
  wire       [0:0]    popCC_readPort_rsp_fragment_opcode;
  wire       [31:0]   popCC_readPort_rsp_fragment_data;
  wire       [3:0]    popCC_readPort_rsp_fragment_context;
  wire       [37:0]   _zz_popCC_readPort_rsp_last;
  wire       [36:0]   _zz_popCC_readPort_rsp_fragment_opcode;
  wire                popCC_readArbitation_translated_valid;
  wire                popCC_readArbitation_translated_ready;
  wire                popCC_readArbitation_translated_payload_last;
  wire       [0:0]    popCC_readArbitation_translated_payload_fragment_opcode;
  wire       [31:0]   popCC_readArbitation_translated_payload_fragment_data;
  wire       [3:0]    popCC_readArbitation_translated_payload_fragment_context;
  wire                popCC_readArbitation_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [6:0]    popCC_ptrToPush;
  reg        [6:0]    popCC_ptrToOccupancy;
  wire                _zz_io_popOccupancy;
  wire                _zz_io_popOccupancy_1;
  wire                _zz_io_popOccupancy_2;
  wire                _zz_io_popOccupancy_3;
  wire                _zz_io_popOccupancy_4;
  wire                _zz_io_popOccupancy_5;
  reg [37:0] ram [0:63];

  assign _zz_pushCC_pushPtrGray = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_ram_port = pushCC_pushPtr[5:0];
  assign _zz_popCC_popPtrGray = (popCC_popPtr >>> 1'b1);
  assign _zz_ram_port_1 = {{io_push_payload_fragment_context,{io_push_payload_fragment_data,io_push_payload_fragment_opcode}},io_push_payload_last};
  always @(posedge clk_out4) begin
    if(_zz_1) begin
      ram[_zz_ram_port] <= _zz_ram_port_1;
    end
  end

  always @(posedge clk_out1) begin
    if(popCC_readPort_cmd_valid) begin
      ram_spinal_port1 <= ram[popCC_readPort_cmd_payload];
    end
  end

  (* keep_hierarchy = "TRUE" *) BufferCC_3 popToPushGray_buffercc (
    .io_dataIn  (popToPushGray[6:0]                    ), //i
    .io_dataOut (popToPushGray_buffercc_io_dataOut[6:0]), //o
    .clk_out4   (clk_out4                              ), //i
    .rstN       (rstN                                  )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_4 adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert_buffercc (
    .io_dataIn  (adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert                    ), //i
    .io_dataOut (adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert_buffercc_io_dataOut), //o
    .clk_out1   (clk_out1                                                                                                                ), //i
    .rstN       (rstN                                                                                                                    )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_5 pushToPopGray_buffercc (
    .io_dataIn                                                                                 (pushToPopGray[6:0]                                                                       ), //i
    .io_dataOut                                                                                (pushToPopGray_buffercc_io_dataOut[6:0]                                                   ), //o
    .clk_out1                                                                                  (clk_out1                                                                                 ), //i
    .adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized (adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized)  //i
  );
  always @(*) begin
    _zz_1 = 1'b0;
    if(io_push_fire) begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 7'h01);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[6 : 5] == (~ pushCC_popPtrGray[6 : 5])) && (pushCC_pushPtrGray[4 : 0] == pushCC_popPtrGray[4 : 0]));
  assign io_push_ready = (! pushCC_full);
  assign _zz_io_pushOccupancy = (pushCC_popPtrGray[1] ^ _zz_io_pushOccupancy_1);
  assign _zz_io_pushOccupancy_1 = (pushCC_popPtrGray[2] ^ _zz_io_pushOccupancy_2);
  assign _zz_io_pushOccupancy_2 = (pushCC_popPtrGray[3] ^ _zz_io_pushOccupancy_3);
  assign _zz_io_pushOccupancy_3 = (pushCC_popPtrGray[4] ^ _zz_io_pushOccupancy_4);
  assign _zz_io_pushOccupancy_4 = (pushCC_popPtrGray[5] ^ _zz_io_pushOccupancy_5);
  assign _zz_io_pushOccupancy_5 = pushCC_popPtrGray[6];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_io_pushOccupancy_5,{_zz_io_pushOccupancy_4,{_zz_io_pushOccupancy_3,{_zz_io_pushOccupancy_2,{_zz_io_pushOccupancy_1,{_zz_io_pushOccupancy,(pushCC_popPtrGray[0] ^ _zz_io_pushOccupancy)}}}}}});
  assign adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert = (1'b1 ^ 1'b0);
  assign adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized = adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert_buffercc_io_dataOut;
  assign popCC_popPtrPlus = (popCC_popPtr + 7'h01);
  assign popCC_popPtrGray = (_zz_popCC_popPtrGray ^ popCC_popPtr);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign popCC_addressGen_valid = (! popCC_empty);
  assign popCC_addressGen_payload = popCC_popPtr[5:0];
  assign popCC_addressGen_fire = (popCC_addressGen_valid && popCC_addressGen_ready);
  always @(*) begin
    popCC_addressGen_ready = popCC_readArbitation_ready;
    if(when_Stream_l393) begin
      popCC_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! popCC_readArbitation_valid);
  assign popCC_readArbitation_valid = popCC_addressGen_rValid;
  assign popCC_readArbitation_payload = popCC_addressGen_rData;
  assign _zz_popCC_readPort_rsp_last = ram_spinal_port1;
  assign _zz_popCC_readPort_rsp_fragment_opcode = _zz_popCC_readPort_rsp_last[37 : 1];
  assign popCC_readPort_rsp_last = _zz_popCC_readPort_rsp_last[0];
  assign popCC_readPort_rsp_fragment_opcode = _zz_popCC_readPort_rsp_fragment_opcode[0 : 0];
  assign popCC_readPort_rsp_fragment_data = _zz_popCC_readPort_rsp_fragment_opcode[32 : 1];
  assign popCC_readPort_rsp_fragment_context = _zz_popCC_readPort_rsp_fragment_opcode[36 : 33];
  assign popCC_readPort_cmd_valid = popCC_addressGen_fire;
  assign popCC_readPort_cmd_payload = popCC_addressGen_payload;
  assign popCC_readArbitation_translated_valid = popCC_readArbitation_valid;
  assign popCC_readArbitation_ready = popCC_readArbitation_translated_ready;
  assign popCC_readArbitation_translated_payload_last = popCC_readPort_rsp_last;
  assign popCC_readArbitation_translated_payload_fragment_opcode = popCC_readPort_rsp_fragment_opcode;
  assign popCC_readArbitation_translated_payload_fragment_data = popCC_readPort_rsp_fragment_data;
  assign popCC_readArbitation_translated_payload_fragment_context = popCC_readPort_rsp_fragment_context;
  assign io_pop_valid = popCC_readArbitation_translated_valid;
  assign popCC_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_last = popCC_readArbitation_translated_payload_last;
  assign io_pop_payload_fragment_opcode = popCC_readArbitation_translated_payload_fragment_opcode;
  assign io_pop_payload_fragment_data = popCC_readArbitation_translated_payload_fragment_data;
  assign io_pop_payload_fragment_context = popCC_readArbitation_translated_payload_fragment_context;
  assign popCC_readArbitation_fire = (popCC_readArbitation_valid && popCC_readArbitation_ready);
  assign _zz_io_popOccupancy = (popCC_pushPtrGray[1] ^ _zz_io_popOccupancy_1);
  assign _zz_io_popOccupancy_1 = (popCC_pushPtrGray[2] ^ _zz_io_popOccupancy_2);
  assign _zz_io_popOccupancy_2 = (popCC_pushPtrGray[3] ^ _zz_io_popOccupancy_3);
  assign _zz_io_popOccupancy_3 = (popCC_pushPtrGray[4] ^ _zz_io_popOccupancy_4);
  assign _zz_io_popOccupancy_4 = (popCC_pushPtrGray[5] ^ _zz_io_popOccupancy_5);
  assign _zz_io_popOccupancy_5 = popCC_pushPtrGray[6];
  assign io_popOccupancy = ({_zz_io_popOccupancy_5,{_zz_io_popOccupancy_4,{_zz_io_popOccupancy_3,{_zz_io_popOccupancy_2,{_zz_io_popOccupancy_1,{_zz_io_popOccupancy,(popCC_pushPtrGray[0] ^ _zz_io_popOccupancy)}}}}}} - popCC_ptrToOccupancy);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_ptrToPush;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      pushCC_pushPtr <= 7'h0;
      pushCC_pushPtrGray <= 7'h0;
    end else begin
      if(io_push_fire) begin
        pushCC_pushPtrGray <= (_zz_pushCC_pushPtrGray ^ pushCC_pushPtrPlus);
      end
      if(io_push_fire) begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @(posedge clk_out1 or negedge adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized) begin
    if(!adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized) begin
      popCC_popPtr <= 7'h0;
      popCC_addressGen_rValid <= 1'b0;
      popCC_ptrToPush <= 7'h0;
      popCC_ptrToOccupancy <= 7'h0;
    end else begin
      if(popCC_addressGen_fire) begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
      if(popCC_addressGen_ready) begin
        popCC_addressGen_rValid <= popCC_addressGen_valid;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToPush <= popCC_popPtrGray;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToOccupancy <= popCC_popPtr;
      end
    end
  end

  always @(posedge clk_out1) begin
    if(popCC_addressGen_ready) begin
      popCC_addressGen_rData <= popCC_addressGen_payload;
    end
  end


endmodule

module StreamFifoCC (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_last,
  input  wire [0:0]    io_push_payload_fragment_opcode,
  input  wire [28:0]   io_push_payload_fragment_address,
  input  wire [9:0]    io_push_payload_fragment_length,
  input  wire [31:0]   io_push_payload_fragment_data,
  input  wire [3:0]    io_push_payload_fragment_mask,
  input  wire [3:0]    io_push_payload_fragment_context,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_last,
  output wire [0:0]    io_pop_payload_fragment_opcode,
  output wire [28:0]   io_pop_payload_fragment_address,
  output wire [9:0]    io_pop_payload_fragment_length,
  output wire [31:0]   io_pop_payload_fragment_data,
  output wire [3:0]    io_pop_payload_fragment_mask,
  output wire [3:0]    io_pop_payload_fragment_context,
  output wire [10:0]   io_pushOccupancy,
  output wire [10:0]   io_popOccupancy,
  input  wire          clk_out1,
  input  wire          rstN,
  input  wire          clk_out4,
  output wire          adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1
);

  reg        [80:0]   ram_spinal_port1;
  wire       [10:0]   popToPushGray_buffercc_io_dataOut;
  wire                adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert_buffercc_io_dataOut;
  wire       [10:0]   pushToPopGray_buffercc_io_dataOut;
  wire       [10:0]   _zz_pushCC_pushPtrGray;
  wire       [9:0]    _zz_ram_port;
  wire       [80:0]   _zz_ram_port_1;
  wire       [0:0]    _zz_io_pushOccupancy_10;
  wire       [0:0]    _zz_io_pushOccupancy_11;
  wire       [10:0]   _zz_popCC_popPtrGray;
  wire       [0:0]    _zz_io_popOccupancy_10;
  wire       [0:0]    _zz_io_popOccupancy_11;
  reg                 _zz_1;
  wire       [10:0]   popToPushGray;
  wire       [10:0]   pushToPopGray;
  reg        [10:0]   pushCC_pushPtr;
  wire       [10:0]   pushCC_pushPtrPlus;
  wire                io_push_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [10:0]   pushCC_pushPtrGray;
  wire       [10:0]   pushCC_popPtrGray;
  wire                pushCC_full;
  wire                _zz_io_pushOccupancy;
  wire                _zz_io_pushOccupancy_1;
  wire                _zz_io_pushOccupancy_2;
  wire                _zz_io_pushOccupancy_3;
  wire                _zz_io_pushOccupancy_4;
  wire                _zz_io_pushOccupancy_5;
  wire                _zz_io_pushOccupancy_6;
  wire                _zz_io_pushOccupancy_7;
  wire                _zz_io_pushOccupancy_8;
  wire                _zz_io_pushOccupancy_9;
  wire                adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert;
  wire                adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized;
  reg        [10:0]   popCC_popPtr;
  (* keep , syn_keep *) wire       [10:0]   popCC_popPtrPlus /* synthesis syn_keep = 1 */ ;
  wire       [10:0]   popCC_popPtrGray;
  wire       [10:0]   popCC_pushPtrGray;
  wire                popCC_addressGen_valid;
  reg                 popCC_addressGen_ready;
  wire       [9:0]    popCC_addressGen_payload;
  wire                popCC_empty;
  wire                popCC_addressGen_fire;
  wire                popCC_readArbitation_valid;
  wire                popCC_readArbitation_ready;
  wire       [9:0]    popCC_readArbitation_payload;
  reg                 popCC_addressGen_rValid;
  reg        [9:0]    popCC_addressGen_rData;
  wire                when_Stream_l393;
  wire                popCC_readPort_cmd_valid;
  wire       [9:0]    popCC_readPort_cmd_payload;
  wire                popCC_readPort_rsp_last;
  wire       [0:0]    popCC_readPort_rsp_fragment_opcode;
  wire       [28:0]   popCC_readPort_rsp_fragment_address;
  wire       [9:0]    popCC_readPort_rsp_fragment_length;
  wire       [31:0]   popCC_readPort_rsp_fragment_data;
  wire       [3:0]    popCC_readPort_rsp_fragment_mask;
  wire       [3:0]    popCC_readPort_rsp_fragment_context;
  wire       [80:0]   _zz_popCC_readPort_rsp_last;
  wire       [79:0]   _zz_popCC_readPort_rsp_fragment_opcode;
  wire                popCC_readArbitation_translated_valid;
  wire                popCC_readArbitation_translated_ready;
  wire                popCC_readArbitation_translated_payload_last;
  wire       [0:0]    popCC_readArbitation_translated_payload_fragment_opcode;
  wire       [28:0]   popCC_readArbitation_translated_payload_fragment_address;
  wire       [9:0]    popCC_readArbitation_translated_payload_fragment_length;
  wire       [31:0]   popCC_readArbitation_translated_payload_fragment_data;
  wire       [3:0]    popCC_readArbitation_translated_payload_fragment_mask;
  wire       [3:0]    popCC_readArbitation_translated_payload_fragment_context;
  wire                popCC_readArbitation_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [10:0]   popCC_ptrToPush;
  reg        [10:0]   popCC_ptrToOccupancy;
  wire                _zz_io_popOccupancy;
  wire                _zz_io_popOccupancy_1;
  wire                _zz_io_popOccupancy_2;
  wire                _zz_io_popOccupancy_3;
  wire                _zz_io_popOccupancy_4;
  wire                _zz_io_popOccupancy_5;
  wire                _zz_io_popOccupancy_6;
  wire                _zz_io_popOccupancy_7;
  wire                _zz_io_popOccupancy_8;
  wire                _zz_io_popOccupancy_9;
  reg [80:0] ram [0:1023];

  assign _zz_pushCC_pushPtrGray = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_ram_port = pushCC_pushPtr[9:0];
  assign _zz_popCC_popPtrGray = (popCC_popPtr >>> 1'b1);
  assign _zz_ram_port_1 = {{io_push_payload_fragment_context,{io_push_payload_fragment_mask,{io_push_payload_fragment_data,{io_push_payload_fragment_length,{io_push_payload_fragment_address,io_push_payload_fragment_opcode}}}}},io_push_payload_last};
  assign _zz_io_pushOccupancy_10 = _zz_io_pushOccupancy;
  assign _zz_io_pushOccupancy_11 = (pushCC_popPtrGray[0] ^ _zz_io_pushOccupancy);
  assign _zz_io_popOccupancy_10 = _zz_io_popOccupancy;
  assign _zz_io_popOccupancy_11 = (popCC_pushPtrGray[0] ^ _zz_io_popOccupancy);
  always @(posedge clk_out1) begin
    if(_zz_1) begin
      ram[_zz_ram_port] <= _zz_ram_port_1;
    end
  end

  always @(posedge clk_out4) begin
    if(popCC_readPort_cmd_valid) begin
      ram_spinal_port1 <= ram[popCC_readPort_cmd_payload];
    end
  end

  (* keep_hierarchy = "TRUE" *) BufferCC popToPushGray_buffercc (
    .io_dataIn  (popToPushGray[10:0]                    ), //i
    .io_dataOut (popToPushGray_buffercc_io_dataOut[10:0]), //o
    .clk_out1   (clk_out1                               ), //i
    .rstN       (rstN                                   )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_1 adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert_buffercc (
    .io_dataIn  (adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert                    ), //i
    .io_dataOut (adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert_buffercc_io_dataOut), //o
    .clk_out4   (clk_out4                                                                                                                ), //i
    .rstN       (rstN                                                                                                                    )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_2 pushToPopGray_buffercc (
    .io_dataIn                                                                                 (pushToPopGray[10:0]                                                                      ), //i
    .io_dataOut                                                                                (pushToPopGray_buffercc_io_dataOut[10:0]                                                  ), //o
    .clk_out4                                                                                  (clk_out4                                                                                 ), //i
    .adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized (adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized)  //i
  );
  always @(*) begin
    _zz_1 = 1'b0;
    if(io_push_fire) begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 11'h001);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[10 : 9] == (~ pushCC_popPtrGray[10 : 9])) && (pushCC_pushPtrGray[8 : 0] == pushCC_popPtrGray[8 : 0]));
  assign io_push_ready = (! pushCC_full);
  assign _zz_io_pushOccupancy = (pushCC_popPtrGray[1] ^ _zz_io_pushOccupancy_1);
  assign _zz_io_pushOccupancy_1 = (pushCC_popPtrGray[2] ^ _zz_io_pushOccupancy_2);
  assign _zz_io_pushOccupancy_2 = (pushCC_popPtrGray[3] ^ _zz_io_pushOccupancy_3);
  assign _zz_io_pushOccupancy_3 = (pushCC_popPtrGray[4] ^ _zz_io_pushOccupancy_4);
  assign _zz_io_pushOccupancy_4 = (pushCC_popPtrGray[5] ^ _zz_io_pushOccupancy_5);
  assign _zz_io_pushOccupancy_5 = (pushCC_popPtrGray[6] ^ _zz_io_pushOccupancy_6);
  assign _zz_io_pushOccupancy_6 = (pushCC_popPtrGray[7] ^ _zz_io_pushOccupancy_7);
  assign _zz_io_pushOccupancy_7 = (pushCC_popPtrGray[8] ^ _zz_io_pushOccupancy_8);
  assign _zz_io_pushOccupancy_8 = (pushCC_popPtrGray[9] ^ _zz_io_pushOccupancy_9);
  assign _zz_io_pushOccupancy_9 = pushCC_popPtrGray[10];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_io_pushOccupancy_9,{_zz_io_pushOccupancy_8,{_zz_io_pushOccupancy_7,{_zz_io_pushOccupancy_6,{_zz_io_pushOccupancy_5,{_zz_io_pushOccupancy_4,{_zz_io_pushOccupancy_3,{_zz_io_pushOccupancy_2,{_zz_io_pushOccupancy_1,{_zz_io_pushOccupancy_10,_zz_io_pushOccupancy_11}}}}}}}}}});
  assign adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert = (1'b1 ^ 1'b0);
  assign adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized = adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_asyncAssertSyncDeassert_buffercc_io_dataOut;
  assign popCC_popPtrPlus = (popCC_popPtr + 11'h001);
  assign popCC_popPtrGray = (_zz_popCC_popPtrGray ^ popCC_popPtr);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign popCC_addressGen_valid = (! popCC_empty);
  assign popCC_addressGen_payload = popCC_popPtr[9:0];
  assign popCC_addressGen_fire = (popCC_addressGen_valid && popCC_addressGen_ready);
  always @(*) begin
    popCC_addressGen_ready = popCC_readArbitation_ready;
    if(when_Stream_l393) begin
      popCC_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! popCC_readArbitation_valid);
  assign popCC_readArbitation_valid = popCC_addressGen_rValid;
  assign popCC_readArbitation_payload = popCC_addressGen_rData;
  assign _zz_popCC_readPort_rsp_last = ram_spinal_port1;
  assign _zz_popCC_readPort_rsp_fragment_opcode = _zz_popCC_readPort_rsp_last[80 : 1];
  assign popCC_readPort_rsp_last = _zz_popCC_readPort_rsp_last[0];
  assign popCC_readPort_rsp_fragment_opcode = _zz_popCC_readPort_rsp_fragment_opcode[0 : 0];
  assign popCC_readPort_rsp_fragment_address = _zz_popCC_readPort_rsp_fragment_opcode[29 : 1];
  assign popCC_readPort_rsp_fragment_length = _zz_popCC_readPort_rsp_fragment_opcode[39 : 30];
  assign popCC_readPort_rsp_fragment_data = _zz_popCC_readPort_rsp_fragment_opcode[71 : 40];
  assign popCC_readPort_rsp_fragment_mask = _zz_popCC_readPort_rsp_fragment_opcode[75 : 72];
  assign popCC_readPort_rsp_fragment_context = _zz_popCC_readPort_rsp_fragment_opcode[79 : 76];
  assign popCC_readPort_cmd_valid = popCC_addressGen_fire;
  assign popCC_readPort_cmd_payload = popCC_addressGen_payload;
  assign popCC_readArbitation_translated_valid = popCC_readArbitation_valid;
  assign popCC_readArbitation_ready = popCC_readArbitation_translated_ready;
  assign popCC_readArbitation_translated_payload_last = popCC_readPort_rsp_last;
  assign popCC_readArbitation_translated_payload_fragment_opcode = popCC_readPort_rsp_fragment_opcode;
  assign popCC_readArbitation_translated_payload_fragment_address = popCC_readPort_rsp_fragment_address;
  assign popCC_readArbitation_translated_payload_fragment_length = popCC_readPort_rsp_fragment_length;
  assign popCC_readArbitation_translated_payload_fragment_data = popCC_readPort_rsp_fragment_data;
  assign popCC_readArbitation_translated_payload_fragment_mask = popCC_readPort_rsp_fragment_mask;
  assign popCC_readArbitation_translated_payload_fragment_context = popCC_readPort_rsp_fragment_context;
  assign io_pop_valid = popCC_readArbitation_translated_valid;
  assign popCC_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_last = popCC_readArbitation_translated_payload_last;
  assign io_pop_payload_fragment_opcode = popCC_readArbitation_translated_payload_fragment_opcode;
  assign io_pop_payload_fragment_address = popCC_readArbitation_translated_payload_fragment_address;
  assign io_pop_payload_fragment_length = popCC_readArbitation_translated_payload_fragment_length;
  assign io_pop_payload_fragment_data = popCC_readArbitation_translated_payload_fragment_data;
  assign io_pop_payload_fragment_mask = popCC_readArbitation_translated_payload_fragment_mask;
  assign io_pop_payload_fragment_context = popCC_readArbitation_translated_payload_fragment_context;
  assign popCC_readArbitation_fire = (popCC_readArbitation_valid && popCC_readArbitation_ready);
  assign _zz_io_popOccupancy = (popCC_pushPtrGray[1] ^ _zz_io_popOccupancy_1);
  assign _zz_io_popOccupancy_1 = (popCC_pushPtrGray[2] ^ _zz_io_popOccupancy_2);
  assign _zz_io_popOccupancy_2 = (popCC_pushPtrGray[3] ^ _zz_io_popOccupancy_3);
  assign _zz_io_popOccupancy_3 = (popCC_pushPtrGray[4] ^ _zz_io_popOccupancy_4);
  assign _zz_io_popOccupancy_4 = (popCC_pushPtrGray[5] ^ _zz_io_popOccupancy_5);
  assign _zz_io_popOccupancy_5 = (popCC_pushPtrGray[6] ^ _zz_io_popOccupancy_6);
  assign _zz_io_popOccupancy_6 = (popCC_pushPtrGray[7] ^ _zz_io_popOccupancy_7);
  assign _zz_io_popOccupancy_7 = (popCC_pushPtrGray[8] ^ _zz_io_popOccupancy_8);
  assign _zz_io_popOccupancy_8 = (popCC_pushPtrGray[9] ^ _zz_io_popOccupancy_9);
  assign _zz_io_popOccupancy_9 = popCC_pushPtrGray[10];
  assign io_popOccupancy = ({_zz_io_popOccupancy_9,{_zz_io_popOccupancy_8,{_zz_io_popOccupancy_7,{_zz_io_popOccupancy_6,{_zz_io_popOccupancy_5,{_zz_io_popOccupancy_4,{_zz_io_popOccupancy_3,{_zz_io_popOccupancy_2,{_zz_io_popOccupancy_1,{_zz_io_popOccupancy_10,_zz_io_popOccupancy_11}}}}}}}}}} - popCC_ptrToOccupancy);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_ptrToPush;
  assign adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized_1 = adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized;
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      pushCC_pushPtr <= 11'h0;
      pushCC_pushPtrGray <= 11'h0;
    end else begin
      if(io_push_fire) begin
        pushCC_pushPtrGray <= (_zz_pushCC_pushPtrGray ^ pushCC_pushPtrPlus);
      end
      if(io_push_fire) begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @(posedge clk_out4 or negedge adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized) begin
    if(!adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized) begin
      popCC_popPtr <= 11'h0;
      popCC_addressGen_rValid <= 1'b0;
      popCC_ptrToPush <= 11'h0;
      popCC_ptrToOccupancy <= 11'h0;
    end else begin
      if(popCC_addressGen_fire) begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
      if(popCC_addressGen_ready) begin
        popCC_addressGen_rValid <= popCC_addressGen_valid;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToPush <= popCC_popPtrGray;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToOccupancy <= popCC_popPtr;
      end
    end
  end

  always @(posedge clk_out4) begin
    if(popCC_addressGen_ready) begin
      popCC_addressGen_rData <= popCC_addressGen_payload;
    end
  end


endmodule

module StreamFifo_1 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload_data,
  input  wire          io_push_payload_last,
  input  wire [0:0]    io_push_payload_user,
  output reg           io_pop_valid,
  input  wire          io_pop_ready,
  output reg  [7:0]    io_pop_payload_data,
  output reg           io_pop_payload_last,
  output reg  [0:0]    io_pop_payload_user,
  input  wire          io_flush,
  output wire [8:0]    io_occupancy,
  output wire [8:0]    io_availability,
  input  wire          clk_out1,
  input  wire          rstN
);

  wire       [9:0]    logic_ram_spinal_port1;
  wire       [9:0]    _zz_logic_ram_port;
  reg                 _zz_1;
  reg                 logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [8:0]    logic_ptr_push;
  reg        [8:0]    logic_ptr_pop;
  wire       [8:0]    logic_ptr_occupancy;
  wire       [8:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [7:0]    logic_push_onRam_write_payload_address;
  wire       [7:0]    logic_push_onRam_write_payload_data_data;
  wire                logic_push_onRam_write_payload_data_last;
  wire       [0:0]    logic_push_onRam_write_payload_data_user;
  wire                logic_pop_addressGen_valid;
  wire                logic_pop_addressGen_ready;
  wire       [7:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire       [7:0]    logic_pop_async_readed_data;
  wire                logic_pop_async_readed_last;
  wire       [0:0]    logic_pop_async_readed_user;
  wire       [9:0]    _zz_logic_pop_async_readed_data;
  wire                logic_pop_addressGen_translated_valid;
  wire                logic_pop_addressGen_translated_ready;
  wire       [7:0]    logic_pop_addressGen_translated_payload_data;
  wire                logic_pop_addressGen_translated_payload_last;
  wire       [0:0]    logic_pop_addressGen_translated_payload_user;
  (* ram_style = "distributed" *) reg [9:0] logic_ram [0:255];

  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_user,{logic_push_onRam_write_payload_data_last,logic_push_onRam_write_payload_data_data}};
  always @(posedge clk_out1) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  assign logic_ram_spinal_port1 = logic_ram[logic_pop_addressGen_payload];
  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 9'h100) == 9'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  always @(*) begin
    logic_ptr_doPush = io_push_fire;
    if(logic_ptr_empty) begin
      if(io_pop_ready) begin
        logic_ptr_doPush = 1'b0;
      end
    end
  end

  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[7:0];
  assign logic_push_onRam_write_payload_data_data = io_push_payload_data;
  assign logic_push_onRam_write_payload_data_last = io_push_payload_last;
  assign logic_push_onRam_write_payload_data_user[0 : 0] = io_push_payload_user[0 : 0];
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[7:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  assign _zz_logic_pop_async_readed_data = logic_ram_spinal_port1;
  assign logic_pop_async_readed_data = _zz_logic_pop_async_readed_data[7 : 0];
  assign logic_pop_async_readed_last = _zz_logic_pop_async_readed_data[8];
  assign logic_pop_async_readed_user = _zz_logic_pop_async_readed_data[9 : 9];
  assign logic_pop_addressGen_translated_valid = logic_pop_addressGen_valid;
  assign logic_pop_addressGen_ready = logic_pop_addressGen_translated_ready;
  assign logic_pop_addressGen_translated_payload_data = logic_pop_async_readed_data;
  assign logic_pop_addressGen_translated_payload_last = logic_pop_async_readed_last;
  assign logic_pop_addressGen_translated_payload_user[0 : 0] = logic_pop_async_readed_user[0 : 0];
  always @(*) begin
    io_pop_valid = logic_pop_addressGen_translated_valid;
    if(logic_ptr_empty) begin
      io_pop_valid = io_push_valid;
    end
  end

  assign logic_pop_addressGen_translated_ready = io_pop_ready;
  always @(*) begin
    io_pop_payload_data = logic_pop_addressGen_translated_payload_data;
    if(logic_ptr_empty) begin
      io_pop_payload_data = io_push_payload_data;
    end
  end

  always @(*) begin
    io_pop_payload_last = logic_pop_addressGen_translated_payload_last;
    if(logic_ptr_empty) begin
      io_pop_payload_last = io_push_payload_last;
    end
  end

  always @(*) begin
    io_pop_payload_user[0 : 0] = logic_pop_addressGen_translated_payload_user[0 : 0];
    if(logic_ptr_empty) begin
      io_pop_payload_user[0 : 0] = io_push_payload_user[0 : 0];
    end
  end

  assign logic_ptr_popOnIo = logic_ptr_pop;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (9'h100 - logic_ptr_occupancy);
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      logic_ptr_push <= 9'h0;
      logic_ptr_pop <= 9'h0;
      logic_ptr_wentUp <= 1'b0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 9'h001);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 9'h001);
      end
      if(io_flush) begin
        logic_ptr_push <= 9'h0;
        logic_ptr_pop <= 9'h0;
      end
    end
  end


endmodule

module RdAlignment (
  input  wire          io_phaseClear,
  input  wire          io_dfiRd_0_rddataValid,
  input  wire [31:0]   io_dfiRd_0_rddata,
  output wire          io_idfiRd_0_valid,
  input  wire          io_idfiRd_0_ready,
  output wire          io_idfiRd_0_payload_last,
  output wire [31:0]   io_idfiRd_0_payload_fragment_rdData,
  input  wire          clk_out4,
  input  wire          rstN
);

  reg                 rdDataFifos_0_rdDataFifo_io_flush;
  wire                rdDataFifos_0_rdDataFifo_io_push_ready;
  wire                rdDataFifos_0_rdDataFifo_io_pop_valid;
  wire                rdDataFifos_0_rdDataFifo_io_pop_payload_last;
  wire       [31:0]   rdDataFifos_0_rdDataFifo_io_pop_payload_fragment_rdData;
  wire       [2:0]    rdDataFifos_0_rdDataFifo_io_occupancy;
  wire       [2:0]    rdDataFifos_0_rdDataFifo_io_availability;
  wire                rdDataTemp_0_valid;
  wire                rdDataTemp_0_ready;
  wire                rdDataTemp_0_payload_last;
  reg        [31:0]   rdDataTemp_0_payload_fragment_rdData;
  reg        [0:0]    rdDataPhase;
  wire                rdDataTemp_0_fire;
  reg        [31:0]   _zz_rdDataTemp_0_payload_fragment_rdData;
  wire                readyForPop;
  reg                 readyForPop_regNext;

  StreamFifo_6 rdDataFifos_0_rdDataFifo (
    .io_push_valid                   (rdDataTemp_0_valid                                           ), //i
    .io_push_ready                   (rdDataFifos_0_rdDataFifo_io_push_ready                       ), //o
    .io_push_payload_last            (rdDataTemp_0_payload_last                                    ), //i
    .io_push_payload_fragment_rdData (rdDataTemp_0_payload_fragment_rdData[31:0]                   ), //i
    .io_pop_valid                    (rdDataFifos_0_rdDataFifo_io_pop_valid                        ), //o
    .io_pop_ready                    (readyForPop_regNext                                          ), //i
    .io_pop_payload_last             (rdDataFifos_0_rdDataFifo_io_pop_payload_last                 ), //o
    .io_pop_payload_fragment_rdData  (rdDataFifos_0_rdDataFifo_io_pop_payload_fragment_rdData[31:0]), //o
    .io_flush                        (rdDataFifos_0_rdDataFifo_io_flush                            ), //i
    .io_occupancy                    (rdDataFifos_0_rdDataFifo_io_occupancy[2:0]                   ), //o
    .io_availability                 (rdDataFifos_0_rdDataFifo_io_availability[2:0]                ), //o
    .clk_out4                        (clk_out4                                                     ), //i
    .rstN                            (rstN                                                         )  //i
  );
  assign rdDataTemp_0_payload_last = 1'b0;
  assign rdDataTemp_0_valid = io_dfiRd_0_rddataValid;
  always @(*) begin
    rdDataTemp_0_payload_fragment_rdData = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    if(rdDataTemp_0_fire) begin
      rdDataTemp_0_payload_fragment_rdData = _zz_rdDataTemp_0_payload_fragment_rdData;
    end
  end

  assign rdDataTemp_0_fire = (rdDataTemp_0_valid && rdDataTemp_0_ready);
  always @(*) begin
    _zz_rdDataTemp_0_payload_fragment_rdData = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    _zz_rdDataTemp_0_payload_fragment_rdData = io_dfiRd_0_rddata;
  end

  always @(*) begin
    rdDataFifos_0_rdDataFifo_io_flush = 1'b0;
    if(io_phaseClear) begin
      rdDataFifos_0_rdDataFifo_io_flush = 1'b1;
    end
  end

  assign readyForPop = ((&(rdDataFifos_0_rdDataFifo_io_occupancy != 3'b000)) ? (|io_idfiRd_0_ready) : 1'b0);
  assign rdDataTemp_0_ready = rdDataFifos_0_rdDataFifo_io_push_ready;
  assign io_idfiRd_0_valid = (&rdDataFifos_0_rdDataFifo_io_pop_valid);
  assign io_idfiRd_0_payload_last = rdDataFifos_0_rdDataFifo_io_pop_payload_last;
  assign io_idfiRd_0_payload_fragment_rdData = rdDataFifos_0_rdDataFifo_io_pop_payload_fragment_rdData;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      rdDataPhase <= 1'b0;
    end else begin
      rdDataPhase <= 1'b0;
      if(rdDataTemp_0_fire) begin
        rdDataPhase <= 1'b0;
      end
    end
  end

  always @(posedge clk_out4) begin
    readyForPop_regNext <= readyForPop;
  end


endmodule

module WrAlignment (
  input  wire          io_idfiWrData_0_valid,
  input  wire [31:0]   io_idfiWrData_0_payload_wrData,
  input  wire [3:0]    io_idfiWrData_0_payload_wrDataMask,
  output wire          io_dfiWr_wr_0_wrdataEn,
  output reg  [31:0]   io_dfiWr_wr_0_wrdata,
  output reg  [3:0]    io_dfiWr_wr_0_wrdataMask,
  input  wire          clk_out4,
  input  wire          rstN
);

  reg        [0:0]    delay;
  wire                _zz_when_DfiAlignment_l132;
  reg                 _zz_when_DfiAlignment_l132_1;
  wire                when_DfiAlignment_l132;
  wire       [31:0]   wrdatahistary_0_0_wrData;
  wire       [3:0]    wrdatahistary_0_0_wrDataMask;
  wire       [31:0]   wrdatahistary_0_1_wrData;
  wire       [3:0]    wrdatahistary_0_1_wrDataMask;
  wire       [31:0]   _zz_wrdatahistary_0_0_wrData;
  wire       [3:0]    _zz_wrdatahistary_0_0_wrDataMask;
  reg        [31:0]   _zz_wrdatahistary_0_1_wrData;
  reg        [3:0]    _zz_wrdatahistary_0_1_wrDataMask;
  reg        [31:0]   _zz_io_dfiWr_wr_0_wrdata;
  reg        [3:0]    _zz_io_dfiWr_wr_0_wrdataMask;

  assign io_dfiWr_wr_0_wrdataEn = io_idfiWrData_0_valid;
  assign _zz_when_DfiAlignment_l132 = (|io_idfiWrData_0_valid);
  assign when_DfiAlignment_l132 = (_zz_when_DfiAlignment_l132 && (! _zz_when_DfiAlignment_l132_1));
  assign _zz_wrdatahistary_0_0_wrData = io_idfiWrData_0_payload_wrData;
  assign _zz_wrdatahistary_0_0_wrDataMask = io_idfiWrData_0_payload_wrDataMask;
  assign wrdatahistary_0_0_wrData = _zz_wrdatahistary_0_0_wrData;
  assign wrdatahistary_0_0_wrDataMask = _zz_wrdatahistary_0_0_wrDataMask;
  assign wrdatahistary_0_1_wrData = _zz_wrdatahistary_0_1_wrData;
  assign wrdatahistary_0_1_wrDataMask = _zz_wrdatahistary_0_1_wrDataMask;
  always @(*) begin
    io_dfiWr_wr_0_wrdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    io_dfiWr_wr_0_wrdata = _zz_io_dfiWr_wr_0_wrdata;
  end

  always @(*) begin
    io_dfiWr_wr_0_wrdataMask = 4'bxxxx;
    io_dfiWr_wr_0_wrdataMask = _zz_io_dfiWr_wr_0_wrdataMask;
  end

  always @(*) begin
    _zz_io_dfiWr_wr_0_wrdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(delay)
      1'b0 : begin
        _zz_io_dfiWr_wr_0_wrdata = wrdatahistary_0_0_wrData;
      end
      default : begin
        _zz_io_dfiWr_wr_0_wrdata = wrdatahistary_0_1_wrData;
      end
    endcase
  end

  always @(*) begin
    _zz_io_dfiWr_wr_0_wrdataMask = 4'bxxxx;
    case(delay)
      1'b0 : begin
        _zz_io_dfiWr_wr_0_wrdataMask = wrdatahistary_0_0_wrDataMask;
      end
      default : begin
        _zz_io_dfiWr_wr_0_wrdataMask = wrdatahistary_0_1_wrDataMask;
      end
    endcase
  end

  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      delay <= 1'b0;
    end else begin
      if(when_DfiAlignment_l132) begin
        delay <= 1'b0;
      end
    end
  end

  always @(posedge clk_out4) begin
    _zz_when_DfiAlignment_l132_1 <= _zz_when_DfiAlignment_l132;
    _zz_wrdatahistary_0_1_wrData <= _zz_wrdatahistary_0_0_wrData;
    _zz_wrdatahistary_0_1_wrDataMask <= _zz_wrdatahistary_0_0_wrDataMask;
  end


endmodule

module CAAlignment (
  input  wire          io_cmd_0_valid,
  input  wire          io_cmd_0_payload_weN,
  input  wire          io_cmd_0_payload_casN,
  input  wire          io_cmd_0_payload_rasN,
  input  wire [0:0]    io_cmd_0_payload_csN,
  input  wire          io_address_0_valid,
  input  wire [2:0]    io_address_0_payload_bank,
  input  wire [14:0]   io_address_0_payload_address,
  input  wire [0:0]    io_cke_0,
  output reg  [14:0]   io_output_address,
  output reg  [2:0]    io_output_bank,
  output reg  [0:0]    io_output_rasN,
  output reg  [0:0]    io_output_casN,
  output reg  [0:0]    io_output_weN,
  output reg  [0:0]    io_output_csN,
  output wire [0:0]    io_output_cke
);


  assign io_output_cke = io_cke_0;
  always @(*) begin
    io_output_csN = 1'b1;
    if(io_cmd_0_valid) begin
      io_output_csN[0 : 0] = io_cmd_0_payload_csN;
    end
  end

  always @(*) begin
    io_output_rasN = 1'b1;
    if(io_cmd_0_valid) begin
      io_output_rasN[0 : 0] = io_cmd_0_payload_rasN;
    end
  end

  always @(*) begin
    io_output_casN = 1'b1;
    if(io_cmd_0_valid) begin
      io_output_casN[0 : 0] = io_cmd_0_payload_casN;
    end
  end

  always @(*) begin
    io_output_weN = 1'b1;
    if(io_cmd_0_valid) begin
      io_output_weN[0 : 0] = io_cmd_0_payload_weN;
    end
  end

  always @(*) begin
    io_output_bank = 3'b000;
    if(io_address_0_valid) begin
      io_output_bank[2 : 0] = io_address_0_payload_bank;
    end
  end

  always @(*) begin
    io_output_address = 15'h0;
    if(io_address_0_valid) begin
      io_output_address[14 : 0] = io_address_0_payload_address;
    end
  end


endmodule

module RdDataRxd (
  input  wire          io_task_read,
  input  wire          io_task_write,
  input  wire          io_task_active,
  input  wire          io_task_precharge,
  input  wire          io_task_last,
  input  wire [0:0]    io_task_address_byte,
  input  wire [9:0]    io_task_address_column,
  input  wire [2:0]    io_task_address_bank,
  input  wire [14:0]   io_task_address_row,
  input  wire [17:0]   io_task_context,
  input  wire          io_task_prechargeAll,
  input  wire          io_task_refresh,
  input  wire          io_idfiRdData_0_valid,
  output wire          io_idfiRdData_0_ready,
  input  wire          io_idfiRdData_0_payload_last,
  input  wire [31:0]   io_idfiRdData_0_payload_fragment_rdData,
  output wire          io_rden_0,
  output wire          io_taskRdData_valid,
  output wire          io_taskRdData_payload_last,
  output wire [31:0]   io_taskRdData_payload_fragment_data,
  output wire [17:0]   io_taskRdData_payload_fragment_context,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                rspPipeline_input_toStream_fifo_io_push_ready;
  wire                rspPipeline_input_toStream_fifo_io_pop_valid;
  wire                rspPipeline_input_toStream_fifo_io_pop_payload_last;
  wire       [17:0]   rspPipeline_input_toStream_fifo_io_pop_payload_fragment_context;
  wire       [2:0]    rspPipeline_input_toStream_fifo_io_occupancy;
  wire       [2:0]    rspPipeline_input_toStream_fifo_io_availability;
  wire       [1:0]    _zz_rspPipeline_beatCounter_valueNext;
  wire       [0:0]    _zz_rspPipeline_beatCounter_valueNext_1;
  reg                 rspPipeline_input_valid;
  wire                rspPipeline_input_payload_last;
  wire       [17:0]   rspPipeline_input_payload_fragment_context;
  wire                rspPipeline_input_toStream_valid;
  wire                rspPipeline_input_toStream_ready;
  wire                rspPipeline_input_toStream_payload_last;
  wire       [17:0]   rspPipeline_input_toStream_payload_fragment_context;
  wire                rspPipeline_rdensHistory_0_0;
  wire                rspPipeline_rdensHistory_0_1;
  wire                rspPipeline_rdensHistory_0_2;
  wire                rspPipeline_rdensHistory_0_3;
  wire                rspPipeline_rdensHistory_0_4;
  wire                rspPipeline_rdensHistory_0_5;
  wire                _zz_rspPipeline_rdensHistory_0_0;
  reg                 _zz_rspPipeline_rdensHistory_0_1;
  reg                 _zz_rspPipeline_rdensHistory_0_2;
  reg                 _zz_rspPipeline_rdensHistory_0_3;
  reg                 _zz_rspPipeline_rdensHistory_0_4;
  reg                 _zz_rspPipeline_rdensHistory_0_5;
  wire                when_Utils_l585;
  reg                 rspPipeline_beatCounter_willIncrement;
  wire                rspPipeline_beatCounter_willClear;
  reg        [1:0]    rspPipeline_beatCounter_valueNext;
  reg        [1:0]    rspPipeline_beatCounter_value;
  wire                rspPipeline_beatCounter_willOverflowIfInc;
  wire                rspPipeline_beatCounter_willOverflow;
  wire                _zz_io_rden_0;
  reg                 _zz_io_rden_0_1;
  reg                 _zz_io_rden_0_2;
  reg                 _zz_io_rden_0_3;
  reg                 rspPipeline_output_valid;
  wire                rspPipeline_output_payload_last;
  wire       [31:0]   rspPipeline_output_payload_fragment_data;
  wire       [17:0]   rspPipeline_output_payload_fragment_context;
  wire                when_Task2IDFI_l123;
  reg                 rspPop_valid;
  reg                 rspPop_payload_last;
  reg        [31:0]   rspPop_payload_fragment_data;
  reg        [17:0]   rspPop_payload_fragment_context;
  reg                 ready_0;

  assign _zz_rspPipeline_beatCounter_valueNext_1 = rspPipeline_beatCounter_willIncrement;
  assign _zz_rspPipeline_beatCounter_valueNext = {1'd0, _zz_rspPipeline_beatCounter_valueNext_1};
  StreamFifoLowLatency_4 rspPipeline_input_toStream_fifo (
    .io_push_valid                    (rspPipeline_input_toStream_valid                                     ), //i
    .io_push_ready                    (rspPipeline_input_toStream_fifo_io_push_ready                        ), //o
    .io_push_payload_last             (rspPipeline_input_toStream_payload_last                              ), //i
    .io_push_payload_fragment_context (rspPipeline_input_toStream_payload_fragment_context[17:0]            ), //i
    .io_pop_valid                     (rspPipeline_input_toStream_fifo_io_pop_valid                         ), //o
    .io_pop_ready                     (rspPipeline_beatCounter_willOverflow                                 ), //i
    .io_pop_payload_last              (rspPipeline_input_toStream_fifo_io_pop_payload_last                  ), //o
    .io_pop_payload_fragment_context  (rspPipeline_input_toStream_fifo_io_pop_payload_fragment_context[17:0]), //o
    .io_flush                         (1'b0                                                                 ), //i
    .io_occupancy                     (rspPipeline_input_toStream_fifo_io_occupancy[2:0]                    ), //o
    .io_availability                  (rspPipeline_input_toStream_fifo_io_availability[2:0]                 ), //o
    .clk_out4                         (clk_out4                                                             ), //i
    .rstN                             (rstN                                                                 )  //i
  );
  assign rspPipeline_input_toStream_valid = rspPipeline_input_valid;
  assign rspPipeline_input_toStream_payload_last = rspPipeline_input_payload_last;
  assign rspPipeline_input_toStream_payload_fragment_context = rspPipeline_input_payload_fragment_context;
  assign rspPipeline_input_toStream_ready = rspPipeline_input_toStream_fifo_io_push_ready;
  assign _zz_rspPipeline_rdensHistory_0_0 = rspPipeline_input_valid;
  assign rspPipeline_rdensHistory_0_0 = _zz_rspPipeline_rdensHistory_0_0;
  assign rspPipeline_rdensHistory_0_1 = _zz_rspPipeline_rdensHistory_0_1;
  assign rspPipeline_rdensHistory_0_2 = _zz_rspPipeline_rdensHistory_0_2;
  assign rspPipeline_rdensHistory_0_3 = _zz_rspPipeline_rdensHistory_0_3;
  assign rspPipeline_rdensHistory_0_4 = _zz_rspPipeline_rdensHistory_0_4;
  assign rspPipeline_rdensHistory_0_5 = _zz_rspPipeline_rdensHistory_0_5;
  assign when_Utils_l585 = (|io_idfiRdData_0_valid);
  always @(*) begin
    rspPipeline_beatCounter_willIncrement = 1'b0;
    if(when_Utils_l585) begin
      rspPipeline_beatCounter_willIncrement = 1'b1;
    end
  end

  assign rspPipeline_beatCounter_willClear = 1'b0;
  assign rspPipeline_beatCounter_willOverflowIfInc = (rspPipeline_beatCounter_value == 2'b11);
  assign rspPipeline_beatCounter_willOverflow = (rspPipeline_beatCounter_willOverflowIfInc && rspPipeline_beatCounter_willIncrement);
  always @(*) begin
    rspPipeline_beatCounter_valueNext = (rspPipeline_beatCounter_value + _zz_rspPipeline_beatCounter_valueNext);
    if(rspPipeline_beatCounter_willClear) begin
      rspPipeline_beatCounter_valueNext = 2'b00;
    end
  end

  assign _zz_io_rden_0 = rspPipeline_rdensHistory_0_4;
  assign io_rden_0 = (|{_zz_io_rden_0_3,{_zz_io_rden_0_2,{_zz_io_rden_0_1,_zz_io_rden_0}}});
  always @(*) begin
    rspPipeline_output_valid = 1'b0;
    if(when_Task2IDFI_l123) begin
      rspPipeline_output_valid = 1'b1;
    end
  end

  assign when_Task2IDFI_l123 = (|io_idfiRdData_0_valid);
  assign rspPipeline_output_payload_fragment_context = rspPipeline_input_toStream_fifo_io_pop_payload_fragment_context;
  assign rspPipeline_output_payload_last = (rspPipeline_beatCounter_willOverflowIfInc && rspPipeline_input_toStream_fifo_io_pop_payload_last);
  assign rspPipeline_output_payload_fragment_data[31 : 0] = io_idfiRdData_0_payload_fragment_rdData;
  always @(*) begin
    rspPipeline_input_valid = 1'b0;
    if(io_task_read) begin
      rspPipeline_input_valid = 1'b1;
    end
  end

  assign rspPipeline_input_payload_last = io_task_last;
  assign rspPipeline_input_payload_fragment_context = io_task_context;
  assign io_taskRdData_valid = rspPop_valid;
  assign io_taskRdData_payload_last = rspPop_payload_last;
  assign io_taskRdData_payload_fragment_data = rspPop_payload_fragment_data;
  assign io_taskRdData_payload_fragment_context = rspPop_payload_fragment_context;
  assign io_idfiRdData_0_ready = ready_0;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      _zz_rspPipeline_rdensHistory_0_1 <= 1'b0;
      _zz_rspPipeline_rdensHistory_0_2 <= 1'b0;
      _zz_rspPipeline_rdensHistory_0_3 <= 1'b0;
      _zz_rspPipeline_rdensHistory_0_4 <= 1'b0;
      _zz_rspPipeline_rdensHistory_0_5 <= 1'b0;
      rspPipeline_beatCounter_value <= 2'b00;
      rspPop_valid <= 1'b0;
      ready_0 <= 1'b0;
    end else begin
      _zz_rspPipeline_rdensHistory_0_1 <= _zz_rspPipeline_rdensHistory_0_0;
      _zz_rspPipeline_rdensHistory_0_2 <= _zz_rspPipeline_rdensHistory_0_1;
      _zz_rspPipeline_rdensHistory_0_3 <= _zz_rspPipeline_rdensHistory_0_2;
      _zz_rspPipeline_rdensHistory_0_4 <= _zz_rspPipeline_rdensHistory_0_3;
      _zz_rspPipeline_rdensHistory_0_5 <= _zz_rspPipeline_rdensHistory_0_4;
      rspPipeline_beatCounter_value <= rspPipeline_beatCounter_valueNext;
      rspPop_valid <= rspPipeline_output_valid;
      if(io_task_read) begin
        ready_0 <= 1'b1;
      end
      if(io_task_write) begin
        ready_0 <= 1'b0;
      end
    end
  end

  always @(posedge clk_out4) begin
    _zz_io_rden_0_1 <= _zz_io_rden_0;
    _zz_io_rden_0_2 <= _zz_io_rden_0_1;
    _zz_io_rden_0_3 <= _zz_io_rden_0_2;
    rspPop_payload_last <= rspPipeline_output_payload_last;
    rspPop_payload_fragment_data <= rspPipeline_output_payload_fragment_data;
    rspPop_payload_fragment_context <= rspPipeline_output_payload_fragment_context;
  end


endmodule

module WrDataTxd (
  input  wire          io_write,
  input  wire          io_taskWrData_valid,
  output reg           io_taskWrData_ready,
  input  wire [31:0]   io_taskWrData_payload_data,
  input  wire [3:0]    io_taskWrData_payload_mask,
  output wire          io_idfiWrData_0_valid,
  output wire [31:0]   io_idfiWrData_0_payload_wrData,
  output wire [3:0]    io_idfiWrData_0_payload_wrDataMask,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                writeHistory_0;
  wire                writeHistory_1;
  wire                writeHistory_2;
  wire                writeHistory_3;
  wire                _zz_writeHistory_0;
  reg                 _zz_writeHistory_1;
  reg                 _zz_writeHistory_2;
  reg                 _zz_writeHistory_3;
  wire                write;
  reg                 wrens_0;
  wire                wrensHistory_0_0;
  wire                wrensHistory_0_1;
  wire                wrensHistory_0_2;
  wire                wrensHistory_0_3;
  wire                wrensHistory_0_4;
  wire                wrensHistory_0_5;
  wire                _zz_wrensHistory_0_0;
  reg                 _zz_wrensHistory_0_1;
  reg                 _zz_wrensHistory_0_2;
  reg                 _zz_wrensHistory_0_3;
  reg                 _zz_wrensHistory_0_4;
  reg                 _zz_wrensHistory_0_5;

  assign _zz_writeHistory_0 = io_write;
  assign writeHistory_0 = _zz_writeHistory_0;
  assign writeHistory_1 = _zz_writeHistory_1;
  assign writeHistory_2 = _zz_writeHistory_2;
  assign writeHistory_3 = _zz_writeHistory_3;
  assign write = (|{writeHistory_3,{writeHistory_2,{writeHistory_1,writeHistory_0}}});
  assign _zz_wrensHistory_0_0 = wrens_0;
  assign wrensHistory_0_0 = _zz_wrensHistory_0_0;
  assign wrensHistory_0_1 = _zz_wrensHistory_0_1;
  assign wrensHistory_0_2 = _zz_wrensHistory_0_2;
  assign wrensHistory_0_3 = _zz_wrensHistory_0_3;
  assign wrensHistory_0_4 = _zz_wrensHistory_0_4;
  assign wrensHistory_0_5 = _zz_wrensHistory_0_5;
  always @(*) begin
    wrens_0 = 1'b0;
    if(write) begin
      wrens_0 = 1'b1;
    end
  end

  always @(*) begin
    io_taskWrData_ready = 1'b0;
    if(wrensHistory_0_4) begin
      io_taskWrData_ready = 1'b1;
    end
  end

  assign io_idfiWrData_0_valid = wrensHistory_0_4;
  assign io_idfiWrData_0_payload_wrData = io_taskWrData_payload_data[31 : 0];
  assign io_idfiWrData_0_payload_wrDataMask = io_taskWrData_payload_mask[3 : 0];
  always @(posedge clk_out4) begin
    _zz_writeHistory_1 <= _zz_writeHistory_0;
    _zz_writeHistory_2 <= _zz_writeHistory_1;
    _zz_writeHistory_3 <= _zz_writeHistory_2;
  end

  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      _zz_wrensHistory_0_1 <= 1'b0;
      _zz_wrensHistory_0_2 <= 1'b0;
      _zz_wrensHistory_0_3 <= 1'b0;
      _zz_wrensHistory_0_4 <= 1'b0;
      _zz_wrensHistory_0_5 <= 1'b0;
    end else begin
      _zz_wrensHistory_0_1 <= _zz_wrensHistory_0_0;
      _zz_wrensHistory_0_2 <= _zz_wrensHistory_0_1;
      _zz_wrensHistory_0_3 <= _zz_wrensHistory_0_2;
      _zz_wrensHistory_0_4 <= _zz_wrensHistory_0_3;
      _zz_wrensHistory_0_5 <= _zz_wrensHistory_0_4;
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! ((! io_taskWrData_valid) && io_taskWrData_ready))); // Task2IDFI.scala:L185
        `else
          if(!(! ((! io_taskWrData_valid) && io_taskWrData_ready))) begin
            $display("ERROR SDRAM write data stream starved !"); // Task2IDFI.scala:L185
          end
        `endif
      `endif
    end
  end


endmodule

module CmdTxd (
  input  wire          io_task_read,
  input  wire          io_task_write,
  input  wire          io_task_active,
  input  wire          io_task_precharge,
  input  wire          io_task_last,
  input  wire [0:0]    io_task_address_byte,
  input  wire [9:0]    io_task_address_column,
  input  wire [2:0]    io_task_address_bank,
  input  wire [14:0]   io_task_address_row,
  input  wire [17:0]   io_task_context,
  input  wire          io_task_prechargeAll,
  input  wire          io_task_refresh,
  output reg           io_cmd_0_valid,
  output reg           io_cmd_0_payload_weN,
  output reg           io_cmd_0_payload_casN,
  output reg           io_cmd_0_payload_rasN,
  output reg  [0:0]    io_cmd_0_payload_csN,
  output reg           io_address_0_valid,
  output reg  [2:0]    io_address_0_payload_bank,
  output reg  [14:0]   io_address_0_payload_address
);

  wire       [3:0]    _zz_io_cmd_0_payload_weN;
  wire       [3:0]    ACTIVE;
  wire       [3:0]    WRITE;
  wire       [3:0]    READ;
  wire       [3:0]    PRECHARGE;
  wire       [3:0]    PRECHARGEALL;
  wire       [3:0]    REFRESH;

  always @(*) begin
    io_cmd_0_valid = 1'b0;
    if(io_task_active) begin
      io_cmd_0_valid = 1'b1;
    end
    if(io_task_write) begin
      io_cmd_0_valid = 1'b1;
    end
    if(io_task_read) begin
      io_cmd_0_valid = 1'b1;
    end
    if(io_task_precharge) begin
      io_cmd_0_valid = 1'b1;
    end
    if(io_task_prechargeAll) begin
      io_cmd_0_valid = 1'b1;
    end
    if(io_task_refresh) begin
      io_cmd_0_valid = 1'b1;
    end
  end

  assign _zz_io_cmd_0_payload_weN = 4'b1111;
  always @(*) begin
    io_cmd_0_payload_weN = _zz_io_cmd_0_payload_weN[0];
    if(io_task_active) begin
      io_cmd_0_payload_weN = ACTIVE[0];
    end
    if(io_task_write) begin
      io_cmd_0_payload_weN = WRITE[0];
    end
    if(io_task_read) begin
      io_cmd_0_payload_weN = READ[0];
    end
    if(io_task_precharge) begin
      io_cmd_0_payload_weN = PRECHARGE[0];
    end
    if(io_task_prechargeAll) begin
      io_cmd_0_payload_weN = PRECHARGEALL[0];
    end
    if(io_task_refresh) begin
      io_cmd_0_payload_weN = REFRESH[0];
    end
  end

  always @(*) begin
    io_cmd_0_payload_casN = _zz_io_cmd_0_payload_weN[1];
    if(io_task_active) begin
      io_cmd_0_payload_casN = ACTIVE[1];
    end
    if(io_task_write) begin
      io_cmd_0_payload_casN = WRITE[1];
    end
    if(io_task_read) begin
      io_cmd_0_payload_casN = READ[1];
    end
    if(io_task_precharge) begin
      io_cmd_0_payload_casN = PRECHARGE[1];
    end
    if(io_task_prechargeAll) begin
      io_cmd_0_payload_casN = PRECHARGEALL[1];
    end
    if(io_task_refresh) begin
      io_cmd_0_payload_casN = REFRESH[1];
    end
  end

  always @(*) begin
    io_cmd_0_payload_rasN = _zz_io_cmd_0_payload_weN[2];
    if(io_task_active) begin
      io_cmd_0_payload_rasN = ACTIVE[2];
    end
    if(io_task_write) begin
      io_cmd_0_payload_rasN = WRITE[2];
    end
    if(io_task_read) begin
      io_cmd_0_payload_rasN = READ[2];
    end
    if(io_task_precharge) begin
      io_cmd_0_payload_rasN = PRECHARGE[2];
    end
    if(io_task_prechargeAll) begin
      io_cmd_0_payload_rasN = PRECHARGEALL[2];
    end
    if(io_task_refresh) begin
      io_cmd_0_payload_rasN = REFRESH[2];
    end
  end

  always @(*) begin
    io_cmd_0_payload_csN = _zz_io_cmd_0_payload_weN[3 : 3];
    if(io_task_active) begin
      io_cmd_0_payload_csN = ACTIVE[3 : 3];
    end
    if(io_task_write) begin
      io_cmd_0_payload_csN = WRITE[3 : 3];
    end
    if(io_task_read) begin
      io_cmd_0_payload_csN = READ[3 : 3];
    end
    if(io_task_precharge) begin
      io_cmd_0_payload_csN = PRECHARGE[3 : 3];
    end
    if(io_task_prechargeAll) begin
      io_cmd_0_payload_csN = PRECHARGEALL[3 : 3];
    end
    if(io_task_refresh) begin
      io_cmd_0_payload_csN = REFRESH[3 : 3];
    end
  end

  always @(*) begin
    io_address_0_valid = 1'b0;
    if(io_task_active) begin
      io_address_0_valid = 1'b1;
    end
    if(io_task_write) begin
      io_address_0_valid = 1'b1;
    end
    if(io_task_read) begin
      io_address_0_valid = 1'b1;
    end
    if(io_task_precharge) begin
      io_address_0_valid = 1'b1;
    end
    if(io_task_prechargeAll) begin
      io_address_0_valid = 1'b1;
    end
    if(io_task_refresh) begin
      io_address_0_valid = 1'b1;
    end
  end

  always @(*) begin
    io_address_0_payload_address = 15'h0;
    if(io_task_active) begin
      io_address_0_payload_address = io_task_address_row;
    end
    if(io_task_write) begin
      io_address_0_payload_address[9 : 0] = io_task_address_column;
      io_address_0_payload_address[10] = 1'b0;
    end
    if(io_task_read) begin
      io_address_0_payload_address[9 : 0] = io_task_address_column;
      io_address_0_payload_address[10] = 1'b0;
    end
    if(io_task_precharge) begin
      io_address_0_payload_address[10] = 1'b0;
    end
    if(io_task_prechargeAll) begin
      io_address_0_payload_address[10] = 1'b1;
    end
  end

  always @(*) begin
    io_address_0_payload_bank = 3'b000;
    if(io_task_active) begin
      io_address_0_payload_bank = io_task_address_bank;
    end
    if(io_task_write) begin
      io_address_0_payload_bank = io_task_address_bank;
    end
    if(io_task_read) begin
      io_address_0_payload_bank = io_task_address_bank;
    end
    if(io_task_precharge) begin
      io_address_0_payload_bank = io_task_address_bank;
    end
  end

  assign ACTIVE = {(~ 1'b1),3'b011};
  assign WRITE = {(~ 1'b1),3'b100};
  assign READ = {(~ 1'b1),3'b101};
  assign PRECHARGE = {(~ 1'b1),3'b010};
  assign PRECHARGEALL = {(~ 1'b1),3'b010};
  assign REFRESH = {(~ 1'b1),3'b001};

endmodule

module MakeTask (
  input  wire          io_cmd_valid,
  output reg           io_cmd_ready,
  input  wire          io_cmd_payload_write,
  input  wire [28:0]   io_cmd_payload_address,
  input  wire [17:0]   io_cmd_payload_context,
  input  wire          io_cmd_payload_burstLast,
  input  wire [1:0]    io_cmd_payload_length,
  output wire          io_halt,
  input  wire          io_writeDataToken_valid,
  output reg           io_writeDataToken_ready,
  input  wire          io_writeDataToken_payload_valid,
  input  wire          io_writeDataToken_payload_ready,
  output wire          io_output_read,
  output wire          io_output_write,
  output wire          io_output_active,
  output wire          io_output_precharge,
  output wire          io_output_last,
  output wire [0:0]    io_output_address_byte,
  output wire [9:0]    io_output_address_column,
  output wire [2:0]    io_output_address_bank,
  output wire [14:0]   io_output_address_row,
  output wire [17:0]   io_output_context,
  output reg           io_output_prechargeAll,
  output reg           io_output_refresh,
  input  wire          clk_out4,
  input  wire          rstN
);
  localparam fsm_enumDef_1_BOOT = 3'd0;
  localparam fsm_enumDef_1_idle = 3'd1;
  localparam fsm_enumDef_1_prechargeAllCmd = 3'd2;
  localparam fsm_enumDef_1_refreshCmd = 3'd3;
  localparam fsm_enumDef_1_refreshReady = 3'd4;

  wire       [14:0]   banksRow_spinal_port0;
  wire                refresher_1_io_refresh_valid;
  wire       [1:0]    _zz_CCD_value;
  wire       [0:0]    _zz_CCD_value_1;
  wire       [7:0]    _zz_RFC_increment;
  wire       [4:0]    _zz_RFC_increment_1;
  wire       [7:0]    _zz_RFC_value;
  wire       [0:0]    _zz_RFC_value_1;
  wire       [4:0]    _zz_RRD_increment;
  wire       [2:0]    _zz_RRD_increment_1;
  wire       [4:0]    _zz_RRD_value;
  wire       [0:0]    _zz_RRD_value_1;
  wire       [4:0]    _zz_WTR_value;
  wire       [0:0]    _zz_WTR_value_1;
  wire       [4:0]    _zz_RTW_value;
  wire       [0:0]    _zz_RTW_value_1;
  wire       [4:0]    _zz_RP_increment;
  wire       [1:0]    _zz_RP_increment_1;
  wire       [4:0]    _zz_RP_value;
  wire       [0:0]    _zz_RP_value_1;
  wire       [4:0]    _zz_FAW_slots_0_increment;
  wire       [2:0]    _zz_FAW_slots_0_increment_1;
  wire       [4:0]    _zz_FAW_slots_0_value;
  wire       [0:0]    _zz_FAW_slots_0_value_1;
  wire       [4:0]    _zz_FAW_slots_1_increment;
  wire       [2:0]    _zz_FAW_slots_1_increment_1;
  wire       [4:0]    _zz_FAW_slots_1_value;
  wire       [0:0]    _zz_FAW_slots_1_value_1;
  wire       [4:0]    _zz_FAW_slots_2_increment;
  wire       [2:0]    _zz_FAW_slots_2_increment_1;
  wire       [4:0]    _zz_FAW_slots_2_value;
  wire       [0:0]    _zz_FAW_slots_2_value_1;
  wire       [4:0]    _zz_FAW_slots_3_increment;
  wire       [2:0]    _zz_FAW_slots_3_increment_1;
  wire       [4:0]    _zz_FAW_slots_3_value;
  wire       [0:0]    _zz_FAW_slots_3_value_1;
  reg                 _zz_FAW_busyNext;
  wire       [1:0]    _zz_FAW_busyNext_1;
  wire       [1:0]    _zz_FAW_ptr;
  wire       [0:0]    _zz_FAW_ptr_1;
  wire       [4:0]    _zz_banks_0_WR_increment;
  wire       [2:0]    _zz_banks_0_WR_increment_1;
  wire       [4:0]    _zz_banks_0_WR_value;
  wire       [0:0]    _zz_banks_0_WR_value_1;
  wire       [4:0]    _zz_banks_0_RAS_increment;
  wire       [2:0]    _zz_banks_0_RAS_increment_1;
  wire       [4:0]    _zz_banks_0_RAS_value;
  wire       [0:0]    _zz_banks_0_RAS_value_1;
  wire       [4:0]    _zz_banks_0_RP_increment;
  wire       [1:0]    _zz_banks_0_RP_increment_1;
  wire       [4:0]    _zz_banks_0_RP_value;
  wire       [0:0]    _zz_banks_0_RP_value_1;
  wire       [4:0]    _zz_banks_0_RCD_increment;
  wire       [1:0]    _zz_banks_0_RCD_increment_1;
  wire       [4:0]    _zz_banks_0_RCD_value;
  wire       [0:0]    _zz_banks_0_RCD_value_1;
  wire       [4:0]    _zz_banks_0_RTP_increment;
  wire       [2:0]    _zz_banks_0_RTP_increment_1;
  wire       [4:0]    _zz_banks_0_RTP_value;
  wire       [0:0]    _zz_banks_0_RTP_value_1;
  wire       [4:0]    _zz_banks_1_WR_increment;
  wire       [2:0]    _zz_banks_1_WR_increment_1;
  wire       [4:0]    _zz_banks_1_WR_value;
  wire       [0:0]    _zz_banks_1_WR_value_1;
  wire       [4:0]    _zz_banks_1_RAS_increment;
  wire       [2:0]    _zz_banks_1_RAS_increment_1;
  wire       [4:0]    _zz_banks_1_RAS_value;
  wire       [0:0]    _zz_banks_1_RAS_value_1;
  wire       [4:0]    _zz_banks_1_RP_increment;
  wire       [1:0]    _zz_banks_1_RP_increment_1;
  wire       [4:0]    _zz_banks_1_RP_value;
  wire       [0:0]    _zz_banks_1_RP_value_1;
  wire       [4:0]    _zz_banks_1_RCD_increment;
  wire       [1:0]    _zz_banks_1_RCD_increment_1;
  wire       [4:0]    _zz_banks_1_RCD_value;
  wire       [0:0]    _zz_banks_1_RCD_value_1;
  wire       [4:0]    _zz_banks_1_RTP_increment;
  wire       [2:0]    _zz_banks_1_RTP_increment_1;
  wire       [4:0]    _zz_banks_1_RTP_value;
  wire       [0:0]    _zz_banks_1_RTP_value_1;
  wire       [4:0]    _zz_banks_2_WR_increment;
  wire       [2:0]    _zz_banks_2_WR_increment_1;
  wire       [4:0]    _zz_banks_2_WR_value;
  wire       [0:0]    _zz_banks_2_WR_value_1;
  wire       [4:0]    _zz_banks_2_RAS_increment;
  wire       [2:0]    _zz_banks_2_RAS_increment_1;
  wire       [4:0]    _zz_banks_2_RAS_value;
  wire       [0:0]    _zz_banks_2_RAS_value_1;
  wire       [4:0]    _zz_banks_2_RP_increment;
  wire       [1:0]    _zz_banks_2_RP_increment_1;
  wire       [4:0]    _zz_banks_2_RP_value;
  wire       [0:0]    _zz_banks_2_RP_value_1;
  wire       [4:0]    _zz_banks_2_RCD_increment;
  wire       [1:0]    _zz_banks_2_RCD_increment_1;
  wire       [4:0]    _zz_banks_2_RCD_value;
  wire       [0:0]    _zz_banks_2_RCD_value_1;
  wire       [4:0]    _zz_banks_2_RTP_increment;
  wire       [2:0]    _zz_banks_2_RTP_increment_1;
  wire       [4:0]    _zz_banks_2_RTP_value;
  wire       [0:0]    _zz_banks_2_RTP_value_1;
  wire       [4:0]    _zz_banks_3_WR_increment;
  wire       [2:0]    _zz_banks_3_WR_increment_1;
  wire       [4:0]    _zz_banks_3_WR_value;
  wire       [0:0]    _zz_banks_3_WR_value_1;
  wire       [4:0]    _zz_banks_3_RAS_increment;
  wire       [2:0]    _zz_banks_3_RAS_increment_1;
  wire       [4:0]    _zz_banks_3_RAS_value;
  wire       [0:0]    _zz_banks_3_RAS_value_1;
  wire       [4:0]    _zz_banks_3_RP_increment;
  wire       [1:0]    _zz_banks_3_RP_increment_1;
  wire       [4:0]    _zz_banks_3_RP_value;
  wire       [0:0]    _zz_banks_3_RP_value_1;
  wire       [4:0]    _zz_banks_3_RCD_increment;
  wire       [1:0]    _zz_banks_3_RCD_increment_1;
  wire       [4:0]    _zz_banks_3_RCD_value;
  wire       [0:0]    _zz_banks_3_RCD_value_1;
  wire       [4:0]    _zz_banks_3_RTP_increment;
  wire       [2:0]    _zz_banks_3_RTP_increment_1;
  wire       [4:0]    _zz_banks_3_RTP_value;
  wire       [0:0]    _zz_banks_3_RTP_value_1;
  wire       [4:0]    _zz_banks_4_WR_increment;
  wire       [2:0]    _zz_banks_4_WR_increment_1;
  wire       [4:0]    _zz_banks_4_WR_value;
  wire       [0:0]    _zz_banks_4_WR_value_1;
  wire       [4:0]    _zz_banks_4_RAS_increment;
  wire       [2:0]    _zz_banks_4_RAS_increment_1;
  wire       [4:0]    _zz_banks_4_RAS_value;
  wire       [0:0]    _zz_banks_4_RAS_value_1;
  wire       [4:0]    _zz_banks_4_RP_increment;
  wire       [1:0]    _zz_banks_4_RP_increment_1;
  wire       [4:0]    _zz_banks_4_RP_value;
  wire       [0:0]    _zz_banks_4_RP_value_1;
  wire       [4:0]    _zz_banks_4_RCD_increment;
  wire       [1:0]    _zz_banks_4_RCD_increment_1;
  wire       [4:0]    _zz_banks_4_RCD_value;
  wire       [0:0]    _zz_banks_4_RCD_value_1;
  wire       [4:0]    _zz_banks_4_RTP_increment;
  wire       [2:0]    _zz_banks_4_RTP_increment_1;
  wire       [4:0]    _zz_banks_4_RTP_value;
  wire       [0:0]    _zz_banks_4_RTP_value_1;
  wire       [4:0]    _zz_banks_5_WR_increment;
  wire       [2:0]    _zz_banks_5_WR_increment_1;
  wire       [4:0]    _zz_banks_5_WR_value;
  wire       [0:0]    _zz_banks_5_WR_value_1;
  wire       [4:0]    _zz_banks_5_RAS_increment;
  wire       [2:0]    _zz_banks_5_RAS_increment_1;
  wire       [4:0]    _zz_banks_5_RAS_value;
  wire       [0:0]    _zz_banks_5_RAS_value_1;
  wire       [4:0]    _zz_banks_5_RP_increment;
  wire       [1:0]    _zz_banks_5_RP_increment_1;
  wire       [4:0]    _zz_banks_5_RP_value;
  wire       [0:0]    _zz_banks_5_RP_value_1;
  wire       [4:0]    _zz_banks_5_RCD_increment;
  wire       [1:0]    _zz_banks_5_RCD_increment_1;
  wire       [4:0]    _zz_banks_5_RCD_value;
  wire       [0:0]    _zz_banks_5_RCD_value_1;
  wire       [4:0]    _zz_banks_5_RTP_increment;
  wire       [2:0]    _zz_banks_5_RTP_increment_1;
  wire       [4:0]    _zz_banks_5_RTP_value;
  wire       [0:0]    _zz_banks_5_RTP_value_1;
  wire       [4:0]    _zz_banks_6_WR_increment;
  wire       [2:0]    _zz_banks_6_WR_increment_1;
  wire       [4:0]    _zz_banks_6_WR_value;
  wire       [0:0]    _zz_banks_6_WR_value_1;
  wire       [4:0]    _zz_banks_6_RAS_increment;
  wire       [2:0]    _zz_banks_6_RAS_increment_1;
  wire       [4:0]    _zz_banks_6_RAS_value;
  wire       [0:0]    _zz_banks_6_RAS_value_1;
  wire       [4:0]    _zz_banks_6_RP_increment;
  wire       [1:0]    _zz_banks_6_RP_increment_1;
  wire       [4:0]    _zz_banks_6_RP_value;
  wire       [0:0]    _zz_banks_6_RP_value_1;
  wire       [4:0]    _zz_banks_6_RCD_increment;
  wire       [1:0]    _zz_banks_6_RCD_increment_1;
  wire       [4:0]    _zz_banks_6_RCD_value;
  wire       [0:0]    _zz_banks_6_RCD_value_1;
  wire       [4:0]    _zz_banks_6_RTP_increment;
  wire       [2:0]    _zz_banks_6_RTP_increment_1;
  wire       [4:0]    _zz_banks_6_RTP_value;
  wire       [0:0]    _zz_banks_6_RTP_value_1;
  wire       [4:0]    _zz_banks_7_WR_increment;
  wire       [2:0]    _zz_banks_7_WR_increment_1;
  wire       [4:0]    _zz_banks_7_WR_value;
  wire       [0:0]    _zz_banks_7_WR_value_1;
  wire       [4:0]    _zz_banks_7_RAS_increment;
  wire       [2:0]    _zz_banks_7_RAS_increment_1;
  wire       [4:0]    _zz_banks_7_RAS_value;
  wire       [0:0]    _zz_banks_7_RAS_value_1;
  wire       [4:0]    _zz_banks_7_RP_increment;
  wire       [1:0]    _zz_banks_7_RP_increment_1;
  wire       [4:0]    _zz_banks_7_RP_value;
  wire       [0:0]    _zz_banks_7_RP_value_1;
  wire       [4:0]    _zz_banks_7_RCD_increment;
  wire       [1:0]    _zz_banks_7_RCD_increment_1;
  wire       [4:0]    _zz_banks_7_RCD_value;
  wire       [0:0]    _zz_banks_7_RCD_value_1;
  wire       [4:0]    _zz_banks_7_RTP_increment;
  wire       [2:0]    _zz_banks_7_RTP_increment_1;
  wire       [4:0]    _zz_banks_7_RTP_value;
  wire       [0:0]    _zz_banks_7_RTP_value_1;
  reg                 _zz_taskConstructor_status_bankActive;
  reg                 _zz_when_MakeTask_l227;
  reg                 _zz_when_MakeTask_l228;
  reg                 _zz_when_MakeTask_l229;
  reg                 _zz_when_MakeTask_l230;
  reg                 _zz_when_MakeTask_l227_1;
  reg                 _zz_when_MakeTask_l228_1;
  reg                 _zz_when_MakeTask_l229_1;
  reg                 _zz_when_MakeTask_l230_1;
  wire       [9:0]    _zz_io_output_address_column;
  wire       [4:0]    _zz_io_output_address_column_1;
  wire       [14:0]   _zz_banksRow_port;
  reg                 _zz_1;
  reg                 readyForRefresh;
  wire                when_MakeTask_l210;
  reg        [1:0]    CCD_value;
  wire                CCD_increment;
  wire                CCD_busy;
  reg        [7:0]    RFC_value;
  wire                RFC_increment;
  wire                RFC_busy;
  reg        [4:0]    RRD_value;
  wire                RRD_increment;
  wire                RRD_busy;
  reg        [4:0]    WTR_value;
  wire                WTR_increment;
  wire                WTR_busy;
  reg        [4:0]    RTW_value;
  wire                RTW_increment;
  wire                RTW_busy;
  reg        [4:0]    RP_value;
  wire                RP_increment;
  wire                RP_busy;
  reg        [1:0]    FAW_ptr;
  wire                when_MakeTask_l210_1;
  reg        [4:0]    FAW_slots_0_value;
  wire                FAW_slots_0_increment;
  wire                FAW_slots_0_busy;
  wire                when_MakeTask_l210_2;
  reg        [4:0]    FAW_slots_1_value;
  wire                FAW_slots_1_increment;
  wire                FAW_slots_1_busy;
  wire                when_MakeTask_l210_3;
  reg        [4:0]    FAW_slots_2_value;
  wire                FAW_slots_2_increment;
  wire                FAW_slots_2_busy;
  wire                when_MakeTask_l210_4;
  reg        [4:0]    FAW_slots_3_value;
  wire                FAW_slots_3_increment;
  wire                FAW_slots_3_busy;
  wire                FAW_busyNext;
  wire                banks_0_hits;
  reg                 banks_0_activeNext;
  reg                 banks_0_active;
  wire                when_MakeTask_l47;
  wire                when_MakeTask_l50;
  wire                when_MakeTask_l210_5;
  reg        [4:0]    banks_0_WR_value;
  wire                banks_0_WR_increment;
  wire                banks_0_WR_busy;
  wire                when_MakeTask_l210_6;
  reg        [4:0]    banks_0_RAS_value;
  wire                banks_0_RAS_increment;
  wire                banks_0_RAS_busy;
  wire                when_MakeTask_l210_7;
  reg        [4:0]    banks_0_RP_value;
  wire                banks_0_RP_increment;
  wire                banks_0_RP_busy;
  wire                when_MakeTask_l210_8;
  reg        [4:0]    banks_0_RCD_value;
  wire                banks_0_RCD_increment;
  wire                banks_0_RCD_busy;
  wire                when_MakeTask_l210_9;
  reg        [4:0]    banks_0_RTP_value;
  wire                banks_0_RTP_increment;
  wire                banks_0_RTP_busy;
  wire                banks_0_allowPrecharge;
  wire                banks_0_allowActive;
  wire                banks_0_allowWrite;
  wire                banks_0_allowRead;
  wire                banks_1_hits;
  reg                 banks_1_activeNext;
  reg                 banks_1_active;
  wire                when_MakeTask_l47_1;
  wire                when_MakeTask_l50_1;
  wire                when_MakeTask_l210_10;
  reg        [4:0]    banks_1_WR_value;
  wire                banks_1_WR_increment;
  wire                banks_1_WR_busy;
  wire                when_MakeTask_l210_11;
  reg        [4:0]    banks_1_RAS_value;
  wire                banks_1_RAS_increment;
  wire                banks_1_RAS_busy;
  wire                when_MakeTask_l210_12;
  reg        [4:0]    banks_1_RP_value;
  wire                banks_1_RP_increment;
  wire                banks_1_RP_busy;
  wire                when_MakeTask_l210_13;
  reg        [4:0]    banks_1_RCD_value;
  wire                banks_1_RCD_increment;
  wire                banks_1_RCD_busy;
  wire                when_MakeTask_l210_14;
  reg        [4:0]    banks_1_RTP_value;
  wire                banks_1_RTP_increment;
  wire                banks_1_RTP_busy;
  wire                banks_1_allowPrecharge;
  wire                banks_1_allowActive;
  wire                banks_1_allowWrite;
  wire                banks_1_allowRead;
  wire                banks_2_hits;
  reg                 banks_2_activeNext;
  reg                 banks_2_active;
  wire                when_MakeTask_l47_2;
  wire                when_MakeTask_l50_2;
  wire                when_MakeTask_l210_15;
  reg        [4:0]    banks_2_WR_value;
  wire                banks_2_WR_increment;
  wire                banks_2_WR_busy;
  wire                when_MakeTask_l210_16;
  reg        [4:0]    banks_2_RAS_value;
  wire                banks_2_RAS_increment;
  wire                banks_2_RAS_busy;
  wire                when_MakeTask_l210_17;
  reg        [4:0]    banks_2_RP_value;
  wire                banks_2_RP_increment;
  wire                banks_2_RP_busy;
  wire                when_MakeTask_l210_18;
  reg        [4:0]    banks_2_RCD_value;
  wire                banks_2_RCD_increment;
  wire                banks_2_RCD_busy;
  wire                when_MakeTask_l210_19;
  reg        [4:0]    banks_2_RTP_value;
  wire                banks_2_RTP_increment;
  wire                banks_2_RTP_busy;
  wire                banks_2_allowPrecharge;
  wire                banks_2_allowActive;
  wire                banks_2_allowWrite;
  wire                banks_2_allowRead;
  wire                banks_3_hits;
  reg                 banks_3_activeNext;
  reg                 banks_3_active;
  wire                when_MakeTask_l47_3;
  wire                when_MakeTask_l50_3;
  wire                when_MakeTask_l210_20;
  reg        [4:0]    banks_3_WR_value;
  wire                banks_3_WR_increment;
  wire                banks_3_WR_busy;
  wire                when_MakeTask_l210_21;
  reg        [4:0]    banks_3_RAS_value;
  wire                banks_3_RAS_increment;
  wire                banks_3_RAS_busy;
  wire                when_MakeTask_l210_22;
  reg        [4:0]    banks_3_RP_value;
  wire                banks_3_RP_increment;
  wire                banks_3_RP_busy;
  wire                when_MakeTask_l210_23;
  reg        [4:0]    banks_3_RCD_value;
  wire                banks_3_RCD_increment;
  wire                banks_3_RCD_busy;
  wire                when_MakeTask_l210_24;
  reg        [4:0]    banks_3_RTP_value;
  wire                banks_3_RTP_increment;
  wire                banks_3_RTP_busy;
  wire                banks_3_allowPrecharge;
  wire                banks_3_allowActive;
  wire                banks_3_allowWrite;
  wire                banks_3_allowRead;
  wire                banks_4_hits;
  reg                 banks_4_activeNext;
  reg                 banks_4_active;
  wire                when_MakeTask_l47_4;
  wire                when_MakeTask_l50_4;
  wire                when_MakeTask_l210_25;
  reg        [4:0]    banks_4_WR_value;
  wire                banks_4_WR_increment;
  wire                banks_4_WR_busy;
  wire                when_MakeTask_l210_26;
  reg        [4:0]    banks_4_RAS_value;
  wire                banks_4_RAS_increment;
  wire                banks_4_RAS_busy;
  wire                when_MakeTask_l210_27;
  reg        [4:0]    banks_4_RP_value;
  wire                banks_4_RP_increment;
  wire                banks_4_RP_busy;
  wire                when_MakeTask_l210_28;
  reg        [4:0]    banks_4_RCD_value;
  wire                banks_4_RCD_increment;
  wire                banks_4_RCD_busy;
  wire                when_MakeTask_l210_29;
  reg        [4:0]    banks_4_RTP_value;
  wire                banks_4_RTP_increment;
  wire                banks_4_RTP_busy;
  wire                banks_4_allowPrecharge;
  wire                banks_4_allowActive;
  wire                banks_4_allowWrite;
  wire                banks_4_allowRead;
  wire                banks_5_hits;
  reg                 banks_5_activeNext;
  reg                 banks_5_active;
  wire                when_MakeTask_l47_5;
  wire                when_MakeTask_l50_5;
  wire                when_MakeTask_l210_30;
  reg        [4:0]    banks_5_WR_value;
  wire                banks_5_WR_increment;
  wire                banks_5_WR_busy;
  wire                when_MakeTask_l210_31;
  reg        [4:0]    banks_5_RAS_value;
  wire                banks_5_RAS_increment;
  wire                banks_5_RAS_busy;
  wire                when_MakeTask_l210_32;
  reg        [4:0]    banks_5_RP_value;
  wire                banks_5_RP_increment;
  wire                banks_5_RP_busy;
  wire                when_MakeTask_l210_33;
  reg        [4:0]    banks_5_RCD_value;
  wire                banks_5_RCD_increment;
  wire                banks_5_RCD_busy;
  wire                when_MakeTask_l210_34;
  reg        [4:0]    banks_5_RTP_value;
  wire                banks_5_RTP_increment;
  wire                banks_5_RTP_busy;
  wire                banks_5_allowPrecharge;
  wire                banks_5_allowActive;
  wire                banks_5_allowWrite;
  wire                banks_5_allowRead;
  wire                banks_6_hits;
  reg                 banks_6_activeNext;
  reg                 banks_6_active;
  wire                when_MakeTask_l47_6;
  wire                when_MakeTask_l50_6;
  wire                when_MakeTask_l210_35;
  reg        [4:0]    banks_6_WR_value;
  wire                banks_6_WR_increment;
  wire                banks_6_WR_busy;
  wire                when_MakeTask_l210_36;
  reg        [4:0]    banks_6_RAS_value;
  wire                banks_6_RAS_increment;
  wire                banks_6_RAS_busy;
  wire                when_MakeTask_l210_37;
  reg        [4:0]    banks_6_RP_value;
  wire                banks_6_RP_increment;
  wire                banks_6_RP_busy;
  wire                when_MakeTask_l210_38;
  reg        [4:0]    banks_6_RCD_value;
  wire                banks_6_RCD_increment;
  wire                banks_6_RCD_busy;
  wire                when_MakeTask_l210_39;
  reg        [4:0]    banks_6_RTP_value;
  wire                banks_6_RTP_increment;
  wire                banks_6_RTP_busy;
  wire                banks_6_allowPrecharge;
  wire                banks_6_allowActive;
  wire                banks_6_allowWrite;
  wire                banks_6_allowRead;
  wire                banks_7_hits;
  reg                 banks_7_activeNext;
  reg                 banks_7_active;
  wire                when_MakeTask_l47_7;
  wire                when_MakeTask_l50_7;
  wire                when_MakeTask_l210_40;
  reg        [4:0]    banks_7_WR_value;
  wire                banks_7_WR_increment;
  wire                banks_7_WR_busy;
  wire                when_MakeTask_l210_41;
  reg        [4:0]    banks_7_RAS_value;
  wire                banks_7_RAS_increment;
  wire                banks_7_RAS_busy;
  wire                when_MakeTask_l210_42;
  reg        [4:0]    banks_7_RP_value;
  wire                banks_7_RP_increment;
  wire                banks_7_RP_busy;
  wire                when_MakeTask_l210_43;
  reg        [4:0]    banks_7_RCD_value;
  wire                banks_7_RCD_increment;
  wire                banks_7_RCD_busy;
  wire                when_MakeTask_l210_44;
  reg        [4:0]    banks_7_RTP_value;
  wire                banks_7_RTP_increment;
  wire                banks_7_RTP_busy;
  wire                banks_7_allowPrecharge;
  wire                banks_7_allowActive;
  wire                banks_7_allowWrite;
  wire                banks_7_allowRead;
  wire                allowPrechargeAll;
  wire                taskConstructor_input_valid;
  wire                taskConstructor_input_ready;
  wire                taskConstructor_input_payload_write;
  wire       [28:0]   taskConstructor_input_payload_address;
  wire       [17:0]   taskConstructor_input_payload_context;
  wire                taskConstructor_input_payload_burstLast;
  wire       [1:0]    taskConstructor_input_payload_length;
  reg                 io_cmd_rValid;
  reg                 io_cmd_rData_write;
  reg        [28:0]   io_cmd_rData_address;
  reg        [17:0]   io_cmd_rData_context;
  reg                 io_cmd_rData_burstLast;
  reg        [1:0]    io_cmd_rData_length;
  wire                when_Stream_l393;
  wire       [0:0]    taskConstructor_address_byte;
  wire       [9:0]    taskConstructor_address_column;
  wire       [2:0]    taskConstructor_address_bank;
  wire       [14:0]   taskConstructor_address_row;
  wire       [27:0]   taskConstructor_addrMapping_rbcAddress;
  reg                 taskConstructor_status_bankActive;
  reg                 taskConstructor_status_bankHit;
  reg                 taskConstructor_status_allowPrecharge;
  reg                 taskConstructor_status_allowActive;
  reg                 taskConstructor_status_allowWrite;
  reg                 taskConstructor_status_allowRead;
  wire                when_MakeTask_l227;
  wire                when_MakeTask_l228;
  wire                when_MakeTask_l229;
  wire                when_MakeTask_l230;
  wire                when_MakeTask_l232;
  wire                when_MakeTask_l243;
  reg                 station_valid;
  reg                 station_status_bankActive;
  reg                 station_status_bankHit;
  reg                 station_status_allowPrecharge;
  reg                 station_status_allowActive;
  reg                 station_status_allowWrite;
  reg                 station_status_allowRead;
  reg        [0:0]    station_address_byte;
  reg        [9:0]    station_address_column;
  reg        [2:0]    station_address_bank;
  reg        [14:0]   station_address_row;
  reg                 station_write;
  reg        [17:0]   station_context;
  reg        [1:0]    station_offset;
  reg        [1:0]    station_offsetLast;
  wire                when_MakeTask_l227_1;
  wire                when_MakeTask_l228_1;
  wire                when_MakeTask_l229_1;
  wire                when_MakeTask_l230_1;
  wire                when_MakeTask_l232_1;
  wire                when_MakeTask_l243_1;
  wire                when_MakeTask_l111;
  wire                station_inputActive;
  wire                station_inputPrecharge;
  wire                station_inputAccess;
  wire                station_inputWrite;
  wire                station_inputRead;
  wire                station_doActive;
  wire                station_doPrecharge;
  wire                station_doWrite;
  wire                station_doRead;
  wire                station_doAccess;
  wire                station_doSomething;
  wire                station_blockedByWriteToken;
  reg                 station_fire;
  wire                station_last;
  wire                when_MakeTask_l153;
  wire                refreshStream_valid;
  reg                 refreshStream_ready;
  wire       [1:0]    loader_offset;
  wire       [1:0]    loader_offsetLast;
  wire                loader_canSpawn;
  wire                when_MakeTask_l175;
  wire                askRefresh;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [2:0]    fsm_stateReg;
  reg        [2:0]    fsm_stateNext;
  reg                 allowPrechargeAll_regNext;
  wire                when_MakeTask_l196;
  wire                when_MakeTask_l197;
  wire                when_MakeTask_l198;
  wire                when_StateMachine_l237;
  wire                when_StateMachine_l237_1;
  wire                when_StateMachine_l237_2;
  `ifndef SYNTHESIS
  reg [119:0] fsm_stateReg_string;
  reg [119:0] fsm_stateNext_string;
  `endif

  (* ram_style = "distributed" *) reg [14:0] banksRow [0:7];

  assign _zz_CCD_value_1 = CCD_increment;
  assign _zz_CCD_value = {1'd0, _zz_CCD_value_1};
  assign _zz_RFC_increment_1 = 5'h1a;
  assign _zz_RFC_increment = {3'd0, _zz_RFC_increment_1};
  assign _zz_RFC_value_1 = RFC_increment;
  assign _zz_RFC_value = {7'd0, _zz_RFC_value_1};
  assign _zz_RRD_increment_1 = 3'b100;
  assign _zz_RRD_increment = {2'd0, _zz_RRD_increment_1};
  assign _zz_RRD_value_1 = RRD_increment;
  assign _zz_RRD_value = {4'd0, _zz_RRD_value_1};
  assign _zz_WTR_value_1 = WTR_increment;
  assign _zz_WTR_value = {4'd0, _zz_WTR_value_1};
  assign _zz_RTW_value_1 = RTW_increment;
  assign _zz_RTW_value = {4'd0, _zz_RTW_value_1};
  assign _zz_RP_increment_1 = 2'b11;
  assign _zz_RP_increment = {3'd0, _zz_RP_increment_1};
  assign _zz_RP_value_1 = RP_increment;
  assign _zz_RP_value = {4'd0, _zz_RP_value_1};
  assign _zz_FAW_slots_0_increment_1 = 3'b100;
  assign _zz_FAW_slots_0_increment = {2'd0, _zz_FAW_slots_0_increment_1};
  assign _zz_FAW_slots_0_value_1 = FAW_slots_0_increment;
  assign _zz_FAW_slots_0_value = {4'd0, _zz_FAW_slots_0_value_1};
  assign _zz_FAW_slots_1_increment_1 = 3'b100;
  assign _zz_FAW_slots_1_increment = {2'd0, _zz_FAW_slots_1_increment_1};
  assign _zz_FAW_slots_1_value_1 = FAW_slots_1_increment;
  assign _zz_FAW_slots_1_value = {4'd0, _zz_FAW_slots_1_value_1};
  assign _zz_FAW_slots_2_increment_1 = 3'b100;
  assign _zz_FAW_slots_2_increment = {2'd0, _zz_FAW_slots_2_increment_1};
  assign _zz_FAW_slots_2_value_1 = FAW_slots_2_increment;
  assign _zz_FAW_slots_2_value = {4'd0, _zz_FAW_slots_2_value_1};
  assign _zz_FAW_slots_3_increment_1 = 3'b100;
  assign _zz_FAW_slots_3_increment = {2'd0, _zz_FAW_slots_3_increment_1};
  assign _zz_FAW_slots_3_value_1 = FAW_slots_3_increment;
  assign _zz_FAW_slots_3_value = {4'd0, _zz_FAW_slots_3_value_1};
  assign _zz_FAW_busyNext_1 = (FAW_ptr + 2'b01);
  assign _zz_FAW_ptr_1 = io_output_active;
  assign _zz_FAW_ptr = {1'd0, _zz_FAW_ptr_1};
  assign _zz_banks_0_WR_increment_1 = 3'b110;
  assign _zz_banks_0_WR_increment = {2'd0, _zz_banks_0_WR_increment_1};
  assign _zz_banks_0_WR_value_1 = banks_0_WR_increment;
  assign _zz_banks_0_WR_value = {4'd0, _zz_banks_0_WR_value_1};
  assign _zz_banks_0_RAS_increment_1 = 3'b100;
  assign _zz_banks_0_RAS_increment = {2'd0, _zz_banks_0_RAS_increment_1};
  assign _zz_banks_0_RAS_value_1 = banks_0_RAS_increment;
  assign _zz_banks_0_RAS_value = {4'd0, _zz_banks_0_RAS_value_1};
  assign _zz_banks_0_RP_increment_1 = 2'b10;
  assign _zz_banks_0_RP_increment = {3'd0, _zz_banks_0_RP_increment_1};
  assign _zz_banks_0_RP_value_1 = banks_0_RP_increment;
  assign _zz_banks_0_RP_value = {4'd0, _zz_banks_0_RP_value_1};
  assign _zz_banks_0_RCD_increment_1 = 2'b10;
  assign _zz_banks_0_RCD_increment = {3'd0, _zz_banks_0_RCD_increment_1};
  assign _zz_banks_0_RCD_value_1 = banks_0_RCD_increment;
  assign _zz_banks_0_RCD_value = {4'd0, _zz_banks_0_RCD_value_1};
  assign _zz_banks_0_RTP_increment_1 = 3'b100;
  assign _zz_banks_0_RTP_increment = {2'd0, _zz_banks_0_RTP_increment_1};
  assign _zz_banks_0_RTP_value_1 = banks_0_RTP_increment;
  assign _zz_banks_0_RTP_value = {4'd0, _zz_banks_0_RTP_value_1};
  assign _zz_banks_1_WR_increment_1 = 3'b110;
  assign _zz_banks_1_WR_increment = {2'd0, _zz_banks_1_WR_increment_1};
  assign _zz_banks_1_WR_value_1 = banks_1_WR_increment;
  assign _zz_banks_1_WR_value = {4'd0, _zz_banks_1_WR_value_1};
  assign _zz_banks_1_RAS_increment_1 = 3'b100;
  assign _zz_banks_1_RAS_increment = {2'd0, _zz_banks_1_RAS_increment_1};
  assign _zz_banks_1_RAS_value_1 = banks_1_RAS_increment;
  assign _zz_banks_1_RAS_value = {4'd0, _zz_banks_1_RAS_value_1};
  assign _zz_banks_1_RP_increment_1 = 2'b10;
  assign _zz_banks_1_RP_increment = {3'd0, _zz_banks_1_RP_increment_1};
  assign _zz_banks_1_RP_value_1 = banks_1_RP_increment;
  assign _zz_banks_1_RP_value = {4'd0, _zz_banks_1_RP_value_1};
  assign _zz_banks_1_RCD_increment_1 = 2'b10;
  assign _zz_banks_1_RCD_increment = {3'd0, _zz_banks_1_RCD_increment_1};
  assign _zz_banks_1_RCD_value_1 = banks_1_RCD_increment;
  assign _zz_banks_1_RCD_value = {4'd0, _zz_banks_1_RCD_value_1};
  assign _zz_banks_1_RTP_increment_1 = 3'b100;
  assign _zz_banks_1_RTP_increment = {2'd0, _zz_banks_1_RTP_increment_1};
  assign _zz_banks_1_RTP_value_1 = banks_1_RTP_increment;
  assign _zz_banks_1_RTP_value = {4'd0, _zz_banks_1_RTP_value_1};
  assign _zz_banks_2_WR_increment_1 = 3'b110;
  assign _zz_banks_2_WR_increment = {2'd0, _zz_banks_2_WR_increment_1};
  assign _zz_banks_2_WR_value_1 = banks_2_WR_increment;
  assign _zz_banks_2_WR_value = {4'd0, _zz_banks_2_WR_value_1};
  assign _zz_banks_2_RAS_increment_1 = 3'b100;
  assign _zz_banks_2_RAS_increment = {2'd0, _zz_banks_2_RAS_increment_1};
  assign _zz_banks_2_RAS_value_1 = banks_2_RAS_increment;
  assign _zz_banks_2_RAS_value = {4'd0, _zz_banks_2_RAS_value_1};
  assign _zz_banks_2_RP_increment_1 = 2'b10;
  assign _zz_banks_2_RP_increment = {3'd0, _zz_banks_2_RP_increment_1};
  assign _zz_banks_2_RP_value_1 = banks_2_RP_increment;
  assign _zz_banks_2_RP_value = {4'd0, _zz_banks_2_RP_value_1};
  assign _zz_banks_2_RCD_increment_1 = 2'b10;
  assign _zz_banks_2_RCD_increment = {3'd0, _zz_banks_2_RCD_increment_1};
  assign _zz_banks_2_RCD_value_1 = banks_2_RCD_increment;
  assign _zz_banks_2_RCD_value = {4'd0, _zz_banks_2_RCD_value_1};
  assign _zz_banks_2_RTP_increment_1 = 3'b100;
  assign _zz_banks_2_RTP_increment = {2'd0, _zz_banks_2_RTP_increment_1};
  assign _zz_banks_2_RTP_value_1 = banks_2_RTP_increment;
  assign _zz_banks_2_RTP_value = {4'd0, _zz_banks_2_RTP_value_1};
  assign _zz_banks_3_WR_increment_1 = 3'b110;
  assign _zz_banks_3_WR_increment = {2'd0, _zz_banks_3_WR_increment_1};
  assign _zz_banks_3_WR_value_1 = banks_3_WR_increment;
  assign _zz_banks_3_WR_value = {4'd0, _zz_banks_3_WR_value_1};
  assign _zz_banks_3_RAS_increment_1 = 3'b100;
  assign _zz_banks_3_RAS_increment = {2'd0, _zz_banks_3_RAS_increment_1};
  assign _zz_banks_3_RAS_value_1 = banks_3_RAS_increment;
  assign _zz_banks_3_RAS_value = {4'd0, _zz_banks_3_RAS_value_1};
  assign _zz_banks_3_RP_increment_1 = 2'b10;
  assign _zz_banks_3_RP_increment = {3'd0, _zz_banks_3_RP_increment_1};
  assign _zz_banks_3_RP_value_1 = banks_3_RP_increment;
  assign _zz_banks_3_RP_value = {4'd0, _zz_banks_3_RP_value_1};
  assign _zz_banks_3_RCD_increment_1 = 2'b10;
  assign _zz_banks_3_RCD_increment = {3'd0, _zz_banks_3_RCD_increment_1};
  assign _zz_banks_3_RCD_value_1 = banks_3_RCD_increment;
  assign _zz_banks_3_RCD_value = {4'd0, _zz_banks_3_RCD_value_1};
  assign _zz_banks_3_RTP_increment_1 = 3'b100;
  assign _zz_banks_3_RTP_increment = {2'd0, _zz_banks_3_RTP_increment_1};
  assign _zz_banks_3_RTP_value_1 = banks_3_RTP_increment;
  assign _zz_banks_3_RTP_value = {4'd0, _zz_banks_3_RTP_value_1};
  assign _zz_banks_4_WR_increment_1 = 3'b110;
  assign _zz_banks_4_WR_increment = {2'd0, _zz_banks_4_WR_increment_1};
  assign _zz_banks_4_WR_value_1 = banks_4_WR_increment;
  assign _zz_banks_4_WR_value = {4'd0, _zz_banks_4_WR_value_1};
  assign _zz_banks_4_RAS_increment_1 = 3'b100;
  assign _zz_banks_4_RAS_increment = {2'd0, _zz_banks_4_RAS_increment_1};
  assign _zz_banks_4_RAS_value_1 = banks_4_RAS_increment;
  assign _zz_banks_4_RAS_value = {4'd0, _zz_banks_4_RAS_value_1};
  assign _zz_banks_4_RP_increment_1 = 2'b10;
  assign _zz_banks_4_RP_increment = {3'd0, _zz_banks_4_RP_increment_1};
  assign _zz_banks_4_RP_value_1 = banks_4_RP_increment;
  assign _zz_banks_4_RP_value = {4'd0, _zz_banks_4_RP_value_1};
  assign _zz_banks_4_RCD_increment_1 = 2'b10;
  assign _zz_banks_4_RCD_increment = {3'd0, _zz_banks_4_RCD_increment_1};
  assign _zz_banks_4_RCD_value_1 = banks_4_RCD_increment;
  assign _zz_banks_4_RCD_value = {4'd0, _zz_banks_4_RCD_value_1};
  assign _zz_banks_4_RTP_increment_1 = 3'b100;
  assign _zz_banks_4_RTP_increment = {2'd0, _zz_banks_4_RTP_increment_1};
  assign _zz_banks_4_RTP_value_1 = banks_4_RTP_increment;
  assign _zz_banks_4_RTP_value = {4'd0, _zz_banks_4_RTP_value_1};
  assign _zz_banks_5_WR_increment_1 = 3'b110;
  assign _zz_banks_5_WR_increment = {2'd0, _zz_banks_5_WR_increment_1};
  assign _zz_banks_5_WR_value_1 = banks_5_WR_increment;
  assign _zz_banks_5_WR_value = {4'd0, _zz_banks_5_WR_value_1};
  assign _zz_banks_5_RAS_increment_1 = 3'b100;
  assign _zz_banks_5_RAS_increment = {2'd0, _zz_banks_5_RAS_increment_1};
  assign _zz_banks_5_RAS_value_1 = banks_5_RAS_increment;
  assign _zz_banks_5_RAS_value = {4'd0, _zz_banks_5_RAS_value_1};
  assign _zz_banks_5_RP_increment_1 = 2'b10;
  assign _zz_banks_5_RP_increment = {3'd0, _zz_banks_5_RP_increment_1};
  assign _zz_banks_5_RP_value_1 = banks_5_RP_increment;
  assign _zz_banks_5_RP_value = {4'd0, _zz_banks_5_RP_value_1};
  assign _zz_banks_5_RCD_increment_1 = 2'b10;
  assign _zz_banks_5_RCD_increment = {3'd0, _zz_banks_5_RCD_increment_1};
  assign _zz_banks_5_RCD_value_1 = banks_5_RCD_increment;
  assign _zz_banks_5_RCD_value = {4'd0, _zz_banks_5_RCD_value_1};
  assign _zz_banks_5_RTP_increment_1 = 3'b100;
  assign _zz_banks_5_RTP_increment = {2'd0, _zz_banks_5_RTP_increment_1};
  assign _zz_banks_5_RTP_value_1 = banks_5_RTP_increment;
  assign _zz_banks_5_RTP_value = {4'd0, _zz_banks_5_RTP_value_1};
  assign _zz_banks_6_WR_increment_1 = 3'b110;
  assign _zz_banks_6_WR_increment = {2'd0, _zz_banks_6_WR_increment_1};
  assign _zz_banks_6_WR_value_1 = banks_6_WR_increment;
  assign _zz_banks_6_WR_value = {4'd0, _zz_banks_6_WR_value_1};
  assign _zz_banks_6_RAS_increment_1 = 3'b100;
  assign _zz_banks_6_RAS_increment = {2'd0, _zz_banks_6_RAS_increment_1};
  assign _zz_banks_6_RAS_value_1 = banks_6_RAS_increment;
  assign _zz_banks_6_RAS_value = {4'd0, _zz_banks_6_RAS_value_1};
  assign _zz_banks_6_RP_increment_1 = 2'b10;
  assign _zz_banks_6_RP_increment = {3'd0, _zz_banks_6_RP_increment_1};
  assign _zz_banks_6_RP_value_1 = banks_6_RP_increment;
  assign _zz_banks_6_RP_value = {4'd0, _zz_banks_6_RP_value_1};
  assign _zz_banks_6_RCD_increment_1 = 2'b10;
  assign _zz_banks_6_RCD_increment = {3'd0, _zz_banks_6_RCD_increment_1};
  assign _zz_banks_6_RCD_value_1 = banks_6_RCD_increment;
  assign _zz_banks_6_RCD_value = {4'd0, _zz_banks_6_RCD_value_1};
  assign _zz_banks_6_RTP_increment_1 = 3'b100;
  assign _zz_banks_6_RTP_increment = {2'd0, _zz_banks_6_RTP_increment_1};
  assign _zz_banks_6_RTP_value_1 = banks_6_RTP_increment;
  assign _zz_banks_6_RTP_value = {4'd0, _zz_banks_6_RTP_value_1};
  assign _zz_banks_7_WR_increment_1 = 3'b110;
  assign _zz_banks_7_WR_increment = {2'd0, _zz_banks_7_WR_increment_1};
  assign _zz_banks_7_WR_value_1 = banks_7_WR_increment;
  assign _zz_banks_7_WR_value = {4'd0, _zz_banks_7_WR_value_1};
  assign _zz_banks_7_RAS_increment_1 = 3'b100;
  assign _zz_banks_7_RAS_increment = {2'd0, _zz_banks_7_RAS_increment_1};
  assign _zz_banks_7_RAS_value_1 = banks_7_RAS_increment;
  assign _zz_banks_7_RAS_value = {4'd0, _zz_banks_7_RAS_value_1};
  assign _zz_banks_7_RP_increment_1 = 2'b10;
  assign _zz_banks_7_RP_increment = {3'd0, _zz_banks_7_RP_increment_1};
  assign _zz_banks_7_RP_value_1 = banks_7_RP_increment;
  assign _zz_banks_7_RP_value = {4'd0, _zz_banks_7_RP_value_1};
  assign _zz_banks_7_RCD_increment_1 = 2'b10;
  assign _zz_banks_7_RCD_increment = {3'd0, _zz_banks_7_RCD_increment_1};
  assign _zz_banks_7_RCD_value_1 = banks_7_RCD_increment;
  assign _zz_banks_7_RCD_value = {4'd0, _zz_banks_7_RCD_value_1};
  assign _zz_banks_7_RTP_increment_1 = 3'b100;
  assign _zz_banks_7_RTP_increment = {2'd0, _zz_banks_7_RTP_increment_1};
  assign _zz_banks_7_RTP_value_1 = banks_7_RTP_increment;
  assign _zz_banks_7_RTP_value = {4'd0, _zz_banks_7_RTP_value_1};
  assign _zz_io_output_address_column_1 = ({3'd0,station_offset} <<< 2'd3);
  assign _zz_io_output_address_column = {5'd0, _zz_io_output_address_column_1};
  assign _zz_banksRow_port = io_output_address_row;
  assign banksRow_spinal_port0 = banksRow[taskConstructor_address_bank];
  always @(posedge clk_out4) begin
    if(_zz_1) begin
      banksRow[io_output_address_bank] <= _zz_banksRow_port;
    end
  end

  Refresher refresher_1 (
    .io_refresh_valid (refresher_1_io_refresh_valid), //o
    .io_refresh_ready (refreshStream_ready         ), //i
    .clk_out4         (clk_out4                    ), //i
    .rstN             (rstN                        )  //i
  );
  initial begin
  `ifndef SYNTHESIS
    CCD_value = {$urandom};
    RFC_value = {$urandom};
    RRD_value = {$urandom};
    WTR_value = {$urandom};
    RTW_value = {$urandom};
    RP_value = {$urandom};
    FAW_slots_0_value = {$urandom};
    FAW_slots_1_value = {$urandom};
    FAW_slots_2_value = {$urandom};
    FAW_slots_3_value = {$urandom};
    banks_0_WR_value = {$urandom};
    banks_0_RAS_value = {$urandom};
    banks_0_RP_value = {$urandom};
    banks_0_RCD_value = {$urandom};
    banks_0_RTP_value = {$urandom};
    banks_1_WR_value = {$urandom};
    banks_1_RAS_value = {$urandom};
    banks_1_RP_value = {$urandom};
    banks_1_RCD_value = {$urandom};
    banks_1_RTP_value = {$urandom};
    banks_2_WR_value = {$urandom};
    banks_2_RAS_value = {$urandom};
    banks_2_RP_value = {$urandom};
    banks_2_RCD_value = {$urandom};
    banks_2_RTP_value = {$urandom};
    banks_3_WR_value = {$urandom};
    banks_3_RAS_value = {$urandom};
    banks_3_RP_value = {$urandom};
    banks_3_RCD_value = {$urandom};
    banks_3_RTP_value = {$urandom};
    banks_4_WR_value = {$urandom};
    banks_4_RAS_value = {$urandom};
    banks_4_RP_value = {$urandom};
    banks_4_RCD_value = {$urandom};
    banks_4_RTP_value = {$urandom};
    banks_5_WR_value = {$urandom};
    banks_5_RAS_value = {$urandom};
    banks_5_RP_value = {$urandom};
    banks_5_RCD_value = {$urandom};
    banks_5_RTP_value = {$urandom};
    banks_6_WR_value = {$urandom};
    banks_6_RAS_value = {$urandom};
    banks_6_RP_value = {$urandom};
    banks_6_RCD_value = {$urandom};
    banks_6_RTP_value = {$urandom};
    banks_7_WR_value = {$urandom};
    banks_7_RAS_value = {$urandom};
    banks_7_RP_value = {$urandom};
    banks_7_RCD_value = {$urandom};
    banks_7_RTP_value = {$urandom};
  `endif
  end

  always @(*) begin
    case(_zz_FAW_busyNext_1)
      2'b00 : _zz_FAW_busyNext = FAW_slots_0_busy;
      2'b01 : _zz_FAW_busyNext = FAW_slots_1_busy;
      2'b10 : _zz_FAW_busyNext = FAW_slots_2_busy;
      default : _zz_FAW_busyNext = FAW_slots_3_busy;
    endcase
  end

  always @(*) begin
    case(taskConstructor_address_bank)
      3'b000 : begin
        _zz_taskConstructor_status_bankActive = banks_0_active;
        _zz_when_MakeTask_l227 = banks_0_allowPrecharge;
        _zz_when_MakeTask_l228 = banks_0_allowActive;
        _zz_when_MakeTask_l229 = banks_0_allowWrite;
        _zz_when_MakeTask_l230 = banks_0_allowRead;
      end
      3'b001 : begin
        _zz_taskConstructor_status_bankActive = banks_1_active;
        _zz_when_MakeTask_l227 = banks_1_allowPrecharge;
        _zz_when_MakeTask_l228 = banks_1_allowActive;
        _zz_when_MakeTask_l229 = banks_1_allowWrite;
        _zz_when_MakeTask_l230 = banks_1_allowRead;
      end
      3'b010 : begin
        _zz_taskConstructor_status_bankActive = banks_2_active;
        _zz_when_MakeTask_l227 = banks_2_allowPrecharge;
        _zz_when_MakeTask_l228 = banks_2_allowActive;
        _zz_when_MakeTask_l229 = banks_2_allowWrite;
        _zz_when_MakeTask_l230 = banks_2_allowRead;
      end
      3'b011 : begin
        _zz_taskConstructor_status_bankActive = banks_3_active;
        _zz_when_MakeTask_l227 = banks_3_allowPrecharge;
        _zz_when_MakeTask_l228 = banks_3_allowActive;
        _zz_when_MakeTask_l229 = banks_3_allowWrite;
        _zz_when_MakeTask_l230 = banks_3_allowRead;
      end
      3'b100 : begin
        _zz_taskConstructor_status_bankActive = banks_4_active;
        _zz_when_MakeTask_l227 = banks_4_allowPrecharge;
        _zz_when_MakeTask_l228 = banks_4_allowActive;
        _zz_when_MakeTask_l229 = banks_4_allowWrite;
        _zz_when_MakeTask_l230 = banks_4_allowRead;
      end
      3'b101 : begin
        _zz_taskConstructor_status_bankActive = banks_5_active;
        _zz_when_MakeTask_l227 = banks_5_allowPrecharge;
        _zz_when_MakeTask_l228 = banks_5_allowActive;
        _zz_when_MakeTask_l229 = banks_5_allowWrite;
        _zz_when_MakeTask_l230 = banks_5_allowRead;
      end
      3'b110 : begin
        _zz_taskConstructor_status_bankActive = banks_6_active;
        _zz_when_MakeTask_l227 = banks_6_allowPrecharge;
        _zz_when_MakeTask_l228 = banks_6_allowActive;
        _zz_when_MakeTask_l229 = banks_6_allowWrite;
        _zz_when_MakeTask_l230 = banks_6_allowRead;
      end
      default : begin
        _zz_taskConstructor_status_bankActive = banks_7_active;
        _zz_when_MakeTask_l227 = banks_7_allowPrecharge;
        _zz_when_MakeTask_l228 = banks_7_allowActive;
        _zz_when_MakeTask_l229 = banks_7_allowWrite;
        _zz_when_MakeTask_l230 = banks_7_allowRead;
      end
    endcase
  end

  always @(*) begin
    case(station_address_bank)
      3'b000 : begin
        _zz_when_MakeTask_l227_1 = banks_0_allowPrecharge;
        _zz_when_MakeTask_l228_1 = banks_0_allowActive;
        _zz_when_MakeTask_l229_1 = banks_0_allowWrite;
        _zz_when_MakeTask_l230_1 = banks_0_allowRead;
      end
      3'b001 : begin
        _zz_when_MakeTask_l227_1 = banks_1_allowPrecharge;
        _zz_when_MakeTask_l228_1 = banks_1_allowActive;
        _zz_when_MakeTask_l229_1 = banks_1_allowWrite;
        _zz_when_MakeTask_l230_1 = banks_1_allowRead;
      end
      3'b010 : begin
        _zz_when_MakeTask_l227_1 = banks_2_allowPrecharge;
        _zz_when_MakeTask_l228_1 = banks_2_allowActive;
        _zz_when_MakeTask_l229_1 = banks_2_allowWrite;
        _zz_when_MakeTask_l230_1 = banks_2_allowRead;
      end
      3'b011 : begin
        _zz_when_MakeTask_l227_1 = banks_3_allowPrecharge;
        _zz_when_MakeTask_l228_1 = banks_3_allowActive;
        _zz_when_MakeTask_l229_1 = banks_3_allowWrite;
        _zz_when_MakeTask_l230_1 = banks_3_allowRead;
      end
      3'b100 : begin
        _zz_when_MakeTask_l227_1 = banks_4_allowPrecharge;
        _zz_when_MakeTask_l228_1 = banks_4_allowActive;
        _zz_when_MakeTask_l229_1 = banks_4_allowWrite;
        _zz_when_MakeTask_l230_1 = banks_4_allowRead;
      end
      3'b101 : begin
        _zz_when_MakeTask_l227_1 = banks_5_allowPrecharge;
        _zz_when_MakeTask_l228_1 = banks_5_allowActive;
        _zz_when_MakeTask_l229_1 = banks_5_allowWrite;
        _zz_when_MakeTask_l230_1 = banks_5_allowRead;
      end
      3'b110 : begin
        _zz_when_MakeTask_l227_1 = banks_6_allowPrecharge;
        _zz_when_MakeTask_l228_1 = banks_6_allowActive;
        _zz_when_MakeTask_l229_1 = banks_6_allowWrite;
        _zz_when_MakeTask_l230_1 = banks_6_allowRead;
      end
      default : begin
        _zz_when_MakeTask_l227_1 = banks_7_allowPrecharge;
        _zz_when_MakeTask_l228_1 = banks_7_allowActive;
        _zz_when_MakeTask_l229_1 = banks_7_allowWrite;
        _zz_when_MakeTask_l230_1 = banks_7_allowRead;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_1_BOOT : fsm_stateReg_string = "BOOT           ";
      fsm_enumDef_1_idle : fsm_stateReg_string = "idle           ";
      fsm_enumDef_1_prechargeAllCmd : fsm_stateReg_string = "prechargeAllCmd";
      fsm_enumDef_1_refreshCmd : fsm_stateReg_string = "refreshCmd     ";
      fsm_enumDef_1_refreshReady : fsm_stateReg_string = "refreshReady   ";
      default : fsm_stateReg_string = "???????????????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_1_BOOT : fsm_stateNext_string = "BOOT           ";
      fsm_enumDef_1_idle : fsm_stateNext_string = "idle           ";
      fsm_enumDef_1_prechargeAllCmd : fsm_stateNext_string = "prechargeAllCmd";
      fsm_enumDef_1_refreshCmd : fsm_stateNext_string = "refreshCmd     ";
      fsm_enumDef_1_refreshReady : fsm_stateNext_string = "refreshReady   ";
      default : fsm_stateNext_string = "???????????????";
    endcase
  end
  `endif

  always @(*) begin
    _zz_1 = 1'b0;
    if(station_doSomething) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    readyForRefresh = 1'b1;
    if(taskConstructor_input_valid) begin
      readyForRefresh = 1'b0;
    end
    if(io_cmd_valid) begin
      readyForRefresh = 1'b0;
    end
    if(station_valid) begin
      readyForRefresh = 1'b0;
    end
  end

  assign when_MakeTask_l210 = (io_output_read || io_output_write);
  assign CCD_increment = (CCD_value != 2'b10);
  assign CCD_busy = CCD_increment;
  assign RFC_increment = (RFC_value != _zz_RFC_increment);
  assign RFC_busy = RFC_increment;
  assign RRD_increment = (RRD_value != _zz_RRD_increment);
  assign RRD_busy = RRD_increment;
  assign WTR_increment = (WTR_value != 5'h10);
  assign WTR_busy = WTR_increment;
  assign RTW_increment = (RTW_value != 5'h10);
  assign RTW_busy = RTW_increment;
  assign RP_increment = (RP_value != _zz_RP_increment);
  assign RP_busy = RP_increment;
  assign when_MakeTask_l210_1 = ((FAW_ptr == 2'b00) && io_output_active);
  assign FAW_slots_0_increment = (FAW_slots_0_value != _zz_FAW_slots_0_increment);
  assign FAW_slots_0_busy = FAW_slots_0_increment;
  assign when_MakeTask_l210_2 = ((FAW_ptr == 2'b01) && io_output_active);
  assign FAW_slots_1_increment = (FAW_slots_1_value != _zz_FAW_slots_1_increment);
  assign FAW_slots_1_busy = FAW_slots_1_increment;
  assign when_MakeTask_l210_3 = ((FAW_ptr == 2'b10) && io_output_active);
  assign FAW_slots_2_increment = (FAW_slots_2_value != _zz_FAW_slots_2_increment);
  assign FAW_slots_2_busy = FAW_slots_2_increment;
  assign when_MakeTask_l210_4 = ((FAW_ptr == 2'b11) && io_output_active);
  assign FAW_slots_3_increment = (FAW_slots_3_value != _zz_FAW_slots_3_increment);
  assign FAW_slots_3_busy = FAW_slots_3_increment;
  assign FAW_busyNext = _zz_FAW_busyNext;
  assign banks_0_hits = (io_output_address_bank == 3'b000);
  always @(*) begin
    banks_0_activeNext = banks_0_active;
    if(when_MakeTask_l47) begin
      banks_0_activeNext = 1'b0;
    end else begin
      if(when_MakeTask_l50) begin
        banks_0_activeNext = 1'b1;
      end
    end
  end

  assign when_MakeTask_l47 = ((banks_0_hits && io_output_precharge) || io_output_prechargeAll);
  assign when_MakeTask_l50 = (banks_0_hits && io_output_active);
  assign when_MakeTask_l210_5 = (banks_0_hits && io_output_write);
  assign banks_0_WR_increment = (banks_0_WR_value != _zz_banks_0_WR_increment);
  assign banks_0_WR_busy = banks_0_WR_increment;
  assign when_MakeTask_l210_6 = (banks_0_hits && io_output_active);
  assign banks_0_RAS_increment = (banks_0_RAS_value != _zz_banks_0_RAS_increment);
  assign banks_0_RAS_busy = banks_0_RAS_increment;
  assign when_MakeTask_l210_7 = (banks_0_hits && io_output_precharge);
  assign banks_0_RP_increment = (banks_0_RP_value != _zz_banks_0_RP_increment);
  assign banks_0_RP_busy = banks_0_RP_increment;
  assign when_MakeTask_l210_8 = (banks_0_hits && io_output_active);
  assign banks_0_RCD_increment = (banks_0_RCD_value != _zz_banks_0_RCD_increment);
  assign banks_0_RCD_busy = banks_0_RCD_increment;
  assign when_MakeTask_l210_9 = (banks_0_hits && io_output_read);
  assign banks_0_RTP_increment = (banks_0_RTP_value != _zz_banks_0_RTP_increment);
  assign banks_0_RTP_busy = banks_0_RTP_increment;
  assign banks_0_allowPrecharge = (((! banks_0_WR_busy) && (! banks_0_RAS_busy)) && (! banks_0_RTP_busy));
  assign banks_0_allowActive = (! banks_0_RP_busy);
  assign banks_0_allowWrite = (! banks_0_RCD_busy);
  assign banks_0_allowRead = (! banks_0_RCD_busy);
  assign banks_1_hits = (io_output_address_bank == 3'b001);
  always @(*) begin
    banks_1_activeNext = banks_1_active;
    if(when_MakeTask_l47_1) begin
      banks_1_activeNext = 1'b0;
    end else begin
      if(when_MakeTask_l50_1) begin
        banks_1_activeNext = 1'b1;
      end
    end
  end

  assign when_MakeTask_l47_1 = ((banks_1_hits && io_output_precharge) || io_output_prechargeAll);
  assign when_MakeTask_l50_1 = (banks_1_hits && io_output_active);
  assign when_MakeTask_l210_10 = (banks_1_hits && io_output_write);
  assign banks_1_WR_increment = (banks_1_WR_value != _zz_banks_1_WR_increment);
  assign banks_1_WR_busy = banks_1_WR_increment;
  assign when_MakeTask_l210_11 = (banks_1_hits && io_output_active);
  assign banks_1_RAS_increment = (banks_1_RAS_value != _zz_banks_1_RAS_increment);
  assign banks_1_RAS_busy = banks_1_RAS_increment;
  assign when_MakeTask_l210_12 = (banks_1_hits && io_output_precharge);
  assign banks_1_RP_increment = (banks_1_RP_value != _zz_banks_1_RP_increment);
  assign banks_1_RP_busy = banks_1_RP_increment;
  assign when_MakeTask_l210_13 = (banks_1_hits && io_output_active);
  assign banks_1_RCD_increment = (banks_1_RCD_value != _zz_banks_1_RCD_increment);
  assign banks_1_RCD_busy = banks_1_RCD_increment;
  assign when_MakeTask_l210_14 = (banks_1_hits && io_output_read);
  assign banks_1_RTP_increment = (banks_1_RTP_value != _zz_banks_1_RTP_increment);
  assign banks_1_RTP_busy = banks_1_RTP_increment;
  assign banks_1_allowPrecharge = (((! banks_1_WR_busy) && (! banks_1_RAS_busy)) && (! banks_1_RTP_busy));
  assign banks_1_allowActive = (! banks_1_RP_busy);
  assign banks_1_allowWrite = (! banks_1_RCD_busy);
  assign banks_1_allowRead = (! banks_1_RCD_busy);
  assign banks_2_hits = (io_output_address_bank == 3'b010);
  always @(*) begin
    banks_2_activeNext = banks_2_active;
    if(when_MakeTask_l47_2) begin
      banks_2_activeNext = 1'b0;
    end else begin
      if(when_MakeTask_l50_2) begin
        banks_2_activeNext = 1'b1;
      end
    end
  end

  assign when_MakeTask_l47_2 = ((banks_2_hits && io_output_precharge) || io_output_prechargeAll);
  assign when_MakeTask_l50_2 = (banks_2_hits && io_output_active);
  assign when_MakeTask_l210_15 = (banks_2_hits && io_output_write);
  assign banks_2_WR_increment = (banks_2_WR_value != _zz_banks_2_WR_increment);
  assign banks_2_WR_busy = banks_2_WR_increment;
  assign when_MakeTask_l210_16 = (banks_2_hits && io_output_active);
  assign banks_2_RAS_increment = (banks_2_RAS_value != _zz_banks_2_RAS_increment);
  assign banks_2_RAS_busy = banks_2_RAS_increment;
  assign when_MakeTask_l210_17 = (banks_2_hits && io_output_precharge);
  assign banks_2_RP_increment = (banks_2_RP_value != _zz_banks_2_RP_increment);
  assign banks_2_RP_busy = banks_2_RP_increment;
  assign when_MakeTask_l210_18 = (banks_2_hits && io_output_active);
  assign banks_2_RCD_increment = (banks_2_RCD_value != _zz_banks_2_RCD_increment);
  assign banks_2_RCD_busy = banks_2_RCD_increment;
  assign when_MakeTask_l210_19 = (banks_2_hits && io_output_read);
  assign banks_2_RTP_increment = (banks_2_RTP_value != _zz_banks_2_RTP_increment);
  assign banks_2_RTP_busy = banks_2_RTP_increment;
  assign banks_2_allowPrecharge = (((! banks_2_WR_busy) && (! banks_2_RAS_busy)) && (! banks_2_RTP_busy));
  assign banks_2_allowActive = (! banks_2_RP_busy);
  assign banks_2_allowWrite = (! banks_2_RCD_busy);
  assign banks_2_allowRead = (! banks_2_RCD_busy);
  assign banks_3_hits = (io_output_address_bank == 3'b011);
  always @(*) begin
    banks_3_activeNext = banks_3_active;
    if(when_MakeTask_l47_3) begin
      banks_3_activeNext = 1'b0;
    end else begin
      if(when_MakeTask_l50_3) begin
        banks_3_activeNext = 1'b1;
      end
    end
  end

  assign when_MakeTask_l47_3 = ((banks_3_hits && io_output_precharge) || io_output_prechargeAll);
  assign when_MakeTask_l50_3 = (banks_3_hits && io_output_active);
  assign when_MakeTask_l210_20 = (banks_3_hits && io_output_write);
  assign banks_3_WR_increment = (banks_3_WR_value != _zz_banks_3_WR_increment);
  assign banks_3_WR_busy = banks_3_WR_increment;
  assign when_MakeTask_l210_21 = (banks_3_hits && io_output_active);
  assign banks_3_RAS_increment = (banks_3_RAS_value != _zz_banks_3_RAS_increment);
  assign banks_3_RAS_busy = banks_3_RAS_increment;
  assign when_MakeTask_l210_22 = (banks_3_hits && io_output_precharge);
  assign banks_3_RP_increment = (banks_3_RP_value != _zz_banks_3_RP_increment);
  assign banks_3_RP_busy = banks_3_RP_increment;
  assign when_MakeTask_l210_23 = (banks_3_hits && io_output_active);
  assign banks_3_RCD_increment = (banks_3_RCD_value != _zz_banks_3_RCD_increment);
  assign banks_3_RCD_busy = banks_3_RCD_increment;
  assign when_MakeTask_l210_24 = (banks_3_hits && io_output_read);
  assign banks_3_RTP_increment = (banks_3_RTP_value != _zz_banks_3_RTP_increment);
  assign banks_3_RTP_busy = banks_3_RTP_increment;
  assign banks_3_allowPrecharge = (((! banks_3_WR_busy) && (! banks_3_RAS_busy)) && (! banks_3_RTP_busy));
  assign banks_3_allowActive = (! banks_3_RP_busy);
  assign banks_3_allowWrite = (! banks_3_RCD_busy);
  assign banks_3_allowRead = (! banks_3_RCD_busy);
  assign banks_4_hits = (io_output_address_bank == 3'b100);
  always @(*) begin
    banks_4_activeNext = banks_4_active;
    if(when_MakeTask_l47_4) begin
      banks_4_activeNext = 1'b0;
    end else begin
      if(when_MakeTask_l50_4) begin
        banks_4_activeNext = 1'b1;
      end
    end
  end

  assign when_MakeTask_l47_4 = ((banks_4_hits && io_output_precharge) || io_output_prechargeAll);
  assign when_MakeTask_l50_4 = (banks_4_hits && io_output_active);
  assign when_MakeTask_l210_25 = (banks_4_hits && io_output_write);
  assign banks_4_WR_increment = (banks_4_WR_value != _zz_banks_4_WR_increment);
  assign banks_4_WR_busy = banks_4_WR_increment;
  assign when_MakeTask_l210_26 = (banks_4_hits && io_output_active);
  assign banks_4_RAS_increment = (banks_4_RAS_value != _zz_banks_4_RAS_increment);
  assign banks_4_RAS_busy = banks_4_RAS_increment;
  assign when_MakeTask_l210_27 = (banks_4_hits && io_output_precharge);
  assign banks_4_RP_increment = (banks_4_RP_value != _zz_banks_4_RP_increment);
  assign banks_4_RP_busy = banks_4_RP_increment;
  assign when_MakeTask_l210_28 = (banks_4_hits && io_output_active);
  assign banks_4_RCD_increment = (banks_4_RCD_value != _zz_banks_4_RCD_increment);
  assign banks_4_RCD_busy = banks_4_RCD_increment;
  assign when_MakeTask_l210_29 = (banks_4_hits && io_output_read);
  assign banks_4_RTP_increment = (banks_4_RTP_value != _zz_banks_4_RTP_increment);
  assign banks_4_RTP_busy = banks_4_RTP_increment;
  assign banks_4_allowPrecharge = (((! banks_4_WR_busy) && (! banks_4_RAS_busy)) && (! banks_4_RTP_busy));
  assign banks_4_allowActive = (! banks_4_RP_busy);
  assign banks_4_allowWrite = (! banks_4_RCD_busy);
  assign banks_4_allowRead = (! banks_4_RCD_busy);
  assign banks_5_hits = (io_output_address_bank == 3'b101);
  always @(*) begin
    banks_5_activeNext = banks_5_active;
    if(when_MakeTask_l47_5) begin
      banks_5_activeNext = 1'b0;
    end else begin
      if(when_MakeTask_l50_5) begin
        banks_5_activeNext = 1'b1;
      end
    end
  end

  assign when_MakeTask_l47_5 = ((banks_5_hits && io_output_precharge) || io_output_prechargeAll);
  assign when_MakeTask_l50_5 = (banks_5_hits && io_output_active);
  assign when_MakeTask_l210_30 = (banks_5_hits && io_output_write);
  assign banks_5_WR_increment = (banks_5_WR_value != _zz_banks_5_WR_increment);
  assign banks_5_WR_busy = banks_5_WR_increment;
  assign when_MakeTask_l210_31 = (banks_5_hits && io_output_active);
  assign banks_5_RAS_increment = (banks_5_RAS_value != _zz_banks_5_RAS_increment);
  assign banks_5_RAS_busy = banks_5_RAS_increment;
  assign when_MakeTask_l210_32 = (banks_5_hits && io_output_precharge);
  assign banks_5_RP_increment = (banks_5_RP_value != _zz_banks_5_RP_increment);
  assign banks_5_RP_busy = banks_5_RP_increment;
  assign when_MakeTask_l210_33 = (banks_5_hits && io_output_active);
  assign banks_5_RCD_increment = (banks_5_RCD_value != _zz_banks_5_RCD_increment);
  assign banks_5_RCD_busy = banks_5_RCD_increment;
  assign when_MakeTask_l210_34 = (banks_5_hits && io_output_read);
  assign banks_5_RTP_increment = (banks_5_RTP_value != _zz_banks_5_RTP_increment);
  assign banks_5_RTP_busy = banks_5_RTP_increment;
  assign banks_5_allowPrecharge = (((! banks_5_WR_busy) && (! banks_5_RAS_busy)) && (! banks_5_RTP_busy));
  assign banks_5_allowActive = (! banks_5_RP_busy);
  assign banks_5_allowWrite = (! banks_5_RCD_busy);
  assign banks_5_allowRead = (! banks_5_RCD_busy);
  assign banks_6_hits = (io_output_address_bank == 3'b110);
  always @(*) begin
    banks_6_activeNext = banks_6_active;
    if(when_MakeTask_l47_6) begin
      banks_6_activeNext = 1'b0;
    end else begin
      if(when_MakeTask_l50_6) begin
        banks_6_activeNext = 1'b1;
      end
    end
  end

  assign when_MakeTask_l47_6 = ((banks_6_hits && io_output_precharge) || io_output_prechargeAll);
  assign when_MakeTask_l50_6 = (banks_6_hits && io_output_active);
  assign when_MakeTask_l210_35 = (banks_6_hits && io_output_write);
  assign banks_6_WR_increment = (banks_6_WR_value != _zz_banks_6_WR_increment);
  assign banks_6_WR_busy = banks_6_WR_increment;
  assign when_MakeTask_l210_36 = (banks_6_hits && io_output_active);
  assign banks_6_RAS_increment = (banks_6_RAS_value != _zz_banks_6_RAS_increment);
  assign banks_6_RAS_busy = banks_6_RAS_increment;
  assign when_MakeTask_l210_37 = (banks_6_hits && io_output_precharge);
  assign banks_6_RP_increment = (banks_6_RP_value != _zz_banks_6_RP_increment);
  assign banks_6_RP_busy = banks_6_RP_increment;
  assign when_MakeTask_l210_38 = (banks_6_hits && io_output_active);
  assign banks_6_RCD_increment = (banks_6_RCD_value != _zz_banks_6_RCD_increment);
  assign banks_6_RCD_busy = banks_6_RCD_increment;
  assign when_MakeTask_l210_39 = (banks_6_hits && io_output_read);
  assign banks_6_RTP_increment = (banks_6_RTP_value != _zz_banks_6_RTP_increment);
  assign banks_6_RTP_busy = banks_6_RTP_increment;
  assign banks_6_allowPrecharge = (((! banks_6_WR_busy) && (! banks_6_RAS_busy)) && (! banks_6_RTP_busy));
  assign banks_6_allowActive = (! banks_6_RP_busy);
  assign banks_6_allowWrite = (! banks_6_RCD_busy);
  assign banks_6_allowRead = (! banks_6_RCD_busy);
  assign banks_7_hits = (io_output_address_bank == 3'b111);
  always @(*) begin
    banks_7_activeNext = banks_7_active;
    if(when_MakeTask_l47_7) begin
      banks_7_activeNext = 1'b0;
    end else begin
      if(when_MakeTask_l50_7) begin
        banks_7_activeNext = 1'b1;
      end
    end
  end

  assign when_MakeTask_l47_7 = ((banks_7_hits && io_output_precharge) || io_output_prechargeAll);
  assign when_MakeTask_l50_7 = (banks_7_hits && io_output_active);
  assign when_MakeTask_l210_40 = (banks_7_hits && io_output_write);
  assign banks_7_WR_increment = (banks_7_WR_value != _zz_banks_7_WR_increment);
  assign banks_7_WR_busy = banks_7_WR_increment;
  assign when_MakeTask_l210_41 = (banks_7_hits && io_output_active);
  assign banks_7_RAS_increment = (banks_7_RAS_value != _zz_banks_7_RAS_increment);
  assign banks_7_RAS_busy = banks_7_RAS_increment;
  assign when_MakeTask_l210_42 = (banks_7_hits && io_output_precharge);
  assign banks_7_RP_increment = (banks_7_RP_value != _zz_banks_7_RP_increment);
  assign banks_7_RP_busy = banks_7_RP_increment;
  assign when_MakeTask_l210_43 = (banks_7_hits && io_output_active);
  assign banks_7_RCD_increment = (banks_7_RCD_value != _zz_banks_7_RCD_increment);
  assign banks_7_RCD_busy = banks_7_RCD_increment;
  assign when_MakeTask_l210_44 = (banks_7_hits && io_output_read);
  assign banks_7_RTP_increment = (banks_7_RTP_value != _zz_banks_7_RTP_increment);
  assign banks_7_RTP_busy = banks_7_RTP_increment;
  assign banks_7_allowPrecharge = (((! banks_7_WR_busy) && (! banks_7_RAS_busy)) && (! banks_7_RTP_busy));
  assign banks_7_allowActive = (! banks_7_RP_busy);
  assign banks_7_allowWrite = (! banks_7_RCD_busy);
  assign banks_7_allowRead = (! banks_7_RCD_busy);
  assign allowPrechargeAll = (&{banks_7_allowPrecharge,{banks_6_allowPrecharge,{banks_5_allowPrecharge,{banks_4_allowPrecharge,{banks_3_allowPrecharge,{banks_2_allowPrecharge,{banks_1_allowPrecharge,banks_0_allowPrecharge}}}}}}});
  always @(*) begin
    io_cmd_ready = taskConstructor_input_ready;
    if(when_Stream_l393) begin
      io_cmd_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! taskConstructor_input_valid);
  assign taskConstructor_input_valid = io_cmd_rValid;
  assign taskConstructor_input_payload_write = io_cmd_rData_write;
  assign taskConstructor_input_payload_address = io_cmd_rData_address;
  assign taskConstructor_input_payload_context = io_cmd_rData_context;
  assign taskConstructor_input_payload_burstLast = io_cmd_rData_burstLast;
  assign taskConstructor_input_payload_length = io_cmd_rData_length;
  assign taskConstructor_addrMapping_rbcAddress = taskConstructor_input_payload_address[28 : 1];
  assign taskConstructor_address_byte = taskConstructor_input_payload_address[0 : 0];
  assign taskConstructor_address_column = taskConstructor_addrMapping_rbcAddress[9 : 0];
  assign taskConstructor_address_bank = taskConstructor_addrMapping_rbcAddress[12 : 10];
  assign taskConstructor_address_row = taskConstructor_addrMapping_rbcAddress[27 : 13];
  always @(*) begin
    taskConstructor_status_allowPrecharge = 1'b1;
    if(when_MakeTask_l227) begin
      taskConstructor_status_allowPrecharge = 1'b0;
    end
    if(when_MakeTask_l232) begin
      if(io_output_active) begin
        taskConstructor_status_allowPrecharge = 1'b0;
      end
      if(when_MakeTask_l243) begin
        taskConstructor_status_allowPrecharge = 1'b0;
      end
    end
  end

  always @(*) begin
    taskConstructor_status_allowActive = ((! RRD_busy) && (! FAW_busyNext));
    if(when_MakeTask_l228) begin
      taskConstructor_status_allowActive = 1'b0;
    end
    if(when_MakeTask_l232) begin
      if(io_output_precharge) begin
        taskConstructor_status_allowActive = 1'b0;
      end
    end
  end

  always @(*) begin
    taskConstructor_status_allowWrite = ((! RTW_busy) && (! CCD_busy));
    if(when_MakeTask_l229) begin
      taskConstructor_status_allowWrite = 1'b0;
    end
    if(when_MakeTask_l232) begin
      if(io_output_active) begin
        taskConstructor_status_allowWrite = 1'b0;
      end
    end
  end

  always @(*) begin
    taskConstructor_status_allowRead = ((! WTR_busy) && (! CCD_busy));
    if(when_MakeTask_l230) begin
      taskConstructor_status_allowRead = 1'b0;
    end
    if(when_MakeTask_l232) begin
      if(io_output_active) begin
        taskConstructor_status_allowRead = 1'b0;
      end
    end
  end

  always @(*) begin
    taskConstructor_status_bankHit = (banksRow_spinal_port0 == taskConstructor_address_row);
    if(when_MakeTask_l232) begin
      if(io_output_active) begin
        taskConstructor_status_bankHit = (io_output_address_row == taskConstructor_address_row);
      end
    end
  end

  always @(*) begin
    taskConstructor_status_bankActive = _zz_taskConstructor_status_bankActive;
    if(when_MakeTask_l232) begin
      if(io_output_precharge) begin
        taskConstructor_status_bankActive = 1'b0;
      end
      if(io_output_active) begin
        taskConstructor_status_bankActive = 1'b1;
      end
    end
  end

  assign when_MakeTask_l227 = (! _zz_when_MakeTask_l227);
  assign when_MakeTask_l228 = (! _zz_when_MakeTask_l228);
  assign when_MakeTask_l229 = (! _zz_when_MakeTask_l229);
  assign when_MakeTask_l230 = (! _zz_when_MakeTask_l230);
  assign when_MakeTask_l232 = (io_output_address_bank == taskConstructor_address_bank);
  assign when_MakeTask_l243 = (io_output_read || io_output_write);
  assign when_MakeTask_l227_1 = (! _zz_when_MakeTask_l227_1);
  assign when_MakeTask_l228_1 = (! _zz_when_MakeTask_l228_1);
  assign when_MakeTask_l229_1 = (! _zz_when_MakeTask_l229_1);
  assign when_MakeTask_l230_1 = (! _zz_when_MakeTask_l230_1);
  assign when_MakeTask_l232_1 = (io_output_address_bank == station_address_bank);
  assign when_MakeTask_l243_1 = (io_output_read || io_output_write);
  assign when_MakeTask_l111 = (io_output_read || io_output_write);
  assign station_inputActive = (! station_status_bankActive);
  assign station_inputPrecharge = (station_status_bankActive && (! station_status_bankHit));
  assign station_inputAccess = (station_status_bankActive && station_status_bankHit);
  assign station_inputWrite = ((station_status_bankActive && station_status_bankHit) && station_write);
  assign station_inputRead = ((station_status_bankActive && station_status_bankHit) && (! station_write));
  assign station_doActive = (station_inputActive && station_status_allowActive);
  assign station_doPrecharge = (station_inputPrecharge && station_status_allowPrecharge);
  assign station_doWrite = ((station_inputWrite && station_status_allowWrite) && io_writeDataToken_valid);
  assign station_doRead = (station_inputRead && station_status_allowRead);
  assign station_doAccess = (station_doWrite || station_doRead);
  assign station_doSomething = (station_valid && (((station_doActive || station_doPrecharge) || station_doWrite) || station_doRead));
  assign station_blockedByWriteToken = ((station_inputWrite && station_status_allowWrite) && (! io_writeDataToken_valid));
  always @(*) begin
    station_fire = 1'b0;
    if(when_MakeTask_l153) begin
      if(station_last) begin
        station_fire = 1'b1;
      end
    end
  end

  assign station_last = (station_offset == station_offsetLast);
  assign io_output_address_column = (station_address_column | _zz_io_output_address_column);
  assign io_output_address_byte = station_address_byte;
  assign io_output_address_bank = station_address_bank;
  assign io_output_address_row = station_address_row;
  assign io_output_context = station_context;
  assign io_output_active = station_inputActive;
  assign io_output_precharge = station_inputPrecharge;
  assign io_output_write = (station_doWrite && station_valid);
  assign io_output_read = (station_doRead && station_valid);
  assign io_output_last = station_last;
  always @(*) begin
    io_writeDataToken_ready = 1'b0;
    if(io_output_write) begin
      io_writeDataToken_ready = 1'b1;
    end
  end

  assign when_MakeTask_l153 = (station_doAccess && station_valid);
  assign io_halt = refresher_1_io_refresh_valid;
  assign refreshStream_valid = refresher_1_io_refresh_valid;
  assign taskConstructor_input_ready = (! station_valid);
  assign loader_offset = taskConstructor_address_column[4 : 3];
  assign loader_offsetLast = (loader_offset + taskConstructor_input_payload_length);
  assign loader_canSpawn = (! station_valid);
  assign when_MakeTask_l175 = (taskConstructor_input_valid && loader_canSpawn);
  assign askRefresh = (refreshStream_valid && readyForRefresh);
  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_idle : begin
      end
      fsm_enumDef_1_prechargeAllCmd : begin
      end
      fsm_enumDef_1_refreshCmd : begin
      end
      fsm_enumDef_1_refreshReady : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    refreshStream_ready = 1'b0;
    if(when_StateMachine_l237_2) begin
      refreshStream_ready = 1'b1;
    end
  end

  always @(*) begin
    io_output_prechargeAll = 1'b0;
    if(when_StateMachine_l237) begin
      io_output_prechargeAll = 1'b1;
    end
  end

  always @(*) begin
    io_output_refresh = 1'b0;
    if(when_StateMachine_l237_1) begin
      io_output_refresh = 1'b1;
    end
  end

  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_1_idle : begin
        if(askRefresh) begin
          fsm_stateNext = fsm_enumDef_1_prechargeAllCmd;
        end
      end
      fsm_enumDef_1_prechargeAllCmd : begin
        if(when_MakeTask_l196) begin
          fsm_stateNext = fsm_enumDef_1_refreshCmd;
        end
      end
      fsm_enumDef_1_refreshCmd : begin
        if(when_MakeTask_l197) begin
          fsm_stateNext = fsm_enumDef_1_refreshReady;
        end
      end
      fsm_enumDef_1_refreshReady : begin
        if(when_MakeTask_l198) begin
          fsm_stateNext = fsm_enumDef_1_idle;
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_1_idle;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_1_BOOT;
    end
  end

  assign when_MakeTask_l196 = (allowPrechargeAll_regNext && askRefresh);
  assign when_MakeTask_l197 = ((! RP_busy) && askRefresh);
  assign when_MakeTask_l198 = ((! RFC_busy) && askRefresh);
  assign when_StateMachine_l237 = ((fsm_stateReg == fsm_enumDef_1_prechargeAllCmd) && (! (fsm_stateNext == fsm_enumDef_1_prechargeAllCmd)));
  assign when_StateMachine_l237_1 = ((fsm_stateReg == fsm_enumDef_1_refreshCmd) && (! (fsm_stateNext == fsm_enumDef_1_refreshCmd)));
  assign when_StateMachine_l237_2 = ((fsm_stateReg == fsm_enumDef_1_refreshReady) && (! (fsm_stateNext == fsm_enumDef_1_refreshReady)));
  always @(posedge clk_out4) begin
    CCD_value <= (CCD_value + _zz_CCD_value);
    if(when_MakeTask_l210) begin
      CCD_value <= 2'b00;
    end
    RFC_value <= (RFC_value + _zz_RFC_value);
    if(io_output_refresh) begin
      RFC_value <= 8'h0;
    end
    RRD_value <= (RRD_value + _zz_RRD_value);
    if(io_output_active) begin
      RRD_value <= 5'h0;
    end
    WTR_value <= (WTR_value + _zz_WTR_value);
    if(io_output_write) begin
      WTR_value <= 5'h0;
    end
    RTW_value <= (RTW_value + _zz_RTW_value);
    if(io_output_read) begin
      RTW_value <= 5'h0;
    end
    RP_value <= (RP_value + _zz_RP_value);
    if(io_output_prechargeAll) begin
      RP_value <= 5'h0;
    end
    FAW_slots_0_value <= (FAW_slots_0_value + _zz_FAW_slots_0_value);
    if(when_MakeTask_l210_1) begin
      FAW_slots_0_value <= 5'h0;
    end
    FAW_slots_1_value <= (FAW_slots_1_value + _zz_FAW_slots_1_value);
    if(when_MakeTask_l210_2) begin
      FAW_slots_1_value <= 5'h0;
    end
    FAW_slots_2_value <= (FAW_slots_2_value + _zz_FAW_slots_2_value);
    if(when_MakeTask_l210_3) begin
      FAW_slots_2_value <= 5'h0;
    end
    FAW_slots_3_value <= (FAW_slots_3_value + _zz_FAW_slots_3_value);
    if(when_MakeTask_l210_4) begin
      FAW_slots_3_value <= 5'h0;
    end
    banks_0_WR_value <= (banks_0_WR_value + _zz_banks_0_WR_value);
    if(when_MakeTask_l210_5) begin
      banks_0_WR_value <= 5'h0;
    end
    banks_0_RAS_value <= (banks_0_RAS_value + _zz_banks_0_RAS_value);
    if(when_MakeTask_l210_6) begin
      banks_0_RAS_value <= 5'h0;
    end
    banks_0_RP_value <= (banks_0_RP_value + _zz_banks_0_RP_value);
    if(when_MakeTask_l210_7) begin
      banks_0_RP_value <= 5'h0;
    end
    banks_0_RCD_value <= (banks_0_RCD_value + _zz_banks_0_RCD_value);
    if(when_MakeTask_l210_8) begin
      banks_0_RCD_value <= 5'h0;
    end
    banks_0_RTP_value <= (banks_0_RTP_value + _zz_banks_0_RTP_value);
    if(when_MakeTask_l210_9) begin
      banks_0_RTP_value <= 5'h0;
    end
    banks_1_WR_value <= (banks_1_WR_value + _zz_banks_1_WR_value);
    if(when_MakeTask_l210_10) begin
      banks_1_WR_value <= 5'h0;
    end
    banks_1_RAS_value <= (banks_1_RAS_value + _zz_banks_1_RAS_value);
    if(when_MakeTask_l210_11) begin
      banks_1_RAS_value <= 5'h0;
    end
    banks_1_RP_value <= (banks_1_RP_value + _zz_banks_1_RP_value);
    if(when_MakeTask_l210_12) begin
      banks_1_RP_value <= 5'h0;
    end
    banks_1_RCD_value <= (banks_1_RCD_value + _zz_banks_1_RCD_value);
    if(when_MakeTask_l210_13) begin
      banks_1_RCD_value <= 5'h0;
    end
    banks_1_RTP_value <= (banks_1_RTP_value + _zz_banks_1_RTP_value);
    if(when_MakeTask_l210_14) begin
      banks_1_RTP_value <= 5'h0;
    end
    banks_2_WR_value <= (banks_2_WR_value + _zz_banks_2_WR_value);
    if(when_MakeTask_l210_15) begin
      banks_2_WR_value <= 5'h0;
    end
    banks_2_RAS_value <= (banks_2_RAS_value + _zz_banks_2_RAS_value);
    if(when_MakeTask_l210_16) begin
      banks_2_RAS_value <= 5'h0;
    end
    banks_2_RP_value <= (banks_2_RP_value + _zz_banks_2_RP_value);
    if(when_MakeTask_l210_17) begin
      banks_2_RP_value <= 5'h0;
    end
    banks_2_RCD_value <= (banks_2_RCD_value + _zz_banks_2_RCD_value);
    if(when_MakeTask_l210_18) begin
      banks_2_RCD_value <= 5'h0;
    end
    banks_2_RTP_value <= (banks_2_RTP_value + _zz_banks_2_RTP_value);
    if(when_MakeTask_l210_19) begin
      banks_2_RTP_value <= 5'h0;
    end
    banks_3_WR_value <= (banks_3_WR_value + _zz_banks_3_WR_value);
    if(when_MakeTask_l210_20) begin
      banks_3_WR_value <= 5'h0;
    end
    banks_3_RAS_value <= (banks_3_RAS_value + _zz_banks_3_RAS_value);
    if(when_MakeTask_l210_21) begin
      banks_3_RAS_value <= 5'h0;
    end
    banks_3_RP_value <= (banks_3_RP_value + _zz_banks_3_RP_value);
    if(when_MakeTask_l210_22) begin
      banks_3_RP_value <= 5'h0;
    end
    banks_3_RCD_value <= (banks_3_RCD_value + _zz_banks_3_RCD_value);
    if(when_MakeTask_l210_23) begin
      banks_3_RCD_value <= 5'h0;
    end
    banks_3_RTP_value <= (banks_3_RTP_value + _zz_banks_3_RTP_value);
    if(when_MakeTask_l210_24) begin
      banks_3_RTP_value <= 5'h0;
    end
    banks_4_WR_value <= (banks_4_WR_value + _zz_banks_4_WR_value);
    if(when_MakeTask_l210_25) begin
      banks_4_WR_value <= 5'h0;
    end
    banks_4_RAS_value <= (banks_4_RAS_value + _zz_banks_4_RAS_value);
    if(when_MakeTask_l210_26) begin
      banks_4_RAS_value <= 5'h0;
    end
    banks_4_RP_value <= (banks_4_RP_value + _zz_banks_4_RP_value);
    if(when_MakeTask_l210_27) begin
      banks_4_RP_value <= 5'h0;
    end
    banks_4_RCD_value <= (banks_4_RCD_value + _zz_banks_4_RCD_value);
    if(when_MakeTask_l210_28) begin
      banks_4_RCD_value <= 5'h0;
    end
    banks_4_RTP_value <= (banks_4_RTP_value + _zz_banks_4_RTP_value);
    if(when_MakeTask_l210_29) begin
      banks_4_RTP_value <= 5'h0;
    end
    banks_5_WR_value <= (banks_5_WR_value + _zz_banks_5_WR_value);
    if(when_MakeTask_l210_30) begin
      banks_5_WR_value <= 5'h0;
    end
    banks_5_RAS_value <= (banks_5_RAS_value + _zz_banks_5_RAS_value);
    if(when_MakeTask_l210_31) begin
      banks_5_RAS_value <= 5'h0;
    end
    banks_5_RP_value <= (banks_5_RP_value + _zz_banks_5_RP_value);
    if(when_MakeTask_l210_32) begin
      banks_5_RP_value <= 5'h0;
    end
    banks_5_RCD_value <= (banks_5_RCD_value + _zz_banks_5_RCD_value);
    if(when_MakeTask_l210_33) begin
      banks_5_RCD_value <= 5'h0;
    end
    banks_5_RTP_value <= (banks_5_RTP_value + _zz_banks_5_RTP_value);
    if(when_MakeTask_l210_34) begin
      banks_5_RTP_value <= 5'h0;
    end
    banks_6_WR_value <= (banks_6_WR_value + _zz_banks_6_WR_value);
    if(when_MakeTask_l210_35) begin
      banks_6_WR_value <= 5'h0;
    end
    banks_6_RAS_value <= (banks_6_RAS_value + _zz_banks_6_RAS_value);
    if(when_MakeTask_l210_36) begin
      banks_6_RAS_value <= 5'h0;
    end
    banks_6_RP_value <= (banks_6_RP_value + _zz_banks_6_RP_value);
    if(when_MakeTask_l210_37) begin
      banks_6_RP_value <= 5'h0;
    end
    banks_6_RCD_value <= (banks_6_RCD_value + _zz_banks_6_RCD_value);
    if(when_MakeTask_l210_38) begin
      banks_6_RCD_value <= 5'h0;
    end
    banks_6_RTP_value <= (banks_6_RTP_value + _zz_banks_6_RTP_value);
    if(when_MakeTask_l210_39) begin
      banks_6_RTP_value <= 5'h0;
    end
    banks_7_WR_value <= (banks_7_WR_value + _zz_banks_7_WR_value);
    if(when_MakeTask_l210_40) begin
      banks_7_WR_value <= 5'h0;
    end
    banks_7_RAS_value <= (banks_7_RAS_value + _zz_banks_7_RAS_value);
    if(when_MakeTask_l210_41) begin
      banks_7_RAS_value <= 5'h0;
    end
    banks_7_RP_value <= (banks_7_RP_value + _zz_banks_7_RP_value);
    if(when_MakeTask_l210_42) begin
      banks_7_RP_value <= 5'h0;
    end
    banks_7_RCD_value <= (banks_7_RCD_value + _zz_banks_7_RCD_value);
    if(when_MakeTask_l210_43) begin
      banks_7_RCD_value <= 5'h0;
    end
    banks_7_RTP_value <= (banks_7_RTP_value + _zz_banks_7_RTP_value);
    if(when_MakeTask_l210_44) begin
      banks_7_RTP_value <= 5'h0;
    end
    if(io_cmd_ready) begin
      io_cmd_rData_write <= io_cmd_payload_write;
      io_cmd_rData_address <= io_cmd_payload_address;
      io_cmd_rData_context <= io_cmd_payload_context;
      io_cmd_rData_burstLast <= io_cmd_payload_burstLast;
      io_cmd_rData_length <= io_cmd_payload_length;
    end
    station_status_allowPrecharge <= 1'b1;
    station_status_allowActive <= ((! RRD_busy) && (! FAW_busyNext));
    station_status_allowWrite <= ((! RTW_busy) && (! CCD_busy));
    station_status_allowRead <= ((! WTR_busy) && (! CCD_busy));
    if(when_MakeTask_l227_1) begin
      station_status_allowPrecharge <= 1'b0;
    end
    if(when_MakeTask_l228_1) begin
      station_status_allowActive <= 1'b0;
    end
    if(when_MakeTask_l229_1) begin
      station_status_allowWrite <= 1'b0;
    end
    if(when_MakeTask_l230_1) begin
      station_status_allowRead <= 1'b0;
    end
    if(when_MakeTask_l232_1) begin
      if(io_output_active) begin
        station_status_allowRead <= 1'b0;
        station_status_allowWrite <= 1'b0;
        station_status_allowPrecharge <= 1'b0;
      end
      if(when_MakeTask_l243_1) begin
        station_status_allowPrecharge <= 1'b0;
      end
      if(io_output_precharge) begin
        station_status_allowActive <= 1'b0;
      end
    end
    if(io_output_active) begin
      station_status_allowActive <= 1'b0;
    end
    if(when_MakeTask_l111) begin
      station_status_allowRead <= 1'b0;
      station_status_allowWrite <= 1'b0;
    end
    if(when_MakeTask_l153) begin
      station_offset <= (station_offset + 2'b01);
    end
    if(when_MakeTask_l175) begin
      station_status_allowPrecharge <= taskConstructor_status_allowPrecharge;
      station_status_allowActive <= taskConstructor_status_allowActive;
      station_status_allowWrite <= taskConstructor_status_allowWrite;
      station_status_allowRead <= taskConstructor_status_allowRead;
      station_address_column <= (taskConstructor_address_column & 10'h3e7);
      station_address_byte <= taskConstructor_address_byte;
      station_address_bank <= taskConstructor_address_bank;
      station_address_row <= taskConstructor_address_row;
      station_write <= taskConstructor_input_payload_write;
      station_context <= taskConstructor_input_payload_context;
      station_offset <= loader_offset;
      station_offsetLast <= loader_offsetLast;
    end
  end

  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      FAW_ptr <= 2'b00;
      banks_0_active <= 1'b0;
      banks_1_active <= 1'b0;
      banks_2_active <= 1'b0;
      banks_3_active <= 1'b0;
      banks_4_active <= 1'b0;
      banks_5_active <= 1'b0;
      banks_6_active <= 1'b0;
      banks_7_active <= 1'b0;
      io_cmd_rValid <= 1'b0;
      station_valid <= 1'b0;
      station_status_bankHit <= 1'b0;
      station_status_bankActive <= 1'b0;
      fsm_stateReg <= fsm_enumDef_1_BOOT;
    end else begin
      FAW_ptr <= (FAW_ptr + _zz_FAW_ptr);
      banks_0_active <= banks_0_activeNext;
      banks_1_active <= banks_1_activeNext;
      banks_2_active <= banks_2_activeNext;
      banks_3_active <= banks_3_activeNext;
      banks_4_active <= banks_4_activeNext;
      banks_5_active <= banks_5_activeNext;
      banks_6_active <= banks_6_activeNext;
      banks_7_active <= banks_7_activeNext;
      if(io_cmd_ready) begin
        io_cmd_rValid <= io_cmd_valid;
      end
      if(when_MakeTask_l232_1) begin
        if(io_output_precharge) begin
          station_status_bankActive <= 1'b0;
        end
        if(io_output_active) begin
          station_status_bankActive <= 1'b1;
          station_status_bankHit <= (io_output_address_row == station_address_row);
        end
      end
      if(when_MakeTask_l153) begin
        if(station_last) begin
          station_valid <= 1'b0;
        end
      end
      if(when_MakeTask_l175) begin
        station_valid <= 1'b1;
        station_status_bankActive <= taskConstructor_status_bankActive;
        station_status_bankHit <= taskConstructor_status_bankHit;
      end
      fsm_stateReg <= fsm_stateNext;
    end
  end

  always @(posedge clk_out4) begin
    allowPrechargeAll_regNext <= allowPrechargeAll;
  end


endmodule

module BmbAdapter (
  input  wire          io_halt,
  input  wire          io_input_cmd_valid,
  output wire          io_input_cmd_ready,
  input  wire          io_input_cmd_payload_last,
  input  wire [0:0]    io_input_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_input_cmd_payload_fragment_address,
  input  wire [9:0]    io_input_cmd_payload_fragment_length,
  input  wire [31:0]   io_input_cmd_payload_fragment_data,
  input  wire [3:0]    io_input_cmd_payload_fragment_mask,
  input  wire [3:0]    io_input_cmd_payload_fragment_context,
  output wire          io_input_rsp_valid,
  input  wire          io_input_rsp_ready,
  output wire          io_input_rsp_payload_last,
  output wire [0:0]    io_input_rsp_payload_fragment_opcode,
  output wire [31:0]   io_input_rsp_payload_fragment_data,
  output wire [3:0]    io_input_rsp_payload_fragment_context,
  output wire          io_output_cmd_valid,
  input  wire          io_output_cmd_ready,
  output wire          io_output_cmd_payload_write,
  output wire [28:0]   io_output_cmd_payload_address,
  output wire [17:0]   io_output_cmd_payload_context,
  output wire          io_output_cmd_payload_burstLast,
  output wire [1:0]    io_output_cmd_payload_length,
  output wire          io_output_writeData_valid,
  input  wire          io_output_writeData_ready,
  output wire [31:0]   io_output_writeData_payload_data,
  output wire [3:0]    io_output_writeData_payload_mask,
  output wire          io_output_writeDataToken_valid,
  input  wire          io_output_writeDataToken_ready,
  output wire          io_output_writeDataToken_payload_valid,
  output wire          io_output_writeDataToken_payload_ready,
  input  wire          io_output_rsp_valid,
  output wire          io_output_rsp_ready,
  input  wire          io_output_rsp_payload_last,
  input  wire [31:0]   io_output_rsp_payload_fragment_data,
  input  wire [17:0]   io_output_rsp_payload_fragment_context,
  input  wire          clk_out4,
  input  wire          rstN
);

  reg                 inputLogic_spliter_io_output_cmd_ready;
  wire                inputLogic_converter_io_output_writeDataToken_ready;
  wire                inputLogic_aligner_io_input_cmd_ready;
  wire                inputLogic_aligner_io_input_rsp_valid;
  wire                inputLogic_aligner_io_input_rsp_payload_last;
  wire       [0:0]    inputLogic_aligner_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   inputLogic_aligner_io_input_rsp_payload_fragment_data;
  wire       [3:0]    inputLogic_aligner_io_input_rsp_payload_fragment_context;
  wire                inputLogic_aligner_io_output_cmd_valid;
  wire                inputLogic_aligner_io_output_cmd_payload_last;
  wire       [0:0]    inputLogic_aligner_io_output_cmd_payload_fragment_opcode;
  wire       [28:0]   inputLogic_aligner_io_output_cmd_payload_fragment_address;
  wire       [10:0]   inputLogic_aligner_io_output_cmd_payload_fragment_length;
  wire       [31:0]   inputLogic_aligner_io_output_cmd_payload_fragment_data;
  wire       [3:0]    inputLogic_aligner_io_output_cmd_payload_fragment_mask;
  wire       [15:0]   inputLogic_aligner_io_output_cmd_payload_fragment_context;
  wire                inputLogic_aligner_io_output_rsp_ready;
  wire                inputLogic_spliter_io_input_cmd_ready;
  wire                inputLogic_spliter_io_input_rsp_valid;
  wire                inputLogic_spliter_io_input_rsp_payload_last;
  wire       [0:0]    inputLogic_spliter_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   inputLogic_spliter_io_input_rsp_payload_fragment_data;
  wire       [15:0]   inputLogic_spliter_io_input_rsp_payload_fragment_context;
  wire                inputLogic_spliter_io_output_cmd_valid;
  wire                inputLogic_spliter_io_output_cmd_payload_last;
  wire       [0:0]    inputLogic_spliter_io_output_cmd_payload_fragment_opcode;
  wire       [28:0]   inputLogic_spliter_io_output_cmd_payload_fragment_address;
  wire       [5:0]    inputLogic_spliter_io_output_cmd_payload_fragment_length;
  wire       [31:0]   inputLogic_spliter_io_output_cmd_payload_fragment_data;
  wire       [3:0]    inputLogic_spliter_io_output_cmd_payload_fragment_mask;
  wire       [17:0]   inputLogic_spliter_io_output_cmd_payload_fragment_context;
  wire                inputLogic_spliter_io_output_rsp_ready;
  wire                inputLogic_spliter_io_outputBurstLast;
  wire                inputLogic_converter_io_input_cmd_ready;
  wire                inputLogic_converter_io_input_rsp_valid;
  wire                inputLogic_converter_io_input_rsp_payload_last;
  wire       [0:0]    inputLogic_converter_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   inputLogic_converter_io_input_rsp_payload_fragment_data;
  wire       [17:0]   inputLogic_converter_io_input_rsp_payload_fragment_context;
  wire                inputLogic_converter_io_output_cmd_valid;
  wire                inputLogic_converter_io_output_cmd_payload_write;
  wire       [28:0]   inputLogic_converter_io_output_cmd_payload_address;
  wire       [17:0]   inputLogic_converter_io_output_cmd_payload_context;
  wire                inputLogic_converter_io_output_cmd_payload_burstLast;
  wire       [1:0]    inputLogic_converter_io_output_cmd_payload_length;
  wire                inputLogic_converter_io_output_writeDataToken_valid;
  wire                inputLogic_converter_io_output_writeDataToken_payload_valid;
  wire                inputLogic_converter_io_output_writeDataToken_payload_ready;
  wire                inputLogic_converter_io_output_writeData_valid;
  wire       [31:0]   inputLogic_converter_io_output_writeData_payload_data;
  wire       [3:0]    inputLogic_converter_io_output_writeData_payload_mask;
  wire                inputLogic_converter_io_output_rsp_ready;
  wire                io_output_cmd_fifo_io_push_ready;
  wire                io_output_cmd_fifo_io_pop_valid;
  wire                io_output_cmd_fifo_io_pop_payload_write;
  wire       [28:0]   io_output_cmd_fifo_io_pop_payload_address;
  wire       [17:0]   io_output_cmd_fifo_io_pop_payload_context;
  wire                io_output_cmd_fifo_io_pop_payload_burstLast;
  wire       [1:0]    io_output_cmd_fifo_io_pop_payload_length;
  wire       [6:0]    io_output_cmd_fifo_io_occupancy;
  wire       [6:0]    io_output_cmd_fifo_io_availability;
  wire                io_output_rsp_fifo_io_push_ready;
  wire                io_output_rsp_fifo_io_pop_valid;
  wire                io_output_rsp_fifo_io_pop_payload_last;
  wire       [31:0]   io_output_rsp_fifo_io_pop_payload_fragment_data;
  wire       [17:0]   io_output_rsp_fifo_io_pop_payload_fragment_context;
  wire       [6:0]    io_output_rsp_fifo_io_occupancy;
  wire       [6:0]    io_output_rsp_fifo_io_availability;
  wire                io_output_writeData_fifo_io_push_ready;
  wire                io_output_writeData_fifo_io_pop_valid;
  wire       [31:0]   io_output_writeData_fifo_io_pop_payload_data;
  wire       [3:0]    io_output_writeData_fifo_io_pop_payload_mask;
  wire       [6:0]    io_output_writeData_fifo_io_occupancy;
  wire       [6:0]    io_output_writeData_fifo_io_availability;
  wire       [6:0]    _zz_writeTokens_counter;
  wire       [6:0]    _zz_writeTokens_counter_1;
  wire       [6:0]    _zz_writeTokens_counter_2;
  wire       [2:0]    _zz_writeTokens_counter_3;
  wire                inputLogic_spliter_io_output_cmd_m2sPipe_valid;
  wire                inputLogic_spliter_io_output_cmd_m2sPipe_ready;
  wire                inputLogic_spliter_io_output_cmd_m2sPipe_payload_last;
  wire       [0:0]    inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_opcode;
  wire       [28:0]   inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_address;
  wire       [5:0]    inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_length;
  wire       [31:0]   inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_data;
  wire       [3:0]    inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_mask;
  wire       [17:0]   inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_context;
  reg                 inputLogic_spliter_io_output_cmd_rValid;
  reg                 inputLogic_spliter_io_output_cmd_rData_last;
  reg        [0:0]    inputLogic_spliter_io_output_cmd_rData_fragment_opcode;
  reg        [28:0]   inputLogic_spliter_io_output_cmd_rData_fragment_address;
  reg        [5:0]    inputLogic_spliter_io_output_cmd_rData_fragment_length;
  reg        [31:0]   inputLogic_spliter_io_output_cmd_rData_fragment_data;
  reg        [3:0]    inputLogic_spliter_io_output_cmd_rData_fragment_mask;
  reg        [17:0]   inputLogic_spliter_io_output_cmd_rData_fragment_context;
  wire                when_Stream_l393;
  wire                cmdAddress_valid;
  reg                 cmdAddress_ready;
  wire                cmdAddress_payload_write;
  wire       [28:0]   cmdAddress_payload_address;
  wire       [17:0]   cmdAddress_payload_context;
  wire                cmdAddress_payload_burstLast;
  wire       [1:0]    cmdAddress_payload_length;
  wire       [0:0]    writeDataToken;
  wire                inputLogic_converter_io_output_writeData_fire;
  reg        [0:0]    _zz_writeDataToken;
  reg        [6:0]    writeTokens_counter;
  reg                 _zz_io_output_writeDataToken_valid;
  wire                when_Bmb2PreTaskPort_l119;
  wire                when_Bmb2PreTaskPort_l119_1;
  wire                cmdAddress_m2sPipe_valid;
  wire                cmdAddress_m2sPipe_ready;
  wire                cmdAddress_m2sPipe_payload_write;
  wire       [28:0]   cmdAddress_m2sPipe_payload_address;
  wire       [17:0]   cmdAddress_m2sPipe_payload_context;
  wire                cmdAddress_m2sPipe_payload_burstLast;
  wire       [1:0]    cmdAddress_m2sPipe_payload_length;
  reg                 cmdAddress_rValid;
  reg                 cmdAddress_rData_write;
  reg        [28:0]   cmdAddress_rData_address;
  reg        [17:0]   cmdAddress_rData_context;
  reg                 cmdAddress_rData_burstLast;
  reg        [1:0]    cmdAddress_rData_length;
  wire                when_Stream_l393_1;
  reg                 io_halt_regNext;
  wire                _zz_io_output_cmd_valid;
  wire                io_output_rsp_isStall;

  assign _zz_writeTokens_counter = (writeTokens_counter + _zz_writeTokens_counter_1);
  assign _zz_writeTokens_counter_1 = {6'd0, writeDataToken};
  assign _zz_writeTokens_counter_3 = ({2'd0,io_output_writeDataToken_ready} <<< 2'd2);
  assign _zz_writeTokens_counter_2 = {4'd0, _zz_writeTokens_counter_3};
  BmbAligner inputLogic_aligner (
    .io_input_cmd_valid                     (io_input_cmd_valid                                             ), //i
    .io_input_cmd_ready                     (inputLogic_aligner_io_input_cmd_ready                          ), //o
    .io_input_cmd_payload_last              (io_input_cmd_payload_last                                      ), //i
    .io_input_cmd_payload_fragment_opcode   (io_input_cmd_payload_fragment_opcode                           ), //i
    .io_input_cmd_payload_fragment_address  (io_input_cmd_payload_fragment_address[28:0]                    ), //i
    .io_input_cmd_payload_fragment_length   (io_input_cmd_payload_fragment_length[9:0]                      ), //i
    .io_input_cmd_payload_fragment_data     (io_input_cmd_payload_fragment_data[31:0]                       ), //i
    .io_input_cmd_payload_fragment_mask     (io_input_cmd_payload_fragment_mask[3:0]                        ), //i
    .io_input_cmd_payload_fragment_context  (io_input_cmd_payload_fragment_context[3:0]                     ), //i
    .io_input_rsp_valid                     (inputLogic_aligner_io_input_rsp_valid                          ), //o
    .io_input_rsp_ready                     (io_input_rsp_ready                                             ), //i
    .io_input_rsp_payload_last              (inputLogic_aligner_io_input_rsp_payload_last                   ), //o
    .io_input_rsp_payload_fragment_opcode   (inputLogic_aligner_io_input_rsp_payload_fragment_opcode        ), //o
    .io_input_rsp_payload_fragment_data     (inputLogic_aligner_io_input_rsp_payload_fragment_data[31:0]    ), //o
    .io_input_rsp_payload_fragment_context  (inputLogic_aligner_io_input_rsp_payload_fragment_context[3:0]  ), //o
    .io_output_cmd_valid                    (inputLogic_aligner_io_output_cmd_valid                         ), //o
    .io_output_cmd_ready                    (inputLogic_spliter_io_input_cmd_ready                          ), //i
    .io_output_cmd_payload_last             (inputLogic_aligner_io_output_cmd_payload_last                  ), //o
    .io_output_cmd_payload_fragment_opcode  (inputLogic_aligner_io_output_cmd_payload_fragment_opcode       ), //o
    .io_output_cmd_payload_fragment_address (inputLogic_aligner_io_output_cmd_payload_fragment_address[28:0]), //o
    .io_output_cmd_payload_fragment_length  (inputLogic_aligner_io_output_cmd_payload_fragment_length[10:0] ), //o
    .io_output_cmd_payload_fragment_data    (inputLogic_aligner_io_output_cmd_payload_fragment_data[31:0]   ), //o
    .io_output_cmd_payload_fragment_mask    (inputLogic_aligner_io_output_cmd_payload_fragment_mask[3:0]    ), //o
    .io_output_cmd_payload_fragment_context (inputLogic_aligner_io_output_cmd_payload_fragment_context[15:0]), //o
    .io_output_rsp_valid                    (inputLogic_spliter_io_input_rsp_valid                          ), //i
    .io_output_rsp_ready                    (inputLogic_aligner_io_output_rsp_ready                         ), //o
    .io_output_rsp_payload_last             (inputLogic_spliter_io_input_rsp_payload_last                   ), //i
    .io_output_rsp_payload_fragment_opcode  (inputLogic_spliter_io_input_rsp_payload_fragment_opcode        ), //i
    .io_output_rsp_payload_fragment_data    (inputLogic_spliter_io_input_rsp_payload_fragment_data[31:0]    ), //i
    .io_output_rsp_payload_fragment_context (inputLogic_spliter_io_input_rsp_payload_fragment_context[15:0] ), //i
    .clk_out4                               (clk_out4                                                       ), //i
    .rstN                                   (rstN                                                           )  //i
  );
  BmbAlignedSpliter inputLogic_spliter (
    .io_input_cmd_valid                     (inputLogic_aligner_io_output_cmd_valid                          ), //i
    .io_input_cmd_ready                     (inputLogic_spliter_io_input_cmd_ready                           ), //o
    .io_input_cmd_payload_last              (inputLogic_aligner_io_output_cmd_payload_last                   ), //i
    .io_input_cmd_payload_fragment_opcode   (inputLogic_aligner_io_output_cmd_payload_fragment_opcode        ), //i
    .io_input_cmd_payload_fragment_address  (inputLogic_aligner_io_output_cmd_payload_fragment_address[28:0] ), //i
    .io_input_cmd_payload_fragment_length   (inputLogic_aligner_io_output_cmd_payload_fragment_length[10:0]  ), //i
    .io_input_cmd_payload_fragment_data     (inputLogic_aligner_io_output_cmd_payload_fragment_data[31:0]    ), //i
    .io_input_cmd_payload_fragment_mask     (inputLogic_aligner_io_output_cmd_payload_fragment_mask[3:0]     ), //i
    .io_input_cmd_payload_fragment_context  (inputLogic_aligner_io_output_cmd_payload_fragment_context[15:0] ), //i
    .io_input_rsp_valid                     (inputLogic_spliter_io_input_rsp_valid                           ), //o
    .io_input_rsp_ready                     (inputLogic_aligner_io_output_rsp_ready                          ), //i
    .io_input_rsp_payload_last              (inputLogic_spliter_io_input_rsp_payload_last                    ), //o
    .io_input_rsp_payload_fragment_opcode   (inputLogic_spliter_io_input_rsp_payload_fragment_opcode         ), //o
    .io_input_rsp_payload_fragment_data     (inputLogic_spliter_io_input_rsp_payload_fragment_data[31:0]     ), //o
    .io_input_rsp_payload_fragment_context  (inputLogic_spliter_io_input_rsp_payload_fragment_context[15:0]  ), //o
    .io_output_cmd_valid                    (inputLogic_spliter_io_output_cmd_valid                          ), //o
    .io_output_cmd_ready                    (inputLogic_spliter_io_output_cmd_ready                          ), //i
    .io_output_cmd_payload_last             (inputLogic_spliter_io_output_cmd_payload_last                   ), //o
    .io_output_cmd_payload_fragment_opcode  (inputLogic_spliter_io_output_cmd_payload_fragment_opcode        ), //o
    .io_output_cmd_payload_fragment_address (inputLogic_spliter_io_output_cmd_payload_fragment_address[28:0] ), //o
    .io_output_cmd_payload_fragment_length  (inputLogic_spliter_io_output_cmd_payload_fragment_length[5:0]   ), //o
    .io_output_cmd_payload_fragment_data    (inputLogic_spliter_io_output_cmd_payload_fragment_data[31:0]    ), //o
    .io_output_cmd_payload_fragment_mask    (inputLogic_spliter_io_output_cmd_payload_fragment_mask[3:0]     ), //o
    .io_output_cmd_payload_fragment_context (inputLogic_spliter_io_output_cmd_payload_fragment_context[17:0] ), //o
    .io_output_rsp_valid                    (inputLogic_converter_io_input_rsp_valid                         ), //i
    .io_output_rsp_ready                    (inputLogic_spliter_io_output_rsp_ready                          ), //o
    .io_output_rsp_payload_last             (inputLogic_converter_io_input_rsp_payload_last                  ), //i
    .io_output_rsp_payload_fragment_opcode  (inputLogic_converter_io_input_rsp_payload_fragment_opcode       ), //i
    .io_output_rsp_payload_fragment_data    (inputLogic_converter_io_input_rsp_payload_fragment_data[31:0]   ), //i
    .io_output_rsp_payload_fragment_context (inputLogic_converter_io_input_rsp_payload_fragment_context[17:0]), //i
    .io_outputBurstLast                     (inputLogic_spliter_io_outputBurstLast                           ), //o
    .clk_out4                               (clk_out4                                                        ), //i
    .rstN                                   (rstN                                                            )  //i
  );
  BmbToPreTaskPort inputLogic_converter (
    .io_input_cmd_valid                     (inputLogic_spliter_io_output_cmd_m2sPipe_valid                         ), //i
    .io_input_cmd_ready                     (inputLogic_converter_io_input_cmd_ready                                ), //o
    .io_input_cmd_payload_last              (inputLogic_spliter_io_output_cmd_m2sPipe_payload_last                  ), //i
    .io_input_cmd_payload_fragment_opcode   (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_opcode       ), //i
    .io_input_cmd_payload_fragment_address  (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_address[28:0]), //i
    .io_input_cmd_payload_fragment_length   (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_length[5:0]  ), //i
    .io_input_cmd_payload_fragment_data     (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_data[31:0]   ), //i
    .io_input_cmd_payload_fragment_mask     (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_mask[3:0]    ), //i
    .io_input_cmd_payload_fragment_context  (inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_context[17:0]), //i
    .io_input_rsp_valid                     (inputLogic_converter_io_input_rsp_valid                                ), //o
    .io_input_rsp_ready                     (inputLogic_spliter_io_output_rsp_ready                                 ), //i
    .io_input_rsp_payload_last              (inputLogic_converter_io_input_rsp_payload_last                         ), //o
    .io_input_rsp_payload_fragment_opcode   (inputLogic_converter_io_input_rsp_payload_fragment_opcode              ), //o
    .io_input_rsp_payload_fragment_data     (inputLogic_converter_io_input_rsp_payload_fragment_data[31:0]          ), //o
    .io_input_rsp_payload_fragment_context  (inputLogic_converter_io_input_rsp_payload_fragment_context[17:0]       ), //o
    .io_inputBurstLast                      (inputLogic_spliter_io_outputBurstLast                                  ), //i
    .io_output_cmd_valid                    (inputLogic_converter_io_output_cmd_valid                               ), //o
    .io_output_cmd_ready                    (io_output_cmd_fifo_io_push_ready                                       ), //i
    .io_output_cmd_payload_write            (inputLogic_converter_io_output_cmd_payload_write                       ), //o
    .io_output_cmd_payload_address          (inputLogic_converter_io_output_cmd_payload_address[28:0]               ), //o
    .io_output_cmd_payload_context          (inputLogic_converter_io_output_cmd_payload_context[17:0]               ), //o
    .io_output_cmd_payload_burstLast        (inputLogic_converter_io_output_cmd_payload_burstLast                   ), //o
    .io_output_cmd_payload_length           (inputLogic_converter_io_output_cmd_payload_length[1:0]                 ), //o
    .io_output_writeData_valid              (inputLogic_converter_io_output_writeData_valid                         ), //o
    .io_output_writeData_ready              (io_output_writeData_fifo_io_push_ready                                 ), //i
    .io_output_writeData_payload_data       (inputLogic_converter_io_output_writeData_payload_data[31:0]            ), //o
    .io_output_writeData_payload_mask       (inputLogic_converter_io_output_writeData_payload_mask[3:0]             ), //o
    .io_output_writeDataToken_valid         (inputLogic_converter_io_output_writeDataToken_valid                    ), //o
    .io_output_writeDataToken_ready         (inputLogic_converter_io_output_writeDataToken_ready                    ), //i
    .io_output_writeDataToken_payload_valid (inputLogic_converter_io_output_writeDataToken_payload_valid            ), //o
    .io_output_writeDataToken_payload_ready (inputLogic_converter_io_output_writeDataToken_payload_ready            ), //o
    .io_output_rsp_valid                    (io_output_rsp_fifo_io_pop_valid                                        ), //i
    .io_output_rsp_ready                    (inputLogic_converter_io_output_rsp_ready                               ), //o
    .io_output_rsp_payload_last             (io_output_rsp_fifo_io_pop_payload_last                                 ), //i
    .io_output_rsp_payload_fragment_data    (io_output_rsp_fifo_io_pop_payload_fragment_data[31:0]                  ), //i
    .io_output_rsp_payload_fragment_context (io_output_rsp_fifo_io_pop_payload_fragment_context[17:0]               ), //i
    .clk_out4                               (clk_out4                                                               ), //i
    .rstN                                   (rstN                                                                   )  //i
  );
  StreamFifoLowLatency_1 io_output_cmd_fifo (
    .io_push_valid             (inputLogic_converter_io_output_cmd_valid                ), //i
    .io_push_ready             (io_output_cmd_fifo_io_push_ready                        ), //o
    .io_push_payload_write     (inputLogic_converter_io_output_cmd_payload_write        ), //i
    .io_push_payload_address   (inputLogic_converter_io_output_cmd_payload_address[28:0]), //i
    .io_push_payload_context   (inputLogic_converter_io_output_cmd_payload_context[17:0]), //i
    .io_push_payload_burstLast (inputLogic_converter_io_output_cmd_payload_burstLast    ), //i
    .io_push_payload_length    (inputLogic_converter_io_output_cmd_payload_length[1:0]  ), //i
    .io_pop_valid              (io_output_cmd_fifo_io_pop_valid                         ), //o
    .io_pop_ready              (cmdAddress_ready                                        ), //i
    .io_pop_payload_write      (io_output_cmd_fifo_io_pop_payload_write                 ), //o
    .io_pop_payload_address    (io_output_cmd_fifo_io_pop_payload_address[28:0]         ), //o
    .io_pop_payload_context    (io_output_cmd_fifo_io_pop_payload_context[17:0]         ), //o
    .io_pop_payload_burstLast  (io_output_cmd_fifo_io_pop_payload_burstLast             ), //o
    .io_pop_payload_length     (io_output_cmd_fifo_io_pop_payload_length[1:0]           ), //o
    .io_flush                  (1'b0                                                    ), //i
    .io_occupancy              (io_output_cmd_fifo_io_occupancy[6:0]                    ), //o
    .io_availability           (io_output_cmd_fifo_io_availability[6:0]                 ), //o
    .clk_out4                  (clk_out4                                                ), //i
    .rstN                      (rstN                                                    )  //i
  );
  StreamFifoLowLatency_2 io_output_rsp_fifo (
    .io_push_valid                    (io_output_rsp_valid                                     ), //i
    .io_push_ready                    (io_output_rsp_fifo_io_push_ready                        ), //o
    .io_push_payload_last             (io_output_rsp_payload_last                              ), //i
    .io_push_payload_fragment_data    (io_output_rsp_payload_fragment_data[31:0]               ), //i
    .io_push_payload_fragment_context (io_output_rsp_payload_fragment_context[17:0]            ), //i
    .io_pop_valid                     (io_output_rsp_fifo_io_pop_valid                         ), //o
    .io_pop_ready                     (inputLogic_converter_io_output_rsp_ready                ), //i
    .io_pop_payload_last              (io_output_rsp_fifo_io_pop_payload_last                  ), //o
    .io_pop_payload_fragment_data     (io_output_rsp_fifo_io_pop_payload_fragment_data[31:0]   ), //o
    .io_pop_payload_fragment_context  (io_output_rsp_fifo_io_pop_payload_fragment_context[17:0]), //o
    .io_flush                         (1'b0                                                    ), //i
    .io_occupancy                     (io_output_rsp_fifo_io_occupancy[6:0]                    ), //o
    .io_availability                  (io_output_rsp_fifo_io_availability[6:0]                 ), //o
    .clk_out4                         (clk_out4                                                ), //i
    .rstN                             (rstN                                                    )  //i
  );
  StreamFifoLowLatency_3 io_output_writeData_fifo (
    .io_push_valid        (inputLogic_converter_io_output_writeData_valid             ), //i
    .io_push_ready        (io_output_writeData_fifo_io_push_ready                     ), //o
    .io_push_payload_data (inputLogic_converter_io_output_writeData_payload_data[31:0]), //i
    .io_push_payload_mask (inputLogic_converter_io_output_writeData_payload_mask[3:0] ), //i
    .io_pop_valid         (io_output_writeData_fifo_io_pop_valid                      ), //o
    .io_pop_ready         (io_output_writeData_ready                                  ), //i
    .io_pop_payload_data  (io_output_writeData_fifo_io_pop_payload_data[31:0]         ), //o
    .io_pop_payload_mask  (io_output_writeData_fifo_io_pop_payload_mask[3:0]          ), //o
    .io_flush             (1'b0                                                       ), //i
    .io_occupancy         (io_output_writeData_fifo_io_occupancy[6:0]                 ), //o
    .io_availability      (io_output_writeData_fifo_io_availability[6:0]              ), //o
    .clk_out4             (clk_out4                                                   ), //i
    .rstN                 (rstN                                                       )  //i
  );
  assign io_input_cmd_ready = inputLogic_aligner_io_input_cmd_ready;
  assign io_input_rsp_valid = inputLogic_aligner_io_input_rsp_valid;
  assign io_input_rsp_payload_last = inputLogic_aligner_io_input_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = inputLogic_aligner_io_input_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = inputLogic_aligner_io_input_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = inputLogic_aligner_io_input_rsp_payload_fragment_context;
  always @(*) begin
    inputLogic_spliter_io_output_cmd_ready = inputLogic_spliter_io_output_cmd_m2sPipe_ready;
    if(when_Stream_l393) begin
      inputLogic_spliter_io_output_cmd_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! inputLogic_spliter_io_output_cmd_m2sPipe_valid);
  assign inputLogic_spliter_io_output_cmd_m2sPipe_valid = inputLogic_spliter_io_output_cmd_rValid;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_last = inputLogic_spliter_io_output_cmd_rData_last;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_opcode = inputLogic_spliter_io_output_cmd_rData_fragment_opcode;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_address = inputLogic_spliter_io_output_cmd_rData_fragment_address;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_length = inputLogic_spliter_io_output_cmd_rData_fragment_length;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_data = inputLogic_spliter_io_output_cmd_rData_fragment_data;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_mask = inputLogic_spliter_io_output_cmd_rData_fragment_mask;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_payload_fragment_context = inputLogic_spliter_io_output_cmd_rData_fragment_context;
  assign inputLogic_spliter_io_output_cmd_m2sPipe_ready = inputLogic_converter_io_input_cmd_ready;
  assign cmdAddress_valid = io_output_cmd_fifo_io_pop_valid;
  assign cmdAddress_payload_write = io_output_cmd_fifo_io_pop_payload_write;
  assign cmdAddress_payload_address = io_output_cmd_fifo_io_pop_payload_address;
  assign cmdAddress_payload_context = io_output_cmd_fifo_io_pop_payload_context;
  assign cmdAddress_payload_burstLast = io_output_cmd_fifo_io_pop_payload_burstLast;
  assign cmdAddress_payload_length = io_output_cmd_fifo_io_pop_payload_length;
  assign io_output_rsp_ready = io_output_rsp_fifo_io_push_ready;
  assign io_output_writeData_valid = io_output_writeData_fifo_io_pop_valid;
  assign io_output_writeData_payload_data = io_output_writeData_fifo_io_pop_payload_data;
  assign io_output_writeData_payload_mask = io_output_writeData_fifo_io_pop_payload_mask;
  assign inputLogic_converter_io_output_writeData_fire = (inputLogic_converter_io_output_writeData_valid && io_output_writeData_fifo_io_push_ready);
  assign writeDataToken = _zz_writeDataToken;
  assign when_Bmb2PreTaskPort_l119 = (7'h04 <= writeTokens_counter);
  assign when_Bmb2PreTaskPort_l119_1 = (io_output_writeDataToken_ready && (writeTokens_counter < 7'h08));
  assign io_output_writeDataToken_valid = _zz_io_output_writeDataToken_valid;
  always @(*) begin
    cmdAddress_ready = cmdAddress_m2sPipe_ready;
    if(when_Stream_l393_1) begin
      cmdAddress_ready = 1'b1;
    end
  end

  assign when_Stream_l393_1 = (! cmdAddress_m2sPipe_valid);
  assign cmdAddress_m2sPipe_valid = cmdAddress_rValid;
  assign cmdAddress_m2sPipe_payload_write = cmdAddress_rData_write;
  assign cmdAddress_m2sPipe_payload_address = cmdAddress_rData_address;
  assign cmdAddress_m2sPipe_payload_context = cmdAddress_rData_context;
  assign cmdAddress_m2sPipe_payload_burstLast = cmdAddress_rData_burstLast;
  assign cmdAddress_m2sPipe_payload_length = cmdAddress_rData_length;
  assign _zz_io_output_cmd_valid = (! io_halt_regNext);
  assign cmdAddress_m2sPipe_ready = (io_output_cmd_ready && _zz_io_output_cmd_valid);
  assign io_output_cmd_valid = (cmdAddress_m2sPipe_valid && _zz_io_output_cmd_valid);
  assign io_output_cmd_payload_write = cmdAddress_m2sPipe_payload_write;
  assign io_output_cmd_payload_address = cmdAddress_m2sPipe_payload_address;
  assign io_output_cmd_payload_context = cmdAddress_m2sPipe_payload_context;
  assign io_output_cmd_payload_burstLast = cmdAddress_m2sPipe_payload_burstLast;
  assign io_output_cmd_payload_length = cmdAddress_m2sPipe_payload_length;
  assign io_output_rsp_isStall = (io_output_rsp_valid && (! io_output_rsp_ready));
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      inputLogic_spliter_io_output_cmd_rValid <= 1'b0;
      _zz_writeDataToken <= 1'b0;
      writeTokens_counter <= 7'h0;
      _zz_io_output_writeDataToken_valid <= 1'b0;
      cmdAddress_rValid <= 1'b0;
    end else begin
      if(inputLogic_spliter_io_output_cmd_ready) begin
        inputLogic_spliter_io_output_cmd_rValid <= inputLogic_spliter_io_output_cmd_valid;
      end
      _zz_writeDataToken <= inputLogic_converter_io_output_writeData_fire;
      writeTokens_counter <= (_zz_writeTokens_counter - _zz_writeTokens_counter_2);
      if(when_Bmb2PreTaskPort_l119) begin
        _zz_io_output_writeDataToken_valid <= 1'b1;
      end
      if(when_Bmb2PreTaskPort_l119_1) begin
        _zz_io_output_writeDataToken_valid <= 1'b0;
      end
      if(cmdAddress_ready) begin
        cmdAddress_rValid <= cmdAddress_valid;
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! io_output_rsp_isStall)); // Bmb2PreTaskPort.scala:L126
        `else
          if(!(! io_output_rsp_isStall)) begin
            $display("FAILURE SDRAM rsp buffer stalled !"); // Bmb2PreTaskPort.scala:L126
            $finish;
          end
        `endif
      `endif
    end
  end

  always @(posedge clk_out4) begin
    if(inputLogic_spliter_io_output_cmd_ready) begin
      inputLogic_spliter_io_output_cmd_rData_last <= inputLogic_spliter_io_output_cmd_payload_last;
      inputLogic_spliter_io_output_cmd_rData_fragment_opcode <= inputLogic_spliter_io_output_cmd_payload_fragment_opcode;
      inputLogic_spliter_io_output_cmd_rData_fragment_address <= inputLogic_spliter_io_output_cmd_payload_fragment_address;
      inputLogic_spliter_io_output_cmd_rData_fragment_length <= inputLogic_spliter_io_output_cmd_payload_fragment_length;
      inputLogic_spliter_io_output_cmd_rData_fragment_data <= inputLogic_spliter_io_output_cmd_payload_fragment_data;
      inputLogic_spliter_io_output_cmd_rData_fragment_mask <= inputLogic_spliter_io_output_cmd_payload_fragment_mask;
      inputLogic_spliter_io_output_cmd_rData_fragment_context <= inputLogic_spliter_io_output_cmd_payload_fragment_context;
    end
    if(cmdAddress_ready) begin
      cmdAddress_rData_write <= cmdAddress_payload_write;
      cmdAddress_rData_address <= cmdAddress_payload_address;
      cmdAddress_rData_context <= cmdAddress_payload_context;
      cmdAddress_rData_burstLast <= cmdAddress_payload_burstLast;
      cmdAddress_rData_length <= cmdAddress_payload_length;
    end
    io_halt_regNext <= io_halt;
  end


endmodule

module BufferCC_5 (
  input  wire [6:0]    io_dataIn,
  output wire [6:0]    io_dataOut,
  input  wire          clk_out1,
  input  wire          adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [6:0]    buffers_0;
  (* async_reg = "true" *) reg        [6:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_out1 or negedge adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized) begin
    if(!adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized) begin
      buffers_0 <= 7'h0;
      buffers_1 <= 7'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_4 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          clk_out1,
  input  wire          rstN
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_3 (
  input  wire [6:0]    io_dataIn,
  output wire [6:0]    io_dataOut,
  input  wire          clk_out4,
  input  wire          rstN
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [6:0]    buffers_0;
  (* async_reg = "true" *) reg        [6:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      buffers_0 <= 7'h0;
      buffers_1 <= 7'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_2 (
  input  wire [10:0]   io_dataIn,
  output wire [10:0]   io_dataOut,
  input  wire          clk_out4,
  input  wire          adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [10:0]   buffers_0;
  (* async_reg = "true" *) reg        [10:0]   buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_out4 or negedge adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized) begin
    if(!adapter_bmbCCDomain_axi4StreamToBmb_workClockArea_ddr3AxisTxIf_toplevel_rstN_synchronized) begin
      buffers_0 <= 11'h0;
      buffers_1 <= 11'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_1 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          clk_out4,
  input  wire          rstN
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC (
  input  wire [10:0]   io_dataIn,
  output wire [10:0]   io_dataOut,
  input  wire          clk_out1,
  input  wire          rstN
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [10:0]   buffers_0;
  (* async_reg = "true" *) reg        [10:0]   buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_out1 or negedge rstN) begin
    if(!rstN) begin
      buffers_0 <= 11'h0;
      buffers_1 <= 11'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module StreamFifo_6 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_last,
  input  wire [31:0]   io_push_payload_fragment_rdData,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_last,
  output wire [31:0]   io_pop_payload_fragment_rdData,
  input  wire          io_flush,
  output wire [2:0]    io_occupancy,
  output wire [2:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  reg        [32:0]   logic_ram_spinal_port1;
  wire       [2:0]    _zz_logic_ptr_notPow2_counter;
  wire       [2:0]    _zz_logic_ptr_notPow2_counter_1;
  wire       [0:0]    _zz_logic_ptr_notPow2_counter_2;
  wire       [2:0]    _zz_logic_ptr_notPow2_counter_3;
  wire       [0:0]    _zz_logic_ptr_notPow2_counter_4;
  wire       [32:0]   _zz_logic_ram_port;
  wire       [31:0]   _zz_logic_pop_sync_readPort_rsp_fragment_rdData;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [2:0]    logic_ptr_push;
  reg        [2:0]    logic_ptr_pop;
  wire       [2:0]    logic_ptr_occupancy;
  wire       [2:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                when_Stream_l1304;
  wire                when_Stream_l1308;
  reg        [2:0]    logic_ptr_notPow2_counter;
  wire                io_push_fire;
  wire                io_pop_fire;
  wire                logic_push_onRam_write_valid;
  wire       [2:0]    logic_push_onRam_write_payload_address;
  wire                logic_push_onRam_write_payload_data_last;
  wire       [31:0]   logic_push_onRam_write_payload_data_fragment_rdData;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [2:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [2:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [2:0]    logic_pop_addressGen_rData;
  wire                when_Stream_l393;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [2:0]    logic_pop_sync_readPort_cmd_payload;
  wire                logic_pop_sync_readPort_rsp_last;
  wire       [31:0]   logic_pop_sync_readPort_rsp_fragment_rdData;
  wire       [32:0]   _zz_logic_pop_sync_readPort_rsp_last;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire                logic_pop_sync_readArbitation_translated_payload_last;
  wire       [31:0]   logic_pop_sync_readArbitation_translated_payload_fragment_rdData;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [2:0]    logic_pop_sync_popReg;
  reg [32:0] logic_ram [0:5];

  assign _zz_logic_ptr_notPow2_counter = (logic_ptr_notPow2_counter + _zz_logic_ptr_notPow2_counter_1);
  assign _zz_logic_ptr_notPow2_counter_2 = io_push_fire;
  assign _zz_logic_ptr_notPow2_counter_1 = {2'd0, _zz_logic_ptr_notPow2_counter_2};
  assign _zz_logic_ptr_notPow2_counter_4 = io_pop_fire;
  assign _zz_logic_ptr_notPow2_counter_3 = {2'd0, _zz_logic_ptr_notPow2_counter_4};
  assign _zz_logic_pop_sync_readPort_rsp_fragment_rdData = _zz_logic_pop_sync_readPort_rsp_last[32 : 1];
  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_fragment_rdData,logic_push_onRam_write_payload_data_last};
  always @(posedge clk_out4) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  always @(posedge clk_out4) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = ((logic_ptr_push == logic_ptr_popOnIo) && logic_ptr_wentUp);
  assign logic_ptr_empty = ((logic_ptr_push == logic_ptr_pop) && (! logic_ptr_wentUp));
  assign when_Stream_l1304 = (logic_ptr_push == 3'b101);
  assign when_Stream_l1308 = (logic_ptr_pop == 3'b101);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign io_pop_fire = (io_pop_valid && io_pop_ready);
  assign logic_ptr_occupancy = logic_ptr_notPow2_counter;
  assign io_push_ready = (! logic_ptr_full);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push;
  assign logic_push_onRam_write_payload_data_last = io_push_payload_last;
  assign logic_push_onRam_write_payload_data_fragment_rdData = io_push_payload_fragment_rdData;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop;
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l393) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign _zz_logic_pop_sync_readPort_rsp_last = logic_ram_spinal_port1;
  assign logic_pop_sync_readPort_rsp_last = _zz_logic_pop_sync_readPort_rsp_last[0];
  assign logic_pop_sync_readPort_rsp_fragment_rdData = _zz_logic_pop_sync_readPort_rsp_fragment_rdData[31 : 0];
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload_last = logic_pop_sync_readPort_rsp_last;
  assign logic_pop_sync_readArbitation_translated_payload_fragment_rdData = logic_pop_sync_readPort_rsp_fragment_rdData;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_last = logic_pop_sync_readArbitation_translated_payload_last;
  assign io_pop_payload_fragment_rdData = logic_pop_sync_readArbitation_translated_payload_fragment_rdData;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (3'b110 - logic_ptr_occupancy);
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      logic_ptr_push <= 3'b000;
      logic_ptr_pop <= 3'b000;
      logic_ptr_wentUp <= 1'b0;
      logic_ptr_notPow2_counter <= 3'b000;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 3'b000;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 3'b001);
        if(when_Stream_l1304) begin
          logic_ptr_push <= 3'b000;
        end
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 3'b001);
        if(when_Stream_l1308) begin
          logic_ptr_pop <= 3'b000;
        end
      end
      if(io_flush) begin
        logic_ptr_push <= 3'b000;
        logic_ptr_pop <= 3'b000;
      end
      logic_ptr_notPow2_counter <= (_zz_logic_ptr_notPow2_counter - _zz_logic_ptr_notPow2_counter_3);
      if(io_flush) begin
        logic_ptr_notPow2_counter <= 3'b000;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 3'b000;
      end
    end
  end

  always @(posedge clk_out4) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

module StreamFifoLowLatency_4 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_last,
  input  wire [17:0]   io_push_payload_fragment_context,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_last,
  output wire [17:0]   io_pop_payload_fragment_context,
  input  wire          io_flush,
  output wire [2:0]    io_occupancy,
  output wire [2:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire                fifo_io_pop_payload_last;
  wire       [17:0]   fifo_io_pop_payload_fragment_context;
  wire       [2:0]    fifo_io_occupancy;
  wire       [2:0]    fifo_io_availability;

  StreamFifo_5 fifo (
    .io_push_valid                    (io_push_valid                             ), //i
    .io_push_ready                    (fifo_io_push_ready                        ), //o
    .io_push_payload_last             (io_push_payload_last                      ), //i
    .io_push_payload_fragment_context (io_push_payload_fragment_context[17:0]    ), //i
    .io_pop_valid                     (fifo_io_pop_valid                         ), //o
    .io_pop_ready                     (io_pop_ready                              ), //i
    .io_pop_payload_last              (fifo_io_pop_payload_last                  ), //o
    .io_pop_payload_fragment_context  (fifo_io_pop_payload_fragment_context[17:0]), //o
    .io_flush                         (io_flush                                  ), //i
    .io_occupancy                     (fifo_io_occupancy[2:0]                    ), //o
    .io_availability                  (fifo_io_availability[2:0]                 ), //o
    .clk_out4                         (clk_out4                                  ), //i
    .rstN                             (rstN                                      )  //i
  );
  assign io_push_ready = fifo_io_push_ready;
  assign io_pop_valid = fifo_io_pop_valid;
  assign io_pop_payload_last = fifo_io_pop_payload_last;
  assign io_pop_payload_fragment_context = fifo_io_pop_payload_fragment_context;
  assign io_occupancy = fifo_io_occupancy;
  assign io_availability = fifo_io_availability;

endmodule

module Refresher (
  output wire          io_refresh_valid,
  input  wire          io_refresh_ready,
  input  wire          clk_out4,
  input  wire          rstN
);

  reg        [22:0]   value;
  wire                hit;
  wire                when_Refresher_l15;
  reg                 pending;
  wire                when_Refresher_l19;

  assign hit = (value == 23'h0);
  assign when_Refresher_l15 = (hit || (! 1'b1));
  assign when_Refresher_l19 = (! 1'b1);
  assign io_refresh_valid = pending;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      value <= 23'h0;
      pending <= 1'b0;
    end else begin
      value <= (value - 23'h000001);
      if(when_Refresher_l15) begin
        value <= 23'h0000c3;
      end
      if(io_refresh_ready) begin
        pending <= 1'b0;
      end
      if(hit) begin
        pending <= 1'b1;
      end
      if(when_Refresher_l19) begin
        pending <= 1'b0;
      end
    end
  end


endmodule

module StreamFifoLowLatency_3 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [31:0]   io_push_payload_data,
  input  wire [3:0]    io_push_payload_mask,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [31:0]   io_pop_payload_data,
  output wire [3:0]    io_pop_payload_mask,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [31:0]   fifo_io_pop_payload_data;
  wire       [3:0]    fifo_io_pop_payload_mask;
  wire       [6:0]    fifo_io_occupancy;
  wire       [6:0]    fifo_io_availability;

  StreamFifo_4 fifo (
    .io_push_valid        (io_push_valid                 ), //i
    .io_push_ready        (fifo_io_push_ready            ), //o
    .io_push_payload_data (io_push_payload_data[31:0]    ), //i
    .io_push_payload_mask (io_push_payload_mask[3:0]     ), //i
    .io_pop_valid         (fifo_io_pop_valid             ), //o
    .io_pop_ready         (io_pop_ready                  ), //i
    .io_pop_payload_data  (fifo_io_pop_payload_data[31:0]), //o
    .io_pop_payload_mask  (fifo_io_pop_payload_mask[3:0] ), //o
    .io_flush             (io_flush                      ), //i
    .io_occupancy         (fifo_io_occupancy[6:0]        ), //o
    .io_availability      (fifo_io_availability[6:0]     ), //o
    .clk_out4             (clk_out4                      ), //i
    .rstN                 (rstN                          )  //i
  );
  assign io_push_ready = fifo_io_push_ready;
  assign io_pop_valid = fifo_io_pop_valid;
  assign io_pop_payload_data = fifo_io_pop_payload_data;
  assign io_pop_payload_mask = fifo_io_pop_payload_mask;
  assign io_occupancy = fifo_io_occupancy;
  assign io_availability = fifo_io_availability;

endmodule

module StreamFifoLowLatency_2 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_last,
  input  wire [31:0]   io_push_payload_fragment_data,
  input  wire [17:0]   io_push_payload_fragment_context,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_last,
  output wire [31:0]   io_pop_payload_fragment_data,
  output wire [17:0]   io_pop_payload_fragment_context,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire                fifo_io_pop_payload_last;
  wire       [31:0]   fifo_io_pop_payload_fragment_data;
  wire       [17:0]   fifo_io_pop_payload_fragment_context;
  wire       [6:0]    fifo_io_occupancy;
  wire       [6:0]    fifo_io_availability;

  StreamFifo_3 fifo (
    .io_push_valid                    (io_push_valid                             ), //i
    .io_push_ready                    (fifo_io_push_ready                        ), //o
    .io_push_payload_last             (io_push_payload_last                      ), //i
    .io_push_payload_fragment_data    (io_push_payload_fragment_data[31:0]       ), //i
    .io_push_payload_fragment_context (io_push_payload_fragment_context[17:0]    ), //i
    .io_pop_valid                     (fifo_io_pop_valid                         ), //o
    .io_pop_ready                     (io_pop_ready                              ), //i
    .io_pop_payload_last              (fifo_io_pop_payload_last                  ), //o
    .io_pop_payload_fragment_data     (fifo_io_pop_payload_fragment_data[31:0]   ), //o
    .io_pop_payload_fragment_context  (fifo_io_pop_payload_fragment_context[17:0]), //o
    .io_flush                         (io_flush                                  ), //i
    .io_occupancy                     (fifo_io_occupancy[6:0]                    ), //o
    .io_availability                  (fifo_io_availability[6:0]                 ), //o
    .clk_out4                         (clk_out4                                  ), //i
    .rstN                             (rstN                                      )  //i
  );
  assign io_push_ready = fifo_io_push_ready;
  assign io_pop_valid = fifo_io_pop_valid;
  assign io_pop_payload_last = fifo_io_pop_payload_last;
  assign io_pop_payload_fragment_data = fifo_io_pop_payload_fragment_data;
  assign io_pop_payload_fragment_context = fifo_io_pop_payload_fragment_context;
  assign io_occupancy = fifo_io_occupancy;
  assign io_availability = fifo_io_availability;

endmodule

module StreamFifoLowLatency_1 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_write,
  input  wire [28:0]   io_push_payload_address,
  input  wire [17:0]   io_push_payload_context,
  input  wire          io_push_payload_burstLast,
  input  wire [1:0]    io_push_payload_length,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_write,
  output wire [28:0]   io_pop_payload_address,
  output wire [17:0]   io_pop_payload_context,
  output wire          io_pop_payload_burstLast,
  output wire [1:0]    io_pop_payload_length,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire                fifo_io_pop_payload_write;
  wire       [28:0]   fifo_io_pop_payload_address;
  wire       [17:0]   fifo_io_pop_payload_context;
  wire                fifo_io_pop_payload_burstLast;
  wire       [1:0]    fifo_io_pop_payload_length;
  wire       [6:0]    fifo_io_occupancy;
  wire       [6:0]    fifo_io_availability;

  StreamFifo_2 fifo (
    .io_push_valid             (io_push_valid                    ), //i
    .io_push_ready             (fifo_io_push_ready               ), //o
    .io_push_payload_write     (io_push_payload_write            ), //i
    .io_push_payload_address   (io_push_payload_address[28:0]    ), //i
    .io_push_payload_context   (io_push_payload_context[17:0]    ), //i
    .io_push_payload_burstLast (io_push_payload_burstLast        ), //i
    .io_push_payload_length    (io_push_payload_length[1:0]      ), //i
    .io_pop_valid              (fifo_io_pop_valid                ), //o
    .io_pop_ready              (io_pop_ready                     ), //i
    .io_pop_payload_write      (fifo_io_pop_payload_write        ), //o
    .io_pop_payload_address    (fifo_io_pop_payload_address[28:0]), //o
    .io_pop_payload_context    (fifo_io_pop_payload_context[17:0]), //o
    .io_pop_payload_burstLast  (fifo_io_pop_payload_burstLast    ), //o
    .io_pop_payload_length     (fifo_io_pop_payload_length[1:0]  ), //o
    .io_flush                  (io_flush                         ), //i
    .io_occupancy              (fifo_io_occupancy[6:0]           ), //o
    .io_availability           (fifo_io_availability[6:0]        ), //o
    .clk_out4                  (clk_out4                         ), //i
    .rstN                      (rstN                             )  //i
  );
  assign io_push_ready = fifo_io_push_ready;
  assign io_pop_valid = fifo_io_pop_valid;
  assign io_pop_payload_write = fifo_io_pop_payload_write;
  assign io_pop_payload_address = fifo_io_pop_payload_address;
  assign io_pop_payload_context = fifo_io_pop_payload_context;
  assign io_pop_payload_burstLast = fifo_io_pop_payload_burstLast;
  assign io_pop_payload_length = fifo_io_pop_payload_length;
  assign io_occupancy = fifo_io_occupancy;
  assign io_availability = fifo_io_availability;

endmodule

module BmbToPreTaskPort (
  input  wire          io_input_cmd_valid,
  output reg           io_input_cmd_ready,
  input  wire          io_input_cmd_payload_last,
  input  wire [0:0]    io_input_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_input_cmd_payload_fragment_address,
  input  wire [5:0]    io_input_cmd_payload_fragment_length,
  input  wire [31:0]   io_input_cmd_payload_fragment_data,
  input  wire [3:0]    io_input_cmd_payload_fragment_mask,
  input  wire [17:0]   io_input_cmd_payload_fragment_context,
  output wire          io_input_rsp_valid,
  input  wire          io_input_rsp_ready,
  output wire          io_input_rsp_payload_last,
  output wire [0:0]    io_input_rsp_payload_fragment_opcode,
  output wire [31:0]   io_input_rsp_payload_fragment_data,
  output wire [17:0]   io_input_rsp_payload_fragment_context,
  input  wire          io_inputBurstLast,
  output wire          io_output_cmd_valid,
  input  wire          io_output_cmd_ready,
  output wire          io_output_cmd_payload_write,
  output wire [28:0]   io_output_cmd_payload_address,
  output wire [17:0]   io_output_cmd_payload_context,
  output wire          io_output_cmd_payload_burstLast,
  output wire [1:0]    io_output_cmd_payload_length,
  output wire          io_output_writeData_valid,
  input  wire          io_output_writeData_ready,
  output wire [31:0]   io_output_writeData_payload_data,
  output wire [3:0]    io_output_writeData_payload_mask,
  output wire          io_output_writeDataToken_valid,
  input  wire          io_output_writeDataToken_ready,
  output wire          io_output_writeDataToken_payload_valid,
  output wire          io_output_writeDataToken_payload_ready,
  input  wire          io_output_rsp_valid,
  output wire          io_output_rsp_ready,
  input  wire          io_output_rsp_payload_last,
  input  wire [31:0]   io_output_rsp_payload_fragment_data,
  input  wire [17:0]   io_output_rsp_payload_fragment_context,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [4:0]    _zz_cmdToRspCount;
  wire       [2:0]    _zz_cmdToRspCount_1;
  wire       [2:0]    _zz_cmdToRspCount_2;
  wire       [1:0]    _zz_cmdToRspCount_3;
  wire       [7:0]    _zz_toManyRsp;
  wire       [7:0]    _zz_toManyRsp_1;
  wire       [6:0]    _zz_rspPendingCounter;
  wire       [6:0]    _zz_rspPendingCounter_1;
  wire       [4:0]    _zz_rspPendingCounter_2;
  wire       [6:0]    _zz_rspPendingCounter_3;
  wire       [0:0]    _zz_rspPendingCounter_4;
  wire       [4:0]    cmdToRspCount;
  reg        [6:0]    rspPendingCounter;
  wire                toManyRsp;
  wire                io_input_cmd_fire;
  wire                io_output_rsp_fire;
  wire       [17:0]   cmdContext_context;
  wire                when_Bmb2PreTaskPort_l24;
  wire       [17:0]   rspContext_context;
  reg                 io_input_cmd_payload_first;

  assign _zz_cmdToRspCount = ({2'd0,_zz_cmdToRspCount_1} <<< 2'd2);
  assign _zz_cmdToRspCount_1 = ({1'b0,io_output_cmd_payload_length} + _zz_cmdToRspCount_2);
  assign _zz_cmdToRspCount_3 = {1'b0,1'b1};
  assign _zz_cmdToRspCount_2 = {1'd0, _zz_cmdToRspCount_3};
  assign _zz_toManyRsp = ({1'b0,rspPendingCounter} + _zz_toManyRsp_1);
  assign _zz_toManyRsp_1 = {3'd0, cmdToRspCount};
  assign _zz_rspPendingCounter = (rspPendingCounter + _zz_rspPendingCounter_1);
  assign _zz_rspPendingCounter_2 = ((io_input_cmd_fire && io_input_cmd_payload_last) ? cmdToRspCount : 5'h0);
  assign _zz_rspPendingCounter_1 = {2'd0, _zz_rspPendingCounter_2};
  assign _zz_rspPendingCounter_4 = io_output_rsp_fire;
  assign _zz_rspPendingCounter_3 = {6'd0, _zz_rspPendingCounter_4};
  assign cmdToRspCount = (io_output_cmd_payload_write ? 5'h0 : _zz_cmdToRspCount);
  assign toManyRsp = (8'h40 < _zz_toManyRsp);
  assign io_input_cmd_fire = (io_input_cmd_valid && io_input_cmd_ready);
  assign io_output_rsp_fire = (io_output_rsp_valid && io_output_rsp_ready);
  always @(*) begin
    io_input_cmd_ready = (io_output_cmd_ready && (! toManyRsp));
    if(when_Bmb2PreTaskPort_l24) begin
      io_input_cmd_ready = 1'b0;
    end
  end

  assign when_Bmb2PreTaskPort_l24 = (! io_output_writeData_ready);
  assign rspContext_context = io_output_rsp_payload_fragment_context[17 : 0];
  assign cmdContext_context = io_input_cmd_payload_fragment_context;
  assign io_output_cmd_valid = (io_input_cmd_fire && io_input_cmd_payload_first);
  assign io_output_cmd_payload_write = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign io_output_cmd_payload_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_length = (io_input_cmd_payload_fragment_length >>> 3'd4);
  assign io_output_cmd_payload_context = cmdContext_context;
  assign io_output_cmd_payload_burstLast = io_inputBurstLast;
  assign io_output_writeData_valid = (io_input_cmd_fire && (io_input_cmd_payload_fragment_opcode == 1'b1));
  assign io_output_writeData_payload_data = io_input_cmd_payload_fragment_data;
  assign io_output_writeData_payload_mask = io_input_cmd_payload_fragment_mask;
  assign io_input_rsp_valid = io_output_rsp_valid;
  assign io_output_rsp_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_fragment_opcode = 1'b0;
  assign io_input_rsp_payload_last = io_output_rsp_payload_last;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = rspContext_context;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      rspPendingCounter <= 7'h0;
      io_input_cmd_payload_first <= 1'b1;
    end else begin
      rspPendingCounter <= (_zz_rspPendingCounter - _zz_rspPendingCounter_3);
      if(io_input_cmd_fire) begin
        io_input_cmd_payload_first <= io_input_cmd_payload_last;
      end
    end
  end


endmodule

module BmbAlignedSpliter (
  input  wire          io_input_cmd_valid,
  output wire          io_input_cmd_ready,
  input  wire          io_input_cmd_payload_last,
  input  wire [0:0]    io_input_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_input_cmd_payload_fragment_address,
  input  wire [10:0]   io_input_cmd_payload_fragment_length,
  input  wire [31:0]   io_input_cmd_payload_fragment_data,
  input  wire [3:0]    io_input_cmd_payload_fragment_mask,
  input  wire [15:0]   io_input_cmd_payload_fragment_context,
  output wire          io_input_rsp_valid,
  input  wire          io_input_rsp_ready,
  output wire          io_input_rsp_payload_last,
  output wire [0:0]    io_input_rsp_payload_fragment_opcode,
  output wire [31:0]   io_input_rsp_payload_fragment_data,
  output wire [15:0]   io_input_rsp_payload_fragment_context,
  output wire          io_output_cmd_valid,
  input  wire          io_output_cmd_ready,
  output wire          io_output_cmd_payload_last,
  output wire [0:0]    io_output_cmd_payload_fragment_opcode,
  output wire [28:0]   io_output_cmd_payload_fragment_address,
  output wire [5:0]    io_output_cmd_payload_fragment_length,
  output wire [31:0]   io_output_cmd_payload_fragment_data,
  output wire [3:0]    io_output_cmd_payload_fragment_mask,
  output wire [17:0]   io_output_cmd_payload_fragment_context,
  input  wire          io_output_rsp_valid,
  output wire          io_output_rsp_ready,
  input  wire          io_output_rsp_payload_last,
  input  wire [0:0]    io_output_rsp_payload_fragment_opcode,
  input  wire [31:0]   io_output_rsp_payload_fragment_data,
  input  wire [17:0]   io_output_rsp_payload_fragment_context,
  output wire          io_outputBurstLast,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [11:0]   _zz_cmdLogic_lastAddress;
  wire       [5:0]    _zz_cmdLogic_lastAddress_1;
  wire       [4:0]    _zz_cmdLogic_beatsInSplit;
  wire       [3:0]    _zz_cmdLogic_beatsInSplit_1;
  wire       [4:0]    _zz_io_output_cmd_valid;
  wire       [4:0]    _zz_io_output_cmd_valid_1;
  wire       [4:0]    _zz_io_output_cmd_payload_last;
  wire       [4:0]    _zz_io_output_cmd_payload_last_1;
  wire       [4:0]    _zz_io_output_cmd_payload_last_2;
  wire       [4:0]    _zz_io_output_cmd_payload_last_3;
  wire       [11:0]   _zz_io_output_cmd_payload_fragment_address;
  wire       [11:0]   _zz_io_output_cmd_payload_fragment_address_1;
  wire       [4:0]    _zz_io_output_cmd_payload_fragment_opcode;
  wire       [4:0]    _zz_io_output_cmd_payload_fragment_opcode_1;
  wire       [3:0]    _zz_cmdLogic_wrBeatCounter;
  wire       [0:0]    _zz_cmdLogic_wrBeatCounter_1;
  wire       [5:0]    _zz_cmdLogic_splitCounter;
  wire       [0:0]    _zz_cmdLogic_splitCounter_1;
  reg        [3:0]    cmdLogic_wrBeatCounter;
  reg        [3:0]    cmdLogic_rdBeatCounter;
  reg        [5:0]    cmdLogic_splitCounter;
  wire                io_input_cmd_fire;
  reg        [10:0]   cmdLogic_lengthReg;
  reg        [28:0]   cmdLogic_addressReg;
  wire       [10:0]   cmdLogic_length;
  wire       [28:0]   cmdLogic_address;
  wire       [5:0]    cmdLogic_headLenghtMax;
  wire       [11:0]   cmdLogic_lastAddress;
  wire       [5:0]    cmdLogic_tailLength;
  wire       [5:0]    cmdLogic_splitCount;
  reg                 cmdLogic_firstSplit;
  wire                io_output_cmd_fire;
  wire                when_BmbSpliter_l210;
  wire                cmdLogic_lastSplit;
  wire                cmdLogic_usedSplit;
  reg        [28:0]   cmdLogic_addressBase;
  wire                when_BmbSpliter_l215;
  wire       [4:0]    cmdLogic_beatsInSplit;
  wire                cmdLogic_context_last;
  wire                cmdLogic_context_write;
  wire       [15:0]   cmdLogic_context_input;
  wire       [1:0]    switch_Misc_l241;
  reg        [5:0]    _zz_io_output_cmd_payload_fragment_length;
  wire                when_BmbSpliter_l247;
  reg                 cmdLogic_rdStart;
  wire                when_BmbSpliter_l256;
  wire                io_input_rsp_fire;
  wire                when_BmbSpliter_l256_1;
  wire                when_BmbSpliter_l259;
  wire                when_BmbSpliter_l264;
  wire                rspLogic_context_last;
  wire                rspLogic_context_write;
  wire       [15:0]   rspLogic_context_input;
  wire       [17:0]   _zz_rspLogic_context_last;

  assign _zz_cmdLogic_lastAddress_1 = cmdLogic_address[5 : 0];
  assign _zz_cmdLogic_lastAddress = {6'd0, _zz_cmdLogic_lastAddress_1};
  assign _zz_cmdLogic_beatsInSplit_1 = ((! cmdLogic_firstSplit) ? 4'b0000 : cmdLogic_address[5 : 2]);
  assign _zz_cmdLogic_beatsInSplit = {1'd0, _zz_cmdLogic_beatsInSplit_1};
  assign _zz_io_output_cmd_valid = {1'd0, cmdLogic_rdBeatCounter};
  assign _zz_io_output_cmd_valid_1 = (cmdLogic_beatsInSplit - 5'h01);
  assign _zz_io_output_cmd_payload_last = {1'd0, cmdLogic_wrBeatCounter};
  assign _zz_io_output_cmd_payload_last_1 = (cmdLogic_beatsInSplit - 5'h01);
  assign _zz_io_output_cmd_payload_last_2 = {1'd0, cmdLogic_rdBeatCounter};
  assign _zz_io_output_cmd_payload_last_3 = (cmdLogic_beatsInSplit - 5'h01);
  assign _zz_io_output_cmd_payload_fragment_address = (cmdLogic_addressBase[11 : 0] + _zz_io_output_cmd_payload_fragment_address_1);
  assign _zz_io_output_cmd_payload_fragment_address_1 = ({6'd0,cmdLogic_splitCounter} <<< 3'd6);
  assign _zz_io_output_cmd_payload_fragment_opcode = {1'd0, cmdLogic_rdBeatCounter};
  assign _zz_io_output_cmd_payload_fragment_opcode_1 = (cmdLogic_beatsInSplit - 5'h01);
  assign _zz_cmdLogic_wrBeatCounter_1 = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign _zz_cmdLogic_wrBeatCounter = {3'd0, _zz_cmdLogic_wrBeatCounter_1};
  assign _zz_cmdLogic_splitCounter_1 = 1'b1;
  assign _zz_cmdLogic_splitCounter = {5'd0, _zz_cmdLogic_splitCounter_1};
  assign io_input_cmd_fire = (io_input_cmd_valid && io_input_cmd_ready);
  assign cmdLogic_length = (io_input_cmd_fire ? io_input_cmd_payload_fragment_length : cmdLogic_lengthReg);
  assign cmdLogic_address = (io_input_cmd_fire ? io_input_cmd_payload_fragment_address : cmdLogic_addressReg);
  assign cmdLogic_headLenghtMax = (6'h3f - cmdLogic_address[5 : 0]);
  assign cmdLogic_lastAddress = (_zz_cmdLogic_lastAddress + {1'b0,cmdLogic_length});
  assign cmdLogic_tailLength = cmdLogic_lastAddress[5 : 0];
  assign cmdLogic_splitCount = (cmdLogic_lastAddress >>> 3'd6);
  assign io_output_cmd_fire = (io_output_cmd_valid && io_output_cmd_ready);
  assign when_BmbSpliter_l210 = (io_output_cmd_fire && io_output_cmd_payload_last);
  assign cmdLogic_lastSplit = (cmdLogic_splitCounter == cmdLogic_splitCount);
  assign cmdLogic_usedSplit = ((cmdLogic_splitCounter <= cmdLogic_splitCount) && (cmdLogic_splitCounter != 6'h0));
  always @(*) begin
    cmdLogic_addressBase = cmdLogic_address;
    if(when_BmbSpliter_l215) begin
      cmdLogic_addressBase[5 : 0] = 6'h0;
    end
  end

  assign when_BmbSpliter_l215 = (! cmdLogic_firstSplit);
  assign cmdLogic_beatsInSplit = (5'h10 - _zz_cmdLogic_beatsInSplit);
  assign cmdLogic_context_input = io_input_cmd_payload_fragment_context;
  assign cmdLogic_context_last = cmdLogic_lastSplit;
  assign cmdLogic_context_write = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign io_output_cmd_valid = (io_input_cmd_valid || ((_zz_io_output_cmd_valid == _zz_io_output_cmd_valid_1) && cmdLogic_usedSplit));
  assign io_output_cmd_payload_last = ((io_input_cmd_payload_last || (((_zz_io_output_cmd_payload_last == _zz_io_output_cmd_payload_last_1) && io_input_cmd_fire) && (io_input_cmd_payload_fragment_opcode == 1'b1))) || ((_zz_io_output_cmd_payload_last_2 == _zz_io_output_cmd_payload_last_3) && cmdLogic_usedSplit));
  assign io_output_cmd_payload_fragment_address = {cmdLogic_addressBase[28 : 12],_zz_io_output_cmd_payload_fragment_address};
  assign io_output_cmd_payload_fragment_context = {cmdLogic_context_input,{cmdLogic_context_write,cmdLogic_context_last}};
  assign io_output_cmd_payload_fragment_opcode = (io_input_cmd_payload_fragment_opcode & (~ ((_zz_io_output_cmd_payload_fragment_opcode == _zz_io_output_cmd_payload_fragment_opcode_1) && cmdLogic_usedSplit)));
  assign switch_Misc_l241 = {cmdLogic_firstSplit,cmdLogic_lastSplit};
  always @(*) begin
    case(switch_Misc_l241)
      2'b10 : begin
        _zz_io_output_cmd_payload_fragment_length = cmdLogic_headLenghtMax;
      end
      2'b00 : begin
        _zz_io_output_cmd_payload_fragment_length = 6'h3f;
      end
      2'b01 : begin
        _zz_io_output_cmd_payload_fragment_length = cmdLogic_tailLength;
      end
      default : begin
        _zz_io_output_cmd_payload_fragment_length = cmdLogic_length[5:0];
      end
    endcase
  end

  assign io_output_cmd_payload_fragment_length = _zz_io_output_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_outputBurstLast = cmdLogic_context_last;
  assign io_input_cmd_ready = io_output_cmd_ready;
  assign when_BmbSpliter_l247 = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign when_BmbSpliter_l256 = (io_input_cmd_valid && (io_input_cmd_payload_fragment_opcode == 1'b0));
  assign io_input_rsp_fire = (io_input_rsp_valid && io_input_rsp_ready);
  assign when_BmbSpliter_l256_1 = (io_input_rsp_fire && io_input_rsp_payload_last);
  assign when_BmbSpliter_l259 = (io_output_cmd_fire && io_output_cmd_payload_last);
  assign when_BmbSpliter_l264 = (((io_input_cmd_fire && io_input_cmd_payload_last) && (io_input_cmd_payload_fragment_opcode == 1'b1)) || (io_input_rsp_fire && io_input_rsp_payload_last));
  assign _zz_rspLogic_context_last = io_output_rsp_payload_fragment_context;
  assign rspLogic_context_last = _zz_rspLogic_context_last[0];
  assign rspLogic_context_write = _zz_rspLogic_context_last[1];
  assign rspLogic_context_input = _zz_rspLogic_context_last[17 : 2];
  assign io_input_rsp_valid = io_output_rsp_valid;
  assign io_output_rsp_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = (io_output_rsp_payload_last && rspLogic_context_last);
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = rspLogic_context_input;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      cmdLogic_wrBeatCounter <= 4'b0000;
      cmdLogic_rdBeatCounter <= 4'b0000;
      cmdLogic_splitCounter <= 6'h0;
      cmdLogic_lengthReg <= 11'h03f;
      cmdLogic_addressReg <= 29'h0;
      cmdLogic_firstSplit <= 1'b1;
      cmdLogic_rdStart <= 1'b0;
    end else begin
      if(io_input_cmd_fire) begin
        cmdLogic_lengthReg <= io_input_cmd_payload_fragment_length;
      end
      if(io_input_cmd_fire) begin
        cmdLogic_addressReg <= io_input_cmd_payload_fragment_address;
      end
      if(when_BmbSpliter_l210) begin
        cmdLogic_firstSplit <= 1'b0;
      end
      if(io_output_cmd_fire) begin
        if(when_BmbSpliter_l247) begin
          cmdLogic_wrBeatCounter <= (cmdLogic_wrBeatCounter + _zz_cmdLogic_wrBeatCounter);
        end
        if(io_output_cmd_payload_last) begin
          cmdLogic_splitCounter <= (cmdLogic_splitCounter + _zz_cmdLogic_splitCounter);
          cmdLogic_wrBeatCounter <= 4'b0000;
        end
      end
      if(when_BmbSpliter_l256) begin
        cmdLogic_rdStart <= 1'b1;
      end
      if(when_BmbSpliter_l256_1) begin
        cmdLogic_rdStart <= 1'b0;
      end
      if(cmdLogic_rdStart) begin
        cmdLogic_rdBeatCounter <= (cmdLogic_rdBeatCounter + 4'b0001);
        if(when_BmbSpliter_l259) begin
          cmdLogic_rdBeatCounter <= 4'b0000;
        end
      end
      if(when_BmbSpliter_l264) begin
        cmdLogic_splitCounter <= 6'h0;
        cmdLogic_firstSplit <= 1'b1;
      end
    end
  end


endmodule

module BmbAligner (
  input  wire          io_input_cmd_valid,
  output wire          io_input_cmd_ready,
  input  wire          io_input_cmd_payload_last,
  input  wire [0:0]    io_input_cmd_payload_fragment_opcode,
  input  wire [28:0]   io_input_cmd_payload_fragment_address,
  input  wire [9:0]    io_input_cmd_payload_fragment_length,
  input  wire [31:0]   io_input_cmd_payload_fragment_data,
  input  wire [3:0]    io_input_cmd_payload_fragment_mask,
  input  wire [3:0]    io_input_cmd_payload_fragment_context,
  output wire          io_input_rsp_valid,
  input  wire          io_input_rsp_ready,
  output reg           io_input_rsp_payload_last,
  output wire [0:0]    io_input_rsp_payload_fragment_opcode,
  output wire [31:0]   io_input_rsp_payload_fragment_data,
  output wire [3:0]    io_input_rsp_payload_fragment_context,
  output wire          io_output_cmd_valid,
  input  wire          io_output_cmd_ready,
  output reg           io_output_cmd_payload_last,
  output wire [0:0]    io_output_cmd_payload_fragment_opcode,
  output wire [28:0]   io_output_cmd_payload_fragment_address,
  output wire [10:0]   io_output_cmd_payload_fragment_length,
  output wire [31:0]   io_output_cmd_payload_fragment_data,
  output wire [3:0]    io_output_cmd_payload_fragment_mask,
  output wire [15:0]   io_output_cmd_payload_fragment_context,
  input  wire          io_output_rsp_valid,
  output reg           io_output_rsp_ready,
  input  wire          io_output_rsp_payload_last,
  input  wire [0:0]    io_output_rsp_payload_fragment_opcode,
  input  wire [31:0]   io_output_rsp_payload_fragment_data,
  input  wire [15:0]   io_output_rsp_payload_fragment_context,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [10:0]   _zz_io_output_cmd_payload_fragment_length;
  wire       [10:0]   _zz_io_output_cmd_payload_fragment_length_1;
  wire       [3:0]    _zz_io_output_cmd_payload_fragment_length_2;
  wire       [10:0]   _zz_io_output_cmd_payload_fragment_length_3;
  wire       [1:0]    _zz_logic_cmdLogic_forWrite_beatCounter;
  wire       [0:0]    _zz_logic_cmdLogic_forWrite_beatCounter_1;
  wire       [10:0]   _zz_logic_cmdLogic_context_transfers;
  wire       [10:0]   _zz_logic_cmdLogic_context_transfers_1;
  wire       [1:0]    _zz_logic_cmdLogic_context_transfers_2;
  wire       [1:0]    _zz_logic_rspLogic_forRead_beatCounter;
  wire       [0:0]    _zz_logic_rspLogic_forRead_beatCounter_1;
  wire       [1:0]    logic_cmdLogic_paddings;
  wire                logic_cmdLogic_context_write;
  wire       [1:0]    logic_cmdLogic_context_paddings;
  wire       [8:0]    logic_cmdLogic_context_transfers;
  wire       [3:0]    logic_cmdLogic_context_input;
  reg                 logic_cmdLogic_inputReadyOk;
  reg        [1:0]    logic_cmdLogic_forWrite_beatCounter;
  wire                io_output_cmd_fire;
  wire                io_input_cmd_fire;
  reg                 io_input_cmd_payload_first;
  wire                logic_cmdLogic_forWrite_prePadding;
  reg                 logic_cmdLogic_forWrite_postPadding;
  wire                when_BmbSpliter_l93;
  wire                when_BmbSpliter_l95;
  wire                when_BmbSpliter_l98;
  reg        [9:0]    logic_cmdLogic_lengthReg;
  reg        [28:0]   logic_cmdLogic_addressReg;
  wire       [9:0]    logic_cmdLogic_length;
  wire       [28:0]   logic_cmdLogic_address;
  wire                when_BmbSpliter_l118;
  wire                when_BmbSpliter_l119;
  wire                logic_rspLogic_context_write;
  wire       [1:0]    logic_rspLogic_context_paddings;
  wire       [8:0]    logic_rspLogic_context_transfers;
  wire       [3:0]    logic_rspLogic_context_input;
  wire       [15:0]   _zz_logic_rspLogic_context_write;
  reg                 logic_rspLogic_drop;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [31:0]   io_output_rsp_thrown_payload_fragment_data;
  wire       [15:0]   io_output_rsp_thrown_payload_fragment_context;
  reg        [1:0]    logic_rspLogic_forRead_beatCounter;
  wire                io_output_rsp_fire;
  reg        [8:0]    logic_rspLogic_forRead_transferCounter;
  wire                io_input_rsp_fire;
  wire                when_BmbSpliter_l149;
  reg                 io_input_rsp_payload_first;
  wire                when_BmbSpliter_l153;
  wire                when_BmbSpliter_l157;

  assign _zz_io_output_cmd_payload_fragment_length = (_zz_io_output_cmd_payload_fragment_length_1 + _zz_io_output_cmd_payload_fragment_length_3);
  assign _zz_io_output_cmd_payload_fragment_length_2 = io_input_cmd_payload_fragment_address[3 : 0];
  assign _zz_io_output_cmd_payload_fragment_length_1 = {7'd0, _zz_io_output_cmd_payload_fragment_length_2};
  assign _zz_io_output_cmd_payload_fragment_length_3 = {1'd0, io_input_cmd_payload_fragment_length};
  assign _zz_logic_cmdLogic_forWrite_beatCounter_1 = (io_output_cmd_fire && (io_input_cmd_payload_fragment_opcode == 1'b1));
  assign _zz_logic_cmdLogic_forWrite_beatCounter = {1'd0, _zz_logic_cmdLogic_forWrite_beatCounter_1};
  assign _zz_logic_cmdLogic_context_transfers = ({1'b0,logic_cmdLogic_length} + _zz_logic_cmdLogic_context_transfers_1);
  assign _zz_logic_cmdLogic_context_transfers_2 = logic_cmdLogic_address[1 : 0];
  assign _zz_logic_cmdLogic_context_transfers_1 = {9'd0, _zz_logic_cmdLogic_context_transfers_2};
  assign _zz_logic_rspLogic_forRead_beatCounter_1 = (! logic_rspLogic_context_write);
  assign _zz_logic_rspLogic_forRead_beatCounter = {1'd0, _zz_logic_rspLogic_forRead_beatCounter_1};
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_output_cmd_payload_fragment_address = ({4'd0,io_input_cmd_payload_fragment_address[28 : 4]} <<< 3'd4);
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_length = (_zz_io_output_cmd_payload_fragment_length | 11'h00f);
  always @(*) begin
    io_output_cmd_payload_last = 1'b0;
    if(when_BmbSpliter_l95) begin
      io_output_cmd_payload_last = 1'b1;
    end
    if(when_BmbSpliter_l118) begin
      io_output_cmd_payload_last = 1'b1;
    end
  end

  assign logic_cmdLogic_paddings = io_input_cmd_payload_fragment_address[3 : 2];
  assign logic_cmdLogic_context_input = io_input_cmd_payload_fragment_context;
  assign logic_cmdLogic_context_write = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign io_output_cmd_payload_fragment_context = {logic_cmdLogic_context_input,{logic_cmdLogic_context_transfers,{logic_cmdLogic_context_paddings,logic_cmdLogic_context_write}}};
  always @(*) begin
    logic_cmdLogic_inputReadyOk = 1'b0;
    if(when_BmbSpliter_l98) begin
      logic_cmdLogic_inputReadyOk = 1'b1;
    end
    if(when_BmbSpliter_l119) begin
      logic_cmdLogic_inputReadyOk = 1'b1;
    end
  end

  assign io_input_cmd_ready = (io_output_cmd_ready && logic_cmdLogic_inputReadyOk);
  assign io_output_cmd_fire = (io_output_cmd_valid && io_output_cmd_ready);
  assign io_input_cmd_fire = (io_input_cmd_valid && io_input_cmd_ready);
  assign logic_cmdLogic_forWrite_prePadding = (((io_input_cmd_payload_fragment_opcode == 1'b1) && io_input_cmd_payload_first) && (logic_cmdLogic_forWrite_beatCounter < logic_cmdLogic_paddings));
  assign when_BmbSpliter_l93 = (((! logic_cmdLogic_forWrite_prePadding) && io_output_cmd_fire) && io_input_cmd_payload_last);
  assign when_BmbSpliter_l95 = (io_input_cmd_payload_last && (logic_cmdLogic_forWrite_beatCounter == 2'b11));
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = ((! (logic_cmdLogic_forWrite_prePadding || logic_cmdLogic_forWrite_postPadding)) ? io_input_cmd_payload_fragment_mask : 4'b0000);
  assign when_BmbSpliter_l98 = ((! logic_cmdLogic_forWrite_prePadding) && (! (io_input_cmd_payload_last && (logic_cmdLogic_forWrite_beatCounter != 2'b11))));
  assign logic_cmdLogic_length = (io_input_cmd_fire ? io_input_cmd_payload_fragment_length : logic_cmdLogic_lengthReg);
  assign logic_cmdLogic_address = (io_input_cmd_fire ? io_input_cmd_payload_fragment_address : logic_cmdLogic_addressReg);
  assign when_BmbSpliter_l118 = (io_input_cmd_payload_fragment_opcode == 1'b0);
  assign when_BmbSpliter_l119 = (io_input_cmd_payload_fragment_opcode == 1'b0);
  assign logic_cmdLogic_context_paddings = logic_cmdLogic_paddings;
  assign logic_cmdLogic_context_transfers = _zz_logic_cmdLogic_context_transfers[10 : 2];
  assign _zz_logic_rspLogic_context_write = io_output_rsp_payload_fragment_context;
  assign logic_rspLogic_context_write = _zz_logic_rspLogic_context_write[0];
  assign logic_rspLogic_context_paddings = _zz_logic_rspLogic_context_write[2 : 1];
  assign logic_rspLogic_context_transfers = _zz_logic_rspLogic_context_write[11 : 3];
  assign logic_rspLogic_context_input = _zz_logic_rspLogic_context_write[15 : 12];
  always @(*) begin
    logic_rspLogic_drop = 1'b0;
    if(when_BmbSpliter_l153) begin
      logic_rspLogic_drop = 1'b1;
    end
  end

  always @(*) begin
    io_output_rsp_thrown_valid = io_output_rsp_valid;
    if(logic_rspLogic_drop) begin
      io_output_rsp_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    io_output_rsp_ready = io_output_rsp_thrown_ready;
    if(logic_rspLogic_drop) begin
      io_output_rsp_ready = 1'b1;
    end
  end

  assign io_output_rsp_thrown_payload_last = io_output_rsp_payload_last;
  assign io_output_rsp_thrown_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_thrown_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_thrown_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_input_rsp_valid = io_output_rsp_thrown_valid;
  assign io_output_rsp_thrown_ready = io_input_rsp_ready;
  always @(*) begin
    io_input_rsp_payload_last = 1'b0;
    if(logic_rspLogic_context_write) begin
      io_input_rsp_payload_last = 1'b0;
    end
    if(when_BmbSpliter_l157) begin
      io_input_rsp_payload_last = 1'b1;
    end
  end

  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_context = logic_rspLogic_context_input;
  assign io_output_rsp_fire = (io_output_rsp_valid && io_output_rsp_ready);
  assign io_input_rsp_fire = (io_input_rsp_valid && io_input_rsp_ready);
  assign when_BmbSpliter_l149 = (io_output_rsp_fire && io_output_rsp_payload_last);
  assign when_BmbSpliter_l153 = ((! logic_rspLogic_context_write) && ((io_input_rsp_payload_first && (logic_rspLogic_forRead_beatCounter[1 : 0] < logic_rspLogic_context_paddings)) || (logic_rspLogic_context_transfers < logic_rspLogic_forRead_transferCounter)));
  assign when_BmbSpliter_l157 = (logic_rspLogic_forRead_transferCounter == logic_rspLogic_context_transfers);
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      logic_cmdLogic_forWrite_beatCounter <= 2'b00;
      io_input_cmd_payload_first <= 1'b1;
      logic_cmdLogic_forWrite_postPadding <= 1'b0;
      logic_cmdLogic_lengthReg <= 10'h3ff;
      logic_cmdLogic_addressReg <= 29'h0;
      logic_rspLogic_forRead_beatCounter <= 2'b00;
      logic_rspLogic_forRead_transferCounter <= 9'h0;
      io_input_rsp_payload_first <= 1'b1;
    end else begin
      logic_cmdLogic_forWrite_beatCounter <= (logic_cmdLogic_forWrite_beatCounter + _zz_logic_cmdLogic_forWrite_beatCounter);
      if(io_input_cmd_fire) begin
        io_input_cmd_payload_first <= io_input_cmd_payload_last;
      end
      if(when_BmbSpliter_l93) begin
        logic_cmdLogic_forWrite_postPadding <= 1'b1;
      end
      if(io_input_cmd_ready) begin
        logic_cmdLogic_forWrite_postPadding <= 1'b0;
      end
      if(io_input_cmd_fire) begin
        logic_cmdLogic_lengthReg <= io_input_cmd_payload_fragment_length;
      end
      if(io_input_cmd_fire) begin
        logic_cmdLogic_addressReg <= io_input_cmd_payload_fragment_address;
      end
      if(io_output_rsp_fire) begin
        logic_rspLogic_forRead_beatCounter <= (logic_rspLogic_forRead_beatCounter + _zz_logic_rspLogic_forRead_beatCounter);
      end
      if(io_input_rsp_fire) begin
        logic_rspLogic_forRead_transferCounter <= (logic_rspLogic_forRead_transferCounter + 9'h001);
      end
      if(when_BmbSpliter_l149) begin
        logic_rspLogic_forRead_transferCounter <= 9'h0;
      end
      if(io_input_rsp_fire) begin
        io_input_rsp_payload_first <= io_input_rsp_payload_last;
      end
    end
  end


endmodule

module StreamFifo_5 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_last,
  input  wire [17:0]   io_push_payload_fragment_context,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_last,
  output wire [17:0]   io_pop_payload_fragment_context,
  input  wire          io_flush,
  output wire [2:0]    io_occupancy,
  output wire [2:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [18:0]   logic_ram_spinal_port1;
  wire       [18:0]   _zz_logic_ram_port;
  wire       [17:0]   _zz_logic_pop_async_readed_fragment_context;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [2:0]    logic_ptr_push;
  reg        [2:0]    logic_ptr_pop;
  wire       [2:0]    logic_ptr_occupancy;
  wire       [2:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [1:0]    logic_push_onRam_write_payload_address;
  wire                logic_push_onRam_write_payload_data_last;
  wire       [17:0]   logic_push_onRam_write_payload_data_fragment_context;
  wire                logic_pop_addressGen_valid;
  wire                logic_pop_addressGen_ready;
  wire       [1:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_async_readed_last;
  wire       [17:0]   logic_pop_async_readed_fragment_context;
  wire       [18:0]   _zz_logic_pop_async_readed_last;
  wire                logic_pop_addressGen_translated_valid;
  wire                logic_pop_addressGen_translated_ready;
  wire                logic_pop_addressGen_translated_payload_last;
  wire       [17:0]   logic_pop_addressGen_translated_payload_fragment_context;
  (* ram_style = "distributed" *) reg [18:0] logic_ram [0:3];

  assign _zz_logic_pop_async_readed_fragment_context = _zz_logic_pop_async_readed_last[18 : 1];
  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_fragment_context,logic_push_onRam_write_payload_data_last};
  always @(posedge clk_out4) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  assign logic_ram_spinal_port1 = logic_ram[logic_pop_addressGen_payload];
  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 3'b100) == 3'b000);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[1:0];
  assign logic_push_onRam_write_payload_data_last = io_push_payload_last;
  assign logic_push_onRam_write_payload_data_fragment_context = io_push_payload_fragment_context;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[1:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  assign _zz_logic_pop_async_readed_last = logic_ram_spinal_port1;
  assign logic_pop_async_readed_last = _zz_logic_pop_async_readed_last[0];
  assign logic_pop_async_readed_fragment_context = _zz_logic_pop_async_readed_fragment_context[17 : 0];
  assign logic_pop_addressGen_translated_valid = logic_pop_addressGen_valid;
  assign logic_pop_addressGen_ready = logic_pop_addressGen_translated_ready;
  assign logic_pop_addressGen_translated_payload_last = logic_pop_async_readed_last;
  assign logic_pop_addressGen_translated_payload_fragment_context = logic_pop_async_readed_fragment_context;
  assign io_pop_valid = logic_pop_addressGen_translated_valid;
  assign logic_pop_addressGen_translated_ready = io_pop_ready;
  assign io_pop_payload_last = logic_pop_addressGen_translated_payload_last;
  assign io_pop_payload_fragment_context = logic_pop_addressGen_translated_payload_fragment_context;
  assign logic_ptr_popOnIo = logic_ptr_pop;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (3'b100 - logic_ptr_occupancy);
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      logic_ptr_push <= 3'b000;
      logic_ptr_pop <= 3'b000;
      logic_ptr_wentUp <= 1'b0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 3'b001);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 3'b001);
      end
      if(io_flush) begin
        logic_ptr_push <= 3'b000;
        logic_ptr_pop <= 3'b000;
      end
    end
  end


endmodule

module StreamFifo_4 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [31:0]   io_push_payload_data,
  input  wire [3:0]    io_push_payload_mask,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [31:0]   io_pop_payload_data,
  output wire [3:0]    io_pop_payload_mask,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [35:0]   logic_ram_spinal_port1;
  wire       [35:0]   _zz_logic_ram_port;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [6:0]    logic_ptr_push;
  reg        [6:0]    logic_ptr_pop;
  wire       [6:0]    logic_ptr_occupancy;
  wire       [6:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [5:0]    logic_push_onRam_write_payload_address;
  wire       [31:0]   logic_push_onRam_write_payload_data_data;
  wire       [3:0]    logic_push_onRam_write_payload_data_mask;
  wire                logic_pop_addressGen_valid;
  wire                logic_pop_addressGen_ready;
  wire       [5:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire       [31:0]   logic_pop_async_readed_data;
  wire       [3:0]    logic_pop_async_readed_mask;
  wire       [35:0]   _zz_logic_pop_async_readed_data;
  wire                logic_pop_addressGen_translated_valid;
  wire                logic_pop_addressGen_translated_ready;
  wire       [31:0]   logic_pop_addressGen_translated_payload_data;
  wire       [3:0]    logic_pop_addressGen_translated_payload_mask;
  (* ram_style = "distributed" *) reg [35:0] logic_ram [0:63];

  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_mask,logic_push_onRam_write_payload_data_data};
  always @(posedge clk_out4) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  assign logic_ram_spinal_port1 = logic_ram[logic_pop_addressGen_payload];
  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 7'h40) == 7'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[5:0];
  assign logic_push_onRam_write_payload_data_data = io_push_payload_data;
  assign logic_push_onRam_write_payload_data_mask = io_push_payload_mask;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[5:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  assign _zz_logic_pop_async_readed_data = logic_ram_spinal_port1;
  assign logic_pop_async_readed_data = _zz_logic_pop_async_readed_data[31 : 0];
  assign logic_pop_async_readed_mask = _zz_logic_pop_async_readed_data[35 : 32];
  assign logic_pop_addressGen_translated_valid = logic_pop_addressGen_valid;
  assign logic_pop_addressGen_ready = logic_pop_addressGen_translated_ready;
  assign logic_pop_addressGen_translated_payload_data = logic_pop_async_readed_data;
  assign logic_pop_addressGen_translated_payload_mask = logic_pop_async_readed_mask;
  assign io_pop_valid = logic_pop_addressGen_translated_valid;
  assign logic_pop_addressGen_translated_ready = io_pop_ready;
  assign io_pop_payload_data = logic_pop_addressGen_translated_payload_data;
  assign io_pop_payload_mask = logic_pop_addressGen_translated_payload_mask;
  assign logic_ptr_popOnIo = logic_ptr_pop;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (7'h40 - logic_ptr_occupancy);
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      logic_ptr_push <= 7'h0;
      logic_ptr_pop <= 7'h0;
      logic_ptr_wentUp <= 1'b0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 7'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 7'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 7'h0;
        logic_ptr_pop <= 7'h0;
      end
    end
  end


endmodule

module StreamFifo_3 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_last,
  input  wire [31:0]   io_push_payload_fragment_data,
  input  wire [17:0]   io_push_payload_fragment_context,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_last,
  output wire [31:0]   io_pop_payload_fragment_data,
  output wire [17:0]   io_pop_payload_fragment_context,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [50:0]   logic_ram_spinal_port1;
  wire       [50:0]   _zz_logic_ram_port;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [6:0]    logic_ptr_push;
  reg        [6:0]    logic_ptr_pop;
  wire       [6:0]    logic_ptr_occupancy;
  wire       [6:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [5:0]    logic_push_onRam_write_payload_address;
  wire                logic_push_onRam_write_payload_data_last;
  wire       [31:0]   logic_push_onRam_write_payload_data_fragment_data;
  wire       [17:0]   logic_push_onRam_write_payload_data_fragment_context;
  wire                logic_pop_addressGen_valid;
  wire                logic_pop_addressGen_ready;
  wire       [5:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_async_readed_last;
  wire       [31:0]   logic_pop_async_readed_fragment_data;
  wire       [17:0]   logic_pop_async_readed_fragment_context;
  wire       [50:0]   _zz_logic_pop_async_readed_last;
  wire       [49:0]   _zz_logic_pop_async_readed_fragment_data;
  wire                logic_pop_addressGen_translated_valid;
  wire                logic_pop_addressGen_translated_ready;
  wire                logic_pop_addressGen_translated_payload_last;
  wire       [31:0]   logic_pop_addressGen_translated_payload_fragment_data;
  wire       [17:0]   logic_pop_addressGen_translated_payload_fragment_context;
  (* ram_style = "distributed" *) reg [50:0] logic_ram [0:63];

  assign _zz_logic_ram_port = {{logic_push_onRam_write_payload_data_fragment_context,logic_push_onRam_write_payload_data_fragment_data},logic_push_onRam_write_payload_data_last};
  always @(posedge clk_out4) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  assign logic_ram_spinal_port1 = logic_ram[logic_pop_addressGen_payload];
  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 7'h40) == 7'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[5:0];
  assign logic_push_onRam_write_payload_data_last = io_push_payload_last;
  assign logic_push_onRam_write_payload_data_fragment_data = io_push_payload_fragment_data;
  assign logic_push_onRam_write_payload_data_fragment_context = io_push_payload_fragment_context;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[5:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  assign _zz_logic_pop_async_readed_last = logic_ram_spinal_port1;
  assign logic_pop_async_readed_last = _zz_logic_pop_async_readed_last[0];
  assign _zz_logic_pop_async_readed_fragment_data = _zz_logic_pop_async_readed_last[50 : 1];
  assign logic_pop_async_readed_fragment_data = _zz_logic_pop_async_readed_fragment_data[31 : 0];
  assign logic_pop_async_readed_fragment_context = _zz_logic_pop_async_readed_fragment_data[49 : 32];
  assign logic_pop_addressGen_translated_valid = logic_pop_addressGen_valid;
  assign logic_pop_addressGen_ready = logic_pop_addressGen_translated_ready;
  assign logic_pop_addressGen_translated_payload_last = logic_pop_async_readed_last;
  assign logic_pop_addressGen_translated_payload_fragment_data = logic_pop_async_readed_fragment_data;
  assign logic_pop_addressGen_translated_payload_fragment_context = logic_pop_async_readed_fragment_context;
  assign io_pop_valid = logic_pop_addressGen_translated_valid;
  assign logic_pop_addressGen_translated_ready = io_pop_ready;
  assign io_pop_payload_last = logic_pop_addressGen_translated_payload_last;
  assign io_pop_payload_fragment_data = logic_pop_addressGen_translated_payload_fragment_data;
  assign io_pop_payload_fragment_context = logic_pop_addressGen_translated_payload_fragment_context;
  assign logic_ptr_popOnIo = logic_ptr_pop;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (7'h40 - logic_ptr_occupancy);
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      logic_ptr_push <= 7'h0;
      logic_ptr_pop <= 7'h0;
      logic_ptr_wentUp <= 1'b0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 7'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 7'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 7'h0;
        logic_ptr_pop <= 7'h0;
      end
    end
  end


endmodule

module StreamFifo_2 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_write,
  input  wire [28:0]   io_push_payload_address,
  input  wire [17:0]   io_push_payload_context,
  input  wire          io_push_payload_burstLast,
  input  wire [1:0]    io_push_payload_length,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_write,
  output wire [28:0]   io_pop_payload_address,
  output wire [17:0]   io_pop_payload_context,
  output wire          io_pop_payload_burstLast,
  output wire [1:0]    io_pop_payload_length,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          clk_out4,
  input  wire          rstN
);

  wire       [50:0]   logic_ram_spinal_port1;
  wire       [50:0]   _zz_logic_ram_port;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [6:0]    logic_ptr_push;
  reg        [6:0]    logic_ptr_pop;
  wire       [6:0]    logic_ptr_occupancy;
  wire       [6:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [5:0]    logic_push_onRam_write_payload_address;
  wire                logic_push_onRam_write_payload_data_write;
  wire       [28:0]   logic_push_onRam_write_payload_data_address;
  wire       [17:0]   logic_push_onRam_write_payload_data_context;
  wire                logic_push_onRam_write_payload_data_burstLast;
  wire       [1:0]    logic_push_onRam_write_payload_data_length;
  wire                logic_pop_addressGen_valid;
  wire                logic_pop_addressGen_ready;
  wire       [5:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_async_readed_write;
  wire       [28:0]   logic_pop_async_readed_address;
  wire       [17:0]   logic_pop_async_readed_context;
  wire                logic_pop_async_readed_burstLast;
  wire       [1:0]    logic_pop_async_readed_length;
  wire       [50:0]   _zz_logic_pop_async_readed_write;
  wire                logic_pop_addressGen_translated_valid;
  wire                logic_pop_addressGen_translated_ready;
  wire                logic_pop_addressGen_translated_payload_write;
  wire       [28:0]   logic_pop_addressGen_translated_payload_address;
  wire       [17:0]   logic_pop_addressGen_translated_payload_context;
  wire                logic_pop_addressGen_translated_payload_burstLast;
  wire       [1:0]    logic_pop_addressGen_translated_payload_length;
  (* ram_style = "distributed" *) reg [50:0] logic_ram [0:63];

  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_length,{logic_push_onRam_write_payload_data_burstLast,{logic_push_onRam_write_payload_data_context,{logic_push_onRam_write_payload_data_address,logic_push_onRam_write_payload_data_write}}}};
  always @(posedge clk_out4) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  assign logic_ram_spinal_port1 = logic_ram[logic_pop_addressGen_payload];
  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 7'h40) == 7'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[5:0];
  assign logic_push_onRam_write_payload_data_write = io_push_payload_write;
  assign logic_push_onRam_write_payload_data_address = io_push_payload_address;
  assign logic_push_onRam_write_payload_data_context = io_push_payload_context;
  assign logic_push_onRam_write_payload_data_burstLast = io_push_payload_burstLast;
  assign logic_push_onRam_write_payload_data_length = io_push_payload_length;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[5:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  assign _zz_logic_pop_async_readed_write = logic_ram_spinal_port1;
  assign logic_pop_async_readed_write = _zz_logic_pop_async_readed_write[0];
  assign logic_pop_async_readed_address = _zz_logic_pop_async_readed_write[29 : 1];
  assign logic_pop_async_readed_context = _zz_logic_pop_async_readed_write[47 : 30];
  assign logic_pop_async_readed_burstLast = _zz_logic_pop_async_readed_write[48];
  assign logic_pop_async_readed_length = _zz_logic_pop_async_readed_write[50 : 49];
  assign logic_pop_addressGen_translated_valid = logic_pop_addressGen_valid;
  assign logic_pop_addressGen_ready = logic_pop_addressGen_translated_ready;
  assign logic_pop_addressGen_translated_payload_write = logic_pop_async_readed_write;
  assign logic_pop_addressGen_translated_payload_address = logic_pop_async_readed_address;
  assign logic_pop_addressGen_translated_payload_context = logic_pop_async_readed_context;
  assign logic_pop_addressGen_translated_payload_burstLast = logic_pop_async_readed_burstLast;
  assign logic_pop_addressGen_translated_payload_length = logic_pop_async_readed_length;
  assign io_pop_valid = logic_pop_addressGen_translated_valid;
  assign logic_pop_addressGen_translated_ready = io_pop_ready;
  assign io_pop_payload_write = logic_pop_addressGen_translated_payload_write;
  assign io_pop_payload_address = logic_pop_addressGen_translated_payload_address;
  assign io_pop_payload_context = logic_pop_addressGen_translated_payload_context;
  assign io_pop_payload_burstLast = logic_pop_addressGen_translated_payload_burstLast;
  assign io_pop_payload_length = logic_pop_addressGen_translated_payload_length;
  assign logic_ptr_popOnIo = logic_ptr_pop;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (7'h40 - logic_ptr_occupancy);
  always @(posedge clk_out4 or negedge rstN) begin
    if(!rstN) begin
      logic_ptr_push <= 7'h0;
      logic_ptr_pop <= 7'h0;
      logic_ptr_wentUp <= 1'b0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 7'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 7'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 7'h0;
        logic_ptr_pop <= 7'h0;
      end
    end
  end


endmodule
