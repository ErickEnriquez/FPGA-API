set_property SRC_FILE_INFO {cfile:/home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_2/ip_0/synth/bd_929b_pcs_pma_0_gt.xdc rfile:../../../DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_2/ip_0/synth/bd_929b_pcs_pma_0_gt.xdc id:1 order:EARLY scoped_inst:inst/pcs_pma_block_i/transceiver_inst/bd_929b_pcs_pma_0_gt_i/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/luke/Capstone/FPGA_API/vivado_designs/test-project/DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_2/synth/bd_929b_pcs_pma_0.xdc rfile:../../../DMA_2.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_2/synth/bd_929b_pcs_pma_0.xdc id:2 order:LATE scoped_inst:inst} [current_design]
current_instance inst/pcs_pma_block_i/transceiver_inst/bd_929b_pcs_pma_0_gt_i/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_CHANNEL_X0Y10 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[2].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]
current_instance
current_instance inst
set_property src_info {type:SCOPED_XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *pcs_pma_block_i/transceiver_inst/rx_elastic_buffer_inst/wr_addr_*_reg[*]}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *reclock_wr_addrgray[*].sync_wr_addrgray/data_sync*}] -filter {REF_PIN_NAME =~ D}] 6.4 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~  *pcs_pma_block_i/transceiver_inst/rx_elastic_buffer_inst/rd_addr_*_reg[*]}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *reclock_rd_addrgray[*].sync_rd_addrgray/data_sync*}] -filter {REF_PIN_NAME =~ D}] 3.2 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 2.400 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ *MDIO_INTERFACE_*/MDIO_OUT_reg}] -filter {REF_PIN_NAME =~ C}]
set_property src_info {type:SCOPED_XDC file:2 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 2.400 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ *MDIO_INTERFACE_*/MDIO_TRI_reg}] -filter {REF_PIN_NAME =~ C}]
