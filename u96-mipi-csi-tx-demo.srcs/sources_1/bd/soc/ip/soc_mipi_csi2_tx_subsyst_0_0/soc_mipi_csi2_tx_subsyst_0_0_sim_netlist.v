// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
// Date        : Tue May 19 23:07:15 2020
// Host        : rouholla-DevStation running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top soc_mipi_csi2_tx_subsyst_0_0 -prefix
//               soc_mipi_csi2_tx_subsyst_0_0_ soc_mipi_csi2_tx_subsyst_0_0_sim_netlist.v
// Design      : soc_mipi_csi2_tx_subsyst_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "soc_mipi_csi2_tx_subsyst_0_0.hwdef" *) 
module soc_mipi_csi2_tx_subsyst_0_0_bd_71ba
   (clkoutphy_out,
    dphy_clk_200M,
    interrupt,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p,
    mmcm_lock_out,
    pll_lock_out,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axis_aclk,
    s_axis_aresetn,
    s_axis_tdata,
    s_axis_tdest,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tuser,
    s_axis_tvalid,
    system_rst_out,
    txbyteclkhs,
    txclkesc_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKOUTPHY_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKOUTPHY_OUT, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_clkoutphy_out, FREQ_HZ 912000000.0, INSERT_VIP 0, PHASE 0.000" *) output clkoutphy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DPHY_CLK_200M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DPHY_CLK_200M, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk2, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.000" *) input dphy_clk_200M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N" *) output mipi_phy_if_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P" *) output mipi_phy_if_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N" *) output [2:0]mipi_phy_if_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P" *) output [2:0]mipi_phy_if_data_p;
  output mmcm_lock_out;
  output pll_lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 13, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, DATA_WIDTH 32, FREQ_HZ 150000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [12:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output [0:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input [0:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [12:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output [0:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input [0:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input [0:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output [0:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input [0:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output [0:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output [0:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input [0:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK, ASSOCIATED_BUSIF s_axi:s_axis, ASSOCIATED_RESET s_axis_aresetn, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, FREQ_HZ 150000000, INSERT_VIP 0, PHASE 0.000" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 6, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 96" *) input [47:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [1:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [5:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [95:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  output system_rst_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TXBYTECLKHS CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TXBYTECLKHS, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_txbyteclkhs, FREQ_HZ 114000000.0, INSERT_VIP 0, PHASE 0" *) output txbyteclkhs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TXCLKESC_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TXCLKESC_OUT, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_txclkesc_out, FREQ_HZ 10000000.0, INSERT_VIP 0, PHASE 0" *) output txclkesc_out;

  wire [7:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire axi_crossbar_0_M00_AXI_ARREADY;
  wire axi_crossbar_0_M00_AXI_ARVALID;
  wire [7:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire axi_crossbar_0_M00_AXI_AWREADY;
  wire axi_crossbar_0_M00_AXI_AWVALID;
  wire axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire axi_crossbar_0_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_RDATA;
  wire axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire axi_crossbar_0_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_WDATA;
  wire axi_crossbar_0_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire axi_crossbar_0_M00_AXI_WVALID;
  wire [6:0]axi_crossbar_0_M01_AXI_ARADDR;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire axi_crossbar_0_M01_AXI_ARVALID;
  wire [6:0]axi_crossbar_0_M01_AXI_AWADDR;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire axi_crossbar_0_M01_AXI_AWVALID;
  wire axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire axi_crossbar_0_M01_AXI_WVALID;
  wire clkoutphy_out;
  wire dphy_clk_200M;
  wire interrupt;
  wire [2:0]mipi_csi2_tx_ctrl_0_active_lanes_dphy;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE;
  wire [7:0]mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ENABLE;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_FORCETXSTOPMODE;
  wire [7:0]mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXDATAHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREADYHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTESC;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSESC;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSEXIT;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ULPSACTIVENOT;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ENABLE;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_FORCETXSTOPMODE;
  wire [7:0]mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXDATAHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREADYHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTESC;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSESC;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSEXIT;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ULPSACTIVENOT;
  wire mipi_dphy_0_cl_txclkactivehs;
  wire mipi_dphy_0_dl0_stopstate;
  wire mipi_dphy_0_init_done;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [2:0]mipi_phy_if_data_n;
  wire [2:0]mipi_phy_if_data_p;
  wire mmcm_lock_out;
  wire pll_lock_out;
  wire proc_sys_reset_0_peripheral_reset;
  wire [12:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [0:0]s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [47:0]s_axis_tdata;
  wire [1:0]s_axis_tdest;
  wire [5:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [95:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire system_rst_out;
  wire txbyteclkhs;
  wire txclkesc_out;
  wire [25:8]NLW_axi_crossbar_0_m_axi_araddr_UNCONNECTED;
  wire [5:0]NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED;
  wire [25:8]NLW_axi_crossbar_0_m_axi_awaddr_UNCONNECTED;
  wire [5:0]NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED;
  wire NLW_mipi_csi2_tx_ctrl_0_dl0_txskewcalhs_UNCONNECTED;
  wire NLW_mipi_csi2_tx_ctrl_0_dl1_txskewcalhs_UNCONNECTED;
  wire NLW_mipi_csi2_tx_ctrl_0_dl2_txskewcalhs_UNCONNECTED;
  wire NLW_mipi_dphy_0_cl_stopstate_UNCONNECTED;
  wire NLW_mipi_dphy_0_cl_ulpsactivenot_UNCONNECTED;
  wire NLW_mipi_dphy_0_dl0_txreadyesc_UNCONNECTED;
  wire NLW_mipi_dphy_0_dl1_stopstate_UNCONNECTED;
  wire NLW_mipi_dphy_0_dl1_txreadyesc_UNCONNECTED;
  wire NLW_mipi_dphy_0_dl2_stopstate_UNCONNECTED;
  wire NLW_mipi_dphy_0_dl2_txreadyesc_UNCONNECTED;
  wire NLW_proc_sys_reset_0_mb_reset_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED;

  (* X_CORE_INFO = "axi_crossbar_v2_1_21_axi_crossbar,Vivado 2019.2" *) 
  soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(s_axis_aclk),
        .aresetn(s_axis_aresetn),
        .m_axi_araddr({NLW_axi_crossbar_0_m_axi_araddr_UNCONNECTED[25:20],axi_crossbar_0_M01_AXI_ARADDR,NLW_axi_crossbar_0_m_axi_araddr_UNCONNECTED[12:8],axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arprot(NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED[5:0]),
        .m_axi_arready({axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({NLW_axi_crossbar_0_m_axi_awaddr_UNCONNECTED[25:20],axi_crossbar_0_M01_AXI_AWADDR,NLW_axi_crossbar_0_m_axi_awaddr_UNCONNECTED[12:8],axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awprot(NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED[5:0]),
        .m_axi_awready({axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awvalid({axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rready({axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wready({axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_csi2_tx_ctrl_0_0 mipi_csi2_tx_ctrl_0
       (.active_lanes_dphy(mipi_csi2_tx_ctrl_0_active_lanes_dphy),
        .cl_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE),
        .cl_txclkactive(mipi_dphy_0_cl_txclkactivehs),
        .cl_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS),
        .cl_txulpsclk(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK),
        .cl_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT),
        .core_clk_in(dphy_clk_200M),
        .dl0_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE),
        .dl0_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE),
        .dl0_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS),
        .dl0_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS),
        .dl0_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC),
        .dl0_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS),
        .dl0_txskewcalhs(NLW_mipi_csi2_tx_ctrl_0_dl0_txskewcalhs_UNCONNECTED),
        .dl0_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC),
        .dl0_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT),
        .dl0_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT),
        .dl1_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ENABLE),
        .dl1_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_FORCETXSTOPMODE),
        .dl1_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXDATAHS),
        .dl1_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREADYHS),
        .dl1_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTESC),
        .dl1_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTHS),
        .dl1_txskewcalhs(NLW_mipi_csi2_tx_ctrl_0_dl1_txskewcalhs_UNCONNECTED),
        .dl1_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSESC),
        .dl1_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSEXIT),
        .dl1_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ULPSACTIVENOT),
        .dl2_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ENABLE),
        .dl2_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_FORCETXSTOPMODE),
        .dl2_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXDATAHS),
        .dl2_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREADYHS),
        .dl2_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTESC),
        .dl2_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTHS),
        .dl2_txskewcalhs(NLW_mipi_csi2_tx_ctrl_0_dl2_txskewcalhs_UNCONNECTED),
        .dl2_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSESC),
        .dl2_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSEXIT),
        .dl2_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ULPSACTIVENOT),
        .dl_tx_stop_st(mipi_dphy_0_dl0_stopstate),
        .dphy_init_done(mipi_dphy_0_init_done),
        .interrupt(interrupt),
        .s_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR),
        .s_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR),
        .s_axi_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M00_AXI_WVALID),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .txbyteclkhs(txbyteclkhs),
        .txclkesc(txclkesc_out));
  soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_dphy_0_0 mipi_dphy_0
       (.active_lanes_in(mipi_csi2_tx_ctrl_0_active_lanes_dphy),
        .cl_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE),
        .cl_stopstate(NLW_mipi_dphy_0_cl_stopstate_UNCONNECTED),
        .cl_txclkactivehs(mipi_dphy_0_cl_txclkactivehs),
        .cl_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS),
        .cl_txulpsclk(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK),
        .cl_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT),
        .cl_ulpsactivenot(NLW_mipi_dphy_0_cl_ulpsactivenot_UNCONNECTED),
        .clk_txn(mipi_phy_if_clk_n),
        .clk_txp(mipi_phy_if_clk_p),
        .clkoutphy_out(clkoutphy_out),
        .core_clk(dphy_clk_200M),
        .core_rst(proc_sys_reset_0_peripheral_reset),
        .data_txn(mipi_phy_if_data_n),
        .data_txp(mipi_phy_if_data_p),
        .dl0_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE),
        .dl0_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE),
        .dl0_stopstate(mipi_dphy_0_dl0_stopstate),
        .dl0_txdataesc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dl0_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS),
        .dl0_txlpdtesc(1'b0),
        .dl0_txreadyesc(NLW_mipi_dphy_0_dl0_txreadyesc_UNCONNECTED),
        .dl0_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS),
        .dl0_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC),
        .dl0_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS),
        .dl0_txtriggeresc({1'b0,1'b0,1'b0,1'b0}),
        .dl0_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC),
        .dl0_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT),
        .dl0_txvalidesc(1'b0),
        .dl0_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT),
        .dl1_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ENABLE),
        .dl1_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_FORCETXSTOPMODE),
        .dl1_stopstate(NLW_mipi_dphy_0_dl1_stopstate_UNCONNECTED),
        .dl1_txdataesc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dl1_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXDATAHS),
        .dl1_txlpdtesc(1'b0),
        .dl1_txreadyesc(NLW_mipi_dphy_0_dl1_txreadyesc_UNCONNECTED),
        .dl1_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREADYHS),
        .dl1_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTESC),
        .dl1_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTHS),
        .dl1_txtriggeresc({1'b0,1'b0,1'b0,1'b0}),
        .dl1_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSESC),
        .dl1_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSEXIT),
        .dl1_txvalidesc(1'b0),
        .dl1_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ULPSACTIVENOT),
        .dl2_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ENABLE),
        .dl2_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_FORCETXSTOPMODE),
        .dl2_stopstate(NLW_mipi_dphy_0_dl2_stopstate_UNCONNECTED),
        .dl2_txdataesc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dl2_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXDATAHS),
        .dl2_txlpdtesc(1'b0),
        .dl2_txreadyesc(NLW_mipi_dphy_0_dl2_txreadyesc_UNCONNECTED),
        .dl2_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREADYHS),
        .dl2_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTESC),
        .dl2_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTHS),
        .dl2_txtriggeresc({1'b0,1'b0,1'b0,1'b0}),
        .dl2_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSESC),
        .dl2_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSEXIT),
        .dl2_txvalidesc(1'b0),
        .dl2_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ULPSACTIVENOT),
        .init_done(mipi_dphy_0_init_done),
        .mmcm_lock_out(mmcm_lock_out),
        .pll_lock_out(pll_lock_out),
        .s_axi_aclk(s_axis_aclk),
        .s_axi_araddr(axi_crossbar_0_M01_AXI_ARADDR),
        .s_axi_aresetn(s_axis_aresetn),
        .s_axi_arready(axi_crossbar_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M01_AXI_AWADDR),
        .s_axi_awready(axi_crossbar_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M01_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M01_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M01_AXI_WVALID),
        .system_rst_out(system_rst_out),
        .txbyteclkhs(txbyteclkhs),
        .txclkesc_out(txclkesc_out));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2019.2" *) 
  soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(s_axis_aresetn),
        .interconnect_aresetn(NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_proc_sys_reset_0_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(dphy_clk_200M));
endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_21_axi_crossbar,Vivado 2019.2" *) 
module soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_axi_crossbar_0_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [12:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [12:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [25:0]m_axi_awaddr;
  output [5:0]m_axi_awprot;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [25:0]m_axi_araddr;
  output [5:0]m_axi_arprot;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;


endmodule

module soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_csi2_tx_ctrl_0_0
   (s_axis_aclk,
    s_axis_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    cl_txclkactive,
    dphy_init_done,
    dl_tx_stop_st,
    s_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tdest,
    s_axis_tuser,
    txbyteclkhs,
    txclkesc,
    core_clk_in,
    cl_enable,
    cl_txrequesths,
    cl_txulpsclk,
    cl_txulpsexit,
    dl0_txdatahs,
    dl0_txrequesths,
    dl0_forcetxstopmode,
    dl0_enable,
    dl0_txskewcalhs,
    dl0_txreadyhs,
    dl0_txulpsesc,
    dl0_txrequestesc,
    dl0_txulpsexit,
    dl0_ulpsactivenot,
    dl1_txdatahs,
    dl1_txrequesths,
    dl1_txreadyhs,
    dl1_forcetxstopmode,
    dl1_enable,
    dl1_txulpsesc,
    dl1_txrequestesc,
    dl1_txulpsexit,
    dl1_ulpsactivenot,
    dl1_txskewcalhs,
    dl2_txdatahs,
    dl2_txrequesths,
    dl2_txreadyhs,
    dl2_forcetxstopmode,
    dl2_enable,
    dl2_txulpsesc,
    dl2_txrequestesc,
    dl2_txulpsexit,
    dl2_ulpsactivenot,
    dl2_txskewcalhs,
    active_lanes_dphy,
    interrupt);
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

module soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_mipi_dphy_0_0
   (core_clk,
    core_rst,
    txclkesc_out,
    txbyteclkhs,
    clkoutphy_out,
    pll_lock_out,
    mmcm_lock_out,
    system_rst_out,
    init_done,
    cl_txclkactivehs,
    cl_txrequesths,
    cl_stopstate,
    cl_enable,
    cl_txulpsclk,
    cl_txulpsexit,
    cl_ulpsactivenot,
    dl0_txdatahs,
    dl0_txrequesths,
    dl0_txreadyhs,
    dl0_forcetxstopmode,
    dl0_stopstate,
    dl0_enable,
    dl0_txrequestesc,
    dl0_txlpdtesc,
    dl0_txulpsexit,
    dl0_ulpsactivenot,
    dl0_txulpsesc,
    dl0_txtriggeresc,
    dl0_txdataesc,
    dl0_txvalidesc,
    dl0_txreadyesc,
    dl1_txdatahs,
    dl1_txrequesths,
    dl1_txreadyhs,
    dl1_forcetxstopmode,
    dl1_stopstate,
    dl1_enable,
    dl1_txrequestesc,
    dl1_txlpdtesc,
    dl1_txulpsexit,
    dl1_ulpsactivenot,
    dl1_txulpsesc,
    dl1_txtriggeresc,
    dl1_txdataesc,
    dl1_txvalidesc,
    dl1_txreadyesc,
    dl2_txdatahs,
    dl2_txrequesths,
    dl2_txreadyhs,
    dl2_forcetxstopmode,
    dl2_stopstate,
    dl2_enable,
    dl2_txrequestesc,
    dl2_txlpdtesc,
    dl2_txulpsexit,
    dl2_ulpsactivenot,
    dl2_txulpsesc,
    dl2_txtriggeresc,
    dl2_txdataesc,
    dl2_txvalidesc,
    dl2_txreadyesc,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_wvalid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_bvalid,
    active_lanes_in,
    clk_txp,
    clk_txn,
    data_txp,
    data_txn);
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

(* X_CORE_INFO = "proc_sys_reset,Vivado 2019.2" *) 
module soc_mipi_csi2_tx_subsyst_0_0_bd_71ba_proc_sys_reset_0_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* CHECK_LICENSE_TYPE = "soc_mipi_csi2_tx_subsyst_0_0,bd_71ba,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_71ba,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module soc_mipi_csi2_tx_subsyst_0_0
   (s_axis_aclk,
    s_axis_aresetn,
    dphy_clk_200M,
    txbyteclkhs,
    clkoutphy_out,
    pll_lock_out,
    txclkesc_out,
    system_rst_out,
    mmcm_lock_out,
    interrupt,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axis_tdata,
    s_axis_tdest,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tuser,
    s_axis_tvalid,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_aclk, FREQ_HZ 150000000, PHASE 0.000, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, ASSOCIATED_BUSIF s_axi:s_axis, ASSOCIATED_RESET s_axis_aresetn, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dphy_clk_200M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.dphy_clk_200M, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk2, INSERT_VIP 0" *) input dphy_clk_200M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txbyteclkhs CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.txbyteclkhs, FREQ_HZ 114000000.0, PHASE 0, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_txbyteclkhs, INSERT_VIP 0" *) output txbyteclkhs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clkoutphy_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clkoutphy_out, FREQ_HZ 912000000.0, PHASE 0.000, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_clkoutphy_out, INSERT_VIP 0" *) output clkoutphy_out;
  output pll_lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txclkesc_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.txclkesc_out, FREQ_HZ 10000000.0, PHASE 0, CLK_DOMAIN bd_71ba_mipi_dphy_0_0_txclkesc_out, INSERT_VIP 0" *) output txclkesc_out;
  output system_rst_out;
  output mmcm_lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [12:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input [0:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output [0:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input [0:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output [0:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output [0:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input [0:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [12:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input [0:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output [0:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output [0:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 150000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [47:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [1:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [5:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [95:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 6, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 96, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.000, CLK_DOMAIN soc_zynq_ultra_ps_e_1_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N" *) output mipi_phy_if_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P" *) output mipi_phy_if_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N" *) output [2:0]mipi_phy_if_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P" *) output [2:0]mipi_phy_if_data_p;

  wire clkoutphy_out;
  wire dphy_clk_200M;
  wire interrupt;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [2:0]mipi_phy_if_data_n;
  wire [2:0]mipi_phy_if_data_p;
  wire mmcm_lock_out;
  wire pll_lock_out;
  wire [12:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [0:0]s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [47:0]s_axis_tdata;
  wire [1:0]s_axis_tdest;
  wire [5:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [95:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire system_rst_out;
  wire txbyteclkhs;
  wire txclkesc_out;

  (* HW_HANDOFF = "soc_mipi_csi2_tx_subsyst_0_0.hwdef" *) 
  soc_mipi_csi2_tx_subsyst_0_0_bd_71ba inst
       (.clkoutphy_out(clkoutphy_out),
        .dphy_clk_200M(dphy_clk_200M),
        .interrupt(interrupt),
        .mipi_phy_if_clk_n(mipi_phy_if_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_data_p),
        .mmcm_lock_out(mmcm_lock_out),
        .pll_lock_out(pll_lock_out),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .system_rst_out(system_rst_out),
        .txbyteclkhs(txbyteclkhs),
        .txclkesc_out(txclkesc_out));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
