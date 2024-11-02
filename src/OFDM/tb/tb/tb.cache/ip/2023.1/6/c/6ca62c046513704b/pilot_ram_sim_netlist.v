// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Nov  1 22:37:10 2024
// Host        : WIN-SHBOMJ4SJAL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pilot_ram_sim_netlist.v
// Design      : pilot_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pilot_ram,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21200)
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
