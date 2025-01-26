#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Jan 26 16:21:35 +0330 2025
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim tb_int_adder_behav -key {Behavioral:sim_1:Functional:tb_int_adder} -tclbatch tb_int_adder.tcl -log simulate.log"
xsim tb_int_adder_behav -key {Behavioral:sim_1:Functional:tb_int_adder} -tclbatch tb_int_adder.tcl -log simulate.log

