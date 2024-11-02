`timescale 1ns / 1ps

module OFDM_TX_tb;
//�?要用到的宏参
parameter 		T = 20			;
parameter		WIDTH 	= 4'd8	;
parameter		LSB_FIRST = 1'b1;
parameter		NUM 	= 720	;//�?要根�??输入测试数据长度更改此宏�??
parameter		RATE	= 6'd36	;//数据速率
parameter		PATH 	= "C:/Users/Administrator/Desktop/tb/path/";//地址
parameter		LEGENTH = NUM/WIDTH;//数据字节�??
parameter		TX_PWR	= 3'd0	;
//仿真整体输入输出
reg				sys_clk				;
wire			clk					;
wire			clk_dac				;				
reg				sys_rst_n			;
wire			rst_n				;
wire			dac_din_rdy			;
reg		[20:0]	mcu_config_din		;
reg				mcu_config_din_start;
reg				mcu_config_din_vld	;
wire	[7:0]	mcu_mac_din			;
wire			mcu_mac_din_vld		;
wire 	[2:0]	TxPWR				;
wire 	[15:0]	dac_dout			;
wire 	[8:0]	dac_dout_Index		;
wire 			dac_dout_last		;
wire 			dac_dout_vld		;
wire			mcu_config_dout_rdy	;
wire 			mcu_mac_dout_rdy	;
//测试数据
wire 					cnt_last			;
wire 					En_cnt				;
reg   					test_data [NUM-1:0]	;
reg   	[WIDTH - 1:0]	test_data_byte [NUM/WIDTH-1:0];
wire  [$clog2(NUM/WIDTH)-1:0] 	addr		;
integer					i					;
integer					j					;
integer 				dac_data_out		;

assign dac_din_rdy = 1'b1;

ofdm_tx_wrapper u_OFDM_TX_wrappe
   (.TxPWR					(TxPWR					),
    .clk_125m				(clk     				),
    .clk_20m				(clk_dac				), 
    .dac_din_rdy			(dac_din_rdy			),
    .dac_dout				(dac_dout				),
    .dac_dout_Index			(dac_dout_Index			),
    .dac_dout_last			(dac_dout_last			),
    .dac_dout_vld			(dac_dout_vld			),
    .locked					(rst_n					),
    .mcu_config_din			(mcu_config_din			),
    .mcu_config_din_start	(mcu_config_din_start	),
    .mcu_config_din_vld		(mcu_config_din_vld		),
    .mcu_config_dout_rdy	(mcu_config_dout_rdy	),
    .mcu_mac_din			(mcu_mac_din			),
    .mcu_mac_din_vld		(mcu_mac_din_vld		),
    .mcu_mac_dout_rdy		(mcu_mac_dout_rdy		),
    .tx_end()				
	);

always #(T/2) sys_clk = ~sys_clk;

clk_wiz_0 u_clk_wiz
(
    // Clock out ports
    .clk_out1	(clk		),     	// output clk_out1
    .clk_out2	(clk_dac	),    	 // output clk_out2
    // Status and control signals
    .resetn		(sys_rst_n	), 			// input resetn
    .locked		(rst_n		),       	// output locked
   // Clock in ports
    .clk_in		(sys_clk	)			// input clk_in
); 
initial begin
	sys_clk = 1'b0;
	sys_rst_n = 1'b0;
	$readmemb({PATH,"test_data.txt"},test_data);
	for(i=0;i<NUM/WIDTH;i=i+1)begin
		for(j=0;j<WIDTH;j=j+1)
			test_data_byte[i][j] = test_data[i*WIDTH+j];
	end
	dac_data_out  =  $fopen({PATH,"dac_data_out.txt"});
	#(10*T)
	sys_rst_n = 1'b1;
end	
//数据存储
always@(posedge clk_dac)
begin
  if(dac_dout_vld & dac_din_rdy)
    begin
      $fdisplay(dac_data_out,"%b",dac_dout);
    end
end
//test_data测试数据输入
assign	En_cnt = mcu_mac_din_vld & mcu_mac_dout_rdy & ~cnt_last;
	
counter #(.CNT_NUM(NUM/WIDTH),
		.ADD(1'b1))
counter_test(
.clk		(clk						),	
.rst_n		(rst_n						),
.En_cnt		(En_cnt						), //�??以接收数�??，开始给测试数据     
.cnt		(addr						),	
.cnt_last	(cnt_last					)
);
reg test_dout_vld;
always@(posedge clk or negedge rst_n)
	if(!rst_n)
		test_dout_vld <= 1'b0;
	else if(cnt_last & mcu_mac_dout_rdy)
		test_dout_vld <= 1'b0;
	else if(mcu_mac_dout_rdy)
		test_dout_vld <= 1'b1;

assign mcu_mac_din_vld = test_dout_vld;
assign mcu_mac_din = mcu_mac_din_vld ? test_data_byte[addr] : 'd0;
//参数配置
always@(posedge clk or negedge rst_n)
	if(!rst_n)
		mcu_config_din_start <= 1'b0;
	else if(mcu_config_dout_rdy)
		mcu_config_din_start <= 1'b1;
	else
		mcu_config_din_start <= 1'b0;
		
always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		mcu_config_din <= 'd0;
		mcu_config_din_vld <= 1'b0;
	end
	else if(mcu_config_din_start)begin
		mcu_config_din <= {LEGENTH,RATE,TX_PWR};
		mcu_config_din_vld <= 1'b1;
	end
	else
		mcu_config_din_vld <= 1'b0;

endmodule
