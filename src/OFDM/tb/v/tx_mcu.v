`timescale 1ns / 1ps
module tx_mcu(
	
																						input 						clk					,
																						input						rst_n				,
																				//MAC层发来参数配置，21位信�?,其中包含的是待发射PSDU帧长(LENGTH,12bits)�?
																				//发射速率(RATE,6bits)和发射功率等�?(TXPWR,3bits)三个发射参数�?
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TDATA" *)		input       [20:0]       	mcu_config_din		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TVALID" *)		input              			mcu_config_din_vld	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TSTRB" *)		input              			mcu_config_din_start,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_config TREADY" *)		output	reg					mcu_config_dout_rdy	,
																				//MAC层发来的信息byte
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TDATA" *)    		input		[7:0]			mcu_mac_din			,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TVALID" *)			input						mcu_mac_din_vld		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mcu_mac TREADY" *)			output						mcu_mac_dout_rdy	,
																				//输出信息串行bit�?
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TREADY" *)				input						mcu_din_rdy			,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TDATA" *)				output						mcu_dout			,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TVALID" *)				output						mcu_dout_vld		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TSTRB" *)				output						mcu_dout_sig_flag	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mcu TID" *)					output		[3:0]			mcu_dout_rate_con	,//输出速率
																				//扰码器初始�?�配�?
																						output  reg [6:0]   		mcu_dout_scram_seed , //扰码器初始状�?
																						output  reg             	mcu_dout_scram_load , //初始值装载信�?
																				//物理层硬件软复位
																						output	reg					phy_rst_n			,
																				//输入�?包数据发送完成信�?
																						input						tx_end				,																						
																				//输出发射功率等级
																						output		[2:0]			TxPWR				
);

parameter		SEED = 7'b1011101;
//signal
wire	[ 5:0]	sig_din_tx_rate	 ;
wire	[11:0]	sig_din_tx_length;
wire			sig_din_vld		 ;
wire			sig_din_rdy		 ;
wire	[7:0]	sig_dout		 ;
wire			sig_dout_vld	 ;
wire			sig_dout_rdy	 ;
wire	[3:0]	sig_dout_rate_con;
wire			sig_dout_last	 ;
wire			sig_dout_sig_flag;
//连接�?-�?
wire	[7:0]	P2S_din			 ;
wire			P2S_din_vld		 ;
wire			P2S_din_rdy		 ;
wire			P2S_dout		 ;
wire			P2S_dout_vld	 ;
wire			P2S_dout_rdy	 ;
//
wire			En_cnt			 ;
wire			cnt_last		 ;
//MAC层发来传输信号mcu_config_din_start后，对硬件复�?
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		phy_rst_n <= 1'b1;
	else if(mcu_config_din_start)
		phy_rst_n <= 1'b0;
	else
		phy_rst_n <= 1'b1;
end
//发完�?包数据后，准备好再次向MAC层接收数�?
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)
        mcu_config_dout_rdy <= 1'b1;
    else if(tx_end)
        mcu_config_dout_rdy <= 1'b1;
    else if(mcu_config_din_vld)
        mcu_config_dout_rdy <= 1'b0;
    else 
        mcu_config_dout_rdy <= mcu_config_dout_rdy;    
end
//生成signal数据帧结�?
assign	sig_din_tx_rate = mcu_config_din[8:3];	
assign  sig_din_tx_length = mcu_config_din[20:9];
assign  TxPWR = mcu_config_din[2:0];
assign  sig_din_vld = mcu_config_din_vld;
//assign	sig_dout_rdy = mcu_config_dout_rdy;
assign	sig_din_rdy = sig_dout_sig_flag ? P2S_dout_rdy : 1'b0;

tx_gen_pkt_sig u_tx_gen_pkt_sig(
	.clk				(clk				),
	.rst_n				(rst_n				),
	.sig_din_tx_rate	(sig_din_tx_rate	),
	.sig_din_tx_length	(sig_din_tx_length	),
	.sig_din_vld		(sig_din_vld		),
	.sig_din_rdy		(sig_din_rdy		),
	.sig_dout			(sig_dout			),
	.sig_dout_vld		(sig_dout_vld		),
	.sig_dout_rdy		(sig_dout_rdy		),
	.sig_dout_rate_con	(sig_dout_rate_con	),
	.sig_dout_last		(sig_dout_last		),
	.sig_dout_sig_flag	(sig_dout_sig_flag	)
);
//signal域标志信号控�?,保证signal处理完成，再�?始处理data�?
assign	En_cnt = phy_rst_n & ~cnt_last;
counter #(.CNT_NUM(500),
		.ADD(1'b1))
u_counter(
	.clk		(clk				),	
	.rst_n		(rst_n				),
	.En_cnt		(En_cnt				),      
	.cnt		(cnt				),	
	.cnt_last	(cnt_last			)
);

assign	mcu_dout_sig_flag = ~cnt_last;
assign	mcu_dout_rate_con = sig_dout_rate_con; 

assign	P2S_din = mcu_dout_sig_flag ? 
					{sig_dout[0],sig_dout[1],sig_dout[2],
					sig_dout[3],sig_dout[4],sig_dout[5],
					sig_dout[6],sig_dout[7]} : mcu_mac_din;
assign	P2S_din_vld = mcu_dout_sig_flag ? sig_dout_vld : mcu_mac_din_vld;
assign	P2S_din_rdy = mcu_din_rdy;

//并行转串行，�?字节
Par2Ser	#(	.WIDTH		(4'd8),
			.LSB_FIRST	(1'b1))
Par2Ser_u2(
	.clk		(clk			),
	.rst_n		(rst_n			),
	.din		(P2S_din		),
	.din_vld	(P2S_din_vld	),
	.din_rdy	(P2S_din_rdy	),
	.dout		(P2S_dout		),
	.dout_vld	(P2S_dout_vld	),
	.dout_rdy   (P2S_dout_rdy   )
);

assign	mcu_dout = P2S_dout;
assign	mcu_dout_vld = P2S_dout_vld;
assign	mcu_mac_dout_rdy = mcu_dout_sig_flag ? 1'b0 : P2S_dout_rdy;
//扰码器初始�?�配�?
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		mcu_dout_scram_load <= 1'b0;
		mcu_dout_scram_seed <= 'd0;
	end
	else begin
		mcu_dout_scram_load <= ~phy_rst_n;
		mcu_dout_scram_seed <= SEED;
	end
end

endmodule