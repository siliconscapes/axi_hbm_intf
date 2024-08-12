`timescale 1ns / 1ps

module testbench_axi;

  parameter AXI_ADDR_WIDTH   = 32;
  parameter AXI_DATA_WIDTH   = 256;
  parameter AXI_ID_WIDTH     = 8;
  parameter AXI_STRB_WIDTH   = (AXI_DATA_WIDTH / 8);
  parameter AXIS_KEEP_WIDTH  = AXI_STRB_WIDTH;
  
  logic                      clk;
  logic                      rst;
  logic                      rst_n;

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

  task automatic wait_write_transaction();
    bit write_accepted = 1'b0;
    while(!write_accepted) begin
      repeat (10) @(posedge clk);
      if(axi_master_test_i.s_axis_write_desc_status_valid == 1'b1) begin
        write_accepted = 1'b1;
        $display("write accepeted");
      end
    end
  endtask

  task automatic wait_read_transaction();
    bit read_accepted = 1'b0;
    while(!read_accepted) begin
      repeat (10) @(posedge clk);
      if(axi_master_test_i.s_axis_read_desc_status_valid == 1'b1) begin
        read_accepted = 1'b1;
        $display("read accepeted");
      end
    end
  endtask 

  task automatic stream_monitor();
    while(1) begin
      @(posedge clk);
      if(axi_master_test_i.curr.state == 'd7) begin
        if(axi_master_test_i.curr.stream_valid) begin
          $display("valid stream complete, size: %d", axi_master_test_i.curr.test_length);
        end else if(axi_master_test_i.curr.stream_error) begin
          $display("error stream complete, size: %d", axi_master_test_i.curr.test_length);
        end else begin
          $display("stream complete in unknown state, size: %d", axi_master_test_i.curr.test_length);
        end
      end
    end
  endtask 

  task automatic test_monitor();
    bit test_complete = 1'b0;
    while(!test_complete) begin
      @(posedge clk);
      if(axi_master_test_i.curr.test_complete == 1'b1) begin
        $display("test complete!");
        $finish;
      end
    end
  endtask 

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
    
    fork
      stream_monitor();
      test_monitor();
    join_none
  end

  assign rst_n = !rst;

  axi_master_tester #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH)
      , .AXI_DATA_WIDTH(AXI_DATA_WIDTH)
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

  axi_ram #(
        .ADDR_WIDTH(21)
      , .DATA_WIDTH(AXI_DATA_WIDTH)
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
