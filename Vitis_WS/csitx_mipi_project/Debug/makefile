################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
csitx_mipi_project.elf.size \


# All Target
all: csitx_mipi_project.elf secondary-outputs

# Tool invocations
csitx_mipi_project.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v8 gcc linker'
	aarch64-none-elf-gcc -Wl,-T -Wl,../src/lscript.ld -L/home/rouholla/myData/zynq_projects/Vitis_Projects/mipi_csi_tx_test/export/mipi_csi_tx_test/sw/mipi_csi_tx_test/standalone_domain/bsplib/lib -o "csitx_mipi_project.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

csitx_mipi_project.elf.size: csitx_mipi_project.elf
	@echo 'Invoking: ARM v8 Print Size'
	aarch64-none-elf-size csitx_mipi_project.elf  |tee "csitx_mipi_project.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) csitx_mipi_project.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents

-include ../makefile.targets
