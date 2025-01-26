#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/media/reza/_dev_sda1/Vitis/2023.2/bin:/media/reza/_dev_sda1/Vivado/2023.2/ids_lite/ISE/bin/lin64:/media/reza/_dev_sda1/Vivado/2023.2/bin
else
  PATH=/media/reza/_dev_sda1/Vitis/2023.2/bin:/media/reza/_dev_sda1/Vivado/2023.2/ids_lite/ISE/bin/lin64:/media/reza/_dev_sda1/Vivado/2023.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/mnt/9636D17436D15639/Tutorial/FPGA/VHDL/ece420/Codes/for_test/for_test.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log main.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source main.tcl
