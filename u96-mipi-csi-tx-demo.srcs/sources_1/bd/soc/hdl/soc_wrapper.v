//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
//Date        : Wed May 20 01:34:34 2020
//Host        : rouholla-DevStation running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target soc_wrapper.bd
//Design      : soc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_wrapper
   (mipi_phy_if_0_clk_n,
    mipi_phy_if_0_clk_p,
    mipi_phy_if_0_data_n,
    mipi_phy_if_0_data_p);
  output mipi_phy_if_0_clk_n;
  output mipi_phy_if_0_clk_p;
  output [2:0]mipi_phy_if_0_data_n;
  output [2:0]mipi_phy_if_0_data_p;

  wire mipi_phy_if_0_clk_n;
  wire mipi_phy_if_0_clk_p;
  wire [2:0]mipi_phy_if_0_data_n;
  wire [2:0]mipi_phy_if_0_data_p;

  soc soc_i
       (.mipi_phy_if_0_clk_n(mipi_phy_if_0_clk_n),
        .mipi_phy_if_0_clk_p(mipi_phy_if_0_clk_p),
        .mipi_phy_if_0_data_n(mipi_phy_if_0_data_n),
        .mipi_phy_if_0_data_p(mipi_phy_if_0_data_p));
endmodule
