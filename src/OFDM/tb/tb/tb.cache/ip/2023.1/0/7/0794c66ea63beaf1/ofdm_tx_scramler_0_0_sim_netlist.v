// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Nov  2 20:52:14 2024
// Host        : LAPTOP-Q21U1JRJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ofdm_tx_scramler_0_0_sim_netlist.v
// Design      : ofdm_tx_scramler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ofdm_tx_scramler_0_0,scramler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "scramler,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
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
    scram_dout_rate_con);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_scram:m_axis_scram, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [6:0]scram_seed;
  input scram_load;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TDATA" *) input scram_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TVALID" *) input scram_din_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TREADY" *) input scram_din_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TSTRB" *) input scram_din_sig_flag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TID" *) input [3:0]scram_din_rate_con;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TDATA" *) output scram_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TVALID" *) output scram_dout_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_scram, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output scram_dout_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TSTRB" *) output scram_dout_sig_flag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_scram, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 4, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN ofdm_tx_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [3:0]scram_dout_rate_con;

  wire clk;
  wire rst_n;
  wire scram_din;
  wire [3:0]scram_din_rate_con;
  wire scram_din_rdy;
  wire scram_din_sig_flag;
  wire scram_din_vld;
  wire scram_dout;
  wire [3:0]scram_dout_rate_con;
  wire scram_dout_sig_flag;
  wire scram_dout_vld;
  wire scram_load;
  wire [6:0]scram_seed;

  assign scram_dout_rdy = scram_din_rdy;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scramler inst
       (.clk(clk),
        .rst_n(rst_n),
        .scram_din(scram_din),
        .scram_din_rate_con(scram_din_rate_con),
        .scram_din_rdy(scram_din_rdy),
        .scram_din_sig_flag(scram_din_sig_flag),
        .scram_din_vld(scram_din_vld),
        .scram_dout(scram_dout),
        .scram_dout_rate_con(scram_dout_rate_con),
        .scram_dout_sig_flag(scram_dout_sig_flag),
        .scram_dout_vld(scram_dout_vld),
        .scram_load(scram_load),
        .scram_seed(scram_seed));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scramler
   (scram_dout,
    scram_dout_sig_flag,
    scram_dout_rate_con,
    scram_dout_vld,
    scram_din_vld,
    scram_din_rdy,
    scram_load,
    clk,
    scram_din_sig_flag,
    scram_din_rate_con,
    scram_seed,
    scram_din,
    rst_n);
  output scram_dout;
  output scram_dout_sig_flag;
  output [3:0]scram_dout_rate_con;
  output scram_dout_vld;
  input scram_din_vld;
  input scram_din_rdy;
  input scram_load;
  input clk;
  input scram_din_sig_flag;
  input [3:0]scram_din_rate_con;
  input [6:0]scram_seed;
  input scram_din;
  input rst_n;

  wire clk;
  wire p_0_in;
  wire p_1_in;
  wire rst_n;
  wire scram_din;
  wire [3:0]scram_din_rate_con;
  wire scram_din_rdy;
  wire scram_din_sig_flag;
  wire scram_din_vld;
  wire scram_dout;
  wire scram_dout0_in;
  wire scram_dout_i_1_n_0;
  wire scram_dout_i_2_n_0;
  wire [3:0]scram_dout_rate_con;
  wire scram_dout_sig_flag;
  wire scram_dout_vld;
  wire scram_dout_vld_i_1_n_0;
  wire scram_load;
  wire [6:0]scram_seed;
  wire \shift_reg[0]_i_1_n_0 ;
  wire \shift_reg[1]_i_1_n_0 ;
  wire \shift_reg[2]_i_1_n_0 ;
  wire \shift_reg[3]_i_1_n_0 ;
  wire \shift_reg[4]_i_1_n_0 ;
  wire \shift_reg[5]_i_1_n_0 ;
  wire \shift_reg[6]_i_1_n_0 ;
  wire \shift_reg[6]_i_2_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;

  LUT4 #(
    .INIT(16'hF906)) 
    scram_dout0
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(scram_din_sig_flag),
        .I3(scram_din),
        .O(scram_dout0_in));
  LUT3 #(
    .INIT(8'h08)) 
    scram_dout_i_1
       (.I0(scram_din_vld),
        .I1(scram_din_rdy),
        .I2(scram_load),
        .O(scram_dout_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    scram_dout_i_2
       (.I0(rst_n),
        .O(scram_dout_i_2_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TID" *) 
  FDPE \scram_dout_rate_con_reg[0] 
       (.C(clk),
        .CE(scram_dout_i_1_n_0),
        .D(scram_din_rate_con[0]),
        .PRE(scram_dout_i_2_n_0),
        .Q(scram_dout_rate_con[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TID" *) 
  FDPE \scram_dout_rate_con_reg[1] 
       (.C(clk),
        .CE(scram_dout_i_1_n_0),
        .D(scram_din_rate_con[1]),
        .PRE(scram_dout_i_2_n_0),
        .Q(scram_dout_rate_con[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TID" *) 
  FDCE \scram_dout_rate_con_reg[2] 
       (.C(clk),
        .CE(scram_dout_i_1_n_0),
        .CLR(scram_dout_i_2_n_0),
        .D(scram_din_rate_con[2]),
        .Q(scram_dout_rate_con[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TID" *) 
  FDPE \scram_dout_rate_con_reg[3] 
       (.C(clk),
        .CE(scram_dout_i_1_n_0),
        .D(scram_din_rate_con[3]),
        .PRE(scram_dout_i_2_n_0),
        .Q(scram_dout_rate_con[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TDATA" *) 
  FDCE scram_dout_reg
       (.C(clk),
        .CE(scram_dout_i_1_n_0),
        .CLR(scram_dout_i_2_n_0),
        .D(scram_dout0_in),
        .Q(scram_dout));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TSTRB" *) 
  FDCE scram_dout_sig_flag_reg
       (.C(clk),
        .CE(scram_dout_i_1_n_0),
        .CLR(scram_dout_i_2_n_0),
        .D(scram_din_sig_flag),
        .Q(scram_dout_sig_flag));
  LUT4 #(
    .INIT(16'h5404)) 
    scram_dout_vld_i_1
       (.I0(scram_load),
        .I1(scram_dout_vld),
        .I2(scram_din_rdy),
        .I3(scram_din_vld),
        .O(scram_dout_vld_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TVALID" *) 
  FDCE scram_dout_vld_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(scram_dout_i_2_n_0),
        .D(scram_dout_vld_i_1_n_0),
        .Q(scram_dout_vld));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \shift_reg[0]_i_1 
       (.I0(scram_seed[0]),
        .I1(scram_load),
        .I2(p_1_in),
        .I3(p_0_in),
        .O(\shift_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[1]_i_1 
       (.I0(scram_seed[1]),
        .I1(scram_load),
        .I2(\shift_reg_reg_n_0_[0] ),
        .O(\shift_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[2]_i_1 
       (.I0(scram_seed[2]),
        .I1(scram_load),
        .I2(\shift_reg_reg_n_0_[1] ),
        .O(\shift_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[3]_i_1 
       (.I0(scram_seed[3]),
        .I1(scram_load),
        .I2(\shift_reg_reg_n_0_[2] ),
        .O(\shift_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[4]_i_1 
       (.I0(scram_seed[4]),
        .I1(scram_load),
        .I2(p_0_in),
        .O(\shift_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[5]_i_1 
       (.I0(scram_seed[5]),
        .I1(scram_load),
        .I2(\shift_reg_reg_n_0_[4] ),
        .O(\shift_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \shift_reg[6]_i_1 
       (.I0(scram_load),
        .I1(scram_din_sig_flag),
        .I2(scram_din_rdy),
        .I3(scram_din_vld),
        .O(\shift_reg[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[6]_i_2 
       (.I0(scram_seed[6]),
        .I1(scram_load),
        .I2(\shift_reg_reg_n_0_[5] ),
        .O(\shift_reg[6]_i_2_n_0 ));
  FDPE \shift_reg_reg[0] 
       (.C(clk),
        .CE(\shift_reg[6]_i_1_n_0 ),
        .D(\shift_reg[0]_i_1_n_0 ),
        .PRE(scram_dout_i_2_n_0),
        .Q(\shift_reg_reg_n_0_[0] ));
  FDCE \shift_reg_reg[1] 
       (.C(clk),
        .CE(\shift_reg[6]_i_1_n_0 ),
        .CLR(scram_dout_i_2_n_0),
        .D(\shift_reg[1]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[1] ));
  FDPE \shift_reg_reg[2] 
       (.C(clk),
        .CE(\shift_reg[6]_i_1_n_0 ),
        .D(\shift_reg[2]_i_1_n_0 ),
        .PRE(scram_dout_i_2_n_0),
        .Q(\shift_reg_reg_n_0_[2] ));
  FDPE \shift_reg_reg[3] 
       (.C(clk),
        .CE(\shift_reg[6]_i_1_n_0 ),
        .D(\shift_reg[3]_i_1_n_0 ),
        .PRE(scram_dout_i_2_n_0),
        .Q(p_0_in));
  FDPE \shift_reg_reg[4] 
       (.C(clk),
        .CE(\shift_reg[6]_i_1_n_0 ),
        .D(\shift_reg[4]_i_1_n_0 ),
        .PRE(scram_dout_i_2_n_0),
        .Q(\shift_reg_reg_n_0_[4] ));
  FDCE \shift_reg_reg[5] 
       (.C(clk),
        .CE(\shift_reg[6]_i_1_n_0 ),
        .CLR(scram_dout_i_2_n_0),
        .D(\shift_reg[5]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[5] ));
  FDPE \shift_reg_reg[6] 
       (.C(clk),
        .CE(\shift_reg[6]_i_1_n_0 ),
        .D(\shift_reg[6]_i_2_n_0 ),
        .PRE(scram_dout_i_2_n_0),
        .Q(p_1_in));
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
