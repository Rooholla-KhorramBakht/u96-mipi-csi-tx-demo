#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/rouholla/myData/apps_install_path/xilinx/Vitis/2019.2/bin:/home/rouholla/myData/apps_install_path/xilinx/Vivado/2019.2/ids_lite/ISE/bin/lin64:/home/rouholla/myData/apps_install_path/xilinx/Vivado/2019.2/bin
else
  PATH=/home/rouholla/myData/apps_install_path/xilinx/Vitis/2019.2/bin:/home/rouholla/myData/apps_install_path/xilinx/Vivado/2019.2/ids_lite/ISE/bin/lin64:/home/rouholla/myData/apps_install_path/xilinx/Vivado/2019.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/rouholla/myData/zynq_projects/Vitis_Projects/ultra96_platform/ultra96_platform.runs/soc_proc_sys_reset_0_3_synth_1'
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

EAStep vivado -log soc_proc_sys_reset_0_3.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source soc_proc_sys_reset_0_3.tcl
