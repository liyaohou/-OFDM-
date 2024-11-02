`timescale 1ns / 1ps

module pilot(
																				input				clk				,
																				input				rst_n       	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TUSER" *)		input		[5:0]	pilot_din_Index ,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TDATA" *)		input		[15:0]	pilot_din   	, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TVALID" *)	input				pilot_din_vld	, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TREADY" *)	input				pilot_din_rdy	, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TDATA" *)		output		[15:0]	pilot_dout    	, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TVALID" *)	output	reg			pilot_dout_vld	, 
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pilot TREADY" *)	output				pilot_dout_rdy	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_pilot TLAST" *)		output	reg			pilot_dout_last
);

reg					En_cnt		;
wire				cnt_last	;
reg     [6:0]   	shift_reg	;
wire            	scram_out 	;
reg					insert		;

wire				wr_en		;
wire				rd_en		;

reg					buffer_flag	;
reg					bufferA_full;
reg					bufferB_full;

reg					wea			;
reg		[15:0]		dina		;
reg		[6:0]		addra		;

wire 				enb			;
wire 	[6:0] 		addrb		;
wire 	[15:0] 		doutb		;
wire	[5:0]		r_cnt		;
wire				r_cnt_last	;

//---------------------------------valid-ready握手---------------------------------//
assign	wr_en	 = pilot_dout_rdy & pilot_din_vld ;//与上游握手成功，开始接收数�?
assign	rd_en	 = pilot_din_rdy & pilot_dout_vld ;//与下游握手成功，开始输�?
assign	pilot_dout_rdy = (~bufferA_full | ~bufferB_full) ? 1'b1 : 1'b0;
//assign	pilot_dout_vld = ( bufferA_full |  bufferB_full) ? 1'b1 : 1'b0;
always@(posedge clk or negedge rst_n ) begin
	if(!rst_n)
		pilot_dout_vld <= 1'b0;
	else if(bufferA_full | bufferB_full)
		pilot_dout_vld <= 1'b1;
	else
		pilot_dout_vld <= 1'b0;		
end

//------------buffer读写控制----------------//	
always@(posedge clk or negedge rst_n ) begin
	if(!rst_n)
		buffer_flag <= 1'b0;//0为A区，1为B�?
	else if(pilot_din_Index == 47)
		buffer_flag <= ~buffer_flag;//0为A区，1为B�?
end
//-----------buffer写满和�?�空控制------------//	
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		bufferA_full <= 1'b0;
	else if(pilot_din_Index == 47 & ~buffer_flag)
		bufferA_full <= 1'b1;
	else if(r_cnt_last & rd_en & bufferA_full)
		bufferA_full <= 1'b0;
end

always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		bufferB_full <= 1'b0;
	else if(pilot_din_Index == 47 & wr_en & buffer_flag)
		bufferB_full <= 1'b1;
	else if(r_cnt_last & rd_en & bufferB_full)
		bufferB_full <= 1'b0;
end

//导�?�极性控�?
counter #(.CNT_NUM(127),
		.ADD(1'b1))
u_counter(
	.clk		(clk				),	
	.rst_n		(rst_n				),
	.En_cnt		(En_cnt				),      
	.cnt		(cnt				),	
	.cnt_last	(cnt_last			)
);
always@(posedge clk or negedge rst_n ) begin
	if(!rst_n)
		En_cnt	<= 1'b0;
	else if(pilot_din_Index == 47)
		En_cnt <= 1'b1;
	else
		En_cnt <= 1'b0;
end

always@(posedge clk or negedge rst_n ) begin
	if(!rst_n) begin
		shift_reg <= 7'b111_1111; 
	end   
	else if( cnt_last ) begin 
		shift_reg <= 7'b111_1111; 
	end 
	else if( En_cnt  ) begin  
		shift_reg <= {shift_reg[5:0],(shift_reg[6]+shift_reg[3])}; //寄存器自移位
	end 
end
//�? scram_out== 0 时，不需要极性取反， �? scram_out==1 时，需要极性取反�?
assign scram_out = (shift_reg[6]+shift_reg[3]); 

//错序写入
always@(posedge clk or negedge rst_n ) begin
	if(!rst_n) begin
		insert <= 1; 
	end   
	else if( addra[5:0]==57 ) begin 
		insert <= 0; 
	end 
	else if( En_cnt) begin   
		insert <= 1;  
	end 
end

always@(posedge clk or negedge rst_n ) begin
	if(!rst_n) begin
		addra <= 0; 
		wea <= 0;
		dina <= 0;
	end 
	else if( wr_en ) begin //写入复数样�?
		addra[6] <= buffer_flag;
		case(pilot_din_Index)
			0,1,2,3,4 :						      
				addra[5:0] <= pilot_din_Index+38 ; 					 
			5,6,7,8,9,10,11,12,13,14,15,16,17 :
				addra[5:0] <= pilot_din_Index+39 ;
			18,19,20,21,22,23 : 
				addra[5:0] <= pilot_din_Index+40 ;
			24,25,26,27,28,29 :
				addra[5:0] <= pilot_din_Index-23 ; 
			30,31,32,33,34,35,36,37,38,39,40,41,42 :
				addra[5:0] <= pilot_din_Index-22 ;
			43,44,45,46,47 : 
				addra[5:0] <= pilot_din_Index-21 ;
		default:addra[5:0] <= 0;
		endcase
		dina <= pilot_din;
		wea <= 1;
	end
	else  if( insert ) begin  //插入导�??
		case(addra[5:0])  //      1,1,1,-1 >> 43  57   7  21 
			0  :begin
				addra[5:0] <= 7;
				dina <= scram_out ? 16'b00000000_11000000 : 16'b00000000_01000000;
				wea <= 1;
			end					 
			7  :begin
				addra[5:0] <= 21;
				dina <= scram_out ? 16'b00000000_01000000 : 16'b00000000_11000000;
				wea <= 1;
			end
			21 : begin
				addra[5:0] <= 43;
				dina <= scram_out ? 16'b00000000_11000000 : 16'b00000000_01000000;
				wea <= 1;
			end
			43 :begin
				addra[5:0] <= 57;
				dina <= scram_out ? 16'b00000000_11000000 : 16'b00000000_01000000;
				wea <= 1;
			end 
			57 :begin
				addra[5:0] <= 0; 
				wea <= 0;
			end 
		default: begin 
				addra[5:0] <= 0;
				wea <= 0;
		end
		endcase
	end
	else  begin
            addra[6] <= buffer_flag;
            wea <= 0;
            addra[5:0] <= 0;
    end
end



pilot_ram u_pilot_ram (
  .clka(clk),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [6 : 0] addra
  .dina(dina),    // input wire [15 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(enb),      // input wire enb
  .addrb(addrb),  // input wire [6 : 0] addrb
  .doutb(doutb)  // output wire [15 : 0] doutb
);


//------buffer读出操作，按照顺序地址读出---------//
counter #(.CNT_NUM('d64),
		.ADD(1'b1))
u_counter_r(
.clk		(clk				),	
.rst_n		(rst_n				),
.En_cnt		(enb				),    
.cnt		(r_cnt				),	
.cnt_last	(r_cnt_last			)
);

assign addrb = {~buffer_flag,r_cnt};
assign enb = ( bufferA_full |  bufferB_full) ? 1'b1 : 1'b0;
assign pilot_dout = doutb;

always@(posedge clk or negedge rst_n ) 
	if(!rst_n) 
		pilot_dout_last <= 1'b0;
	else
		pilot_dout_last <= r_cnt_last;
endmodule
