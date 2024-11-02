`timescale 1ns / 1ps
module   LTS(  
    input                   clk         	,   
    input                   rst_n       	,     	
    input					LTS_din_rdy		,
    output	reg	[15:0]		LTS_dout    	,	
    output	reg				LTS_dout_vld	,	
    output	reg				LTS_dout_last  	,
    output	reg	[7:0]		LTS_dout_Index		
);                 

wire				En_cnt	;
wire	[7:0]		cnt		;
wire				cnt_last;
wire	[7:0]		addr	;	
//ROM:宽16位，深度64
//寄存器组：64个16位寄存器		
reg  	[15:0] 		Long_Mem [63:0];

assign	En_cnt = LTS_din_rdy & ~cnt_last;
//
assign	addr = cnt - 6'd32;

//计数161，LTS 包括两个周期的 Symbol(每个有64个样值)
// 和一个长度为32个采样点的长型CP(LTS64个样值中的后32个)
counter #(.CNT_NUM('d161),
		.ADD(1'b1))
u_counter(
.clk		(clk				),	
.rst_n		(rst_n				),
.En_cnt		(En_cnt				),      
.cnt		(cnt				),	
.cnt_last	(cnt_last			)
);

always @(posedge clk or negedge rst_n) 
	if(!rst_n)begin
		LTS_dout_last <= 1'b0;
		LTS_dout_Index <= 'd0;
	end
	else begin//计数器计满代表数据包输出完成
		LTS_dout_last <= cnt_last;
		LTS_dout_Index <= cnt;
	end

//首先初始化ROM中存储的复数值
//
always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin  //时域样值Im       Re
        Long_Mem[0]  <= {8'b00000000 , 8'b01010000};					
        Long_Mem[1]  <= {8'b11000010 , 8'b11111101};
        Long_Mem[2]  <= {8'b11000111 , 8'b00010100};
        Long_Mem[3]  <= {8'b00101010 , 8'b00110010};
        Long_Mem[4]  <= {8'b00001110 , 8'b00001011};
        Long_Mem[5]  <= {8'b11010011 , 8'b00011111};
        Long_Mem[6]  <= {8'b11100100 , 8'b11000101};
        Long_Mem[7]  <= {8'b11001010 , 8'b11101100};
        Long_Mem[8]  <= {8'b11110011 , 8'b00110010};
        Long_Mem[9]  <= {8'b00000010 , 8'b00011011};
        Long_Mem[10] <= {8'b11000101 , 8'b00000001};
        Long_Mem[11] <= {8'b11101000 , 8'b10111010};
        Long_Mem[12] <= {8'b11100010 , 8'b00001101};
        Long_Mem[13] <= {8'b11111000 , 8'b00011110};
        Long_Mem[14] <= {8'b01010010 , 8'b11110100};
        Long_Mem[15] <= {8'b11111110 , 8'b00111101};
		Long_Mem[16] <= {8'b11100000 , 8'b00100000};
		Long_Mem[17] <= {8'b00110010 , 8'b00010011};
		Long_Mem[18] <= {8'b00010100 , 8'b11100011};
		Long_Mem[19] <= {8'b00100001 , 8'b10111101};
		Long_Mem[20] <= {8'b00101111 , 8'b00101010};
		Long_Mem[21] <= {8'b00000111 , 8'b00100100};
		Long_Mem[22] <= {8'b00101010 , 8'b11100001};
		Long_Mem[23] <= {8'b11110101 , 8'b11100011};
		Long_Mem[24] <= {8'b10110011 , 8'b11101110};
		Long_Mem[25] <= {8'b11111000 , 8'b11000010};
		Long_Mem[26] <= {8'b11110110 , 8'b10111111};
		Long_Mem[27] <= {8'b11011010 , 8'b00100110};
		Long_Mem[28] <= {8'b00011100 , 8'b11111111};
		Long_Mem[29] <= {8'b00111011 , 8'b11010001};
		Long_Mem[30] <= {8'b00110110 , 8'b00101111};
		Long_Mem[31] <= {8'b00110010 , 8'b00000110};
		Long_Mem[32] <= {8'b00000000 , 8'b10110000};
		Long_Mem[33] <= {8'b11001110 , 8'b00000110};
		Long_Mem[34] <= {8'b11001010 , 8'b00101111};
		Long_Mem[35] <= {8'b11000101 , 8'b11010001};
		Long_Mem[36] <= {8'b11100100 , 8'b11111111};
		Long_Mem[37] <= {8'b00100110 , 8'b00100110};
		Long_Mem[38] <= {8'b00001010 , 8'b10111111};
		Long_Mem[39] <= {8'b00001000 , 8'b11000010};
		Long_Mem[40] <= {8'b01001101 , 8'b11101110};
		Long_Mem[41] <= {8'b00001011 , 8'b11100011};
		Long_Mem[42] <= {8'b11010110 , 8'b11100001};
		Long_Mem[43] <= {8'b11111001 , 8'b00100100};
		Long_Mem[44] <= {8'b11010001 , 8'b00101010};
		Long_Mem[45] <= {8'b11011111 , 8'b10111101};
		Long_Mem[46] <= {8'b11101100 , 8'b11100011};
		Long_Mem[47] <= {8'b11001110 , 8'b00010011};
		Long_Mem[48] <= {8'b00100000 , 8'b00100000};
		Long_Mem[49] <= {8'b00000010 , 8'b00111101};
		Long_Mem[50] <= {8'b10101110 , 8'b11110100};
		Long_Mem[51] <= {8'b00001000 , 8'b00011110};
		Long_Mem[52] <= {8'b00011110 , 8'b00001101};
		Long_Mem[53] <= {8'b00011000 , 8'b10111010};
		Long_Mem[54] <= {8'b00111011 , 8'b00000001};
		Long_Mem[55] <= {8'b11111110 , 8'b00011011};
		Long_Mem[56] <= {8'b00001101 , 8'b00110010};
		Long_Mem[57] <= {8'b00110110 , 8'b11101100};
		Long_Mem[58] <= {8'b00011100 , 8'b11000101};
		Long_Mem[59] <= {8'b00101101 , 8'b00011111};
		Long_Mem[60] <= {8'b11110010 , 8'b00001011};
		Long_Mem[61] <= {8'b11010110 , 8'b00110010};
		Long_Mem[62] <= {8'b00111001 , 8'b00010100};
		Long_Mem[63] <= {8'b00111110 , 8'b11111101};
		LTS_dout <= 'd0;
		LTS_dout_vld <= 1'b0;
	end
	else if(LTS_din_rdy)begin
		if(LTS_dout_last)
			LTS_dout_vld <= 1'b0;
		else if(cnt == 'd0)begin//计数为0时,将第32个数据的实部和虚部转换成有符号数之后算术右移>>>,即除符号位不动，其余位右移
			LTS_dout <= {$signed(Long_Mem[32][15:8])>>>1,$signed(Long_Mem[32][7:0])>>>1}; 
			LTS_dout_vld <= 1'b1;
		end
		else if(cnt_last)begin//计数满时,将第0个数据的实部和虚部转换成有符号数之后算术右移>>>,即除符号位不动，其余位右移
			LTS_dout <= {$signed(Long_Mem[0][15:8])>>>1,$signed(Long_Mem[0][7:0])>>>1};
			LTS_dout_vld <= 1'b1;
		end
		else if(cnt < 32)begin//
			LTS_dout <= Long_Mem[{1'b1,cnt[4:0]}];//cnt的值加上32
			LTS_dout_vld <= 1'b1;
		end
		else begin
			LTS_dout <= Long_Mem[addr[5:0]]; 
			LTS_dout_vld <= 1'b1;
		end
	end
end
		
endmodule          


	

