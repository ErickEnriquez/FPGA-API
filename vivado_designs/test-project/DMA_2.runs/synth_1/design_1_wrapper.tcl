# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 3
set_msg_config  -id {[BD 41-1271]}  -suppress 
set_msg_config  -id {[BD 41-1306]}  -suppress 
create_project -in_memory -part xcku040-ffva1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.cache/wt [current_project]
set_property parent.project_path /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:kcu105:part0:1.6 [current_project]
set_property ip_output_repo /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/ip_2/xdma_v4_1_4_blk_mem_64_noreg_be_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/ip_1/xdma_v4_1_4_blk_mem_64_reg_be_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/ip_0/ip_0/synth/design_1_xdma_0_1_pcie3_ip_gt_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/ip_0/ip_0/synth/design_1_xdma_0_1_pcie3_ip_gt.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/ip_0/source/design_1_xdma_0_1_pcie3_ip-PCIE_X0Y0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/ip_0/synth/design_1_xdma_0_1_pcie3_ip_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/design_1_xdma_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/source/design_1_xdma_0_1_pcie3_us_ip.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_1/synth/design_1_xdma_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/par/design_1_ddr4_0_0_phy_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_0/bd_45eb_microblaze_I_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_0/bd_45eb_microblaze_I_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_1/bd_45eb_rst_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_1/bd_45eb_rst_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_2/bd_45eb_ilmb_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_3/bd_45eb_dlmb_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_6/bd_45eb_lmb_bram_I_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_9/bd_45eb_second_lmb_bram_I_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_10/bd_45eb_iomodule_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/bd_45eb_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_0/design_1_ddr4_0_0_microblaze_mcs_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_0/design_1_ddr4_0_0_microblaze_mcs_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/design_1_ddr4_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/par/design_1_ddr4_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0/design_1_util_ds_buf_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0/design_1_util_ds_buf_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0/design_1_util_ds_buf_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr0_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/bd_afc3_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/bd_afc3_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/bd_afc3_psr_aclk1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/bd_afc3_psr_aclk1_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/bd_afc3_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/bd_afc3_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/bd_afc3_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/bd_afc3_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/bd_afc3_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/bd_afc3_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/bd_afc3_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/bd_afc3_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/bd_afc3_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/bd_afc3_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/bd_afc3_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/bd_afc3_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/bd_afc3_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/bd_afc3_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/bd_afc3_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/bd_afc3_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/bd_afc3_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/bd_afc3_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/bd_afc3_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/bd_afc3_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/bd_afc3_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/bd_afc3_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/bd_afc3_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/bd_afc3_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/bd_afc3_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/bd_afc3_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/bd_afc3_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/bd_afc3_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/bd_afc3_m01bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_rst_ddr4_0_300M_0/design_1_rst_ddr4_0_300M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_rst_ddr4_0_300M_0/design_1_rst_ddr4_0_300M_0.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_rst_ddr4_0_300M_0/design_1_rst_ddr4_0_300M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_1/design_1_axi_uartlite_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_1/design_1_axi_uartlite_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_1/design_1_axi_uartlite_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_0/data/mb_bootloop_le.elf]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_0/mb_bootloop_le.elf]
set_property used_in_implementation false [get_files -all /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_ddr4_0_0/sw/calibration_0/Debug/calibration_ddr.elf]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/constrs_1/new/new_contraints.xdc
set_property used_in_implementation false [get_files /home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/constrs_1/new/new_contraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xcku040-ffva1156-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
