//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
//Date        : Mon Feb  3 19:47:13 2020
//Host        : desktop running 64-bit Ubuntu 18.04.2 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=0,numReposBlks=0,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (LED_0,
    LED_1,
    LED_2,
    LED_3,
    SW_E,
    SW_N,
    SW_S,
    SW_W);
  output LED_0;
  output LED_1;
  output LED_2;
  output LED_3;
  input SW_E;
  input SW_N;
  input SW_S;
  input SW_W;

  wire SW_E_1;
  wire SW_N_1;
  wire SW_S_1;
  wire SW_W_1;

  assign LED_0 = SW_N_1;
  assign LED_1 = SW_E_1;
  assign LED_2 = SW_W_1;
  assign LED_3 = SW_S_1;
  assign SW_E_1 = SW_E;
  assign SW_N_1 = SW_N;
  assign SW_S_1 = SW_S;
  assign SW_W_1 = SW_W;
endmodule
