create_clock -period 10.000 [get_ports clk_in1]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 0.000 0.000} [get_ports -no_traverse clk_out1]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -2.500 -5.000} [get_ports -no_traverse clk_out2]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -3.333 -6.667} [get_ports -no_traverse clk_out3]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -3.750 -7.500} [get_ports -no_traverse clk_out4]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -4.167 -8.333} [get_ports -no_traverse clk_out5]
set_property -quiet IO_BUFFER_TYPE NONE [get_ports -quiet clk_in1]
set_property -quiet CLOCK_BUFFER_TYPE NONE [get_ports -quiet clk_in1]
set_property -quiet IS_IP_OOC_CELL TRUE [get_cells -of [get_ports -no_traverse -quiet clk_in1]]