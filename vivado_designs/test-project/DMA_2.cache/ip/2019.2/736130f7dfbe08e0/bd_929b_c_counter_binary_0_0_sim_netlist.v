// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Feb  7 23:07:50 2020
// Host        : luke-desktop running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 300000000, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "kintexu" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hEVhe7jKJYn4kqTOR0ucT/nUaHmx1ehtuEXUIa3/yMUJwqYrGGG5CxMNDesQS5/yW0hbGIwErCrw
7Yz+FkATFmP8KVtu5yrFMvLIC6X/WFgTFbXDfPNFZ3leqdY8cNf7mMmkCGGir0JMG0TBGbboNk3z
so3WlzQbbYodoK/pZYOUf21IfEHjsSY763m870rSFKIBN+FK+fFt5A6NHWKX3R9eoMpY6J03bFiD
+WTvmwaFZHqrm85GKGtmXbng8I3lz6+EVMJuu/QRxOLWNEBT7aI40+svcdX/watRUzIzQ5wuPD6m
AjneL87PIOjAajU4pk73D4u4s0k3Jyv2I3RiOA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H8F+RBuvdJl+faCNivTUFnpV1hfBtwYbC4zC2uY+cmwqxLKUkOfyfvaWL1X9nhn4FlXQNTR2FdrS
mxFhUnqFjC0aFq6yvcNFmqn++HsZr3FvfzslHJ3r2duluqysywW7eMvRDi+XM6PfnCJOw9tSRQ0N
2lwh3ZfIVN+ZjAET/pbOOBU8i5qNLWIUmDpoeco9nucPDszQ/GE5uMp/9P64HYDsGwyD5sMUU1NV
azy8mwrIKK2QyzRhXd3GKa/haDd9hdpacdTQckAqSV/jE+m3GfjmECfzPf0JmwWJ6/RZCqp9bSkS
mTVNaCU5ywxzJzqhtm6fSfjCbCqaeaDoEYQIeQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11568)
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
