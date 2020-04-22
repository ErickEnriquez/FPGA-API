
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
   set_property BOARD_PART xilinx.com:kcu105:part0:1.6 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ddr4_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddr4_sdram ]

  set default_sysclk_300 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_sysclk_300 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $default_sysclk_300

  set pci_express_x8 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pci_express_x8 ]

  set pcie_refclk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie_refclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   ] $pcie_refclk

  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]


  # Create ports
  set pcie_perstn [ create_bd_port -dir I -type rst pcie_perstn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $pcie_perstn
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_CLKS {4} \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {5} \
 ] $axi_smc

  # Create instance: axi_uart16550_0, and set properties
  set axi_uart16550_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_0 ]
  set_property -dict [ list \
   CONFIG.UART_BOARD_INTERFACE {rs232_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uart16550_0

  # Create instance: axi_uart_buffer_0, and set properties
  set axi_uart_buffer_0 [ create_bd_cell -type ip -vlnv user.org:user:axi_uart_buffer:1.0 axi_uart_buffer_0 ]

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_0 ]
  set_property -dict [ list \
   CONFIG.C0_CLOCK_BOARD_INTERFACE {default_sysclk_300} \
   CONFIG.C0_DDR4_BOARD_INTERFACE {ddr4_sdram} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
 ] $ddr4_0

  # Create instance: rst_ddr4_0_300M, and set properties
  set rst_ddr4_0_300M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_300M ]

  # Create instance: util_ds_buf, and set properties
  set util_ds_buf [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
   CONFIG.DIFF_CLK_IN_BOARD_INTERFACE {pcie_refclk} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $util_ds_buf

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.1 xdma_0 ]
  set_property -dict [ list \
   CONFIG.PCIE_BOARD_INTERFACE {pci_express_x8} \
   CONFIG.SYS_RST_N_BOARD_INTERFACE {pcie_perstn} \
   CONFIG.axi_data_width {256_bit} \
   CONFIG.axilite_master_en {true} \
   CONFIG.axisten_freq {250} \
   CONFIG.pciebar2axibar_axist_bypass {0x0000000000000000} \
   CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
   CONFIG.xdma_axi_intf_mm {AXI_Memory_Mapped} \
   CONFIG.xdma_rnum_chnl {4} \
   CONFIG.xdma_wnum_chnl {4} \
 ] $xdma_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M01_AXI [get_bd_intf_pins axi_smc/M01_AXI] [get_bd_intf_pins axi_uart16550_0/S_AXI]
  connect_bd_intf_net -intf_net axi_uart16550_0_UART [get_bd_intf_ports rs232_uart] [get_bd_intf_pins axi_uart16550_0/UART]
  connect_bd_intf_net -intf_net ddr4_0_C0_DDR4 [get_bd_intf_ports ddr4_sdram] [get_bd_intf_pins ddr4_0/C0_DDR4]
  connect_bd_intf_net -intf_net default_sysclk_300_1 [get_bd_intf_ports default_sysclk_300] [get_bd_intf_pins ddr4_0/C0_SYS_CLK]
  connect_bd_intf_net -intf_net pcie_refclk_1 [get_bd_intf_ports pcie_refclk] [get_bd_intf_pins util_ds_buf/CLK_IN_D]
  connect_bd_intf_net -intf_net xdma_0_M_AXI [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins xdma_0/M_AXI]
  connect_bd_intf_net -intf_net xdma_0_M_AXI_LITE [get_bd_intf_pins axi_smc/S01_AXI] [get_bd_intf_pins xdma_0/M_AXI_LITE]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_ports pci_express_x8] [get_bd_intf_pins xdma_0/pcie_mgt]

  # Create port connections
  connect_bd_net -net axi_smc_M01_AXI_araddr [get_bd_pins axi_smc/M01_AXI_araddr] [get_bd_pins axi_uart16550_0/s_axi_araddr]
  connect_bd_net -net axi_smc_M01_AXI_arvalid [get_bd_pins axi_smc/M01_AXI_arvalid] [get_bd_pins axi_uart_buffer_0/m_axi_arvalid]
  connect_bd_net -net axi_smc_M01_AXI_awvalid [get_bd_pins axi_smc/M01_AXI_awvalid] [get_bd_pins axi_uart_buffer_0/m_axi_awvalid]
  connect_bd_net -net axi_smc_M01_AXI_wvalid [get_bd_pins axi_smc/M01_AXI_wvalid] [get_bd_pins axi_uart_buffer_0/m_axi_wvalid]
  connect_bd_net -net axi_uart16550_0_ip2intc_irpt [get_bd_pins axi_uart16550_0/ip2intc_irpt] [get_bd_pins axi_uart_buffer_0/uart_ip2intc_irpt]
  connect_bd_net -net axi_uart16550_0_s_axi_rvalid [get_bd_pins axi_uart16550_0/s_axi_rvalid] [get_bd_pins axi_uart_buffer_0/s_axi_rvalid]
  connect_bd_net -net axi_uart_buffer_0_m_axi_rvalid [get_bd_pins axi_smc/M01_AXI_rvalid] [get_bd_pins axi_uart_buffer_0/m_axi_rvalid]
  connect_bd_net -net axi_uart_buffer_0_s_axi_arvalid [get_bd_pins axi_uart16550_0/s_axi_arvalid] [get_bd_pins axi_uart_buffer_0/s_axi_arvalid]
  connect_bd_net -net axi_uart_buffer_0_s_axi_awvalid [get_bd_pins axi_uart16550_0/s_axi_awvalid] [get_bd_pins axi_uart_buffer_0/s_axi_awvalid]
  connect_bd_net -net axi_uart_buffer_0_s_axi_wvalid [get_bd_pins axi_uart16550_0/s_axi_wvalid] [get_bd_pins axi_uart_buffer_0/s_axi_wvalid]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins axi_smc/aclk] [get_bd_pins axi_smc/aclk2] [get_bd_pins axi_uart16550_0/s_axi_aclk] [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins rst_ddr4_0_300M/slowest_sync_clk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins rst_ddr4_0_300M/ext_reset_in]
  connect_bd_net -net pcie_perstn_1 [get_bd_ports pcie_perstn] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins ddr4_0/sys_rst]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_pins axi_uart16550_0/s_axi_aresetn] [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins rst_ddr4_0_300M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_IBUF_DS_ODIV2 [get_bd_pins util_ds_buf/IBUF_DS_ODIV2] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net util_ds_buf_IBUF_OUT [get_bd_pins util_ds_buf/IBUF_OUT] [get_bd_pins xdma_0/sys_clk_gt]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins axi_smc/aclk1] [get_bd_pins axi_smc/aclk3] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net xdma_0_axi_aresetn [get_bd_pins axi_smc/aresetn] [get_bd_pins xdma_0/axi_aresetn]

  # Create address segments
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces xdma_0/M_AXI] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces xdma_0/M_AXI] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x80000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


