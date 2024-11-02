`timescale 1ns / 1ps

module ifft(
																			input				clk				,
																			input				rst_n       	,			
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TDATA" *)	input	[15:0]		ifft_din   		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TVALID" *)	input				ifft_din_vld	,	
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TREADY" *)	input				ifft_din_rdy	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TLAST" *)	input				ifft_din_last   ,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TDATA" *)	output	[15:0]		ifft_dout    	,	
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TVALID" *)	output				ifft_dout_vld	,	
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft TREADY" *)	output				ifft_dout_rdy	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TLAST" *)	output				ifft_dout_last  ,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ifft TUSER" *)	output	[7:0]		ifft_dout_Index		
);

wire 	[15 : 0] 	s_axis_config_tdata		;
wire 				s_axis_config_tvalid    ;
wire 				s_axis_config_tready    ;

wire 	[31 : 0] 	s_axis_data_tdata       ;
wire 				s_axis_data_tvalid      ;
wire 				s_axis_data_tready      ;
wire 				s_axis_data_tlast	    ;

wire signed	[31 : 0]m_axis_data_tdata	    ;
wire 	[7 : 0] 	m_axis_data_tuser	    ;
wire 				m_axis_data_tvalid	    ;
wire 				m_axis_data_tready	    ;
wire 				m_axis_data_tlast	    ;

reg	signed	[15 : 0]first_iff_dout;
wire				ifft_dout_vld_edge_pluse;

assign	s_axis_config_tdata	= 16'b0_101110_0_00_010000;
assign	s_axis_config_tvalid= 1'b1;

assign	s_axis_data_tdata	= { {5{ifft_din[15]}},ifft_din[15:8],3'b0 
								,{5{ifft_din[7]}},ifft_din[7:0],3'b0  };  
assign	s_axis_data_tvalid  = ifft_din_vld			;
assign	ifft_dout_rdy  		= s_axis_data_tready	;
assign	s_axis_data_tlast	= ifft_din_last			;
//-------------------------------------加窗-----------------------------------------//
always @(posedge clk or negedge rst_n)
	if(!rst_n)
		first_iff_dout <= 16'd0;
	else if(ifft_dout_Index == 'd0)
		first_iff_dout <= {$signed(m_axis_data_tdata[23:16])>>>1,$signed(m_axis_data_tdata[7:0])>>>1};
		
edge_detection #(.POSEDGE(1'b1))
u_edge_detection (
.clk			(clk						),	
.edge_din	    (ifft_dout_vld				),
.edge_pluse     (ifft_dout_vld_edge_pluse	)
);
//下一个符号第一个数据(CP的第一个样值)将和OFDM符号64个样值中的第一个数据相加且右移1位后再行输出。
assign	ifft_dout = ifft_dout_Index == 'd48 & ifft_dout_vld_edge_pluse ? 
					{$signed(first_iff_dout[15:8]) + $signed(m_axis_data_tdata[23:16])>>>1,
					$signed(first_iff_dout[7:0]) + $signed(m_axis_data_tdata[7:0])>>>1} : 
					{m_axis_data_tdata[23:16],m_axis_data_tdata[7:0]};
//----------------------------------------------------------------------------------//
assign	ifft_dout_Index		= m_axis_data_tuser		;
assign	ifft_dout_vld		= m_axis_data_tvalid	;
assign	m_axis_data_tready	= ifft_din_rdy			;
assign	ifft_dout_last		= m_axis_data_tlast		;

xfft_0 u_fft (
  .aclk(clk),                                                 // input 	wire aclk
  
  .s_axis_config_tdata			(s_axis_config_tdata		),// input 	wire [7 : 0] s_axis_config_tdata
  .s_axis_config_tvalid			(s_axis_config_tvalid		),// input 	wire s_axis_config_tvalid
  .s_axis_config_tready			(s_axis_config_tready		),// output wire s_axis_config_tready
  
  .s_axis_data_tdata			(s_axis_data_tdata			),// input 	wire [31 : 0] s_axis_data_tdata
  .s_axis_data_tvalid			(s_axis_data_tvalid			),// input 	wire s_axis_data_tvalid
  .s_axis_data_tready			(s_axis_data_tready			),// output wire s_axis_data_tready
  .s_axis_data_tlast			(s_axis_data_tlast			),// input 	wire s_axis_data_tlast
  
  .m_axis_data_tdata			(m_axis_data_tdata			),// output wire [31 : 0] m_axis_data_tdata
  .m_axis_data_tuser			(m_axis_data_tuser			),// output wire [7 : 0] m_axis_data_tuser
  .m_axis_data_tvalid			(m_axis_data_tvalid			),// output wire m_axis_data_tvalid
  .m_axis_data_tready			(m_axis_data_tready			),// input 	wire m_axis_data_tready
  .m_axis_data_tlast			(m_axis_data_tlast			),// output wire m_axis_data_tlast
  
  .event_frame_started			(event_frame_started		),// output wire event_frame_started
  .event_tlast_unexpected		(event_tlast_unexpected		),// output wire event_tlast_unexpected
  .event_tlast_missing			(event_tlast_missing		),// output wire event_tlast_missing
  .event_status_channel_halt	(event_status_channel_halt	),// output wire event_status_channel_halt
  .event_data_in_channel_halt	(event_data_in_channel_halt	),// output wire event_data_in_channel_halt
  .event_data_out_channel_halt	(event_data_out_channel_halt) // output wire event_data_out_channel_halt
);	
	
endmodule
