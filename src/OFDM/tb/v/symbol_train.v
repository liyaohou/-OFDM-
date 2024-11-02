`timescale 1ns / 1ps

module symbol_train(
																				input                   clk         	,
																				input                   rst_n       	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TREADY" *)	input					train_din_rdy	,//AXI Stream�ӿڵĶ�ȡ׼���ź�
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TDATA" *)	    output	reg	[15:0]		train_dout    	,//�������
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TVALID" *)	output	reg				train_dout_vld	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TLAST" *)	    output	reg				train_dout_last ,//������һ�����ݰ�	
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_train TUSER" *)	    output	reg	[8:0]		train_dout_Index //���˳������	
);

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

//STS_dout��LTS_doutѡ�������
//STS_dout��������֮��//�ϲ�STS_dout��LTS_dout����
always @(posedge clk or negedge rst_n) 
	if (!rst_n)begin
		train_dout <= 16'd0;
		train_dout_vld <= 1'b0;
	end
	else if(STS_dout_last & STS_dout_vld)begin//���STS�������,train_dout_index=160
		train_dout <= {STS_dout[15:8] + LTS_dout[15:8],STS_dout[7:0] + LTS_dout[7:0]};//�ϲ���ģ������
		train_dout_vld <= STS_dout_vld;
	end
	else if(STS_dout_vld)begin//�������STS
		train_dout <= STS_dout;
		train_dout_vld <= STS_dout_vld;
	end
	else if(LTS_dout_vld)begin//Ȼ�����LTS
		train_dout <= LTS_dout;
		train_dout_vld <= LTS_dout_vld;
	end
	else
		train_dout_vld <= 1'b0;

/*******************************************************************/
assign STS_din_rdy = train_din_rdy;//��׼������STS������
assign LTS_din_rdy = STS_dout_last | STS_dout_Index == 8'd159 & train_din_rdy;//STS�����֮�����LTS
/*******************************************************************/

//LTS�����ɴ���symbol_train������
//���������ʱһ�ģ�����Ȼ����
always @(posedge clk)begin 
	train_dout_last <= LTS_dout_last; 
	train_dout_Index <= STS_dout_Index + LTS_dout_Index;//0-320�������
end

STS u_STS(
.clk         	(clk         	),
.rst_n       	(rst_n       	),
.STS_din_rdy	(STS_din_rdy	),	
.STS_dout    	(STS_dout    	),
.STS_dout_vld	(STS_dout_vld	),
.STS_dout_last  (STS_dout_last  ),	
.STS_dout_Index	(STS_dout_Index	)
);

LTS u_LTS(
.clk         	(clk         	),
.rst_n       	(rst_n       	),
.LTS_din_rdy	(LTS_din_rdy	),
.LTS_dout    	(LTS_dout    	),
.LTS_dout_vld	(LTS_dout_vld	),
.LTS_dout_last  (LTS_dout_last  ),
.LTS_dout_Index	(LTS_dout_Index	)
);

endmodule

