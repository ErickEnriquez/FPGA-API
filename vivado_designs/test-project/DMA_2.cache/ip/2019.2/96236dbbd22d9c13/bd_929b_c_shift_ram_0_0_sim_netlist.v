// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Feb  7 23:07:49 2020
// Host        : luke-desktop running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_929b_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_929b_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 300000000, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "kintexu" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
jKLNR6CFLXNaFIX4EgFderMxPnKvpk4F9e4rB0Z3eM53MFOGJNJgkVTyQHI3/mIWOAReZVwoVOMa
CdAhgWGvBg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S9g8iGOMco4oFYFI4TkAP1q7tC6YdaKcKnkZE7b8B1VOvr1zofUKAItPH7rdgXy1xJT5veYU9CMB
1a6xkY/7hrMk2un8LzBXxNY3CU5Bicpo5xvFJFwxXUw2rsZfzzw96pA+9XCQOKRH4TLd3b9RF6St
0jOdYl4JHV8zrfKdmxY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T9dmjYx2RI0RbX6wqo4nWU0ad1An+UnLDs5SJii98PTuke7wRIDUcgwzVXGZhnqgRDMGrxGdV3bv
2TG3EcxZKQwTVnAC6QQoZX/EtMHghnA62m/5NpXmoLwh5qm/MLJ1GcevcOyCUPonSVz0GOgxnvwj
ooQgeh9D1jd4jba778m7tqjzyqrMu2wlx/9bVUabKnRucVtEhLrCSutcfwtKRjcjEslE32+ANJJO
LU1E9xHWQKY0Ykt2thHoAW/gEGE3TgPPSeS1uMgC9gpn3KeR1GWNFmz/5i6v7Pure2Hjx7n/xHnI
reb33XFnLAOOS5csVRvU6rhvZeRoqLN9Ju5zBw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z4MAcGwOirs8ueHe0/LAJt93fwBMCERy9UlyN0pxTk9Tu06Hakd4P9cZvnfzA7zREYXMIBu2NDPA
+322PzRY4McOROTi9fUMbDa3sq4QlE99HePrmhLC9MCN16iXhbU+HBEFNxdCuVK/qDkcEHSOzIkz
ISv7GfjVXM9ytGOZjadyXWLpl+dtetGHtMec8w91cjipLXbo2ywr8DccFy2Q+uIfn9whyWTv3WTK
w8NeftqkhVPZqMJIv942kdyaigmw+FAOB+eg4fWaELYnDgvofFaanVzUBmReOY7/b3LQoUhotNip
TF4puoXTeoGR0ir2Fw1i4DrX8pQhZYrHf0g2Fw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RhMVl/dQLgd6Em3cvXWswCuyQybcYHVY6fBYkTB+0qwPgxUd1H6xUy5MSLur1rc0+xMO7DV0gkc9
m7J2qnyE4PeY648BXoQQvdkIDs3cDfJUIMzBSJRhAzANt/GvnCfPAPUqQ+RK/y3xKJwLsMukWXHR
t1HX/5OpB6TQZHZYE4vz2lTGPGbVIW3QDoyrjz61tA/jsHUVGJvZ47VdBmfldxPqiY+Vh9e3dl75
JmttiC9La0yOzL+SocwWzDn/QZbcRHMsTtLWlhxlY2wXUCss3GHmb0o9kugY6zDzV+5nG9yCW628
du+GA9eci/G4jwl4JXZ6p/WPZm5Kh58Sk5SgqQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z6wIEFjRiUpcYIEu93tUzSRYb0cut/OLoYvuGPmJyBKSi2zPwapeByA928Z27t6xeV5W3znd08OP
jgjBqsSWHmyKGPK5eXde25Rc7IZneNvK+sw4HV/jPYtO1qybQvKRnWu8hrBhMhyAA1aL1U4QhZ0j
OVNZp1DTIxg4hiigHOc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M6YZEFH9Zpi1+cHBSrOstRid3w06pA53vGHrYgHzFGeKeyyHqjgt7TSqiheP5aW8KTNRQvg6odJR
cQXh8v30NMYu/jZmXni3nFsFUTUEXNB/ePMil1PPUrf9TNxaYXBqeX3zB6GdK72zXdmYAQQJsXm3
TD92LB1fEOaj3R0/tHYpufRdGd9ixd+Chdi8l5QOJjm+yeF3y5TfCTs0lUF+EsV39HM15hn/yqbA
gT+ibQT1xr8NpGHcWrdEkzmjH4Sn+dW0cT9kU4XilATPF50SYk2ecvCzISKLFkmNR9pfut/nGA+t
DPxZ51VLTruJmPjK9LFCbh2X38O5lo+z5+P8tA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KfvJFdvhmWTKbQ5Jxri/BeSIQO81bjo+x9EfkeRcMGW0X6ByjZDkAzxfNMlSiensyevMJMtYPImZ
QLedqWGrPYexifiq6cCXFqk8Ltq9l5wruSZyV43D0ysRcxj4KEmXC/8PpzjDp5HlvFJFOJ+D3g6t
NM7RYRIRIXaF8CskZw0jsmkaV1T83Anz/mZ/uZ2VBOchUsPeuvhUsVWM+cLnpjlbkKWXTtBltE9K
o4i/EdrpFyh9UMZS+xmXkJ+At1Ky5wvIPoNFGMpkkGQACazCdVYLc9yp6bpOYlB/gizgo2+PRrAM
svam1uLoF4FsN5wTcCULaxZrksdIcF+IAZUtMA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lyBO75Sth8ic3VbC4/iqK2ezkXXoN0sOC7q3qRXKRDmVtGZuN95h7fvJangHVQZJ3vTSvu/G/9xP
csjm2jqAAvG4A+tSE2oTXtXYr2g6UFSKslBZ4ek5XPHcGKNsEhPyXq8XBuv94uuhCb/SK4TarRMb
+GBZK+IU0aP7UhyZszdrtL7iaxKh+hktNmg6sEy1PT5JynOzDMS7JMu8DJIirKH3VmUpKNJdBwxe
7aNDVCQh/FXOIFW8aK87zULB7JDeHSB//nMZF0zEbAOuwZAp+6Ng934DYseBh49eslnKVneazWuE
o5GeGs9Q0sWSbF25A1zRnGFmc6Bfp0d73+tewQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nhf9xHi6oQ2Bwkrk8gvQhxBGPk6wYYV72/SuCYK96a1k2ZrrgMf449fObty+FxbDm4a8mKj88nN1
toYZuQYKZUTC1xZcbfsBNMiNlD0fbEJ4F01fyWEb8YMkAGgMpLQpFvcK5ZIbC7LABAavT09VKCF/
d5xJsekvBkuLWuMCVGcEGPuwjkBOmijp89ynTj1CNcDBZKL9bmGyfb6nocay+d2kP3ZbmfWtHsxg
g1RUqbwTnKORqSilGRVsVCSxVX8QBiu4nwLOMMMupi7AGUCwZo+At5it+HNHw7bTfaxkGQeiviMH
X6VY9yXLGsddbz3mSGEj/6EJIcmmKpnui46wxA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4592)
`pragma protect data_block
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
`pragma protect end_protected
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
