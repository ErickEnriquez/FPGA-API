// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Apr 21 17:34:21 2020
// Host        : luke-desktop running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/luke/capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uart_buffer_0_0/design_1_axi_uart_buffer_0_0_sim_netlist.v
// Design      : design_1_axi_uart_buffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_uart_buffer_0_0,axi_uart_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_uart_buffer,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_axi_uart_buffer_0_0
   (m_axi_arvalid,
    m_axi_awvalid,
    m_axi_rvalid,
    m_axi_wvalid,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_rvalid,
    s_axi_wvalid,
    uart_ip2intc_irpt);
  input m_axi_arvalid;
  input m_axi_awvalid;
  output m_axi_rvalid;
  input m_axi_wvalid;
  output s_axi_arvalid;
  output s_axi_awvalid;
  input s_axi_rvalid;
  output s_axi_wvalid;
  input uart_ip2intc_irpt;

  wire m_axi_arvalid;
  wire m_axi_awvalid;
  wire m_axi_rvalid;
  wire m_axi_wvalid;
  wire s_axi_arvalid;
  wire s_axi_awvalid;
  wire s_axi_rvalid;
  wire s_axi_wvalid;
  wire uart_ip2intc_irpt;

  LUT2 #(
    .INIT(4'h2)) 
    m_axi_rvalid_INST_0
       (.I0(s_axi_rvalid),
        .I1(uart_ip2intc_irpt),
        .O(m_axi_rvalid));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arvalid_INST_0
       (.I0(m_axi_arvalid),
        .I1(uart_ip2intc_irpt),
        .O(s_axi_arvalid));
  LUT2 #(
    .INIT(4'h8)) 
    s_axi_awvalid_INST_0
       (.I0(m_axi_awvalid),
        .I1(uart_ip2intc_irpt),
        .O(s_axi_awvalid));
  LUT2 #(
    .INIT(4'h8)) 
    s_axi_wvalid_INST_0
       (.I0(m_axi_wvalid),
        .I1(uart_ip2intc_irpt),
        .O(s_axi_wvalid));
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
