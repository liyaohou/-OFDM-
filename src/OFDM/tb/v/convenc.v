`timescale 1ns / 1ps
/*
    卷积编码 (1,7,2) //1输入，深度7,2输出

    Sa(x) = x^6 + x^5 + x^3 + x^2 + 1
    Sb(x) = x^6 + x^3 + x^2 + x^1 + 1
*/

module convenc(
																			input               clk        			, 
																			input               rst_n      			,   
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TDATA" *)	input               conv_din   			, //bit输入 lsb在前，msb在后  
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TVALID" *)	input               conv_din_vld		, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TREADY" *)	input				conv_din_rdy		, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TSTRB" *)	input				conv_din_sig_flag	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TID" *)	input		[3:0]   conv_din_rate_con	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TDATA" *)	output reg  [1:0]   conv_dout  			,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TVALID" *)	output reg          conv_dout_vld  		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_conv TREADY" *)	output				conv_dout_rdy		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TSTRB" *)	output reg			conv_dout_sig_flag	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_conv TID" *)	output reg	[3:0]	conv_dout_rate_con	
);
    reg     [5:0]   shift_reg			;
	wire			conv_en				;
	
	assign	conv_dout_rdy = conv_din_rdy			;	
	assign	conv_en =  conv_dout_rdy & conv_din_vld	;
	
    always@(posedge clk or negedge rst_n ) begin
        if(!rst_n) begin
            shift_reg <= 0;
            conv_dout <= 0;
            conv_dout_vld  <= 0; 
			conv_dout_sig_flag <= 0;
			conv_dout_rate_con <= 4'b1011;
        end  
        else if( conv_en ) begin
            conv_dout[0] <= shift_reg[5] + shift_reg[4] + shift_reg[2] + shift_reg[1] + conv_din; 
            conv_dout[1] <= shift_reg[5] + shift_reg[2] + shift_reg[1] + shift_reg[0] + conv_din; 
            conv_dout_vld  <= 1;
            shift_reg <= {shift_reg[4:0],conv_din}; //移位寄存器  
			conv_dout_sig_flag <= conv_din_sig_flag;
			conv_dout_rate_con <= conv_din_rate_con;
        end
        else if(conv_dout_vld & conv_din_rdy)begin  
            conv_dout_vld  <= 0; 
        end
    end

endmodule   