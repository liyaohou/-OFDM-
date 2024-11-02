`timescale 1ns / 1ps
//-------------------�?级交�?-----------------------//
//分组交织器：列写行出
module interleaver_1(    
																				input               clk             	,  
																				input               rst_n          		, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv1 TDATA" *)	    input               intv1_din      		,   
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv1 TVALID" *)	input               intv1_din_vld  		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv1 TREADY" *)	input				intv1_din_rdy		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv1 TSTRB" *)		input				intv1_din_sig_flag	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv1 TID" *)		input       [1:0]   intv1_din_Map_Type	,//TYPE 48bit,96bit,192bit,288bit
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv1 TDATA" *)	    output 		        intv1_dout     		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv1 TVALID" *)	output          	intv1_dout_vld		,    
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_intv1 TREADY" *)	output          	intv1_dout_rdy		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv1 TSTRB" *)		output	reg			intv1_dout_sig_flag	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_intv1 TID" *)		output	reg	[1:0]	intv1_dout_Map_Type	
); 

localparam  N_48 =2'b00,
            N_96 =2'b01,
            N_192=2'b10,
            N_288=2'b11;

wire			wr_en		;
wire			rd_en		;

reg		[8:0]	cnt_Max		;

wire	[8:0]	w_cnt	  	;
wire			w_cnt_last	;
reg		[8:0]	w_addr		;

wire	[8:0]	r_cnt	  	;
wire			r_cnt_last	;
//-----双口RAM乒乓缓存�?---//
reg		[287:0]	bufferA		;
reg		[287:0]	bufferB		;
reg				bufferA_full;
reg				bufferB_full;
reg				buffer_flag	;
//---------------------------------valid-ready握手---------------------------------//
assign	wr_en	 = intv1_dout_rdy & intv1_din_vld ;//与上游握手成功，�?始接收数�?
assign	rd_en	 = intv1_din_rdy & intv1_dout_vld ;//与下游握手成功，�?始输�?
assign	intv1_dout_rdy = (~bufferA_full | ~bufferB_full) ? 1'b1 : 1'b0;
assign	intv1_dout_vld = ( bufferA_full |  bufferB_full) ? 1'b1 : 1'b0;
//------------buffer读写控制----------------//	
always@(posedge clk or negedge rst_n ) begin
	if(!rst_n)
		buffer_flag <= 1'b0;//0为A区，1为B�?
	else if(w_cnt_last & wr_en)
		buffer_flag <= ~buffer_flag;//0为A区，1为B�?
end
//-----------buffer写满和读空控�?------------//	
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		bufferA_full <= 1'b0;
	else if(w_cnt_last & wr_en & ~buffer_flag)
		bufferA_full <= 1'b1;
	else if(r_cnt_last & rd_en & bufferA_full)
		bufferA_full <= 1'b0;
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		bufferB_full <= 1'b0;
	else if(w_cnt_last & wr_en & buffer_flag)
		bufferB_full <= 1'b1;
	else if(r_cnt_last & rd_en & bufferB_full)
		bufferB_full <= 1'b0;
end
//-----------根据符号长度选择写计数�??------------//	
always@( * ) begin  
    case ( intv1_din_Map_Type )
		N_48 	:  	cnt_Max = 48 -1	; 
		N_96 	:  	cnt_Max = 96 -1	;  
		N_192	:  	cnt_Max = 192 -1;  
		N_288	:  	cnt_Max = 288 -1;  
		default	:	cnt_Max = 48 -1	;
    endcase 
end
//------buffer写入操作，以行写入，但是地址换算为列输出时的地址--//
counter_in #(.CNT_NUM('d288),
		.ADD(1'b1))
u_counter_w(
.clk		(clk				),	
.rst_n		(rst_n				),
.En_cnt		(wr_en				), 
.cnt_din	(cnt_Max			),     
.cnt		(w_cnt				),	
.cnt_last	(w_cnt_last			)
);

always@(*) begin
	if(!rst_n) 
		w_addr = 0; 
	else begin
		case(intv1_din_Map_Type)
			N_48	: w_addr = w_cnt[3:0] + (w_cnt[3:0]<<1) + w_cnt[8:4] ; //N = 48//w_cnt *3	  
			N_96	: w_addr = (w_cnt[3:0]<<1)  + (w_cnt[3:0]<<2) + w_cnt[8:4] ;//N = 96 //w_cnt *6
			N_192	: w_addr = (w_cnt[3:0]<<3)  + (w_cnt[3:0]<<2) + w_cnt[8:4]; //N = 192//w_cnt *12
			N_288	: w_addr = (w_cnt[3:0]<<4)  + (w_cnt[3:0]<<1) + w_cnt[8:4]; //N = 288//w_cnt *18
			default	: w_addr = w_cnt[3:0] + (w_cnt[3:0]<<1) + w_cnt[8:4] ; //N = 48//w_cnt *3
		endcase
	end	
end

always@(posedge clk or negedge rst_n ) begin
	if(!rst_n)begin
		bufferA <= 'd0;
		bufferB <= 'd0;	
	end
	else if(wr_en)begin
		if(buffer_flag)
			bufferB[w_addr] <= intv1_din;
		else
			bufferA[w_addr] <= intv1_din;
	end	
end

//------buffer读出操作，按照顺序地�?读出---------//
counter_in #(.CNT_NUM('d288),
		.ADD(1'b1))
u_counter_r(
.clk		(clk				),	
.rst_n		(rst_n				),
.En_cnt		(rd_en				), 
.cnt_din	(cnt_Max			),     
.cnt		(r_cnt				),	
.cnt_last	(r_cnt_last			)
);

assign	intv1_dout = (rd_en & buffer_flag) ? bufferA[r_cnt] : bufferB[r_cnt];

//输出Map_Type，作为后面调制映射的输入，确定调制方�?
always@(posedge clk or negedge rst_n ) begin
    if(!rst_n) begin 
        intv1_dout_Map_Type <= 0; 
		intv1_dout_sig_flag <= 0;		
    end    
    else if(intv1_dout_vld) begin 
		intv1_dout_sig_flag <= intv1_din_sig_flag;
        intv1_dout_Map_Type <= intv1_din_Map_Type; 
    end   
end 

endmodule
