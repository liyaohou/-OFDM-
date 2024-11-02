`timescale 1ns / 1ps

//调整顺序，依照前导码，signal域，data域的顺序输出
module dac(
																				input				clk					,
																				input				clk_dac				,
																				input				rst_n       		,			
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TDATA" *)	input	[15:0]		dac_ifft_din   		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TVALID" *)	input				dac_ifft_din_vld	,	
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TLAST" *)	input				dac_ifft_din_last   ,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TUSER" *)	input	[7:0]		dac_ifft_din_Index	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TREADY" *)	output				dac_ifft_dout_rdy	,//等待ifft输入数据
	
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TDATA" *)	input	[15:0]		dac_train_din    	,//训练序列
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TVALID" *)input				dac_train_din_vld	,//训练序列有效信息
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TLAST" *)	input				dac_train_din_last 	,//训练序列最后一个
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TUSER" *)	input	[8:0]		dac_train_din_Index	,//训练序列输入索引
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TREADY" *)output				dac_train_dout_rdy	,//等待训练序列输入
  
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TREADY" *)  	input				dac_din_rdy			,//下游握手信号
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TDATA" *)		output	[15:0]		dac_dout    		,//输出16位数据，数据率时20Mbit
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TVALID" *)		output				dac_dout_vld		,//输出有效
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TLAST" *)		output				dac_dout_last  		,//最后一位数据
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TUSER" *)		output	[8:0]		dac_dout_Index  	 //输出索引

);

//fifo
wire 			s_axis_tvalid       ;
wire 			s_axis_tready       ;
wire 	[15:0] 	s_axis_tdata        ;
wire 			s_axis_tlast        ;
wire 	[8:0] 	s_axis_tuser        ;
wire 			m_axis_tvalid       ;
wire 			m_axis_tready       ;
wire 	[15:0] 	m_axis_tdata        ;
wire 			m_axis_tlast        ;
wire 	[8:0] 	m_axis_tuser        ;

wire			dac_train_din_last_edge_pluse;//最后一个数据刚到来
//检测训练序列输出完毕标志的上升沿
edge_detection #(.POSEDGE(1'b1))
u_edge_detection (
.clk			(clk							),	
.edge_din	    (dac_train_din_last				),
.edge_pluse     (dac_train_din_last_edge_pluse	)
);

//当发送完训练序列后，在训练序列最后一位刚到来时
//训练序列最后一个输出与signal域第一个输出相加（由于前面都进行了右移一位，此处只需相加），做加窗处理。
//还没输出完训练序列,则输出训练序列
assign	s_axis_tdata	= dac_train_din_last ? dac_train_din_last_edge_pluse ?	
							{dac_ifft_din[15:8] + dac_train_din[15:8],
							dac_ifft_din[7:0] + dac_train_din[7:0]}: 
							dac_ifft_din	: dac_train_din 	 	;

//dac_train_din_last为训练序列输出完毕标志，为低时，选择训练序列输出；为高时，选择ifft结果输出，来实现时域组帧							
assign	s_axis_tvalid	= dac_train_din_last ? 	dac_ifft_din_vld	: dac_train_din_vld		 ;
assign	s_axis_tlast	= dac_train_din_last ? 	dac_ifft_din_last	: dac_train_din_last 	 ;
assign	s_axis_tuser	= dac_train_din_last ? 	dac_ifft_din_Index	: dac_train_din_Index	 ;

assign	dac_ifft_dout_rdy  = dac_train_din_last ? s_axis_tready : 1'b0;
assign	dac_train_dout_rdy = dac_train_din_last ? 1'b0 : s_axis_tready;


fifo_generator_0 u_fifo (
  .m_aclk			    	(clk_dac		),  // input  wire m_aclk
  .s_aclk			     	(clk			),  // input  wire s_aclk
  .s_aresetn		  	(rst_n			),  // input  wire s_aresetn
  .s_axis_tvalid		(s_axis_tvalid	),  // input  wire s_axis_tvalid
  .s_axis_tready		(s_axis_tready	),  // output wire s_axis_tready
  .s_axis_tdata			(s_axis_tdata	),  // input  wire [15 : 0] s_axis_tdata
  .s_axis_tlast			(s_axis_tlast	),  // input  wire s_axis_tlast
  .s_axis_tuser			(s_axis_tuser	),  // input  wire [7 : 0] s_axis_tuser
  .m_axis_tvalid		(m_axis_tvalid	),  // output wire m_axis_tvalid
  .m_axis_tready		(m_axis_tready	),  // input  wire m_axis_tready
  .m_axis_tdata			(m_axis_tdata	),  // output wire [15 : 0] m_axis_tdata
  .m_axis_tlast			(m_axis_tlast	),  // output wire m_axis_tlast
  .m_axis_tuser			(m_axis_tuser	)   // output wire [7 : 0] m_axis_tuser
);

assign	m_axis_tready	 =	dac_din_rdy		;//
assign	dac_dout    	 =	m_axis_tdata	;//改变数据率
assign	dac_dout_vld	 =	m_axis_tvalid   ;
assign	dac_dout_last  	 =	m_axis_tlast    ;
assign	dac_dout_Index   =	m_axis_tuser    ;


endmodule
