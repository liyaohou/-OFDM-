`timescale 1ns / 1ps
module   STS(  
    input                   clk         	,   
    input                   rst_n       	,     	
    input					STS_din_rdy		,
    output	reg	[15:0]		STS_dout    	,	
    output	reg				STS_dout_vld	,	
    output	reg				STS_dout_last  	,
    output	reg	[7:0]		STS_dout_Index		
);                 
//计数器
wire				En_cnt	;
wire	[7:0]		cnt		;
wire				cnt_last;
//
reg  	[15:0] 		Short_Mem [15:0];//16个16位计数器

assign	En_cnt = STS_din_rdy & ~cnt_last;


//计数161，自增0-161，将STS循环发送10个周期
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
		STS_dout_last <= 1'b0;
		STS_dout_Index <= 'd0;
	end
	else begin
		STS_dout_last <= cnt_last;//STS_dout_last比cnt_last延时一个时钟周期
		STS_dout_Index <= cnt;//输出索引
	end

//首先初始化Short_Mem中预先存储的复数值，再依序输出
//使用寄存器组实现ROM的功能
always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin  //时域样值 Im       Re        复数形式
        Short_Mem[0]  <= {8'b00011000,8'b00011000};						
        Short_Mem[1]  <= {8'b00000001,8'b10111100};
        Short_Mem[2]  <= {8'b11011000,8'b11111001};
        Short_Mem[3]  <= {8'b11111010,8'b01001001};
        Short_Mem[4]  <= {8'b00000000,8'b00101111};
        Short_Mem[5]  <= {8'b11111010,8'b01001001};
        Short_Mem[6]  <= {8'b11011000,8'b11111001};
        Short_Mem[7]  <= {8'b00000001,8'b10111100};
        Short_Mem[8]  <= {8'b00011000,8'b00011000};
        Short_Mem[9]  <= {8'b10111100,8'b00000001};
        Short_Mem[10] <= {8'b11111001,8'b11011000};
        Short_Mem[11] <= {8'b01001001,8'b11111010};
        Short_Mem[12] <= {8'b00101111,8'b00000000};
        Short_Mem[13] <= {8'b01001001,8'b11111010};
        Short_Mem[14] <= {8'b11111001,8'b11011000};
        Short_Mem[15] <= {8'b10111100,8'b00000001};
		STS_dout <= 'd0;
		STS_dout_vld <= 1'b0;
	end
	else if(STS_din_rdy)begin
		if(STS_dout_last)//数据包发完，再过一个周期拉低STS_dout_vld
			STS_dout_vld <= 1'b0;
		else if(cnt == 'd0 | cnt_last)begin//归零或计满
			STS_dout <= {Short_Mem[0][15:8]>>1,Short_Mem[0][7:0]>>1};//第0个寄存器存储的值的实部和虚部都除以二
			STS_dout_vld <= 1'b1;
		end
		else begin//开始计数时，拉高STS_dout_vld
			STS_dout <= Short_Mem[cnt[3:0]];//按顺序循环输出寄存器组的第0到第15个寄存器存储的值，取cnt第四位是为了在0-15循环
			STS_dout_vld <= 1'b1;
		end
	end
end
		
endmodule          


