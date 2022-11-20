// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Feb 23 12:38:06 2022
// Host        : EE-114103LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/m_waseem/Semester_project/Semester_project.srcs/sources_1/ip/RAM/RAM_sim_netlist.v
// Design      : RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module RAM
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "3" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.6215679999999999 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "RAM.mem" *) 
  (* C_INIT_FILE_NAME = "RAM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6000" *) 
  (* C_READ_DEPTH_B = "6000" *) 
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
  (* C_WRITE_DEPTH_A = "6000" *) 
  (* C_WRITE_DEPTH_B = "6000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  RAM_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb(addrb),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
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
        .web(web));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module RAM_bindec
   (ena_array,
    addra,
    ena);
  output [0:0]ena_array;
  input [1:0]addra;
  input ena;

  wire [1:0]addra;
  wire ena;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h40)) 
    \/i_ 
       (.I0(addra[0]),
        .I1(ena),
        .I2(addra[1]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module RAM_bindec_0
   (enb_array,
    addrb,
    enb);
  output [0:0]enb_array;
  input [1:0]addrb;
  input enb;

  wire [1:0]addrb;
  wire enb;
  wire [0:0]enb_array;

  LUT3 #(
    .INIT(8'h40)) 
    \/i_ 
       (.I0(addrb[0]),
        .I1(enb),
        .I2(addrb[1]),
        .O(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module RAM_blk_mem_gen_generic_cstr
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire [2:2]ena_array;
  wire enb;
  wire [2:2]enb_array;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire \ramloop[0].ram.r_n_18 ;
  wire \ramloop[0].ram.r_n_19 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_16 ;
  wire \ramloop[1].ram.r_n_17 ;
  wire \ramloop[1].ram.r_n_18 ;
  wire \ramloop[1].ram.r_n_19 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_20 ;
  wire \ramloop[1].ram.r_n_21 ;
  wire \ramloop[1].ram.r_n_22 ;
  wire \ramloop[1].ram.r_n_23 ;
  wire \ramloop[1].ram.r_n_24 ;
  wire \ramloop[1].ram.r_n_25 ;
  wire \ramloop[1].ram.r_n_26 ;
  wire \ramloop[1].ram.r_n_27 ;
  wire \ramloop[1].ram.r_n_28 ;
  wire \ramloop[1].ram.r_n_29 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_30 ;
  wire \ramloop[1].ram.r_n_31 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire [0:0]wea;
  wire [0:0]web;

  RAM_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[12:11]),
        .ena(ena),
        .ena_array(ena_array));
  RAM_bindec_0 \bindec_b.bindec_inst_b 
       (.addrb(addrb[12:11]),
        .enb(enb),
        .enb_array(enb_array));
  RAM_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .addra(addra[12:11]),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .ram_douta(ram_douta));
  RAM_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 }),
        .DOBDO({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .addrb(addrb[12:11]),
        .clkb(clkb),
        .doutb(doutb),
        .enb(enb),
        .ram_doutb(ram_doutb));
  RAM_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ramloop[0].ram.r_n_18 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ramloop[0].ram.r_n_19 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[8:0]),
        .dinb(dinb[8:0]),
        .ena(ena),
        .enb(enb),
        .ram_douta(ram_douta),
        .ram_doutb(ram_doutb),
        .wea(wea),
        .web(web));
  RAM_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOBDO({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .addra(addra[10:0]),
        .addrb(addrb[10:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .ena(ena),
        .ena_array(ena_array),
        .enb(enb),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
  RAM_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[15:9]),
        .dinb(dinb[15:9]),
        .\douta[15] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 }),
        .\doutb[15] ({\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 }),
        .ena(ena),
        .ena_0(\ramloop[0].ram.r_n_18 ),
        .enb(enb),
        .enb_0(\ramloop[0].ram.r_n_19 ),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module RAM_blk_mem_gen_mux
   (douta,
    ena,
    addra,
    clka,
    DOADO,
    ram_douta,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [15:0]douta;
  input ena;
  input [1:0]addra;
  input clka;
  input [15:0]DOADO;
  input [8:0]ram_douta;
  input [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [15:0]DOADO;
  wire [1:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire [8:0]ram_douta;
  wire [1:0]sel_pipe;
  wire [1:0]sel_pipe_d1;

  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(ram_douta[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[0]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[10]_INST_0 
       (.I0(DOADO[10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[10]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[11]_INST_0 
       (.I0(DOADO[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[11]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[12]_INST_0 
       (.I0(DOADO[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[12]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[13]_INST_0 
       (.I0(DOADO[13]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[13]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[14]_INST_0 
       (.I0(DOADO[14]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[14]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[15]_INST_0 
       (.I0(DOADO[15]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[15]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(ram_douta[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[1]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[2]_INST_0 
       (.I0(DOADO[2]),
        .I1(ram_douta[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[2]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[3]_INST_0 
       (.I0(DOADO[3]),
        .I1(ram_douta[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[3]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[4]_INST_0 
       (.I0(DOADO[4]),
        .I1(ram_douta[4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[4]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[5]_INST_0 
       (.I0(DOADO[5]),
        .I1(ram_douta[5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[5]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[6]_INST_0 
       (.I0(DOADO[6]),
        .I1(ram_douta[6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[6]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[7]_INST_0 
       (.I0(DOADO[7]),
        .I1(ram_douta[7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[7]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[8]_INST_0 
       (.I0(DOADO[8]),
        .I1(ram_douta[8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[8]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[9]_INST_0 
       (.I0(DOADO[9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module RAM_blk_mem_gen_mux__parameterized0
   (doutb,
    enb,
    addrb,
    clkb,
    DOBDO,
    ram_doutb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [15:0]doutb;
  input enb;
  input [1:0]addrb;
  input clkb;
  input [15:0]DOBDO;
  input [8:0]ram_doutb;
  input [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [15:0]DOBDO;
  wire [1:0]addrb;
  wire clkb;
  wire [15:0]doutb;
  wire enb;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ;
  wire [8:0]ram_doutb;

  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[0]_INST_0 
       (.I0(DOBDO[0]),
        .I1(ram_doutb[0]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[0]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[10]_INST_0 
       (.I0(DOBDO[10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[10]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[11]_INST_0 
       (.I0(DOBDO[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[11]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[12]_INST_0 
       (.I0(DOBDO[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[12]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[13]_INST_0 
       (.I0(DOBDO[13]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[13]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[14]_INST_0 
       (.I0(DOBDO[14]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[14]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[15]_INST_0 
       (.I0(DOBDO[15]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[15]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[1]_INST_0 
       (.I0(DOBDO[1]),
        .I1(ram_doutb[1]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[1]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[2]_INST_0 
       (.I0(DOBDO[2]),
        .I1(ram_doutb[2]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[2]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[3]_INST_0 
       (.I0(DOBDO[3]),
        .I1(ram_doutb[3]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[3]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[4]_INST_0 
       (.I0(DOBDO[4]),
        .I1(ram_doutb[4]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[4]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[5]_INST_0 
       (.I0(DOBDO[5]),
        .I1(ram_doutb[5]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[5]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[6]_INST_0 
       (.I0(DOBDO[6]),
        .I1(ram_doutb[6]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[6]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[7]_INST_0 
       (.I0(DOBDO[7]),
        .I1(ram_doutb[7]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[7]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[8]_INST_0 
       (.I0(DOBDO[8]),
        .I1(ram_doutb[8]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[8]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \doutb[9]_INST_0 
       (.I0(DOBDO[9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(doutb[9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[0]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[1]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module RAM_blk_mem_gen_prim_width
   (ram_douta,
    ram_doutb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]ram_douta;
  output [8:0]ram_doutb;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire ena;
  wire enb;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire [0:0]wea;
  wire [0:0]web;

  RAM_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .ena(ena),
        .enb(enb),
        .ram_douta(ram_douta),
        .ram_doutb(ram_doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module RAM_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOBDO,
    clka,
    clkb,
    ena_array,
    enb_array,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]DOADO;
  output [15:0]DOBDO;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input ena;
  input enb;
  input [10:0]addra;
  input [10:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [15:0]DOADO;
  wire [15:0]DOBDO;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire ena;
  wire [0:0]ena_array;
  wire enb;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  RAM_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .ena(ena),
        .ena_array(ena_array),
        .enb(enb),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module RAM_blk_mem_gen_prim_width__parameterized1
   (\douta[15] ,
    \doutb[15] ,
    clka,
    clkb,
    ena_0,
    enb_0,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [6:0]\douta[15] ;
  output [6:0]\doutb[15] ;
  input clka;
  input clkb;
  input ena_0;
  input enb_0;
  input ena;
  input enb;
  input [11:0]addra;
  input [11:0]addrb;
  input [6:0]dina;
  input [6:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [6:0]dina;
  wire [6:0]dinb;
  wire [6:0]\douta[15] ;
  wire [6:0]\doutb[15] ;
  wire ena;
  wire ena_0;
  wire enb;
  wire enb_0;
  wire [0:0]wea;
  wire [0:0]web;

  RAM_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .\douta[15] (\douta[15] ),
        .\doutb[15] (\doutb[15] ),
        .ena(ena),
        .ena_0(ena_0),
        .enb(enb),
        .enb_0(enb_0),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module RAM_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    ram_doutb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]ram_douta;
  output [8:0]ram_doutb;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire ena;
  wire enb;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00017F80039FF00053FA0004FF00000000000000000000000000000000000000),
    .INITP_01(256'h0000E0000006000000F0000001A00000080000003000000780000038000033B0),
    .INITP_02(256'h0000000000000000000002F00000F800007F40003FF00001E000003C000016C0),
    .INITP_03(256'hA08AD5624EF05286314FCC6CC8B39B80C3AED3205447C29C342EDAFAF4E10000),
    .INITP_04(256'hCBAF51D6364853F88F07EB8F20DA6B6609B562B4E9317F1FB622BBAB64FEF0BB),
    .INITP_05(256'h52D90C71BF14201C846111383CB3D43E084D580AA6D648F61A2FA97AAF229DA3),
    .INITP_06(256'h72BC53307FA65AD9EC5557128C45232B051F844698C4F999B79F7DC5DA4828C5),
    .INITP_07(256'hC9BAD552990FCB3A432B8AA62BA3ECD96F0CB2568E21A44962B7DF0C33BD5FFD),
    .INITP_08(256'hF0F9A51B3238B415BE961F10D75977144EF1FA7E8454E2E425B1718762F5F694),
    .INITP_09(256'h66393B34385E458B89207F344709BCD91C33A7699F1A7DCAEF94D0AEC870D0E4),
    .INITP_0A(256'h0CBB3FA906168B0E78D094CA4A6163B124EB96352D1C4124A982E4344802DFA8),
    .INITP_0B(256'h056E7B8E6482B3C15C30575B8A7FACEFF4359A395B61F7FBFB4EA6F4CBB55E28),
    .INITP_0C(256'hE85A06AED7F62D20614A61D43BD7609D4416793DE239048F17576D330E2A3224),
    .INITP_0D(256'hD6F547FE649D193C7818384C1F2FF1CF494916AAB9A44FCC06B0A3A3D443DAA7),
    .INITP_0E(256'hC6F2F91218B6EC02DC17A10FD5CBD94607BAA091761EDD7C50183AAE9026BA06),
    .INITP_0F(256'h608CEB34781D2396A1F27E4E15C765E9F89005F373604A4DFC68E4B9EF230F09),
    .INIT_00(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_01(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_02(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_03(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_04(256'h05B4D2BFC3C3C3A76E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_05(256'h7FDAFE797B127979797979AB27B717A66E6E6E6E6E6E6E6E6E6E6E6E27074A0A),
    .INIT_06(256'h6E6E6E6E6E503CD3D34EA979797979797979795D636E6E6E6E6E6E6E6E6E6E6E),
    .INIT_07(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E96078E127979797979A0C36E6E6E6E6E6E6E),
    .INIT_08(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E27F16EE9EC797902F7036E6E6E6E),
    .INIT_09(256'h0B6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E167927D7226E),
    .INIT_0A(256'h6EF079D0E96E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E3FD079),
    .INIT_0B(256'h6E6ED76A981296AF6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_0C(256'h6E6E6E6E6E9DE579792E6B6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_0D(256'h6E6E6E6E6E6E6E6E6E8679792FC26E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_0E(256'h6E6E6E6E6E6E6E6E6E6E6E6E9779114EF36E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_0F(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E7FD879D86E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_10(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E3FBD7979F6602A6E6E6E6E6E6E),
    .INIT_11(256'h79797971DC356E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E8E40797979B3B550),
    .INIT_12(256'h6E6E3F6B12797979792E4FCD6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E324B79),
    .INIT_13(256'h6E6E6E6E6E6E6E6E1903DA79797979A013C36E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_14(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6EE999CF797979797A7BD46E6E6E6E6E6E6E6E),
    .INIT_15(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6EF3316AC6797979D26E6E6E6E),
    .INIT_16(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_17(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_18(256'h8C69620C19DBC0BF0ECBF632AAFACCA56E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_19(256'h1BA07411F5D59CBCDBFBD3B2AB5B3D2969FDC4B2A6A4E76EFB92C659F565524D),
    .INIT_1A(256'h0BF6AE943D7B90BF99816A2C0E4A32473C365206EFA95C94DF1F922C7F04228B),
    .INIT_1B(256'hF107AA479254AC3D20FDE345B537D27EA2FC215D40E1A0E7EB35D7462C5D5E5A),
    .INIT_1C(256'hE52A4A2B9AECF829C19B675064A901FB1512DBEE55AE3DE0A52E3BF79BC093A5),
    .INIT_1D(256'hA1F4B89B08B6045C9EA05DD9F69C4F6FBE709B0ECA1C1C7EAF23A0C01D080B92),
    .INIT_1E(256'h3194996D24A78D6D4DB6F4A01A15FCC3CC6405D77C9B6D55A861BD6DC4C6BB10),
    .INIT_1F(256'hE74AD4AEDE715036E950A58186339E9A0D3C6C55A7C19CDD0F6BF2394105F0DA),
    .INIT_20(256'h3FED2BA17F9F38DC3C166BC4B64CD6BD7EF3EBC2BF1FDF59EBB595D92AC78888),
    .INIT_21(256'h0E15C3379BF98B5199FE8EE0B76EC3D8E2A07A0C79524D3C7CE98C7B9AC585F9),
    .INIT_22(256'h1BE9E088BD2CE25FEA1818A600540CB692CF4E1B45F34B9E7AAC7A3C0BDE2C34),
    .INIT_23(256'h0FECC761DD3DB91BFFC5F5694517C3CA1338716921EB35488F61C13DC9977BF8),
    .INIT_24(256'hD15FDFDD65A136A3E51E36FBA16B2B5A6D5377341D3B64DC0D42D04C972667BB),
    .INIT_25(256'h89866A1063C1AA0C5CF1C6B999E9CAD6CC683FFF96E032EC898320FEA85E2C01),
    .INIT_26(256'hD1C328CB72544BF062264D10C8D6B7705743A32CD81F5013F9BE63A25DF8FEC5),
    .INIT_27(256'h777F7EB681983043DC2537A1DE3DFC8031DF8F58709B539042CB6CF51B2E905D),
    .INIT_28(256'h8BE66D2ACD24E8D34D7B031B45962BD755261D31044B31C4AD9F6FD7E44A1F15),
    .INIT_29(256'hE8C2B40A3DA131C0B7F5E92944EE5A609F4B7CF2EB9C7B05B7D6D77E755AB625),
    .INIT_2A(256'h636BEA1BA38A6A4C6DAA9510F53A96B78E12604B63538F7A26F74E4A50D54EEF),
    .INIT_2B(256'h558F5A8AF74F901BB16FD45E391D311CCC830A7D217259D3139E98CD63AA3189),
    .INIT_2C(256'h9E93F369129052F217CBF421F411A23C93DA50B3DCC020C000F050FCA534D4FA),
    .INIT_2D(256'h2338C4CF48F134B935066E8A9EB740DE0CA47B8B5B5FFEEE039DAE70CF3D121C),
    .INIT_2E(256'h325551B583AAF8CE2C41C84298AE4E8B70EBFFAB66996FC88840B61FDC473C69),
    .INIT_2F(256'h9BCF489DE5886E790144D6C12951EBC8993F9C0AF00427063F4C4B2B6D8704FF),
    .INIT_30(256'hABC39D4CD0EEE575741555CE3B5E070C3FF297678755315970E9700333F9640E),
    .INIT_31(256'hD9F998C54CF8EDFBECEC60B87D84B023451C093D8C2061AE4C30718B59C26E72),
    .INIT_32(256'h4A8AE5473027E3F1371E4CBB6587301E7FB824B36CF0FDF99E66C058AEDCC327),
    .INIT_33(256'hEE84874A53BC5B36FFDAB34E0CD2660A873CC3D25BBDE80FE6CDAB961B558E92),
    .INIT_34(256'h651C53FEA94CBCBC0177FFAEB22307E6AECFD175E4DA6682E3E380ADED83E8CD),
    .INIT_35(256'h44015DE3B8D8ACD92C1FB708F00314612D5376C65F18CBE12236AA755C660430),
    .INIT_36(256'hB544E24932207EF98820E1004DC43AEF643CD1D96D206B46698C5D0FE1CFAB66),
    .INIT_37(256'h974B16CBEF0682358D841C2F530006692917BCEE3A33AD6BD393ED49CA8F4001),
    .INIT_38(256'h476EA117651A8281CF8A4D12297C89453658BD321E8E68B0B79F8234BE4B68CD),
    .INIT_39(256'h3B793D2A6FF813425A6683956F093A80415CC87E2A7D1FACF9AE79A208A6B614),
    .INIT_3A(256'h8D50DA011DA87EE93DC7347D91D582357595CFE57ED076CD601483F7593083B1),
    .INIT_3B(256'hCDC4149D11A919D73CBDA280EA97A460CFADC236AD9F06935A0566330046ED0E),
    .INIT_3C(256'hCD5A92E65AA61C4E364C2059FB1C839862417D94833F78A15F1C9D60D21EDD2C),
    .INIT_3D(256'h1C6B8E87BDE0C2C033065F39FEBDCC0EA61E585059F4805DE7BE57D4207B6BFF),
    .INIT_3E(256'h74FD3945756062C7442BB2980810D1873061BDA3FB46E980A83821BC2DD874B1),
    .INIT_3F(256'h68B73411A56FB019B04E7D0A09A01ABFD7B14C3912F685FE441BE389262DA245),
    .INIT_40(256'h10DC74882810F4E946A2535316B31C6F861D675BEC0FAC6E5F457F655B41ECC2),
    .INIT_41(256'h6360DF55267AF6500A50E42F9E27AB97A636D993D92988877853921EF07C0C5D),
    .INIT_42(256'h17B1262324ED715B2E9576781E60224744479B125A4E5CACEF12F8859471CFB2),
    .INIT_43(256'h3D6BABE5231B964ADEF1A1FF54D4C50C4C5FCA68AF69DFDF4C719A82C223744A),
    .INIT_44(256'h2E44F528A89F034CD468ECF439640ADEC3541397200997AC09FED9241BDD20A3),
    .INIT_45(256'h3EFD83AA7F5BCFEE0574B72C8FC1198D336B6E4EA5C3C01F885C0C346103EFF1),
    .INIT_46(256'h58E0F299CF7D2D685A295A3688E343ACBABA5FDA201CDAB8CE386781BB35415E),
    .INIT_47(256'hF298E19B2D030F2650A8F7E79BE21C02BCC11703DB9E13622EF5E77A8CDBFD57),
    .INIT_48(256'h40D19832D708CD49614ECFBB82A714C97EDF5F0A788C22FCB38C8EA14A037CFA),
    .INIT_49(256'h84A2EE15CBEA42FCC768EEA008F1A61E41D663A45DC5C27F6F086CBAC0ACB896),
    .INIT_4A(256'hFA0F8B1592D4F96751E55ED408C0ECFF8B1CE6D833A26B1D7BFBD343350EC876),
    .INIT_4B(256'hD4EED46F7D70144EFEA6010B6C007E9EEED48200D446352D73665C7D5185A86E),
    .INIT_4C(256'h5599144477C51B249AD0B72DD29FF1EAE2BBF271109ADFA581E363576C054BB3),
    .INIT_4D(256'h4F35788A9B56360DE5F70A7527B33C7277CFFFF2267327B6C5898494170545DC),
    .INIT_4E(256'hA6043F925B846271C26E04C9B23A96F62F9035D9A754410420AC47C423FEB70C),
    .INIT_4F(256'h80EB97A8EABB079FFBA07B861AB5EE56A9E96A6840D622443B8D61BC8E9B87AF),
    .INIT_50(256'h58B66B86D62958A6C746A545DFB6208C13388932CB7A4050CFD1D5C28EFF9462),
    .INIT_51(256'h7941B159FE38ED2377E36E8AF7FC8878B75E761D67F864F44EE855639CFAC0E2),
    .INIT_52(256'hE92023C2A1986080DFCA67A586A2E265B9672FDEEC4FD82DEA1EF83E96CCC712),
    .INIT_53(256'hE83C2D8C8F0A634BBCEAFFB854558E88A8D4B1C57E9438A8D8FDF7961EEC7651),
    .INIT_54(256'hA61342D8C38C9D3FCD6294473BA10DD3D0FCC733180CCAA3E65EE80DF85348FE),
    .INIT_55(256'h1B963E84B2351CB941426131DF2910F6FEB7A84D4C945E0CA9405ECF6948B0C3),
    .INIT_56(256'h9A053C25A3D628BD3F5510BDF1A673545A78DFBED3C8FD746EE4E81C3F22A3EC),
    .INIT_57(256'hC0C2E5729C053A9EB366F846615D614498913E69066C6FD10D38112EDCF3C7B2),
    .INIT_58(256'h19D66C443C26780A0FDB24D011E71695C8F5CF22210559D4A0B09FD9DEF4B103),
    .INIT_59(256'h47FADAB24CCCDED8737137E9A71E5D510A8D72D1102BA89E9CCF553A63948E61),
    .INIT_5A(256'hB57A857013F9206DFF26F6F05706612491B29EB8EDFECA23A805FB4FA20DB27A),
    .INIT_5B(256'hBB25830F4D9CE469D2CD28A70CD09AAA8333F62BE0CAF4B67609957714AA57C4),
    .INIT_5C(256'h05EA530EA8B6F952549A743AAD1136BDC661A0137D33769C7D7E6FF8A74C93A3),
    .INIT_5D(256'h00658899C46114BAC4912CC9BA92380590E75F71892447068C6C5F7269CE0637),
    .INIT_5E(256'hBD9860A9BDBF91EC8BD70BC8FB594C37E37A889768A96B07BB8030632A8CFC11),
    .INIT_5F(256'h842B677B8BC38A366A247B68ADA55440528C645967A5EC798C833AEC3624A88E),
    .INIT_60(256'h2EDA77CE0D934B9F559DE317A3760641468780BFE684BF2F60EB1DDBFAF43DCF),
    .INIT_61(256'h4BE7F2D5C6FD936C817E02F2443FBCEC35C881D775069FB165D8250F5DC7DE69),
    .INIT_62(256'hE329A77D179CFC7157EC82441BA23312FE7280AC07DA30DCE586FAC335254FFD),
    .INIT_63(256'hB3B6BD16C52C19F99CB9239327C35499375542BADCCC97DFBE2DC9BCCD7AF700),
    .INIT_64(256'h74F89535FF5FA2483122B00CB850446C3B5949B66BD501E774B0D71BF7CD2F0E),
    .INIT_65(256'h87517BAA2112294F4D69CFC24E2E475F79DB584BB21A31A92FEFB6AF0C3F370E),
    .INIT_66(256'h49403B3A024DF8E8E152CFA9A400A15540544817A36E6EA1E0E97D1670091915),
    .INIT_67(256'h48C1AA649E074CCABDF5F167FF1C37C22E180E8AD357B92770FC76D57490D9B4),
    .INIT_68(256'h04C1D085F00192E8B34159839B41C08588EDDE7F541C802748472707B30F0C14),
    .INIT_69(256'hEF942D834569DA7CD1713B8D40147260A0B974DC8BFC0D1FA68EA8DC24D9AB49),
    .INIT_6A(256'h4CEB8694426249EC378747C508D7CCA61F6A60DA080404AC56A6152CA1DCC63A),
    .INIT_6B(256'hD17125FCE9140970E59D4D24298A00280B7306E5926B5632AD5F2BBA60B0B851),
    .INIT_6C(256'hB02977B59BEE38728AECD8D086ADF75B1F7AFEA556113F611C0C7806F655CB28),
    .INIT_6D(256'h5BA8918EB5F040C3D54673EB27BB9632AFE840682704483D0523342033C7B05E),
    .INIT_6E(256'hEE633CBDBE4285D19EE1C806A40233D7C4A21B5AAE1C3207EC0378C68A91B8D1),
    .INIT_6F(256'hB734745175706AA5E861466D611F90098D90E4374C66A71F37A26D793B1934BB),
    .INIT_70(256'hC01BA0EEB9B1EF62725B666B82BF3CE3FB52D26FCF9A0A404E1AB20415C77ED4),
    .INIT_71(256'h61E2C7D932F1A5232628A83C1EB9362418A310DF44DA13803FED943D46F2DD7E),
    .INIT_72(256'h59531616919076FF034B0FD8841B567468E036BAF61F7E9BAD9299830F53D47E),
    .INIT_73(256'h1B4956EBAB102BEA10F5D6239974893C724CB5344D90EBA94A216E2B44F6D5E7),
    .INIT_74(256'h2BD18B9EB6F51F947AB7C29E587D62D53BFA7920D8B9EB409188C6CA20674867),
    .INIT_75(256'hCABE5262EC8A50508CD4BB43A7D46F2D350D43E167F9FA388B37E462815DF371),
    .INIT_76(256'h578944892238483587B057D84175957880ECCCF05310E00D3534EE867E249090),
    .INIT_77(256'h8A4858D69E17350473F234DE33D1F78DC8AC6FF0321A310AECDFDCEFB9634954),
    .INIT_78(256'h56EAB88E319A0BDFC13CCB5ADF859153D46C137694AD1071BA0D164B778EF4D1),
    .INIT_79(256'hAFF5C7B6CB75156F80F42993B4CF49183A76774D5DDECDD781FE06ED6EC64F70),
    .INIT_7A(256'hBF56915918F6652887B6DB2C04F5485A8513FECE23BE5D8C916BA75C665DFE6E),
    .INIT_7B(256'h8EC742ACFF58EFE8D25C1459E6E23F6F9F5805280E13C3A21C3E0985FF57E0AD),
    .INIT_7C(256'hF65A08EB13948FF1A546976F9891CAF6C3B354CDBC6D91783325A97137E8A66D),
    .INIT_7D(256'h9A30AC55CC4AA690FE1717DAA602A22B3EB86E99771B8B29668F9D7F83F9EF72),
    .INIT_7E(256'h4DF5C8E6534F4825D2A7D97A941495C33B47A888DD0E31DDDC08C78495232B4F),
    .INIT_7F(256'h147AF141223791D41BB7542CC5818FEDEE1553DD64D7CBECEBF92D2DAAA723E9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb[7:0]}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,dinb[8]}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],ram_doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],ram_doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2 
       (.I0(addrb[12]),
        .I1(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module RAM_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOBDO,
    clka,
    clkb,
    ena_array,
    enb_array,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]DOADO;
  output [15:0]DOBDO;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input ena;
  input enb;
  input [10:0]addra;
  input [10:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_87 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_91 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [15:0]DOADO;
  wire [15:0]DOBDO;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire ena;
  wire [0:0]ena_array;
  wire enb;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h059112C4F3BDE932FD830708F0E6022AE4270AB81D6E0E0C051C1C2C071BE7DB),
    .INIT_01(256'hF9BE0B4F06C514A7FD2EF6690133F3BB00EA0E1C07E0F8D6F9A6075C09B81CC8),
    .INIT_02(256'hF20B094BE7450B3207F208F1F6E0F08C09A6F18AF977FCBEFD4514410A221D64),
    .INIT_03(256'hF4C313B3EC28EF25004116E7EB9D0F600F8201620E4513F9F58E13DFDC6CF5D6),
    .INIT_04(256'hEED7DFEAECB00092FE0000460713EC3E07171ECC0AF408BD06C201A4DDA011D9),
    .INIT_05(256'hE95406B2E85EF83FEEB10BD7092FFD7B04F20D1FFCB1E5C0F694F6350FA2FB6C),
    .INIT_06(256'h057C063A12F4FB77ED7D01C3FD95F9210C650EDBF8C31CB5017CF6E90893001D),
    .INIT_07(256'h115A03ADF58E1892F6850807F824ED91F2B40EDC0961155D0C4C0C76F46017FE),
    .INIT_08(256'hE6CEDEA1EBA5F89D1C3AFE5EF46007A3049D1695FF94070CF325E058EA2B0057),
    .INIT_09(256'h180C2013EC34E4C8EB8EDBEBF19C0A4A2D3D03E305781444057527C40516F5D0),
    .INIT_0A(256'hF6990B9F0AC311AA1648215CEED0DE8A05BAE0E90F2520A41C1B07D0EC1C23BE),
    .INIT_0B(256'hF7C90C0D0D8AFD41F75CEE6802CBEFACEF9DFC39F5D7FE4918E018AC0B3DE33B),
    .INIT_0C(256'hF36E0B57FF9A153208EA29360DB9F32AF1F7F3F5DC94D73AF1E112F3EB39FC9D),
    .INIT_0D(256'hFA52F5A81A1CE0A8EFABF2CCF9AB084B099708B90BA5F35BFDA9ECAEFD43DFE8),
    .INIT_0E(256'h074F0ACD285EF2E0FE2AF6FA1298F873DFE6070513D0FD1907DD0E39051DF454),
    .INIT_0F(256'hEC7A05E6F11F054CFF710B9205D6F474F0790975F9C2F5F5F627008C091FF7AD),
    .INIT_10(256'h1BA70F9F138FE824F2FDF75113830C07FB13FFDBF79AEE6BECFC09E4F9FDFC61),
    .INIT_11(256'hE25AFA5DFA61EDA5FCF3F5921D39ED32FF3D253C04090535EA86F4FEEB2AF82C),
    .INIT_12(256'hF8340ACDEBB100BDE793EFD2F575E53AFE0905F1FEA6076414C60FCA19B5079B),
    .INIT_13(256'h11D916DD1A74E947F64AF212FA0CF60D0327DE53E841EC25F761ED401C47076B),
    .INIT_14(256'hE96309F2EDA2E2D5FAE9F7880457F365028317100897FF891355F6AFFB92F10F),
    .INIT_15(256'hEFB2F84D06221A83FD6810CB073DD2B1E6690AD808F4E8C51EB2064806C81B9F),
    .INIT_16(256'hF69110CE2A3CDC17ED85EFEAF01DFBCC1212092DFDBFD7840EA710C02A1CDF37),
    .INIT_17(256'h1BBA09ED0788EF59F763E89C0D57EDF7E5021662CE8CFD1E0774F1F5FD2BF461),
    .INIT_18(256'hF39823BAF10804790BEC11ACE9ECE9AEE080EAC10D5DED1500662B56E8CBEA01),
    .INIT_19(256'h0B7307090CDDE94BFC8F01B0D42001E20F63F7500244F528EC70004711DEEA16),
    .INIT_1A(256'h363A11E8FF0915230B890A6D13CCFE1A0E830BC9D49CE4472057F877FFF6F327),
    .INIT_1B(256'hF440FDFFF8B4F5B12B31F6E20E1BF477FCE0060DF98AEE4C166F04EF04D8EDBC),
    .INIT_1C(256'h0B00151B031DEB7AFFDEF61DEFA50EFF0FB11365F24DEFC404E6F44E073FE449),
    .INIT_1D(256'h248D1465EF191B0D0BBA0572F1300C52FE341521FEB6ECA5029CFBD902D306BC),
    .INIT_1E(256'hF7E8F1EBF8EFE1791640041005301452FF4A0B57F95DFE52F7FA07870FB9EB11),
    .INIT_1F(256'h15030047F1AB0D70070DF80AF1A205C5E970092CF3B8F0B509C60100F6D9F838),
    .INIT_20(256'hEE6EF48ADA4208262394FD77F85E050707B80C2CFC72EF8FF26AFAD7FDA6117A),
    .INIT_21(256'hFE5BFE3AF131C5F8EA9EF22EFD841C2A10E8FC451440214BFCE50E4FF9D6DA01),
    .INIT_22(256'h00000000FC860BA10EE4FF4DE33AFCF9F4E30290F3CDFF270F9B0801EC7D1718),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],DOADO}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:16],DOBDO}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_87 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_91 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module RAM_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[15] ,
    \doutb[15] ,
    clka,
    clkb,
    ena_0,
    enb_0,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [6:0]\douta[15] ;
  output [6:0]\doutb[15] ;
  input clka;
  input clkb;
  input ena_0;
  input enb_0;
  input ena;
  input enb;
  input [11:0]addra;
  input [11:0]addrb;
  input [6:0]dina;
  input [6:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [6:0]dina;
  wire [6:0]dinb;
  wire [6:0]\douta[15] ;
  wire [6:0]\doutb[15] ;
  wire ena;
  wire ena_0;
  wire enb;
  wire enb_0;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7979797979797979797979797979797979797979797979797979797979797979),
    .INIT_01(256'h7979797979797979797979797979797979797979797979797979797979797979),
    .INIT_02(256'h7979797979797979797979797979797979797979797979797979797979797979),
    .INIT_03(256'h7979797979797979797979797979797979797979797979797979797979797979),
    .INIT_04(256'h7E1C14127C7C7C79797979797979797979797979797979797979797979797979),
    .INIT_05(256'h06202A2C1C272C2C2C2C2C1B180C007F797979797979797979797979132B2D1B),
    .INIT_06(256'h7979797979010409090C2C2C2C2C2C2C2C2C2C29037979797979797979797979),
    .INIT_07(256'h79797979797979797979797979792A2B1E212C2C2C2C2C257C79797979797979),
    .INIT_08(256'h7979797979797979797979797979797979791801797B222C2C0F180979797979),
    .INIT_09(256'h15797979797979797979797979797979797979797979797979790B2C18797C79),
    .INIT_0A(256'h79072C1F7B797979797979797979797979797979797979797979797979791F2C),
    .INIT_0B(256'h7979790F19272A00797979797979797979797979797979797979797979797979),
    .INIT_0C(256'h79797979797E112C2C2A09797979797979797979797979797979797979797979),
    .INIT_0D(256'h79797979797979797E172C2C1F02797979797979797979797979797979797979),
    .INIT_0E(256'h7979797979797979797979791F2C2C0C7C797979797979797979797979797979),
    .INIT_0F(256'h797979797979797979797979797979062B2C2B79797979797979797979797979),
    .INIT_10(256'h7979797979797979797979797979797979797979232C2C1E1302797979797979),
    .INIT_11(256'h2C2C2C26107E7979797979797979797979797979797979791E2C2C2C2C271701),
    .INIT_12(256'h79797909212C2C2C2C24067D797979797979797979797979797979797909222C),
    .INIT_13(256'h79797979797979797B09202C2C2C2C251C7C7979797979797979797979797979),
    .INIT_14(256'h79797979797979797979797979797B142A2C2C2C2C271C047979797979797979),
    .INIT_15(256'h79797979797979797979797979797979797979797C1414242C2C2C1479797979),
    .INIT_16(256'h7979797979797979797979797979797979797979797979797979797979797979),
    .INIT_17(256'h7979797979797979797979797979797979797979797979797979797979797979),
    .INIT_18(256'h750D0A1B1E0C7C7C0D010C736B686F7879797979797979797979797979797979),
    .INIT_19(256'h10090E79080D061A000D151118747C0A1616760B080C0A717567627C0D130C01),
    .INIT_1A(256'h61686E00730B140100707E7E080D105E70001A2859576F272B6353000C237009),
    .INIT_1B(256'h04137C625F60645C6362695B6770656D6E647376676460786C7C5E6E78686A76),
    .INIT_1C(256'h1C1A1708181E1D1009001A06060400117A7C70241E0A1115160E20201A7F0305),
    .INIT_1D(256'h0B7C037E090377070A01017602087D7F76057D0708797A7D06031612010E1117),
    .INIT_1E(256'h7D7E7E037A050406777E7C090D7E7E7E080D7E7473061178007B0611797C007E),
    .INIT_1F(256'h7F7B000C7E02007F7C0406077E027B7E757302067C77720C01037B7E000B7D78),
    .INIT_20(256'h0478000A047E7B097D017B7B7704057E007D7B7C797F060504090403070D0404),
    .INIT_21(256'h7D0401787F7B76780D7B78780003767A7D010778017E7D026E797F7B05057F01),
    .INIT_22(256'h00010508720A0A7F067E7F7B007B7A7602737B7E01767A7B007B7A7C77750400),
    .INIT_23(256'h0D6F010E097F6C0C0D14066E08010A08797E0302030D017F7A087A070705036D),
    .INIT_24(256'h087D7600047A017B06017F777F7B00777B770A0D7C7A00070C07091A04000D11),
    .INIT_25(256'h727A0205777B006F72757A7E00727D7B7E7778770606797D77770B00017D787E),
    .INIT_26(256'h7F7A7D0402030107067E007F077C017C080A0A7D017F007B077B776D6F070779),
    .INIT_27(256'h0576007B7F737779747D7A790678767804000500077E7F017D737A017A7B017F),
    .INIT_28(256'h76730009090607017E02037C7D74787C7975787F037B0205060D12067D020307),
    .INIT_29(256'h7B0074737403047D7F7F7C7F7B7B010C0309080306040802027B797C7D09777D),
    .INIT_2A(256'h7F7C6C7B037D7877047B7D6E7F0B0D0F0A04047C077A0C090C070B0905040C06),
    .INIT_2B(256'h7C07087F017A007C7F047C05797F79027F7F7F05007D7903007B7A057D770309),
    .INIT_2C(256'h7C727B040C0B767500037F07017C777B047F0104777902040A7C08037D007F08),
    .INIT_2D(256'h7801007A7D7D7F067477720200756C78007F00787278767C070176797A02020A),
    .INIT_2E(256'h0C0A790706067F7A7D027D06007771010277797B0C0E7F02070F030403047E78),
    .INIT_2F(256'h10017D7472770202097C7679010E017C7D7E080406787F080501037A76797F79),
    .INIT_30(256'h037A7F01050C7E7D0A047D7C037F000D7F7D7D03040505060C030B0D04040B0F),
    .INIT_31(256'h7979747D747F787D0371710A02007879057F097E7F06077D060078057B7D7706),
    .INIT_32(256'h75777E037E7E7F087F040509020103007E0475726B6D717A7A037E027D070006),
    .INIT_33(256'h0B0A7F080B7F0608057E09140D0809787C0A0673717675007678020309157E00),
    .INIT_34(256'h007F0605047B7D050778017C7B017F0007030704047F7300047D7A787F7E7572),
    .INIT_35(256'h0409040174747577007F7B7477027A7E04007B0307050706060604017B080579),
    .INIT_36(256'h7D02030A0813040E09090A037A767174007A7D7A7D077C7579700A0E04060E7D),
    .INIT_37(256'h0F08130506027F0F747F7C777C7B7D7E0079000208047C060803057F0D010504),
    .INIT_38(256'h7D7772737D7E77757D047A7A007D7D7E757A7B780177727478067B75787C0C10),
    .INIT_39(256'h7F03757D00787C03797C057904027A7A067C7D047C041A030E0811157E070402),
    .INIT_3A(256'h051015080209010111017A07037C037D7B7D730374007B7A7F7E7C7E7F007C01),
    .INIT_3B(256'h0101040C0606090E06050C7F037C030E03087C0507110A0303060509070A0209),
    .INIT_3C(256'h7C050377746F717A7C727200727C7901767E7C7D747270787B797E7773007E03),
    .INIT_3D(256'h13110D0A0B117F7E0A0B7D76027D0007727F03737C7E797C77027C0503127472),
    .INIT_3E(256'h7F0412020107020109040C08020501050002010800067C7A04057F767F790405),
    .INIT_3F(256'h767B7D067D0502010E010406090F72787E7B7D7A00067B077C75777C00037D04),
    .INIT_40(256'h060C070A0C0C7E01050103777A027D7972767375037C726B7075777A77787D7E),
    .INIT_41(256'h06010705017B0204030F0D0E11090A0209080E0C060F03067801787B097F0308),
    .INIT_42(256'h0A0C00007C0B1107060879797E7B760002047F0B73007E0202077D7D03040E0A),
    .INIT_43(256'h7E7903087E79037A037C79050C010505127B7904027F097C060000077F7F007F),
    .INIT_44(256'h080C0D017F0C130C09017F047E047D7F797C7C0106030606047D7C08727E0006),
    .INIT_45(256'h7611060109077C7C080B0573757D010771727A7907767D7477087477757C0806),
    .INIT_46(256'h7B027F0379787775120409070B707B75747777777E7075767B037471797D777F),
    .INIT_47(256'h010402037A7D7A76787E78777A0074027C747B7579047D067C037B05797F7C00),
    .INIT_48(256'h76730579020802057A010500770206010D767C080305050A7E007B7B07050579),
    .INIT_49(256'h7E7E7F01757904070C7C740109117F797505107C7D787F067E007A75737B7E7F),
    .INIT_4A(256'h7B017A78000A0173787C067D01047D0103067E7D78050A017B777603057E7C00),
    .INIT_4B(256'h0A0D0704017E02007E77787D01737B06020777030003037E04007C7A7C7D7D7E),
    .INIT_4C(256'h7E0406050D7C7C7E01797C7575017A77766D6F79767D7477017B7C797A757F02),
    .INIT_4D(256'h0075767D757178037B76737F7F0B0703007A0310047A7C7A7F0172777C7D0300),
    .INIT_4E(256'h0B7F060909040D01050205037C0C7E786E757F79007F0B7C73050A04766C7700),
    .INIT_4F(256'h7D070E0A0D0B0C0E110B0C037B017D787E037B7875757D007D71077C047B7C0A),
    .INIT_50(256'h0C050505040105017C07087F02750115110778070A00777B7A78767803007777),
    .INIT_51(256'h787F050305037B010704007F007F7A037D0A7B060606070705037F067F000507),
    .INIT_52(256'h000002047A7878007A010379050603017F0E017E7E7E07000507077C067C7C03),
    .INIT_53(256'h0C050602040902777E0A0575797D057F027A7C0301007E040504040501000700),
    .INIT_54(256'h00057D057A050200067F7A0B030306077E0304797E0105017E030C0D0D0A7C0A),
    .INIT_55(256'h78777779057D197D7A0878047F7B6D7E0604040C0903040076007E057C017A05),
    .INIT_56(256'h027F7E0A06087C020277047D767D0615060A037E00727F78007D7E0F7F07027D),
    .INIT_57(256'h047D7A0669797C08026F02080D030600787F7D78007A087808037A787E79797C),
    .INIT_58(256'h047D7978027804020E780303006F7D7613077505030B07097D017A7E026A7C05),
    .INIT_59(256'h02790078087E060C7606786B027872750577740274797C05756A6F051105740C),
    .INIT_5A(256'h7B7C08197877037E797B7C02040B0115097B110379777C7F080213067A020F76),
    .INIT_5B(256'h7E7100030C0D7301027E780500730A76017B79757D7710176B0B047B7B78037B),
    .INIT_5C(256'h7F08760D057E777B007B7E7C0F087912037C7707747205740E12710A0C7C087E),
    .INIT_5D(256'h0B0405030275017E110E73060109070472780B7813107C0E79077A7F7B790E75),
    .INIT_5E(256'h7E7A047D7E7C767E7A7A770A767F027D7D08790C0E0806086E7677070D7C0110),
    .INIT_5F(256'h747F750A0D030600017B7E797E0776190F03007A7C047B72080872157C790679),
    .INIT_60(256'h7F0A007D79007A09030B76060676017E780B027C030C03727D737E0701047D75),
    .INIT_61(256'h7F0972040401797C7A01787F7E03770403797E050102047F0700070007766E0F),
    .INIT_62(256'h78747A7D7B757C027E00010A027C7C7A72087B780B086F06017F0D7D0178047B),
    .INIT_63(256'h78017E007C067B080202060472017E0275077B797E7B0307707B02067F017B01),
    .INIT_64(256'h087E037A777D007D7A7B03147E7A7A7F78046E077B06067E02007E0904087F7F),
    .INIT_65(256'h75787B0102077E790D75020E797E007F76127F0204787F7C0301000971017906),
    .INIT_66(256'h6B090A060C7B0B04707B0B017A7E0310097B077A727D74707506011813010207),
    .INIT_67(256'h060C107F77107576727B010271080B7A6C7A067C770A0B07117B100C70777A03),
    .INIT_68(256'h6B7C7E777A01097C7479047E7C0808796F090B780E11020179127572747A7D7B),
    .INIT_69(256'h73007F7F060F0E7D7B187877037C727E030A097A74080376057F01107805077C),
    .INIT_6A(256'h77090103730C077A0803790579030A0674067F79010B09086D6F12017F100877),
    .INIT_6B(256'h7B070B767E037F02037C7F0700000D73790001750005057F000A047608046D7B),
    .INIT_6C(256'h047504037700020F787E0D7C7F717902770C0407767903077D7F7C7C7F7C7D02),
    .INIT_6D(256'h0271097808707B7F08777403026C017705760701070503057A0601017E79127C),
    .INIT_6E(256'h0E78027F7B7F797C0B657F6F0E787E7706757510776B08750E6A7C7004737B0B),
    .INIT_6F(256'h06760F06046909057A7F7979087E1110117809080304007A7C7101077D7D0E78),
    .INIT_70(256'h0F7F7B0E7E0A7E7A7D03060975037900017B06057C6A0A0209767B7C0A7A007A),
    .INIT_71(256'h107A0307787C0D007701000107067E04050203007C0103057F02750104030D02),
    .INIT_72(256'h790873747C017A050C7B0576740570676F7C787E1277027C780706717B007B7E),
    .INIT_73(256'h017902040109007C757D1503000477157D047D747A027C72777F787E047F7876),
    .INIT_74(256'h7C06057D0D01197C7B08797D690B067F0301057A077D047E0007047E04020B76),
    .INIT_75(256'h7A040601030673777A010D017F7D78780500007F007F71087703797A0E0F750B),
    .INIT_76(256'h000705027B7B76020477746F13077E0F02037304030A767A0A0B06046F7F0601),
    .INIT_77(256'h7B0A6E79007E7872137F02107B78057878007C7B060E7B7E7C7B017E7503707B),
    .INIT_78(256'h7E77030804090B0778037D7D7D717F0505060C06767F797D7A737B7C7E090509),
    .INIT_79(256'h7378057A1D7E0179046F0802760707090D687C7B01727F7A7D07000A00000A7E),
    .INIT_7A(256'h7F7E067D086E0E7F7A7A7C7D097C05750D650A7D027202751A6E097712630E01),
    .INIT_7B(256'h7D697E057D7775047D7D057A016F7A047C7B7D7709787673027B780607087609),
    .INIT_7C(256'h117F0A7D01017A7B040A7704087A7973060B05797B7476080A06010D7D760C00),
    .INIT_7D(256'h7601746F750B7C04020079037977037C750078050D010805037D797C7F067D08),
    .INIT_7E(256'h78790A1A120708017408736D04050A0D1C071000717975007207077E0D02087B),
    .INIT_7F(256'h05007D0B720A7B030579027A03037F0F737A716F78730901057A787F00000275),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45 ,\douta[15] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77 ,\doutb[15] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_0),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module RAM_blk_mem_gen_top
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;

  RAM_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "3" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.6215679999999999 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "RAM.mem" *) 
(* C_INIT_FILE_NAME = "RAM.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "2" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "6000" *) (* C_READ_DEPTH_B = "6000" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "6000" *) (* C_WRITE_DEPTH_B = "6000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module RAM_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [12:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [12:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [12:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;

  assign dbiterr = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  RAM_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module RAM_blk_mem_gen_v8_4_1_synth
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input [12:0]addra;
  input [12:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;

  RAM_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
