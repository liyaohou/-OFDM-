 
`timescale 1ns / 1ps 
///////////////////////////////////////////////////////////////////////////////////
//扰码多项式  s(x) = x^7 + x^4 + 1                                                                                
/////////////////////////////////////////////////////////////////////////////////// 
 
module	scramler( 
																			input               clk         		, 
																			input               rst_n       		, 
																			input       [6:0]   scram_seed  		, //扰码器初始状态
																			input               scram_load  		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TDATA" *)	input               scram_din   		, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TVALID" *)input           	scram_din_vld		, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TREADY" *)input				scram_din_rdy		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TSTRB" *)	input				scram_din_sig_flag	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TID" *)	input		[3:0]	scram_din_rate_con	,																																						
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TDATA" *)	output 	reg    		scram_dout  		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TVALID" *)output 	reg    		scram_dout_vld		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_scram TREADY" *)output 				scram_dout_rdy		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TSTRB" *)	output	reg			scram_dout_sig_flag	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_scram TID" *)	output	reg	[3:0]	scram_dout_rate_con	
);

    reg     [6:0]   shift_reg	;
	wire			scram_en	;
	
assign	scram_dout_rdy = scram_din_rdy				;	
assign	scram_en =  scram_dout_rdy & scram_din_vld	;
	
    always@(posedge clk or negedge rst_n ) begin
        if(!rst_n) begin
            shift_reg <= 7'b1011101;
            scram_dout <= 0;
            scram_dout_vld  <= 0; 
			scram_dout_sig_flag <= 0;
			scram_dout_rate_con <= 4'b1011;
        end 
        else if( scram_load ) begin //装载初始值
            shift_reg <= scram_seed; 
            scram_dout_vld <= 0; 
        end
        else if( scram_en) begin
			if(~scram_din_sig_flag)begin
				scram_dout <= shift_reg[6] + shift_reg[3] + scram_din; //s(x) = x^7 + x^4 + 1 
				scram_dout_vld  <= 1; 
				shift_reg <= {shift_reg[5:0],(shift_reg[6]+shift_reg[3])}; 
			end
			else begin
				scram_dout <= scram_din;
				scram_dout_vld  <= 1;
			end
			scram_dout_sig_flag <= scram_din_sig_flag;
			scram_dout_rate_con <= scram_din_rate_con;
        end
        else if(scram_dout_vld & scram_din_rdy)begin //下游接受完毕，没有新数据进来，vld拉低 
            scram_dout_vld  <= 0; 
        end
    end

endmodule   