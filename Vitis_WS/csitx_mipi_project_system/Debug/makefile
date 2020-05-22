#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = /home/rouholla/myData/zynq_projects/Vitis_Projects/mipi_csi_tx_test/export/mipi_csi_tx_test/mipi_csi_tx_test.xpfm
SYS_CONFIG = mipi_csi_tx_test
DOMAINS = standalone_domain
BIF_PATH = /home/rouholla/myData/zynq_projects/Vitis_Projects/csitx_mipi_project_system/Debug/system.bif

BITSTREAM_PATH = /home/rouholla/myData/zynq_projects/Vitis_Projects/csitx_mipi_project/_ide/bitstream/soc_wrapper.bit
SD_FILES = --elf /home/rouholla/myData/zynq_projects/Vitis_Projects/csitx_mipi_project/Debug/csitx_mipi_project.elf,psu_cortexa53_0

GENERATE_BIF_XSCT_CMD = ${GENERATE_BIF} -xpfm ${XPFM_PATH} -domains ${DOMAINS} -bifpath ${BIF_PATH}

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	-@echo Executing command \'${GENERATE_BIF_XSCT_CMD}\' on XSCT
	-@echo "connect -u TCP:localhost:42681; tcf send_command $$::xsdb::curchan xsdb eval s es [list \"${GENERATE_BIF_XSCT_CMD}\"]" | xsct
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


