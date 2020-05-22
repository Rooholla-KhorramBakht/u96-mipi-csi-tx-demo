-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Tue May 19 23:05:08 2020
-- Host        : rouholla-DevStation running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top bd_71ba_mipi_csi2_tx_ctrl_0_0 -prefix
--               bd_71ba_mipi_csi2_tx_ctrl_0_0_ bd_71ba_mipi_csi2_tx_ctrl_0_0_stub.vhdl
-- Design      : bd_71ba_mipi_csi2_tx_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_71ba_mipi_csi2_tx_ctrl_0_0 is
  Port ( 
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    cl_txclkactive : in STD_LOGIC;
    dphy_init_done : in STD_LOGIC;
    dl_tx_stop_st : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 95 downto 0 );
    txbyteclkhs : in STD_LOGIC;
    txclkesc : in STD_LOGIC;
    core_clk_in : in STD_LOGIC;
    cl_enable : out STD_LOGIC;
    cl_txrequesths : out STD_LOGIC;
    cl_txulpsclk : out STD_LOGIC;
    cl_txulpsexit : out STD_LOGIC;
    dl0_txdatahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_txrequesths : out STD_LOGIC;
    dl0_forcetxstopmode : out STD_LOGIC;
    dl0_enable : out STD_LOGIC;
    dl0_txskewcalhs : out STD_LOGIC;
    dl0_txreadyhs : in STD_LOGIC;
    dl0_txulpsesc : out STD_LOGIC;
    dl0_txrequestesc : out STD_LOGIC;
    dl0_txulpsexit : out STD_LOGIC;
    dl0_ulpsactivenot : in STD_LOGIC;
    dl1_txdatahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_txrequesths : out STD_LOGIC;
    dl1_txreadyhs : in STD_LOGIC;
    dl1_forcetxstopmode : out STD_LOGIC;
    dl1_enable : out STD_LOGIC;
    dl1_txulpsesc : out STD_LOGIC;
    dl1_txrequestesc : out STD_LOGIC;
    dl1_txulpsexit : out STD_LOGIC;
    dl1_ulpsactivenot : in STD_LOGIC;
    dl1_txskewcalhs : out STD_LOGIC;
    dl2_txdatahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl2_txrequesths : out STD_LOGIC;
    dl2_txreadyhs : in STD_LOGIC;
    dl2_forcetxstopmode : out STD_LOGIC;
    dl2_enable : out STD_LOGIC;
    dl2_txulpsesc : out STD_LOGIC;
    dl2_txrequestesc : out STD_LOGIC;
    dl2_txulpsexit : out STD_LOGIC;
    dl2_ulpsactivenot : in STD_LOGIC;
    dl2_txskewcalhs : out STD_LOGIC;
    active_lanes_dphy : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interrupt : out STD_LOGIC
  );

end bd_71ba_mipi_csi2_tx_ctrl_0_0;

architecture stub of bd_71ba_mipi_csi2_tx_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_aclk,s_axis_aresetn,s_axi_awaddr[7:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[7:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,cl_txclkactive,dphy_init_done,dl_tx_stop_st,s_axis_tready,s_axis_tvalid,s_axis_tlast,s_axis_tdata[47:0],s_axis_tkeep[5:0],s_axis_tdest[1:0],s_axis_tuser[95:0],txbyteclkhs,txclkesc,core_clk_in,cl_enable,cl_txrequesths,cl_txulpsclk,cl_txulpsexit,dl0_txdatahs[7:0],dl0_txrequesths,dl0_forcetxstopmode,dl0_enable,dl0_txskewcalhs,dl0_txreadyhs,dl0_txulpsesc,dl0_txrequestesc,dl0_txulpsexit,dl0_ulpsactivenot,dl1_txdatahs[7:0],dl1_txrequesths,dl1_txreadyhs,dl1_forcetxstopmode,dl1_enable,dl1_txulpsesc,dl1_txrequestesc,dl1_txulpsexit,dl1_ulpsactivenot,dl1_txskewcalhs,dl2_txdatahs[7:0],dl2_txrequesths,dl2_txreadyhs,dl2_forcetxstopmode,dl2_enable,dl2_txulpsesc,dl2_txrequestesc,dl2_txulpsexit,dl2_ulpsactivenot,dl2_txskewcalhs,active_lanes_dphy[2:0],interrupt";
begin
end;
