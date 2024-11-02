// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Nov  1 22:37:10 2024
// Host        : WIN-SHBOMJ4SJAL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/Desktop/tb/tb/tb.gen/sources_1/ip/pilot_ram/pilot_ram_sim_netlist.v
// Design      : pilot_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pilot_ram,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module pilot_ram
   (clka,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.01735 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "pilot_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  pilot_ram_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21136)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
