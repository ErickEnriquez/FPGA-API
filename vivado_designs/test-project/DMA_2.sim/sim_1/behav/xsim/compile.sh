#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Mon Jan 06 18:12:06 MST 2020
# SW Build 2700185 on Thu Oct 24 18:45:48 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xvlog --incr --relax -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L xilinx_vip -prj design_1_wrapper_vlog.prj"
xvlog --incr --relax -L axi_vip_v1_1_6 -L smartconnect_v1_0 -L xilinx_vip -prj design_1_wrapper_vlog.prj 2>&1 | tee compile.log

echo "xvhdl --incr --relax -prj design_1_wrapper_vhdl.prj"
xvhdl --incr --relax -prj design_1_wrapper_vhdl.prj 2>&1 | tee -a compile.log

