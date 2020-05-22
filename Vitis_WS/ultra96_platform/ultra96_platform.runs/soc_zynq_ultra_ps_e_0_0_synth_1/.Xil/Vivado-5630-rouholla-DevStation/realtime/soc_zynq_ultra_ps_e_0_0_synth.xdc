set_property SRC_FILE_INFO {cfile:/home/rouholla/myData/zynq_projects/Vitis_Projects/ultra96_platform/ultra96_platform.srcs/sources_1/bd/soc/ip/soc_zynq_ultra_ps_e_0_0/soc_zynq_ultra_ps_e_0_0.xdc rfile:../../../../../ultra96_platform.srcs/sources_1/bd/soc/ip/soc_zynq_ultra_ps_e_0_0/soc_zynq_ultra_ps_e_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/rouholla/myData/zynq_projects/Vitis_Projects/ultra96_platform/ultra96_platform.runs/soc_zynq_ultra_ps_e_0_0_synth_1/dont_touch.xdc rfile:../../../dont_touch.xdc id:2} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name clk_pl_0 [get_pins {PS8_i/PLCLK[0]}]
set_property src_info {type:SCOPED_XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH true [get_cells PS8_i]
current_instance
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH true [get_cells inst]
