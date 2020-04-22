-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Apr 21 17:34:20 2020
-- Host        : luke-desktop running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_uart_buffer_0_0_stub.vhdl
-- Design      : design_1_axi_uart_buffer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    m_axi_arvalid : in STD_LOGIC;
    m_axi_awvalid : in STD_LOGIC;
    m_axi_rvalid : out STD_LOGIC;
    m_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : out STD_LOGIC;
    s_axi_awvalid : out STD_LOGIC;
    s_axi_rvalid : in STD_LOGIC;
    s_axi_wvalid : out STD_LOGIC;
    uart_ip2intc_irpt : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_axi_arvalid,m_axi_awvalid,m_axi_rvalid,m_axi_wvalid,s_axi_arvalid,s_axi_awvalid,s_axi_rvalid,s_axi_wvalid,uart_ip2intc_irpt";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_uart_buffer,Vivado 2019.2";
begin
end;
