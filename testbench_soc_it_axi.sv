`timescale 1ns / 1ps

`include "soc_it_defs.vh"

module testbench_soc_it_axi;

  parameter	C_MEM_INTERFACE_WIDTH = 256;
  parameter	C_SLV_INTERFACE_WIDTH = 128;
  parameter	C_MEMORY_ADDRESS_WIDTH = 64;
  parameter C_MEMORY_COMMAND_WIDTH = 68;
  
  parameter AXI_ADDR_WIDTH   = C_MEMORY_ADDRESS_WIDTH;
  parameter AXI_DATA_WIDTH   = C_MEM_INTERFACE_WIDTH;
  parameter AXI_ID_WIDTH     = 8;
  parameter AXI_STRB_WIDTH   = (AXI_DATA_WIDTH / 8);
  parameter AXIS_KEEP_WIDTH  = AXI_STRB_WIDTH;
  
  logic [  AXI_ID_WIDTH-1:0] axi_awid;
  logic [AXI_ADDR_WIDTH-1:0] axi_awaddr;
  logic [               7:0] axi_awlen;
  logic [               2:0] axi_awsize;
  logic [               1:0] axi_awburst;
  logic                      axi_awlock;
  logic [               3:0] axi_awcache;
  logic [               2:0] axi_awprot;
  logic                      axi_awvalid;
  logic                      axi_awready;
  logic [AXI_DATA_WIDTH-1:0] axi_wdata;
  logic [AXI_STRB_WIDTH-1:0] axi_wstrb;
  logic                      axi_wlast;
  logic                      axi_wvalid;
  logic                      axi_wready;
  logic [  AXI_ID_WIDTH-1:0] axi_bid;
  logic [               1:0] axi_bresp;
  logic                      axi_bvalid;
  logic                      axi_bready;
  logic [  AXI_ID_WIDTH-1:0] axi_arid;
  logic [AXI_ADDR_WIDTH-1:0] axi_araddr;
  logic [               7:0] axi_arlen;
  logic [               2:0] axi_arsize;
  logic [               1:0] axi_arburst;
  logic                      axi_arlock;
  logic [               3:0] axi_arcache;
  logic [               2:0] axi_arprot;
  logic                      axi_arvalid;
  logic                      axi_arready;
  logic [  AXI_ID_WIDTH-1:0] axi_rid;
  logic [AXI_DATA_WIDTH-1:0] axi_rdata;
  logic [               1:0] axi_rresp;
  logic                      axi_rlast;
  logic                      axi_rvalid;
  logic                      axi_rready;

  logic clk;
  logic rst;
  logic rst_n;

  initial begin
    clk = 1'b0;
    forever begin
      clk = !clk;
      #10;
    end
  end

  initial begin
    rst = 1'b1;
    repeat (100) @(posedge clk);
    rst = 1'b0;
  end

  assign rst_n = !rst;

  logic                                 soc_it_request;
  logic                                 soc_it_request_ack;
  logic                                 soc_it_request_complete;
  logic [ 6 : 0]                        soc_it_request_error;
  logic [ 3 : 0]                        soc_it_request_tag;
  logic [ 3 : 0]                        soc_it_request_option;
  logic [ 3 : 0]                        soc_it_request_type;
  logic [ 9 : 0]                        soc_it_request_flow;
  logic [63 : 0]                        soc_it_request_local_address;
  logic [35 : 0]                        soc_it_request_length;

  logic                                 soc_it_descriptor_src_rdy;
  logic                                 soc_it_descriptor_dst_rdy;
  logic [ 3 : 0]                        soc_it_descriptor_tag;
  logic [ 127:0]                        soc_it_descriptor;

  logic                                 soc_it_datain_src_rdy;
  logic                                 soc_it_datain_dst_rdy;
  logic [ 3 : 0]                        soc_it_datain_tag;
  logic [ 3 : 0]                        soc_it_datain_option;
  logic [ 127:0]                        soc_it_datain;

  logic                                 soc_it_dataout_src_rdy;
  logic                                 soc_it_dataout_dst_rdy;
  logic [ 3 : 0]                        soc_it_dataout_tag;
  logic [ 3 : 0]                        soc_it_dataout_option;
  logic [ 127:0]                        soc_it_dataout;


  logic [  63:0]                        workspace_address;
  logic [  31:0]                        workspace_size;

  logic                                 tester_enabled;
  logic [  31:0]                        tester_error_count;
  logic                                 tester_active;

  logic [15:0]                          slave_device_id;
  assign slave_device_id = '0;
  logic                                 slave_burst_start;
  logic [12:0]                          slave_burst_length;
  logic                                 slave_burst_rnw;
  logic [`NIF_SLAVE_ADDRESS_WIDTH-1:0]  slave_address;
  logic [3:0]                           slave_transaction_id;
  logic [3:0]                           slave_transaction_option;
  logic                                 slave_transaction_valid;
  logic                                 slave_transaction_ack;
  logic                                 slave_address_valid;
  logic                                 slave_address_ack;
  logic [`NIF_SLAVE_CS_WIDTH-1:0]       slave_wrreq;
  logic                                 slave_wrack;
  logic [`NIF_SLAVE_BE_WIDTH-1:0]       slave_be;
  logic [`NIF_SLAVE_DATA_WIDTH-1:0]     slave_datain;
  logic [`NIF_SLAVE_CS_WIDTH-1:0]       slave_rdreq;
  logic                                 slave_rdack;
  logic [`NIF_SLAVE_DATA_WIDTH-1:0]     slave_dataout;

  logic [220:0] handler_pool_debug_set;

  assign tester_enabled = 1'b1;
  assign workspace_address = 'd4096;
  assign workspace_size = 'h80000;

  soc_it_tester_bulk_transaction_generator #(
        .C_TRANSFER_LENGTH_INCREMENT  (24'd32)
      , .C_TRANSFER_ADDRESS_INCREMENT (24'd128)
  ) soc_it_tester_i (
        .sap_clk                            (clk)
      , .sap_rst                            (rst)

      , .master_request                     (soc_it_request)
      , .master_request_ack                 (soc_it_request_ack)
      , .master_request_complete            (soc_it_request_complete)
      , .master_request_error               (soc_it_request_error)
      , .master_request_tag                 (soc_it_request_tag)
      , .master_request_option              (soc_it_request_option)
      , .master_request_type                (soc_it_request_type) 
      , .master_request_flow                (soc_it_request_flow)
      , .master_request_local_address       (soc_it_request_local_address)
      , .master_request_length              (soc_it_request_length)

      , .master_descriptor_dst_rdy          (soc_it_descriptor_dst_rdy)
      , .master_descriptor_src_rdy          (soc_it_descriptor_src_rdy)
      , .master_descriptor_tag              (soc_it_descriptor_tag)
      , .master_descriptor                  (soc_it_descriptor)

      , .master_datain_src_rdy              (soc_it_datain_src_rdy)
      , .master_datain_dst_rdy              (soc_it_datain_dst_rdy)
      , .master_datain_tag                  (soc_it_datain_tag)
      , .master_datain_option               (soc_it_datain_option)
      , .master_datain                      (soc_it_datain)

      , .master_dataout_src_rdy             (soc_it_dataout_src_rdy)
      , .master_dataout_dst_rdy             (soc_it_dataout_dst_rdy)
      , .master_dataout_tag                 (soc_it_dataout_tag)
      , .master_dataout_option              (soc_it_dataout_option)
      , .master_dataout                     (soc_it_dataout)

      , .workspace_address                  (workspace_address)
      , .workspace_size                     (workspace_size)

      , .enabled                            (tester_enabled)
      , .error_count                        (tester_error_count)
      , .active                             (tester_active)
  );

  soc_it_nif #(
          .C_HAS_DUAL_MST_INTERFACE (0)
        , .C_HAS_DUAL_SLV_INTERFACE (0)
        , .C_NUM_HANDLERS (4)
        , .C_DBG_HANDLER  (0)
  ) soc_it_nif_i (
        .master_clk                         (clk)
      , .master_rst                         (rst)

      , .master_request                     (soc_it_request)
      , .master_request_ack                 (soc_it_request_ack)
      , .master_request_complete            (soc_it_request_complete)
      , .master_request_error               (soc_it_request_error)
      , .master_request_tag                 (soc_it_request_tag)
      , .master_request_option              (soc_it_request_option)
      , .master_request_type                (soc_it_request_type)
      , .master_request_flow                (soc_it_request_flow)
      , .master_request_local_address       (soc_it_request_local_address)
      , .master_request_length              (soc_it_request_length)
      , .master_descriptor_src_rdy          (soc_it_descriptor_src_rdy)
      , .master_descriptor_dst_rdy          (soc_it_descriptor_dst_rdy)
      , .master_descriptor_tag              (soc_it_descriptor_tag)
      , .master_descriptor                  (soc_it_descriptor)
      , .master_datain_src_rdy              (soc_it_datain_src_rdy)
      , .master_datain_dst_rdy              (soc_it_datain_dst_rdy)
      , .master_datain_option               (soc_it_datain_option)
      , .master_datain_tag                  (soc_it_datain_tag)
      , .master_datain                      (soc_it_datain)
      , .master_dataout_src_rdy             (soc_it_dataout_src_rdy)
      , .master_dataout_dst_rdy             (soc_it_dataout_dst_rdy)
      , .master_dataout_option              (soc_it_dataout_option)
      , .master_dataout_tag                 (soc_it_dataout_tag)
      , .master_dataout                     (soc_it_dataout)

      , .slave_clk                          (clk)
      , .slave_rst                          (rst)

      , .slave_device_id                    
      , .slave_burst_start                  
      , .slave_burst_length                 
      , .slave_burst_rnw                    
      , .slave_address
      , .slave_transaction_id
      , .slave_transaction_option
      , .slave_address_valid
      , .slave_address_ack
      , .slave_wrreq
      , .slave_wrack
      , .slave_be
      , .slave_datain
      , .slave_rdreq
      , .slave_rdack
      , .slave_dataout

      , .handler_pool_debug_set
  );

  soc_it_axi #(
          .C_MEM_INTERFACE_WIDTH (C_MEM_INTERFACE_WIDTH)
        , .C_SLV_INTERFACE_WIDTH (C_SLV_INTERFACE_WIDTH)
        , .C_MEM_ADDRESS_WIDTH   (C_MEMORY_ADDRESS_WIDTH)
  ) soc_it_axi_i (
        .slave_clk    (clk)
      , .slave_rst    (rst)

      , .slave_burst_start
      , .slave_burst_length
      , .slave_burst_rnw

      , .slave_address
      , .slave_address_valid
      , .slave_address_ack
      , .slave_wrreq
      , .slave_wrack
      , .slave_be
      , .slave_datain
      , .slave_rdreq
      , .slave_rdack
      , .slave_dataout

      , .axi_clk    (clk)
      , .axi_rst_n  (rst_n)

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

  axi_ram #(
        .ADDR_WIDTH(21)
      , .DATA_WIDTH(C_MEM_INTERFACE_WIDTH)
  ) axi_ram_i (
        .clk
      , .rst

      , .s_axi_awid   (axi_awid)
      , .s_axi_awaddr (axi_awaddr)
      , .s_axi_awlen  (axi_awlen)
      , .s_axi_awsize (axi_awsize)
      , .s_axi_awburst(axi_awburst)
      , .s_axi_awlock (axi_awlock)
      , .s_axi_awcache(axi_awcache)
      , .s_axi_awprot (axi_awprot)
      , .s_axi_awvalid(axi_awvalid)
      , .s_axi_awready(axi_awready)
      , .s_axi_wdata  (axi_wdata)
      , .s_axi_wstrb  (axi_wstrb)
      , .s_axi_wlast  (axi_wlast)
      , .s_axi_wvalid (axi_wvalid)
      , .s_axi_wready (axi_wready)
      , .s_axi_bid    (axi_bid)
      , .s_axi_bresp  (axi_bresp)
      , .s_axi_bvalid (axi_bvalid)
      , .s_axi_bready (axi_bready)
      , .s_axi_arid   (axi_arid)
      , .s_axi_araddr (axi_araddr)
      , .s_axi_arlen  (axi_arlen)
      , .s_axi_arsize (axi_arsize)
      , .s_axi_arburst(axi_arburst)
      , .s_axi_arlock (axi_arlock)
      , .s_axi_arcache(axi_arcache)
      , .s_axi_arprot (axi_arprot)
      , .s_axi_arvalid(axi_arvalid)
      , .s_axi_arready(axi_arready)
      , .s_axi_rid    (axi_rid)
      , .s_axi_rdata  (axi_rdata)
      , .s_axi_rresp  (axi_rresp)
      , .s_axi_rlast  (axi_rlast)
      , .s_axi_rvalid (axi_rvalid)
      , .s_axi_rready (axi_rready)
  );


endmodule
