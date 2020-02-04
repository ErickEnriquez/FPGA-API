//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
//Date        : Mon Feb  3 19:47:13 2020
//Host        : desktop running 64-bit Ubuntu 18.04.2 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire LED_0;
  wire LED_1;
  wire LED_2;
  wire LED_3;
  wire SW_E;
  wire SW_N;
  wire SW_S;
  wire SW_W;

  design_1 design_1_i
       (.LED_0(LED_0),
        .LED_1(LED_1),
        .LED_2(LED_2),
        .LED_3(LED_3),
        .SW_E(SW_E),
        .SW_N(SW_N),
        .SW_S(SW_S),
        .SW_W(SW_W));
endmodule
