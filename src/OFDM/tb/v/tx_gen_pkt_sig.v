`timescale 1ns / 1ps
module tx_gen_pkt_sig(
	input 				clk					,
	input				rst_n				,
	input 		[ 5:0]	sig_din_tx_rate		,
	input		[11:0]	sig_din_tx_length	,
	input				sig_din_vld			,
	input				sig_din_rdy			,
	output		[7:0]	sig_dout			,//将signal域帧分割�?8bit数据流输�?
	output	reg			sig_dout_vld		,
	output	reg			sig_dout_rdy		,
	output	reg	[3:0]	sig_dout_rate_con	,
	output				sig_dout_last		,
	output	reg			sig_dout_sig_flag	
);
	
reg		[11:0]	length;	
wire			even_parity_bit;
reg		[23:0]	sig_frame;	
wire			rd_en;
wire			wr_en;
wire	[1:0]	cnt;
wire			cnt_last;

assign	wr_en	 = sig_dout_rdy & sig_din_vld	;//输入有效且准备好接收数据，开始接�?
assign	rd_en	 = sig_dout_vld & sig_din_rdy	;//与下游握手成�?

//RATE字�??	
always @(posedge clk or negedge rst_n) begin
	if (!rst_n)begin 
		sig_dout_rate_con <= 4'b1101;
		length <= 'd0;
		sig_dout_rdy <= 1'b1;
	end
	else if(rd_en & cnt_last)
		sig_dout_rdy <= 1'b1;
	else if(wr_en) begin
		case(sig_din_tx_rate)
			6'd54	: sig_dout_rate_con <= 4'b0011; 	// 64QAM, 3/4 code rate
			6'd48	: sig_dout_rate_con <= 4'b0001; 	// 64QAM, 2/3 code rate
			6'd36	: sig_dout_rate_con <= 4'b1011; 	// 16QAM, 3/4 code rate
			6'd24	: sig_dout_rate_con <= 4'b1001; 	// 16QAM, 2/3 code rate
			6'd18	: sig_dout_rate_con <= 4'b0111;		// QPSK	, 3/4 code rate
			6'd12	: sig_dout_rate_con <= 4'b0101; 	// QPSK	, 2/3 code rate
			6'd9 	: sig_dout_rate_con <= 4'b1111; 	// BPSK	, 3/4 code rate
			6'd6 	: sig_dout_rate_con <= 4'b1101; 	// BPSK	, 1/2 code rate
			default : sig_dout_rate_con <= 4'b1101;
		endcase//LENGTH字�?�LSB优先
		length <= {sig_din_tx_length[0], sig_din_tx_length[1], sig_din_tx_length[2], sig_din_tx_length[3], 
					sig_din_tx_length[4], sig_din_tx_length[5],sig_din_tx_length[6], sig_din_tx_length[7], 
					sig_din_tx_length[8], sig_din_tx_length[9], sig_din_tx_length[10], sig_din_tx_length[11]};
		sig_dout_rdy <= 1'b0;
	end
end	


//偶校验位	
assign	even_parity_bit = ^{sig_dout_rate_con,1'b0,length};
//组帧
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		sig_frame <= 24'b0;
		sig_dout_vld <= 1'b0;
		sig_dout_sig_flag <= 1'b1;
	end
	else if(rd_en & cnt_last)begin
		sig_dout_vld <= 1'b0;
		sig_dout_sig_flag <= 1'b0;
	end
	else if(~sig_dout_rdy)begin
		sig_frame <= {sig_dout_rate_con,1'b0,length,even_parity_bit,6'b0};
		sig_dout_vld <= 1'b1;
		sig_dout_sig_flag <= 1'b1;
	end

end	
//�?8bit数据发送signal
assign	sig_dout = sig_dout_vld ? cnt == 2'd0 ? sig_frame[23:16] : cnt == 2'd1 ? sig_frame[15:8] : sig_frame[7:0] : 8'b0;
assign	rd_en = sig_din_rdy & sig_dout_vld;
assign	sig_dout_last = cnt_last;
	
counter #(.CNT_NUM('d3),
		.ADD(1'b1))
u_counter(
.clk		(clk				),	
.rst_n		(rst_n				),
.En_cnt		(rd_en				),      
.cnt		(cnt				),	
.cnt_last	(cnt_last			)
);	
	
endmodule
