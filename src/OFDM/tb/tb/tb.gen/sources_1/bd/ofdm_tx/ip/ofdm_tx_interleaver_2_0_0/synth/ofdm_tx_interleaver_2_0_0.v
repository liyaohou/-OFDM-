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


// IP VLNV: xilinx.com:module_ref:interleaver_2:1.0
// IP Revision: 1

(* X_CORE_INFO = "interleaver_2,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "ofdm_tx_interleaver_2_0_0,interleaver_2,{}" *)
(* CORE_GENERATION_INFO = "ofdm_tx_interleaver_2_0_0,interleaver_2,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=interleaver_2,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ofdm_tx_interleaver_2_0_0 (
  clk,
  rst_n,
  intv2_din,
  intv2_din_vld,
  intv2_din_rdy,
  intv2_din_sig_flag,
  intv2_din_Map_Type,
  intv2_dout,
  intv2_dout_vld,
  intv2_dout_rdy,
  intv2_dout_Map_Type
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_intv2:m_axis_intv2, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TDATA" *)
input wire intv2_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TVALID" *)
input wire intv2_din_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TREADY" *)
input wire intv2_din_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TSTRB" *)
input wire intv2_din_sig_flag;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TID" *)
input wire [1 : 0] intv2_din_Map_Type;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TDATA" *)
output wire intv2_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TVALID" *)
output wire intv2_dout_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_intv2, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TREADY" *)
output wire intv2_dout_rdy;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_intv2, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TID" *)
output wire [1 : 0] intv2_dout_Map_Type;

  interleaver_2 inst (
    .clk(clk),
    .rst_n(rst_n),
    .intv2_din(intv2_din),
    .intv2_din_vld(intv2_din_vld),
    .intv2_din_rdy(intv2_din_rdy),
    .intv2_din_sig_flag(intv2_din_sig_flag),
    .intv2_din_Map_Type(intv2_din_Map_Type),
    .intv2_dout(intv2_dout),
    .intv2_dout_vld(intv2_dout_vld),
    .intv2_dout_rdy(intv2_dout_rdy),
    .intv2_dout_Map_Type(intv2_dout_Map_Type)
  );
endmodule
