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


// IP VLNV: xilinx.com:module_ref:dac:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ofdm_tx_dac_0_0 (
  clk,
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
  dac_dout_Index
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_ifft_dac:s_axis_train_dac:m_axis_dac, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire clk_dac;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TDATA" *)
input wire [15 : 0] dac_ifft_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TVALID" *)
input wire dac_ifft_din_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TLAST" *)
input wire dac_ifft_din_last;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TUSER" *)
input wire [7 : 0] dac_ifft_din_Index;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ifft_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TREADY" *)
output wire dac_ifft_dout_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TDATA" *)
input wire [15 : 0] dac_train_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TVALID" *)
input wire dac_train_din_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TLAST" *)
input wire dac_train_din_last;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TUSER" *)
input wire [8 : 0] dac_train_din_Index;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_train_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 9, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TREADY" *)
output wire dac_train_dout_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TREADY" *)
input wire dac_din_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TDATA" *)
output wire [15 : 0] dac_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TVALID" *)
output wire dac_dout_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TLAST" *)
output wire dac_dout_last;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dac, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 9, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TUSER" *)
output wire [8 : 0] dac_dout_Index;

  dac inst (
    .clk(clk),
    .clk_dac(clk_dac),
    .rst_n(rst_n),
    .dac_ifft_din(dac_ifft_din),
    .dac_ifft_din_vld(dac_ifft_din_vld),
    .dac_ifft_din_last(dac_ifft_din_last),
    .dac_ifft_din_Index(dac_ifft_din_Index),
    .dac_ifft_dout_rdy(dac_ifft_dout_rdy),
    .dac_train_din(dac_train_din),
    .dac_train_din_vld(dac_train_din_vld),
    .dac_train_din_last(dac_train_din_last),
    .dac_train_din_Index(dac_train_din_Index),
    .dac_train_dout_rdy(dac_train_dout_rdy),
    .dac_din_rdy(dac_din_rdy),
    .dac_dout(dac_dout),
    .dac_dout_vld(dac_dout_vld),
    .dac_dout_last(dac_dout_last),
    .dac_dout_Index(dac_dout_Index)
  );
endmodule