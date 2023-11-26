// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Nov 26 08:03:16 2023
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/lab/SoC-Lab-lab5/labi/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59888)
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
