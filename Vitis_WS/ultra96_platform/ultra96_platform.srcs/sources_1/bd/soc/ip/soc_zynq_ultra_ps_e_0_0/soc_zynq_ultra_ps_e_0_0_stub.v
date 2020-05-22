// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
// Date        : Fri Dec 13 18:12:52 2019
// Host        : rouholla-DevStation running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/rouholla/myData/zynq_projects/Vitis_Projects/ultra96_platform/ultra96_platform.srcs/sources_1/bd/soc/ip/soc_zynq_ultra_ps_e_0_0/soc_zynq_ultra_ps_e_0_0_stub.v
// Design      : soc_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zynq_ultra_ps_e_v3_3_1_zynq_ultra_ps_e,Vivado 2019.2" *)
module soc_zynq_ultra_ps_e_0_0(pl_ps_irq0, pl_resetn0, pl_clk0)
/* synthesis syn_black_box black_box_pad_pin="pl_ps_irq0[0:0],pl_resetn0,pl_clk0" */;
  input [0:0]pl_ps_irq0;
  output pl_resetn0;
  output pl_clk0;
endmodule
