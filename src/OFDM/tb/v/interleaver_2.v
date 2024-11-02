`timescale 1ns / 1ps
//-------------------二级交织-----------------------//

module interleaver_2(    
																				input               clk             		,  
																				input               rst_n          			,  
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TDATA" *)	    input               intv2_din       		,   
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TVALID" *)    input               intv2_din_vld  			,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TREADY" *)	input				intv2_din_rdy			,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TSTRB" *)		input				intv2_din_sig_flag		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TID" *)		input       [1:0]   intv2_din_Map_Type      ,//TYPE 48bit,96bit,192bit,288bit
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TDATA" *)	    output           	intv2_dout      		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TVALID" *)    output           	intv2_dout_vld			,    
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv2 TREADY" *)	output           	intv2_dout_rdy  		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv2 TID" *)		output reg  [1:0]   intv2_dout_Map_Type         
); 

wire			En_cnt		;
wire	[4:0]	cnt			;
wire			cnt_last	;

wire			S2P_din_vld	;
wire			S2P_din_rdy	;
wire	[1:0]	S2P_dout	;
wire			S2P_dout_vld;
wire			S2P_dout_rdy;

wire	[1:0]	u1_P2S_din		;
wire			u1_P2S_din_vld	;
wire			u1_P2S_din_rdy	;
wire			u1_P2S_dout		;
wire			u1_P2S_dout_vld	;
wire			u1_P2S_dout_rdy ; 

wire	[1:0]	u2_P2S_din		;
wire			u2_P2S_din_vld	;
wire			u2_P2S_din_rdy	;
wire			u2_P2S_dout		;
wire			u2_P2S_dout_vld	;
wire			u2_P2S_dout_rdy ;

assign	intv2_dout_rdy 	= S2P_dout_rdy;
assign	intv2_dout 		= cnt < 12 | intv2_din_sig_flag ? u1_P2S_dout : u2_P2S_dout;
assign	intv2_dout_vld  = cnt < 12 | intv2_din_sig_flag ? u1_P2S_dout_vld : u2_P2S_dout_vld;

assign	En_cnt = (u2_P2S_dout_vld & u2_P2S_din_rdy) | u1_P2S_dout_vld & u1_P2S_din_rdy;

counter #(.CNT_NUM('d24),
		.ADD(1'b1))
u_counter(
	.clk		(clk				),	
	.rst_n		(rst_n				),
	.En_cnt		(En_cnt				),      
	.cnt		(cnt				),	
	.cnt_last	(cnt_last			)
);

assign	S2P_din		 	= intv2_din    		;
assign	S2P_din_vld  	= intv2_din_vld		;
assign  S2P_din_rdy		= u1_P2S_dout_rdy &	u2_P2S_dout_rdy;

Ser2Par	#(	.WIDTH		(2),
			.LSB_FIRST	(1'b1))
u_Ser2Par(
	.clk		(clk			),
	.rst_n		(rst_n			),
	.din		(S2P_din		),
	.din_vld	(S2P_din_vld	),
	.din_rdy	(S2P_din_rdy	),
	.dout		(S2P_dout		),
	.dout_vld	(S2P_dout_vld	),
	.dout_rdy   (S2P_dout_rdy	)
);

assign u1_P2S_din		= S2P_dout			;
assign u1_P2S_din_vld 	= S2P_dout_vld		;
assign u1_P2S_din_rdy	= intv2_din_rdy		;

Par2Ser	#(	.WIDTH		(2),
			.LSB_FIRST	(1))
u1_Par2Ser(
	.clk		(clk			),
	.rst_n		(rst_n			),
	.din		(u1_P2S_din		),
	.din_vld	(u1_P2S_din_vld	),
	.din_rdy	(u1_P2S_din_rdy	),
	.dout		(u1_P2S_dout	),
	.dout_vld	(u1_P2S_dout_vld),
	.dout_rdy   (u1_P2S_dout_rdy)
);

assign u2_P2S_din		= S2P_dout			;
assign u2_P2S_din_vld 	= S2P_dout_vld		;
assign u2_P2S_din_rdy	= intv2_din_rdy		;
Par2Ser	#(	.WIDTH		(2),
			.LSB_FIRST	(0))
u2_Par2Ser(
	.clk		(clk			),
	.rst_n		(rst_n			),
	.din		(u2_P2S_din		),
	.din_vld	(u2_P2S_din_vld	),
	.din_rdy	(u2_P2S_din_rdy	),
	.dout		(u2_P2S_dout	),
	.dout_vld	(u2_P2S_dout_vld),
	.dout_rdy   (u2_P2S_dout_rdy)
);

//输出Map_Type，作为后面调制映射的输入，确定调制方式
always@(posedge clk or negedge rst_n ) begin
    if(!rst_n) begin 
        intv2_dout_Map_Type <= 2'b11;        
    end    
    else 
        intv2_dout_Map_Type <= intv2_din_Map_Type ; 
end 

endmodule
