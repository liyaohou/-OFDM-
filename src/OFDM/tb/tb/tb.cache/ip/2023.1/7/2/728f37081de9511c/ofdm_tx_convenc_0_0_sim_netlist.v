// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:14 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_convenc_0_0_sim_netlist.v
// Design      : ofdm_tx_convenc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convenc
   (conv_dout,
    conv_dout_sig_flag,
    conv_dout_rate_con,
    conv_dout_vld,
    clk,
    conv_din,
    conv_din_sig_flag,
    conv_din_rate_con,
    rst_n,
    conv_din_vld,
    conv_din_rdy);
  output [1:0]conv_dout;
  output conv_dout_sig_flag;
  output [3:0]conv_dout_rate_con;
  output conv_dout_vld;
  input clk;
  input conv_din;
  input conv_din_sig_flag;
  input [3:0]conv_din_rate_con;
  input rst_n;
  input conv_din_vld;
  input conv_din_rdy;

  wire clk;
  wire conv_din;
  wire [3:0]conv_din_rate_con;
  wire conv_din_rdy;
  wire conv_din_sig_flag;
  wire conv_din_vld;
  wire [1:0]conv_dout;
  wire conv_dout02_out__0;
  wire conv_dout0__0;
  wire \conv_dout[1]_i_2_n_0 ;
  wire [3:0]conv_dout_rate_con;
  wire conv_dout_sig_flag;
  wire conv_dout_vld;
  wire conv_dout_vld_i_1_n_0;
  wire conv_en;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_1_in;
  wire rst_n;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[3] ;

  LUT5 #(
    .INIT(32'h96696996)) 
    conv_dout0
       (.I0(p_0_in1_in),
        .I1(conv_din),
        .I2(p_1_in),
        .I3(p_0_in),
        .I4(p_0_in0_in),
        .O(conv_dout0__0));
  LUT5 #(
    .INIT(32'h96696996)) 
    conv_dout02_out
       (.I0(p_0_in1_in),
        .I1(conv_din),
        .I2(p_1_in),
        .I3(\shift_reg_reg_n_0_[0] ),
        .I4(p_0_in0_in),
        .O(conv_dout02_out__0));
  LUT2 #(
    .INIT(4'h8)) 
    \conv_dout[1]_i_1 
       (.I0(conv_din_rdy),
        .I1(conv_din_vld),
        .O(conv_en));
  LUT1 #(
    .INIT(2'h1)) 
    \conv_dout[1]_i_2 
       (.I0(rst_n),
        .O(\conv_dout[1]_i_2_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TID" *) 
  FDPE \conv_dout_rate_con_reg[0] 
       (.C(clk),
        .CE(conv_en),
        .D(conv_din_rate_con[0]),
        .PRE(\conv_dout[1]_i_2_n_0 ),
        .Q(conv_dout_rate_con[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TID" *) 
  FDPE \conv_dout_rate_con_reg[1] 
       (.C(clk),
        .CE(conv_en),
        .D(conv_din_rate_con[1]),
        .PRE(\conv_dout[1]_i_2_n_0 ),
        .Q(conv_dout_rate_con[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TID" *) 
  FDCE \conv_dout_rate_con_reg[2] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(conv_din_rate_con[2]),
        .Q(conv_dout_rate_con[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TID" *) 
  FDPE \conv_dout_rate_con_reg[3] 
       (.C(clk),
        .CE(conv_en),
        .D(conv_din_rate_con[3]),
        .PRE(\conv_dout[1]_i_2_n_0 ),
        .Q(conv_dout_rate_con[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TDATA" *) 
  FDCE \conv_dout_reg[0] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(conv_dout0__0),
        .Q(conv_dout[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TDATA" *) 
  FDCE \conv_dout_reg[1] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(conv_dout02_out__0),
        .Q(conv_dout[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TSTRB" *) 
  FDCE conv_dout_sig_flag_reg
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(conv_din_sig_flag),
        .Q(conv_dout_sig_flag));
  LUT3 #(
    .INIT(8'hB8)) 
    conv_dout_vld_i_1
       (.I0(conv_din_vld),
        .I1(conv_din_rdy),
        .I2(conv_dout_vld),
        .O(conv_dout_vld_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TVALID" *) 
  FDCE conv_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(conv_dout_vld_i_1_n_0),
        .Q(conv_dout_vld));
  FDCE \shift_reg_reg[0] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(conv_din),
        .Q(\shift_reg_reg_n_0_[0] ));
  FDCE \shift_reg_reg[1] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(p_0_in1_in));
  FDCE \shift_reg_reg[2] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(p_0_in1_in),
        .Q(p_0_in0_in));
  FDCE \shift_reg_reg[3] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(p_0_in0_in),
        .Q(\shift_reg_reg_n_0_[3] ));
  FDCE \shift_reg_reg[4] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(p_0_in));
  FDCE \shift_reg_reg[5] 
       (.C(clk),
        .CE(conv_en),
        .CLR(\conv_dout[1]_i_2_n_0 ),
        .D(p_0_in),
        .Q(p_1_in));
endmodule

(* CHECK_LICENSE_TYPE = "ofdm_tx_convenc_0_0,convenc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "convenc,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    conv_din,
    conv_din_vld,
    conv_din_rdy,
    conv_din_sig_flag,
    conv_din_rate_con,
    conv_dout,
    conv_dout_vld,
    conv_dout_rdy,
    conv_dout_sig_flag,
    conv_dout_rate_con);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_conv:m_axis_conv, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TDATA" *) input conv_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TVALID" *) input conv_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TREADY" *) input conv_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TSTRB" *) input conv_din_sig_flag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TID" *) input [3:0]conv_din_rate_con;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TDATA" *) output [1:0]conv_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TVALID" *) output conv_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_conv, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output conv_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TSTRB" *) output conv_dout_sig_flag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_conv, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [3:0]conv_dout_rate_con;

  wire clk;
  wire conv_din;
  wire [3:0]conv_din_rate_con;
  wire conv_din_rdy;
  wire conv_din_sig_flag;
  wire conv_din_vld;
  wire [1:0]conv_dout;
  wire [3:0]conv_dout_rate_con;
  wire conv_dout_sig_flag;
  wire conv_dout_vld;
  wire rst_n;

  assign conv_dout_rdy = conv_din_rdy;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convenc inst
       (.clk(clk),
        .conv_din(conv_din),
        .conv_din_rate_con(conv_din_rate_con),
        .conv_din_rdy(conv_din_rdy),
        .conv_din_sig_flag(conv_din_sig_flag),
        .conv_din_vld(conv_din_vld),
        .conv_dout(conv_dout),
        .conv_dout_rate_con(conv_dout_rate_con),
        .conv_dout_sig_flag(conv_dout_sig_flag),
        .conv_dout_vld(conv_dout_vld),
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
