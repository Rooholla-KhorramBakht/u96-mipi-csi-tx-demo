create_clock -period 10.000 [get_ports -no_traverse pl_clk0]
set_property -quiet IS_IP_OOC_CELL TRUE [get_cells -of [get_ports -no_traverse -quiet pl_clk0]]
