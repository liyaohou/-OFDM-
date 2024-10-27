`timescale 1ns/1ps
module test_TxTop;


reg         sys_rst_n = 0;
reg         rgmii_rxc = 0;
reg  [3:0]  rgmii_rxd = 0;
reg         rgmii_rx_ctl = 0;
wire        rgmii_txc   ;
wire        rgmii_txd   ;
wire [3:0]  rgmii_tx_ctl;  
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
wire        dacClck;

wire [1:0]   ddr3_dqsP;
wire [1:0]   ddr3_dqsN;
wire [15:0]  ddr3_dq;
wire        txEnd;
wire [15:0] dacData;

TxTop TxTop_u(
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
    .txEnd          (txEnd),
    .dacClk         (dacClck),
    .dacData        (dacData)
);

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

task automatic udp;
    input [9:0] BYTE_COUNTER; 
    integer i;
    begin
        tx_rgmii(2,16'd1234);
        tx_rgmii(2,16'd1234);
        tx_rgmii(2,BYTE_COUNTER + 8);
        tx_rgmii(2,0);
        for(i=0;i<BYTE_COUNTER;i=i+1) begin
            tx_rgmii(1,i);
        end
    end
endtask

task automatic ip;
    input [9:0] BYTE_COUNTER; 
    begin
        tx_rgmii(2,16'h4500);//版本
        tx_rgmii(2,BYTE_COUNTER + 28);//长度
        tx_rgmii(2,0);//标识
        tx_rgmii(2,0);//片
        tx_rgmii(1,64);//生存时间
        tx_rgmii(1,17);//协议
        tx_rgmii(2,0);//首部校验和
        tx_rgmii(4,32'hc0a80141);
        tx_rgmii(4,32'hc0a80180);
        udp(BYTE_COUNTER);
    end
endtask

task automatic eth;
    input [9:0] BYTE_COUNTER; 
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
        tx_rgmii(6,48'h112233445566);
        tx_rgmii(6,48'h665544332211);//mac
        tx_rgmii(2,16'h0800);
        ip(BYTE_COUNTER);
        tx_rgmii(4,32'h11111111);//crc
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
    eth(64);
end


endmodule