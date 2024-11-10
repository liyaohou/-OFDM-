// Generator : SpinalHDL dev    git head : 102fc4034eb8f1ce3b4c7bcc2086e352bb227afd
// Component : DataRestore
// Git hash  : 53ca27853f395a62558e91c1f18cac97282d67b2

`timescale 1ns/1ps

module DataRestore (
  input  wire          io_inputDataEn,
  input  wire [7:0]    io_inputDataR,
  input  wire [7:0]    io_inputDataI,
  input  wire [7:0]    io_inputSymbol,
  output wire          io_axisOut_valid,
  input  wire          io_axisOut_ready,
  output wire [7:0]    io_axisOut_payload_data,
  output wire          io_axisOut_payload_last,
  output wire [0:0]    io_axisOut_payload_user,
  input  wire          Rst_n,
  input  wire          CLK
);

  wire                decode_1_descram_din_rdy;
  wire                channel_Equalizer_1_DataOutEnable;
  wire       [9:0]    channel_Equalizer_1_DataOutRe;
  wire       [9:0]    channel_Equalizer_1_DataOutIm;
  wire       [7:0]    channel_Equalizer_1_DataOutSymbol;
  wire                channel_Equalizer_1_EnergyEnable;
  wire       [9:0]    channel_Equalizer_1_Energy;
  wire                interim_function_1_outputDataEn;
  wire       [9:0]    interim_function_1_outputDataR;
  wire       [9:0]    interim_function_1_outputDataI;
  wire       [7:0]    interim_function_1_outputSymbol;
  wire                qam_Demodulate_1_io_outputData_valid;
  wire       [0:0]    qam_Demodulate_1_io_outputData_payload;
  wire       [7:0]    qam_Demodulate_1_io_outputSymbol;
  wire                decode_1_deintv2_dout_rdy;
  wire                decode_1_descram_dout_vld;
  wire       [0:0]    decode_1_descram_dout;
  wire       [7:0]    decode_1_descram_dout_symb_cnt;
  wire       [2:0]    _zz__zz_tempStream_valid_1;
  wire       [0:0]    _zz__zz_tempStream_valid_1_1;
  wire       [5:0]    _zz__zz_tempStream_payload;
  wire                tempStream_valid;
  wire                tempStream_ready;
  wire       [7:0]    tempStream_payload;
  wire                descram_fire;
  reg                 _zz_tempStream_valid;
  reg        [2:0]    _zz_tempStream_valid_1;
  reg        [2:0]    _zz_tempStream_valid_2;
  wire                _zz_tempStream_valid_3;
  reg        [6:0]    _zz_tempStream_payload;

  assign _zz__zz_tempStream_valid_1_1 = _zz_tempStream_valid;
  assign _zz__zz_tempStream_valid_1 = {2'd0, _zz__zz_tempStream_valid_1_1};
  assign _zz__zz_tempStream_payload = (_zz_tempStream_payload >>> 1'd1);
  Channel_Equalizer channel_Equalizer_1 (
    .DataInEnable  (io_inputDataEn                        ), //i
    .DataInRe      (io_inputDataR[7:0]                    ), //i
    .DataInIm      (io_inputDataI[7:0]                    ), //i
    .DataInSymbol  (io_inputSymbol[7:0]                   ), //i
    .DataOutEnable (channel_Equalizer_1_DataOutEnable     ), //o
    .DataOutRe     (channel_Equalizer_1_DataOutRe[9:0]    ), //o
    .DataOutIm     (channel_Equalizer_1_DataOutIm[9:0]    ), //o
    .DataOutSymbol (channel_Equalizer_1_DataOutSymbol[7:0]), //o
    .EnergyEnable  (channel_Equalizer_1_EnergyEnable      ), //o
    .Energy        (channel_Equalizer_1_Energy[9:0]       ), //o
    .CLK           (CLK                                   ), //i
    .Rst_n         (Rst_n                                 )  //i
  );
  Interim_function interim_function_1 (
    .inputDataEn  (channel_Equalizer_1_DataOutEnable     ), //i
    .inputDataR   (channel_Equalizer_1_DataOutRe[9:0]    ), //i
    .inputDataI   (channel_Equalizer_1_DataOutIm[9:0]    ), //i
    .inputSymbol  (channel_Equalizer_1_DataOutSymbol[7:0]), //i
    .outputDataEn (interim_function_1_outputDataEn       ), //o
    .outputDataR  (interim_function_1_outputDataR[9:0]   ), //o
    .outputDataI  (interim_function_1_outputDataI[9:0]   ), //o
    .outputSymbol (interim_function_1_outputSymbol[7:0]  ), //o
    .CLK          (CLK                                   ), //i
    .Rst_n        (Rst_n                                 )  //i
  );
  QAM_Demodulate qam_Demodulate_1 (
    .io_EnergyInEn         (channel_Equalizer_1_EnergyEnable      ), //i
    .io_Energy             (channel_Equalizer_1_Energy[9:0]       ), //i
    .io_inputDataEn        (interim_function_1_outputDataEn       ), //i
    .io_inputDataR         (interim_function_1_outputDataR[9:0]   ), //i
    .io_inputDataI         (interim_function_1_outputDataI[9:0]   ), //i
    .io_inputSymbol        (interim_function_1_outputSymbol[7:0]  ), //i
    .io_outputData_valid   (qam_Demodulate_1_io_outputData_valid  ), //o
    .io_outputData_ready   (decode_1_deintv2_dout_rdy             ), //i
    .io_outputData_payload (qam_Demodulate_1_io_outputData_payload), //o
    .io_outputSymbol       (qam_Demodulate_1_io_outputSymbol[7:0] ), //o
    .CLK                   (CLK                                   ), //i
    .Rst_n                 (Rst_n                                 )  //i
  );
  Decode decode_1 (
    .clk                   (CLK                                   ), //i
    .rst_n                 (Rst_n                                 ), //i
    .deintv2_din_vld       (qam_Demodulate_1_io_outputData_valid  ), //i
    .deintv2_dout_rdy      (decode_1_deintv2_dout_rdy             ), //o
    .deintv2_din           (qam_Demodulate_1_io_outputData_payload), //i
    .deintv2_din_symb_cnt  (qam_Demodulate_1_io_outputSymbol[7:0] ), //i
    .deintv2_din_Map_Type  (2'b00                                 ), //i
    .descram_dout_vld      (decode_1_descram_dout_vld             ), //o
    .descram_din_rdy       (decode_1_descram_din_rdy              ), //i
    .descram_dout          (decode_1_descram_dout                 ), //o
    .descram_dout_symb_cnt (decode_1_descram_dout_symb_cnt[7:0]   )  //o
  );
  assign descram_fire = (decode_1_descram_dout_vld && decode_1_descram_din_rdy);
  always @(*) begin
    _zz_tempStream_valid = 1'b0;
    if(descram_fire) begin
      _zz_tempStream_valid = 1'b1;
    end
  end

  assign _zz_tempStream_valid_3 = (_zz_tempStream_valid_2 == 3'b111);
  always @(*) begin
    _zz_tempStream_valid_1 = (_zz_tempStream_valid_2 + _zz__zz_tempStream_valid_1);
    if(1'b0) begin
      _zz_tempStream_valid_1 = 3'b000;
    end
  end

  assign tempStream_valid = (decode_1_descram_dout_vld && _zz_tempStream_valid_3);
  assign tempStream_payload = {decode_1_descram_dout,_zz_tempStream_payload};
  assign decode_1_descram_din_rdy = (! ((! tempStream_ready) && _zz_tempStream_valid_3));
  assign io_axisOut_valid = tempStream_valid;
  assign tempStream_ready = io_axisOut_ready;
  assign io_axisOut_payload_data = tempStream_payload;
  assign io_axisOut_payload_user = 1'b0;
  assign io_axisOut_payload_last = 1'b0;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      _zz_tempStream_valid_2 <= 3'b000;
    end else begin
      _zz_tempStream_valid_2 <= _zz_tempStream_valid_1;
    end
  end

  always @(posedge CLK) begin
    if(descram_fire) begin
      _zz_tempStream_payload <= {decode_1_descram_dout,_zz__zz_tempStream_payload};
    end
  end


endmodule

module QAM_Demodulate (
  input  wire          io_EnergyInEn,
  input  wire [9:0]    io_Energy,
  input  wire          io_inputDataEn,
  input  wire [9:0]    io_inputDataR,
  input  wire [9:0]    io_inputDataI,
  input  wire [7:0]    io_inputSymbol,
  output wire          io_outputData_valid,
  input  wire          io_outputData_ready,
  output wire [0:0]    io_outputData_payload,
  output wire [7:0]    io_outputSymbol,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                fifo_io_pop_ready;
  wire                threshold_Adjusting_1_EnergyOutEn;
  wire       [13:0]   threshold_Adjusting_1_EnergyPos;
  wire       [13:0]   threshold_Adjusting_1_EnergyNeg;
  wire                qam16_Demapping_1_outputDataEn;
  wire       [3:0]    qam16_Demapping_1_outDataDemod;
  wire       [7:0]    qam16_Demapping_1_outputSymbol;
  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [3:0]    fifo_io_pop_payload;
  wire       [6:0]    fifo_io_occupancy;
  wire       [6:0]    fifo_io_availability;
  wire       [1:0]    _zz__zz_io_outputData_payload_1;
  wire       [0:0]    _zz__zz_io_outputData_payload_1_1;
  reg        [0:0]    _zz_io_outputData_payload_4;
  wire                io_outputData_fire;
  reg                 _zz_io_outputData_payload;
  reg        [1:0]    _zz_io_outputData_payload_1;
  reg        [1:0]    _zz_io_outputData_payload_2;
  wire                _zz_io_pop_ready;
  wire       [3:0]    _zz_io_outputData_payload_3;
  wire                when_QAMDemodulate_l37;
  reg        [7:0]    qam16_Demapping_1_outputSymbol_regNextWhen;

  assign _zz__zz_io_outputData_payload_1_1 = _zz_io_outputData_payload;
  assign _zz__zz_io_outputData_payload_1 = {1'd0, _zz__zz_io_outputData_payload_1_1};
  Threshold_Adjusting threshold_Adjusting_1 (
    .EnergyInEn  (io_EnergyInEn                        ), //i
    .Energy      (io_Energy[9:0]                       ), //i
    .EnergyOutEn (threshold_Adjusting_1_EnergyOutEn    ), //o
    .EnergyPos   (threshold_Adjusting_1_EnergyPos[13:0]), //o
    .EnergyNeg   (threshold_Adjusting_1_EnergyNeg[13:0]), //o
    .CLK         (CLK                                  ), //i
    .Rst_n       (Rst_n                                )  //i
  );
  QAM16_Demapping qam16_Demapping_1 (
    .EnergyInEn   (threshold_Adjusting_1_EnergyOutEn    ), //i
    .EnergyPos    (threshold_Adjusting_1_EnergyPos[13:0]), //i
    .EnergyNeg    (threshold_Adjusting_1_EnergyNeg[13:0]), //i
    .inputDataEn  (io_inputDataEn                       ), //i
    .inputDataR   (io_inputDataR[9:0]                   ), //i
    .inputDataI   (io_inputDataI[9:0]                   ), //i
    .inputSymbol  (io_inputSymbol[7:0]                  ), //i
    .outputDataEn (qam16_Demapping_1_outputDataEn       ), //o
    .outDataDemod (qam16_Demapping_1_outDataDemod[3:0]  ), //o
    .outputSymbol (qam16_Demapping_1_outputSymbol[7:0]  ), //o
    .CLK          (CLK                                  ), //i
    .Rst_n        (Rst_n                                )  //i
  );
  StreamFifoQAM_Demodulate fifo (
    .io_push_valid   (qam16_Demapping_1_outputDataEn     ), //i
    .io_push_ready   (fifo_io_push_ready                 ), //o
    .io_push_payload (qam16_Demapping_1_outDataDemod[3:0]), //i
    .io_pop_valid    (fifo_io_pop_valid                  ), //o
    .io_pop_ready    (fifo_io_pop_ready                  ), //i
    .io_pop_payload  (fifo_io_pop_payload[3:0]           ), //o
    .io_flush        (1'b0                               ), //i
    .io_occupancy    (fifo_io_occupancy[6:0]             ), //o
    .io_availability (fifo_io_availability[6:0]          ), //o
    .CLK             (CLK                                ), //i
    .Rst_n           (Rst_n                              )  //i
  );
  always @(*) begin
    case(_zz_io_outputData_payload_2)
      2'b00 : _zz_io_outputData_payload_4 = _zz_io_outputData_payload_3[0 : 0];
      2'b01 : _zz_io_outputData_payload_4 = _zz_io_outputData_payload_3[1 : 1];
      2'b10 : _zz_io_outputData_payload_4 = _zz_io_outputData_payload_3[2 : 2];
      default : _zz_io_outputData_payload_4 = _zz_io_outputData_payload_3[3 : 3];
    endcase
  end

  assign io_outputData_fire = (io_outputData_valid && io_outputData_ready);
  always @(*) begin
    _zz_io_outputData_payload = 1'b0;
    if(io_outputData_fire) begin
      _zz_io_outputData_payload = 1'b1;
    end
  end

  assign _zz_io_pop_ready = (_zz_io_outputData_payload_2 == 2'b11);
  always @(*) begin
    _zz_io_outputData_payload_1 = (_zz_io_outputData_payload_2 + _zz__zz_io_outputData_payload_1);
    if(1'b0) begin
      _zz_io_outputData_payload_1 = 2'b00;
    end
  end

  assign io_outputData_valid = fifo_io_pop_valid;
  assign _zz_io_outputData_payload_3 = fifo_io_pop_payload;
  assign io_outputData_payload = _zz_io_outputData_payload_4;
  assign fifo_io_pop_ready = (io_outputData_ready && _zz_io_pop_ready);
  assign when_QAMDemodulate_l37 = (! io_outputData_fire);
  assign io_outputSymbol = qam16_Demapping_1_outputSymbol_regNextWhen;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      _zz_io_outputData_payload_2 <= 2'b00;
      qam16_Demapping_1_outputSymbol_regNextWhen <= 8'h0;
    end else begin
      _zz_io_outputData_payload_2 <= _zz_io_outputData_payload_1;
      if(when_QAMDemodulate_l37) begin
        qam16_Demapping_1_outputSymbol_regNextWhen <= qam16_Demapping_1_outputSymbol;
      end
    end
  end


endmodule

module Interim_function (
  input  wire          inputDataEn,
  input  wire [9:0]    inputDataR,
  input  wire [9:0]    inputDataI,
  input  wire [7:0]    inputSymbol,
  output wire          outputDataEn,
  output wire [9:0]    outputDataR,
  output wire [9:0]    outputDataI,
  output wire [7:0]    outputSymbol,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                pilots_Picking_1_outputDataEn;
  wire       [9:0]    pilots_Picking_1_outputDataR;
  wire       [9:0]    pilots_Picking_1_outputDataI;
  wire       [7:0]    pilots_Picking_1_outputSymbol;
  wire                pilots_Picking_1_pilot_valid;
  wire                pilots_Picking_1_pilot_payload_last;
  wire       [9:0]    pilots_Picking_1_pilot_payload_fragment_Re;
  wire       [9:0]    pilots_Picking_1_pilot_payload_fragment_Im;
  wire       [3:0]    pilots_Picking_1_pilot_payload_fragment_Index;
  wire                order_Rechanged_1_outputDataEn;
  wire       [9:0]    order_Rechanged_1_outputDataR;
  wire       [9:0]    order_Rechanged_1_outputDataI;
  wire       [7:0]    order_Rechanged_1_outputSymbol;
  wire                remove_Pilots_1_outputDataEn;
  wire       [9:0]    remove_Pilots_1_outputDataR;
  wire       [9:0]    remove_Pilots_1_outputDataI;
  wire       [7:0]    remove_Pilots_1_outputSymbol;

  Pilots_Picking pilots_Picking_1 (
    .inputDataEn                  (inputDataEn                                       ), //i
    .inputDataR                   (inputDataR[9:0]                                   ), //i
    .inputDataI                   (inputDataI[9:0]                                   ), //i
    .inputSymbol                  (inputSymbol[7:0]                                  ), //i
    .outputDataEn                 (pilots_Picking_1_outputDataEn                     ), //o
    .outputDataR                  (pilots_Picking_1_outputDataR[9:0]                 ), //o
    .outputDataI                  (pilots_Picking_1_outputDataI[9:0]                 ), //o
    .outputSymbol                 (pilots_Picking_1_outputSymbol[7:0]                ), //o
    .pilot_valid                  (pilots_Picking_1_pilot_valid                      ), //o
    .pilot_ready                  (1'b1                                              ), //i
    .pilot_payload_last           (pilots_Picking_1_pilot_payload_last               ), //o
    .pilot_payload_fragment_Re    (pilots_Picking_1_pilot_payload_fragment_Re[9:0]   ), //o
    .pilot_payload_fragment_Im    (pilots_Picking_1_pilot_payload_fragment_Im[9:0]   ), //o
    .pilot_payload_fragment_Index (pilots_Picking_1_pilot_payload_fragment_Index[3:0]), //o
    .CLK                          (CLK                                               ), //i
    .Rst_n                        (Rst_n                                             )  //i
  );
  Order_Rechanged order_Rechanged_1 (
    .inputDataEn  (pilots_Picking_1_outputDataEn      ), //i
    .inputDataR   (pilots_Picking_1_outputDataR[9:0]  ), //i
    .inputDataI   (pilots_Picking_1_outputDataI[9:0]  ), //i
    .inputSymbol  (pilots_Picking_1_outputSymbol[7:0] ), //i
    .outputDataEn (order_Rechanged_1_outputDataEn     ), //o
    .outputDataR  (order_Rechanged_1_outputDataR[9:0] ), //o
    .outputDataI  (order_Rechanged_1_outputDataI[9:0] ), //o
    .outputSymbol (order_Rechanged_1_outputSymbol[7:0]), //o
    .CLK          (CLK                                ), //i
    .Rst_n        (Rst_n                              )  //i
  );
  Remove_Pilots remove_Pilots_1 (
    .inputDataEn  (order_Rechanged_1_outputDataEn     ), //i
    .inputDataR   (order_Rechanged_1_outputDataR[9:0] ), //i
    .inputDataI   (order_Rechanged_1_outputDataI[9:0] ), //i
    .inputSymbol  (order_Rechanged_1_outputSymbol[7:0]), //i
    .outputDataEn (remove_Pilots_1_outputDataEn       ), //o
    .outputDataR  (remove_Pilots_1_outputDataR[9:0]   ), //o
    .outputDataI  (remove_Pilots_1_outputDataI[9:0]   ), //o
    .outputSymbol (remove_Pilots_1_outputSymbol[7:0]  ), //o
    .CLK          (CLK                                ), //i
    .Rst_n        (Rst_n                              )  //i
  );
  assign outputDataEn = remove_Pilots_1_outputDataEn;
  assign outputDataR = remove_Pilots_1_outputDataR;
  assign outputDataI = remove_Pilots_1_outputDataI;
  assign outputSymbol = remove_Pilots_1_outputSymbol;

endmodule

module Channel_Equalizer (
  input  wire          DataInEnable,
  input  wire [7:0]    DataInRe,
  input  wire [7:0]    DataInIm,
  input  wire [7:0]    DataInSymbol,
  output wire          DataOutEnable,
  output wire [9:0]    DataOutRe,
  output wire [9:0]    DataOutIm,
  output wire [7:0]    DataOutSymbol,
  output wire          EnergyEnable,
  output wire [9:0]    Energy,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                ltp_picking_1_DataOutEnable;
  wire                ltp_picking_1_AveLongTrainingEnable;
  wire       [7:0]    ltp_picking_1_DataOutSymbol;
  wire       [7:0]    ltp_picking_1_DataOutRe;
  wire       [7:0]    ltp_picking_1_DataOutIm;
  wire       [7:0]    ltp_picking_1_AveLongTrainingRe;
  wire       [7:0]    ltp_picking_1_AveLongTrainingIm;
  wire                channelEstimating_1_ChannelCoefEnable;
  wire       [7:0]    channelEstimating_1_ChannelCoefRe;
  wire       [7:0]    channelEstimating_1_ChannelCoefIm;
  wire                energyComputation_1_io_EnergyEnable;
  wire       [9:0]    energyComputation_1_io_Energy;
  wire                channelCompensation_1_DataOutEnable;
  wire       [9:0]    channelCompensation_1_DataOutRe;
  wire       [9:0]    channelCompensation_1_DataOutIm;
  wire       [7:0]    channelCompensation_1_DataOutSymbol;

  LTP_Picking ltp_picking_1 (
    .DataInEnable          (DataInEnable                        ), //i
    .DataOutEnable         (ltp_picking_1_DataOutEnable         ), //o
    .AveLongTrainingEnable (ltp_picking_1_AveLongTrainingEnable ), //o
    .DataInSymbol          (DataInSymbol[7:0]                   ), //i
    .DataOutSymbol         (ltp_picking_1_DataOutSymbol[7:0]    ), //o
    .DataInRe              (DataInRe[7:0]                       ), //i
    .DataInIm              (DataInIm[7:0]                       ), //i
    .DataOutRe             (ltp_picking_1_DataOutRe[7:0]        ), //o
    .DataOutIm             (ltp_picking_1_DataOutIm[7:0]        ), //o
    .AveLongTrainingRe     (ltp_picking_1_AveLongTrainingRe[7:0]), //o
    .AveLongTrainingIm     (ltp_picking_1_AveLongTrainingIm[7:0]), //o
    .CLK                   (CLK                                 ), //i
    .Rst_n                 (Rst_n                               )  //i
  );
  ChannelEstimating channelEstimating_1 (
    .AveLongTrainingEnable (ltp_picking_1_AveLongTrainingEnable   ), //i
    .AveLongTrainingRe     (ltp_picking_1_AveLongTrainingRe[7:0]  ), //i
    .AveLongTrainingIm     (ltp_picking_1_AveLongTrainingIm[7:0]  ), //i
    .ChannelCoefEnable     (channelEstimating_1_ChannelCoefEnable ), //o
    .ChannelCoefRe         (channelEstimating_1_ChannelCoefRe[7:0]), //o
    .ChannelCoefIm         (channelEstimating_1_ChannelCoefIm[7:0]), //o
    .CLK                   (CLK                                   ), //i
    .Rst_n                 (Rst_n                                 )  //i
  );
  EnergyComputation energyComputation_1 (
    .io_AveLongTrainingEnable (ltp_picking_1_AveLongTrainingEnable ), //i
    .io_AveLongTrainingRe     (ltp_picking_1_AveLongTrainingRe[7:0]), //i
    .io_AveLongTrainingIm     (ltp_picking_1_AveLongTrainingIm[7:0]), //i
    .io_EnergyEnable          (energyComputation_1_io_EnergyEnable ), //o
    .io_Energy                (energyComputation_1_io_Energy[9:0]  ), //o
    .CLK                      (CLK                                 ), //i
    .Rst_n                    (Rst_n                               )  //i
  );
  ChannelCompensation channelCompensation_1 (
    .ChannelCoefEnable (channelEstimating_1_ChannelCoefEnable   ), //i
    .ChannelCoefRe     (channelEstimating_1_ChannelCoefRe[7:0]  ), //i
    .ChannelCoefIm     (channelEstimating_1_ChannelCoefIm[7:0]  ), //i
    .DataInEnable      (ltp_picking_1_DataOutEnable             ), //i
    .DataInRe          (ltp_picking_1_DataOutRe[7:0]            ), //i
    .DataInIm          (ltp_picking_1_DataOutIm[7:0]            ), //i
    .DataInSymbol      (ltp_picking_1_DataOutSymbol[7:0]        ), //i
    .DataOutEnable     (channelCompensation_1_DataOutEnable     ), //o
    .DataOutRe         (channelCompensation_1_DataOutRe[9:0]    ), //o
    .DataOutIm         (channelCompensation_1_DataOutIm[9:0]    ), //o
    .DataOutSymbol     (channelCompensation_1_DataOutSymbol[7:0]), //o
    .CLK               (CLK                                     ), //i
    .Rst_n             (Rst_n                                   )  //i
  );
  assign EnergyEnable = energyComputation_1_io_EnergyEnable;
  assign Energy = energyComputation_1_io_Energy;
  assign DataOutEnable = channelCompensation_1_DataOutEnable;
  assign DataOutRe = channelCompensation_1_DataOutRe;
  assign DataOutIm = channelCompensation_1_DataOutIm;
  assign DataOutSymbol = channelCompensation_1_DataOutSymbol;

endmodule

module StreamFifoQAM_Demodulate (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [3:0]    io_push_payload,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [3:0]    io_pop_payload,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          CLK,
  input  wire          Rst_n
);

  reg        [3:0]    logic_ram_spinal_port1;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [6:0]    logic_ptr_push;
  reg        [6:0]    logic_ptr_pop;
  wire       [6:0]    logic_ptr_occupancy;
  wire       [6:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [5:0]    logic_push_onRam_write_payload_address;
  wire       [3:0]    logic_push_onRam_write_payload_data;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [5:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [5:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [5:0]    logic_pop_addressGen_rData;
  wire                when_Stream_l393;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [5:0]    logic_pop_sync_readPort_cmd_payload;
  wire       [3:0]    logic_pop_sync_readPort_rsp;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [3:0]    logic_pop_sync_readArbitation_translated_payload;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [6:0]    logic_pop_sync_popReg;
  reg [3:0] logic_ram [0:63];

  always @(posedge CLK) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= logic_push_onRam_write_payload_data;
    end
  end

  always @(posedge CLK) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 7'h40) == 7'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[5:0];
  assign logic_push_onRam_write_payload_data = io_push_payload;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[5:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l393) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign logic_pop_sync_readPort_rsp = logic_ram_spinal_port1;
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload = logic_pop_sync_readPort_rsp;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload = logic_pop_sync_readArbitation_translated_payload;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (7'h40 - logic_ptr_occupancy);
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      logic_ptr_push <= 7'h0;
      logic_ptr_pop <= 7'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 7'h0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 7'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 7'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 7'h0;
        logic_ptr_pop <= 7'h0;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 7'h0;
      end
    end
  end

  always @(posedge CLK) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

module QAM16_Demapping (
  input  wire          EnergyInEn,
  input  wire [13:0]   EnergyPos,
  input  wire [13:0]   EnergyNeg,
  input  wire          inputDataEn,
  input  wire [9:0]    inputDataR,
  input  wire [9:0]    inputDataI,
  input  wire [7:0]    inputSymbol,
  output wire          outputDataEn,
  output wire [3:0]    outDataDemod,
  output wire [7:0]    outputSymbol,
  input  wire          CLK,
  input  wire          Rst_n
);

  reg        [27:0]   mem_spinal_port0;
  reg        [27:0]   mem_spinal_port1;
  wire       [5:0]    _zz_wrAddr_valueNext;
  wire       [0:0]    _zz_wrAddr_valueNext_1;
  wire       [5:0]    _zz_rdAddr_valueNext;
  wire       [0:0]    _zz_rdAddr_valueNext_1;
  wire                _zz_mem_port;
  wire                _zz__zz_AdjustI_E_P;
  wire                _zz_mem_port_1;
  wire                _zz__zz_AdjustI_E_N;
  wire       [27:0]   _zz_mem_port_2;
  wire       [13:0]   _zz_AdjustI_E_P_1;
  wire       [13:0]   _zz_AdjustI_E_N_1;
  wire       [13:0]   _zz_AdjustQ_E_P;
  wire       [13:0]   _zz_AdjustQ_E_N;
  reg                 _zz_1;
  wire                DataInStream_valid;
  wire       [13:0]   DataInStream_payload_Pos;
  wire       [13:0]   DataInStream_payload_Neg;
  reg                 wrAddr_willIncrement;
  wire                wrAddr_willClear;
  reg        [5:0]    wrAddr_valueNext;
  reg        [5:0]    wrAddr_value;
  wire                wrAddr_willOverflowIfInc;
  wire                wrAddr_willOverflow;
  reg                 rdAddr_willIncrement;
  wire                rdAddr_willClear;
  reg        [5:0]    rdAddr_valueNext;
  reg        [5:0]    rdAddr_value;
  wire                rdAddr_willOverflowIfInc;
  wire                rdAddr_willOverflow;
  wire       [13:0]   _zz_AdjustI_E_P;
  wire       [13:0]   _zz_AdjustI_E_N;
  wire                AdjustI_0_P;
  wire                AdjustI_E_P;
  wire                AdjustI_E_N;
  wire                AdjustQ_0_P;
  wire                AdjustQ_E_P;
  wire                AdjustQ_E_N;
  reg        [3:0]    TempOut;
  reg                 inputDataEn_regNext;
  reg        [3:0]    TempOut_regNext;
  reg        [7:0]    inputSymbol_regNext;
  reg [27:0] mem [0:63];

  assign _zz_wrAddr_valueNext_1 = wrAddr_willIncrement;
  assign _zz_wrAddr_valueNext = {5'd0, _zz_wrAddr_valueNext_1};
  assign _zz_rdAddr_valueNext_1 = rdAddr_willIncrement;
  assign _zz_rdAddr_valueNext = {5'd0, _zz_rdAddr_valueNext_1};
  assign _zz_AdjustI_E_P_1 = {{4{inputDataR[9]}}, inputDataR};
  assign _zz_AdjustI_E_N_1 = {{4{inputDataR[9]}}, inputDataR};
  assign _zz_AdjustQ_E_P = {{4{inputDataI[9]}}, inputDataI};
  assign _zz_AdjustQ_E_N = {{4{inputDataI[9]}}, inputDataI};
  assign _zz__zz_AdjustI_E_P = 1'b1;
  assign _zz__zz_AdjustI_E_N = 1'b1;
  assign _zz_mem_port_2 = {DataInStream_payload_Neg,DataInStream_payload_Pos};
  always @(posedge CLK) begin
    if(_zz__zz_AdjustI_E_P) begin
      mem_spinal_port0 <= mem[rdAddr_value];
    end
  end

  always @(posedge CLK) begin
    if(_zz__zz_AdjustI_E_N) begin
      mem_spinal_port1 <= mem[rdAddr_value];
    end
  end

  always @(posedge CLK) begin
    if(_zz_1) begin
      mem[wrAddr_value] <= _zz_mem_port_2;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(DataInStream_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign DataInStream_valid = EnergyInEn;
  assign DataInStream_payload_Pos = EnergyPos;
  assign DataInStream_payload_Neg = EnergyNeg;
  always @(*) begin
    wrAddr_willIncrement = 1'b0;
    if(DataInStream_valid) begin
      wrAddr_willIncrement = 1'b1;
    end
  end

  assign wrAddr_willClear = 1'b0;
  assign wrAddr_willOverflowIfInc = (wrAddr_value == 6'h2f);
  assign wrAddr_willOverflow = (wrAddr_willOverflowIfInc && wrAddr_willIncrement);
  always @(*) begin
    if(wrAddr_willOverflow) begin
      wrAddr_valueNext = 6'h0;
    end else begin
      wrAddr_valueNext = (wrAddr_value + _zz_wrAddr_valueNext);
    end
    if(wrAddr_willClear) begin
      wrAddr_valueNext = 6'h0;
    end
  end

  always @(*) begin
    rdAddr_willIncrement = 1'b0;
    if(inputDataEn) begin
      rdAddr_willIncrement = 1'b1;
    end
  end

  assign rdAddr_willClear = 1'b0;
  assign rdAddr_willOverflowIfInc = (rdAddr_value == 6'h2f);
  assign rdAddr_willOverflow = (rdAddr_willOverflowIfInc && rdAddr_willIncrement);
  always @(*) begin
    if(rdAddr_willOverflow) begin
      rdAddr_valueNext = 6'h0;
    end else begin
      rdAddr_valueNext = (rdAddr_value + _zz_rdAddr_valueNext);
    end
    if(rdAddr_willClear) begin
      rdAddr_valueNext = 6'h0;
    end
  end

  assign _zz_AdjustI_E_P = mem_spinal_port0[13 : 0];
  assign _zz_AdjustI_E_N = mem_spinal_port1[27 : 14];
  assign AdjustI_0_P = ($signed(10'h0) < $signed(inputDataR));
  assign AdjustI_E_P = ($signed(_zz_AdjustI_E_P_1) <= $signed(_zz_AdjustI_E_P));
  assign AdjustI_E_N = ($signed(_zz_AdjustI_E_N) <= $signed(_zz_AdjustI_E_N_1));
  assign AdjustQ_0_P = ($signed(10'h0) < $signed(inputDataI));
  assign AdjustQ_E_P = ($signed(_zz_AdjustQ_E_P) <= $signed(_zz_AdjustI_E_P));
  assign AdjustQ_E_N = ($signed(_zz_AdjustI_E_N) <= $signed(_zz_AdjustQ_E_N));
  always @(*) begin
    TempOut[3 : 2] = {(AdjustI_0_P ? AdjustI_E_P : AdjustI_E_N),AdjustI_0_P};
    TempOut[1 : 0] = {(AdjustQ_0_P ? AdjustQ_E_P : AdjustQ_E_N),AdjustQ_0_P};
  end

  assign outputDataEn = inputDataEn_regNext;
  assign outDataDemod = TempOut_regNext;
  assign outputSymbol = inputSymbol_regNext;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      wrAddr_value <= 6'h0;
      rdAddr_value <= 6'h0;
      inputDataEn_regNext <= 1'b0;
      TempOut_regNext <= 4'b0000;
      inputSymbol_regNext <= 8'h0;
    end else begin
      wrAddr_value <= wrAddr_valueNext;
      rdAddr_value <= rdAddr_valueNext;
      inputDataEn_regNext <= inputDataEn;
      TempOut_regNext <= TempOut;
      inputSymbol_regNext <= inputSymbol;
    end
  end


endmodule

module Threshold_Adjusting (
  input  wire          EnergyInEn,
  input  wire [9:0]    Energy,
  output wire          EnergyOutEn,
  output wire [13:0]   EnergyPos,
  output wire [13:0]   EnergyNeg,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                energyOrder_Rechanged_1_EnergyOutEn;
  wire       [9:0]    energyOrder_Rechanged_1_EnergyOut;
  wire                energyRemove_Pilots_1_EnergyOutEn;
  wire       [9:0]    energyRemove_Pilots_1_EnergyOut;
  wire       [13:0]   _zz_TempPos;
  wire       [8:0]    _zz_TempPos_1;
  wire       [8:0]    _zz_TempPos_2;
  reg                 EnergyInEn_regNext;
  wire       [8:0]    EnergyPos_2;
  wire       [6:0]    EnergyPos_8;
  wire       [13:0]   TempPos;
  wire       [13:0]   TempNeg;
  reg                 energyRemove_Pilots_1_EnergyOutEn_regNext;
  reg        [13:0]   TempPos_regNext;
  reg        [13:0]   TempNeg_regNext;

  assign _zz_TempPos_1 = (EnergyPos_2 + _zz_TempPos_2);
  assign _zz_TempPos = {5'd0, _zz_TempPos_1};
  assign _zz_TempPos_2 = {2'd0, EnergyPos_8};
  EnergyOrder_Rechanged energyOrder_Rechanged_1 (
    .EnergyInEn  (EnergyInEn_regNext                    ), //i
    .EnergyIn    (Energy[9:0]                           ), //i
    .EnergyOutEn (energyOrder_Rechanged_1_EnergyOutEn   ), //o
    .EnergyOut   (energyOrder_Rechanged_1_EnergyOut[9:0]), //o
    .CLK         (CLK                                   ), //i
    .Rst_n       (Rst_n                                 )  //i
  );
  EnergyRemove_Pilots energyRemove_Pilots_1 (
    .EnergyInEn  (energyOrder_Rechanged_1_EnergyOutEn   ), //i
    .EnergyIn    (energyOrder_Rechanged_1_EnergyOut[9:0]), //i
    .EnergyOutEn (energyRemove_Pilots_1_EnergyOutEn     ), //o
    .EnergyOut   (energyRemove_Pilots_1_EnergyOut[9:0]  ), //o
    .CLK         (CLK                                   ), //i
    .Rst_n       (Rst_n                                 )  //i
  );
  assign EnergyPos_2 = (energyRemove_Pilots_1_EnergyOut >>> 1'd1);
  assign EnergyPos_8 = (energyRemove_Pilots_1_EnergyOut >>> 2'd3);
  assign TempPos = _zz_TempPos;
  assign TempNeg = (- TempPos);
  assign EnergyOutEn = energyRemove_Pilots_1_EnergyOutEn_regNext;
  assign EnergyPos = TempPos_regNext;
  assign EnergyNeg = TempNeg_regNext;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      EnergyInEn_regNext <= 1'b0;
      energyRemove_Pilots_1_EnergyOutEn_regNext <= 1'b0;
      TempPos_regNext <= 14'h0;
      TempNeg_regNext <= 14'h0;
    end else begin
      EnergyInEn_regNext <= EnergyInEn;
      energyRemove_Pilots_1_EnergyOutEn_regNext <= energyRemove_Pilots_1_EnergyOutEn;
      TempPos_regNext <= TempPos;
      TempNeg_regNext <= TempNeg;
    end
  end


endmodule

module Remove_Pilots (
  input  wire          inputDataEn,
  input  wire [9:0]    inputDataR,
  input  wire [9:0]    inputDataI,
  input  wire [7:0]    inputSymbol,
  output wire          outputDataEn,
  output wire [9:0]    outputDataR,
  output wire [9:0]    outputDataI,
  output wire [7:0]    outputSymbol,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [9:0]    fifo_io_pop_payload_Re;
  wire       [9:0]    fifo_io_pop_payload_Im;
  wire       [6:0]    fifo_io_occupancy;
  wire       [6:0]    fifo_io_availability;
  wire       [5:0]    _zz_hit;
  wire       [5:0]    _zz_hit_1;
  wire                inputFlow_valid;
  wire       [9:0]    inputFlow_payload_Re;
  wire       [9:0]    inputFlow_payload_Im;
  wire                inputStream_valid;
  reg                 inputStream_ready;
  wire       [9:0]    inputStream_payload_Re;
  wire       [9:0]    inputStream_payload_Im;
  reg        [5:0]    addr;
  wire       [6:0]    hit;
  wire                when_Stream_l466;
  reg                 inputStream_thrown_valid;
  wire                inputStream_thrown_ready;
  wire       [9:0]    inputStream_thrown_payload_Re;
  wire       [9:0]    inputStream_thrown_payload_Im;
  wire                inputStream_fire;
  reg                 fifo_io_pop_valid_regNext;
  reg        [9:0]    fifo_io_pop_payload_Re_regNext;
  reg        [9:0]    fifo_io_pop_payload_Im_regNext;
  wire                when_RemovePilots_l40;
  reg        [7:0]    inputSymbol_regNextWhen;

  assign _zz_hit = 6'h05;
  assign _zz_hit_1 = 6'h0b;
  DataInStreamFifoPilots_Picking fifo (
    .io_push_valid      (inputStream_thrown_valid          ), //i
    .io_push_ready      (fifo_io_push_ready                ), //o
    .io_push_payload_Re (inputStream_thrown_payload_Re[9:0]), //i
    .io_push_payload_Im (inputStream_thrown_payload_Im[9:0]), //i
    .io_pop_valid       (fifo_io_pop_valid                 ), //o
    .io_pop_ready       (1'b1                              ), //i
    .io_pop_payload_Re  (fifo_io_pop_payload_Re[9:0]       ), //o
    .io_pop_payload_Im  (fifo_io_pop_payload_Im[9:0]       ), //o
    .io_flush           (1'b0                              ), //i
    .io_occupancy       (fifo_io_occupancy[6:0]            ), //o
    .io_availability    (fifo_io_availability[6:0]         ), //o
    .CLK                (CLK                               ), //i
    .Rst_n              (Rst_n                             )  //i
  );
  assign inputFlow_valid = inputDataEn;
  assign inputFlow_payload_Re = inputDataR;
  assign inputFlow_payload_Im = inputDataI;
  assign inputStream_valid = inputFlow_valid;
  assign inputStream_payload_Re = inputFlow_payload_Re;
  assign inputStream_payload_Im = inputFlow_payload_Im;
  assign hit = {{{{{{(addr <= _zz_hit),(addr == _zz_hit_1)},(addr == 6'h19)},(addr == 6'h20)},(addr == 6'h27)},(addr == 6'h35)},(6'h3b <= addr)};
  assign when_Stream_l466 = (|hit);
  always @(*) begin
    inputStream_thrown_valid = inputStream_valid;
    if(when_Stream_l466) begin
      inputStream_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    inputStream_ready = inputStream_thrown_ready;
    if(when_Stream_l466) begin
      inputStream_ready = 1'b1;
    end
  end

  assign inputStream_thrown_payload_Re = inputStream_payload_Re;
  assign inputStream_thrown_payload_Im = inputStream_payload_Im;
  assign inputStream_thrown_ready = fifo_io_push_ready;
  assign inputStream_fire = (inputStream_valid && inputStream_ready);
  assign outputDataEn = fifo_io_pop_valid_regNext;
  assign outputDataR = fifo_io_pop_payload_Re_regNext;
  assign outputDataI = fifo_io_pop_payload_Im_regNext;
  assign when_RemovePilots_l40 = (addr == 6'h0);
  assign outputSymbol = inputSymbol_regNextWhen;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      addr <= 6'h0;
      fifo_io_pop_valid_regNext <= 1'b0;
      fifo_io_pop_payload_Re_regNext <= 10'h0;
      fifo_io_pop_payload_Im_regNext <= 10'h0;
      inputSymbol_regNextWhen <= 8'h0;
    end else begin
      if(inputStream_fire) begin
        addr <= (addr + 6'h01);
      end
      fifo_io_pop_valid_regNext <= fifo_io_pop_valid;
      fifo_io_pop_payload_Re_regNext <= fifo_io_pop_payload_Re;
      fifo_io_pop_payload_Im_regNext <= fifo_io_pop_payload_Im;
      if(when_RemovePilots_l40) begin
        inputSymbol_regNextWhen <= inputSymbol;
      end
    end
  end


endmodule

module Order_Rechanged (
  input  wire          inputDataEn,
  input  wire [9:0]    inputDataR,
  input  wire [9:0]    inputDataI,
  input  wire [7:0]    inputSymbol,
  output wire          outputDataEn,
  output wire [9:0]    outputDataR,
  output wire [9:0]    outputDataI,
  output wire [7:0]    outputSymbol,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                fifoFront_io_push_ready;
  wire                fifoFront_io_pop_valid;
  wire       [9:0]    fifoFront_io_pop_payload_Re;
  wire       [9:0]    fifoFront_io_pop_payload_Im;
  wire       [6:0]    fifoFront_io_occupancy;
  wire       [6:0]    fifoFront_io_availability;
  wire                fifoBehind_io_push_ready;
  wire                fifoBehind_io_pop_valid;
  wire       [9:0]    fifoBehind_io_pop_payload_Re;
  wire       [9:0]    fifoBehind_io_pop_payload_Im;
  wire       [6:0]    fifoBehind_io_occupancy;
  wire       [6:0]    fifoBehind_io_availability;
  wire                streamDemux_2_io_input_ready;
  wire                streamDemux_2_io_outputs_0_valid;
  wire       [9:0]    streamDemux_2_io_outputs_0_payload_Re;
  wire       [9:0]    streamDemux_2_io_outputs_0_payload_Im;
  wire                streamDemux_2_io_outputs_1_valid;
  wire       [9:0]    streamDemux_2_io_outputs_1_payload_Re;
  wire       [9:0]    streamDemux_2_io_outputs_1_payload_Im;
  wire                streamMux_2_io_inputs_0_ready;
  wire                streamMux_2_io_inputs_1_ready;
  wire                streamMux_2_io_output_valid;
  wire       [9:0]    streamMux_2_io_output_payload_Re;
  wire       [9:0]    streamMux_2_io_output_payload_Im;
  wire       [5:0]    _zz_wrAddr_valueNext;
  wire       [0:0]    _zz_wrAddr_valueNext_1;
  wire       [5:0]    _zz_rdAddr_valueNext;
  wire       [0:0]    _zz_rdAddr_valueNext_1;
  wire                inputFlow_valid;
  wire       [9:0]    inputFlow_payload_Re;
  wire       [9:0]    inputFlow_payload_Im;
  wire                inputStream_valid;
  wire                inputStream_ready;
  wire       [9:0]    inputStream_payload_Re;
  wire       [9:0]    inputStream_payload_Im;
  reg                 wrAddr_willIncrement;
  wire                wrAddr_willClear;
  reg        [5:0]    wrAddr_valueNext;
  reg        [5:0]    wrAddr_value;
  wire                wrAddr_willOverflowIfInc;
  wire                wrAddr_willOverflow;
  reg                 rdAddr_willIncrement;
  wire                rdAddr_willClear;
  reg        [5:0]    rdAddr_valueNext;
  reg        [5:0]    rdAddr_value;
  wire                rdAddr_willOverflowIfInc;
  wire                rdAddr_willOverflow;
  wire                behindWr;
  wire                frontWr;
  wire       [0:0]    dMux;
  wire                inputStream_fire;
  wire                behindRd;
  wire                frontRd;
  wire       [0:0]    mux;
  reg                 _zz_outputDataEn;
  reg        [9:0]    _zz_outputDataR;
  reg        [9:0]    _zz_outputDataI;
  wire                when_OrderRechanged_l54;
  reg        [7:0]    inputSymbol_regNextWhen;

  assign _zz_wrAddr_valueNext_1 = wrAddr_willIncrement;
  assign _zz_wrAddr_valueNext = {5'd0, _zz_wrAddr_valueNext_1};
  assign _zz_rdAddr_valueNext_1 = rdAddr_willIncrement;
  assign _zz_rdAddr_valueNext = {5'd0, _zz_rdAddr_valueNext_1};
  DataInStreamFifoPilots_Picking fifoFront (
    .io_push_valid      (streamDemux_2_io_outputs_0_valid          ), //i
    .io_push_ready      (fifoFront_io_push_ready                   ), //o
    .io_push_payload_Re (streamDemux_2_io_outputs_0_payload_Re[9:0]), //i
    .io_push_payload_Im (streamDemux_2_io_outputs_0_payload_Im[9:0]), //i
    .io_pop_valid       (fifoFront_io_pop_valid                    ), //o
    .io_pop_ready       (streamMux_2_io_inputs_1_ready             ), //i
    .io_pop_payload_Re  (fifoFront_io_pop_payload_Re[9:0]          ), //o
    .io_pop_payload_Im  (fifoFront_io_pop_payload_Im[9:0]          ), //o
    .io_flush           (1'b0                                      ), //i
    .io_occupancy       (fifoFront_io_occupancy[6:0]               ), //o
    .io_availability    (fifoFront_io_availability[6:0]            ), //o
    .CLK                (CLK                                       ), //i
    .Rst_n              (Rst_n                                     )  //i
  );
  DataInStreamFifoPilots_Picking fifoBehind (
    .io_push_valid      (streamDemux_2_io_outputs_1_valid          ), //i
    .io_push_ready      (fifoBehind_io_push_ready                  ), //o
    .io_push_payload_Re (streamDemux_2_io_outputs_1_payload_Re[9:0]), //i
    .io_push_payload_Im (streamDemux_2_io_outputs_1_payload_Im[9:0]), //i
    .io_pop_valid       (fifoBehind_io_pop_valid                   ), //o
    .io_pop_ready       (streamMux_2_io_inputs_0_ready             ), //i
    .io_pop_payload_Re  (fifoBehind_io_pop_payload_Re[9:0]         ), //o
    .io_pop_payload_Im  (fifoBehind_io_pop_payload_Im[9:0]         ), //o
    .io_flush           (1'b0                                      ), //i
    .io_occupancy       (fifoBehind_io_occupancy[6:0]              ), //o
    .io_availability    (fifoBehind_io_availability[6:0]           ), //o
    .CLK                (CLK                                       ), //i
    .Rst_n              (Rst_n                                     )  //i
  );
  StreamDemux streamDemux_2 (
    .io_select               (dMux                                      ), //i
    .io_input_valid          (inputStream_valid                         ), //i
    .io_input_ready          (streamDemux_2_io_input_ready              ), //o
    .io_input_payload_Re     (inputStream_payload_Re[9:0]               ), //i
    .io_input_payload_Im     (inputStream_payload_Im[9:0]               ), //i
    .io_outputs_0_valid      (streamDemux_2_io_outputs_0_valid          ), //o
    .io_outputs_0_ready      (fifoFront_io_push_ready                   ), //i
    .io_outputs_0_payload_Re (streamDemux_2_io_outputs_0_payload_Re[9:0]), //o
    .io_outputs_0_payload_Im (streamDemux_2_io_outputs_0_payload_Im[9:0]), //o
    .io_outputs_1_valid      (streamDemux_2_io_outputs_1_valid          ), //o
    .io_outputs_1_ready      (fifoBehind_io_push_ready                  ), //i
    .io_outputs_1_payload_Re (streamDemux_2_io_outputs_1_payload_Re[9:0]), //o
    .io_outputs_1_payload_Im (streamDemux_2_io_outputs_1_payload_Im[9:0])  //o
  );
  StreamMux streamMux_2 (
    .io_select              (mux                                  ), //i
    .io_inputs_0_valid      (fifoBehind_io_pop_valid              ), //i
    .io_inputs_0_ready      (streamMux_2_io_inputs_0_ready        ), //o
    .io_inputs_0_payload_Re (fifoBehind_io_pop_payload_Re[9:0]    ), //i
    .io_inputs_0_payload_Im (fifoBehind_io_pop_payload_Im[9:0]    ), //i
    .io_inputs_1_valid      (fifoFront_io_pop_valid               ), //i
    .io_inputs_1_ready      (streamMux_2_io_inputs_1_ready        ), //o
    .io_inputs_1_payload_Re (fifoFront_io_pop_payload_Re[9:0]     ), //i
    .io_inputs_1_payload_Im (fifoFront_io_pop_payload_Im[9:0]     ), //i
    .io_output_valid        (streamMux_2_io_output_valid          ), //o
    .io_output_ready        (1'b1                                 ), //i
    .io_output_payload_Re   (streamMux_2_io_output_payload_Re[9:0]), //o
    .io_output_payload_Im   (streamMux_2_io_output_payload_Im[9:0])  //o
  );
  assign inputFlow_valid = inputDataEn;
  assign inputFlow_payload_Re = inputDataR;
  assign inputFlow_payload_Im = inputDataI;
  assign inputStream_valid = inputFlow_valid;
  assign inputStream_payload_Re = inputFlow_payload_Re;
  assign inputStream_payload_Im = inputFlow_payload_Im;
  always @(*) begin
    wrAddr_willIncrement = 1'b0;
    if(inputStream_fire) begin
      wrAddr_willIncrement = 1'b1;
    end
  end

  assign wrAddr_willClear = 1'b0;
  assign wrAddr_willOverflowIfInc = (wrAddr_value == 6'h3f);
  assign wrAddr_willOverflow = (wrAddr_willOverflowIfInc && wrAddr_willIncrement);
  always @(*) begin
    wrAddr_valueNext = (wrAddr_value + _zz_wrAddr_valueNext);
    if(wrAddr_willClear) begin
      wrAddr_valueNext = 6'h0;
    end
  end

  always @(*) begin
    rdAddr_willIncrement = 1'b0;
    if((streamMux_2_io_output_valid && 1'b1)) begin
      rdAddr_willIncrement = 1'b1;
    end
  end

  assign rdAddr_willClear = 1'b0;
  assign rdAddr_willOverflowIfInc = (rdAddr_value == 6'h3f);
  assign rdAddr_willOverflow = (rdAddr_willOverflowIfInc && rdAddr_willIncrement);
  always @(*) begin
    rdAddr_valueNext = (rdAddr_value + _zz_rdAddr_valueNext);
    if(rdAddr_willClear) begin
      rdAddr_valueNext = 6'h0;
    end
  end

  assign behindWr = (inputStream_valid && (6'h20 <= wrAddr_value));
  assign frontWr = (inputStream_valid && (wrAddr_value < 6'h20));
  assign dMux = behindWr;
  assign inputStream_ready = streamDemux_2_io_input_ready;
  assign inputStream_fire = (inputStream_valid && inputStream_ready);
  assign behindRd = (rdAddr_value < 6'h20);
  assign frontRd = (! behindRd);
  assign mux = frontRd;
  assign outputDataEn = _zz_outputDataEn;
  assign outputDataR = _zz_outputDataR;
  assign outputDataI = _zz_outputDataI;
  assign when_OrderRechanged_l54 = (rdAddr_value == 6'h0);
  assign outputSymbol = inputSymbol_regNextWhen;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      wrAddr_value <= 6'h0;
      rdAddr_value <= 6'h0;
      _zz_outputDataEn <= 1'b0;
      _zz_outputDataR <= 10'h0;
      _zz_outputDataI <= 10'h0;
      inputSymbol_regNextWhen <= 8'h0;
    end else begin
      wrAddr_value <= wrAddr_valueNext;
      rdAddr_value <= rdAddr_valueNext;
      _zz_outputDataEn <= streamMux_2_io_output_valid;
      _zz_outputDataR <= streamMux_2_io_output_payload_Re;
      _zz_outputDataI <= streamMux_2_io_output_payload_Im;
      if(when_OrderRechanged_l54) begin
        inputSymbol_regNextWhen <= inputSymbol;
      end
    end
  end


endmodule

module Pilots_Picking (
  input  wire          inputDataEn,
  input  wire [9:0]    inputDataR,
  input  wire [9:0]    inputDataI,
  input  wire [7:0]    inputSymbol,
  output wire          outputDataEn,
  output wire [9:0]    outputDataR,
  output wire [9:0]    outputDataI,
  output wire [7:0]    outputSymbol,
  output wire          pilot_valid,
  input  wire          pilot_ready,
  output wire          pilot_payload_last,
  output wire [9:0]    pilot_payload_fragment_Re,
  output wire [9:0]    pilot_payload_fragment_Im,
  output wire [3:0]    pilot_payload_fragment_Index,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [9:0]    fifo_io_pop_payload_Re;
  wire       [9:0]    fifo_io_pop_payload_Im;
  wire       [6:0]    fifo_io_occupancy;
  wire       [6:0]    fifo_io_availability;
  wire                inputFlow_valid;
  wire       [9:0]    inputFlow_payload_Re;
  wire       [9:0]    inputFlow_payload_Im;
  reg                 inputDataEn_regNext;
  wire                inputStream_valid;
  wire                inputStream_ready;
  wire       [9:0]    inputStream_payload_Re;
  wire       [9:0]    inputStream_payload_Im;
  reg        [5:0]    addr;
  wire                hit_0;
  wire                hit_1;
  wire                hit_2;
  wire                hit_3;
  wire                inputStream_fire;
  wire                tempPilot_valid;
  reg                 tempPilot_ready;
  wire                tempPilot_payload_last;
  wire       [9:0]    tempPilot_payload_fragment_Re;
  wire       [9:0]    tempPilot_payload_fragment_Im;
  wire       [3:0]    tempPilot_payload_fragment_Index;
  wire                tempPilot_m2sPipe_valid;
  wire                tempPilot_m2sPipe_ready;
  wire                tempPilot_m2sPipe_payload_last;
  wire       [9:0]    tempPilot_m2sPipe_payload_fragment_Re;
  wire       [9:0]    tempPilot_m2sPipe_payload_fragment_Im;
  wire       [3:0]    tempPilot_m2sPipe_payload_fragment_Index;
  reg                 tempPilot_rValid;
  reg                 tempPilot_rData_last;
  reg        [9:0]    tempPilot_rData_fragment_Re;
  reg        [9:0]    tempPilot_rData_fragment_Im;
  reg        [3:0]    tempPilot_rData_fragment_Index;
  wire                when_Stream_l393;
  reg                 fifo_io_pop_valid_regNext;
  reg        [9:0]    fifo_io_pop_payload_Re_regNext;
  reg        [9:0]    fifo_io_pop_payload_Im_regNext;
  wire                when_PilotsPicking_l54;
  reg        [7:0]    inputSymbol_regNextWhen;

  DataInStreamFifoPilots_Picking fifo (
    .io_push_valid      (inputStream_valid          ), //i
    .io_push_ready      (fifo_io_push_ready         ), //o
    .io_push_payload_Re (inputStream_payload_Re[9:0]), //i
    .io_push_payload_Im (inputStream_payload_Im[9:0]), //i
    .io_pop_valid       (fifo_io_pop_valid          ), //o
    .io_pop_ready       (1'b1                       ), //i
    .io_pop_payload_Re  (fifo_io_pop_payload_Re[9:0]), //o
    .io_pop_payload_Im  (fifo_io_pop_payload_Im[9:0]), //o
    .io_flush           (1'b0                       ), //i
    .io_occupancy       (fifo_io_occupancy[6:0]     ), //o
    .io_availability    (fifo_io_availability[6:0]  ), //o
    .CLK                (CLK                        ), //i
    .Rst_n              (Rst_n                      )  //i
  );
  assign inputFlow_valid = inputDataEn_regNext;
  assign inputFlow_payload_Re = inputDataR;
  assign inputFlow_payload_Im = inputDataI;
  assign inputStream_valid = inputFlow_valid;
  assign inputStream_payload_Re = inputFlow_payload_Re;
  assign inputStream_payload_Im = inputFlow_payload_Im;
  assign hit_0 = (addr == 6'h07);
  assign hit_1 = (addr == 6'h15);
  assign hit_2 = (addr == 6'h2b);
  assign hit_3 = (addr == 6'h39);
  assign inputStream_ready = fifo_io_push_ready;
  assign inputStream_fire = (inputStream_valid && inputStream_ready);
  assign tempPilot_valid = ((|{hit_3,{hit_2,{hit_1,hit_0}}}) && inputStream_valid);
  assign tempPilot_payload_fragment_Re = inputStream_payload_Re;
  assign tempPilot_payload_fragment_Im = inputStream_payload_Im;
  assign tempPilot_payload_fragment_Index = {hit_3,{hit_2,{hit_1,hit_0}}};
  assign tempPilot_payload_last = (hit_3 && inputStream_valid);
  always @(*) begin
    tempPilot_ready = tempPilot_m2sPipe_ready;
    if(when_Stream_l393) begin
      tempPilot_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! tempPilot_m2sPipe_valid);
  assign tempPilot_m2sPipe_valid = tempPilot_rValid;
  assign tempPilot_m2sPipe_payload_last = tempPilot_rData_last;
  assign tempPilot_m2sPipe_payload_fragment_Re = tempPilot_rData_fragment_Re;
  assign tempPilot_m2sPipe_payload_fragment_Im = tempPilot_rData_fragment_Im;
  assign tempPilot_m2sPipe_payload_fragment_Index = tempPilot_rData_fragment_Index;
  assign pilot_valid = tempPilot_m2sPipe_valid;
  assign tempPilot_m2sPipe_ready = pilot_ready;
  assign pilot_payload_last = tempPilot_m2sPipe_payload_last;
  assign pilot_payload_fragment_Re = tempPilot_m2sPipe_payload_fragment_Re;
  assign pilot_payload_fragment_Im = tempPilot_m2sPipe_payload_fragment_Im;
  assign pilot_payload_fragment_Index = tempPilot_m2sPipe_payload_fragment_Index;
  assign outputDataEn = fifo_io_pop_valid_regNext;
  assign outputDataR = fifo_io_pop_payload_Re_regNext;
  assign outputDataI = fifo_io_pop_payload_Im_regNext;
  assign when_PilotsPicking_l54 = (addr == 6'h0);
  assign outputSymbol = inputSymbol_regNextWhen;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      inputDataEn_regNext <= 1'b0;
      addr <= 6'h0;
      tempPilot_rValid <= 1'b0;
      fifo_io_pop_valid_regNext <= 1'b0;
      fifo_io_pop_payload_Re_regNext <= 10'h0;
      fifo_io_pop_payload_Im_regNext <= 10'h0;
      inputSymbol_regNextWhen <= 8'h0;
    end else begin
      inputDataEn_regNext <= inputDataEn;
      if(inputStream_fire) begin
        addr <= (addr + 6'h01);
      end
      if(tempPilot_ready) begin
        tempPilot_rValid <= tempPilot_valid;
      end
      fifo_io_pop_valid_regNext <= fifo_io_pop_valid;
      fifo_io_pop_payload_Re_regNext <= fifo_io_pop_payload_Re;
      fifo_io_pop_payload_Im_regNext <= fifo_io_pop_payload_Im;
      if(when_PilotsPicking_l54) begin
        inputSymbol_regNextWhen <= inputSymbol;
      end
    end
  end

  always @(posedge CLK) begin
    if(tempPilot_ready) begin
      tempPilot_rData_last <= tempPilot_payload_last;
      tempPilot_rData_fragment_Re <= tempPilot_payload_fragment_Re;
      tempPilot_rData_fragment_Im <= tempPilot_payload_fragment_Im;
      tempPilot_rData_fragment_Index <= tempPilot_payload_fragment_Index;
    end
  end


endmodule

module ChannelCompensation (
  input  wire          ChannelCoefEnable,
  input  wire [7:0]    ChannelCoefRe,
  input  wire [7:0]    ChannelCoefIm,
  input  wire          DataInEnable,
  input  wire [7:0]    DataInRe,
  input  wire [7:0]    DataInIm,
  input  wire [7:0]    DataInSymbol,
  output wire          DataOutEnable,
  output wire [9:0]    DataOutRe,
  output wire [9:0]    DataOutIm,
  output wire [7:0]    DataOutSymbol,
  input  wire          CLK,
  input  wire          Rst_n
);

  reg        [15:0]   mem_spinal_port1;
  reg        [15:0]   mem_spinal_port2;
  wire       [15:0]   _zz_mem_port;
  wire                _zz_mem_port_1;
  wire                _zz__zz_TempB;
  wire                _zz_mem_port_2;
  wire                _zz__zz_TempB_1;
  wire       [8:0]    _zz_TempA1;
  wire       [8:0]    _zz_TempA1_1;
  wire       [8:0]    _zz_TempA2;
  wire       [8:0]    _zz_TempA2_1;
  wire       [8:0]    _zz_TempB_2;
  wire       [8:0]    _zz_TempB_3;
  wire       [17:0]   _zz_TempRe;
  wire       [17:0]   _zz_TempRe_1;
  wire       [17:0]   _zz_TempIm;
  wire       [17:0]   _zz_TempIm_1;
  wire       [8:0]    _zz_DataOutRe;
  wire       [8:0]    _zz_DataOutIm;
  reg                 _zz_1;
  wire                DataInStream_valid;
  wire       [7:0]    DataInStream_payload_Re;
  wire       [7:0]    DataInStream_payload_Im;
  reg        [5:0]    wrAddr;
  reg        [5:0]    rdAddr;
  reg                 DataInStream_valid_regNext;
  reg                 TempEn1;
  reg        [8:0]    TempA1;
  reg        [8:0]    TempA2;
  reg        [8:0]    TempB;
  reg        [7:0]    TempAR;
  reg        [7:0]    TempBR;
  reg        [7:0]    TempBI;
  wire       [7:0]    _zz_TempB;
  wire       [7:0]    _zz_TempB_1;
  reg                 DataInEnable_regNext;
  reg                 TempEn2;
  reg        [16:0]   TempARB;
  reg        [16:0]   TempA1BI;
  reg        [16:0]   TempA2BR;
  reg                 TempEn3;
  reg        [17:0]   TempRe;
  reg        [17:0]   TempIm;
  reg        [7:0]    DataInSymbol_delay_1;
  reg        [7:0]    DataInSymbol_delay_2;
  reg        [7:0]    DataInSymbol_delay_3;
  reg [15:0] mem [0:63];

  assign _zz_TempA1 = {DataInRe[7],DataInRe};
  assign _zz_TempA1_1 = {DataInIm[7],DataInIm};
  assign _zz_TempA2 = {DataInRe[7],DataInRe};
  assign _zz_TempA2_1 = {DataInIm[7],DataInIm};
  assign _zz_TempB_2 = {_zz_TempB[7],_zz_TempB};
  assign _zz_TempB_3 = {_zz_TempB_1[7],_zz_TempB_1};
  assign _zz_TempRe = {TempARB[16],TempARB};
  assign _zz_TempRe_1 = {TempA1BI[16],TempA1BI};
  assign _zz_TempIm = {TempARB[16],TempARB};
  assign _zz_TempIm_1 = {TempA2BR[16],TempA2BR};
  assign _zz_DataOutRe = TempRe[14 : 6];
  assign _zz_DataOutIm = TempIm[14 : 6];
  assign _zz_mem_port = {DataInStream_payload_Im,DataInStream_payload_Re};
  assign _zz__zz_TempB = 1'b1;
  assign _zz__zz_TempB_1 = 1'b1;
  always @(posedge CLK) begin
    if(_zz_1) begin
      mem[wrAddr] <= _zz_mem_port;
    end
  end

  always @(posedge CLK) begin
    if(_zz__zz_TempB) begin
      mem_spinal_port1 <= mem[rdAddr];
    end
  end

  always @(posedge CLK) begin
    if(_zz__zz_TempB_1) begin
      mem_spinal_port2 <= mem[rdAddr];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(DataInStream_valid_regNext) begin
      _zz_1 = 1'b1;
    end
  end

  assign DataInStream_valid = ChannelCoefEnable;
  assign DataInStream_payload_Re = ChannelCoefRe;
  assign DataInStream_payload_Im = ChannelCoefIm;
  assign _zz_TempB = mem_spinal_port1[7 : 0];
  assign _zz_TempB_1 = mem_spinal_port2[15 : 8];
  always @(*) begin
    if(DataInEnable_regNext) begin
      TempEn1 = 1'b1;
    end else begin
      TempEn1 = 1'b0;
    end
  end

  assign DataOutEnable = TempEn3;
  assign DataOutRe = {TempRe[17],_zz_DataOutRe};
  assign DataOutIm = {TempIm[17],_zz_DataOutIm};
  assign DataOutSymbol = DataInSymbol_delay_3;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      wrAddr <= 6'h0;
      rdAddr <= 6'h0;
      DataInStream_valid_regNext <= 1'b0;
      TempA1 <= 9'h0;
      TempA2 <= 9'h0;
      TempB <= 9'h0;
      TempAR <= 8'h0;
      TempBR <= 8'h0;
      TempBI <= 8'h0;
      TempARB <= 17'h0;
      TempA1BI <= 17'h0;
      TempA2BR <= 17'h0;
      TempEn3 <= 1'b0;
      TempRe <= 18'h0;
      TempIm <= 18'h0;
    end else begin
      DataInStream_valid_regNext <= DataInStream_valid;
      if(DataInStream_valid_regNext) begin
        wrAddr <= (wrAddr + 6'h01);
      end
      if(DataInEnable_regNext) begin
        TempA1 <= ($signed(_zz_TempA1) + $signed(_zz_TempA1_1));
        TempA2 <= ($signed(_zz_TempA2) - $signed(_zz_TempA2_1));
        TempB <= ($signed(_zz_TempB_2) + $signed(_zz_TempB_3));
        TempAR <= DataInRe;
        TempBR <= _zz_TempB;
        TempBI <= _zz_TempB_1;
      end else begin
        TempA1 <= 9'h0;
        TempA2 <= 9'h0;
        TempB <= 9'h0;
        TempAR <= 8'h0;
        TempBR <= 8'h0;
        TempBI <= 8'h0;
      end
      if(DataInEnable) begin
        rdAddr <= (rdAddr + 6'h01);
      end
      if(TempEn2) begin
        TempARB <= ($signed(TempAR) * $signed(TempB));
        TempA1BI <= ($signed(TempA1) * $signed(TempBI));
        TempA2BR <= ($signed(TempA2) * $signed(TempBR));
      end else begin
        TempARB <= 17'h0;
        TempA1BI <= 17'h0;
        TempA2BR <= 17'h0;
      end
      TempEn3 <= TempEn2;
      if(TempEn3) begin
        TempRe <= ($signed(_zz_TempRe) - $signed(_zz_TempRe_1));
        TempIm <= ($signed(_zz_TempIm) - $signed(_zz_TempIm_1));
      end else begin
        TempRe <= 18'h0;
        TempIm <= 18'h0;
      end
    end
  end

  always @(posedge CLK) begin
    DataInEnable_regNext <= DataInEnable;
    TempEn2 <= TempEn1;
    DataInSymbol_delay_1 <= DataInSymbol;
    DataInSymbol_delay_2 <= DataInSymbol_delay_1;
    DataInSymbol_delay_3 <= DataInSymbol_delay_2;
  end


endmodule

module EnergyComputation (
  input  wire          io_AveLongTrainingEnable,
  input  wire [7:0]    io_AveLongTrainingRe,
  input  wire [7:0]    io_AveLongTrainingIm,
  output wire          io_EnergyEnable,
  output wire [9:0]    io_Energy,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire       [16:0]   _zz_sum;
  wire       [16:0]   _zz_sum_1;
  wire       [8:0]    _zz_io_Energy;
  reg        [15:0]   AveLongTrainingReModulus;
  reg        [15:0]   AveLongTrainingImModulus;
  reg                 io_AveLongTrainingEnable_regNext;
  wire       [16:0]   sum;

  assign _zz_sum = {AveLongTrainingReModulus[15],AveLongTrainingReModulus};
  assign _zz_sum_1 = {AveLongTrainingImModulus[15],AveLongTrainingImModulus};
  assign _zz_io_Energy = sum[14 : 6];
  assign io_EnergyEnable = io_AveLongTrainingEnable_regNext;
  assign sum = ($signed(_zz_sum) + $signed(_zz_sum_1));
  assign io_Energy = {sum[16],_zz_io_Energy};
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      AveLongTrainingReModulus <= 16'h0;
      AveLongTrainingImModulus <= 16'h0;
      io_AveLongTrainingEnable_regNext <= 1'b0;
    end else begin
      io_AveLongTrainingEnable_regNext <= io_AveLongTrainingEnable;
      if(io_EnergyEnable) begin
        AveLongTrainingReModulus <= ($signed(io_AveLongTrainingRe) * $signed(io_AveLongTrainingRe));
        AveLongTrainingImModulus <= ($signed(io_AveLongTrainingIm) * $signed(io_AveLongTrainingIm));
      end else begin
        AveLongTrainingReModulus <= 16'h0;
        AveLongTrainingImModulus <= 16'h0;
      end
    end
  end


endmodule

module ChannelEstimating (
  input  wire          AveLongTrainingEnable,
  input  wire [7:0]    AveLongTrainingRe,
  input  wire [7:0]    AveLongTrainingIm,
  output wire          ChannelCoefEnable,
  output wire [7:0]    ChannelCoefRe,
  output wire [7:0]    ChannelCoefIm,
  input  wire          CLK,
  input  wire          Rst_n
);

  reg        [1:0]    LTSMem_spinal_port0;
  wire                _zz_switch_ChannelEstimating_l42;
  wire                _zz_LTSMem_port;
  reg        [5:0]    addr;
  reg        [7:0]    TempCoefRe;
  reg        [7:0]    TempCoefIm;
  reg                 AveLongTrainingEnable_regNext;
  wire       [1:0]    switch_ChannelEstimating_l42;
  reg                 AveLongTrainingEnable_regNext_1;
  reg        [7:0]    TempCoefRe_regNext;
  reg        [7:0]    TempCoefIm_regNext;
  reg [1:0] LTSMem [0:63];

  assign _zz_LTSMem_port = 1'b1;
  initial begin
    $readmemb("DataRestore.v_toplevel_channel_Equalizer_1_channelEstimating_1_LTSMem.bin",LTSMem);
  end
  always @(posedge CLK) begin
    if(_zz_LTSMem_port) begin
      LTSMem_spinal_port0 <= LTSMem[addr];
    end
  end

  always @(*) begin
    TempCoefRe = 8'h0;
    if(AveLongTrainingEnable_regNext) begin
      case(switch_ChannelEstimating_l42)
        2'b00 : begin
          TempCoefRe = 8'h0;
        end
        2'b01 : begin
          TempCoefRe = AveLongTrainingRe;
        end
        default : begin
          TempCoefRe = (- AveLongTrainingRe);
        end
      endcase
    end
  end

  always @(*) begin
    TempCoefIm = 8'h0;
    if(AveLongTrainingEnable_regNext) begin
      case(switch_ChannelEstimating_l42)
        2'b00 : begin
          TempCoefIm = 8'h0;
        end
        2'b01 : begin
          TempCoefIm = (- AveLongTrainingIm);
        end
        default : begin
          TempCoefIm = AveLongTrainingIm;
        end
      endcase
    end
  end

  assign switch_ChannelEstimating_l42 = LTSMem_spinal_port0;
  assign ChannelCoefEnable = AveLongTrainingEnable_regNext_1;
  assign ChannelCoefRe = TempCoefRe_regNext;
  assign ChannelCoefIm = TempCoefIm_regNext;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      addr <= 6'h0;
      AveLongTrainingEnable_regNext <= 1'b0;
      AveLongTrainingEnable_regNext_1 <= 1'b0;
      TempCoefRe_regNext <= 8'h0;
      TempCoefIm_regNext <= 8'h0;
    end else begin
      AveLongTrainingEnable_regNext <= AveLongTrainingEnable;
      if(AveLongTrainingEnable_regNext) begin
        addr <= (addr + 6'h01);
      end
      AveLongTrainingEnable_regNext_1 <= AveLongTrainingEnable;
      TempCoefRe_regNext <= TempCoefRe;
      TempCoefIm_regNext <= TempCoefIm;
    end
  end


endmodule

module LTP_Picking (
  input  wire          DataInEnable,
  output wire          DataOutEnable,
  output wire          AveLongTrainingEnable,
  input  wire [7:0]    DataInSymbol,
  output wire [7:0]    DataOutSymbol,
  input  wire [7:0]    DataInRe,
  input  wire [7:0]    DataInIm,
  output wire [7:0]    DataOutRe,
  output wire [7:0]    DataOutIm,
  output reg  [7:0]    AveLongTrainingRe,
  output reg  [7:0]    AveLongTrainingIm,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                fifo_io_pop_ready;
  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [7:0]    fifo_io_pop_payload_Re;
  wire       [7:0]    fifo_io_pop_payload_Im;
  wire       [6:0]    fifo_io_occupancy;
  wire       [6:0]    fifo_io_availability;
  wire       [8:0]    _zz_ReSum;
  wire       [8:0]    _zz_ReSum_1;
  wire       [8:0]    _zz_ImSum;
  wire       [8:0]    _zz_ImSum_1;
  wire                DataInStream_valid;
  wire                DataInStream_ready;
  wire       [7:0]    DataInStream_payload_Re;
  wire       [7:0]    DataInStream_payload_Im;
  reg                 DataInEnableNext;
  wire                fifo_io_pop_fire;
  wire       [8:0]    ReSum;
  wire       [8:0]    ImSum;
  wire                assignCond;

  assign _zz_ReSum = {fifo_io_pop_payload_Re[7],fifo_io_pop_payload_Re};
  assign _zz_ReSum_1 = {DataInRe[7],DataInRe};
  assign _zz_ImSum = {fifo_io_pop_payload_Im[7],fifo_io_pop_payload_Im};
  assign _zz_ImSum_1 = {DataInIm[7],DataInIm};
  DataInStreamFifoLTP_Picking fifo (
    .io_push_valid      (DataInStream_valid          ), //i
    .io_push_ready      (fifo_io_push_ready          ), //o
    .io_push_payload_Re (DataInStream_payload_Re[7:0]), //i
    .io_push_payload_Im (DataInStream_payload_Im[7:0]), //i
    .io_pop_valid       (fifo_io_pop_valid           ), //o
    .io_pop_ready       (fifo_io_pop_ready           ), //i
    .io_pop_payload_Re  (fifo_io_pop_payload_Re[7:0] ), //o
    .io_pop_payload_Im  (fifo_io_pop_payload_Im[7:0] ), //o
    .io_flush           (1'b0                        ), //i
    .io_occupancy       (fifo_io_occupancy[6:0]      ), //o
    .io_availability    (fifo_io_availability[6:0]   ), //o
    .CLK                (CLK                         ), //i
    .Rst_n              (Rst_n                       )  //i
  );
  assign DataInStream_valid = (DataInEnableNext && (DataInSymbol == 8'h01));
  assign DataInStream_payload_Re = DataInRe;
  assign DataInStream_payload_Im = DataInIm;
  assign DataInStream_ready = fifo_io_push_ready;
  assign fifo_io_pop_ready = (DataInEnableNext && (DataInSymbol == 8'h02));
  always @(*) begin
    AveLongTrainingRe = 8'h0;
    if(fifo_io_pop_fire) begin
      AveLongTrainingRe = (ReSum >>> 1'd1);
    end
  end

  always @(*) begin
    AveLongTrainingIm = 8'h0;
    if(fifo_io_pop_fire) begin
      AveLongTrainingIm = (ImSum >>> 1'd1);
    end
  end

  assign fifo_io_pop_fire = (fifo_io_pop_valid && fifo_io_pop_ready);
  assign ReSum = ($signed(_zz_ReSum) + $signed(_zz_ReSum_1));
  assign ImSum = ($signed(_zz_ImSum) + $signed(_zz_ImSum_1));
  assign AveLongTrainingEnable = (DataInEnable && (DataInSymbol == 8'h02));
  assign assignCond = (DataInEnableNext && (8'h03 <= DataInSymbol));
  assign DataOutEnable = (DataInEnable && (8'h03 <= DataInSymbol));
  assign DataOutSymbol = ((8'h03 <= DataInSymbol) ? DataInSymbol : 8'h0);
  assign DataOutRe = (assignCond ? DataInRe : 8'h0);
  assign DataOutIm = (assignCond ? DataInIm : 8'h0);
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      DataInEnableNext <= 1'b0;
    end else begin
      DataInEnableNext <= DataInEnable;
    end
  end


endmodule

module EnergyRemove_Pilots (
  input  wire          EnergyInEn,
  input  wire [9:0]    EnergyIn,
  output wire          EnergyOutEn,
  output wire [9:0]    EnergyOut,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [9:0]    fifo_io_pop_payload_Energy;
  wire       [6:0]    fifo_io_occupancy;
  wire       [6:0]    fifo_io_availability;
  wire       [5:0]    _zz_hit;
  wire       [5:0]    _zz_hit_1;
  wire                inputFlow_valid;
  wire       [9:0]    inputFlow_payload_Energy;
  wire                inputStream_valid;
  reg                 inputStream_ready;
  wire       [9:0]    inputStream_payload_Energy;
  reg        [5:0]    addr;
  wire       [6:0]    hit;
  wire                when_Stream_l466;
  reg                 inputStream_thrown_valid;
  wire                inputStream_thrown_ready;
  wire       [9:0]    inputStream_thrown_payload_Energy;
  wire                inputStream_fire;
  reg                 fifo_io_pop_valid_regNext;
  reg        [9:0]    fifo_io_pop_payload_Energy_regNext;

  assign _zz_hit = 6'h05;
  assign _zz_hit_1 = 6'h0b;
  EnergyStreamFifoOrder_Rechanged fifo (
    .io_push_valid          (inputStream_thrown_valid              ), //i
    .io_push_ready          (fifo_io_push_ready                    ), //o
    .io_push_payload_Energy (inputStream_thrown_payload_Energy[9:0]), //i
    .io_pop_valid           (fifo_io_pop_valid                     ), //o
    .io_pop_ready           (1'b1                                  ), //i
    .io_pop_payload_Energy  (fifo_io_pop_payload_Energy[9:0]       ), //o
    .io_flush               (1'b0                                  ), //i
    .io_occupancy           (fifo_io_occupancy[6:0]                ), //o
    .io_availability        (fifo_io_availability[6:0]             ), //o
    .CLK                    (CLK                                   ), //i
    .Rst_n                  (Rst_n                                 )  //i
  );
  assign inputFlow_valid = EnergyInEn;
  assign inputFlow_payload_Energy = EnergyIn;
  assign inputStream_valid = inputFlow_valid;
  assign inputStream_payload_Energy = inputFlow_payload_Energy;
  assign hit = {{{{{{(addr <= _zz_hit),(addr == _zz_hit_1)},(addr == 6'h19)},(addr == 6'h20)},(addr == 6'h27)},(addr == 6'h35)},(6'h3b <= addr)};
  assign when_Stream_l466 = (|hit);
  always @(*) begin
    inputStream_thrown_valid = inputStream_valid;
    if(when_Stream_l466) begin
      inputStream_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    inputStream_ready = inputStream_thrown_ready;
    if(when_Stream_l466) begin
      inputStream_ready = 1'b1;
    end
  end

  assign inputStream_thrown_payload_Energy = inputStream_payload_Energy;
  assign inputStream_thrown_ready = fifo_io_push_ready;
  assign inputStream_fire = (inputStream_valid && inputStream_ready);
  assign EnergyOutEn = fifo_io_pop_valid_regNext;
  assign EnergyOut = fifo_io_pop_payload_Energy_regNext;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      addr <= 6'h0;
      fifo_io_pop_valid_regNext <= 1'b0;
      fifo_io_pop_payload_Energy_regNext <= 10'h0;
    end else begin
      if(inputStream_fire) begin
        addr <= (addr + 6'h01);
      end
      fifo_io_pop_valid_regNext <= fifo_io_pop_valid;
      fifo_io_pop_payload_Energy_regNext <= fifo_io_pop_payload_Energy;
    end
  end


endmodule

module EnergyOrder_Rechanged (
  input  wire          EnergyInEn,
  input  wire [9:0]    EnergyIn,
  output wire          EnergyOutEn,
  output wire [9:0]    EnergyOut,
  input  wire          CLK,
  input  wire          Rst_n
);

  wire                fifoFront_io_push_ready;
  wire                fifoFront_io_pop_valid;
  wire       [9:0]    fifoFront_io_pop_payload_Energy;
  wire       [6:0]    fifoFront_io_occupancy;
  wire       [6:0]    fifoFront_io_availability;
  wire                fifoBehind_io_push_ready;
  wire                fifoBehind_io_pop_valid;
  wire       [9:0]    fifoBehind_io_pop_payload_Energy;
  wire       [6:0]    fifoBehind_io_occupancy;
  wire       [6:0]    fifoBehind_io_availability;
  wire                streamDemux_2_io_input_ready;
  wire                streamDemux_2_io_outputs_0_valid;
  wire       [9:0]    streamDemux_2_io_outputs_0_payload_Energy;
  wire                streamDemux_2_io_outputs_1_valid;
  wire       [9:0]    streamDemux_2_io_outputs_1_payload_Energy;
  wire                streamMux_2_io_inputs_0_ready;
  wire                streamMux_2_io_inputs_1_ready;
  wire                streamMux_2_io_output_valid;
  wire       [9:0]    streamMux_2_io_output_payload_Energy;
  wire       [5:0]    _zz_wrAddr_valueNext;
  wire       [0:0]    _zz_wrAddr_valueNext_1;
  wire       [5:0]    _zz_rdAddr_valueNext;
  wire       [0:0]    _zz_rdAddr_valueNext_1;
  wire                inputFlow_valid;
  wire       [9:0]    inputFlow_payload_Energy;
  wire                inputStream_valid;
  wire                inputStream_ready;
  wire       [9:0]    inputStream_payload_Energy;
  reg                 wrAddr_willIncrement;
  wire                wrAddr_willClear;
  reg        [5:0]    wrAddr_valueNext;
  reg        [5:0]    wrAddr_value;
  wire                wrAddr_willOverflowIfInc;
  wire                wrAddr_willOverflow;
  reg                 rdAddr_willIncrement;
  wire                rdAddr_willClear;
  reg        [5:0]    rdAddr_valueNext;
  reg        [5:0]    rdAddr_value;
  wire                rdAddr_willOverflowIfInc;
  wire                rdAddr_willOverflow;
  wire                behindWr;
  wire                frontWr;
  wire       [0:0]    dMux;
  wire                inputStream_fire;
  wire                behindRd;
  wire                frontRd;
  wire       [0:0]    mux;
  reg                 _zz_EnergyOutEn;
  reg        [9:0]    _zz_EnergyOut;

  assign _zz_wrAddr_valueNext_1 = wrAddr_willIncrement;
  assign _zz_wrAddr_valueNext = {5'd0, _zz_wrAddr_valueNext_1};
  assign _zz_rdAddr_valueNext_1 = rdAddr_willIncrement;
  assign _zz_rdAddr_valueNext = {5'd0, _zz_rdAddr_valueNext_1};
  EnergyStreamFifoOrder_Rechanged fifoFront (
    .io_push_valid          (streamDemux_2_io_outputs_0_valid              ), //i
    .io_push_ready          (fifoFront_io_push_ready                       ), //o
    .io_push_payload_Energy (streamDemux_2_io_outputs_0_payload_Energy[9:0]), //i
    .io_pop_valid           (fifoFront_io_pop_valid                        ), //o
    .io_pop_ready           (streamMux_2_io_inputs_1_ready                 ), //i
    .io_pop_payload_Energy  (fifoFront_io_pop_payload_Energy[9:0]          ), //o
    .io_flush               (1'b0                                          ), //i
    .io_occupancy           (fifoFront_io_occupancy[6:0]                   ), //o
    .io_availability        (fifoFront_io_availability[6:0]                ), //o
    .CLK                    (CLK                                           ), //i
    .Rst_n                  (Rst_n                                         )  //i
  );
  EnergyStreamFifoOrder_Rechanged fifoBehind (
    .io_push_valid          (streamDemux_2_io_outputs_1_valid              ), //i
    .io_push_ready          (fifoBehind_io_push_ready                      ), //o
    .io_push_payload_Energy (streamDemux_2_io_outputs_1_payload_Energy[9:0]), //i
    .io_pop_valid           (fifoBehind_io_pop_valid                       ), //o
    .io_pop_ready           (streamMux_2_io_inputs_0_ready                 ), //i
    .io_pop_payload_Energy  (fifoBehind_io_pop_payload_Energy[9:0]         ), //o
    .io_flush               (1'b0                                          ), //i
    .io_occupancy           (fifoBehind_io_occupancy[6:0]                  ), //o
    .io_availability        (fifoBehind_io_availability[6:0]               ), //o
    .CLK                    (CLK                                           ), //i
    .Rst_n                  (Rst_n                                         )  //i
  );
  StreamDemux_1 streamDemux_2 (
    .io_select                   (dMux                                          ), //i
    .io_input_valid              (inputStream_valid                             ), //i
    .io_input_ready              (streamDemux_2_io_input_ready                  ), //o
    .io_input_payload_Energy     (inputStream_payload_Energy[9:0]               ), //i
    .io_outputs_0_valid          (streamDemux_2_io_outputs_0_valid              ), //o
    .io_outputs_0_ready          (fifoFront_io_push_ready                       ), //i
    .io_outputs_0_payload_Energy (streamDemux_2_io_outputs_0_payload_Energy[9:0]), //o
    .io_outputs_1_valid          (streamDemux_2_io_outputs_1_valid              ), //o
    .io_outputs_1_ready          (fifoBehind_io_push_ready                      ), //i
    .io_outputs_1_payload_Energy (streamDemux_2_io_outputs_1_payload_Energy[9:0])  //o
  );
  StreamMux_1 streamMux_2 (
    .io_select                  (mux                                      ), //i
    .io_inputs_0_valid          (fifoBehind_io_pop_valid                  ), //i
    .io_inputs_0_ready          (streamMux_2_io_inputs_0_ready            ), //o
    .io_inputs_0_payload_Energy (fifoBehind_io_pop_payload_Energy[9:0]    ), //i
    .io_inputs_1_valid          (fifoFront_io_pop_valid                   ), //i
    .io_inputs_1_ready          (streamMux_2_io_inputs_1_ready            ), //o
    .io_inputs_1_payload_Energy (fifoFront_io_pop_payload_Energy[9:0]     ), //i
    .io_output_valid            (streamMux_2_io_output_valid              ), //o
    .io_output_ready            (1'b1                                     ), //i
    .io_output_payload_Energy   (streamMux_2_io_output_payload_Energy[9:0])  //o
  );
  assign inputFlow_valid = EnergyInEn;
  assign inputFlow_payload_Energy = EnergyIn;
  assign inputStream_valid = inputFlow_valid;
  assign inputStream_payload_Energy = inputFlow_payload_Energy;
  always @(*) begin
    wrAddr_willIncrement = 1'b0;
    if(inputStream_fire) begin
      wrAddr_willIncrement = 1'b1;
    end
  end

  assign wrAddr_willClear = 1'b0;
  assign wrAddr_willOverflowIfInc = (wrAddr_value == 6'h3f);
  assign wrAddr_willOverflow = (wrAddr_willOverflowIfInc && wrAddr_willIncrement);
  always @(*) begin
    wrAddr_valueNext = (wrAddr_value + _zz_wrAddr_valueNext);
    if(wrAddr_willClear) begin
      wrAddr_valueNext = 6'h0;
    end
  end

  always @(*) begin
    rdAddr_willIncrement = 1'b0;
    if((streamMux_2_io_output_valid && 1'b1)) begin
      rdAddr_willIncrement = 1'b1;
    end
  end

  assign rdAddr_willClear = 1'b0;
  assign rdAddr_willOverflowIfInc = (rdAddr_value == 6'h3f);
  assign rdAddr_willOverflow = (rdAddr_willOverflowIfInc && rdAddr_willIncrement);
  always @(*) begin
    rdAddr_valueNext = (rdAddr_value + _zz_rdAddr_valueNext);
    if(rdAddr_willClear) begin
      rdAddr_valueNext = 6'h0;
    end
  end

  assign behindWr = (inputStream_valid && (6'h20 <= wrAddr_value));
  assign frontWr = (inputStream_valid && (wrAddr_value < 6'h20));
  assign dMux = behindWr;
  assign inputStream_ready = streamDemux_2_io_input_ready;
  assign inputStream_fire = (inputStream_valid && inputStream_ready);
  assign behindRd = (rdAddr_value < 6'h20);
  assign frontRd = (! behindRd);
  assign mux = frontRd;
  assign EnergyOutEn = _zz_EnergyOutEn;
  assign EnergyOut = _zz_EnergyOut;
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      wrAddr_value <= 6'h0;
      rdAddr_value <= 6'h0;
      _zz_EnergyOutEn <= 1'b0;
      _zz_EnergyOut <= 10'h0;
    end else begin
      wrAddr_value <= wrAddr_valueNext;
      rdAddr_value <= rdAddr_valueNext;
      _zz_EnergyOutEn <= streamMux_2_io_output_valid;
      _zz_EnergyOut <= streamMux_2_io_output_payload_Energy;
    end
  end


endmodule

//DataInStreamFifoRemove_Pilots replaced by DataInStreamFifoPilots_Picking

module StreamMux (
  input  wire [0:0]    io_select,
  input  wire          io_inputs_0_valid,
  output wire          io_inputs_0_ready,
  input  wire [9:0]    io_inputs_0_payload_Re,
  input  wire [9:0]    io_inputs_0_payload_Im,
  input  wire          io_inputs_1_valid,
  output wire          io_inputs_1_ready,
  input  wire [9:0]    io_inputs_1_payload_Re,
  input  wire [9:0]    io_inputs_1_payload_Im,
  output wire          io_output_valid,
  input  wire          io_output_ready,
  output wire [9:0]    io_output_payload_Re,
  output wire [9:0]    io_output_payload_Im
);

  reg                 _zz_io_output_valid;
  reg        [9:0]    _zz_io_output_payload_Re;
  reg        [9:0]    _zz_io_output_payload_Im;

  always @(*) begin
    case(io_select)
      1'b0 : begin
        _zz_io_output_valid = io_inputs_0_valid;
        _zz_io_output_payload_Re = io_inputs_0_payload_Re;
        _zz_io_output_payload_Im = io_inputs_0_payload_Im;
      end
      default : begin
        _zz_io_output_valid = io_inputs_1_valid;
        _zz_io_output_payload_Re = io_inputs_1_payload_Re;
        _zz_io_output_payload_Im = io_inputs_1_payload_Im;
      end
    endcase
  end

  assign io_inputs_0_ready = ((io_select == 1'b0) && io_output_ready);
  assign io_inputs_1_ready = ((io_select == 1'b1) && io_output_ready);
  assign io_output_valid = _zz_io_output_valid;
  assign io_output_payload_Re = _zz_io_output_payload_Re;
  assign io_output_payload_Im = _zz_io_output_payload_Im;

endmodule

module StreamDemux (
  input  wire [0:0]    io_select,
  input  wire          io_input_valid,
  output reg           io_input_ready,
  input  wire [9:0]    io_input_payload_Re,
  input  wire [9:0]    io_input_payload_Im,
  output reg           io_outputs_0_valid,
  input  wire          io_outputs_0_ready,
  output wire [9:0]    io_outputs_0_payload_Re,
  output wire [9:0]    io_outputs_0_payload_Im,
  output reg           io_outputs_1_valid,
  input  wire          io_outputs_1_ready,
  output wire [9:0]    io_outputs_1_payload_Re,
  output wire [9:0]    io_outputs_1_payload_Im
);

  wire                when_Stream_l999;
  wire                when_Stream_l999_1;

  always @(*) begin
    io_input_ready = 1'b0;
    if(!when_Stream_l999) begin
      io_input_ready = io_outputs_0_ready;
    end
    if(!when_Stream_l999_1) begin
      io_input_ready = io_outputs_1_ready;
    end
  end

  assign io_outputs_0_payload_Re = io_input_payload_Re;
  assign io_outputs_0_payload_Im = io_input_payload_Im;
  assign when_Stream_l999 = (1'b0 != io_select);
  always @(*) begin
    if(when_Stream_l999) begin
      io_outputs_0_valid = 1'b0;
    end else begin
      io_outputs_0_valid = io_input_valid;
    end
  end

  assign io_outputs_1_payload_Re = io_input_payload_Re;
  assign io_outputs_1_payload_Im = io_input_payload_Im;
  assign when_Stream_l999_1 = (1'b1 != io_select);
  always @(*) begin
    if(when_Stream_l999_1) begin
      io_outputs_1_valid = 1'b0;
    end else begin
      io_outputs_1_valid = io_input_valid;
    end
  end


endmodule

//DataInStreamFifoOrder_Rechanged_1 replaced by DataInStreamFifoPilots_Picking

//DataInStreamFifoOrder_Rechanged replaced by DataInStreamFifoPilots_Picking

module DataInStreamFifoPilots_Picking (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [9:0]    io_push_payload_Re,
  input  wire [9:0]    io_push_payload_Im,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [9:0]    io_pop_payload_Re,
  output wire [9:0]    io_pop_payload_Im,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          CLK,
  input  wire          Rst_n
);

  reg        [19:0]   logic_ram_spinal_port1;
  wire       [19:0]   _zz_logic_ram_port;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [6:0]    logic_ptr_push;
  reg        [6:0]    logic_ptr_pop;
  wire       [6:0]    logic_ptr_occupancy;
  wire       [6:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [5:0]    logic_push_onRam_write_payload_address;
  wire       [9:0]    logic_push_onRam_write_payload_data_Re;
  wire       [9:0]    logic_push_onRam_write_payload_data_Im;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [5:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [5:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [5:0]    logic_pop_addressGen_rData;
  wire                when_Stream_l393;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [5:0]    logic_pop_sync_readPort_cmd_payload;
  wire       [9:0]    logic_pop_sync_readPort_rsp_Re;
  wire       [9:0]    logic_pop_sync_readPort_rsp_Im;
  wire       [19:0]   _zz_logic_pop_sync_readPort_rsp_Re;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [9:0]    logic_pop_sync_readArbitation_translated_payload_Re;
  wire       [9:0]    logic_pop_sync_readArbitation_translated_payload_Im;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [6:0]    logic_pop_sync_popReg;
  reg [19:0] logic_ram [0:63];

  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_Im,logic_push_onRam_write_payload_data_Re};
  always @(posedge CLK) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  always @(posedge CLK) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 7'h40) == 7'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[5:0];
  assign logic_push_onRam_write_payload_data_Re = io_push_payload_Re;
  assign logic_push_onRam_write_payload_data_Im = io_push_payload_Im;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[5:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l393) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign _zz_logic_pop_sync_readPort_rsp_Re = logic_ram_spinal_port1;
  assign logic_pop_sync_readPort_rsp_Re = _zz_logic_pop_sync_readPort_rsp_Re[9 : 0];
  assign logic_pop_sync_readPort_rsp_Im = _zz_logic_pop_sync_readPort_rsp_Re[19 : 10];
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload_Re = logic_pop_sync_readPort_rsp_Re;
  assign logic_pop_sync_readArbitation_translated_payload_Im = logic_pop_sync_readPort_rsp_Im;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_Re = logic_pop_sync_readArbitation_translated_payload_Re;
  assign io_pop_payload_Im = logic_pop_sync_readArbitation_translated_payload_Im;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (7'h40 - logic_ptr_occupancy);
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      logic_ptr_push <= 7'h0;
      logic_ptr_pop <= 7'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 7'h0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 7'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 7'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 7'h0;
        logic_ptr_pop <= 7'h0;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 7'h0;
      end
    end
  end

  always @(posedge CLK) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

module DataInStreamFifoLTP_Picking (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload_Re,
  input  wire [7:0]    io_push_payload_Im,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [7:0]    io_pop_payload_Re,
  output wire [7:0]    io_pop_payload_Im,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          CLK,
  input  wire          Rst_n
);

  reg        [15:0]   logic_ram_spinal_port1;
  wire       [15:0]   _zz_logic_ram_port;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [6:0]    logic_ptr_push;
  reg        [6:0]    logic_ptr_pop;
  wire       [6:0]    logic_ptr_occupancy;
  wire       [6:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [5:0]    logic_push_onRam_write_payload_address;
  wire       [7:0]    logic_push_onRam_write_payload_data_Re;
  wire       [7:0]    logic_push_onRam_write_payload_data_Im;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [5:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [5:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [5:0]    logic_pop_addressGen_rData;
  wire                when_Stream_l393;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [5:0]    logic_pop_sync_readPort_cmd_payload;
  wire       [7:0]    logic_pop_sync_readPort_rsp_Re;
  wire       [7:0]    logic_pop_sync_readPort_rsp_Im;
  wire       [15:0]   _zz_logic_pop_sync_readPort_rsp_Re;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [7:0]    logic_pop_sync_readArbitation_translated_payload_Re;
  wire       [7:0]    logic_pop_sync_readArbitation_translated_payload_Im;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [6:0]    logic_pop_sync_popReg;
  reg [15:0] logic_ram [0:63];

  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_Im,logic_push_onRam_write_payload_data_Re};
  always @(posedge CLK) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  always @(posedge CLK) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 7'h40) == 7'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[5:0];
  assign logic_push_onRam_write_payload_data_Re = io_push_payload_Re;
  assign logic_push_onRam_write_payload_data_Im = io_push_payload_Im;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[5:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l393) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign _zz_logic_pop_sync_readPort_rsp_Re = logic_ram_spinal_port1;
  assign logic_pop_sync_readPort_rsp_Re = _zz_logic_pop_sync_readPort_rsp_Re[7 : 0];
  assign logic_pop_sync_readPort_rsp_Im = _zz_logic_pop_sync_readPort_rsp_Re[15 : 8];
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload_Re = logic_pop_sync_readPort_rsp_Re;
  assign logic_pop_sync_readArbitation_translated_payload_Im = logic_pop_sync_readPort_rsp_Im;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_Re = logic_pop_sync_readArbitation_translated_payload_Re;
  assign io_pop_payload_Im = logic_pop_sync_readArbitation_translated_payload_Im;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (7'h40 - logic_ptr_occupancy);
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      logic_ptr_push <= 7'h0;
      logic_ptr_pop <= 7'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 7'h0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 7'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 7'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 7'h0;
        logic_ptr_pop <= 7'h0;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 7'h0;
      end
    end
  end

  always @(posedge CLK) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

//EnergyStreamFifoRemove_Pilots replaced by EnergyStreamFifoOrder_Rechanged

module StreamMux_1 (
  input  wire [0:0]    io_select,
  input  wire          io_inputs_0_valid,
  output wire          io_inputs_0_ready,
  input  wire [9:0]    io_inputs_0_payload_Energy,
  input  wire          io_inputs_1_valid,
  output wire          io_inputs_1_ready,
  input  wire [9:0]    io_inputs_1_payload_Energy,
  output wire          io_output_valid,
  input  wire          io_output_ready,
  output wire [9:0]    io_output_payload_Energy
);

  reg                 _zz_io_output_valid;
  reg        [9:0]    _zz_io_output_payload_Energy;

  always @(*) begin
    case(io_select)
      1'b0 : begin
        _zz_io_output_valid = io_inputs_0_valid;
        _zz_io_output_payload_Energy = io_inputs_0_payload_Energy;
      end
      default : begin
        _zz_io_output_valid = io_inputs_1_valid;
        _zz_io_output_payload_Energy = io_inputs_1_payload_Energy;
      end
    endcase
  end

  assign io_inputs_0_ready = ((io_select == 1'b0) && io_output_ready);
  assign io_inputs_1_ready = ((io_select == 1'b1) && io_output_ready);
  assign io_output_valid = _zz_io_output_valid;
  assign io_output_payload_Energy = _zz_io_output_payload_Energy;

endmodule

module StreamDemux_1 (
  input  wire [0:0]    io_select,
  input  wire          io_input_valid,
  output reg           io_input_ready,
  input  wire [9:0]    io_input_payload_Energy,
  output reg           io_outputs_0_valid,
  input  wire          io_outputs_0_ready,
  output wire [9:0]    io_outputs_0_payload_Energy,
  output reg           io_outputs_1_valid,
  input  wire          io_outputs_1_ready,
  output wire [9:0]    io_outputs_1_payload_Energy
);

  wire                when_Stream_l999;
  wire                when_Stream_l999_1;

  always @(*) begin
    io_input_ready = 1'b0;
    if(!when_Stream_l999) begin
      io_input_ready = io_outputs_0_ready;
    end
    if(!when_Stream_l999_1) begin
      io_input_ready = io_outputs_1_ready;
    end
  end

  assign io_outputs_0_payload_Energy = io_input_payload_Energy;
  assign when_Stream_l999 = (1'b0 != io_select);
  always @(*) begin
    if(when_Stream_l999) begin
      io_outputs_0_valid = 1'b0;
    end else begin
      io_outputs_0_valid = io_input_valid;
    end
  end

  assign io_outputs_1_payload_Energy = io_input_payload_Energy;
  assign when_Stream_l999_1 = (1'b1 != io_select);
  always @(*) begin
    if(when_Stream_l999_1) begin
      io_outputs_1_valid = 1'b0;
    end else begin
      io_outputs_1_valid = io_input_valid;
    end
  end


endmodule

//EnergyStreamFifoOrder_Rechanged_1 replaced by EnergyStreamFifoOrder_Rechanged

module EnergyStreamFifoOrder_Rechanged (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [9:0]    io_push_payload_Energy,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [9:0]    io_pop_payload_Energy,
  input  wire          io_flush,
  output wire [6:0]    io_occupancy,
  output wire [6:0]    io_availability,
  input  wire          CLK,
  input  wire          Rst_n
);

  reg        [9:0]    logic_ram_spinal_port1;
  wire       [9:0]    _zz_logic_ram_port;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [6:0]    logic_ptr_push;
  reg        [6:0]    logic_ptr_pop;
  wire       [6:0]    logic_ptr_occupancy;
  wire       [6:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1269;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [5:0]    logic_push_onRam_write_payload_address;
  wire       [9:0]    logic_push_onRam_write_payload_data_Energy;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [5:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [5:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [5:0]    logic_pop_addressGen_rData;
  wire                when_Stream_l393;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [5:0]    logic_pop_sync_readPort_cmd_payload;
  wire       [9:0]    logic_pop_sync_readPort_rsp_Energy;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [9:0]    logic_pop_sync_readArbitation_translated_payload_Energy;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [6:0]    logic_pop_sync_popReg;
  reg [9:0] logic_ram [0:63];

  assign _zz_logic_ram_port = logic_push_onRam_write_payload_data_Energy;
  always @(posedge CLK) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  always @(posedge CLK) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1269 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 7'h40) == 7'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[5:0];
  assign logic_push_onRam_write_payload_data_Energy = io_push_payload_Energy;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[5:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l393) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l393 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign logic_pop_sync_readPort_rsp_Energy = logic_ram_spinal_port1[9 : 0];
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload_Energy = logic_pop_sync_readPort_rsp_Energy;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_Energy = logic_pop_sync_readArbitation_translated_payload_Energy;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (7'h40 - logic_ptr_occupancy);
  always @(posedge CLK or negedge Rst_n) begin
    if(!Rst_n) begin
      logic_ptr_push <= 7'h0;
      logic_ptr_pop <= 7'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 7'h0;
    end else begin
      if(when_Stream_l1269) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 7'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 7'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 7'h0;
        logic_ptr_pop <= 7'h0;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 7'h0;
      end
    end
  end

  always @(posedge CLK) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule
