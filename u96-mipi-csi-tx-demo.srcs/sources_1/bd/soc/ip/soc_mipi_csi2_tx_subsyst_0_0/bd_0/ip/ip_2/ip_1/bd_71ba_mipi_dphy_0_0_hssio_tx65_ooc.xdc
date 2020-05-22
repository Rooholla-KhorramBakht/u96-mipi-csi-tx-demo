#############################################################
# Clock Period Constraints                                 
#############################################################
create_clock -period 8.772 [get_ports  clk]
create_clock -period 5.000 [get_ports  riu_clk]
