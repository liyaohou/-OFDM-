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


// IP VLNV: xilinx.com:module_ref:scramler:1.0
// IP Revision: 1

(* X_CORE_INFO = "scramler,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "ofdm_tx_scramler_0_0,scramler,{}" *)
(* CORE_GENERATION_INFO = "ofdm_tx_scramler_0_0,scramler,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=scramler,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ofdm_tx_scramler_0_0 (
  clk,
  rst_n,
  scram_seed,
  scram_load,
  scram_din,
  scram_din_vld,
  scram_din_rdy,
  scram_din_sig_flag,
  scram_din_rate_con,
  scram_dout,
  scram_dout_vld,
  scram_dout_rdy,
  scram_dout_sig_flag,
  scram_dout_rate_con
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_scram:m_axis_scram, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire [6 : 0] scram_seed;
input wire scram_load;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TDATA" *)
input wire scram_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TVALID" *)
input wire scram_din_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TREADY" *)
input wire scram_din_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TSTRB" *)
input wire scram_din_sig_flag;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TID" *)
input wire [3 : 0] scram_din_rate_con;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TDATA" *)
output wire scram_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TVALID" *)
output wire scram_dout_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_scram, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TREADY" *)
output wire scram_dout_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TSTRB" *)
output wire scram_dout_sig_flag;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_scram, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TID" *)
output wire [3 : 0] scram_dout_rate_con;

  scramler inst (
    .clk(clk),
    .rst_n(rst_n),
    .scram_seed(scram_seed),
    .scram_load(scram_load),
    .scram_din(scram_din),
    .scram_din_vld(scram_din_vld),
    .scram_din_rdy(scram_din_rdy),
    .scram_din_sig_flag(scram_din_sig_flag),
    .scram_din_rate_con(scram_din_rate_con),
    .scram_dout(scram_dout),
    .scram_dout_vld(scram_dout_vld),
    .scram_dout_rdy(scram_dout_rdy),
    .scram_dout_sig_flag(scram_dout_sig_flag),
    .scram_dout_rate_con(scram_dout_rate_con)
  );
endmodule
