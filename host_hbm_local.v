//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Apr 15 03:45:16 2024
//Host        : jirick-sscapes running 64-bit major release  (build 9200)
//Command     : generate_target host_hbm.bd
//Design      : host_hbm
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "host_hbm,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=host_hbm,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=27,numReposBlks=23,numNonXlnxBlks=1,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "host_hbm.hwdef" *) 
module host_hbm
   (avr_ck,
    avr_rx,
    avr_tx,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    refclk300_n,
    refclk300_p,
    sys_clk_n,
    sys_clk_p,
    sys_rst_n,
    user_led_a0_l,
    user_led_g0_l,
    user_led_g1_l);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AVR_CK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AVR_CK, CLK_DOMAIN host_hbm_avr_ck, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input avr_ck;
  input avr_rx;
  output avr_tx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [15:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [15:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [15:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [15:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.REFCLK300_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.REFCLK300_N, CLK_DOMAIN host_hbm_refclk300_n, FREQ_HZ 300000000, INSERT_VIP 0, PHASE 0.000" *) input refclk300_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.REFCLK300_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.REFCLK300_P, CLK_DOMAIN host_hbm_refclk300_p, FREQ_HZ 300000000, INSERT_VIP 0, PHASE 0.000" *) input refclk300_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK_N, CLK_DOMAIN host_hbm_sys_clk_n, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK_P, CLK_DOMAIN host_hbm_sys_clk_p, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input sys_rst_n;
  output user_led_a0_l;
  output user_led_g0_l;
  output user_led_g1_l;

  wire avr_ck_1;
  wire avr_rx_1;
  wire [32:0]axi4_to_axi3_inst_M_AXI_ARADDR;
  wire [1:0]axi4_to_axi3_inst_M_AXI_ARBURST;
  wire [3:0]axi4_to_axi3_inst_M_AXI_ARLEN;
  wire axi4_to_axi3_inst_M_AXI_ARREADY;
  wire [2:0]axi4_to_axi3_inst_M_AXI_ARSIZE;
  wire axi4_to_axi3_inst_M_AXI_ARVALID;
  wire [32:0]axi4_to_axi3_inst_M_AXI_AWADDR;
  wire [1:0]axi4_to_axi3_inst_M_AXI_AWBURST;
  wire [3:0]axi4_to_axi3_inst_M_AXI_AWLEN;
  wire axi4_to_axi3_inst_M_AXI_AWREADY;
  wire [2:0]axi4_to_axi3_inst_M_AXI_AWSIZE;
  wire axi4_to_axi3_inst_M_AXI_AWVALID;
  wire axi4_to_axi3_inst_M_AXI_BREADY;
  wire [1:0]axi4_to_axi3_inst_M_AXI_BRESP;
  wire axi4_to_axi3_inst_M_AXI_BVALID;
  wire [255:0]axi4_to_axi3_inst_M_AXI_RDATA;
  wire axi4_to_axi3_inst_M_AXI_RLAST;
  wire axi4_to_axi3_inst_M_AXI_RREADY;
  wire [1:0]axi4_to_axi3_inst_M_AXI_RRESP;
  wire axi4_to_axi3_inst_M_AXI_RVALID;
  wire [255:0]axi4_to_axi3_inst_M_AXI_WDATA;
  wire axi4_to_axi3_inst_M_AXI_WLAST;
  wire axi4_to_axi3_inst_M_AXI_WREADY;
  wire [31:0]axi4_to_axi3_inst_M_AXI_WSTRB;
  wire axi4_to_axi3_inst_M_AXI_WVALID;
  wire [32:0]axi_512_to_256_inst_M_AXI_ARADDR;
  wire [1:0]axi_512_to_256_inst_M_AXI_ARBURST;
  wire [3:0]axi_512_to_256_inst_M_AXI_ARCACHE;
  wire [7:0]axi_512_to_256_inst_M_AXI_ARLEN;
  wire [0:0]axi_512_to_256_inst_M_AXI_ARLOCK;
  wire [2:0]axi_512_to_256_inst_M_AXI_ARPROT;
  wire [3:0]axi_512_to_256_inst_M_AXI_ARQOS;
  wire axi_512_to_256_inst_M_AXI_ARREADY;
  wire [3:0]axi_512_to_256_inst_M_AXI_ARREGION;
  wire [2:0]axi_512_to_256_inst_M_AXI_ARSIZE;
  wire axi_512_to_256_inst_M_AXI_ARVALID;
  wire [32:0]axi_512_to_256_inst_M_AXI_AWADDR;
  wire [1:0]axi_512_to_256_inst_M_AXI_AWBURST;
  wire [3:0]axi_512_to_256_inst_M_AXI_AWCACHE;
  wire [7:0]axi_512_to_256_inst_M_AXI_AWLEN;
  wire [0:0]axi_512_to_256_inst_M_AXI_AWLOCK;
  wire [2:0]axi_512_to_256_inst_M_AXI_AWPROT;
  wire [3:0]axi_512_to_256_inst_M_AXI_AWQOS;
  wire axi_512_to_256_inst_M_AXI_AWREADY;
  wire [3:0]axi_512_to_256_inst_M_AXI_AWREGION;
  wire [2:0]axi_512_to_256_inst_M_AXI_AWSIZE;
  wire axi_512_to_256_inst_M_AXI_AWVALID;
  wire axi_512_to_256_inst_M_AXI_BREADY;
  wire [1:0]axi_512_to_256_inst_M_AXI_BRESP;
  wire axi_512_to_256_inst_M_AXI_BVALID;
  wire [255:0]axi_512_to_256_inst_M_AXI_RDATA;
  wire axi_512_to_256_inst_M_AXI_RLAST;
  wire axi_512_to_256_inst_M_AXI_RREADY;
  wire [1:0]axi_512_to_256_inst_M_AXI_RRESP;
  wire axi_512_to_256_inst_M_AXI_RVALID;
  wire [255:0]axi_512_to_256_inst_M_AXI_WDATA;
  wire axi_512_to_256_inst_M_AXI_WLAST;
  wire axi_512_to_256_inst_M_AXI_WREADY;
  wire [31:0]axi_512_to_256_inst_M_AXI_WSTRB;
  wire axi_512_to_256_inst_M_AXI_WVALID;
  wire bci_inst_avr_tx;
  wire bci_inst_irq;
  wire hbm_apb_complete_0;
  wire hbm_apb_complete_1;
  wire [32:0]interconnect_inst_M00_AXI_ARADDR;
  wire [1:0]interconnect_inst_M00_AXI_ARBURST;
  wire [3:0]interconnect_inst_M00_AXI_ARCACHE;
  wire [4:0]interconnect_inst_M00_AXI_ARID;
  wire [7:0]interconnect_inst_M00_AXI_ARLEN;
  wire [0:0]interconnect_inst_M00_AXI_ARLOCK;
  wire [2:0]interconnect_inst_M00_AXI_ARPROT;
  wire [3:0]interconnect_inst_M00_AXI_ARQOS;
  wire interconnect_inst_M00_AXI_ARREADY;
  wire [3:0]interconnect_inst_M00_AXI_ARREGION;
  wire [2:0]interconnect_inst_M00_AXI_ARSIZE;
  wire interconnect_inst_M00_AXI_ARVALID;
  wire [32:0]interconnect_inst_M00_AXI_AWADDR;
  wire [1:0]interconnect_inst_M00_AXI_AWBURST;
  wire [3:0]interconnect_inst_M00_AXI_AWCACHE;
  wire [4:0]interconnect_inst_M00_AXI_AWID;
  wire [7:0]interconnect_inst_M00_AXI_AWLEN;
  wire [0:0]interconnect_inst_M00_AXI_AWLOCK;
  wire [2:0]interconnect_inst_M00_AXI_AWPROT;
  wire [3:0]interconnect_inst_M00_AXI_AWQOS;
  wire interconnect_inst_M00_AXI_AWREADY;
  wire [3:0]interconnect_inst_M00_AXI_AWREGION;
  wire [2:0]interconnect_inst_M00_AXI_AWSIZE;
  wire interconnect_inst_M00_AXI_AWVALID;
  wire [4:0]interconnect_inst_M00_AXI_BID;
  wire interconnect_inst_M00_AXI_BREADY;
  wire [1:0]interconnect_inst_M00_AXI_BRESP;
  wire interconnect_inst_M00_AXI_BVALID;
  wire [511:0]interconnect_inst_M00_AXI_RDATA;
  wire [4:0]interconnect_inst_M00_AXI_RID;
  wire interconnect_inst_M00_AXI_RLAST;
  wire interconnect_inst_M00_AXI_RREADY;
  wire [1:0]interconnect_inst_M00_AXI_RRESP;
  wire interconnect_inst_M00_AXI_RVALID;
  wire [511:0]interconnect_inst_M00_AXI_WDATA;
  wire interconnect_inst_M00_AXI_WLAST;
  wire interconnect_inst_M00_AXI_WREADY;
  wire [63:0]interconnect_inst_M00_AXI_WSTRB;
  wire interconnect_inst_M00_AXI_WVALID;
  wire [0:0]logic0_inst_dout;
  wire [0:0]logic1_inst_dout;
  wire [0:0]pcie_clk_buf_inst_IBUF_DS_ODIV2;
  wire [0:0]pcie_clk_buf_inst_IBUF_OUT;
  wire refclk300_n_1;
  wire refclk300_p_1;
  wire refclk_bufg_div4_inst_refclk75;
  wire [0:0]refclk_bufg_inst_BUFG_O;
  wire [0:0]refclk_ibufds_inst_IBUF_OUT;
  wire reset300_sync_inst_out_resetn;
  wire reset75_sync_inst_out_resetn;
  wire sys_clk_n_1;
  wire sys_clk_p_1;
  wire sys_rst_n_1;
  wire user_led_a0_driver_inst_q;
  wire user_led_g0_driver_inst_q;
  wire user_led_g1_driver_inst_q;
  wire [63:0]xdma_inst_M_AXI_ARADDR;
  wire [1:0]xdma_inst_M_AXI_ARBURST;
  wire [3:0]xdma_inst_M_AXI_ARCACHE;
  wire [3:0]xdma_inst_M_AXI_ARID;
  wire [7:0]xdma_inst_M_AXI_ARLEN;
  wire xdma_inst_M_AXI_ARLOCK;
  wire [2:0]xdma_inst_M_AXI_ARPROT;
  wire xdma_inst_M_AXI_ARREADY;
  wire [2:0]xdma_inst_M_AXI_ARSIZE;
  wire xdma_inst_M_AXI_ARVALID;
  wire [63:0]xdma_inst_M_AXI_AWADDR;
  wire [1:0]xdma_inst_M_AXI_AWBURST;
  wire [3:0]xdma_inst_M_AXI_AWCACHE;
  wire [3:0]xdma_inst_M_AXI_AWID;
  wire [7:0]xdma_inst_M_AXI_AWLEN;
  wire xdma_inst_M_AXI_AWLOCK;
  wire [2:0]xdma_inst_M_AXI_AWPROT;
  wire xdma_inst_M_AXI_AWREADY;
  wire [2:0]xdma_inst_M_AXI_AWSIZE;
  wire xdma_inst_M_AXI_AWVALID;
  wire [3:0]xdma_inst_M_AXI_BID;
  wire xdma_inst_M_AXI_BREADY;
  wire [1:0]xdma_inst_M_AXI_BRESP;
  wire xdma_inst_M_AXI_BVALID;
  wire [63:0]xdma_inst_M_AXI_BYPASS_ARADDR;
  wire [1:0]xdma_inst_M_AXI_BYPASS_ARBURST;
  wire [3:0]xdma_inst_M_AXI_BYPASS_ARCACHE;
  wire [3:0]xdma_inst_M_AXI_BYPASS_ARID;
  wire [7:0]xdma_inst_M_AXI_BYPASS_ARLEN;
  wire xdma_inst_M_AXI_BYPASS_ARLOCK;
  wire [2:0]xdma_inst_M_AXI_BYPASS_ARPROT;
  wire xdma_inst_M_AXI_BYPASS_ARREADY;
  wire [2:0]xdma_inst_M_AXI_BYPASS_ARSIZE;
  wire xdma_inst_M_AXI_BYPASS_ARVALID;
  wire [63:0]xdma_inst_M_AXI_BYPASS_AWADDR;
  wire [1:0]xdma_inst_M_AXI_BYPASS_AWBURST;
  wire [3:0]xdma_inst_M_AXI_BYPASS_AWCACHE;
  wire [3:0]xdma_inst_M_AXI_BYPASS_AWID;
  wire [7:0]xdma_inst_M_AXI_BYPASS_AWLEN;
  wire xdma_inst_M_AXI_BYPASS_AWLOCK;
  wire [2:0]xdma_inst_M_AXI_BYPASS_AWPROT;
  wire xdma_inst_M_AXI_BYPASS_AWREADY;
  wire [2:0]xdma_inst_M_AXI_BYPASS_AWSIZE;
  wire xdma_inst_M_AXI_BYPASS_AWVALID;
  wire [3:0]xdma_inst_M_AXI_BYPASS_BID;
  wire xdma_inst_M_AXI_BYPASS_BREADY;
  wire [1:0]xdma_inst_M_AXI_BYPASS_BRESP;
  wire xdma_inst_M_AXI_BYPASS_BVALID;
  wire [511:0]xdma_inst_M_AXI_BYPASS_RDATA;
  wire [3:0]xdma_inst_M_AXI_BYPASS_RID;
  wire xdma_inst_M_AXI_BYPASS_RLAST;
  wire xdma_inst_M_AXI_BYPASS_RREADY;
  wire [1:0]xdma_inst_M_AXI_BYPASS_RRESP;
  wire xdma_inst_M_AXI_BYPASS_RVALID;
  wire [511:0]xdma_inst_M_AXI_BYPASS_WDATA;
  wire xdma_inst_M_AXI_BYPASS_WLAST;
  wire xdma_inst_M_AXI_BYPASS_WREADY;
  wire [63:0]xdma_inst_M_AXI_BYPASS_WSTRB;
  wire xdma_inst_M_AXI_BYPASS_WVALID;
  wire [31:0]xdma_inst_M_AXI_LITE_ARADDR;
  wire xdma_inst_M_AXI_LITE_ARREADY;
  wire xdma_inst_M_AXI_LITE_ARVALID;
  wire [31:0]xdma_inst_M_AXI_LITE_AWADDR;
  wire xdma_inst_M_AXI_LITE_AWREADY;
  wire xdma_inst_M_AXI_LITE_AWVALID;
  wire xdma_inst_M_AXI_LITE_BREADY;
  wire [1:0]xdma_inst_M_AXI_LITE_BRESP;
  wire xdma_inst_M_AXI_LITE_BVALID;
  wire [31:0]xdma_inst_M_AXI_LITE_RDATA;
  wire xdma_inst_M_AXI_LITE_RREADY;
  wire [1:0]xdma_inst_M_AXI_LITE_RRESP;
  wire xdma_inst_M_AXI_LITE_RVALID;
  wire [31:0]xdma_inst_M_AXI_LITE_WDATA;
  wire xdma_inst_M_AXI_LITE_WREADY;
  wire [3:0]xdma_inst_M_AXI_LITE_WSTRB;
  wire xdma_inst_M_AXI_LITE_WVALID;
  wire [511:0]xdma_inst_M_AXI_RDATA;
  wire [3:0]xdma_inst_M_AXI_RID;
  wire xdma_inst_M_AXI_RLAST;
  wire xdma_inst_M_AXI_RREADY;
  wire [1:0]xdma_inst_M_AXI_RRESP;
  wire xdma_inst_M_AXI_RVALID;
  wire [511:0]xdma_inst_M_AXI_WDATA;
  wire xdma_inst_M_AXI_WLAST;
  wire xdma_inst_M_AXI_WREADY;
  wire [63:0]xdma_inst_M_AXI_WSTRB;
  wire xdma_inst_M_AXI_WVALID;
  wire xdma_inst_axi_aclk;
  wire xdma_inst_axi_aresetn;
  wire [15:0]xdma_inst_pcie_mgt_rxn;
  wire [15:0]xdma_inst_pcie_mgt_rxp;
  wire [15:0]xdma_inst_pcie_mgt_txn;
  wire [15:0]xdma_inst_pcie_mgt_txp;
  wire [21:0]zero22_inst_dout;
  wire [31:0]zero32_inst_dout;

  wire [32:0]axi3_hbm_tester_M_AXI_ARADDR;
  wire [1:0]axi3_hbm_tester_M_AXI_ARBURST;
  wire [3:0]axi3_hbm_tester_M_AXI_ARLEN;
  wire axi3_hbm_tester_M_AXI_ARREADY;
  wire [2:0]axi3_hbm_tester_M_AXI_ARSIZE;
  wire axi3_hbm_tester_M_AXI_ARVALID;
  wire [32:0]axi3_hbm_tester_M_AXI_AWADDR;
  wire [1:0]axi3_hbm_tester_M_AXI_AWBURST;
  wire [3:0]axi3_hbm_tester_M_AXI_AWLEN;
  wire axi3_hbm_tester_M_AXI_AWREADY;
  wire [2:0]axi3_hbm_tester_M_AXI_AWSIZE;
  wire axi3_hbm_tester_M_AXI_AWVALID;
  wire axi3_hbm_tester_M_AXI_BREADY;
  wire [1:0]axi3_hbm_tester_M_AXI_BRESP;
  wire axi3_hbm_tester_M_AXI_BVALID;
  wire [255:0]axi3_hbm_tester_M_AXI_RDATA;
  wire axi3_hbm_tester_M_AXI_RLAST;
  wire axi3_hbm_tester_M_AXI_RREADY;
  wire [1:0]axi3_hbm_tester_M_AXI_RRESP;
  wire axi3_hbm_tester_M_AXI_RVALID;
  wire [255:0]axi3_hbm_tester_M_AXI_WDATA;
  wire axi3_hbm_tester_M_AXI_WLAST;
  wire axi3_hbm_tester_M_AXI_WREADY;
  wire [31:0]axi3_hbm_tester_M_AXI_WSTRB;
  wire axi3_hbm_tester_M_AXI_WVALID;
  wire [32:0]axi3_hbm_tester_M_AXI_ARADDR;
  wire [1:0]axi3_hbm_tester_M_AXI_ARBURST;
  wire [3:0]axi3_hbm_tester_M_AXI_ARCACHE;
  wire [7:0]axi3_hbm_tester_M_AXI_ARLEN;
  wire [0:0]axi3_hbm_tester_M_AXI_ARLOCK;
  wire [2:0]axi3_hbm_tester_M_AXI_ARPROT;
  wire [3:0]axi3_hbm_tester_M_AXI_ARQOS;
  wire axi3_hbm_tester_M_AXI_ARREADY;
  wire [3:0]axi3_hbm_tester_M_AXI_ARREGION;
  wire [2:0]axi3_hbm_tester_M_AXI_ARSIZE;
  wire axi3_hbm_tester_M_AXI_ARVALID;
  wire [32:0]axi3_hbm_tester_M_AXI_AWADDR;
  wire [1:0]axi3_hbm_tester_M_AXI_AWBURST;
  wire [3:0]axi3_hbm_tester_M_AXI_AWCACHE;
  wire [7:0]axi3_hbm_tester_M_AXI_AWLEN;
  wire [0:0]axi3_hbm_tester_M_AXI_AWLOCK;
  wire [2:0]axi3_hbm_tester_M_AXI_AWPROT;
  wire [3:0]axi3_hbm_tester_M_AXI_AWQOS;
  wire axi3_hbm_tester_M_AXI_AWREADY;
  wire [3:0]axi3_hbm_tester_M_AXI_AWREGION;
  wire [2:0]axi3_hbm_tester_M_AXI_AWSIZE;
  wire axi3_hbm_tester_M_AXI_AWVALID;
  wire axi3_hbm_tester_M_AXI_BREADY;
  wire [1:0]axi3_hbm_tester_M_AXI_BRESP;
  wire axi3_hbm_tester_M_AXI_BVALID;
  wire [255:0]axi3_hbm_tester_M_AXI_RDATA;
  wire axi3_hbm_tester_M_AXI_RLAST;
  wire axi3_hbm_tester_M_AXI_RREADY;
  wire [1:0]axi3_hbm_tester_M_AXI_RRESP;
  wire axi3_hbm_tester_M_AXI_RVALID;
  wire [255:0]axi3_hbm_tester_M_AXI_WDATA;
  wire axi3_hbm_tester_M_AXI_WLAST;
  wire axi3_hbm_tester_M_AXI_WREADY;
  wire [31:0]axi3_hbm_tester_M_AXI_WSTRB;
  wire axi3_hbm_tester_M_AXI_WVALID;

  assign avr_ck_1 = avr_ck;
  assign avr_rx_1 = avr_rx;
  assign avr_tx = bci_inst_avr_tx;
  assign pcie_mgt_txn[15:0] = xdma_inst_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = xdma_inst_pcie_mgt_txp;
  assign refclk300_n_1 = refclk300_n;
  assign refclk300_p_1 = refclk300_p;
  assign sys_clk_n_1 = sys_clk_n;
  assign sys_clk_p_1 = sys_clk_p;
  assign sys_rst_n_1 = sys_rst_n;
  assign user_led_a0_l = user_led_a0_driver_inst_q;
  assign user_led_g0_l = user_led_g0_driver_inst_q;
  assign user_led_g1_l = user_led_g1_driver_inst_q;
  assign xdma_inst_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign xdma_inst_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  host_hbm_axi4_to_axi3_inst_0 axi4_to_axi3_inst
       (.aclk(refclk_bufg_inst_BUFG_O),
        .aresetn(reset300_sync_inst_out_resetn),
        .m_axi_araddr(axi4_to_axi3_inst_M_AXI_ARADDR),
        .m_axi_arburst(axi4_to_axi3_inst_M_AXI_ARBURST),
        .m_axi_arlen(axi4_to_axi3_inst_M_AXI_ARLEN),
        .m_axi_arready(axi4_to_axi3_inst_M_AXI_ARREADY),
        .m_axi_arsize(axi4_to_axi3_inst_M_AXI_ARSIZE),
        .m_axi_arvalid(axi4_to_axi3_inst_M_AXI_ARVALID),
        .m_axi_awaddr(axi4_to_axi3_inst_M_AXI_AWADDR),
        .m_axi_awburst(axi4_to_axi3_inst_M_AXI_AWBURST),
        .m_axi_awlen(axi4_to_axi3_inst_M_AXI_AWLEN),
        .m_axi_awready(axi4_to_axi3_inst_M_AXI_AWREADY),
        .m_axi_awsize(axi4_to_axi3_inst_M_AXI_AWSIZE),
        .m_axi_awvalid(axi4_to_axi3_inst_M_AXI_AWVALID),
        .m_axi_bready(axi4_to_axi3_inst_M_AXI_BREADY),
        .m_axi_bresp(axi4_to_axi3_inst_M_AXI_BRESP),
        .m_axi_bvalid(axi4_to_axi3_inst_M_AXI_BVALID),
        .m_axi_rdata(axi4_to_axi3_inst_M_AXI_RDATA),
        .m_axi_rlast(axi4_to_axi3_inst_M_AXI_RLAST),
        .m_axi_rready(axi4_to_axi3_inst_M_AXI_RREADY),
        .m_axi_rresp(axi4_to_axi3_inst_M_AXI_RRESP),
        .m_axi_rvalid(axi4_to_axi3_inst_M_AXI_RVALID),
        .m_axi_wdata(axi4_to_axi3_inst_M_AXI_WDATA),
        .m_axi_wlast(axi4_to_axi3_inst_M_AXI_WLAST),
        .m_axi_wready(axi4_to_axi3_inst_M_AXI_WREADY),
        .m_axi_wstrb(axi4_to_axi3_inst_M_AXI_WSTRB),
        .m_axi_wvalid(axi4_to_axi3_inst_M_AXI_WVALID),
        .s_axi_araddr(axi_512_to_256_inst_M_AXI_ARADDR),
        .s_axi_arburst(axi_512_to_256_inst_M_AXI_ARBURST),
        .s_axi_arcache(axi_512_to_256_inst_M_AXI_ARCACHE),
        .s_axi_arlen(axi_512_to_256_inst_M_AXI_ARLEN),
        .s_axi_arlock(axi_512_to_256_inst_M_AXI_ARLOCK),
        .s_axi_arprot(axi_512_to_256_inst_M_AXI_ARPROT),
        .s_axi_arqos(axi_512_to_256_inst_M_AXI_ARQOS),
        .s_axi_arready(axi_512_to_256_inst_M_AXI_ARREADY),
        .s_axi_arregion(axi_512_to_256_inst_M_AXI_ARREGION),
        .s_axi_arsize(axi_512_to_256_inst_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_512_to_256_inst_M_AXI_ARVALID),
        .s_axi_awaddr(axi_512_to_256_inst_M_AXI_AWADDR),
        .s_axi_awburst(axi_512_to_256_inst_M_AXI_AWBURST),
        .s_axi_awcache(axi_512_to_256_inst_M_AXI_AWCACHE),
        .s_axi_awlen(axi_512_to_256_inst_M_AXI_AWLEN),
        .s_axi_awlock(axi_512_to_256_inst_M_AXI_AWLOCK),
        .s_axi_awprot(axi_512_to_256_inst_M_AXI_AWPROT),
        .s_axi_awqos(axi_512_to_256_inst_M_AXI_AWQOS),
        .s_axi_awready(axi_512_to_256_inst_M_AXI_AWREADY),
        .s_axi_awregion(axi_512_to_256_inst_M_AXI_AWREGION),
        .s_axi_awsize(axi_512_to_256_inst_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_512_to_256_inst_M_AXI_AWVALID),
        .s_axi_bready(axi_512_to_256_inst_M_AXI_BREADY),
        .s_axi_bresp(axi_512_to_256_inst_M_AXI_BRESP),
        .s_axi_bvalid(axi_512_to_256_inst_M_AXI_BVALID),
        .s_axi_rdata(axi_512_to_256_inst_M_AXI_RDATA),
        .s_axi_rlast(axi_512_to_256_inst_M_AXI_RLAST),
        .s_axi_rready(axi_512_to_256_inst_M_AXI_RREADY),
        .s_axi_rresp(axi_512_to_256_inst_M_AXI_RRESP),
        .s_axi_rvalid(axi_512_to_256_inst_M_AXI_RVALID),
        .s_axi_wdata(axi_512_to_256_inst_M_AXI_WDATA),
        .s_axi_wlast(axi_512_to_256_inst_M_AXI_WLAST),
        .s_axi_wready(axi_512_to_256_inst_M_AXI_WREADY),
        .s_axi_wstrb(axi_512_to_256_inst_M_AXI_WSTRB),
        .s_axi_wvalid(axi_512_to_256_inst_M_AXI_WVALID));
  host_hbm_axi_512_to_256_inst_0 axi_512_to_256_inst
       (.m_axi_araddr(axi_512_to_256_inst_M_AXI_ARADDR),
        .m_axi_arburst(axi_512_to_256_inst_M_AXI_ARBURST),
        .m_axi_arcache(axi_512_to_256_inst_M_AXI_ARCACHE),
        .m_axi_arlen(axi_512_to_256_inst_M_AXI_ARLEN),
        .m_axi_arlock(axi_512_to_256_inst_M_AXI_ARLOCK),
        .m_axi_arprot(axi_512_to_256_inst_M_AXI_ARPROT),
        .m_axi_arqos(axi_512_to_256_inst_M_AXI_ARQOS),
        .m_axi_arready(axi_512_to_256_inst_M_AXI_ARREADY),
        .m_axi_arregion(axi_512_to_256_inst_M_AXI_ARREGION),
        .m_axi_arsize(axi_512_to_256_inst_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_512_to_256_inst_M_AXI_ARVALID),
        .m_axi_awaddr(axi_512_to_256_inst_M_AXI_AWADDR),
        .m_axi_awburst(axi_512_to_256_inst_M_AXI_AWBURST),
        .m_axi_awcache(axi_512_to_256_inst_M_AXI_AWCACHE),
        .m_axi_awlen(axi_512_to_256_inst_M_AXI_AWLEN),
        .m_axi_awlock(axi_512_to_256_inst_M_AXI_AWLOCK),
        .m_axi_awprot(axi_512_to_256_inst_M_AXI_AWPROT),
        .m_axi_awqos(axi_512_to_256_inst_M_AXI_AWQOS),
        .m_axi_awready(axi_512_to_256_inst_M_AXI_AWREADY),
        .m_axi_awregion(axi_512_to_256_inst_M_AXI_AWREGION),
        .m_axi_awsize(axi_512_to_256_inst_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_512_to_256_inst_M_AXI_AWVALID),
        .m_axi_bready(axi_512_to_256_inst_M_AXI_BREADY),
        .m_axi_bresp(axi_512_to_256_inst_M_AXI_BRESP),
        .m_axi_bvalid(axi_512_to_256_inst_M_AXI_BVALID),
        .m_axi_rdata(axi_512_to_256_inst_M_AXI_RDATA),
        .m_axi_rlast(axi_512_to_256_inst_M_AXI_RLAST),
        .m_axi_rready(axi_512_to_256_inst_M_AXI_RREADY),
        .m_axi_rresp(axi_512_to_256_inst_M_AXI_RRESP),
        .m_axi_rvalid(axi_512_to_256_inst_M_AXI_RVALID),
        .m_axi_wdata(axi_512_to_256_inst_M_AXI_WDATA),
        .m_axi_wlast(axi_512_to_256_inst_M_AXI_WLAST),
        .m_axi_wready(axi_512_to_256_inst_M_AXI_WREADY),
        .m_axi_wstrb(axi_512_to_256_inst_M_AXI_WSTRB),
        .m_axi_wvalid(axi_512_to_256_inst_M_AXI_WVALID),
        .s_axi_aclk(refclk_bufg_inst_BUFG_O),
        .s_axi_araddr(interconnect_inst_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_inst_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_inst_M00_AXI_ARCACHE),
        .s_axi_aresetn(reset300_sync_inst_out_resetn),
        .s_axi_arid(interconnect_inst_M00_AXI_ARID),
        .s_axi_arlen(interconnect_inst_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_inst_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_inst_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_inst_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_inst_M00_AXI_ARREADY),
        .s_axi_arregion(interconnect_inst_M00_AXI_ARREGION),
        .s_axi_arsize(interconnect_inst_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect_inst_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_inst_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_inst_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_inst_M00_AXI_AWCACHE),
        .s_axi_awid(interconnect_inst_M00_AXI_AWID),
        .s_axi_awlen(interconnect_inst_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_inst_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_inst_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_inst_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_inst_M00_AXI_AWREADY),
        .s_axi_awregion(interconnect_inst_M00_AXI_AWREGION),
        .s_axi_awsize(interconnect_inst_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect_inst_M00_AXI_AWVALID),
        .s_axi_bid(interconnect_inst_M00_AXI_BID),
        .s_axi_bready(interconnect_inst_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_inst_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_inst_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_inst_M00_AXI_RDATA),
        .s_axi_rid(interconnect_inst_M00_AXI_RID),
        .s_axi_rlast(interconnect_inst_M00_AXI_RLAST),
        .s_axi_rready(interconnect_inst_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_inst_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_inst_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_inst_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_inst_M00_AXI_WLAST),
        .s_axi_wready(interconnect_inst_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_inst_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_inst_M00_AXI_WVALID));
  host_hbm_bci_inst_0 bci_inst
       (.aclk(xdma_inst_axi_aclk),
        .aresetn(xdma_inst_axi_aresetn),
        .avr_ck(avr_ck_1),
        .avr_rx(avr_rx_1),
        .avr_tx(bci_inst_avr_tx),
        .axil_araddr(xdma_inst_M_AXI_LITE_ARADDR[11:0]),
        .axil_arready(xdma_inst_M_AXI_LITE_ARREADY),
        .axil_arvalid(xdma_inst_M_AXI_LITE_ARVALID),
        .axil_awaddr(xdma_inst_M_AXI_LITE_AWADDR[11:0]),
        .axil_awready(xdma_inst_M_AXI_LITE_AWREADY),
        .axil_awvalid(xdma_inst_M_AXI_LITE_AWVALID),
        .axil_bready(xdma_inst_M_AXI_LITE_BREADY),
        .axil_bresp(xdma_inst_M_AXI_LITE_BRESP),
        .axil_bvalid(xdma_inst_M_AXI_LITE_BVALID),
        .axil_rdata(xdma_inst_M_AXI_LITE_RDATA),
        .axil_rready(xdma_inst_M_AXI_LITE_RREADY),
        .axil_rresp(xdma_inst_M_AXI_LITE_RRESP),
        .axil_rvalid(xdma_inst_M_AXI_LITE_RVALID),
        .axil_wdata(xdma_inst_M_AXI_LITE_WDATA),
        .axil_wready(xdma_inst_M_AXI_LITE_WREADY),
        .axil_wstrb(xdma_inst_M_AXI_LITE_WSTRB),
        .axil_wvalid(xdma_inst_M_AXI_LITE_WVALID),
        .irq(bci_inst_irq));
  axi_master_tester #(
        .AXI_ADDR_WIDTH(32)
      , .AXI_DATA_WIDTH(256)
  ) axi_master_test_i (
        .clk_i (clk)
      , .rst_ni(rst_n)

      , .m_axi_awid   (axi_awid)
      , .m_axi_awaddr (axi_awaddr)
      , .m_axi_awlen  (axi_awlen)
      , .m_axi_awsize (axi_awsize)
      , .m_axi_awburst(axi_awburst)
      , .m_axi_awlock (axi_awlock)
      , .m_axi_awcache(axi_awcache)
      , .m_axi_awprot (axi_awprot)
      , .m_axi_awvalid(axi_awvalid)
      , .m_axi_awready(axi_awready)
      , .m_axi_wdata  (axi_wdata)
      , .m_axi_wstrb  (axi_wstrb)
      , .m_axi_wlast  (axi_wlast)
      , .m_axi_wvalid (axi_wvalid)
      , .m_axi_wready (axi_wready)
      , .m_axi_bid    (axi_bid)
      , .m_axi_bresp  (axi_bresp)
      , .m_axi_bvalid (axi_bvalid)
      , .m_axi_bready (axi_bready)
      , .m_axi_arid   (axi_arid)
      , .m_axi_araddr (axi_araddr)
      , .m_axi_arlen  (axi_arlen)
      , .m_axi_arsize (axi_arsize)
      , .m_axi_arburst(axi_arburst)
      , .m_axi_arlock (axi_arlock)
      , .m_axi_arcache(axi_arcache)
      , .m_axi_arprot (axi_arprot)
      , .m_axi_arvalid(axi_arvalid)
      , .m_axi_arready(axi_arready)
      , .m_axi_rid    (axi_rid)
      , .m_axi_rdata  (axi_rdata)
      , .m_axi_rresp  (axi_rresp)
      , .m_axi_rlast  (axi_rlast)
      , .m_axi_rvalid (axi_rvalid)
      , .m_axi_rready (axi_rready)
  );
  host_hbm_hbm_0 hbm
       (.APB_0_PADDR(zero22_inst_dout),
        .APB_0_PCLK(refclk_bufg_div4_inst_refclk75),
        .APB_0_PENABLE(logic0_inst_dout),
        .APB_0_PRESET_N(reset75_sync_inst_out_resetn),
        .APB_0_PSEL(logic0_inst_dout),
        .APB_0_PWDATA(zero32_inst_dout),
        .APB_0_PWRITE(logic0_inst_dout),
        .APB_1_PADDR(zero22_inst_dout),
        .APB_1_PCLK(refclk_bufg_div4_inst_refclk75),
        .APB_1_PENABLE(logic0_inst_dout),
        .APB_1_PRESET_N(reset75_sync_inst_out_resetn),
        .APB_1_PSEL(logic0_inst_dout),
        .APB_1_PWDATA(zero32_inst_dout),
        .APB_1_PWRITE(logic0_inst_dout),
        .AXI_23_ACLK(refclk_bufg_inst_BUFG_O),
        .AXI_23_ARADDR(axi4_to_axi3_inst_M_AXI_ARADDR),
        .AXI_23_ARBURST(axi4_to_axi3_inst_M_AXI_ARBURST),
        .AXI_23_ARESET_N(reset300_sync_inst_out_resetn),
        .AXI_23_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_23_ARLEN(axi4_to_axi3_inst_M_AXI_ARLEN),
        .AXI_23_ARREADY(axi4_to_axi3_inst_M_AXI_ARREADY),
        .AXI_23_ARSIZE(axi4_to_axi3_inst_M_AXI_ARSIZE),
        .AXI_23_ARVALID(axi4_to_axi3_inst_M_AXI_ARVALID),
        .AXI_23_AWADDR(axi4_to_axi3_inst_M_AXI_AWADDR),
        .AXI_23_AWBURST(axi4_to_axi3_inst_M_AXI_AWBURST),
        .AXI_23_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_23_AWLEN(axi4_to_axi3_inst_M_AXI_AWLEN),
        .AXI_23_AWREADY(axi4_to_axi3_inst_M_AXI_AWREADY),
        .AXI_23_AWSIZE(axi4_to_axi3_inst_M_AXI_AWSIZE),
        .AXI_23_AWVALID(axi4_to_axi3_inst_M_AXI_AWVALID),
        .AXI_23_BREADY(axi4_to_axi3_inst_M_AXI_BREADY),
        .AXI_23_BRESP(axi4_to_axi3_inst_M_AXI_BRESP),
        .AXI_23_BVALID(axi4_to_axi3_inst_M_AXI_BVALID),
        .AXI_23_RDATA(axi4_to_axi3_inst_M_AXI_RDATA),
        .AXI_23_RLAST(axi4_to_axi3_inst_M_AXI_RLAST),
        .AXI_23_RREADY(axi4_to_axi3_inst_M_AXI_RREADY),
        .AXI_23_RRESP(axi4_to_axi3_inst_M_AXI_RRESP),
        .AXI_23_RVALID(axi4_to_axi3_inst_M_AXI_RVALID),
        .AXI_23_WDATA(axi4_to_axi3_inst_M_AXI_WDATA),
        .AXI_23_WDATA_PARITY({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXI_23_WLAST(axi4_to_axi3_inst_M_AXI_WLAST),
        .AXI_23_WREADY(axi4_to_axi3_inst_M_AXI_WREADY),
        .AXI_23_WSTRB(axi4_to_axi3_inst_M_AXI_WSTRB),
        .AXI_23_WVALID(axi4_to_axi3_inst_M_AXI_WVALID),
        .HBM_REF_CLK_0(refclk_bufg_inst_BUFG_O),
        .HBM_REF_CLK_1(refclk_bufg_inst_BUFG_O),
        .apb_complete_0(hbm_apb_complete_0),
        .apb_complete_1(hbm_apb_complete_1));
  host_hbm_interconnect_inst_0 interconnect_inst
       (.ACLK(xdma_inst_axi_aclk),
        .ARESETN(xdma_inst_axi_aresetn),
        .M00_ACLK(refclk_bufg_inst_BUFG_O),
        .M00_ARESETN(reset300_sync_inst_out_resetn),
        .M00_AXI_araddr(interconnect_inst_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_inst_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_inst_M00_AXI_ARCACHE),
        .M00_AXI_arid(interconnect_inst_M00_AXI_ARID),
        .M00_AXI_arlen(interconnect_inst_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_inst_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_inst_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_inst_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_inst_M00_AXI_ARREADY),
        .M00_AXI_arregion(interconnect_inst_M00_AXI_ARREGION),
        .M00_AXI_arsize(interconnect_inst_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect_inst_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_inst_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_inst_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_inst_M00_AXI_AWCACHE),
        .M00_AXI_awid(interconnect_inst_M00_AXI_AWID),
        .M00_AXI_awlen(interconnect_inst_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_inst_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_inst_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_inst_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_inst_M00_AXI_AWREADY),
        .M00_AXI_awregion(interconnect_inst_M00_AXI_AWREGION),
        .M00_AXI_awsize(interconnect_inst_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect_inst_M00_AXI_AWVALID),
        .M00_AXI_bid(interconnect_inst_M00_AXI_BID),
        .M00_AXI_bready(interconnect_inst_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_inst_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_inst_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_inst_M00_AXI_RDATA),
        .M00_AXI_rid(interconnect_inst_M00_AXI_RID),
        .M00_AXI_rlast(interconnect_inst_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_inst_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_inst_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_inst_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_inst_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_inst_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_inst_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_inst_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_inst_M00_AXI_WVALID),
        .S00_ACLK(xdma_inst_axi_aclk),
        .S00_ARESETN(xdma_inst_axi_aresetn),
        .S00_AXI_araddr(xdma_inst_M_AXI_ARADDR),
        .S00_AXI_arburst(xdma_inst_M_AXI_ARBURST),
        .S00_AXI_arcache(xdma_inst_M_AXI_ARCACHE),
        .S00_AXI_arid(xdma_inst_M_AXI_ARID),
        .S00_AXI_arlen(xdma_inst_M_AXI_ARLEN),
        .S00_AXI_arlock(xdma_inst_M_AXI_ARLOCK),
        .S00_AXI_arprot(xdma_inst_M_AXI_ARPROT),
        .S00_AXI_arready(xdma_inst_M_AXI_ARREADY),
        .S00_AXI_arsize(xdma_inst_M_AXI_ARSIZE),
        .S00_AXI_arvalid(xdma_inst_M_AXI_ARVALID),
        .S00_AXI_awaddr(xdma_inst_M_AXI_AWADDR),
        .S00_AXI_awburst(xdma_inst_M_AXI_AWBURST),
        .S00_AXI_awcache(xdma_inst_M_AXI_AWCACHE),
        .S00_AXI_awid(xdma_inst_M_AXI_AWID),
        .S00_AXI_awlen(xdma_inst_M_AXI_AWLEN),
        .S00_AXI_awlock(xdma_inst_M_AXI_AWLOCK),
        .S00_AXI_awprot(xdma_inst_M_AXI_AWPROT),
        .S00_AXI_awready(xdma_inst_M_AXI_AWREADY),
        .S00_AXI_awsize(xdma_inst_M_AXI_AWSIZE),
        .S00_AXI_awvalid(xdma_inst_M_AXI_AWVALID),
        .S00_AXI_bid(xdma_inst_M_AXI_BID),
        .S00_AXI_bready(xdma_inst_M_AXI_BREADY),
        .S00_AXI_bresp(xdma_inst_M_AXI_BRESP),
        .S00_AXI_bvalid(xdma_inst_M_AXI_BVALID),
        .S00_AXI_rdata(xdma_inst_M_AXI_RDATA),
        .S00_AXI_rid(xdma_inst_M_AXI_RID),
        .S00_AXI_rlast(xdma_inst_M_AXI_RLAST),
        .S00_AXI_rready(xdma_inst_M_AXI_RREADY),
        .S00_AXI_rresp(xdma_inst_M_AXI_RRESP),
        .S00_AXI_rvalid(xdma_inst_M_AXI_RVALID),
        .S00_AXI_wdata(xdma_inst_M_AXI_WDATA),
        .S00_AXI_wlast(xdma_inst_M_AXI_WLAST),
        .S00_AXI_wready(xdma_inst_M_AXI_WREADY),
        .S00_AXI_wstrb(xdma_inst_M_AXI_WSTRB),
        .S00_AXI_wvalid(xdma_inst_M_AXI_WVALID),
        .S01_ACLK(xdma_inst_axi_aclk),
        .S01_ARESETN(xdma_inst_axi_aresetn),
        .S01_AXI_araddr(xdma_inst_M_AXI_BYPASS_ARADDR),
        .S01_AXI_arburst(xdma_inst_M_AXI_BYPASS_ARBURST),
        .S01_AXI_arcache(xdma_inst_M_AXI_BYPASS_ARCACHE),
        .S01_AXI_arid(xdma_inst_M_AXI_BYPASS_ARID),
        .S01_AXI_arlen(xdma_inst_M_AXI_BYPASS_ARLEN),
        .S01_AXI_arlock(xdma_inst_M_AXI_BYPASS_ARLOCK),
        .S01_AXI_arprot(xdma_inst_M_AXI_BYPASS_ARPROT),
        .S01_AXI_arready(xdma_inst_M_AXI_BYPASS_ARREADY),
        .S01_AXI_arsize(xdma_inst_M_AXI_BYPASS_ARSIZE),
        .S01_AXI_arvalid(xdma_inst_M_AXI_BYPASS_ARVALID),
        .S01_AXI_awaddr(xdma_inst_M_AXI_BYPASS_AWADDR),
        .S01_AXI_awburst(xdma_inst_M_AXI_BYPASS_AWBURST),
        .S01_AXI_awcache(xdma_inst_M_AXI_BYPASS_AWCACHE),
        .S01_AXI_awid(xdma_inst_M_AXI_BYPASS_AWID),
        .S01_AXI_awlen(xdma_inst_M_AXI_BYPASS_AWLEN),
        .S01_AXI_awlock(xdma_inst_M_AXI_BYPASS_AWLOCK),
        .S01_AXI_awprot(xdma_inst_M_AXI_BYPASS_AWPROT),
        .S01_AXI_awready(xdma_inst_M_AXI_BYPASS_AWREADY),
        .S01_AXI_awsize(xdma_inst_M_AXI_BYPASS_AWSIZE),
        .S01_AXI_awvalid(xdma_inst_M_AXI_BYPASS_AWVALID),
        .S01_AXI_bid(xdma_inst_M_AXI_BYPASS_BID),
        .S01_AXI_bready(xdma_inst_M_AXI_BYPASS_BREADY),
        .S01_AXI_bresp(xdma_inst_M_AXI_BYPASS_BRESP),
        .S01_AXI_bvalid(xdma_inst_M_AXI_BYPASS_BVALID),
        .S01_AXI_rdata(xdma_inst_M_AXI_BYPASS_RDATA),
        .S01_AXI_rid(xdma_inst_M_AXI_BYPASS_RID),
        .S01_AXI_rlast(xdma_inst_M_AXI_BYPASS_RLAST),
        .S01_AXI_rready(xdma_inst_M_AXI_BYPASS_RREADY),
        .S01_AXI_rresp(xdma_inst_M_AXI_BYPASS_RRESP),
        .S01_AXI_rvalid(xdma_inst_M_AXI_BYPASS_RVALID),
        .S01_AXI_wdata(xdma_inst_M_AXI_BYPASS_WDATA),
        .S01_AXI_wlast(xdma_inst_M_AXI_BYPASS_WLAST),
        .S01_AXI_wready(xdma_inst_M_AXI_BYPASS_WREADY),
        .S01_AXI_wstrb(xdma_inst_M_AXI_BYPASS_WSTRB),
        .S01_AXI_wvalid(xdma_inst_M_AXI_BYPASS_WVALID));
  host_hbm_logic0_inst_0 logic0_inst
       (.dout(logic0_inst_dout));
  host_hbm_logic1_inst_0 logic1_inst
       (.dout(logic1_inst_dout));
  host_hbm_pcie_clk_buf_inst_0 pcie_clk_buf_inst
       (.IBUF_DS_N(sys_clk_n_1),
        .IBUF_DS_ODIV2(pcie_clk_buf_inst_IBUF_DS_ODIV2),
        .IBUF_DS_P(sys_clk_p_1),
        .IBUF_OUT(pcie_clk_buf_inst_IBUF_OUT));
  host_hbm_refclk_bufg_div4_inst_0 refclk_bufg_div4_inst
       (.refclk300(refclk_ibufds_inst_IBUF_OUT),
        .refclk75(refclk_bufg_div4_inst_refclk75));
  host_hbm_refclk_bufg_inst_0 refclk_bufg_inst
       (.BUFG_I(refclk_ibufds_inst_IBUF_OUT),
        .BUFG_O(refclk_bufg_inst_BUFG_O));
  host_hbm_refclk_ibufds_inst_0 refclk_ibufds_inst
       (.IBUF_DS_N(refclk300_n_1),
        .IBUF_DS_P(refclk300_p_1),
        .IBUF_OUT(refclk_ibufds_inst_IBUF_OUT));
  host_hbm_reset300_sync_inst_0 reset300_sync_inst
       (.clk(refclk_bufg_inst_BUFG_O),
        .in_resetn(xdma_inst_axi_aresetn),
        .out_resetn(reset300_sync_inst_out_resetn));
  host_hbm_reset75_sync_inst_0 reset75_sync_inst
       (.clk(refclk_bufg_div4_inst_refclk75),
        .in_resetn(xdma_inst_axi_aresetn),
        .out_resetn(reset75_sync_inst_out_resetn));
  host_hbm_user_led_a0_driver_inst_0 user_led_a0_driver_inst
       (.clk(refclk_bufg_div4_inst_refclk75),
        .d(xdma_inst_axi_aresetn),
        .q(user_led_a0_driver_inst_q));
  host_hbm_user_led_g0_driver_inst_0 user_led_g0_driver_inst
       (.clk(refclk_bufg_div4_inst_refclk75),
        .d(hbm_apb_complete_0),
        .q(user_led_g0_driver_inst_q));
  host_hbm_user_led_g1_driver_inst_0 user_led_g1_driver_inst
       (.clk(refclk_bufg_div4_inst_refclk75),
        .d(hbm_apb_complete_1),
        .q(user_led_g1_driver_inst_q));
  host_hbm_xdma_inst_0 xdma_inst
       (.axi_aclk(xdma_inst_axi_aclk),
        .axi_aresetn(xdma_inst_axi_aresetn),
        .cap_gnt(logic1_inst_dout),
        .cap_rel(logic0_inst_dout),
        .m_axi_araddr(xdma_inst_M_AXI_ARADDR),
        .m_axi_arburst(xdma_inst_M_AXI_ARBURST),
        .m_axi_arcache(xdma_inst_M_AXI_ARCACHE),
        .m_axi_arid(xdma_inst_M_AXI_ARID),
        .m_axi_arlen(xdma_inst_M_AXI_ARLEN),
        .m_axi_arlock(xdma_inst_M_AXI_ARLOCK),
        .m_axi_arprot(xdma_inst_M_AXI_ARPROT),
        .m_axi_arready(xdma_inst_M_AXI_ARREADY),
        .m_axi_arsize(xdma_inst_M_AXI_ARSIZE),
        .m_axi_arvalid(xdma_inst_M_AXI_ARVALID),
        .m_axi_awaddr(xdma_inst_M_AXI_AWADDR),
        .m_axi_awburst(xdma_inst_M_AXI_AWBURST),
        .m_axi_awcache(xdma_inst_M_AXI_AWCACHE),
        .m_axi_awid(xdma_inst_M_AXI_AWID),
        .m_axi_awlen(xdma_inst_M_AXI_AWLEN),
        .m_axi_awlock(xdma_inst_M_AXI_AWLOCK),
        .m_axi_awprot(xdma_inst_M_AXI_AWPROT),
        .m_axi_awready(xdma_inst_M_AXI_AWREADY),
        .m_axi_awsize(xdma_inst_M_AXI_AWSIZE),
        .m_axi_awvalid(xdma_inst_M_AXI_AWVALID),
        .m_axi_bid(xdma_inst_M_AXI_BID),
        .m_axi_bready(xdma_inst_M_AXI_BREADY),
        .m_axi_bresp(xdma_inst_M_AXI_BRESP),
        .m_axi_bvalid(xdma_inst_M_AXI_BVALID),
        .m_axi_rdata(xdma_inst_M_AXI_RDATA),
        .m_axi_rid(xdma_inst_M_AXI_RID),
        .m_axi_rlast(xdma_inst_M_AXI_RLAST),
        .m_axi_rready(xdma_inst_M_AXI_RREADY),
        .m_axi_rresp(xdma_inst_M_AXI_RRESP),
        .m_axi_rvalid(xdma_inst_M_AXI_RVALID),
        .m_axi_wdata(xdma_inst_M_AXI_WDATA),
        .m_axi_wlast(xdma_inst_M_AXI_WLAST),
        .m_axi_wready(xdma_inst_M_AXI_WREADY),
        .m_axi_wstrb(xdma_inst_M_AXI_WSTRB),
        .m_axi_wvalid(xdma_inst_M_AXI_WVALID),
        .m_axib_araddr(xdma_inst_M_AXI_BYPASS_ARADDR),
        .m_axib_arburst(xdma_inst_M_AXI_BYPASS_ARBURST),
        .m_axib_arcache(xdma_inst_M_AXI_BYPASS_ARCACHE),
        .m_axib_arid(xdma_inst_M_AXI_BYPASS_ARID),
        .m_axib_arlen(xdma_inst_M_AXI_BYPASS_ARLEN),
        .m_axib_arlock(xdma_inst_M_AXI_BYPASS_ARLOCK),
        .m_axib_arprot(xdma_inst_M_AXI_BYPASS_ARPROT),
        .m_axib_arready(xdma_inst_M_AXI_BYPASS_ARREADY),
        .m_axib_arsize(xdma_inst_M_AXI_BYPASS_ARSIZE),
        .m_axib_arvalid(xdma_inst_M_AXI_BYPASS_ARVALID),
        .m_axib_awaddr(xdma_inst_M_AXI_BYPASS_AWADDR),
        .m_axib_awburst(xdma_inst_M_AXI_BYPASS_AWBURST),
        .m_axib_awcache(xdma_inst_M_AXI_BYPASS_AWCACHE),
        .m_axib_awid(xdma_inst_M_AXI_BYPASS_AWID),
        .m_axib_awlen(xdma_inst_M_AXI_BYPASS_AWLEN),
        .m_axib_awlock(xdma_inst_M_AXI_BYPASS_AWLOCK),
        .m_axib_awprot(xdma_inst_M_AXI_BYPASS_AWPROT),
        .m_axib_awready(xdma_inst_M_AXI_BYPASS_AWREADY),
        .m_axib_awsize(xdma_inst_M_AXI_BYPASS_AWSIZE),
        .m_axib_awvalid(xdma_inst_M_AXI_BYPASS_AWVALID),
        .m_axib_bid(xdma_inst_M_AXI_BYPASS_BID),
        .m_axib_bready(xdma_inst_M_AXI_BYPASS_BREADY),
        .m_axib_bresp(xdma_inst_M_AXI_BYPASS_BRESP),
        .m_axib_bvalid(xdma_inst_M_AXI_BYPASS_BVALID),
        .m_axib_rdata(xdma_inst_M_AXI_BYPASS_RDATA),
        .m_axib_rid(xdma_inst_M_AXI_BYPASS_RID),
        .m_axib_rlast(xdma_inst_M_AXI_BYPASS_RLAST),
        .m_axib_rready(xdma_inst_M_AXI_BYPASS_RREADY),
        .m_axib_rresp(xdma_inst_M_AXI_BYPASS_RRESP),
        .m_axib_rvalid(xdma_inst_M_AXI_BYPASS_RVALID),
        .m_axib_wdata(xdma_inst_M_AXI_BYPASS_WDATA),
        .m_axib_wlast(xdma_inst_M_AXI_BYPASS_WLAST),
        .m_axib_wready(xdma_inst_M_AXI_BYPASS_WREADY),
        .m_axib_wstrb(xdma_inst_M_AXI_BYPASS_WSTRB),
        .m_axib_wvalid(xdma_inst_M_AXI_BYPASS_WVALID),
        .m_axil_araddr(xdma_inst_M_AXI_LITE_ARADDR),
        .m_axil_arready(xdma_inst_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(xdma_inst_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(xdma_inst_M_AXI_LITE_AWADDR),
        .m_axil_awready(xdma_inst_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(xdma_inst_M_AXI_LITE_AWVALID),
        .m_axil_bready(xdma_inst_M_AXI_LITE_BREADY),
        .m_axil_bresp(xdma_inst_M_AXI_LITE_BRESP),
        .m_axil_bvalid(xdma_inst_M_AXI_LITE_BVALID),
        .m_axil_rdata(xdma_inst_M_AXI_LITE_RDATA),
        .m_axil_rready(xdma_inst_M_AXI_LITE_RREADY),
        .m_axil_rresp(xdma_inst_M_AXI_LITE_RRESP),
        .m_axil_rvalid(xdma_inst_M_AXI_LITE_RVALID),
        .m_axil_wdata(xdma_inst_M_AXI_LITE_WDATA),
        .m_axil_wready(xdma_inst_M_AXI_LITE_WREADY),
        .m_axil_wstrb(xdma_inst_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(xdma_inst_M_AXI_LITE_WVALID),
        .pci_exp_rxn(xdma_inst_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_inst_pcie_mgt_rxp),
        .pci_exp_txn(xdma_inst_pcie_mgt_txn),
        .pci_exp_txp(xdma_inst_pcie_mgt_txp),
        .sys_clk(pcie_clk_buf_inst_IBUF_DS_ODIV2),
        .sys_clk_gt(pcie_clk_buf_inst_IBUF_OUT),
        .sys_rst_n(sys_rst_n_1),
        .usr_irq_req(bci_inst_irq));
  host_hbm_zero22_inst_0 zero22_inst
       (.dout(zero22_inst_dout));
  host_hbm_zero32_inst_0 zero32_inst
       (.dout(zero32_inst_dout));
endmodule

module host_hbm_interconnect_inst_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [32:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [4:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [32:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [4:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [4:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [4:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [3:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [3:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [3:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output [3:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire interconnect_inst_ACLK_net;
  wire interconnect_inst_ARESETN_net;
  wire [63:0]interconnect_inst_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_inst_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_inst_to_s00_couplers_ARCACHE;
  wire [3:0]interconnect_inst_to_s00_couplers_ARID;
  wire [7:0]interconnect_inst_to_s00_couplers_ARLEN;
  wire [0:0]interconnect_inst_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_inst_to_s00_couplers_ARPROT;
  wire interconnect_inst_to_s00_couplers_ARREADY;
  wire [2:0]interconnect_inst_to_s00_couplers_ARSIZE;
  wire interconnect_inst_to_s00_couplers_ARVALID;
  wire [63:0]interconnect_inst_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_inst_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_inst_to_s00_couplers_AWCACHE;
  wire [3:0]interconnect_inst_to_s00_couplers_AWID;
  wire [7:0]interconnect_inst_to_s00_couplers_AWLEN;
  wire [0:0]interconnect_inst_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_inst_to_s00_couplers_AWPROT;
  wire interconnect_inst_to_s00_couplers_AWREADY;
  wire [2:0]interconnect_inst_to_s00_couplers_AWSIZE;
  wire interconnect_inst_to_s00_couplers_AWVALID;
  wire [3:0]interconnect_inst_to_s00_couplers_BID;
  wire interconnect_inst_to_s00_couplers_BREADY;
  wire [1:0]interconnect_inst_to_s00_couplers_BRESP;
  wire interconnect_inst_to_s00_couplers_BVALID;
  wire [511:0]interconnect_inst_to_s00_couplers_RDATA;
  wire [3:0]interconnect_inst_to_s00_couplers_RID;
  wire interconnect_inst_to_s00_couplers_RLAST;
  wire interconnect_inst_to_s00_couplers_RREADY;
  wire [1:0]interconnect_inst_to_s00_couplers_RRESP;
  wire interconnect_inst_to_s00_couplers_RVALID;
  wire [511:0]interconnect_inst_to_s00_couplers_WDATA;
  wire interconnect_inst_to_s00_couplers_WLAST;
  wire interconnect_inst_to_s00_couplers_WREADY;
  wire [63:0]interconnect_inst_to_s00_couplers_WSTRB;
  wire interconnect_inst_to_s00_couplers_WVALID;
  wire [63:0]interconnect_inst_to_s01_couplers_ARADDR;
  wire [1:0]interconnect_inst_to_s01_couplers_ARBURST;
  wire [3:0]interconnect_inst_to_s01_couplers_ARCACHE;
  wire [3:0]interconnect_inst_to_s01_couplers_ARID;
  wire [7:0]interconnect_inst_to_s01_couplers_ARLEN;
  wire [0:0]interconnect_inst_to_s01_couplers_ARLOCK;
  wire [2:0]interconnect_inst_to_s01_couplers_ARPROT;
  wire interconnect_inst_to_s01_couplers_ARREADY;
  wire [2:0]interconnect_inst_to_s01_couplers_ARSIZE;
  wire interconnect_inst_to_s01_couplers_ARVALID;
  wire [63:0]interconnect_inst_to_s01_couplers_AWADDR;
  wire [1:0]interconnect_inst_to_s01_couplers_AWBURST;
  wire [3:0]interconnect_inst_to_s01_couplers_AWCACHE;
  wire [3:0]interconnect_inst_to_s01_couplers_AWID;
  wire [7:0]interconnect_inst_to_s01_couplers_AWLEN;
  wire [0:0]interconnect_inst_to_s01_couplers_AWLOCK;
  wire [2:0]interconnect_inst_to_s01_couplers_AWPROT;
  wire interconnect_inst_to_s01_couplers_AWREADY;
  wire [2:0]interconnect_inst_to_s01_couplers_AWSIZE;
  wire interconnect_inst_to_s01_couplers_AWVALID;
  wire [3:0]interconnect_inst_to_s01_couplers_BID;
  wire interconnect_inst_to_s01_couplers_BREADY;
  wire [1:0]interconnect_inst_to_s01_couplers_BRESP;
  wire interconnect_inst_to_s01_couplers_BVALID;
  wire [511:0]interconnect_inst_to_s01_couplers_RDATA;
  wire [3:0]interconnect_inst_to_s01_couplers_RID;
  wire interconnect_inst_to_s01_couplers_RLAST;
  wire interconnect_inst_to_s01_couplers_RREADY;
  wire [1:0]interconnect_inst_to_s01_couplers_RRESP;
  wire interconnect_inst_to_s01_couplers_RVALID;
  wire [511:0]interconnect_inst_to_s01_couplers_WDATA;
  wire interconnect_inst_to_s01_couplers_WLAST;
  wire interconnect_inst_to_s01_couplers_WREADY;
  wire [63:0]interconnect_inst_to_s01_couplers_WSTRB;
  wire interconnect_inst_to_s01_couplers_WVALID;
  wire [32:0]m00_couplers_to_interconnect_inst_ARADDR;
  wire [1:0]m00_couplers_to_interconnect_inst_ARBURST;
  wire [3:0]m00_couplers_to_interconnect_inst_ARCACHE;
  wire [4:0]m00_couplers_to_interconnect_inst_ARID;
  wire [7:0]m00_couplers_to_interconnect_inst_ARLEN;
  wire [0:0]m00_couplers_to_interconnect_inst_ARLOCK;
  wire [2:0]m00_couplers_to_interconnect_inst_ARPROT;
  wire [3:0]m00_couplers_to_interconnect_inst_ARQOS;
  wire m00_couplers_to_interconnect_inst_ARREADY;
  wire [3:0]m00_couplers_to_interconnect_inst_ARREGION;
  wire [2:0]m00_couplers_to_interconnect_inst_ARSIZE;
  wire m00_couplers_to_interconnect_inst_ARVALID;
  wire [32:0]m00_couplers_to_interconnect_inst_AWADDR;
  wire [1:0]m00_couplers_to_interconnect_inst_AWBURST;
  wire [3:0]m00_couplers_to_interconnect_inst_AWCACHE;
  wire [4:0]m00_couplers_to_interconnect_inst_AWID;
  wire [7:0]m00_couplers_to_interconnect_inst_AWLEN;
  wire [0:0]m00_couplers_to_interconnect_inst_AWLOCK;
  wire [2:0]m00_couplers_to_interconnect_inst_AWPROT;
  wire [3:0]m00_couplers_to_interconnect_inst_AWQOS;
  wire m00_couplers_to_interconnect_inst_AWREADY;
  wire [3:0]m00_couplers_to_interconnect_inst_AWREGION;
  wire [2:0]m00_couplers_to_interconnect_inst_AWSIZE;
  wire m00_couplers_to_interconnect_inst_AWVALID;
  wire [4:0]m00_couplers_to_interconnect_inst_BID;
  wire m00_couplers_to_interconnect_inst_BREADY;
  wire [1:0]m00_couplers_to_interconnect_inst_BRESP;
  wire m00_couplers_to_interconnect_inst_BVALID;
  wire [511:0]m00_couplers_to_interconnect_inst_RDATA;
  wire [4:0]m00_couplers_to_interconnect_inst_RID;
  wire m00_couplers_to_interconnect_inst_RLAST;
  wire m00_couplers_to_interconnect_inst_RREADY;
  wire [1:0]m00_couplers_to_interconnect_inst_RRESP;
  wire m00_couplers_to_interconnect_inst_RVALID;
  wire [511:0]m00_couplers_to_interconnect_inst_WDATA;
  wire m00_couplers_to_interconnect_inst_WLAST;
  wire m00_couplers_to_interconnect_inst_WREADY;
  wire [63:0]m00_couplers_to_interconnect_inst_WSTRB;
  wire m00_couplers_to_interconnect_inst_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [3:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [3:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [4:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [4:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [3:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [3:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire [9:5]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [9:5]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [4:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [4:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [4:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [4:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[32:0] = m00_couplers_to_interconnect_inst_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_interconnect_inst_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_interconnect_inst_ARCACHE;
  assign M00_AXI_arid[4:0] = m00_couplers_to_interconnect_inst_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_interconnect_inst_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_interconnect_inst_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_interconnect_inst_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_interconnect_inst_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_interconnect_inst_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_interconnect_inst_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_inst_ARVALID;
  assign M00_AXI_awaddr[32:0] = m00_couplers_to_interconnect_inst_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_interconnect_inst_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_interconnect_inst_AWCACHE;
  assign M00_AXI_awid[4:0] = m00_couplers_to_interconnect_inst_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_interconnect_inst_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_interconnect_inst_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_interconnect_inst_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_interconnect_inst_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_interconnect_inst_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_interconnect_inst_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_inst_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_inst_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_inst_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_interconnect_inst_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_interconnect_inst_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_interconnect_inst_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_inst_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_inst_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_inst_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[3:0] = interconnect_inst_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = interconnect_inst_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_inst_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = interconnect_inst_to_s00_couplers_RDATA;
  assign S00_AXI_rid[3:0] = interconnect_inst_to_s00_couplers_RID;
  assign S00_AXI_rlast = interconnect_inst_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_inst_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_inst_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_inst_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = interconnect_inst_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = interconnect_inst_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[3:0] = interconnect_inst_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = interconnect_inst_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = interconnect_inst_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[511:0] = interconnect_inst_to_s01_couplers_RDATA;
  assign S01_AXI_rid[3:0] = interconnect_inst_to_s01_couplers_RID;
  assign S01_AXI_rlast = interconnect_inst_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = interconnect_inst_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = interconnect_inst_to_s01_couplers_RVALID;
  assign S01_AXI_wready = interconnect_inst_to_s01_couplers_WREADY;
  assign interconnect_inst_ACLK_net = ACLK;
  assign interconnect_inst_ARESETN_net = ARESETN;
  assign interconnect_inst_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign interconnect_inst_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_inst_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_inst_to_s00_couplers_ARID = S00_AXI_arid[3:0];
  assign interconnect_inst_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_inst_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign interconnect_inst_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_inst_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_inst_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_inst_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign interconnect_inst_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_inst_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_inst_to_s00_couplers_AWID = S00_AXI_awid[3:0];
  assign interconnect_inst_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_inst_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign interconnect_inst_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_inst_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_inst_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_inst_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_inst_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_inst_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign interconnect_inst_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_inst_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign interconnect_inst_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign interconnect_inst_to_s01_couplers_ARADDR = S01_AXI_araddr[63:0];
  assign interconnect_inst_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign interconnect_inst_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign interconnect_inst_to_s01_couplers_ARID = S01_AXI_arid[3:0];
  assign interconnect_inst_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign interconnect_inst_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign interconnect_inst_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign interconnect_inst_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign interconnect_inst_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign interconnect_inst_to_s01_couplers_AWADDR = S01_AXI_awaddr[63:0];
  assign interconnect_inst_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign interconnect_inst_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign interconnect_inst_to_s01_couplers_AWID = S01_AXI_awid[3:0];
  assign interconnect_inst_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign interconnect_inst_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign interconnect_inst_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign interconnect_inst_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign interconnect_inst_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign interconnect_inst_to_s01_couplers_BREADY = S01_AXI_bready;
  assign interconnect_inst_to_s01_couplers_RREADY = S01_AXI_rready;
  assign interconnect_inst_to_s01_couplers_WDATA = S01_AXI_wdata[511:0];
  assign interconnect_inst_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign interconnect_inst_to_s01_couplers_WSTRB = S01_AXI_wstrb[63:0];
  assign interconnect_inst_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_interconnect_inst_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_inst_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_inst_BID = M00_AXI_bid[4:0];
  assign m00_couplers_to_interconnect_inst_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_inst_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_inst_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_interconnect_inst_RID = M00_AXI_rid[4:0];
  assign m00_couplers_to_interconnect_inst_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_interconnect_inst_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_inst_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_inst_WREADY = M00_AXI_wready;
  m00_couplers_imp_K7TSXM m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_inst_ARADDR),
        .M_AXI_arburst(m00_couplers_to_interconnect_inst_ARBURST),
        .M_AXI_arcache(m00_couplers_to_interconnect_inst_ARCACHE),
        .M_AXI_arid(m00_couplers_to_interconnect_inst_ARID),
        .M_AXI_arlen(m00_couplers_to_interconnect_inst_ARLEN),
        .M_AXI_arlock(m00_couplers_to_interconnect_inst_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_interconnect_inst_ARPROT),
        .M_AXI_arqos(m00_couplers_to_interconnect_inst_ARQOS),
        .M_AXI_arready(m00_couplers_to_interconnect_inst_ARREADY),
        .M_AXI_arregion(m00_couplers_to_interconnect_inst_ARREGION),
        .M_AXI_arsize(m00_couplers_to_interconnect_inst_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_interconnect_inst_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_inst_AWADDR),
        .M_AXI_awburst(m00_couplers_to_interconnect_inst_AWBURST),
        .M_AXI_awcache(m00_couplers_to_interconnect_inst_AWCACHE),
        .M_AXI_awid(m00_couplers_to_interconnect_inst_AWID),
        .M_AXI_awlen(m00_couplers_to_interconnect_inst_AWLEN),
        .M_AXI_awlock(m00_couplers_to_interconnect_inst_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_interconnect_inst_AWPROT),
        .M_AXI_awqos(m00_couplers_to_interconnect_inst_AWQOS),
        .M_AXI_awready(m00_couplers_to_interconnect_inst_AWREADY),
        .M_AXI_awregion(m00_couplers_to_interconnect_inst_AWREGION),
        .M_AXI_awsize(m00_couplers_to_interconnect_inst_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_interconnect_inst_AWVALID),
        .M_AXI_bid(m00_couplers_to_interconnect_inst_BID),
        .M_AXI_bready(m00_couplers_to_interconnect_inst_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_inst_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_inst_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_inst_RDATA),
        .M_AXI_rid(m00_couplers_to_interconnect_inst_RID),
        .M_AXI_rlast(m00_couplers_to_interconnect_inst_RLAST),
        .M_AXI_rready(m00_couplers_to_interconnect_inst_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_inst_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_inst_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_inst_WDATA),
        .M_AXI_wlast(m00_couplers_to_interconnect_inst_WLAST),
        .M_AXI_wready(m00_couplers_to_interconnect_inst_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_inst_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_inst_WVALID),
        .S_ACLK(interconnect_inst_ACLK_net),
        .S_ARESETN(interconnect_inst_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1DCVRW8 s00_couplers
       (.M_ACLK(interconnect_inst_ACLK_net),
        .M_ARESETN(interconnect_inst_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_inst_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_inst_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_inst_to_s00_couplers_ARCACHE),
        .S_AXI_arid(interconnect_inst_to_s00_couplers_ARID),
        .S_AXI_arlen(interconnect_inst_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_inst_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_inst_to_s00_couplers_ARPROT),
        .S_AXI_arready(interconnect_inst_to_s00_couplers_ARREADY),
        .S_AXI_arsize(interconnect_inst_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_inst_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_inst_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_inst_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_inst_to_s00_couplers_AWCACHE),
        .S_AXI_awid(interconnect_inst_to_s00_couplers_AWID),
        .S_AXI_awlen(interconnect_inst_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_inst_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_inst_to_s00_couplers_AWPROT),
        .S_AXI_awready(interconnect_inst_to_s00_couplers_AWREADY),
        .S_AXI_awsize(interconnect_inst_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_inst_to_s00_couplers_AWVALID),
        .S_AXI_bid(interconnect_inst_to_s00_couplers_BID),
        .S_AXI_bready(interconnect_inst_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_inst_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_inst_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_inst_to_s00_couplers_RDATA),
        .S_AXI_rid(interconnect_inst_to_s00_couplers_RID),
        .S_AXI_rlast(interconnect_inst_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_inst_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_inst_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_inst_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_inst_to_s00_couplers_WDATA),
        .S_AXI_wlast(interconnect_inst_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_inst_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_inst_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_inst_to_s00_couplers_WVALID));
  s01_couplers_imp_Q9URKP s01_couplers
       (.M_ACLK(interconnect_inst_ACLK_net),
        .M_ARESETN(interconnect_inst_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(interconnect_inst_to_s01_couplers_ARADDR),
        .S_AXI_arburst(interconnect_inst_to_s01_couplers_ARBURST),
        .S_AXI_arcache(interconnect_inst_to_s01_couplers_ARCACHE),
        .S_AXI_arid(interconnect_inst_to_s01_couplers_ARID),
        .S_AXI_arlen(interconnect_inst_to_s01_couplers_ARLEN),
        .S_AXI_arlock(interconnect_inst_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_inst_to_s01_couplers_ARPROT),
        .S_AXI_arready(interconnect_inst_to_s01_couplers_ARREADY),
        .S_AXI_arsize(interconnect_inst_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_inst_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_inst_to_s01_couplers_AWADDR),
        .S_AXI_awburst(interconnect_inst_to_s01_couplers_AWBURST),
        .S_AXI_awcache(interconnect_inst_to_s01_couplers_AWCACHE),
        .S_AXI_awid(interconnect_inst_to_s01_couplers_AWID),
        .S_AXI_awlen(interconnect_inst_to_s01_couplers_AWLEN),
        .S_AXI_awlock(interconnect_inst_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_inst_to_s01_couplers_AWPROT),
        .S_AXI_awready(interconnect_inst_to_s01_couplers_AWREADY),
        .S_AXI_awsize(interconnect_inst_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_inst_to_s01_couplers_AWVALID),
        .S_AXI_bid(interconnect_inst_to_s01_couplers_BID),
        .S_AXI_bready(interconnect_inst_to_s01_couplers_BREADY),
        .S_AXI_bresp(interconnect_inst_to_s01_couplers_BRESP),
        .S_AXI_bvalid(interconnect_inst_to_s01_couplers_BVALID),
        .S_AXI_rdata(interconnect_inst_to_s01_couplers_RDATA),
        .S_AXI_rid(interconnect_inst_to_s01_couplers_RID),
        .S_AXI_rlast(interconnect_inst_to_s01_couplers_RLAST),
        .S_AXI_rready(interconnect_inst_to_s01_couplers_RREADY),
        .S_AXI_rresp(interconnect_inst_to_s01_couplers_RRESP),
        .S_AXI_rvalid(interconnect_inst_to_s01_couplers_RVALID),
        .S_AXI_wdata(interconnect_inst_to_s01_couplers_WDATA),
        .S_AXI_wlast(interconnect_inst_to_s01_couplers_WLAST),
        .S_AXI_wready(interconnect_inst_to_s01_couplers_WREADY),
        .S_AXI_wstrb(interconnect_inst_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_inst_to_s01_couplers_WVALID));
  host_hbm_xbar_0 xbar
       (.aclk(interconnect_inst_ACLK_net),
        .aresetn(interconnect_inst_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,s01_couplers_to_xbar_ARID,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,s01_couplers_to_xbar_AWID,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s01_couplers_to_xbar_BID,s00_couplers_to_xbar_BID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s01_couplers_to_xbar_RID,s00_couplers_to_xbar_RID}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module m00_couplers_imp_K7TSXM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [32:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [4:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [32:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [4:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [4:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [4:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [4:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [4:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [32:0]auto_cc_to_m00_couplers_ARADDR;
  wire [1:0]auto_cc_to_m00_couplers_ARBURST;
  wire [3:0]auto_cc_to_m00_couplers_ARCACHE;
  wire [4:0]auto_cc_to_m00_couplers_ARID;
  wire [7:0]auto_cc_to_m00_couplers_ARLEN;
  wire [0:0]auto_cc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire [3:0]auto_cc_to_m00_couplers_ARQOS;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire [3:0]auto_cc_to_m00_couplers_ARREGION;
  wire [2:0]auto_cc_to_m00_couplers_ARSIZE;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [32:0]auto_cc_to_m00_couplers_AWADDR;
  wire [1:0]auto_cc_to_m00_couplers_AWBURST;
  wire [3:0]auto_cc_to_m00_couplers_AWCACHE;
  wire [4:0]auto_cc_to_m00_couplers_AWID;
  wire [7:0]auto_cc_to_m00_couplers_AWLEN;
  wire [0:0]auto_cc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire [3:0]auto_cc_to_m00_couplers_AWQOS;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire [3:0]auto_cc_to_m00_couplers_AWREGION;
  wire [2:0]auto_cc_to_m00_couplers_AWSIZE;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire [4:0]auto_cc_to_m00_couplers_BID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [511:0]auto_cc_to_m00_couplers_RDATA;
  wire [4:0]auto_cc_to_m00_couplers_RID;
  wire auto_cc_to_m00_couplers_RLAST;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [511:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WLAST;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [63:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_ARADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_ARBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARCACHE;
  wire [4:0]m00_couplers_to_m00_data_fifo_ARID;
  wire [7:0]m00_couplers_to_m00_data_fifo_ARLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_ARLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARQOS;
  wire m00_couplers_to_m00_data_fifo_ARREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARSIZE;
  wire m00_couplers_to_m00_data_fifo_ARVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_AWADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_AWBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWCACHE;
  wire [4:0]m00_couplers_to_m00_data_fifo_AWID;
  wire [7:0]m00_couplers_to_m00_data_fifo_AWLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_AWLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWQOS;
  wire m00_couplers_to_m00_data_fifo_AWREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWSIZE;
  wire m00_couplers_to_m00_data_fifo_AWVALID;
  wire [4:0]m00_couplers_to_m00_data_fifo_BID;
  wire m00_couplers_to_m00_data_fifo_BREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_BRESP;
  wire m00_couplers_to_m00_data_fifo_BVALID;
  wire [511:0]m00_couplers_to_m00_data_fifo_RDATA;
  wire [4:0]m00_couplers_to_m00_data_fifo_RID;
  wire m00_couplers_to_m00_data_fifo_RLAST;
  wire m00_couplers_to_m00_data_fifo_RREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_RRESP;
  wire m00_couplers_to_m00_data_fifo_RVALID;
  wire [511:0]m00_couplers_to_m00_data_fifo_WDATA;
  wire m00_couplers_to_m00_data_fifo_WLAST;
  wire m00_couplers_to_m00_data_fifo_WREADY;
  wire [63:0]m00_couplers_to_m00_data_fifo_WSTRB;
  wire m00_couplers_to_m00_data_fifo_WVALID;
  wire [32:0]m00_data_fifo_to_auto_cc_ARADDR;
  wire [1:0]m00_data_fifo_to_auto_cc_ARBURST;
  wire [3:0]m00_data_fifo_to_auto_cc_ARCACHE;
  wire [4:0]m00_data_fifo_to_auto_cc_ARID;
  wire [7:0]m00_data_fifo_to_auto_cc_ARLEN;
  wire [0:0]m00_data_fifo_to_auto_cc_ARLOCK;
  wire [2:0]m00_data_fifo_to_auto_cc_ARPROT;
  wire [3:0]m00_data_fifo_to_auto_cc_ARQOS;
  wire m00_data_fifo_to_auto_cc_ARREADY;
  wire [3:0]m00_data_fifo_to_auto_cc_ARREGION;
  wire [2:0]m00_data_fifo_to_auto_cc_ARSIZE;
  wire m00_data_fifo_to_auto_cc_ARVALID;
  wire [32:0]m00_data_fifo_to_auto_cc_AWADDR;
  wire [1:0]m00_data_fifo_to_auto_cc_AWBURST;
  wire [3:0]m00_data_fifo_to_auto_cc_AWCACHE;
  wire [4:0]m00_data_fifo_to_auto_cc_AWID;
  wire [7:0]m00_data_fifo_to_auto_cc_AWLEN;
  wire [0:0]m00_data_fifo_to_auto_cc_AWLOCK;
  wire [2:0]m00_data_fifo_to_auto_cc_AWPROT;
  wire [3:0]m00_data_fifo_to_auto_cc_AWQOS;
  wire m00_data_fifo_to_auto_cc_AWREADY;
  wire [3:0]m00_data_fifo_to_auto_cc_AWREGION;
  wire [2:0]m00_data_fifo_to_auto_cc_AWSIZE;
  wire m00_data_fifo_to_auto_cc_AWVALID;
  wire [4:0]m00_data_fifo_to_auto_cc_BID;
  wire m00_data_fifo_to_auto_cc_BREADY;
  wire [1:0]m00_data_fifo_to_auto_cc_BRESP;
  wire m00_data_fifo_to_auto_cc_BVALID;
  wire [511:0]m00_data_fifo_to_auto_cc_RDATA;
  wire [4:0]m00_data_fifo_to_auto_cc_RID;
  wire m00_data_fifo_to_auto_cc_RLAST;
  wire m00_data_fifo_to_auto_cc_RREADY;
  wire [1:0]m00_data_fifo_to_auto_cc_RRESP;
  wire m00_data_fifo_to_auto_cc_RVALID;
  wire [511:0]m00_data_fifo_to_auto_cc_WDATA;
  wire m00_data_fifo_to_auto_cc_WLAST;
  wire m00_data_fifo_to_auto_cc_WREADY;
  wire [63:0]m00_data_fifo_to_auto_cc_WSTRB;
  wire m00_data_fifo_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[32:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[4:0] = auto_cc_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_cc_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_cc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[32:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[4:0] = auto_cc_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_cc_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_cc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_m00_data_fifo_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_data_fifo_AWREADY;
  assign S_AXI_bid[4:0] = m00_couplers_to_m00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_data_fifo_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_data_fifo_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_m00_data_fifo_RDATA;
  assign S_AXI_rid[4:0] = m00_couplers_to_m00_data_fifo_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_data_fifo_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_data_fifo_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_data_fifo_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BID = M_AXI_bid[4:0];
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_m00_couplers_RID = M_AXI_rid[4:0];
  assign auto_cc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_data_fifo_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_data_fifo_ARID = S_AXI_arid[4:0];
  assign m00_couplers_to_m00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_data_fifo_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_data_fifo_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_data_fifo_AWID = S_AXI_awid[4:0];
  assign m00_couplers_to_m00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_data_fifo_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_data_fifo_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_data_fifo_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_data_fifo_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_m00_data_fifo_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_data_fifo_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_m00_data_fifo_WVALID = S_AXI_wvalid;
  host_hbm_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arregion(auto_cc_to_m00_couplers_ARREGION),
        .m_axi_arsize(auto_cc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awregion(auto_cc_to_m00_couplers_AWREGION),
        .m_axi_awsize(auto_cc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m00_couplers_BID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m00_couplers_RID),
        .m_axi_rlast(auto_cc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_data_fifo_to_auto_cc_ARADDR),
        .s_axi_arburst(m00_data_fifo_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_data_fifo_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_data_fifo_to_auto_cc_ARID),
        .s_axi_arlen(m00_data_fifo_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_data_fifo_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_data_fifo_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_data_fifo_to_auto_cc_ARQOS),
        .s_axi_arready(m00_data_fifo_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_data_fifo_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_data_fifo_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m00_data_fifo_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_data_fifo_to_auto_cc_AWADDR),
        .s_axi_awburst(m00_data_fifo_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_data_fifo_to_auto_cc_AWCACHE),
        .s_axi_awid(m00_data_fifo_to_auto_cc_AWID),
        .s_axi_awlen(m00_data_fifo_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_data_fifo_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_data_fifo_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_data_fifo_to_auto_cc_AWQOS),
        .s_axi_awready(m00_data_fifo_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_data_fifo_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_data_fifo_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m00_data_fifo_to_auto_cc_AWVALID),
        .s_axi_bid(m00_data_fifo_to_auto_cc_BID),
        .s_axi_bready(m00_data_fifo_to_auto_cc_BREADY),
        .s_axi_bresp(m00_data_fifo_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_data_fifo_to_auto_cc_BVALID),
        .s_axi_rdata(m00_data_fifo_to_auto_cc_RDATA),
        .s_axi_rid(m00_data_fifo_to_auto_cc_RID),
        .s_axi_rlast(m00_data_fifo_to_auto_cc_RLAST),
        .s_axi_rready(m00_data_fifo_to_auto_cc_RREADY),
        .s_axi_rresp(m00_data_fifo_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_data_fifo_to_auto_cc_RVALID),
        .s_axi_wdata(m00_data_fifo_to_auto_cc_WDATA),
        .s_axi_wlast(m00_data_fifo_to_auto_cc_WLAST),
        .s_axi_wready(m00_data_fifo_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_data_fifo_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_data_fifo_to_auto_cc_WVALID));
  host_hbm_m00_data_fifo_0 m00_data_fifo
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(m00_data_fifo_to_auto_cc_ARADDR),
        .m_axi_arburst(m00_data_fifo_to_auto_cc_ARBURST),
        .m_axi_arcache(m00_data_fifo_to_auto_cc_ARCACHE),
        .m_axi_arid(m00_data_fifo_to_auto_cc_ARID),
        .m_axi_arlen(m00_data_fifo_to_auto_cc_ARLEN),
        .m_axi_arlock(m00_data_fifo_to_auto_cc_ARLOCK),
        .m_axi_arprot(m00_data_fifo_to_auto_cc_ARPROT),
        .m_axi_arqos(m00_data_fifo_to_auto_cc_ARQOS),
        .m_axi_arready(m00_data_fifo_to_auto_cc_ARREADY),
        .m_axi_arregion(m00_data_fifo_to_auto_cc_ARREGION),
        .m_axi_arsize(m00_data_fifo_to_auto_cc_ARSIZE),
        .m_axi_arvalid(m00_data_fifo_to_auto_cc_ARVALID),
        .m_axi_awaddr(m00_data_fifo_to_auto_cc_AWADDR),
        .m_axi_awburst(m00_data_fifo_to_auto_cc_AWBURST),
        .m_axi_awcache(m00_data_fifo_to_auto_cc_AWCACHE),
        .m_axi_awid(m00_data_fifo_to_auto_cc_AWID),
        .m_axi_awlen(m00_data_fifo_to_auto_cc_AWLEN),
        .m_axi_awlock(m00_data_fifo_to_auto_cc_AWLOCK),
        .m_axi_awprot(m00_data_fifo_to_auto_cc_AWPROT),
        .m_axi_awqos(m00_data_fifo_to_auto_cc_AWQOS),
        .m_axi_awready(m00_data_fifo_to_auto_cc_AWREADY),
        .m_axi_awregion(m00_data_fifo_to_auto_cc_AWREGION),
        .m_axi_awsize(m00_data_fifo_to_auto_cc_AWSIZE),
        .m_axi_awvalid(m00_data_fifo_to_auto_cc_AWVALID),
        .m_axi_bid(m00_data_fifo_to_auto_cc_BID),
        .m_axi_bready(m00_data_fifo_to_auto_cc_BREADY),
        .m_axi_bresp(m00_data_fifo_to_auto_cc_BRESP),
        .m_axi_bvalid(m00_data_fifo_to_auto_cc_BVALID),
        .m_axi_rdata(m00_data_fifo_to_auto_cc_RDATA),
        .m_axi_rid(m00_data_fifo_to_auto_cc_RID),
        .m_axi_rlast(m00_data_fifo_to_auto_cc_RLAST),
        .m_axi_rready(m00_data_fifo_to_auto_cc_RREADY),
        .m_axi_rresp(m00_data_fifo_to_auto_cc_RRESP),
        .m_axi_rvalid(m00_data_fifo_to_auto_cc_RVALID),
        .m_axi_wdata(m00_data_fifo_to_auto_cc_WDATA),
        .m_axi_wlast(m00_data_fifo_to_auto_cc_WLAST),
        .m_axi_wready(m00_data_fifo_to_auto_cc_WREADY),
        .m_axi_wstrb(m00_data_fifo_to_auto_cc_WSTRB),
        .m_axi_wvalid(m00_data_fifo_to_auto_cc_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_data_fifo_ARADDR[32:0]),
        .s_axi_arburst(m00_couplers_to_m00_data_fifo_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_data_fifo_ARCACHE),
        .s_axi_arid(m00_couplers_to_m00_data_fifo_ARID),
        .s_axi_arlen(m00_couplers_to_m00_data_fifo_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_data_fifo_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_data_fifo_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_data_fifo_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_data_fifo_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_data_fifo_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_data_fifo_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_data_fifo_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_data_fifo_AWADDR[32:0]),
        .s_axi_awburst(m00_couplers_to_m00_data_fifo_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_data_fifo_AWCACHE),
        .s_axi_awid(m00_couplers_to_m00_data_fifo_AWID),
        .s_axi_awlen(m00_couplers_to_m00_data_fifo_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_data_fifo_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_data_fifo_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_data_fifo_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_data_fifo_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_data_fifo_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_data_fifo_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_data_fifo_AWVALID),
        .s_axi_bid(m00_couplers_to_m00_data_fifo_BID),
        .s_axi_bready(m00_couplers_to_m00_data_fifo_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_data_fifo_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_data_fifo_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_data_fifo_RDATA),
        .s_axi_rid(m00_couplers_to_m00_data_fifo_RID),
        .s_axi_rlast(m00_couplers_to_m00_data_fifo_RLAST),
        .s_axi_rready(m00_couplers_to_m00_data_fifo_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_data_fifo_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_data_fifo_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_data_fifo_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_data_fifo_WLAST),
        .s_axi_wready(m00_couplers_to_m00_data_fifo_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_data_fifo_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_1DCVRW8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [63:0]s00_couplers_to_s00_data_fifo_ARADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_ARBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARCACHE;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARID;
  wire [7:0]s00_couplers_to_s00_data_fifo_ARLEN;
  wire [0:0]s00_couplers_to_s00_data_fifo_ARLOCK;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARPROT;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARSIZE;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire [63:0]s00_couplers_to_s00_data_fifo_AWADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_AWBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWCACHE;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWID;
  wire [7:0]s00_couplers_to_s00_data_fifo_AWLEN;
  wire [0:0]s00_couplers_to_s00_data_fifo_AWLOCK;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWPROT;
  wire s00_couplers_to_s00_data_fifo_AWREADY;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWSIZE;
  wire s00_couplers_to_s00_data_fifo_AWVALID;
  wire [3:0]s00_couplers_to_s00_data_fifo_BID;
  wire s00_couplers_to_s00_data_fifo_BREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_BRESP;
  wire s00_couplers_to_s00_data_fifo_BVALID;
  wire [511:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire [3:0]s00_couplers_to_s00_data_fifo_RID;
  wire s00_couplers_to_s00_data_fifo_RLAST;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire [511:0]s00_couplers_to_s00_data_fifo_WDATA;
  wire s00_couplers_to_s00_data_fifo_WLAST;
  wire s00_couplers_to_s00_data_fifo_WREADY;
  wire [63:0]s00_couplers_to_s00_data_fifo_WSTRB;
  wire s00_couplers_to_s00_data_fifo_WVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARID;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWID;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire [4:0]s00_data_fifo_to_s00_couplers_BID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire [4:0]s00_data_fifo_to_s00_couplers_RID;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [63:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = s00_data_fifo_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = s00_data_fifo_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_data_fifo_AWREADY;
  assign S_AXI_bid[3:0] = s00_couplers_to_s00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_data_fifo_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_data_fifo_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_data_fifo_RDATA;
  assign S_AXI_rid[3:0] = s00_couplers_to_s00_data_fifo_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_data_fifo_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_data_fifo_WREADY;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_data_fifo_ARID = S_AXI_arid[3:0];
  assign s00_couplers_to_s00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_data_fifo_AWID = S_AXI_awid[3:0];
  assign s00_couplers_to_s00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_data_fifo_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_data_fifo_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_data_fifo_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_data_fifo_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_data_fifo_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_data_fifo_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BID = M_AXI_bid[4:0];
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_data_fifo_to_s00_couplers_RID = M_AXI_rid[4:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  host_hbm_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_data_fifo_to_s00_couplers_ARID),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_data_fifo_to_s00_couplers_AWID),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_data_fifo_to_s00_couplers_BID[3:0]),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rid(s00_data_fifo_to_s00_couplers_RID[3:0]),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_data_fifo_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_data_fifo_ARID),
        .s_axi_arlen(s00_couplers_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_data_fifo_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_data_fifo_AWID),
        .s_axi_awlen(s00_couplers_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_data_fifo_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_s00_data_fifo_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_data_fifo_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_data_fifo_BID),
        .s_axi_bready(s00_couplers_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rid(s00_couplers_to_s00_data_fifo_RID),
        .s_axi_rlast(s00_couplers_to_s00_data_fifo_RLAST),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_data_fifo_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_data_fifo_WLAST),
        .s_axi_wready(s00_couplers_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_data_fifo_WVALID));
endmodule

module s01_couplers_imp_Q9URKP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [63:0]s01_couplers_to_s01_data_fifo_ARADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_ARBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_ARCACHE;
  wire [3:0]s01_couplers_to_s01_data_fifo_ARID;
  wire [7:0]s01_couplers_to_s01_data_fifo_ARLEN;
  wire [0:0]s01_couplers_to_s01_data_fifo_ARLOCK;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARPROT;
  wire s01_couplers_to_s01_data_fifo_ARREADY;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARSIZE;
  wire s01_couplers_to_s01_data_fifo_ARVALID;
  wire [63:0]s01_couplers_to_s01_data_fifo_AWADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_AWBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_AWCACHE;
  wire [3:0]s01_couplers_to_s01_data_fifo_AWID;
  wire [7:0]s01_couplers_to_s01_data_fifo_AWLEN;
  wire [0:0]s01_couplers_to_s01_data_fifo_AWLOCK;
  wire [2:0]s01_couplers_to_s01_data_fifo_AWPROT;
  wire s01_couplers_to_s01_data_fifo_AWREADY;
  wire [2:0]s01_couplers_to_s01_data_fifo_AWSIZE;
  wire s01_couplers_to_s01_data_fifo_AWVALID;
  wire [3:0]s01_couplers_to_s01_data_fifo_BID;
  wire s01_couplers_to_s01_data_fifo_BREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_BRESP;
  wire s01_couplers_to_s01_data_fifo_BVALID;
  wire [511:0]s01_couplers_to_s01_data_fifo_RDATA;
  wire [3:0]s01_couplers_to_s01_data_fifo_RID;
  wire s01_couplers_to_s01_data_fifo_RLAST;
  wire s01_couplers_to_s01_data_fifo_RREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_RRESP;
  wire s01_couplers_to_s01_data_fifo_RVALID;
  wire [511:0]s01_couplers_to_s01_data_fifo_WDATA;
  wire s01_couplers_to_s01_data_fifo_WLAST;
  wire s01_couplers_to_s01_data_fifo_WREADY;
  wire [63:0]s01_couplers_to_s01_data_fifo_WSTRB;
  wire s01_couplers_to_s01_data_fifo_WVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_ARADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_ARBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARCACHE;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARID;
  wire [7:0]s01_data_fifo_to_s01_couplers_ARLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARQOS;
  wire s01_data_fifo_to_s01_couplers_ARREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARSIZE;
  wire s01_data_fifo_to_s01_couplers_ARVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_AWADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_AWBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWCACHE;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWID;
  wire [7:0]s01_data_fifo_to_s01_couplers_AWLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWQOS;
  wire s01_data_fifo_to_s01_couplers_AWREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWSIZE;
  wire s01_data_fifo_to_s01_couplers_AWVALID;
  wire [4:0]s01_data_fifo_to_s01_couplers_BID;
  wire s01_data_fifo_to_s01_couplers_BREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_BRESP;
  wire s01_data_fifo_to_s01_couplers_BVALID;
  wire [511:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire [4:0]s01_data_fifo_to_s01_couplers_RID;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;
  wire [511:0]s01_data_fifo_to_s01_couplers_WDATA;
  wire s01_data_fifo_to_s01_couplers_WLAST;
  wire s01_data_fifo_to_s01_couplers_WREADY;
  wire [63:0]s01_data_fifo_to_s01_couplers_WSTRB;
  wire s01_data_fifo_to_s01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = s01_data_fifo_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_data_fifo_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_data_fifo_to_s01_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = s01_data_fifo_to_s01_couplers_ARID;
  assign M_AXI_arlen[7:0] = s01_data_fifo_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_data_fifo_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_data_fifo_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_data_fifo_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_data_fifo_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_data_fifo_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s01_data_fifo_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_data_fifo_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_data_fifo_to_s01_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = s01_data_fifo_to_s01_couplers_AWID;
  assign M_AXI_awlen[7:0] = s01_data_fifo_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_data_fifo_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_data_fifo_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_data_fifo_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_data_fifo_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_data_fifo_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_data_fifo_to_s01_couplers_BREADY;
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s01_data_fifo_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_data_fifo_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s01_data_fifo_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_data_fifo_to_s01_couplers_WVALID;
  assign S_AXI_arready = s01_couplers_to_s01_data_fifo_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_data_fifo_AWREADY;
  assign S_AXI_bid[3:0] = s01_couplers_to_s01_data_fifo_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_data_fifo_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_data_fifo_BVALID;
  assign S_AXI_rdata[511:0] = s01_couplers_to_s01_data_fifo_RDATA;
  assign S_AXI_rid[3:0] = s01_couplers_to_s01_data_fifo_RID;
  assign S_AXI_rlast = s01_couplers_to_s01_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_data_fifo_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_data_fifo_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_data_fifo_WREADY;
  assign s01_couplers_to_s01_data_fifo_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_s01_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_data_fifo_ARID = S_AXI_arid[3:0];
  assign s01_couplers_to_s01_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_data_fifo_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_data_fifo_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_s01_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_data_fifo_AWID = S_AXI_awid[3:0];
  assign s01_couplers_to_s01_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_data_fifo_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_data_fifo_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_data_fifo_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_data_fifo_WDATA = S_AXI_wdata[511:0];
  assign s01_couplers_to_s01_data_fifo_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_data_fifo_WSTRB = S_AXI_wstrb[63:0];
  assign s01_couplers_to_s01_data_fifo_WVALID = S_AXI_wvalid;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_data_fifo_to_s01_couplers_BID = M_AXI_bid[4:0];
  assign s01_data_fifo_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_data_fifo_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign s01_data_fifo_to_s01_couplers_RID = M_AXI_rid[4:0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_data_fifo_to_s01_couplers_WREADY = M_AXI_wready;
  host_hbm_s01_data_fifo_0 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s01_data_fifo_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_data_fifo_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_data_fifo_to_s01_couplers_ARCACHE),
        .m_axi_arid(s01_data_fifo_to_s01_couplers_ARID),
        .m_axi_arlen(s01_data_fifo_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_data_fifo_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_data_fifo_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_data_fifo_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_data_fifo_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_data_fifo_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_data_fifo_to_s01_couplers_ARVALID),
        .m_axi_awaddr(s01_data_fifo_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_data_fifo_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_data_fifo_to_s01_couplers_AWCACHE),
        .m_axi_awid(s01_data_fifo_to_s01_couplers_AWID),
        .m_axi_awlen(s01_data_fifo_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_data_fifo_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_data_fifo_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_data_fifo_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_data_fifo_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_data_fifo_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_data_fifo_to_s01_couplers_AWVALID),
        .m_axi_bid(s01_data_fifo_to_s01_couplers_BID[3:0]),
        .m_axi_bready(s01_data_fifo_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_data_fifo_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_data_fifo_to_s01_couplers_BVALID),
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rid(s01_data_fifo_to_s01_couplers_RID[3:0]),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .m_axi_wdata(s01_data_fifo_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_data_fifo_to_s01_couplers_WLAST),
        .m_axi_wready(s01_data_fifo_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_data_fifo_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_data_fifo_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_data_fifo_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_data_fifo_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_data_fifo_ARCACHE),
        .s_axi_arid(s01_couplers_to_s01_data_fifo_ARID),
        .s_axi_arlen(s01_couplers_to_s01_data_fifo_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_data_fifo_ARLOCK),
        .s_axi_arprot(s01_couplers_to_s01_data_fifo_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s01_couplers_to_s01_data_fifo_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_s01_data_fifo_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_data_fifo_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_data_fifo_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_data_fifo_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_data_fifo_AWCACHE),
        .s_axi_awid(s01_couplers_to_s01_data_fifo_AWID),
        .s_axi_awlen(s01_couplers_to_s01_data_fifo_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_data_fifo_AWLOCK),
        .s_axi_awprot(s01_couplers_to_s01_data_fifo_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s01_couplers_to_s01_data_fifo_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_s01_data_fifo_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_data_fifo_AWVALID),
        .s_axi_bid(s01_couplers_to_s01_data_fifo_BID),
        .s_axi_bready(s01_couplers_to_s01_data_fifo_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_data_fifo_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_data_fifo_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_data_fifo_RDATA),
        .s_axi_rid(s01_couplers_to_s01_data_fifo_RID),
        .s_axi_rlast(s01_couplers_to_s01_data_fifo_RLAST),
        .s_axi_rready(s01_couplers_to_s01_data_fifo_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_data_fifo_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_data_fifo_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_data_fifo_WLAST),
        .s_axi_wready(s01_couplers_to_s01_data_fifo_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_data_fifo_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_data_fifo_WVALID));
endmodule
