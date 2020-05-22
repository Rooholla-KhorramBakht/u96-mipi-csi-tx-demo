//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_71ba.bd
//Design : bd_71ba
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_71ba,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_71ba,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "soc_mipi_csi2_tx_subsyst_0_0.hwdef" *) 
module bd_71ba
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

  wire [12:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire axi_crossbar_0_M00_AXI_ARREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [12:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire axi_crossbar_0_M00_AXI_AWREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire axi_crossbar_0_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire axi_crossbar_0_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_WDATA;
  wire axi_crossbar_0_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [25:13]axi_crossbar_0_M01_AXI_ARADDR;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [25:13]axi_crossbar_0_M01_AXI_AWADDR;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire dphy_clk_200M_1;
  wire [2:0]mipi_csi2_tx_ctrl_0_active_lanes_dphy;
  wire mipi_csi2_tx_ctrl_0_interrupt;
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
  wire mipi_dphy_0_clkoutphy_out;
  wire mipi_dphy_0_dl0_stopstate;
  wire mipi_dphy_0_init_done;
  wire mipi_dphy_0_mmcm_lock_out;
  wire mipi_dphy_0_pll_lock_out;
  wire mipi_dphy_0_system_rst_out;
  wire mipi_dphy_0_tx_mipi_phy_if_CLK_N;
  wire mipi_dphy_0_tx_mipi_phy_if_CLK_P;
  wire [2:0]mipi_dphy_0_tx_mipi_phy_if_DATA_N;
  wire [2:0]mipi_dphy_0_tx_mipi_phy_if_DATA_P;
  wire mipi_dphy_0_txbyteclkhs;
  wire mipi_dphy_0_txclkesc_out;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [12:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire [0:0]s_axi_1_ARREADY;
  wire [0:0]s_axi_1_ARVALID;
  wire [12:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire [0:0]s_axi_1_AWREADY;
  wire [0:0]s_axi_1_AWVALID;
  wire [0:0]s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire [0:0]s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire [0:0]s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire [0:0]s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire [0:0]s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire [0:0]s_axi_1_WVALID;
  wire [47:0]s_axis_1_TDATA;
  wire [1:0]s_axis_1_TDEST;
  wire [5:0]s_axis_1_TKEEP;
  wire s_axis_1_TLAST;
  wire s_axis_1_TREADY;
  wire [95:0]s_axis_1_TUSER;
  wire s_axis_1_TVALID;
  wire s_axis_aclk_1;
  wire s_axis_aresetn_1;

  assign clkoutphy_out = mipi_dphy_0_clkoutphy_out;
  assign dphy_clk_200M_1 = dphy_clk_200M;
  assign interrupt = mipi_csi2_tx_ctrl_0_interrupt;
  assign mipi_phy_if_clk_n = mipi_dphy_0_tx_mipi_phy_if_CLK_N;
  assign mipi_phy_if_clk_p = mipi_dphy_0_tx_mipi_phy_if_CLK_P;
  assign mipi_phy_if_data_n[2:0] = mipi_dphy_0_tx_mipi_phy_if_DATA_N;
  assign mipi_phy_if_data_p[2:0] = mipi_dphy_0_tx_mipi_phy_if_DATA_P;
  assign mmcm_lock_out = mipi_dphy_0_mmcm_lock_out;
  assign pll_lock_out = mipi_dphy_0_pll_lock_out;
  assign s_axi_1_ARADDR = s_axi_araddr[12:0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARVALID = s_axi_arvalid[0];
  assign s_axi_1_AWADDR = s_axi_awaddr[12:0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWVALID = s_axi_awvalid[0];
  assign s_axi_1_BREADY = s_axi_bready[0];
  assign s_axi_1_RREADY = s_axi_rready[0];
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid[0];
  assign s_axi_arready[0] = s_axi_1_ARREADY;
  assign s_axi_awready[0] = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid[0] = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid[0] = s_axi_1_RVALID;
  assign s_axi_wready[0] = s_axi_1_WREADY;
  assign s_axis_1_TDATA = s_axis_tdata[47:0];
  assign s_axis_1_TDEST = s_axis_tdest[1:0];
  assign s_axis_1_TKEEP = s_axis_tkeep[5:0];
  assign s_axis_1_TLAST = s_axis_tlast;
  assign s_axis_1_TUSER = s_axis_tuser[95:0];
  assign s_axis_1_TVALID = s_axis_tvalid;
  assign s_axis_aclk_1 = s_axis_aclk;
  assign s_axis_aresetn_1 = s_axis_aresetn;
  assign s_axis_tready = s_axis_1_TREADY;
  assign system_rst_out = mipi_dphy_0_system_rst_out;
  assign txbyteclkhs = mipi_dphy_0_txbyteclkhs;
  assign txclkesc_out = mipi_dphy_0_txclkesc_out;
  bd_71ba_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(s_axis_aclk_1),
        .aresetn(s_axis_aresetn_1),
        .m_axi_araddr({axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arready({axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
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
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
  bd_71ba_mipi_csi2_tx_ctrl_0_0 mipi_csi2_tx_ctrl_0
       (.active_lanes_dphy(mipi_csi2_tx_ctrl_0_active_lanes_dphy),
        .cl_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE),
        .cl_txclkactive(mipi_dphy_0_cl_txclkactivehs),
        .cl_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS),
        .cl_txulpsclk(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK),
        .cl_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT),
        .core_clk_in(dphy_clk_200M_1),
        .dl0_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE),
        .dl0_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE),
        .dl0_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS),
        .dl0_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS),
        .dl0_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC),
        .dl0_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS),
        .dl0_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC),
        .dl0_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT),
        .dl0_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT),
        .dl1_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ENABLE),
        .dl1_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_FORCETXSTOPMODE),
        .dl1_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXDATAHS),
        .dl1_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREADYHS),
        .dl1_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTESC),
        .dl1_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXREQUESTHS),
        .dl1_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSESC),
        .dl1_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXULPSEXIT),
        .dl1_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_ULPSACTIVENOT),
        .dl2_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ENABLE),
        .dl2_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_FORCETXSTOPMODE),
        .dl2_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXDATAHS),
        .dl2_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREADYHS),
        .dl2_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTESC),
        .dl2_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTHS),
        .dl2_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSESC),
        .dl2_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSEXIT),
        .dl2_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ULPSACTIVENOT),
        .dl_tx_stop_st(mipi_dphy_0_dl0_stopstate),
        .dphy_init_done(mipi_dphy_0_init_done),
        .interrupt(mipi_csi2_tx_ctrl_0_interrupt),
        .s_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR[7:0]),
        .s_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR[7:0]),
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
        .s_axis_aclk(s_axis_aclk_1),
        .s_axis_aresetn(s_axis_aresetn_1),
        .s_axis_tdata(s_axis_1_TDATA),
        .s_axis_tdest(s_axis_1_TDEST),
        .s_axis_tkeep(s_axis_1_TKEEP),
        .s_axis_tlast(s_axis_1_TLAST),
        .s_axis_tready(s_axis_1_TREADY),
        .s_axis_tuser(s_axis_1_TUSER),
        .s_axis_tvalid(s_axis_1_TVALID),
        .txbyteclkhs(mipi_dphy_0_txbyteclkhs),
        .txclkesc(mipi_dphy_0_txclkesc_out));
  bd_71ba_mipi_dphy_0_0 mipi_dphy_0
       (.active_lanes_in(mipi_csi2_tx_ctrl_0_active_lanes_dphy),
        .cl_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE),
        .cl_txclkactivehs(mipi_dphy_0_cl_txclkactivehs),
        .cl_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS),
        .cl_txulpsclk(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK),
        .cl_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT),
        .clk_txn(mipi_dphy_0_tx_mipi_phy_if_CLK_N),
        .clk_txp(mipi_dphy_0_tx_mipi_phy_if_CLK_P),
        .clkoutphy_out(mipi_dphy_0_clkoutphy_out),
        .core_clk(dphy_clk_200M_1),
        .core_rst(proc_sys_reset_0_peripheral_reset),
        .data_txn(mipi_dphy_0_tx_mipi_phy_if_DATA_N),
        .data_txp(mipi_dphy_0_tx_mipi_phy_if_DATA_P),
        .dl0_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE),
        .dl0_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE),
        .dl0_stopstate(mipi_dphy_0_dl0_stopstate),
        .dl0_txdataesc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dl0_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS),
        .dl0_txlpdtesc(1'b0),
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
        .dl1_txdataesc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dl1_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL1_TXDATAHS),
        .dl1_txlpdtesc(1'b0),
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
        .dl2_txdataesc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dl2_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXDATAHS),
        .dl2_txlpdtesc(1'b0),
        .dl2_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREADYHS),
        .dl2_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTESC),
        .dl2_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXREQUESTHS),
        .dl2_txtriggeresc({1'b0,1'b0,1'b0,1'b0}),
        .dl2_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSESC),
        .dl2_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_TXULPSEXIT),
        .dl2_txvalidesc(1'b0),
        .dl2_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL2_ULPSACTIVENOT),
        .init_done(mipi_dphy_0_init_done),
        .mmcm_lock_out(mipi_dphy_0_mmcm_lock_out),
        .pll_lock_out(mipi_dphy_0_pll_lock_out),
        .s_axi_aclk(s_axis_aclk_1),
        .s_axi_araddr(axi_crossbar_0_M01_AXI_ARADDR[19:13]),
        .s_axi_aresetn(s_axis_aresetn_1),
        .s_axi_arready(axi_crossbar_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M01_AXI_AWADDR[19:13]),
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
        .system_rst_out(mipi_dphy_0_system_rst_out),
        .txbyteclkhs(mipi_dphy_0_txbyteclkhs),
        .txclkesc_out(mipi_dphy_0_txclkesc_out));
  bd_71ba_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(s_axis_aresetn_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(dphy_clk_200M_1));
endmodule
