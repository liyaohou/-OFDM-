`timescale 1ns / 1ps

module test_tb;
//需要用到的宏参
parameter 		T = 20			;
parameter		WIDTH = 4'd8	;
parameter		LSB_FIRST = 1'b1;
parameter		NUM = 720		;//需要根据输入测试数据长度更改此宏参
parameter		RATE_CON = 4'b1011;//数据速率
parameter		PATH = "C:/Users/Administrator/Desktop/OFDM_my/TX/TX/matlab/test";
parameter		LEGENTH = NUM/WIDTH;
//仿真整体输入输出
reg					sys_clk			;
wire				clk				;
wire				clk_dac			;				
reg					sys_rst_n		;
wire				rst_n			;
//控制test_data输入的相关申明
wire 				cnt_last		;
wire 				En_cnt			; 
//tx_mcu
reg		[20:0]      mcu_config_din		;
reg		       		mcu_config_din_vld	;
reg		       		mcu_config_din_start;
wire				mcu_config_dout_rdy	;
wire	[7:0]		mcu_mac_din			;
wire				mcu_mac_din_vld		;
wire				mcu_mac_dout_rdy	;
wire				mcu_din_rdy			;
wire				mcu_dout			;
wire				mcu_dout_vld		;
wire				mcu_dout_sig_flag	;
wire	[3:0]		mcu_dout_rate_con	;
wire	[6:0]   	mcu_dout_scram_seed ;
wire	            mcu_dout_scram_load ;
wire				phy_rst_n			;
wire				tx_end	            ;
//wire				mcu_dout_train_rdy	;
wire	[2:0]		TxPWR				;
//symbol_train	    	
wire				train_din_rdy	;
wire	[15:0]		train_dout    	;
wire				train_dout_vld	;
wire				train_dout_last ;
wire	[8:0]		train_dout_Index;
//STS
wire				STS_din_rdy		;
wire	[15:0]		STS_dout    	;
wire				STS_dout_vld	;
wire				STS_dout_last  	;
wire	[7:0]		STS_dout_Index	;
//LTS
wire				LTS_din_rdy		;
wire	[15:0]		LTS_dout    	;
wire				LTS_dout_vld	;
wire				LTS_dout_last  	;
wire	[7:0]		LTS_dout_Index	;
//signal
reg		[ 5:0]		sig_din_tx_rate		;
reg		[11:0]		sig_din_tx_length	;
reg					sig_din_vld			;
reg					sig_din_rdy			;
wire	[7:0]		sig_dout			;
wire				sig_dout_vld		;
wire				sig_dout_rdy		;
wire	[3:0]		sig_dout_rate_con	;
wire				sig_dout_last		;
wire				sig_dout_sig_flag	;
//连接并-串
wire[WIDTH - 1:0]	P2S_din		;
wire				P2S_din_vld	;
wire				P2S_din_rdy	;
wire				P2S_dout	;
wire				P2S_dout_vld;
wire				P2S_dout_rdy;
//scramler       		
reg		[6:0]   scram_seed  		;
reg	        	scram_load  		;
wire	        scram_din   		;
wire	    	scram_din_vld		;
wire			scram_din_rdy		;
wire			scram_din_sig_flag	;
wire	[3:0]	scram_din_rate_con	;
wire	   		scram_dout  		;
wire	   		scram_dout_vld		;
wire			scram_dout_rdy		;
wire			scram_dout_sig_flag	;
wire	[3:0]	scram_dout_rate_con	;
//convenc	
wire			conv_din   			;
wire			conv_din_vld		;
wire			conv_din_rdy		;
wire			conv_din_sig_flag	;
wire	[3:0]   conv_din_rate_con	;
wire	[1:0]   conv_dout  			;
wire			conv_dout_vld  		;
wire			conv_dout_rdy		;
wire			conv_dout_sig_flag	;
wire	[3:0]	conv_dout_rate_con	;
//puncture 
wire	[1:0]   punt_din       		;
wire	      	punt_din_vld   		;
wire	      	punt_din_rdy   		;
wire			punt_din_sig_flag   ;
wire	[3:0]   punt_din_rate_con   ;
wire	        punt_dout      		;
wire	        punt_dout_vld  		;
wire			punt_dout_rdy		;
wire			punt_dout_sig_flag  ;
wire	[1:0]   punt_dout_Map_Type  ;
//interleaver_1
wire	        intv1_din      		;
wire	        intv1_din_vld  		;
wire			intv1_din_rdy		;
wire			intv1_din_sig_flag	;
wire	[1:0]   intv1_din_Map_Type	;
wire	        intv1_dout     		;
wire	    	intv1_dout_vld		;
wire	    	intv1_dout_rdy		;
wire			intv1_dout_sig_flag	;
wire	[1:0]	intv1_dout_Map_Type	;
//interleaver_2
wire	        intv2_din       	;
wire	        intv2_din_vld  		;
wire			intv2_din_rdy		;
wire			intv2_din_sig_flag	;
wire	[1:0]   intv2_din_Map_Type  ;
wire	     	intv2_dout      	;
wire	     	intv2_dout_vld		;
wire	     	intv2_dout_rdy  	;
wire	[1:0]   intv2_dout_Map_Type ;
//maping
wire	        map_din     	    ;
wire	        map_din_vld		    ;
wire			map_din_rdy		    ;
wire	[1:0]   map_din_Map_Type    ;
wire	[15:0]  map_dout     	    ;
wire	  		map_dout_vld	    ;
wire	     	map_dout_rdy        ;
wire	[5:0]   map_dout_Index      ;
//pilot
wire	[5:0]	pilot_din_Index     ;
wire	[15:0]	pilot_din   	    ;
wire			pilot_din_vld	    ;
wire			pilot_din_rdy	    ;
wire	[15:0]	pilot_dout    	    ;
wire			pilot_dout_vld	    ;
wire			pilot_dout_rdy	    ;
wire			pilot_dout_last     ;
//ifft
wire	[15:0]	ifft_din   			;
wire			ifft_din_vld	    ;
wire			ifft_din_rdy	    ;
wire			ifft_din_last       ;
wire	[15:0]	ifft_dout    	    ;
wire			ifft_dout_vld	    ;
wire			ifft_dout_rdy	    ;
wire			ifft_dout_last      ;
wire	[7:0]	ifft_dout_Index	    ;
//fifo
wire 			wr_rst_busy			;
wire 			rd_rst_busy         ;
wire 			s_axis_tvalid       ;
wire 			s_axis_tready       ;
wire 	[15:0] 	s_axis_tdata        ;
wire 			s_axis_tlast        ;
wire 	[7:0] 	s_axis_tuser        ;
wire 			m_axis_tvalid       ;
wire 			m_axis_tready       ;
wire 	[15:0] 	m_axis_tdata        ;
wire 			m_axis_tlast        ;
wire 	[7:0] 	m_axis_tuser        ;
//此处是一些独立模块的测试
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
		mcu_config_din <= {LEGENTH,6'd36,3'd0};
		mcu_config_din_vld <= 1'b1;
	end
	else
		mcu_config_din_vld <= 1'b0;
		
assign	mcu_mac_din = P2S_din;
assign	mcu_mac_din_vld = P2S_din_vld;
assign	mcu_din_rdy = P2S_din_rdy;
assign	tx_end	= cnt_last;	
	
tx_mcu u_tx_mcu(
	.clk					(clk					),
	.rst_n					(rst_n					),
	.mcu_config_din		    (mcu_config_din			),
	.mcu_config_din_vld	    (mcu_config_din_vld		),
	.mcu_config_din_start   (mcu_config_din_start	),
	.mcu_config_dout_rdy	(mcu_config_dout_rdy	),
	.mcu_mac_din			(mcu_mac_din			),
	.mcu_mac_din_vld		(mcu_mac_din_vld		),
	.mcu_mac_dout_rdy	    (mcu_mac_dout_rdy		),
	.mcu_din_rdy			(mcu_din_rdy			),
	.mcu_dout			    (mcu_dout				),
	.mcu_dout_vld		    (mcu_dout_vld			),
	.mcu_dout_sig_flag	    (mcu_dout_sig_flag		),
	.mcu_dout_rate_con	    (mcu_dout_rate_con		),
	.mcu_dout_scram_seed  	(mcu_dout_scram_seed  	),
	.mcu_dout_scram_load  	(mcu_dout_scram_load  	),
	.phy_rst_n			    (phy_rst_n				),
	.tx_end	                (tx_end	            	),
//	.mcu_dout_train_rdy		(mcu_dout_train_rdy		),
	.TxPWR				    (TxPWR					)
);

assign	train_din_rdy = 1'b1;
symbol_train u_symbol_train(
	.clk         		(clk         		),
	.rst_n       	    (rst_n       		),
	.train_din_rdy	    (train_din_rdy		),
	.train_dout    	    (train_dout    		),
	.train_dout_vld	    (train_dout_vld		),
	.train_dout_last    (train_dout_last 	),
	.train_dout_Index   (train_dout_Index	)
);

assign	STS_din_rdy = 1'b1;	
STS u_STS(
	.clk         	(clk         	),
	.rst_n       	(rst_n       	),
	.STS_din_rdy	(STS_din_rdy	),	
	.STS_dout    	(STS_dout    	),
	.STS_dout_vld	(STS_dout_vld	),
	.STS_dout_last  (STS_dout_last  ),	
	.STS_dout_Index	(STS_dout_Index	)
);

assign	LTS_din_rdy = 1'b1;	
LTS u_LTS(
	.clk         	(clk         	),
	.rst_n       	(rst_n       	),
	.LTS_din_rdy	(LTS_din_rdy	),	
	.LTS_dout    	(LTS_dout    	),
	.LTS_dout_vld	(LTS_dout_vld	),
	.LTS_dout_last  (LTS_dout_last  ),	
	.LTS_dout_Index	(LTS_dout_Index	)
);

always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		sig_din_tx_rate <= 36;
		sig_din_vld <= 1'b1;
		sig_din_tx_length <= 1024;
		sig_din_rdy <= 1'b1;
	end
	else if(~sig_dout_rdy)
		sig_din_vld <= 1'b0;

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

//从此处开始是数据域处理模块级联进行测试
assign	P2S_din_rdy = scram_dout_rdy;
//assign	P2S_din_rdy = 1'b1;
Par2Ser	#(	.WIDTH		(WIDTH),
			.LSB_FIRST	(LSB_FIRST))
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

assign scram_din = P2S_dout;
assign scram_din_vld = P2S_dout_vld;
assign scram_din_rdy = conv_dout_rdy;
//assign scram_din_rdy = 1'b1;
assign scram_din_sig_flag = 1'b0;
assign scram_din_rate_con = RATE_CON;
scramler u_scram(
	.clk         		(clk         		),
	.rst_n       		(rst_n       		),
	.scram_seed  		(scram_seed  		),
	.scram_load  		(scram_load  		),
	.scram_din   		(scram_din   		),
	.scram_din_vld		(scram_din_vld		),
	.scram_din_rdy		(scram_din_rdy		),
	.scram_din_sig_flag	(scram_din_sig_flag	),
	.scram_din_rate_con	(scram_din_rate_con	),
	.scram_dout  		(scram_dout  		),
	.scram_dout_vld		(scram_dout_vld		),
	.scram_dout_rdy		(scram_dout_rdy		),
	.scram_dout_sig_flag(scram_dout_sig_flag),	
	.scram_dout_rate_con(scram_dout_rate_con)		
);

assign conv_din = scram_dout;
assign conv_din_vld = scram_dout_vld;
assign conv_din_rdy = punt_dout_rdy;
assign conv_din_sig_flag = scram_dout_sig_flag;
assign conv_din_rate_con = scram_dout_rate_con;
//assign conv_din_rdy = 1'b1;
convenc u_convenc(
	.clk        		(clk        		),	
    .rst_n      		(rst_n      		),
	.conv_din   		(conv_din   		),		
	.conv_din_vld		(conv_din_vld		),  
	.conv_din_rdy		(conv_din_rdy		),  
	.conv_din_sig_flag	(conv_din_sig_flag	),        
	.conv_din_rate_con	(conv_din_rate_con	),		
	.conv_dout  		(conv_dout  		),  
	.conv_dout_vld  	(conv_dout_vld  	),	
	.conv_dout_rdy		(conv_dout_rdy		),
	.conv_dout_sig_flag	(conv_dout_sig_flag	),
	.conv_dout_rate_con	(conv_dout_rate_con	)	
);

assign	punt_din     =  conv_dout		; 
assign	punt_din_vld =  conv_dout_vld	; 
assign	punt_din_rdy =  intv1_dout_rdy 	;
//assign	punt_din_rdy =  1'b1 	;
assign punt_din_sig_flag = conv_dout_sig_flag;
assign punt_din_rate_con = conv_dout_rate_con;
puncture u_puncture(              
	.clk        			(clk        		),
	.rst_n          		(rst_n          	),
	.punt_din       		(punt_din       	),
	.punt_din_vld   		(punt_din_vld   	),
	.punt_din_rdy   		(punt_din_rdy   	),
	.punt_din_sig_flag      (punt_din_sig_flag  ),
	.punt_din_rate_con      (punt_din_rate_con  ),
	.punt_dout      		(punt_dout      	),
	.punt_dout_vld  		(punt_dout_vld  	),
	.punt_dout_rdy		    (punt_dout_rdy		),
	.punt_dout_sig_flag  	(punt_dout_sig_flag ),
	.punt_dout_Map_Type     (punt_dout_Map_Type )	
);

assign	intv1_din 		= punt_dout		;      
assign	intv1_din_vld 	= punt_dout_vld ;
assign	intv1_din_rdy 	= intv2_dout_rdy;
//assign	intv1_din_rdy 	= 1'b1;
assign	intv1_din_sig_flag = punt_dout_sig_flag;
assign	intv1_din_Map_Type = punt_dout_Map_Type;	
interleaver_1 u_interleaver_1(
.clk             	 	(clk             	),
.rst_n          		(rst_n          	),
.intv1_din      		(intv1_din      	),
.intv1_din_vld  		(intv1_din_vld  	),
.intv1_din_rdy		 	(intv1_din_rdy		),
.intv1_din_sig_flag	 	(intv1_din_sig_flag	),
.intv1_din_Map_Type		(intv1_din_Map_Type	),
.intv1_dout     		(intv1_dout     	),
.intv1_dout_vld			(intv1_dout_vld		),
.intv1_dout_rdy		 	(intv1_dout_rdy		),
.intv1_dout_sig_flag	(intv1_dout_sig_flag),
.intv1_dout_Map_Type	(intv1_dout_Map_Type)
);
		
assign	intv2_din 		 = intv1_dout;    	
assign	intv2_din_vld 	 = intv1_dout_vld;
assign	intv2_din_rdy 	 = map_dout_rdy;
//assign	intv2_din_rdy 	 = 1'b1;
assign	intv2_din_sig_flag = intv1_dout_sig_flag;
assign	intv2_din_Map_Type = intv1_dout_Map_Type;
interleaver_2 u_interleaver_2(
.clk             		(clk             	), 
.rst_n          		(rst_n          	), 
.intv2_din       		(intv2_din       	), 
.intv2_din_vld  		(intv2_din_vld  	), 
.intv2_din_rdy			(intv2_din_rdy		), 
.intv2_din_sig_flag		(intv2_din_sig_flag	), 
.intv2_din_Map_Type     (intv2_din_Map_Type ),
.intv2_dout      		(intv2_dout      	), 
.intv2_dout_vld			(intv2_dout_vld		),
.intv2_dout_rdy  		(intv2_dout_rdy  	),
.intv2_dout_Map_Type    (intv2_dout_Map_Type)
);
		
assign	map_din 	= intv2_dout;    	
assign	map_din_vld	= intv2_dout_vld;
//assign	map_din_rdy = 1'b1;
assign	map_din_rdy = pilot_dout_rdy;
assign	map_din_Map_Type = intv2_dout_Map_Type;
maping	u_maping(
.clk             	(clk             	),
.rst_n           	(rst_n          	),
.map_din     		(map_din     		),
.map_din_vld		(map_din_vld		),
.map_din_rdy		(map_din_rdy		),
.map_din_Map_Type	(map_din_Map_Type	),
.map_dout     		(map_dout     		),
.map_dout_vld		(map_dout_vld		),
.map_dout_rdy   	(map_dout_rdy   	),
.map_dout_Index  	(map_dout_Index  	)
);

assign	pilot_din_Index = map_dout_Index;		
assign	pilot_din 		= map_dout;    
assign	pilot_din_vld 	= map_dout_vld;
//assign	pilot_din_rdy 	 = 1'b1;
assign	pilot_din_rdy 	= ifft_dout_rdy;

pilot	u_pilot(
.clk			(clk			),	
.rst_n       	(rst_n       	),
.pilot_din_Index(pilot_din_Index),
.pilot_din   	(pilot_din   	),
.pilot_din_vld	(pilot_din_vld	),
.pilot_din_rdy	(pilot_din_rdy	),
.pilot_dout    	(pilot_dout    	),
.pilot_dout_vld	(pilot_dout_vld	),
.pilot_dout_rdy	(pilot_dout_rdy	),
.pilot_dout_last(pilot_dout_last)
);

assign	ifft_din   	 = pilot_dout     ; 
assign	ifft_din_vld = pilot_dout_vld ;
//assign	ifft_din_rdy = 1'b1;
assign	ifft_din_rdy = s_axis_tready  ;
assign	ifft_din_last= pilot_dout_last;

ifft u_ifft(
.clk			(clk			),	
.rst_n       	(rst_n       	),
.ifft_din   	(ifft_din   	),	
.ifft_din_vld	(ifft_din_vld	),
.ifft_din_rdy	(ifft_din_rdy	),
.ifft_din_last  (ifft_din_last  ), 
.ifft_dout    	(ifft_dout    	),
.ifft_dout_vld	(ifft_dout_vld	),
.ifft_dout_rdy	(ifft_dout_rdy	),
.ifft_dout_last (ifft_dout_last ), 
.ifft_dout_Index(ifft_dout_Index)	
);

assign s_axis_tvalid = ifft_dout_vld	;
assign s_axis_tdata = ifft_dout			;
assign s_axis_tlast = ifft_dout_last	;
assign s_axis_tuser = ifft_dout_Index	;
assign m_axis_tready = 1'b1				;

fifo_generator_0 u_fifo (
  .m_aclk				(clk_dac		),  // input  wire m_aclk
  .s_aclk				(clk			),  // input  wire s_aclk
  .s_aresetn			(rst_n			),  // input  wire s_aresetn
  .s_axis_tvalid		(s_axis_tvalid	),  // input  wire s_axis_tvalid
  .s_axis_tready		(s_axis_tready	),  // output wire s_axis_tready
  .s_axis_tdata			(s_axis_tdata	),  // input  wire [15 : 0] s_axis_tdata
  .s_axis_tlast			(s_axis_tlast	),  // input  wire s_axis_tlast
  .s_axis_tuser			(s_axis_tuser	),  // input  wire [7 : 0] s_axis_tuser
  .m_axis_tvalid		(m_axis_tvalid	),  // output wire m_axis_tvalid
  .m_axis_tready		(m_axis_tready	),  // input  wire m_axis_tready
  .m_axis_tdata			(m_axis_tdata	),  // output wire [15 : 0] m_axis_tdata
  .m_axis_tlast			(m_axis_tlast	),  // output wire m_axis_tlast
  .m_axis_tuser			(m_axis_tuser	)   // output wire [7 : 0] m_axis_tuser
);

//测试数据
reg   					test_data [NUM-1:0]	;
reg   	[WIDTH - 1:0]	test_data_byte [NUM/WIDTH-1:0]	;
wire  [$clog2(NUM/WIDTH)-1:0] 	addr		;
integer					i					;
integer					j					;
integer 				P2S_data_out		;
integer 				scram_data_out		;
integer					conv_data_out		;
integer					punt_data_out		;
integer					intv1_data_out		;
integer					intv2_data_out		;
integer					map_Re_data_out		;
integer					map_Im_data_out		;
integer					pilot_data_out		;
integer					ifft_data_out		;
integer					STS_data_out		;
integer					LTS_data_out		;
integer					train_data_out		;
integer					mcu_data_out		;
//时钟生成
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// clk_out1___125.000______0.000______50.0______154.207____164.985
// clk_out2____20.000______0.000______50.0______249.363____164.985
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary______________50____________0.010
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
	P2S_data_out  =  $fopen({PATH,"P2S_data_out.txt"});
	scram_data_out  =  $fopen({PATH,"scram_data_out.txt"});
	conv_data_out = $fopen({PATH,"conv_data_out.txt"});
	punt_data_out = $fopen({PATH,"punt_data_out.txt"});
	intv1_data_out = $fopen({PATH,"intv1_data_out.txt"});
	intv2_data_out = $fopen({PATH,"intv2_data_out.txt"});
	map_Re_data_out = $fopen({PATH,"map_Re_data_out.txt"});
	map_Im_data_out = $fopen({PATH,"map_Im_data_out.txt"});
	pilot_data_out = $fopen({PATH,"pilot_data_out.txt"});
	ifft_data_out = $fopen({PATH,"ifft_data_out.txt"});
	STS_data_out = $fopen({PATH,"STS_data_out.txt"});
	LTS_data_out = $fopen({PATH,"LTS_data_out.txt"});
	train_data_out = $fopen({PATH,"train_data_out.txt"});
	mcu_data_out = $fopen({PATH,"mcu_data_out.txt"});
	//把前面存储的数据复制一份改名，读出来，方便在modlesim里面查看数据
	//$readmemb("D:/FPGA/OFDM_802.11a_my/TX/matlab/u1.txt",u1);
	//$readmemb("D:/FPGA/OFDM_802.11a_my/TX/matlab/u2.txt",u2);
	//$readmemb("D:/FPGA/OFDM_802.11a_my/TX/matlab/u3.txt",u3);
	#(10*T)
	sys_rst_n = 1'b1;
	scram_seed = 7'b1011101;
	scram_load = 1'b1;
	#T
	scram_load = 1'b0;
	
end	

//------存储输出数据，便于查看、验证
always@(posedge clk)
begin
  if(P2S_dout_vld & P2S_din_rdy)
    begin
      $fdisplay(P2S_data_out,"%b",P2S_dout);
    end
end
always@(posedge clk)
begin
  if(scram_dout_vld & scram_din_rdy)
    begin
      $fdisplay(scram_data_out,"%b",scram_dout);
    end
end
always@(posedge clk)
begin
  if(conv_dout_vld & conv_din_rdy)
    begin
      $fdisplay(conv_data_out,"%b",conv_dout[0]);
	  $fdisplay(conv_data_out,"%b",conv_dout[1]);
    end
end
always@(posedge clk)
begin
  if(punt_dout_vld & punt_din_rdy)
    begin
      $fdisplay(punt_data_out,"%b",punt_dout);
    end
end
always@(posedge clk)
begin
  if(intv1_dout_vld & intv1_din_rdy)
    begin
      $fdisplay(intv1_data_out,"%b",intv1_dout);
    end
end
always@(posedge clk)
begin
  if(intv2_dout_vld & intv2_din_rdy)
    begin
      $fdisplay(intv2_data_out,"%b",intv2_dout);
    end
end
always@(posedge clk)
begin
  if(map_dout_vld & map_din_rdy)
    begin
      $fdisplay(map_Re_data_out,"%b",map_dout[7:0]);
	  $fdisplay(map_Im_data_out,"%b",map_dout[15:8]);
    end
end
always@(posedge clk)
begin
  if(pilot_dout_vld & pilot_din_rdy)
    begin
      $fdisplay(pilot_data_out,"%b",pilot_dout);
    end
end
always@(posedge clk)
begin
  if(ifft_dout_vld & ifft_din_rdy)
    begin
      $fdisplay(ifft_data_out,"%b",ifft_dout);
    end
end
always@(posedge clk)
begin
  if(STS_dout_vld & STS_din_rdy)
    begin
      $fdisplay(STS_data_out,"%b",STS_dout);
    end
end
always@(posedge clk)
begin
  if(LTS_dout_vld & LTS_din_rdy)
    begin
      $fdisplay(LTS_data_out,"%b",LTS_dout);
    end
end
always@(posedge clk)
begin
  if(train_dout_vld & train_din_rdy)
    begin
      $fdisplay(train_data_out,"%b",train_dout);
    end
end
always@(posedge clk)
begin
  if(mcu_dout_vld & mcu_din_rdy)
    begin
      $fdisplay(mcu_data_out,"%b",mcu_dout);
    end
end

assign	En_cnt = P2S_din_vld & P2S_dout_rdy;
	
counter #(.CNT_NUM(NUM/WIDTH),
		.ADD(1'b1))
counter_test(
.clk		(clk						),	
.rst_n		(rst_n						),
.En_cnt		(En_cnt						), //可以接收数据，开始给测试数据     
.cnt		(addr						),	
.cnt_last	(cnt_last					)
);
reg test_dout_vld;
always@(posedge clk or negedge rst_n)
	if(!rst_n)
		test_dout_vld <= 1'b1;
	else if(cnt_last & P2S_dout_rdy)
		test_dout_vld <= 1'b0;


assign P2S_din_vld = test_dout_vld;
assign P2S_din = P2S_din_vld ? test_data_byte[addr] : 'd0;

endmodule
