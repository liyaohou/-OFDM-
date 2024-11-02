
//     3/4   6bit-2bit=4bit  原数据3bit   data速率  3/4  输出标号0，1，2，5
//     2/3   4bit-1bit=3bit 原数据2bit 					 输出标号0，1，2
//     1/2   不删余   signal域1/2						 输出标号0，1
module puncture( 
																			input               clk        					,
																			input               rst_n          				,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TDATA" *)	input   	[1:0]   punt_din       				,  
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TVALID" *)	input		      	punt_din_vld   				,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TREADY" *)	input		      	punt_din_rdy   				,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TSTRB" *)	input				punt_din_sig_flag       	,  
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TID" *)	input		[3:0]   punt_din_rate_con       	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TDATA" *)	output reg          punt_dout      				,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TVALID" *)	output reg          punt_dout_vld  				,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_punt TREADY" *)	output				punt_dout_rdy				,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TSTRB" *)	output reg			punt_dout_sig_flag       	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_punt TID" *)	output reg 	[1:0]   punt_dout_Map_Type  		
);


//--------------并行转串行-------------------//
wire	[1:0]	P2S_din		;
wire			P2S_din_vld	;
wire			P2S_din_rdy	;
wire			P2S_dout	;	
wire			P2S_dout_vld;	
wire			P2S_dout_rdy;	

assign	P2S_din = punt_din;
assign	P2S_din_vld = punt_din_vld;
assign	punt_dout_rdy = P2S_dout_rdy;

Par2Ser	#(	.WIDTH		(2),
			.LSB_FIRST	(1))
u_Par2Ser(
	.clk		(clk			),
	.rst_n		(rst_n			),
	.din		(P2S_din		),
	.din_vld	(P2S_din_vld	),
	.din_rdy	(P2S_din_rdy	),
	.dout		(P2S_dout		),
	.dout_vld	(P2S_dout_vld	),
	.dout_rdy   (P2S_dout_rdy	)
);

//----------------pucture计数指示器-------------//
wire			punt_en		;	
reg		[2:0]	cnt_max		;
wire	[2:0]	cnt			;
wire			cnt_last	;

assign		P2S_din_rdy = punt_din_rdy;
assign		punt_en =  punt_din_rdy & P2S_dout_vld	;//串并转换输出有效，且下游准备好接收数据，才开始启动删余

counter_in #(.CNT_NUM(3'd6),
		.ADD(1'b1))
u_counter(
.clk		(clk				),	
.rst_n		(rst_n				),
.En_cnt		(punt_en | cnt_last	), 
.cnt_din	(cnt_max			),     
.cnt		(cnt				),	
.cnt_last	(cnt_last			)
);

//output count max 
always@( posedge clk or negedge rst_n ) begin    
    if(!rst_n) 
        cnt_max <= 3'd1;
    else if(~punt_din_sig_flag) begin 
        case ( punt_din_rate_con )
			4'b1101,4'b0101,4'b1001: begin   //rate 1/2
				cnt_max <= 3'd1;
			end
			4'b1111,4'b0111,4'b1011,4'b0011: begin //rate 3/4
				cnt_max <= 3'd5;
			end
			4'b0001: begin		//rate 2/3
				cnt_max <= 3'd3;
			end 
			default: cnt_max <= cnt_max;
        endcase
    end  
	else
		cnt_max <= 3'd1;
end 

always@( posedge clk or negedge rst_n ) begin   
	if(!rst_n)begin
		punt_dout <= 1'b0;
		punt_dout_vld <= 1'b0;
		punt_dout_sig_flag <= 1'b0;
	end
	else if(punt_en)begin
		case (cnt)
			0,1,2,5 : begin 
				punt_dout <= P2S_dout;
				punt_dout_vld <= 1'b1;
				end
			3,4		: begin 
				punt_dout <= 1'b0;
				punt_dout_vld <= 1'b0;
				end
			default : begin 
				punt_dout <= punt_dout;
				punt_dout_vld <= punt_dout_vld;
				end
		endcase
		punt_dout_sig_flag <= punt_din_sig_flag;
	end
	else if(punt_dout_vld & punt_din_rdy)
		punt_dout_vld <= 1'b0;
end

   //punt_dout_Map_Type
always@(posedge clk or negedge rst_n ) begin
    if(!rst_n)
        punt_dout_Map_Type <= 0;   
    else if(~punt_din_sig_flag)begin 
        case ( punt_din_rate_con )
		4'b1101,4'b1111: begin
            punt_dout_Map_Type <= 2'b00;  //Len==48,BPSK
        end
        4'b0101,4'b0111: begin
            punt_dout_Map_Type <= 2'b01;   //Len ==96,QPSK
        end
        4'b1001,4'b1011: begin
            punt_dout_Map_Type <= 2'b10;  //Len ==192,16QAM
        end 
        4'b0001,4'b0011: begin
            punt_dout_Map_Type <= 2'b11;  //Len ==288,64QAM
        end
        default:punt_dout_Map_Type <= 2'b00;
        endcase
    end  
	else
		punt_dout_Map_Type <= 2'b00;  //Len==48
end

endmodule