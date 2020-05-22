//-----------------------------------------------------------------------------
// (c) Copyright 2014 - 2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   : bd_71ba_mipi_csi2_tx_ctrl_0_0.ttcl
// Description: MIPI CSI2 TX Controller top module.
//---------------------------------------------------------------------------
`timescale 1ps/1ps
`include "mipi_csi2_tx_ctrl_v1_0_4_defines.v"
(* DowngradeIPIdentifiedWarnings="yes" *)

module bd_71ba_mipi_csi2_tx_ctrl_0_0_core
#(
  parameter C_S_AXI_ADDR_WIDTH        = 7                       ,
  parameter C_S_AXI_DATA_WIDTH        = 32                      ,
  parameter C_AXIS_TDATA_WIDTH        = 48 ,
  parameter C_AXIS_TUSER_WIDTH        = 96 ,
  parameter C_CSI_LANES               = 3 ,
  parameter C_CSI_DATATYPE            = 'h2A ,        
  parameter C_CSI_LINE_BUFR_DEPTH     = 2048 ,      
  parameter C_CSI_CLK_PRE             = 1 ,      
  parameter C_CSI_PIXEL_MODE          = 1 ,   
  parameter C_CSI_EN_ACTIVELANES      = 1 ,   
  parameter C_EN_REG_BASED_FE_GEN      = 0 ,   
  parameter C_CSI_CRC_ENABLE          = 1 ,   
  parameter C_CSI_VID_INTERFACE       = 0 ,   
  parameter C_CSI_XMIT_INIT_DESKEW        = 0    ,
  parameter C_CSI_XMIT_ALT_DESKEW        = 0    ,
  parameter C_CSI_XMIT_PERIODIC_DESKEW        = 0    ,
  parameter C_CSI_PERIODIC_CNTR_WIDTH         = 32    ,
  parameter C_CSI_PERIODIC_TIME               = 50    ,
  parameter C_CSI_INIT_DESKEW_PATRN_LEN       = 4096    ,
  parameter C_CSI_PERIODIC_PATRN_LEN          = 4096    
) (
// system
 input            s_axis_aclk                     ,
 input            s_axis_aresetn                  ,
//Slave Interface
 input  [7 :0]    s_axi_awaddr                    ,
 input            s_axi_awvalid                   ,
 output           s_axi_awready                   ,
 input  [31:0]    s_axi_wdata                     ,
 input  [3:0]     s_axi_wstrb                     ,
 input            s_axi_wvalid                    ,
 output           s_axi_wready                    ,
 output [1:0]     s_axi_bresp                     ,
 output           s_axi_bvalid                    ,
 input            s_axi_bready                    ,
 input  [7 :0]    s_axi_araddr                    ,
 input            s_axi_arvalid                   ,
 output           s_axi_arready                   ,
 output [31:0]    s_axi_rdata                     ,
 output [1:0]     s_axi_rresp                     ,
 output           s_axi_rvalid                    ,
 input            s_axi_rready                    ,
 input            cl_txclkactive                  ,
 input            dphy_init_done                  ,
 input            dl_tx_stop_st                  ,


 //AXIS Interface
 output                             s_axis_tready ,
 input                              s_axis_tvalid ,
 input                              s_axis_tlast  ,
 input [C_AXIS_TDATA_WIDTH-1:0]     s_axis_tdata  ,
 input [(C_AXIS_TDATA_WIDTH/8)-1:0] s_axis_tkeep  ,
 input [1:0]                        s_axis_tdest  ,
 input [C_AXIS_TUSER_WIDTH-1:0]     s_axis_tuser  ,
 

 //PPI Interface
 input           txbyteclkhs                      ,
 input           txclkesc                         ,
 input           core_clk_in                      ,
 output          cl_enable                        ,
 output          cl_txrequesths                   ,
 output          cl_txulpsclk                     ,
 output          cl_txulpsexit                    ,
 output    [7:0] dl0_txdatahs                     ,
 output          dl0_txrequesths                  ,
 output          dl0_forcetxstopmode              ,
 output          dl0_enable                       ,
 output          dl0_txskewcalhs                  ,
 input           dl0_txreadyhs                    ,
 output          dl0_txulpsesc                    ,  
 output          dl0_txrequestesc                 ,  
 output          dl0_txulpsexit                   ,  
 input           dl0_ulpsactivenot                ,
 

 output    [7:0] dl1_txdatahs                     ,
 output          dl1_txrequesths                  ,
 input           dl1_txreadyhs                    ,
 output          dl1_forcetxstopmode              ,
 output          dl1_enable                       ,
 output          dl1_txulpsesc                    ,  
 output          dl1_txrequestesc                 ,  
 output          dl1_txulpsexit                   ,  
 input           dl1_ulpsactivenot                ,
 output          dl1_txskewcalhs                  ,
 
 output    [7:0] dl2_txdatahs                     ,
 output          dl2_txrequesths                  ,
 input           dl2_txreadyhs                    ,
 output          dl2_forcetxstopmode              ,
 output          dl2_enable                       ,
 output          dl2_txulpsesc                    ,  
 output          dl2_txrequestesc                 ,  
 output          dl2_txulpsexit                   ,  
 input           dl2_ulpsactivenot                ,
 output          dl2_txskewcalhs                  ,

 
 output [C_CSI_LANES-1:0]     active_lanes_dphy               ,
 //Interrupt 
 output          interrupt         
);



parameter LBUF_WIDTH = ((24*C_CSI_PIXEL_MODE) +2);
/*----------------------------------------------------------
  Internal Nets/ Register's Declaration
----------------------------------------------------------*/

wire        lbuf_wren          ;
wire [LBUF_WIDTH-1:0] lbuf_wrdata        ;
wire        lbuf_rden          ;
wire [LBUF_WIDTH-1:0] lbuf_rddata        ;
wire        lbuf_empty         ;
wire        lbuf_full          ;
wire        lbuf_proj_full     ;
wire        afifo_wren         ;
wire [33:0] afifo_wrdata       ;
wire        afifo_rden         ;
wire [33:0] afifo_rddata       ;
wire        afifo_empty        ;
wire        afifo_full         ;
wire        afifo_almost_full  ;
wire        ppi_clk_rst_n      ; //s_axis_aresetn sync'd to txbyteclkhs
wire        txesc_clk_rst_n    ; // w.r.t Esc clock
wire        sensr_rst_n        ;
wire        core_clk_rst_n     ;
wire        dfifo_wren         ;
wire [35:0] dfifo_wrdata       ;
wire        dfifo_rden         ;
wire [35:0] dfifo_rddata       ;
wire        dfifo_full         ;
wire        dfifo_almost_full  ;
wire        dfifo_empty        ;
wire        strm_fifo_under_run_c;
wire        packet_tranfr_dn_ppi_clk_w; 
wire        dl_tx_stop_st_ppi_clk_w; 
wire        packet_tranfr_dn_sensr_clk_w; 
wire        combnd_fifo_status_w; 
wire        init_ppi_dn_w; 
wire        dphy_init_done_sensr_clk_w; 
wire        pixel_under_run_ppi_clk_sensr_clk;
wire        master_resetn      ;
wire        ulps_entry_axis_clk;
wire        ulps_exited_axis_clk;
wire        line_sync_gen_axis_clk;
wire [4:0]  ldf_dc             ; // This indicates the Data count of the 
                                 // LDF FIFO,this has to be prameterized 
                                 // in later stages
wire        srst               ; // This is an active High
                                 // Reset
wire        ldf_rst            ; // This is an active High
                                 // Reset
wire [5:0]  async_dc           ; // This indicates the Data count of the 
                                 // Async FIFO 
wire [7:0]  frm_blkng_axis_clk;
wire        gsp_fifo_wr_en     ;
wire [23:0] gsp_fifo_wr_data   ;
wire        gsp_fifo_rd_en     ;
wire [23:0] gsp_fifo_rd_data   ;
wire        gsp_fifo_empty     ;
wire [5:0]  gsp_fifo_dc        ;
wire        gsp_fifo_full      ;
wire [1:0]  active_lanes_axis_clk;
wire [1:0]  active_lanes_ppi_clk_w;
wire [C_AXIS_TDATA_WIDTH-1:0] s_axis_tdata_c;
wire        clk_mode_axis_clk_w ;
wire        clk_mode_ppi_clk_w ;
wire        cntlr_ready_indic_ppi_clk_w ;

wire [15:0] no_lines_vc0_axis_clk;
wire [15:0] no_lines_vc1_axis_clk;
wire [15:0] no_lines_vc2_axis_clk;
wire [15:0] no_lines_vc3_axis_clk;

wire [1:0]  no_line_status_vc0_w;
wire [1:0]  no_line_status_vc1_w;
wire [1:0]  no_line_status_vc2_w;
wire [1:0]  no_line_status_vc3_w;

wire send_periodic_patrn_w;
wire rst_4_ic_pc_ac_seq_w;

/*--------------------------------------------------------
  Converting Active Low Reset to Active High Reset
---------------------------------------------------------*/



   assign s_axis_tdata_c = s_axis_tdata[41:0];
 
 




assign srst = (~sensr_rst_n);
assign ldf_rst = (~ppi_clk_rst_n);

//Line buffer fifo -- > Synchronous
//bd_71ba_mipi_csi2_tx_ctrl_0_0_lbuf line_buffer
// (
// .clk          (s_axis_aclk   ),
// .srst         (srst   ),
// .din          (lbuf_wrdata   ),
// .wr_en        (lbuf_wren     ),
// .rd_en        (lbuf_rden     ),
// .dout         (lbuf_rddata   ),
// .full         (lbuf_full     ),
// .almost_full  (  /*Open */   ),
// .empty        (lbuf_empty    ),
// .data_count   (  /*Open */   ),
// .prog_full    (lbuf_proj_full    )
// //.wr_rst_busy  (  /*Open */   ),
// //.rd_rst_busy  (  /*Open */   ) 
//);


//Line buffer fifo -- > Synchronous
   xpm_fifo_sync #(
      .DOUT_RESET_VALUE      ("0"),    // String
      .ECC_MODE              ("no_ecc"),       // String
      .FIFO_MEMORY_TYPE      ("block"), // String
      .FIFO_READ_LATENCY     (1),     // DECIMAL
      .FIFO_WRITE_DEPTH      (C_CSI_LINE_BUFR_DEPTH),   // DECIMAL
      .FULL_RESET_VALUE      (0),      // DECIMAL
      .PROG_EMPTY_THRESH     (/*Open*/),    // DECIMAL
      .PROG_FULL_THRESH      (C_CSI_LINE_BUFR_DEPTH - 7),     // DECIMAL
      .RD_DATA_COUNT_WIDTH   (/*Open*/),   // DECIMAL
      .READ_DATA_WIDTH       (LBUF_WIDTH),      // DECIMAL
      .READ_MODE             ("std"),         // String
      .USE_ADV_FEATURES      ("0002"), // String
      .WAKEUP_TIME           (0),           // DECIMAL
      .WRITE_DATA_WIDTH      (LBUF_WIDTH),     // DECIMAL
      .WR_DATA_COUNT_WIDTH   (/*Open*/)    // DECIMAL
   )
 line_buffer
 (
 .almost_empty        (/*Open */),  
 .almost_full         (/*Open */),    
 .data_valid          (/*Open */),      
 .dbiterr             (/*Open */),            
 .dout                (lbuf_rddata),                  
 .empty               (lbuf_empty),                
 .full                (lbuf_full),                  
 .overflow            (/*Open */),          
 .prog_empty          (/*Open */),      
 .prog_full           (lbuf_proj_full),        
 .rd_data_count       (/*Open */),
 .rd_rst_busy         (/*Open */),    
 .sbiterr             (/*Open */),            
 .underflow           (/*Open */),        
 .wr_ack              (/*Open */),              
 .wr_data_count       (/*Open */),
 .wr_rst_busy         (/*Open */),    
 .din                 (lbuf_wrdata),                    
 .injectdbiterr       (1'b0),
 .injectsbiterr       (1'b0),
 .rd_en               (lbuf_rden),                
 .rst                 (srst),                    
 .sleep               (1'b0),                
 .wr_clk              (s_axis_aclk),              
 .wr_en               (lbuf_wren)                 
);










// ASynchronous
//bd_71ba_mipi_csi2_tx_ctrl_0_0_afifo clock_cross_fifo (
// .rst     (srst   ),
// .wr_clk  (s_axis_aclk   ),
// .rd_clk  (txbyteclkhs   ),
// .din     (afifo_wrdata  ),
// .wr_en   (afifo_wren    ),
// .rd_en   (afifo_rden  ),
// .dout    (afifo_rddata    ),
// .full    (afifo_full    ),
// .almost_full    (/*open*/    ),
// //.prog_full    (afifo_almost_full    ),
// .wr_data_count (async_dc),    
// .empty   (afifo_empty   )
//);

   xpm_fifo_async #(
      .CDC_SYNC_STAGES         (2),              // 
      .DOUT_RESET_VALUE        ("0"),            // 
      .ECC_MODE                ("no_ecc"),       // 
      .FIFO_MEMORY_TYPE        ("distributed"),  // 
      .FIFO_READ_LATENCY       (1),              // 
      .FIFO_WRITE_DEPTH        (32),             // 
      .FULL_RESET_VALUE        (0),              // 
      .PROG_EMPTY_THRESH       (/*Open*/),             // 
      .PROG_FULL_THRESH        (/*Open*/),             // 
      .RD_DATA_COUNT_WIDTH     (/*Open*/),              // 
      .READ_DATA_WIDTH         (34),             // 
      .READ_MODE               ("std"),          // 
      .RELATED_CLOCKS          (0),              // 
      .USE_ADV_FEATURES        ("0004"),         // 
      .WAKEUP_TIME             (0),              // 
      .WRITE_DATA_WIDTH        (34),             // 
      .WR_DATA_COUNT_WIDTH     (6)               // 
   )
   clock_cross_fifo (
      .almost_empty  (/*open*/),  
      .almost_full   (/*open*/),    
      .data_valid    (/*open*/),      
      .dbiterr       (/*open*/),            
      .dout          (afifo_rddata),                  
      .empty         (afifo_empty),                
      .full          (afifo_full),                  
      .overflow      (/*open*/),          
      .prog_empty    (/*open*/),      
      .prog_full     (/*open*/),        
      .rd_data_count (/*open*/),
      .rd_rst_busy   (/*open*/),    
      .sbiterr       (/*open*/),            
      .underflow     (/*open*/),        
      .wr_ack        (/*open*/),              
      .wr_data_count (async_dc),
      .wr_rst_busy   (/*open*/),    
      .din           (afifo_wrdata),                    
      .injectdbiterr (1'b0),
      .injectsbiterr (1'b0),
      .rd_clk        (txbyteclkhs),              
      .rd_en         (afifo_rden),                
      .rst           (srst),                    
      .sleep         (1'b0),                
      .wr_clk        (s_axis_aclk),              
      .wr_en         (afifo_wren)                 
     );
                                    
                                    
// Synchronous
//bd_71ba_mipi_csi2_tx_ctrl_0_0_dfifo dist_fifo (
// .clk    (txbyteclkhs   ),
// .rst    (ldf_rst ),
// .din    (dfifo_wrdata  ),
// .wr_en  (dfifo_wren    ),
// .rd_en  (dfifo_rden    ),
// .dout   (dfifo_rddata  ),
// .full   (dfifo_full    ),
// .almost_full    (dfifo_almost_full    ),
// .data_count (  ldf_dc   ),
// .empty  (dfifo_empty    )
//);


// Lane Distribution FIFO :: Synchronous
   xpm_fifo_sync #(
      .DOUT_RESET_VALUE      ("0"),    // String
      .ECC_MODE              ("no_ecc"),       // String
      .FIFO_MEMORY_TYPE      ("distributed"), // String
      .FIFO_READ_LATENCY     (1),     // DECIMAL
      .FIFO_WRITE_DEPTH      (16),   // DECIMAL
      .FULL_RESET_VALUE      (0),      // DECIMAL
      .PROG_EMPTY_THRESH     (/*Open*/),    // DECIMAL
      .PROG_FULL_THRESH      (/*Open*/),     // DECIMAL
      .RD_DATA_COUNT_WIDTH   (5),   // DECIMAL
      .READ_DATA_WIDTH       (36),      // DECIMAL
      .READ_MODE             ("std"),         // String
      .USE_ADV_FEATURES      ("0408"), // String
      .WAKEUP_TIME           (0),           // DECIMAL
      .WRITE_DATA_WIDTH      (36),     // DECIMAL
      .WR_DATA_COUNT_WIDTH   (/*Open*/)    // DECIMAL
   )
 dist_fifo
 (
 .almost_empty        (/*Open */),  
 .almost_full         (dfifo_almost_full),    
 .data_valid          (/*Open */),      
 .dbiterr             (/*Open */),            
 .dout                (dfifo_rddata),                  
 .empty               (dfifo_empty),                
 .full                (dfifo_full),                  
 .overflow            (/*Open */),          
 .prog_empty          (/*Open */),      
 .prog_full           (/*Open */),        
 .rd_data_count       (ldf_dc),
 .rd_rst_busy         (/*Open */),    
 .sbiterr             (/*Open */),            
 .underflow           (/*Open */),        
 .wr_ack              (/*Open */),              
 .wr_data_count       (/*Open */),
 .wr_rst_busy         (/*Open */),    
 .din                 (dfifo_wrdata),                    
 .injectdbiterr       (1'b0),
 .injectsbiterr       (1'b0),
 .rd_en               (dfifo_rden),                
 .rst                 (ldf_rst),                    
 .sleep               (1'b0),                
 .wr_clk              (txbyteclkhs),              
 .wr_en               (dfifo_wren)                 
);




// Synchronous
//bd_71ba_mipi_csi2_tx_ctrl_0_0_gsp_fifo generic_fifo (
// .clk    (s_axis_aclk   ),
// .rst    (srst ),
// .din    (gsp_fifo_wr_data  ),
// .wr_en  (gsp_fifo_wr_en    ),
// .rd_en  (gsp_fifo_rd_en    ),
// .dout   (gsp_fifo_rd_data  ),
// .full   ( gsp_fifo_full   ),
// .almost_full    (/*Open */    ),
// .data_count (  gsp_fifo_dc   ),
// .empty  (gsp_fifo_empty    )
//);

// Generic Short Packet FIFO :: Synchronous
   xpm_fifo_sync #(
      .DOUT_RESET_VALUE      ("0"),    // String
      .ECC_MODE              ("no_ecc"),       // String
      .FIFO_MEMORY_TYPE      ("distributed"), // String
      .FIFO_READ_LATENCY     (1),     // DECIMAL
      .FIFO_WRITE_DEPTH      (32),   // DECIMAL
      .FULL_RESET_VALUE      (0),      // DECIMAL
      .PROG_EMPTY_THRESH     (/*Open*/),    // DECIMAL
      .PROG_FULL_THRESH      (/*Open*/),     // DECIMAL
      .RD_DATA_COUNT_WIDTH   (6),   // DECIMAL
      .READ_DATA_WIDTH       (24),      // DECIMAL
      .READ_MODE             ("std"),         // String
      .USE_ADV_FEATURES      ("0400"), // String
      .WAKEUP_TIME           (0),           // DECIMAL
      .WRITE_DATA_WIDTH      (24),     // DECIMAL
      .WR_DATA_COUNT_WIDTH   (/*Open*/)    // DECIMAL
   )
 generic_fifo
 (
 .almost_empty        (/*Open */),  
 .almost_full         (/*Open */),    
 .data_valid          (/*Open */),      
 .dbiterr             (/*Open */),            
 .dout                (gsp_fifo_rd_data),                  
 .empty               (gsp_fifo_empty),                
 .full                (gsp_fifo_full),                  
 .overflow            (/*Open */),          
 .prog_empty          (/*Open */),      
 .prog_full           (/*Open */),        
 .rd_data_count       (gsp_fifo_dc),
 .rd_rst_busy         (/*Open */),    
 .sbiterr             (/*Open */),            
 .underflow           (/*Open */),        
 .wr_ack              (/*Open */),              
 .wr_data_count       (/*Open */),
 .wr_rst_busy         (/*Open */),    
 .din                 (gsp_fifo_wr_data),                    
 .injectdbiterr       (1'b0),
 .injectsbiterr       (1'b0),
 .rd_en               (gsp_fifo_rd_en),                
 .rst                 (srst),                    
 .sleep               (1'b0),                
 .wr_clk              (s_axis_aclk),              
 .wr_en               (gsp_fifo_wr_en)                 
);


mipi_csi2_tx_ctrl_v1_0_4_reset_sync_blk rst_sync_blk 
(
 .ppi_clk                 (txbyteclkhs         ),
 .core_clk_in             (core_clk_in         ),
 .s_axis_aclk             (s_axis_aclk         ),           
 .txclkesc                (txclkesc            ),
 .master_resetn           (master_resetn       ),           
 .rst_4_ic_pc_ac_seq_in   (dphy_init_done      ),
 .sensr_rst_n             (sensr_rst_n         ),           
 .core_clk_rst_n          (core_clk_rst_n      ),           
 .txesc_clk_rst_n         (txesc_clk_rst_n     ),           
 .rst_4_ic_pc_ac_seq_out  (rst_4_ic_pc_ac_seq_w  ),           
 .ppi_clk_rst_n           (ppi_clk_rst_n       )           
);                         


mipi_csi2_tx_ctrl_v1_0_4_img_iface 
#(
.C_AXIS_TDATA_WIDTH(C_AXIS_TDATA_WIDTH),
.C_CSI_PIXEL_MODE(C_CSI_PIXEL_MODE),
.C_CSI_VID_INTERFACE(C_CSI_VID_INTERFACE),
.C_EN_REG_BASED_FE_GEN(C_EN_REG_BASED_FE_GEN),
.SF_WIDTH(LBUF_WIDTH)
)
img_iface 
(
 .vid_clk               (s_axis_aclk       ), 

 .vid_vsync             (1'b0                    ), 
 .vid_hsync             (1'b0                    ), 
 .vid_enable            (1'b0                    ), 
 .vid_pxl               ( ({C_AXIS_TDATA_WIDTH{1'b0}})   ), 
 .vid_vc                (2'b00                   ), 
 .vid_linenum           (16'b0                   ), 
 .vid_framenum          (16'b0                   ), 
 .vid_wc                (16'b0                   ), 
 .vid_di                (6'b0                    ), 

 //`else 
 .s_axis_aclk           (s_axis_aclk       ), 
 .axis_rst_n            (sensr_rst_n       ), 
 .s_axis_tready         (s_axis_tready     ), 
 .s_axis_tvalid         (s_axis_tvalid     ), 
 .s_axis_tlast          (s_axis_tlast      ), 
 .s_axis_tdata          (s_axis_tdata_c      ), 
 .s_axis_tdest          (s_axis_tdest      ), 
 .s_axis_tuser          (s_axis_tuser      ), 
 //`endif                 
 .pkt_transfr_dn        (packet_tranfr_dn_sensr_clk_w),
 .gsp_fifo_empty        (gsp_fifo_empty    ), 
 .gsp_fifo_rd_data      (gsp_fifo_rd_data  ), 
 .gsp_fifo_rd_en        (gsp_fifo_rd_en    ), 
 .line_sync_disable     (line_sync_gen_axis_clk    ), 
 .img_no_lines_vc0      ( no_lines_vc0_axis_clk  ),
 .img_no_lines_vc1      ( no_lines_vc1_axis_clk  ),
 .img_no_lines_vc2      ( no_lines_vc2_axis_clk  ),
 .img_no_lines_vc3      ( no_lines_vc3_axis_clk  ),
 .frm_blkng_reg         (frm_blkng_axis_clk    ), 
 .sync_fifo_full        ( lbuf_proj_full   ), 
 .iface_no_line_status_vc0    (no_line_status_vc0_w        ),
 .iface_no_line_status_vc1    (no_line_status_vc1_w        ),
 .iface_no_line_status_vc2    (no_line_status_vc2_w        ),
 .iface_no_line_status_vc3    (no_line_status_vc3_w        ),
 .sync_fifo_wr_data     (lbuf_wrdata ), 
 .sync_fifo_wr_en       (lbuf_wren   ) 
);


mipi_csi2_tx_ctrl_v1_0_4_pkt_gen_blk  
#(
.SF_WIDTH(LBUF_WIDTH),
.C_CSI_PIXEL_MODE(C_CSI_PIXEL_MODE)
)
pktgn_blk
(
 .sensr_clk         (s_axis_aclk       ),         
 .sensr_rst_n       (sensr_rst_n       ),         
 .sync_fifo_rd_data (lbuf_rddata       ), 
 .sync_fifo_empty   (lbuf_empty        ),         
 .sync_fifo_rd_en   (lbuf_rden         ),         
 .cdf_fifo_full     (/*Open*/          ),         
 .fifo_dc           (async_dc          ),         
 .cdf_wr_data       (afifo_wrdata      ),         
 .cdf_wr_en         (afifo_wren        )         
);

mipi_csi2_tx_ctrl_v1_0_4_packetizer  
#(
.C_CSI_CRC_ENABLE(C_CSI_CRC_ENABLE) 
)
pktzr
(
 .ppi_clk       (txbyteclkhs       ), 
 .ppi_clk_rst_n (ppi_clk_rst_n     ), 
 .cdf_rd_data   (afifo_rddata      ), 
 .cdf_empty     (afifo_empty       ), 
 .cdf_rd_en     (afifo_rden        ), 
 .ldf_fifo_full (dfifo_almost_full ), 
 .ldf_data_count(ldf_dc            ), 
 .ldf_wr_data   (dfifo_wrdata      ), 
 .ldf_wr_en     (dfifo_wren        ) 
);


mipi_csi2_tx_ctrl_v1_0_4_ldf 
#(
.C_CSI_EN_ACTIVELANES (C_CSI_EN_ACTIVELANES),
.C_CSI_CLK_PRE (C_CSI_CLK_PRE),
.C_CSI_XMIT_INIT_DESKEW (C_CSI_XMIT_INIT_DESKEW),
.C_CSI_XMIT_ALT_DESKEW (C_CSI_XMIT_ALT_DESKEW),
.C_CSI_XMIT_PERIODIC_DESKEW (C_CSI_XMIT_PERIODIC_DESKEW),
.C_CSI_INIT_DESKEW_PATRN_LEN (C_CSI_INIT_DESKEW_PATRN_LEN + 'd200),
.C_CSI_PERIODIC_PATRN_LEN (C_CSI_PERIODIC_PATRN_LEN),
.C_CSI_LANES (C_CSI_LANES)
)
ldf
(
.ppi_clk            (txbyteclkhs          ),  
.ppi_clk_rst_n      (ppi_clk_rst_n        ),  
.rst_4_ic_pc_ac_seq (rst_4_ic_pc_ac_seq_w ),  
.ldf_empty          (dfifo_empty          ),  
.ldf_rd_en	    (dfifo_rden   	  ), 
.ldf_rd_data        (dfifo_rddata         ),  
.send_periodic_patrn(send_periodic_patrn_w ),  
.strm_fifo_under_run(strm_fifo_under_run_c), 
.packet_tranfr_dn   (packet_tranfr_dn_ppi_clk_w),  
.active_lanes       (active_lanes_ppi_clk_w),  
.cl_txclkactive     (cl_txclkactive       ),
.dphy_init_done     (dphy_init_done       ),
.dl_tx_stop_st      (dl_tx_stop_st_ppi_clk_w        ),
.cntlr_ready_indic  (cntlr_ready_indic_ppi_clk_w  ),
.clk_mode           (clk_mode_ppi_clk_w   ),  
.cl_enable          (cl_enable            ),  
.cl_txrequesths     (cl_txrequesths       ),  
.dl0_txdatahs       (dl0_txdatahs         ),  
.dl0_txrequesths    (dl0_txrequesths      ),  
.dl0_forcetxstopmode(dl0_forcetxstopmode  ),  
.dl0_enable         (dl0_enable           ),  
.dl0_txskewcalhs    (dl0_txskewcalhs      ),  
.dl1_txskewcalhs    (dl1_txskewcalhs      ),  
.dl2_txskewcalhs    (dl2_txskewcalhs      ),  
.dl3_txskewcalhs    (dl3_txskewcalhs      ),  
.dl0_txreadyhs      (dl0_txreadyhs        ),  
.dl1_txdatahs       (dl1_txdatahs         ),  
.dl1_txrequesths    (dl1_txrequesths      ),  
.dl1_txreadyhs      (dl1_txreadyhs        ),  
.dl1_forcetxstopmode(dl1_forcetxstopmode  ),  
.dl1_enable         (dl1_enable           ),  
.dl2_txdatahs       (dl2_txdatahs         ),  
.dl2_txrequesths    (dl2_txrequesths      ),  
.dl2_txreadyhs      (dl2_txreadyhs        ),  
.dl2_forcetxstopmode(dl2_forcetxstopmode  ),  
.dl2_enable         (dl2_enable           ),  
.dl3_txdatahs       (dl3_txdatahs         ),   
.dl3_txrequesths    (dl3_txrequesths      ),   
.dl3_txreadyhs      (dl3_txreadyhs        ),   
.dl3_forcetxstopmode(dl3_forcetxstopmode  ),   
.dl3_enable         (dl3_enable           )   
);



mipi_csi2_tx_ctrl_v1_0_4_reg_iface 
#(
.ADDR_WIDTH (7),
.DATA_WIDTH (32),
.STB_WIDTH (4),
.C_CSI_LANES (C_CSI_LANES),
.C_CSI_PIXEL_MODE (C_CSI_PIXEL_MODE),
.C_CSI_EN_ACTIVELANES (C_CSI_EN_ACTIVELANES),
.C_EN_REG_BASED_FE_GEN(C_EN_REG_BASED_FE_GEN),
.RESP_WIDTH (2)
)
reg_blk 
(
 .s_axis_aclk                   ( s_axis_aclk             ), 
 .s_axis_aresetn                ( s_axis_aresetn          ), 
 .s_axi_awaddr                  ( s_axi_awaddr[6:0]            ), 
 .s_axi_awready                 ( s_axi_awready           ), 
 .s_axi_awvalid                 ( s_axi_awvalid           ), 
 .s_axi_araddr                  ( s_axi_araddr[6:0]            ), 
 .s_axi_arready                 ( s_axi_arready           ), 
 .s_axi_arvalid                 ( s_axi_arvalid           ), 
 .s_axi_wdata                   ( s_axi_wdata             ), 
 .s_axi_wstrb                   ( s_axi_wstrb             ), 
 .s_axi_wready                  ( s_axi_wready            ), 
 .s_axi_wvalid                  ( s_axi_wvalid            ), 
 .s_axi_rdata                   ( s_axi_rdata             ), 
 .s_axi_rresp                   ( s_axi_rresp             ), 
 .s_axi_rready                  ( s_axi_rready            ), 
 .s_axi_rvalid                  ( s_axi_rvalid            ), 
 .s_axi_bresp                   ( s_axi_bresp             ), 
 .s_axi_bready                  ( s_axi_bready            ), 
 .s_axi_bvalid                  ( s_axi_bvalid            ), 
 .ulps_entry_axis_clk           ( ulps_entry_axis_clk     ), 
 .csi2_tx_rdy_axis_clk          ( combnd_fifo_status_w    ), 
 .line_sync_gen_axis_clk        ( line_sync_gen_axis_clk  ), 
 .active_lanes_axis_clk         ( active_lanes_axis_clk   ), 
 .gsp_fifo_full_axis_clk        ( gsp_fifo_full           ), 
 .ulps_exited_axis_clk          ( ulps_exited_axis_clk    ), 
 .line_buffr_full_axis_clk      ( lbuf_full               ), 
 .unsup_rsvd_err_axis_clk       ( init_ppi_dn_w           ), 
 .dphy_init_done_snsr_clk       ( dphy_init_done_sensr_clk_w           ), 
 .pixel_under_run_axis_clk      ( pixel_under_run_ppi_clk_sensr_clk), 
 .frm_blkng_axis_clk            ( frm_blkng_axis_clk      ), 
 .gsp_fifo_valid_axis_clk       ( gsp_fifo_wr_en ), 
 .gsp_fifo_data_axis_clk        ( gsp_fifo_wr_data        ), 
 .gsp_fill_status_axis_clk      ( gsp_fifo_dc), 
 .master_resetn                 ( master_resetn           ), 
 .no_lines_vc0_axis_clk         ( no_lines_vc0_axis_clk   ),
 .no_lines_vc1_axis_clk         ( no_lines_vc1_axis_clk   ),
 .no_lines_vc2_axis_clk         ( no_lines_vc2_axis_clk   ),
 .no_lines_vc3_axis_clk         ( no_lines_vc3_axis_clk   ),
 .no_line_status_vc0_axis_clk   (no_line_status_vc0_w     ),
 .no_line_status_vc1_axis_clk   (no_line_status_vc1_w     ),
 .no_line_status_vc2_axis_clk   (no_line_status_vc2_w     ),
 .no_line_status_vc3_axis_clk   (no_line_status_vc3_w     ),
 .clk_mode_axis_clk             ( clk_mode_axis_clk_w     ), 
 .interrupt                     ( interrupt               )             
);



mipi_csi2_tx_ctrl_v1_0_4_cdc_blk 
#(
.C_CSI_EN_ACTIVELANES       (C_CSI_EN_ACTIVELANES),
.C_CSI_XMIT_PERIODIC_DESKEW (C_CSI_XMIT_PERIODIC_DESKEW ),
.C_CSI_PERIODIC_CNTR_WIDTH  (C_CSI_PERIODIC_CNTR_WIDTH  ),
.C_CSI_PERIODIC_TIME        (C_CSI_PERIODIC_TIME        ),
.C_CSI_LANES                (C_CSI_LANES)
)
sync_blk
(
 .ppi_clk                       ( txbyteclkhs               ),         
 .sensr_clk                     ( s_axis_aclk               ),         
 .sensr_rst_n                   ( sensr_rst_n               ),         
 .ppi_clk_rst_n                 ( ppi_clk_rst_n             ),
 .txesc_clk_rst_n               (txesc_clk_rst_n            ),
 .core_clk_rst_n                (core_clk_rst_n  ),           
 .txclkesc                      (txclkesc                   ),
 .core_clk_in                   (core_clk_in                ),
 .active_lanes                  (active_lanes_axis_clk      ),
 .dphy_init_done                (dphy_init_done             ),
 .send_calib_patrn_ppi_clk      (send_periodic_patrn_w      ),
 .lin_buf_empty                 (lbuf_empty                 ),
 .async_empty                   (afifo_empty                ),
 .ldf_fifo_empty                (dfifo_empty                ),
 .clk_mode_axis_clk             (clk_mode_axis_clk_w        ),
 .cl_txulpsclk                  (cl_txulpsclk               ),
 .cl_txulpsclkexit              (cl_txulpsexit              ),
 .dl0_txulpsesc                 ( dl0_txulpsesc             ),  
 .dl0_txreqesc                  ( dl0_txrequestesc          ),  
 .dl0_txulpsexit                ( dl0_txulpsexit            ),
 .dl0_txulpsactivenot           ( dl0_ulpsactivenot         ),
 .dl1_txulpsesc                 ( dl1_txulpsesc             ),  
 .dl1_txreqesc                  ( dl1_txrequestesc          ),  
 .dl1_txulpsexit                ( dl1_txulpsexit            ),  
 .dl1_txulpsactivenot           ( dl1_ulpsactivenot         ),
 .dl2_txulpsesc                 ( dl2_txulpsesc             ),  
 .dl2_txreqesc                  ( dl2_txrequestesc          ),  
 .dl2_txulpsexit                ( dl2_txulpsexit            ),  
 .dl2_txulpsactivenot           ( dl2_ulpsactivenot         ),
 .dl3_txulpsesc                 ( dl3_txulpsesc             ),   
 .dl3_txreqesc                  ( dl3_txrequestesc          ),   
 .dl3_txulpsexit                ( dl3_txulpsexit            ),    
 .dl3_txulpsactivenot           ( dl3_ulpsactivenot         ),
 .cntlr_ready_indic_ppi_clk     (cntlr_ready_indic_ppi_clk_w),
 .dl_tx_stop_st_core_clk        (dl_tx_stop_st              ),
 .dl_tx_stop_st_ppi_clk         (dl_tx_stop_st_ppi_clk_w    ),
 .act_lanes_dphy                ( active_lanes_dphy         ),
 .clk_mode_ppi_clk              ( clk_mode_ppi_clk_w        ),
 .pixel_under_run_ppi_clk       ( strm_fifo_under_run_c      ),         
 .packet_tranfr_dn_ppi_clk      ( packet_tranfr_dn_ppi_clk_w ),         
 .ulps_entry_axis_clk           ( ulps_entry_axis_clk        ),         
 .ulps_isr                      ( ulps_exited_axis_clk       ),         
 .packet_tranfr_dn_ppi_clk_sensr_clk(packet_tranfr_dn_sensr_clk_w),         
 .combnd_fifo_status            ( combnd_fifo_status_w), 
 .init_ppi_dn                   ( init_ppi_dn_w), 
 .dphy_init_done_sensr_clk      ( dphy_init_done_sensr_clk_w ), 
 .active_lanes_ppi_clk          ( active_lanes_ppi_clk_w), 
 .pixel_under_run_ppi_clk_sensr_clk(pixel_under_run_ppi_clk_sensr_clk)          
);












endmodule
                                   

