// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
// Date        : Sun May 17 20:34:14 2020
// Host        : rouholla-DevStation running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top bd_71ba_mipi_dphy_0_0 -prefix
//               bd_71ba_mipi_dphy_0_0_ bd_71ba_mipi_dphy_0_0_stub.v
// Design      : bd_71ba_mipi_dphy_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module bd_71ba_mipi_dphy_0_0(core_clk, core_rst, txclkesc_out, txbyteclkhs, 
  clkoutphy_out, pll_lock_out, mmcm_lock_out, system_rst_out, init_done, cl_txclkactivehs, 
  cl_txrequesths, cl_stopstate, cl_enable, cl_txulpsclk, cl_txulpsexit, cl_ulpsactivenot, 
  dl0_txdatahs, dl0_txrequesths, dl0_txreadyhs, dl0_forcetxstopmode, dl0_stopstate, 
  dl0_enable, dl0_txrequestesc, dl0_txlpdtesc, dl0_txulpsexit, dl0_ulpsactivenot, 
  dl0_txulpsesc, dl0_txtriggeresc, dl0_txdataesc, dl0_txvalidesc, dl0_txreadyesc, 
  dl1_txdatahs, dl1_txrequesths, dl1_txreadyhs, dl1_forcetxstopmode, dl1_stopstate, 
  dl1_enable, dl1_txrequestesc, dl1_txlpdtesc, dl1_txulpsexit, dl1_ulpsactivenot, 
  dl1_txulpsesc, dl1_txtriggeresc, dl1_txdataesc, dl1_txvalidesc, dl1_txreadyesc, 
  dl2_txdatahs, dl2_txrequesths, dl2_txreadyhs, dl2_forcetxstopmode, dl2_stopstate, 
  dl2_enable, dl2_txrequestesc, dl2_txlpdtesc, dl2_txulpsexit, dl2_ulpsactivenot, 
  dl2_txulpsesc, dl2_txtriggeresc, dl2_txdataesc, dl2_txvalidesc, dl2_txreadyesc, s_axi_aclk, 
  s_axi_aresetn, s_axi_awaddr, s_axi_awready, s_axi_awvalid, s_axi_araddr, s_axi_arready, 
  s_axi_arvalid, s_axi_wdata, s_axi_wstrb, s_axi_wready, s_axi_wvalid, s_axi_rdata, 
  s_axi_rresp, s_axi_rready, s_axi_rvalid, s_axi_bresp, s_axi_bready, s_axi_bvalid, 
  active_lanes_in, clk_txp, clk_txn, data_txp, data_txn)
/* synthesis syn_black_box black_box_pad_pin="core_clk,core_rst,txclkesc_out,txbyteclkhs,clkoutphy_out,pll_lock_out,mmcm_lock_out,system_rst_out,init_done,cl_txclkactivehs,cl_txrequesths,cl_stopstate,cl_enable,cl_txulpsclk,cl_txulpsexit,cl_ulpsactivenot,dl0_txdatahs[7:0],dl0_txrequesths,dl0_txreadyhs,dl0_forcetxstopmode,dl0_stopstate,dl0_enable,dl0_txrequestesc,dl0_txlpdtesc,dl0_txulpsexit,dl0_ulpsactivenot,dl0_txulpsesc,dl0_txtriggeresc[3:0],dl0_txdataesc[7:0],dl0_txvalidesc,dl0_txreadyesc,dl1_txdatahs[7:0],dl1_txrequesths,dl1_txreadyhs,dl1_forcetxstopmode,dl1_stopstate,dl1_enable,dl1_txrequestesc,dl1_txlpdtesc,dl1_txulpsexit,dl1_ulpsactivenot,dl1_txulpsesc,dl1_txtriggeresc[3:0],dl1_txdataesc[7:0],dl1_txvalidesc,dl1_txreadyesc,dl2_txdatahs[7:0],dl2_txrequesths,dl2_txreadyhs,dl2_forcetxstopmode,dl2_stopstate,dl2_enable,dl2_txrequestesc,dl2_txlpdtesc,dl2_txulpsexit,dl2_ulpsactivenot,dl2_txulpsesc,dl2_txtriggeresc[3:0],dl2_txdataesc[7:0],dl2_txvalidesc,dl2_txreadyesc,s_axi_aclk,s_axi_aresetn,s_axi_awaddr[6:0],s_axi_awready,s_axi_awvalid,s_axi_araddr[6:0],s_axi_arready,s_axi_arvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wready,s_axi_wvalid,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rready,s_axi_rvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_bvalid,active_lanes_in[2:0],clk_txp,clk_txn,data_txp[2:0],data_txn[2:0]" */;
  input core_clk;
  input core_rst;
  output txclkesc_out;
  output txbyteclkhs;
  output clkoutphy_out;
  output pll_lock_out;
  output mmcm_lock_out;
  output system_rst_out;
  output init_done;
  output cl_txclkactivehs;
  input cl_txrequesths;
  output cl_stopstate;
  input cl_enable;
  input cl_txulpsclk;
  input cl_txulpsexit;
  output cl_ulpsactivenot;
  input [7:0]dl0_txdatahs;
  input dl0_txrequesths;
  output dl0_txreadyhs;
  input dl0_forcetxstopmode;
  output dl0_stopstate;
  input dl0_enable;
  input dl0_txrequestesc;
  input dl0_txlpdtesc;
  input dl0_txulpsexit;
  output dl0_ulpsactivenot;
  input dl0_txulpsesc;
  input [3:0]dl0_txtriggeresc;
  input [7:0]dl0_txdataesc;
  input dl0_txvalidesc;
  output dl0_txreadyesc;
  input [7:0]dl1_txdatahs;
  input dl1_txrequesths;
  output dl1_txreadyhs;
  input dl1_forcetxstopmode;
  output dl1_stopstate;
  input dl1_enable;
  input dl1_txrequestesc;
  input dl1_txlpdtesc;
  input dl1_txulpsexit;
  output dl1_ulpsactivenot;
  input dl1_txulpsesc;
  input [3:0]dl1_txtriggeresc;
  input [7:0]dl1_txdataesc;
  input dl1_txvalidesc;
  output dl1_txreadyesc;
  input [7:0]dl2_txdatahs;
  input dl2_txrequesths;
  output dl2_txreadyhs;
  input dl2_forcetxstopmode;
  output dl2_stopstate;
  input dl2_enable;
  input dl2_txrequestesc;
  input dl2_txlpdtesc;
  input dl2_txulpsexit;
  output dl2_ulpsactivenot;
  input dl2_txulpsesc;
  input [3:0]dl2_txtriggeresc;
  input [7:0]dl2_txdataesc;
  input dl2_txvalidesc;
  output dl2_txreadyesc;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input [6:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  input s_axi_wvalid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input s_axi_rready;
  output s_axi_rvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  output s_axi_bvalid;
  input [2:0]active_lanes_in;
  output clk_txp;
  output clk_txn;
  output [2:0]data_txp;
  output [2:0]data_txn;
endmodule
