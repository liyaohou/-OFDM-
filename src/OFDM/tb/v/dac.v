`timescale 1ns / 1ps

//����˳������ǰ���룬signal��data���˳�����
module dac(
																				input				clk					,
																				input				clk_dac				,
																				input				rst_n       		,			
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TDATA" *)	input	[15:0]		dac_ifft_din   		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TVALID" *)	input				dac_ifft_din_vld	,	
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TLAST" *)	input				dac_ifft_din_last   ,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TUSER" *)	input	[7:0]		dac_ifft_din_Index	,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ifft_dac TREADY" *)	output				dac_ifft_dout_rdy	,//�ȴ�ifft��������
	
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TDATA" *)	input	[15:0]		dac_train_din    	,//ѵ������
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TVALID" *)input				dac_train_din_vld	,//ѵ��������Ч��Ϣ
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TLAST" *)	input				dac_train_din_last 	,//ѵ���������һ��
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TUSER" *)	input	[8:0]		dac_train_din_Index	,//ѵ��������������
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_train_dac TREADY" *)output				dac_train_dout_rdy	,//�ȴ�ѵ����������
  
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TREADY" *)  	input				dac_din_rdy			,//���������ź�
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TDATA" *)		output	[15:0]dac_dout    		,//���16λ���ݣ�������ʱ20Mbit
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TVALID" *)		output			dac_dout_vld		,//�����Ч
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TLAST" *)		output				dac_dout_last  		,//���һλ����
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_dac TUSER" *)		output	[8:0]	dac_dout_Index , 	 //�������

                                                                            input         mcu_config,
                                                                            output         mcu_config_r

);

//fifo
wire 			s_axis_tvalid       ;
wire 			s_axis_tready       ;
wire 	[15:0] 	s_axis_tdata        ;
wire 			s_axis_tlast        ;
wire 	[8:0] 	s_axis_tuser        ;
wire 			m_axis_tvalid       ;
wire 			m_axis_tready       ;
wire 	[15:0] 	m_axis_tdata        ;
wire 			m_axis_tlast        ;
wire 	[8:0] 	m_axis_tuser        ;

wire			dac_train_din_last_edge_pluse;//���һ�����ݸյ���
//���ѵ�����������ϱ�־��������
edge_detection #(.POSEDGE(1'b1))
u_edge_detection (
.clk			(clk							),	
.edge_din	    (dac_train_din_last				),
.edge_pluse     (dac_train_din_last_edge_pluse	)
);

//��������ѵ�����к���ѵ���������һλ�յ���ʱ
//ѵ���������һ�������signal���һ�������ӣ�����ǰ�涼����������һλ���˴�ֻ����ӣ������Ӵ�������
//��û�����ѵ������,�����ѵ������
assign	s_axis_tdata	= dac_train_din_last ? dac_train_din_last_edge_pluse ?	
							{dac_ifft_din[15:8] + dac_train_din[15:8],
							dac_ifft_din[7:0] + dac_train_din[7:0]}: 
							dac_ifft_din	: dac_train_din 	 	;

              // always@(*) begin
              //   if(dac_train_din_last & dac_train_din_last_edge_pluse)
              //       s_axis_tdata <= {dac_ifft_din[15:8] + dac_train_din[15:8],dac_ifft_din[7:0] + dac_train_din[7:0]};
              //   else if(dac_train_din_last & ~dac_train_din_last_edge_pluse)   
              //       s_axis_tdata <= dac_ifft_din;
              //   else if (~dac_train_din_last   )  
              //       s_axis_tdata <= dac_train_din;
              // end



//dac_train_din_lastΪѵ�����������ϱ�־��Ϊ��ʱ��ѡ��ѵ�����������Ϊ��ʱ��ѡ��ifft����������ʵ��ʱ����֡							
assign	s_axis_tvalid	= dac_train_din_last ? 	dac_ifft_din_vld	: dac_train_din_vld		 ;
assign	s_axis_tlast	= dac_train_din_last ? 	dac_ifft_din_last	: dac_train_din_last 	 ;
assign	s_axis_tuser	= dac_train_din_last ? 	dac_ifft_din_Index	: dac_train_din_Index	 ;


// wire mcu_config_r;
assign mcu_config_r = mcu_config ? 1: mcu_config_r;

assign	dac_ifft_dout_rdy  = dac_train_din_last ? s_axis_tready : 1'b0;
// assign	dac_train_dout_rdy = dac_train_din_last ? 1'b0 : s_axis_tready;
assign	dac_train_dout_rdy = (dac_train_din_last | ~mcu_config_r )? 1'b0 : s_axis_tready;

fifo_generator_1 u_fifo (
  .io_push_valid		        (s_axis_tvalid	),  // input  wire s_axis_tvalid
  .io_push_ready		        (s_axis_tready	),  // output wire s_axis_tready
  .io_push_payload_data			(s_axis_tdata	),  // input  wire [15 : 0] s_axis_tdata
  .io_push_payload_last			(s_axis_tlast	),  // input  wire s_axis_tlast
  .io_push_payload_user			(s_axis_tuser	),  // input  wire [7 : 0] s_axis_tuser
  .io_pop_valid		          (m_axis_tvalid	),  // output wire m_axis_tvalid
  .io_pop_ready		          (m_axis_tready	),  // input  wire m_axis_tready
  .io_pop_payload_data			(m_axis_tdata	),  // output wire [15 : 0] m_axis_tdata
  .io_pop_payload_last			(m_axis_tlast	),  // output wire m_axis_tlast
  .io_pop_payload_user			(m_axis_tuser	),   // output wire [7 : 0] m_axis_tuser
  .clk2			    	          (clk_dac		),  // input  wire m_aclk
  .clk1			     	          (clk			),  // input  wire s_aclk
  .rstN1		  	            (rst_n			)  // input  wire s_aresetn
);

assign	m_axis_tready	 =	dac_din_rdy		;//
assign	dac_dout    	 =	m_axis_tdata	;//�ı�������
assign	dac_dout_vld	 =	m_axis_tvalid   ;
assign	dac_dout_last  	 =	m_axis_tlast    ;
assign	dac_dout_Index   =	m_axis_tuser    ;


endmodule

module fifo_generator_1 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [15:0]   io_push_payload_data,
  input  wire          io_push_payload_last,
  input  wire [1:0]    io_push_payload_user,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [15:0]   io_pop_payload_data,
  output wire          io_pop_payload_last,
  output reg  [1:0]    io_pop_payload_user,
  output wire [9:0]    io_pushOccupancy,
  output wire [9:0]    io_popOccupancy,
  input  wire          clk1,
  input  wire          rstN1,
  input  wire          clk2
);

  reg        [18:0]   ram_spinal_port1;
  wire       [9:0]    popToPushGray_buffercc_io_dataOut;
  wire                toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut;
  wire       [9:0]    pushToPopGray_buffercc_io_dataOut;
  wire       [9:0]    _zz_pushCC_pushPtrGray;
  wire       [8:0]    _zz_ram_port;
  wire       [18:0]   _zz_ram_port_1;
  wire                _zz_io_pushOccupancy_9;
  wire       [9:0]    _zz_popCC_popPtrGray;
  wire                _zz_io_popOccupancy_9;
  reg                 _zz_1;
  wire       [9:0]    popToPushGray;
  wire       [9:0]    pushToPopGray;
  reg        [9:0]    pushCC_pushPtr;
  wire       [9:0]    pushCC_pushPtrPlus;
  wire                io_push_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [9:0]    pushCC_pushPtrGray;
  wire       [9:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                _zz_io_pushOccupancy;
  wire                _zz_io_pushOccupancy_1;
  wire                _zz_io_pushOccupancy_2;
  wire                _zz_io_pushOccupancy_3;
  wire                _zz_io_pushOccupancy_4;
  wire                _zz_io_pushOccupancy_5;
  wire                _zz_io_pushOccupancy_6;
  wire                _zz_io_pushOccupancy_7;
  wire                _zz_io_pushOccupancy_8;
  wire                toplevel_rstN1_asyncAssertSyncDeassert;
  wire                toplevel_rstN1_synchronized;
  reg        [9:0]    popCC_popPtr;
  (* keep , syn_keep *) wire       [9:0]    popCC_popPtrPlus /* synthesis syn_keep = 1 */ ;
  wire       [9:0]    popCC_popPtrGray;
  wire       [9:0]    popCC_pushPtrGray;
  wire                popCC_addressGen_valid;
  reg                 popCC_addressGen_ready;
  wire       [8:0]    popCC_addressGen_payload;
  wire                popCC_empty;
  wire                popCC_addressGen_fire;
  wire                popCC_readArbitation_valid;
  wire                popCC_readArbitation_ready;
  wire       [8:0]    popCC_readArbitation_payload;
  reg                 popCC_addressGen_rValid;
  reg        [8:0]    popCC_addressGen_rData;
  wire                when_Stream_l393;
  wire                popCC_readPort_cmd_valid;
  wire       [8:0]    popCC_readPort_cmd_payload;
  wire       [15:0]   popCC_readPort_rsp_data;
  wire                popCC_readPort_rsp_last;
  reg        [1:0]    popCC_readPort_rsp_user;
  wire       [1:0]    _zz_popCC_readPort_rsp_user;
  wire       [18:0]   _zz_popCC_readPort_rsp_data;
  wire                popCC_readArbitation_translated_valid;
  wire                popCC_readArbitation_translated_ready;
  wire       [15:0]   popCC_readArbitation_translated_payload_data;
  wire                popCC_readArbitation_translated_payload_last;
  reg        [1:0]    popCC_readArbitation_translated_payload_user;
  wire                popCC_readArbitation_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [9:0]    popCC_ptrToPush;
  reg        [9:0]    popCC_ptrToOccupancy;
  wire                _zz_io_popOccupancy;
  wire                _zz_io_popOccupancy_1;
  wire                _zz_io_popOccupancy_2;
  wire                _zz_io_popOccupancy_3;
  wire                _zz_io_popOccupancy_4;
  wire                _zz_io_popOccupancy_5;
  wire                _zz_io_popOccupancy_6;
  wire                _zz_io_popOccupancy_7;
  wire                _zz_io_popOccupancy_8;
  reg [18:0] ram [0:511];

  assign _zz_pushCC_pushPtrGray = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_ram_port = pushCC_pushPtr[8:0];
  assign _zz_popCC_popPtrGray = (popCC_popPtr >>> 1'b1);
  assign _zz_ram_port_1 = {io_push_payload_user,{io_push_payload_last,io_push_payload_data}};
  assign _zz_io_pushOccupancy_9 = (pushCC_popPtrGray[0] ^ _zz_io_pushOccupancy);
  assign _zz_io_popOccupancy_9 = (popCC_pushPtrGray[0] ^ _zz_io_popOccupancy);
  always @(posedge clk1) begin
    if(_zz_1) begin
      ram[_zz_ram_port] <= _zz_ram_port_1;
    end
  end

  always @(posedge clk2) begin
    if(popCC_readPort_cmd_valid) begin
      ram_spinal_port1 <= ram[popCC_readPort_cmd_payload];
    end
  end

  (* keep_hierarchy = "TRUE" *) BufferCC_dac popToPushGray_buffercc (
    .io_dataIn  (popToPushGray[9:0]                    ), //i
    .io_dataOut (popToPushGray_buffercc_io_dataOut[9:0]), //o
    .clk1       (clk1                                  ), //i
    .rstN1      (rstN1                                 )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_dac1 toplevel_rstN1_asyncAssertSyncDeassert_buffercc (
    .io_dataIn  (toplevel_rstN1_asyncAssertSyncDeassert                    ), //i
    .io_dataOut (toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut), //o
    .clk2       (clk2                                                      ), //i
    .rstN1      (rstN1                                                     )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_dac2 pushToPopGray_buffercc (
    .io_dataIn                   (pushToPopGray[9:0]                    ), //i
    .io_dataOut                  (pushToPopGray_buffercc_io_dataOut[9:0]), //o
    .clk2                        (clk2                                  ), //i
    .toplevel_rstN1_synchronized (toplevel_rstN1_synchronized           )  //i
  );
  always @(*) begin
    _zz_1 = 1'b0;
    if(io_push_fire) begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 10'h001);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[9 : 8] == (~ pushCC_popPtrGray[9 : 8])) && (pushCC_pushPtrGray[7 : 0] == pushCC_popPtrGray[7 : 0]));
  assign io_push_ready = (! pushCC_full);
  assign _zz_io_pushOccupancy = (pushCC_popPtrGray[1] ^ _zz_io_pushOccupancy_1);
  assign _zz_io_pushOccupancy_1 = (pushCC_popPtrGray[2] ^ _zz_io_pushOccupancy_2);
  assign _zz_io_pushOccupancy_2 = (pushCC_popPtrGray[3] ^ _zz_io_pushOccupancy_3);
  assign _zz_io_pushOccupancy_3 = (pushCC_popPtrGray[4] ^ _zz_io_pushOccupancy_4);
  assign _zz_io_pushOccupancy_4 = (pushCC_popPtrGray[5] ^ _zz_io_pushOccupancy_5);
  assign _zz_io_pushOccupancy_5 = (pushCC_popPtrGray[6] ^ _zz_io_pushOccupancy_6);
  assign _zz_io_pushOccupancy_6 = (pushCC_popPtrGray[7] ^ _zz_io_pushOccupancy_7);
  assign _zz_io_pushOccupancy_7 = (pushCC_popPtrGray[8] ^ _zz_io_pushOccupancy_8);
  assign _zz_io_pushOccupancy_8 = pushCC_popPtrGray[9];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_io_pushOccupancy_8,{_zz_io_pushOccupancy_7,{_zz_io_pushOccupancy_6,{_zz_io_pushOccupancy_5,{_zz_io_pushOccupancy_4,{_zz_io_pushOccupancy_3,{_zz_io_pushOccupancy_2,{_zz_io_pushOccupancy_1,{_zz_io_pushOccupancy,_zz_io_pushOccupancy_9}}}}}}}}});
  assign toplevel_rstN1_asyncAssertSyncDeassert = (1'b1 ^ 1'b0);
  assign toplevel_rstN1_synchronized = toplevel_rstN1_asyncAssertSyncDeassert_buffercc_io_dataOut;
  assign popCC_popPtrPlus = (popCC_popPtr + 10'h001);
  assign popCC_popPtrGray = (_zz_popCC_popPtrGray ^ popCC_popPtr);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign popCC_addressGen_valid = (! popCC_empty);
  assign popCC_addressGen_payload = popCC_popPtr[8:0];
  assign popCC_addressGen_fire = (popCC_addressGen_valid && popCC_addressGen_ready);
  always @(*) begin
    popCC_addressGen_ready = popCC_readArbitation_ready;
    if(when_Stream_l393) begin
      popCC_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! popCC_readArbitation_valid);
  assign popCC_readArbitation_valid = popCC_addressGen_rValid;
  assign popCC_readArbitation_payload = popCC_addressGen_rData;
  assign _zz_popCC_readPort_rsp_data = ram_spinal_port1;
  assign _zz_popCC_readPort_rsp_user = _zz_popCC_readPort_rsp_data[18 : 17];
  assign popCC_readPort_rsp_data = _zz_popCC_readPort_rsp_data[15 : 0];
  assign popCC_readPort_rsp_last = _zz_popCC_readPort_rsp_data[16];
  always @(*) begin
    popCC_readPort_rsp_user[0 : 0] = _zz_popCC_readPort_rsp_user[0 : 0];
    popCC_readPort_rsp_user[1 : 1] = _zz_popCC_readPort_rsp_user[1 : 1];
  end

  assign popCC_readPort_cmd_valid = popCC_addressGen_fire;
  assign popCC_readPort_cmd_payload = popCC_addressGen_payload;
  assign popCC_readArbitation_translated_valid = popCC_readArbitation_valid;
  assign popCC_readArbitation_ready = popCC_readArbitation_translated_ready;
  assign popCC_readArbitation_translated_payload_data = popCC_readPort_rsp_data;
  assign popCC_readArbitation_translated_payload_last = popCC_readPort_rsp_last;
  always @(*) begin
    popCC_readArbitation_translated_payload_user[0 : 0] = popCC_readPort_rsp_user[0 : 0];
    popCC_readArbitation_translated_payload_user[1 : 1] = popCC_readPort_rsp_user[1 : 1];
  end

  assign io_pop_valid = popCC_readArbitation_translated_valid;
  assign popCC_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_data = popCC_readArbitation_translated_payload_data;
  assign io_pop_payload_last = popCC_readArbitation_translated_payload_last;
  always @(*) begin
    io_pop_payload_user[0 : 0] = popCC_readArbitation_translated_payload_user[0 : 0];
    io_pop_payload_user[1 : 1] = popCC_readArbitation_translated_payload_user[1 : 1];
  end

  assign popCC_readArbitation_fire = (popCC_readArbitation_valid && popCC_readArbitation_ready);
  assign _zz_io_popOccupancy = (popCC_pushPtrGray[1] ^ _zz_io_popOccupancy_1);
  assign _zz_io_popOccupancy_1 = (popCC_pushPtrGray[2] ^ _zz_io_popOccupancy_2);
  assign _zz_io_popOccupancy_2 = (popCC_pushPtrGray[3] ^ _zz_io_popOccupancy_3);
  assign _zz_io_popOccupancy_3 = (popCC_pushPtrGray[4] ^ _zz_io_popOccupancy_4);
  assign _zz_io_popOccupancy_4 = (popCC_pushPtrGray[5] ^ _zz_io_popOccupancy_5);
  assign _zz_io_popOccupancy_5 = (popCC_pushPtrGray[6] ^ _zz_io_popOccupancy_6);
  assign _zz_io_popOccupancy_6 = (popCC_pushPtrGray[7] ^ _zz_io_popOccupancy_7);
  assign _zz_io_popOccupancy_7 = (popCC_pushPtrGray[8] ^ _zz_io_popOccupancy_8);
  assign _zz_io_popOccupancy_8 = popCC_pushPtrGray[9];
  assign io_popOccupancy = ({_zz_io_popOccupancy_8,{_zz_io_popOccupancy_7,{_zz_io_popOccupancy_6,{_zz_io_popOccupancy_5,{_zz_io_popOccupancy_4,{_zz_io_popOccupancy_3,{_zz_io_popOccupancy_2,{_zz_io_popOccupancy_1,{_zz_io_popOccupancy,_zz_io_popOccupancy_9}}}}}}}}} - popCC_ptrToOccupancy);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_ptrToPush;
  always @(posedge clk1 or negedge rstN1) begin
    if(!rstN1) begin
      pushCC_pushPtr <= 10'h0;
      pushCC_pushPtrGray <= 10'h0;
    end else begin
      if(io_push_fire) begin
        pushCC_pushPtrGray <= (_zz_pushCC_pushPtrGray ^ pushCC_pushPtrPlus);
      end
      if(io_push_fire) begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @(posedge clk2 or negedge toplevel_rstN1_synchronized) begin
    if(!toplevel_rstN1_synchronized) begin
      popCC_popPtr <= 10'h0;
      popCC_addressGen_rValid <= 1'b0;
      popCC_ptrToPush <= 10'h0;
      popCC_ptrToOccupancy <= 10'h0;
    end else begin
      if(popCC_addressGen_fire) begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
      if(popCC_addressGen_ready) begin
        popCC_addressGen_rValid <= popCC_addressGen_valid;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToPush <= popCC_popPtrGray;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToOccupancy <= popCC_popPtr;
      end
    end
  end

  always @(posedge clk2) begin
    if(popCC_addressGen_ready) begin
      popCC_addressGen_rData <= popCC_addressGen_payload;
    end
  end


endmodule

module BufferCC_dac2 (
  input  wire [9:0]    io_dataIn,
  output wire [9:0]    io_dataOut,
  input  wire          clk2,
  input  wire          toplevel_rstN1_synchronized
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [9:0]    buffers_0;
  (* async_reg = "true" *) reg        [9:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk2 or negedge toplevel_rstN1_synchronized) begin
    if(!toplevel_rstN1_synchronized) begin
      buffers_0 <= 10'h0;
      buffers_1 <= 10'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_dac1 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          clk2,
  input  wire          rstN1
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk2 or negedge rstN1) begin
    if(!rstN1) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_dac (
  input  wire [9:0]    io_dataIn,
  output wire [9:0]    io_dataOut,
  input  wire          clk1,
  input  wire          rstN1
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [9:0]    buffers_0;
  (* async_reg = "true" *) reg        [9:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk1 or negedge rstN1) begin
    if(!rstN1) begin
      buffers_0 <= 10'h0;
      buffers_1 <= 10'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

