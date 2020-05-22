
################################################################
# This is a generated script based on design: bd_71ba
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_71ba_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu3eg-sbva484-1-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_71ba

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set mipi_phy_if [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mipi_phy_rtl:1.0 mipi_phy_if ]

  set s_axi [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {13} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.PROTOCOL {AXI4LITE} \
   ] $s_axi

  set s_axis [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis ]


  # Create ports
  set clkoutphy_out [ create_bd_port -dir O -type clk clkoutphy_out ]
  set dphy_clk_200M [ create_bd_port -dir I -type clk dphy_clk_200M ]
  set interrupt [ create_bd_port -dir O -type intr interrupt ]
  set mmcm_lock_out [ create_bd_port -dir O mmcm_lock_out ]
  set pll_lock_out [ create_bd_port -dir O pll_lock_out ]
  set s_axis_aclk [ create_bd_port -dir I -type clk s_axis_aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {s_axi:s_axis} \
   CONFIG.ASSOCIATED_RESET {s_axis_aresetn} \
 ] $s_axis_aclk
  set s_axis_aresetn [ create_bd_port -dir I -type rst s_axis_aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $s_axis_aresetn
  set system_rst_out [ create_bd_port -dir O system_rst_out ]
  set txbyteclkhs [ create_bd_port -dir O -type clk txbyteclkhs ]
  set txclkesc_out [ create_bd_port -dir O -type clk txclkesc_out ]

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {13} \
   CONFIG.CONNECTIVITY_MODE {SASD} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.M00_A00_ADDR_WIDTH {12} \
   CONFIG.M00_A00_BASE_ADDR {0x0000000000000000} \
   CONFIG.M01_A00_ADDR_WIDTH {12} \
   CONFIG.M01_A00_BASE_ADDR {0x0000000000001000} \
   CONFIG.NUM_MI {2} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.R_REGISTER {1} \
   CONFIG.S00_SINGLE_THREAD {1} \
 ] $axi_crossbar_0

  # Create instance: mipi_csi2_tx_ctrl_0, and set properties
  set mipi_csi2_tx_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mipi_csi2_tx_ctrl:1.0 mipi_csi2_tx_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.C_CSI_CLK_PRE {1} \
   CONFIG.C_CSI_CRC_ENABLE {true} \
   CONFIG.C_CSI_DATATYPE {RAW8} \
   CONFIG.C_CSI_EN_ACTIVELANES {true} \
   CONFIG.C_CSI_INIT_DESKEW_PATRN_LEN {4096} \
   CONFIG.C_CSI_LANES {3} \
   CONFIG.C_CSI_LINE_BUFR_DEPTH {2048} \
   CONFIG.C_CSI_PERIODIC_CNTR_WIDTH {32} \
   CONFIG.C_CSI_PERIODIC_PATRN_LEN {4096} \
   CONFIG.C_CSI_PERIODIC_TIME {50} \
   CONFIG.C_CSI_PIXEL_MODE {1} \
   CONFIG.C_CSI_VID_INTERFACE {AXI4S} \
   CONFIG.C_CSI_XMIT_ALT_DESKEW {false} \
   CONFIG.C_CSI_XMIT_INIT_DESKEW {false} \
   CONFIG.C_CSI_XMIT_PERIODIC_DESKEW {false} \
   CONFIG.C_EN_REG_BASED_FE_GEN {false} \
 ] $mipi_csi2_tx_ctrl_0

  # Create instance: mipi_dphy_0, and set properties
  set mipi_dphy_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mipi_dphy:4.1 mipi_dphy_0 ]
  set_property -dict [ list \
   CONFIG.CLK_LANE_IO_LOC {T3} \
   CONFIG.C_CLK_IO_SWAP {false} \
   CONFIG.C_DL0_IO_SWAP {false} \
   CONFIG.C_DL1_IO_SWAP {false} \
   CONFIG.C_DL2_IO_SWAP {false} \
   CONFIG.C_DL3_IO_SWAP {false} \
   CONFIG.C_DPHY_LANES {3} \
   CONFIG.C_DPHY_MODE {MASTER} \
   CONFIG.C_EN_ACT_LANES {true} \
   CONFIG.C_EN_DEBUG_REGS {false} \
   CONFIG.C_EN_HS_OBUFTDS {false} \
   CONFIG.C_EN_REG_IF {true} \
   CONFIG.C_ESC_CLK_PERIOD {10.00} \
   CONFIG.C_HS_LINE_RATE {912} \
   CONFIG.C_SKEWCAL_FIRST_TIME {4096} \
   CONFIG.C_STRETCH_LINE_RATE {2500} \
   CONFIG.C_XMIT_ALT_DESKEW_SEQ {false} \
   CONFIG.C_XMIT_FIRST_DESKEW_SEQ {false} \
   CONFIG.C_XMIT_PERIODIC_DESKEW_SEQ {false} \
   CONFIG.DATA_LANE0_IO_LOC {P3} \
   CONFIG.DATA_LANE1_IO_LOC {U2} \
   CONFIG.DATA_LANE2_IO_LOC {R4} \
   CONFIG.HP_IO_BANK_SELECTION {65} \
   CONFIG.SupportLevel {1} \
 ] $mipi_dphy_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_crossbar_0/M00_AXI] [get_bd_intf_pins mipi_csi2_tx_ctrl_0/s_axi]
  connect_bd_intf_net -intf_net axi_crossbar_0_M01_AXI [get_bd_intf_pins axi_crossbar_0/M01_AXI] [get_bd_intf_pins mipi_dphy_0/s_axi]
  connect_bd_intf_net -intf_net mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if [get_bd_intf_pins mipi_csi2_tx_ctrl_0/tx_mipi_ppi_if] [get_bd_intf_pins mipi_dphy_0/tx_mipi_ppi_if]
  connect_bd_intf_net -intf_net mipi_dphy_0_tx_mipi_phy_if [get_bd_intf_ports mipi_phy_if] [get_bd_intf_pins mipi_dphy_0/tx_mipi_phy_if]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_ports s_axi] [get_bd_intf_pins axi_crossbar_0/S00_AXI]
  connect_bd_intf_net -intf_net s_axis_1 [get_bd_intf_ports s_axis] [get_bd_intf_pins mipi_csi2_tx_ctrl_0/s_axis]

  # Create port connections
  connect_bd_net -net dphy_clk_200M_1 [get_bd_ports dphy_clk_200M] [get_bd_pins mipi_csi2_tx_ctrl_0/core_clk_in] [get_bd_pins mipi_dphy_0/core_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net mipi_csi2_tx_ctrl_0_active_lanes_dphy [get_bd_pins mipi_csi2_tx_ctrl_0/active_lanes_dphy] [get_bd_pins mipi_dphy_0/active_lanes_in]
  connect_bd_net -net mipi_csi2_tx_ctrl_0_interrupt [get_bd_ports interrupt] [get_bd_pins mipi_csi2_tx_ctrl_0/interrupt]
  connect_bd_net -net mipi_dphy_0_cl_txclkactivehs [get_bd_pins mipi_csi2_tx_ctrl_0/cl_txclkactive] [get_bd_pins mipi_dphy_0/cl_txclkactivehs]
  connect_bd_net -net mipi_dphy_0_clkoutphy_out [get_bd_ports clkoutphy_out] [get_bd_pins mipi_dphy_0/clkoutphy_out]
  connect_bd_net -net mipi_dphy_0_dl0_stopstate [get_bd_pins mipi_csi2_tx_ctrl_0/dl_tx_stop_st] [get_bd_pins mipi_dphy_0/dl0_stopstate]
  connect_bd_net -net mipi_dphy_0_init_done [get_bd_pins mipi_csi2_tx_ctrl_0/dphy_init_done] [get_bd_pins mipi_dphy_0/init_done]
  connect_bd_net -net mipi_dphy_0_mmcm_lock_out [get_bd_ports mmcm_lock_out] [get_bd_pins mipi_dphy_0/mmcm_lock_out]
  connect_bd_net -net mipi_dphy_0_pll_lock_out [get_bd_ports pll_lock_out] [get_bd_pins mipi_dphy_0/pll_lock_out]
  connect_bd_net -net mipi_dphy_0_system_rst_out [get_bd_ports system_rst_out] [get_bd_pins mipi_dphy_0/system_rst_out]
  connect_bd_net -net mipi_dphy_0_txbyteclkhs [get_bd_ports txbyteclkhs] [get_bd_pins mipi_csi2_tx_ctrl_0/txbyteclkhs] [get_bd_pins mipi_dphy_0/txbyteclkhs]
  connect_bd_net -net mipi_dphy_0_txclkesc_out [get_bd_ports txclkesc_out] [get_bd_pins mipi_csi2_tx_ctrl_0/txclkesc] [get_bd_pins mipi_dphy_0/txclkesc_out]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins mipi_dphy_0/core_rst] [get_bd_pins proc_sys_reset_0/peripheral_reset]
  connect_bd_net -net s_axis_aclk_1 [get_bd_ports s_axis_aclk] [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins mipi_csi2_tx_ctrl_0/s_axis_aclk] [get_bd_pins mipi_dphy_0/s_axi_aclk]
  connect_bd_net -net s_axis_aresetn_1 [get_bd_ports s_axis_aresetn] [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins mipi_csi2_tx_ctrl_0/s_axis_aresetn] [get_bd_pins mipi_dphy_0/s_axi_aresetn] [get_bd_pins proc_sys_reset_0/ext_reset_in]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi] [get_bd_addr_segs mipi_csi2_tx_ctrl_0/s_axi/reg0] -force
  assign_bd_address -offset 0x00001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi] [get_bd_addr_segs mipi_dphy_0/s_axi/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


