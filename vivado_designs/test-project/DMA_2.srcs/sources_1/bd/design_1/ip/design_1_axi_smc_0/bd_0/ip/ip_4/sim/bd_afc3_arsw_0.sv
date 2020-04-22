// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:sc_switchboard:1.0
// IP Revision: 6

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_afc3_arsw_0 (
  aclk,
  aclken,
  s_sc_send,
  s_sc_req,
  s_sc_info,
  s_sc_payld,
  s_sc_recv,
  m_sc_recv,
  m_sc_send,
  m_sc_req,
  m_sc_info,
  m_sc_payld
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, FREQ_HZ 300000000, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, ASSOCIATED_BUSIF M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC:S00_SC:S01_SC:S02_SC:S03_SC:S04_SC:S05_SC:S06_SC:S07_SC:S08_SC:S09_SC:S10_SC:S11_SC:S12_SC:S13_SC:S14_SC:S15_SC, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken CE" *)
input wire aclken;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC SEND [2:0] [2:0], xilinx.com:interface:sc:1.0 S01_SC SEND [2:0] [5:3], xilinx.com:interface:sc:1.0 S02_SC SEND [2:0] [8:6], xilinx.com:interface:sc:1.0 S03_SC SEND [2:0] [11:9], xilinx.com:interface:sc:1.0 S04_SC SEND [2:0] [14:12]" *)
input wire [14 : 0] s_sc_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC REQ [2:0] [2:0], xilinx.com:interface:sc:1.0 S01_SC REQ [2:0] [5:3], xilinx.com:interface:sc:1.0 S02_SC REQ [2:0] [8:6], xilinx.com:interface:sc:1.0 S03_SC REQ [2:0] [11:9], xilinx.com:interface:sc:1.0 S04_SC REQ [2:0] [14:12]" *)
input wire [14 : 0] s_sc_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC INFO [2:0] [2:0], xilinx.com:interface:sc:1.0 S01_SC INFO [2:0] [5:3], xilinx.com:interface:sc:1.0 S02_SC INFO [2:0] [8:6], xilinx.com:interface:sc:1.0 S03_SC INFO [2:0] [11:9], xilinx.com:interface:sc:1.0 S04_SC INFO [2:0] [14:12]" *)
input wire [14 : 0] s_sc_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC PAYLD [175:0] [175:0], xilinx.com:interface:sc:1.0 S01_SC PAYLD [175:0] [351:176], xilinx.com:interface:sc:1.0 S02_SC PAYLD [175:0] [527:352], xilinx.com:interface:sc:1.0 S03_SC PAYLD [175:0] [703:528], xilinx.com:interface:sc:1.0 S04_SC PAYLD [175:0] [879:704]" *)
input wire [879 : 0] s_sc_payld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S01_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S02_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S03_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_\
SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC, XIL_INTERFACENAME S04_SC, BRIDGES M00_SC:M01_SC:M02_SC:M03_SC:M04_SC:M05_SC:M06_SC:M07_SC:M08_SC:M09_SC:M10_SC:M11_SC:M12_SC:M13_SC:M14_SC:M15_SC" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC RECV [2:0] [2:0], xilinx.com:interface:sc:1.0 S01_SC RECV [2:0] [5:3], xilinx.com:interface:sc:1.0 S02_SC RECV [2:0] [8:6], xilinx.com:interface:sc:1.0 S03_SC RECV [2:0] [11:9], xilinx.com:interface:sc:1.0 S04_SC RECV [2:0] [14:12]" *)
output wire [14 : 0] s_sc_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC RECV [4:0] [4:0], xilinx.com:interface:sc:1.0 M01_SC RECV [4:0] [9:5], xilinx.com:interface:sc:1.0 M02_SC RECV [4:0] [14:10]" *)
input wire [14 : 0] m_sc_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC SEND [4:0] [4:0], xilinx.com:interface:sc:1.0 M01_SC SEND [4:0] [9:5], xilinx.com:interface:sc:1.0 M02_SC SEND [4:0] [14:10]" *)
output wire [14 : 0] m_sc_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC REQ [4:0] [4:0], xilinx.com:interface:sc:1.0 M01_SC REQ [4:0] [9:5], xilinx.com:interface:sc:1.0 M02_SC REQ [4:0] [14:10]" *)
output wire [14 : 0] m_sc_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC INFO [4:0] [4:0], xilinx.com:interface:sc:1.0 M01_SC INFO [4:0] [9:5], xilinx.com:interface:sc:1.0 M02_SC INFO [4:0] [14:10]" *)
output wire [14 : 0] m_sc_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC PAYLD [175:0] [175:0], xilinx.com:interface:sc:1.0 M01_SC PAYLD [175:0] [351:176], xilinx.com:interface:sc:1.0 M02_SC PAYLD [175:0] [527:352]" *)
output wire [527 : 0] m_sc_payld;

  sc_switchboard_v1_0_6_top #(
    .C_PAYLD_WIDTH(176),
    .K_MAX_INFO_WIDTH(1),
    .C_S_PIPELINES(0),
    .C_M_PIPELINES(1),
    .C_S_LATENCY(0),
    .C_NUM_SI(5),
    .C_NUM_MI(3),
    .C_TESTING_MODE(0),
    .C_CONNECTIVITY(15'B000000000011011)
  ) inst (
    .aclk(aclk),
    .aclken(aclken),
    .connectivity(15'B000000000011011),
    .s_sc_send(s_sc_send),
    .s_sc_req(s_sc_req),
    .s_sc_info(s_sc_info),
    .s_sc_payld(s_sc_payld),
    .s_sc_recv(s_sc_recv),
    .m_sc_recv(m_sc_recv),
    .m_sc_send(m_sc_send),
    .m_sc_req(m_sc_req),
    .m_sc_info(m_sc_info),
    .m_sc_payld(m_sc_payld)
  );
endmodule
