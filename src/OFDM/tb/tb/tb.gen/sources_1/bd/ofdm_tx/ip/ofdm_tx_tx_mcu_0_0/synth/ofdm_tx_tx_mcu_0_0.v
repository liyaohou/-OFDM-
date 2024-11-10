// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:tx_mcu:1.0
// IP Revision: 1

(* X_CORE_INFO = "tx_mcu,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "ofdm_tx_tx_mcu_0_0,tx_mcu,{}" *)
(* CORE_GENERATION_INFO = "ofdm_tx_tx_mcu_0_0,tx_mcu,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=tx_mcu,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SEED=1011101}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ofdm_tx_tx_mcu_0_0 (
  clk,
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
  TxPWR
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_mcu_config:s_axis_mcu_mac:m_axis_mcu, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TDATA" *)
input wire [20 : 0] mcu_config_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TVALID" *)
input wire mcu_config_din_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TSTRB" *)
input wire mcu_config_din_start;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_mcu_config, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TREADY" *)
output wire mcu_config_dout_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TDATA" *)
input wire [7 : 0] mcu_mac_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TVALID" *)
input wire mcu_mac_din_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_mcu_mac, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TREADY" *)
output wire mcu_mac_dout_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TREADY" *)
input wire mcu_din_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TDATA" *)
output wire mcu_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TVALID" *)
output wire mcu_dout_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TSTRB" *)
output wire mcu_dout_sig_flag;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_mcu, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TID" *)
output wire [3 : 0] mcu_dout_rate_con;
output wire [6 : 0] mcu_dout_scram_seed;
output wire mcu_dout_scram_load;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 phy_rst_n RST" *)
output wire phy_rst_n;
input wire tx_end;
output wire [2 : 0] TxPWR;

  tx_mcu #(
    .SEED(7'B1011101)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .mcu_config_din(mcu_config_din),
    .mcu_config_din_vld(mcu_config_din_vld),
    .mcu_config_din_start(mcu_config_din_start),
    .mcu_config_dout_rdy(mcu_config_dout_rdy),
    .mcu_mac_din(mcu_mac_din),
    .mcu_mac_din_vld(mcu_mac_din_vld),
    .mcu_mac_dout_rdy(mcu_mac_dout_rdy),
    .mcu_din_rdy(mcu_din_rdy),
    .mcu_dout(mcu_dout),
    .mcu_dout_vld(mcu_dout_vld),
    .mcu_dout_sig_flag(mcu_dout_sig_flag),
    .mcu_dout_rate_con(mcu_dout_rate_con),
    .mcu_dout_scram_seed(mcu_dout_scram_seed),
    .mcu_dout_scram_load(mcu_dout_scram_load),
    .phy_rst_n(phy_rst_n),
    .tx_end(tx_end),
    .TxPWR(TxPWR)
  );
endmodule
