-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Fri Dec 13 18:12:52 2019
-- Host        : rouholla-DevStation running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rouholla/myData/zynq_projects/Vitis_Projects/ultra96_platform/ultra96_platform.srcs/sources_1/bd/soc/ip/soc_zynq_ultra_ps_e_0_0/soc_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : soc_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity soc_zynq_ultra_ps_e_0_0 is
  Port ( 
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );

end soc_zynq_ultra_ps_e_0_0;

architecture stub of soc_zynq_ultra_ps_e_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pl_ps_irq0[0:0],pl_resetn0,pl_clk0";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v3_3_1_zynq_ultra_ps_e,Vivado 2019.2";
begin
end;
