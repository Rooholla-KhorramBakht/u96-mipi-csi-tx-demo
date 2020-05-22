-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Sun May 17 20:34:15 2020
-- Host        : rouholla-DevStation running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top bd_71ba_mipi_dphy_0_0 -prefix
--               bd_71ba_mipi_dphy_0_0_ bd_71ba_mipi_dphy_0_0_stub.vhdl
-- Design      : bd_71ba_mipi_dphy_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_71ba_mipi_dphy_0_0 is
  Port ( 
    core_clk : in STD_LOGIC;
    core_rst : in STD_LOGIC;
    txclkesc_out : out STD_LOGIC;
    txbyteclkhs : out STD_LOGIC;
    clkoutphy_out : out STD_LOGIC;
    pll_lock_out : out STD_LOGIC;
    mmcm_lock_out : out STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    init_done : out STD_LOGIC;
    cl_txclkactivehs : out STD_LOGIC;
    cl_txrequesths : in STD_LOGIC;
    cl_stopstate : out STD_LOGIC;
    cl_enable : in STD_LOGIC;
    cl_txulpsclk : in STD_LOGIC;
    cl_txulpsexit : in STD_LOGIC;
    cl_ulpsactivenot : out STD_LOGIC;
    dl0_txdatahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_txrequesths : in STD_LOGIC;
    dl0_txreadyhs : out STD_LOGIC;
    dl0_forcetxstopmode : in STD_LOGIC;
    dl0_stopstate : out STD_LOGIC;
    dl0_enable : in STD_LOGIC;
    dl0_txrequestesc : in STD_LOGIC;
    dl0_txlpdtesc : in STD_LOGIC;
    dl0_txulpsexit : in STD_LOGIC;
    dl0_ulpsactivenot : out STD_LOGIC;
    dl0_txulpsesc : in STD_LOGIC;
    dl0_txtriggeresc : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dl0_txdataesc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_txvalidesc : in STD_LOGIC;
    dl0_txreadyesc : out STD_LOGIC;
    dl1_txdatahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_txrequesths : in STD_LOGIC;
    dl1_txreadyhs : out STD_LOGIC;
    dl1_forcetxstopmode : in STD_LOGIC;
    dl1_stopstate : out STD_LOGIC;
    dl1_enable : in STD_LOGIC;
    dl1_txrequestesc : in STD_LOGIC;
    dl1_txlpdtesc : in STD_LOGIC;
    dl1_txulpsexit : in STD_LOGIC;
    dl1_ulpsactivenot : out STD_LOGIC;
    dl1_txulpsesc : in STD_LOGIC;
    dl1_txtriggeresc : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dl1_txdataesc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_txvalidesc : in STD_LOGIC;
    dl1_txreadyesc : out STD_LOGIC;
    dl2_txdatahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl2_txrequesths : in STD_LOGIC;
    dl2_txreadyhs : out STD_LOGIC;
    dl2_forcetxstopmode : in STD_LOGIC;
    dl2_stopstate : out STD_LOGIC;
    dl2_enable : in STD_LOGIC;
    dl2_txrequestesc : in STD_LOGIC;
    dl2_txlpdtesc : in STD_LOGIC;
    dl2_txulpsexit : in STD_LOGIC;
    dl2_ulpsactivenot : out STD_LOGIC;
    dl2_txulpsesc : in STD_LOGIC;
    dl2_txtriggeresc : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dl2_txdataesc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl2_txvalidesc : in STD_LOGIC;
    dl2_txreadyesc : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    active_lanes_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_txp : out STD_LOGIC;
    clk_txn : out STD_LOGIC;
    data_txp : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_txn : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end bd_71ba_mipi_dphy_0_0;

architecture stub of bd_71ba_mipi_dphy_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "core_clk,core_rst,txclkesc_out,txbyteclkhs,clkoutphy_out,pll_lock_out,mmcm_lock_out,system_rst_out,init_done,cl_txclkactivehs,cl_txrequesths,cl_stopstate,cl_enable,cl_txulpsclk,cl_txulpsexit,cl_ulpsactivenot,dl0_txdatahs[7:0],dl0_txrequesths,dl0_txreadyhs,dl0_forcetxstopmode,dl0_stopstate,dl0_enable,dl0_txrequestesc,dl0_txlpdtesc,dl0_txulpsexit,dl0_ulpsactivenot,dl0_txulpsesc,dl0_txtriggeresc[3:0],dl0_txdataesc[7:0],dl0_txvalidesc,dl0_txreadyesc,dl1_txdatahs[7:0],dl1_txrequesths,dl1_txreadyhs,dl1_forcetxstopmode,dl1_stopstate,dl1_enable,dl1_txrequestesc,dl1_txlpdtesc,dl1_txulpsexit,dl1_ulpsactivenot,dl1_txulpsesc,dl1_txtriggeresc[3:0],dl1_txdataesc[7:0],dl1_txvalidesc,dl1_txreadyesc,dl2_txdatahs[7:0],dl2_txrequesths,dl2_txreadyhs,dl2_forcetxstopmode,dl2_stopstate,dl2_enable,dl2_txrequestesc,dl2_txlpdtesc,dl2_txulpsexit,dl2_ulpsactivenot,dl2_txulpsesc,dl2_txtriggeresc[3:0],dl2_txdataesc[7:0],dl2_txvalidesc,dl2_txreadyesc,s_axi_aclk,s_axi_aresetn,s_axi_awaddr[6:0],s_axi_awready,s_axi_awvalid,s_axi_araddr[6:0],s_axi_arready,s_axi_arvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wready,s_axi_wvalid,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rready,s_axi_rvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_bvalid,active_lanes_in[2:0],clk_txp,clk_txn,data_txp[2:0],data_txn[2:0]";
begin
end;
