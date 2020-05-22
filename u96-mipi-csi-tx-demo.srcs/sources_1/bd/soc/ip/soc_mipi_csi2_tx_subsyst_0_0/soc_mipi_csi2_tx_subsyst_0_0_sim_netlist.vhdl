-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Tue May 19 23:07:15 2020
-- Host        : rouholla-DevStation running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top soc_mipi_csi2_tx_subsyst_0_0 -prefix
--               soc_mipi_csi2_tx_subsyst_0_0_ soc_mipi_csi2_tx_subsyst_0_0_sim_netlist.vhdl
-- Design      : soc_mipi_csi2_tx_subsyst_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_mipi_csi2_tx_subsyst_0_0_bd_71ba is
  port (
    clkoutphy_out : out STD_LOGIC;
    dphy_clk_200M : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    mipi_phy_if_clk_n : out STD_LOGIC;
    mipi_phy_if_clk_p : out STD_LOGIC;
    mipi_phy_if_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mmcm_lock_out : out STD_LOGIC;
    pll_lock_out : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    txbyteclkhs : out STD_LOGIC;
    txclkesc_out : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of soc_mipi_csi2_tx_subsyst_0_0_bd_71ba : entity is "soc_mipi_csi2_tx_subsyst_0_0.hwdef";
end soc_mipi_csi2_tx_subsyst_0_0_bd_71ba;

architecture STRUCTURE of soc_mipi_csi2_tx_subsyst_0_0_bd_71ba is
  component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_axi_crossbar_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_axi_crossbar_0_0;
  component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_csi2_tx_ctrl_0_0 is
  port (
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
  end component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_csi2_tx_ctrl_0_0;
  component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_dphy_0_0 is
  port (
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
  end component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_dphy_0_0;
  component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_proc_sys_reset_0_0;
  signal axi_crossbar_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_crossbar_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_crossbar_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_crossbar_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal axi_crossbar_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal axi_crossbar_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal axi_crossbar_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal axi_crossbar_0_M01_AXI_WVALID : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_active_lanes_dphy : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ENABLE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_FORCETXSTOPMODE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREADYHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTESC : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSESC : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSEXIT : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ULPSACTIVENOT : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ENABLE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_FORCETXSTOPMODE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREADYHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTESC : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSESC : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSEXIT : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ULPSACTIVENOT : STD_LOGIC;
  signal mipi_dphy_0_cl_txclkactivehs : STD_LOGIC;
  signal mipi_dphy_0_dl0_stopstate : STD_LOGIC;
  signal mipi_dphy_0_init_done : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_reset : STD_LOGIC;
  signal \^txbyteclkhs\ : STD_LOGIC;
  signal \^txclkesc_out\ : STD_LOGIC;
  signal NLW_axi_crossbar_0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 25 downto 8 );
  signal NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_crossbar_0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 25 downto 8 );
  signal NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_mipi_csi2_tx_ctrl_0_dl0_txskewcalhs_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_csi2_tx_ctrl_0_dl1_txskewcalhs_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_csi2_tx_ctrl_0_dl2_txskewcalhs_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_cl_stopstate_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_cl_ulpsactivenot_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_dl0_txreadyesc_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_dl1_stopstate_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_dl1_txreadyesc_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_dl2_stopstate_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_dl2_txreadyesc_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_crossbar_0 : label is "axi_crossbar_v2_1_21_axi_crossbar,Vivado 2019.2";
  attribute X_CORE_INFO of proc_sys_reset_0 : label is "proc_sys_reset,Vivado 2019.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clkoutphy_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLKOUTPHY_OUT CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clkoutphy_out : signal is "XIL_INTERFACENAME CLK.CLKOUTPHY_OUT, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_clkoutphy_out, FREQ_HZ 912000000.0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of dphy_clk_200M : signal is "xilinx.com:signal:clock:1.0 CLK.DPHY_CLK_200M CLK";
  attribute X_INTERFACE_PARAMETER of dphy_clk_200M : signal is "XIL_INTERFACENAME CLK.DPHY_CLK_200M, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk2, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME CLK.S_AXIS_ACLK, ASSOCIATED_BUSIF s_axi:s_axis, ASSOCIATED_RESET s_axis_aresetn, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, FREQ_HZ 150000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME RST.S_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of txbyteclkhs : signal is "xilinx.com:signal:clock:1.0 CLK.TXBYTECLKHS CLK";
  attribute X_INTERFACE_PARAMETER of txbyteclkhs : signal is "XIL_INTERFACENAME CLK.TXBYTECLKHS, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_txbyteclkhs, FREQ_HZ 114000000.0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of txclkesc_out : signal is "xilinx.com:signal:clock:1.0 CLK.TXCLKESC_OUT CLK";
  attribute X_INTERFACE_PARAMETER of txclkesc_out : signal is "XIL_INTERFACENAME CLK.TXCLKESC_OUT, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_txclkesc_out, FREQ_HZ 10000000.0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_araddr : signal is "XIL_INTERFACENAME s_axi, ADDR_WIDTH 13, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, DATA_WIDTH 32, FREQ_HZ 150000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 6, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 96";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
  txbyteclkhs <= \^txbyteclkhs\;
  txclkesc_out <= \^txclkesc_out\;
axi_crossbar_0: component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_axi_crossbar_0_0
     port map (
      aclk => s_axis_aclk,
      aresetn => s_axis_aresetn,
      m_axi_araddr(25 downto 20) => NLW_axi_crossbar_0_m_axi_araddr_UNCONNECTED(25 downto 20),
      m_axi_araddr(19 downto 13) => axi_crossbar_0_M01_AXI_ARADDR(6 downto 0),
      m_axi_araddr(12 downto 8) => NLW_axi_crossbar_0_m_axi_araddr_UNCONNECTED(12 downto 8),
      m_axi_araddr(7 downto 0) => axi_crossbar_0_M00_AXI_ARADDR(7 downto 0),
      m_axi_arprot(5 downto 0) => NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED(5 downto 0),
      m_axi_arready(1) => axi_crossbar_0_M01_AXI_ARREADY,
      m_axi_arready(0) => axi_crossbar_0_M00_AXI_ARREADY,
      m_axi_arvalid(1) => axi_crossbar_0_M01_AXI_ARVALID,
      m_axi_arvalid(0) => axi_crossbar_0_M00_AXI_ARVALID,
      m_axi_awaddr(25 downto 20) => NLW_axi_crossbar_0_m_axi_awaddr_UNCONNECTED(25 downto 20),
      m_axi_awaddr(19 downto 13) => axi_crossbar_0_M01_AXI_AWADDR(6 downto 0),
      m_axi_awaddr(12 downto 8) => NLW_axi_crossbar_0_m_axi_awaddr_UNCONNECTED(12 downto 8),
      m_axi_awaddr(7 downto 0) => axi_crossbar_0_M00_AXI_AWADDR(7 downto 0),
      m_axi_awprot(5 downto 0) => NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED(5 downto 0),
      m_axi_awready(1) => axi_crossbar_0_M01_AXI_AWREADY,
      m_axi_awready(0) => axi_crossbar_0_M00_AXI_AWREADY,
      m_axi_awvalid(1) => axi_crossbar_0_M01_AXI_AWVALID,
      m_axi_awvalid(0) => axi_crossbar_0_M00_AXI_AWVALID,
      m_axi_bready(1) => axi_crossbar_0_M01_AXI_BREADY,
      m_axi_bready(0) => axi_crossbar_0_M00_AXI_BREADY,
      m_axi_bresp(3 downto 2) => axi_crossbar_0_M01_AXI_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => axi_crossbar_0_M00_AXI_BRESP(1 downto 0),
      m_axi_bvalid(1) => axi_crossbar_0_M01_AXI_BVALID,
      m_axi_bvalid(0) => axi_crossbar_0_M00_AXI_BVALID,
      m_axi_rdata(63 downto 32) => axi_crossbar_0_M01_AXI_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => axi_crossbar_0_M00_AXI_RDATA(31 downto 0),
      m_axi_rready(1) => axi_crossbar_0_M01_AXI_RREADY,
      m_axi_rready(0) => axi_crossbar_0_M00_AXI_RREADY,
      m_axi_rresp(3 downto 2) => axi_crossbar_0_M01_AXI_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => axi_crossbar_0_M00_AXI_RRESP(1 downto 0),
      m_axi_rvalid(1) => axi_crossbar_0_M01_AXI_RVALID,
      m_axi_rvalid(0) => axi_crossbar_0_M00_AXI_RVALID,
      m_axi_wdata(63 downto 32) => axi_crossbar_0_M01_AXI_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => axi_crossbar_0_M00_AXI_WDATA(31 downto 0),
      m_axi_wready(1) => axi_crossbar_0_M01_AXI_WREADY,
      m_axi_wready(0) => axi_crossbar_0_M00_AXI_WREADY,
      m_axi_wstrb(7 downto 4) => axi_crossbar_0_M01_AXI_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => axi_crossbar_0_M00_AXI_WSTRB(3 downto 0),
      m_axi_wvalid(1) => axi_crossbar_0_M01_AXI_WVALID,
      m_axi_wvalid(0) => axi_crossbar_0_M00_AXI_WVALID,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready(0) => s_axi_arready(0),
      s_axi_arvalid(0) => s_axi_arvalid(0),
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready(0) => s_axi_awready(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid(0) => s_axi_wvalid(0)
    );
mipi_csi2_tx_ctrl_0: component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_csi2_tx_ctrl_0_0
     port map (
      active_lanes_dphy(2 downto 0) => mipi_csi2_tx_ctrl_0_active_lanes_dphy(2 downto 0),
      cl_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE,
      cl_txclkactive => mipi_dphy_0_cl_txclkactivehs,
      cl_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS,
      cl_txulpsclk => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK,
      cl_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT,
      core_clk_in => dphy_clk_200M,
      dl0_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE,
      dl0_forcetxstopmode => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE,
      dl0_txdatahs(7 downto 0) => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS(7 downto 0),
      dl0_txreadyhs => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS,
      dl0_txrequestesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC,
      dl0_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS,
      dl0_txskewcalhs => NLW_mipi_csi2_tx_ctrl_0_dl0_txskewcalhs_UNCONNECTED,
      dl0_txulpsesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC,
      dl0_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT,
      dl0_ulpsactivenot => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT,
      dl1_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ENABLE,
      dl1_forcetxstopmode => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_FORCETXSTOPMODE,
      dl1_txdatahs(7 downto 0) => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXDATAHS(7 downto 0),
      dl1_txreadyhs => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREADYHS,
      dl1_txrequestesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTESC,
      dl1_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTHS,
      dl1_txskewcalhs => NLW_mipi_csi2_tx_ctrl_0_dl1_txskewcalhs_UNCONNECTED,
      dl1_txulpsesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSESC,
      dl1_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSEXIT,
      dl1_ulpsactivenot => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ULPSACTIVENOT,
      dl2_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ENABLE,
      dl2_forcetxstopmode => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_FORCETXSTOPMODE,
      dl2_txdatahs(7 downto 0) => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXDATAHS(7 downto 0),
      dl2_txreadyhs => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREADYHS,
      dl2_txrequestesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTESC,
      dl2_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTHS,
      dl2_txskewcalhs => NLW_mipi_csi2_tx_ctrl_0_dl2_txskewcalhs_UNCONNECTED,
      dl2_txulpsesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSESC,
      dl2_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSEXIT,
      dl2_ulpsactivenot => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ULPSACTIVENOT,
      dl_tx_stop_st => mipi_dphy_0_dl0_stopstate,
      dphy_init_done => mipi_dphy_0_init_done,
      interrupt => interrupt,
      s_axi_araddr(7 downto 0) => axi_crossbar_0_M00_AXI_ARADDR(7 downto 0),
      s_axi_arready => axi_crossbar_0_M00_AXI_ARREADY,
      s_axi_arvalid => axi_crossbar_0_M00_AXI_ARVALID,
      s_axi_awaddr(7 downto 0) => axi_crossbar_0_M00_AXI_AWADDR(7 downto 0),
      s_axi_awready => axi_crossbar_0_M00_AXI_AWREADY,
      s_axi_awvalid => axi_crossbar_0_M00_AXI_AWVALID,
      s_axi_bready => axi_crossbar_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_crossbar_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_crossbar_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_crossbar_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_crossbar_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_crossbar_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_crossbar_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_crossbar_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_crossbar_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_crossbar_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_crossbar_0_M00_AXI_WVALID,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(47 downto 0) => s_axis_tdata(47 downto 0),
      s_axis_tdest(1 downto 0) => s_axis_tdest(1 downto 0),
      s_axis_tkeep(5 downto 0) => s_axis_tkeep(5 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(95 downto 0) => s_axis_tuser(95 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      txbyteclkhs => \^txbyteclkhs\,
      txclkesc => \^txclkesc_out\
    );
mipi_dphy_0: component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_dphy_0_0
     port map (
      active_lanes_in(2 downto 0) => mipi_csi2_tx_ctrl_0_active_lanes_dphy(2 downto 0),
      cl_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE,
      cl_stopstate => NLW_mipi_dphy_0_cl_stopstate_UNCONNECTED,
      cl_txclkactivehs => mipi_dphy_0_cl_txclkactivehs,
      cl_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS,
      cl_txulpsclk => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK,
      cl_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT,
      cl_ulpsactivenot => NLW_mipi_dphy_0_cl_ulpsactivenot_UNCONNECTED,
      clk_txn => mipi_phy_if_clk_n,
      clk_txp => mipi_phy_if_clk_p,
      clkoutphy_out => clkoutphy_out,
      core_clk => dphy_clk_200M,
      core_rst => proc_sys_reset_0_peripheral_reset,
      data_txn(2 downto 0) => mipi_phy_if_data_n(2 downto 0),
      data_txp(2 downto 0) => mipi_phy_if_data_p(2 downto 0),
      dl0_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE,
      dl0_forcetxstopmode => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE,
      dl0_stopstate => mipi_dphy_0_dl0_stopstate,
      dl0_txdataesc(7 downto 0) => B"00000000",
      dl0_txdatahs(7 downto 0) => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS(7 downto 0),
      dl0_txlpdtesc => '0',
      dl0_txreadyesc => NLW_mipi_dphy_0_dl0_txreadyesc_UNCONNECTED,
      dl0_txreadyhs => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS,
      dl0_txrequestesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC,
      dl0_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS,
      dl0_txtriggeresc(3 downto 0) => B"0000",
      dl0_txulpsesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC,
      dl0_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT,
      dl0_txvalidesc => '0',
      dl0_ulpsactivenot => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT,
      dl1_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ENABLE,
      dl1_forcetxstopmode => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_FORCETXSTOPMODE,
      dl1_stopstate => NLW_mipi_dphy_0_dl1_stopstate_UNCONNECTED,
      dl1_txdataesc(7 downto 0) => B"00000000",
      dl1_txdatahs(7 downto 0) => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXDATAHS(7 downto 0),
      dl1_txlpdtesc => '0',
      dl1_txreadyesc => NLW_mipi_dphy_0_dl1_txreadyesc_UNCONNECTED,
      dl1_txreadyhs => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREADYHS,
      dl1_txrequestesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTESC,
      dl1_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTHS,
      dl1_txtriggeresc(3 downto 0) => B"0000",
      dl1_txulpsesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSESC,
      dl1_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSEXIT,
      dl1_txvalidesc => '0',
      dl1_ulpsactivenot => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ULPSACTIVENOT,
      dl2_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ENABLE,
      dl2_forcetxstopmode => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_FORCETXSTOPMODE,
      dl2_stopstate => NLW_mipi_dphy_0_dl2_stopstate_UNCONNECTED,
      dl2_txdataesc(7 downto 0) => B"00000000",
      dl2_txdatahs(7 downto 0) => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXDATAHS(7 downto 0),
      dl2_txlpdtesc => '0',
      dl2_txreadyesc => NLW_mipi_dphy_0_dl2_txreadyesc_UNCONNECTED,
      dl2_txreadyhs => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREADYHS,
      dl2_txrequestesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTESC,
      dl2_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTHS,
      dl2_txtriggeresc(3 downto 0) => B"0000",
      dl2_txulpsesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSESC,
      dl2_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSEXIT,
      dl2_txvalidesc => '0',
      dl2_ulpsactivenot => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ULPSACTIVENOT,
      init_done => mipi_dphy_0_init_done,
      mmcm_lock_out => mmcm_lock_out,
      pll_lock_out => pll_lock_out,
      s_axi_aclk => s_axis_aclk,
      s_axi_araddr(6 downto 0) => axi_crossbar_0_M01_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => s_axis_aresetn,
      s_axi_arready => axi_crossbar_0_M01_AXI_ARREADY,
      s_axi_arvalid => axi_crossbar_0_M01_AXI_ARVALID,
      s_axi_awaddr(6 downto 0) => axi_crossbar_0_M01_AXI_AWADDR(6 downto 0),
      s_axi_awready => axi_crossbar_0_M01_AXI_AWREADY,
      s_axi_awvalid => axi_crossbar_0_M01_AXI_AWVALID,
      s_axi_bready => axi_crossbar_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_crossbar_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_crossbar_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_crossbar_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_crossbar_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_crossbar_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_crossbar_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_crossbar_0_M01_AXI_WDATA(63 downto 32),
      s_axi_wready => axi_crossbar_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_crossbar_0_M01_AXI_WSTRB(7 downto 4),
      s_axi_wvalid => axi_crossbar_0_M01_AXI_WVALID,
      system_rst_out => system_rst_out,
      txbyteclkhs => \^txbyteclkhs\,
      txclkesc_out => \^txclkesc_out\
    );
proc_sys_reset_0: component soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => s_axis_aresetn,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => proc_sys_reset_0_peripheral_reset,
      slowest_sync_clk => dphy_clk_200M
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_mipi_csi2_tx_subsyst_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    dphy_clk_200M : in STD_LOGIC;
    txbyteclkhs : out STD_LOGIC;
    clkoutphy_out : out STD_LOGIC;
    pll_lock_out : out STD_LOGIC;
    txclkesc_out : out STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    mmcm_lock_out : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    mipi_phy_if_clk_n : out STD_LOGIC;
    mipi_phy_if_clk_p : out STD_LOGIC;
    mipi_phy_if_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mipi_phy_if_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_mipi_csi2_tx_subsyst_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_mipi_csi2_tx_subsyst_0_0 : entity is "soc_mipi_csi2_tx_subsyst_0_0,bd_71ba,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_mipi_csi2_tx_subsyst_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of soc_mipi_csi2_tx_subsyst_0_0 : entity is "bd_71ba,Vivado 2019.2";
end soc_mipi_csi2_tx_subsyst_0_0;

architecture STRUCTURE of soc_mipi_csi2_tx_subsyst_0_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "soc_mipi_csi2_tx_subsyst_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clkoutphy_out : signal is "xilinx.com:signal:clock:1.0 CLK.clkoutphy_out CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clkoutphy_out : signal is "XIL_INTERFACENAME CLK.clkoutphy_out, FREQ_HZ 912000000.0, PHASE 0.000, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_clkoutphy_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dphy_clk_200M : signal is "xilinx.com:signal:clock:1.0 CLK.dphy_clk_200M CLK";
  attribute X_INTERFACE_PARAMETER of dphy_clk_200M : signal is "XIL_INTERFACENAME CLK.dphy_clk_200M, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk2, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTR.interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME CLK.s_axis_aclk, FREQ_HZ 150000000, PHASE 0.000, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, ASSOCIATED_BUSIF s_axi:s_axis, ASSOCIATED_RESET s_axis_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME RST.s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 6, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 96, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.000, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of txbyteclkhs : signal is "xilinx.com:signal:clock:1.0 CLK.txbyteclkhs CLK";
  attribute X_INTERFACE_PARAMETER of txbyteclkhs : signal is "XIL_INTERFACENAME CLK.txbyteclkhs, FREQ_HZ 114000000.0, PHASE 0, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_txbyteclkhs, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of txclkesc_out : signal is "xilinx.com:signal:clock:1.0 CLK.txclkesc_out CLK";
  attribute X_INTERFACE_PARAMETER of txclkesc_out : signal is "XIL_INTERFACENAME CLK.txclkesc_out, FREQ_HZ 10000000.0, PHASE 0, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_txclkesc_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 150000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
inst: entity work.soc_mipi_csi2_tx_subsyst_0_0_bd_71ba
     port map (
      clkoutphy_out => clkoutphy_out,
      dphy_clk_200M => dphy_clk_200M,
      interrupt => interrupt,
      mipi_phy_if_clk_n => mipi_phy_if_clk_n,
      mipi_phy_if_clk_p => mipi_phy_if_clk_p,
      mipi_phy_if_data_n(2 downto 0) => mipi_phy_if_data_n(2 downto 0),
      mipi_phy_if_data_p(2 downto 0) => mipi_phy_if_data_p(2 downto 0),
      mmcm_lock_out => mmcm_lock_out,
      pll_lock_out => pll_lock_out,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready(0) => s_axi_arready(0),
      s_axi_arvalid(0) => s_axi_arvalid(0),
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready(0) => s_axi_awready(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(47 downto 0) => s_axis_tdata(47 downto 0),
      s_axis_tdest(1 downto 0) => s_axis_tdest(1 downto 0),
      s_axis_tkeep(5 downto 0) => s_axis_tkeep(5 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(95 downto 0) => s_axis_tuser(95 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      system_rst_out => system_rst_out,
      txbyteclkhs => txbyteclkhs,
      txclkesc_out => txclkesc_out
    );
end STRUCTURE;
