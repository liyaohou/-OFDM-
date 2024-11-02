`timescale 1ns/1ps
module test_RxTop;


reg         sys_rst_n = 0;
reg         rgmii_rxc = 0;
reg  [3:0]  rgmii_rxd = 0;
reg         rgmii_rx_ctl = 0;
wire        rgmii_txc   ;
wire [3:0]  rgmii_txd   ;
wire        rgmii_tx_ctl;  
wire        rgmii_rst_n ;
wire        ddr3_ckP   ;
wire        ddr3_ckN   ;
wire        ddr3_cke   ;
wire        ddr3_resetN;
wire        ddr3_rasN  ;
wire        ddr3_casN  ;
wire        ddr3_weN   ;
wire        ddr3_csN   ;
wire [2:0]  ddr3_ba    ;
wire [14:0] ddr3_addr  ;
wire        ddr3_odt   ;
wire [1:0]  ddr3_dm    ;
wire        axisIn_ready;
reg         axisIn_valid = 0;
reg  [7:0]  axisIn_payload_data = 0;
reg         axisIn_payload_last = 0;
reg         axisIn_payload_user = 0;
// wire        dacClk;

wire [1:0]   ddr3_dqsP;
wire [1:0]   ddr3_dqsN;
wire [15:0]  ddr3_dq;
reg        rxEnd = 0;
// wire [15:0] dacData;

RxTop RxTop_u(
    .sys_rst_n      (sys_rst_n),
    .rgmii_rxc      (rgmii_rxc),
    .rgmii_rxd      (rgmii_rxd),
    .rgmii_rx_ctl   (rgmii_rx_ctl),
    .rgmii_txc      (rgmii_txc),
    .rgmii_txd      (rgmii_txd),
    .rgmii_tx_ctl   (rgmii_tx_ctl),
    .rgmii_rst_n    (rgmii_rst_n),
    .ddr3_ckP       (ddr3_ckP   ),
    .ddr3_ckN       (ddr3_ckN   ),
    .ddr3_cke       (ddr3_cke   ),
    .ddr3_resetN    (ddr3_resetN),
    .ddr3_rasN      (ddr3_rasN  ),
    .ddr3_casN      (ddr3_casN  ),
    .ddr3_weN       (ddr3_weN   ),
    .ddr3_csN       (ddr3_csN   ),
    .ddr3_ba        (ddr3_ba    ),
    .ddr3_addr      (ddr3_addr  ),
    .ddr3_odt       (ddr3_odt   ),
    .ddr3_dm        (ddr3_dm    ),
    .ddr3_dqsP      (ddr3_dqsP),
    .ddr3_dqsN      (ddr3_dqsN),
    .ddr3_dq        (ddr3_dq),
    .rxEnd          (rxEnd),
    .axisIn_valid   (axisIn_valid),
    .axisIn_ready   (axisIn_ready),
    .axisIn_payload_data(axisIn_payload_data),
    .axisIn_payload_last(axisIn_payload_last),
    .axisIn_payload_user(axisIn_payload_user)
    // .dacClk         (dacClk),
    // .dacData        (dacData)
);

task automatic tx_axis;
    input [5:0] BYTE_COUNTER; 
    input [47:0] value;
    integer i;
    begin
        for(i=0;i<BYTE_COUNTER;i=i+1) begin
            wait(axisIn_ready)
            axisIn_valid = 1;
            axisIn_payload_data = (value >> ((BYTE_COUNTER-1-i)*8));
            #8;
        end
    end
endtask

task automatic udp;
    input [9:0] BYTE_COUNTER; 
    integer i;
    begin
        tx_axis(2,16'd1234);
        tx_axis(2,16'd1234);
        tx_axis(2,BYTE_COUNTER + 8);
        if(BYTE_COUNTER == 64)
        tx_axis(2,16'h8da4);
        if(BYTE_COUNTER == 512)
        tx_axis(2,16'heda8);
        if(BYTE_COUNTER == 3)
        tx_axis(2,16'h7021);
        for(i=0;i<BYTE_COUNTER;i=i+1) begin
            if(i == BYTE_COUNTER-1 && BYTE_COUNTER >= 18) begin
                if(axisIn_ready) begin
                    axisIn_payload_last = 1;
                    axisIn_payload_data = i; 
                    #8;
                end else begin
                    // axisIn_valid = 0;
                    axisIn_payload_last = 0;
                    wait(axisIn_ready)
                    // axisIn_valid = 1;
                    axisIn_payload_last = 1;
                    axisIn_payload_data = i; 
                    #8;
                end
            end else
            tx_axis(1,i[7:0]);
        end
        if(BYTE_COUNTER < 18) begin
            for(i=0;i<(18-BYTE_COUNTER);i=i+1) begin
                if(i == BYTE_COUNTER-1) begin
                    if(axisIn_ready) begin
                        axisIn_payload_last = 1;
                        tx_axis(1,0); 
                    end else begin
                        axisIn_valid = 0;
                        axisIn_payload_last = 0;
                        wait(axisIn_ready)
                        axisIn_valid = 1;
                        axisIn_payload_last = 1;
                        tx_axis(1,0); 
                    end
                end else
                tx_axis(1,0);
            end
        end
    end
endtask

task automatic ip;
    input [9:0] BYTE_COUNTER; 
    begin
        wait(~rgmii_rxc);
        wait(rgmii_rxc);
        tx_axis(2,16'h4500);//版本
        tx_axis(2,BYTE_COUNTER + 28);//长度
        if(BYTE_COUNTER == 64)
        tx_axis(2,16'h48df);//标识
        if(BYTE_COUNTER == 512)
        tx_axis(2,16'h48e2);//标识
        if(BYTE_COUNTER == 3)
        tx_axis(2,16'h48e3);//标识
        tx_axis(2,0);//片
        tx_axis(1,64);//生存时间
        tx_axis(1,17);//协议
        if(BYTE_COUNTER == 64)
        tx_axis(2,16'hada0);//首部校验和
        if(BYTE_COUNTER == 512)
        tx_axis(2,16'habdd);//首部校验和
        if(BYTE_COUNTER == 3)
        tx_axis(2,16'hadd9);//首部校验和
        tx_axis(4,32'hc0a80141);
        tx_axis(4,32'hc0a80180);
        udp(BYTE_COUNTER);
        axisIn_valid = 0;
        axisIn_payload_last = 0;
    end
endtask

task automatic tx_rgmii;
    input [5:0] BYTE_COUNTER; 
    input [47:0] value;
    integer i;
    begin
        for(i=0;i<BYTE_COUNTER*2;i=i+1) begin
            rgmii_rxd = (value >> ((BYTE_COUNTER-1-i/2)*8)) >> (4*(i%2));
            #4;
        end
    end
endtask

task automatic arp;
    integer i;
    begin
        wait(rgmii_rxc);
        wait(~rgmii_rxc);
        #2;
        rgmii_rx_ctl = 1;
        for(i=0;i<7;i=i+1) begin
            tx_rgmii(1,8'h55);
        end
        tx_rgmii(1,8'hD5);
        tx_rgmii(6,48'hffffffffffff);
        tx_rgmii(6,48'h6c1ff709fa24);//mac
        tx_rgmii(2,16'h0806);
        tx_rgmii(2,1);//硬件类型
        tx_rgmii(2,16'h0800);//协议类型
        tx_rgmii(2,16'h0604);//mac/ip长度
        tx_rgmii(2,1);//ARP请求
        tx_rgmii(6,48'h6c1ff709fa24);//mac
        tx_rgmii(4,32'hc0a80141);
        tx_rgmii(6,48'd0);
        tx_rgmii(4,32'hc0a80180);
        for(i=0;i<18;i=i+1) begin
            tx_rgmii(1,0);
        end
        tx_rgmii(4,32'h5f711a1a);//crc
        rgmii_rx_ctl = 0;
    end
endtask
initial begin
    #16;
    sys_rst_n = 1;
    
end

always #4 rgmii_rxc = ~rgmii_rxc;
initial begin
    #1600;
    #3200;
    ip(512);
    #1600;
    ip(512);
    #1600;
    ip(512);
    #1600;
    ip(512);
    #1600;
    ip(64);
    #80;
    rxEnd = 1;
    #8;
    rxEnd = 0;
    // #1600;
    // eth(3);
end

parameter CLC = 32;
reg  [1:0] flag=0;
integer i;
integer j;
integer k;
initial begin : wait_rden
  wait(!ddr3_csN & ddr3_rasN & !ddr3_casN & ddr3_weN)
  # (CLC*5 + CLC/2);
  force ddr3_dqsP = 2'd0;
  force ddr3_dqsN = 2'd3;
  force ddr3_dq = 16'hfffe;
  # CLC;
end

initial fork 
    begin:flag_0
        while(1) begin
            wait(flag == 0)
            wait(!ddr3_csN & ddr3_rasN & !ddr3_casN & ddr3_weN)
            # (CLC*2);
            flag = flag + 1;
            # (CLC*4 + CLC/2);
            for(i=0;i<8;i=i+1) begin:read0
                force ddr3_dqsP = ~ddr3_dqsP;
                force ddr3_dqsN = ~ddr3_dqsN;
                force ddr3_dq[15:8] = ddr3_dq[15:8] + 8'd2;
                force ddr3_dq[7:0] = ddr3_dq[7:0] + 8'd2;
                # (CLC/2);
            end
        end
    end begin:flag_1
        while(1) begin
            wait(flag == 1)
            wait(!ddr3_csN & ddr3_rasN & !ddr3_casN & ddr3_weN)
            # (CLC*2);
            flag = flag + 1;
            # (CLC*4 + CLC/2);
            for(j=0;j<8;j=j+1) begin:read1
                force ddr3_dqsP = ~ddr3_dqsP;
                force ddr3_dqsN = ~ddr3_dqsN;
                force ddr3_dq[15:8] = ddr3_dq[15:8] + 8'd2;
                force ddr3_dq[7:0] = ddr3_dq[7:0] + 8'd2;
                # (CLC/2);
            end
        end
    end begin:flag_2
        while(1) begin
            wait(flag == 2)
            wait(!ddr3_csN & ddr3_rasN & !ddr3_casN & ddr3_weN)
            # (CLC*2);
            flag = 0;
            # (CLC*4 + CLC/2);
            for(k=0;k<8;k=k+1) begin:read1
                force ddr3_dqsP = ~ddr3_dqsP;
                force ddr3_dqsN = ~ddr3_dqsN;
                force ddr3_dq[15:8] = ddr3_dq[15:8] + 8'd2;
                force ddr3_dq[7:0] = ddr3_dq[7:0] + 8'd2;
                # (CLC/2);
            end
        end
    end 
join


endmodule