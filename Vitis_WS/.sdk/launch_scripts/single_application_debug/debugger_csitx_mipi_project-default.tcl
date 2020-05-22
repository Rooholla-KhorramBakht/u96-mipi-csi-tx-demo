connect -url tcp:127.0.0.1:3121
source /home/rouholla/myData/apps_install_path/xilinx/Vitis/2019.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*"}
reset_apu
targets -set -nocase -filter {name =~"RPU*"}
clear_rpu_reset
targets -set -filter {jtag_cable_name =~ "Platform Cable USB 000018639d1901" && level==0} -index 0
fpga -file /home/rouholla/myData/zynq_projects/Vitis_Projects/csitx_mipi_project/_ide/bitstream/soc_wrapper.bit -no-revision-check
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/rouholla/myData/zynq_projects/Vitis_Projects/mipi_csi_tx_test/export/mipi_csi_tx_test/hw/soc_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/rouholla/myData/zynq_projects/Vitis_Projects/mipi_csi_tx_test/export/mipi_csi_tx_test/sw/mipi_csi_tx_test/boot/fsbl.elf
set bp_44_25_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_44_25_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/rouholla/myData/zynq_projects/Vitis_Projects/csitx_mipi_project/Debug/csitx_mipi_project.elf
configparams force-mem-access 0
bpadd -addr &main
