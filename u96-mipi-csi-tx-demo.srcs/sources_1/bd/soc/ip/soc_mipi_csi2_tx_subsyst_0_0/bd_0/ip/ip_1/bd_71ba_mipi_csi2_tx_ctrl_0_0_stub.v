// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
// Date        : Tue May 19 23:05:08 2020
// Host        : rouholla-DevStation running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top bd_71ba_mipi_csi2_tx_ctrl_0_0 -prefix
//               bd_71ba_mipi_csi2_tx_ctrl_0_0_ bd_71ba_mipi_csi2_tx_ctrl_0_0_stub.v
// Design      : bd_71ba_mipi_csi2_tx_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module bd_71ba_mipi_csi2_tx_ctrl_0_0(s_axis_aclk, s_axis_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, cl_txclkactive, dphy_init_done, 
  dl_tx_stop_st, s_axis_tready, s_axis_tvalid, s_axis_tlast, s_axis_tdata, s_axis_tkeep, 
  s_axis_tdest, s_axis_tuser, txbyteclkhs, txclkesc, core_clk_in, cl_enable, cl_txrequesths, 
  cl_txulpsclk, cl_txulpsexit, dl0_txdatahs, dl0_txrequesths, dl0_forcetxstopmode, 
  dl0_enable, dl0_txskewcalhs, dl0_txreadyhs, dl0_txulpsesc, dl0_txrequestesc, 
  dl0_txulpsexit, dl0_ulpsactivenot, dl1_txdatahs, dl1_txrequesths, dl1_txreadyhs, 
  dl1_forcetxstopmode, dl1_enable, dl1_txulpsesc, dl1_txrequestesc, dl1_txulpsexit, 
  dl1_ulpsactivenot, dl1_txskewcalhs, dl2_txdatahs, dl2_txrequesths, dl2_txreadyhs, 
  dl2_forcetxstopmode, dl2_enable, dl2_txulpsesc, dl2_txrequestesc, dl2_txulpsexit, 
  dl2_ulpsactivenot, dl2_txskewcalhs, active_lanes_dphy, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aclk,s_axis_aresetn,s_axi_awaddr[7:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[7:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,cl_txclkactive,dphy_init_done,dl_tx_stop_st,s_axis_tready,s_axis_tvalid,s_axis_tlast,s_axis_tdata[47:0],s_axis_tkeep[5:0],s_axis_tdest[1:0],s_axis_tuser[95:0],txbyteclkhs,txclkesc,core_clk_in,cl_enable,cl_txrequesths,cl_txulpsclk,cl_txulpsexit,dl0_txdatahs[7:0],dl0_txrequesths,dl0_forcetxstopmode,dl0_enable,dl0_txskewcalhs,dl0_txreadyhs,dl0_txulpsesc,dl0_txrequestesc,dl0_txulpsexit,dl0_ulpsactivenot,dl1_txdatahs[7:0],dl1_txrequesths,dl1_txreadyhs,dl1_forcetxstopmode,dl1_enable,dl1_txulpsesc,dl1_txrequestesc,dl1_txulpsexit,dl1_ulpsactivenot,dl1_txskewcalhs,dl2_txdatahs[7:0],dl2_txrequesths,dl2_txreadyhs,dl2_forcetxstopmode,dl2_enable,dl2_txulpsesc,dl2_txrequestesc,dl2_txulpsexit,dl2_ulpsactivenot,dl2_txskewcalhs,active_lanes_dphy[2:0],interrupt" */;
  input s_axis_aclk;
  input s_axis_aresetn;
  input [7:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [7:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input cl_txclkactive;
  input dphy_init_done;
  input dl_tx_stop_st;
  output s_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input [47:0]s_axis_tdata;
  input [5:0]s_axis_tkeep;
  input [1:0]s_axis_tdest;
  input [95:0]s_axis_tuser;
  input txbyteclkhs;
  input txclkesc;
  input core_clk_in;
  output cl_enable;
  output cl_txrequesths;
  output cl_txulpsclk;
  output cl_txulpsexit;
  output [7:0]dl0_txdatahs;
  output dl0_txrequesths;
  output dl0_forcetxstopmode;
  output dl0_enable;
  output dl0_txskewcalhs;
  input dl0_txreadyhs;
  output dl0_txulpsesc;
  output dl0_txrequestesc;
  output dl0_txulpsexit;
  input dl0_ulpsactivenot;
  output [7:0]dl1_txdatahs;
  output dl1_txrequesths;
  input dl1_txreadyhs;
  output dl1_forcetxstopmode;
  output dl1_enable;
  output dl1_txulpsesc;
  output dl1_txrequestesc;
  output dl1_txulpsexit;
  input dl1_ulpsactivenot;
  output dl1_txskewcalhs;
  output [7:0]dl2_txdatahs;
  output dl2_txrequesths;
  input dl2_txreadyhs;
  output dl2_forcetxstopmode;
  output dl2_enable;
  output dl2_txulpsesc;
  output dl2_txrequestesc;
  output dl2_txulpsexit;
  input dl2_ulpsactivenot;
  output dl2_txskewcalhs;
  output [2:0]active_lanes_dphy;
  output interrupt;
endmodule
