// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Apr 21 17:34:20 2020
// Host        : luke-desktop running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_uart_buffer_0_0_stub.v
// Design      : design_1_axi_uart_buffer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_uart_buffer,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(m_axi_arvalid, m_axi_awvalid, m_axi_rvalid, 
  m_axi_wvalid, s_axi_arvalid, s_axi_awvalid, s_axi_rvalid, s_axi_wvalid, uart_ip2intc_irpt)
/* synthesis syn_black_box black_box_pad_pin="m_axi_arvalid,m_axi_awvalid,m_axi_rvalid,m_axi_wvalid,s_axi_arvalid,s_axi_awvalid,s_axi_rvalid,s_axi_wvalid,uart_ip2intc_irpt" */;
  input m_axi_arvalid;
  input m_axi_awvalid;
  output m_axi_rvalid;
  input m_axi_wvalid;
  output s_axi_arvalid;
  output s_axi_awvalid;
  input s_axi_rvalid;
  output s_axi_wvalid;
  input uart_ip2intc_irpt;
endmodule
