`timescale 1ns / 1ps

`include "soc_it_defs.vh"

module testbench_soc_it;

	parameter	C_MEM_INTERFACE_WIDTH = 512;
	parameter	C_SLV_INTERFACE_WIDTH = 128;
	parameter	C_MEMORY_ADDRESS_WIDTH = 32;
    parameter   C_MEMORY_COMMAND_WIDTH = 36;
  
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

  logic [C_MEMORY_COMMAND_WIDTH-1:0]    memory_command;
  logic                                 memory_command_valid;
  logic                                 memory_command_ready;
  logic [C_MEM_INTERFACE_WIDTH-1:0]     memory_wdata;
  logic [(C_MEM_INTERFACE_WIDTH/8)-1:0] memory_wdata_mask;
  logic                                 memory_wdata_end;
  logic                                 memory_wdata_valid;
  logic                                 memory_wdata_ready;
  logic [C_MEM_INTERFACE_WIDTH-1:0]     memory_rdata;
  logic                                 memory_rdata_end;
  logic                                 memory_rdata_valid;
  logic                                 memory_rdata_ready;

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

  soc_it_mem #(
        .C_MEM_INTERFACE_WIDTH (C_MEM_INTERFACE_WIDTH)
      , .C_SLV_INTERFACE_WIDTH (C_SLV_INTERFACE_WIDTH)
      , .C_MEMORY_ADDRESS_WIDTH(C_MEMORY_ADDRESS_WIDTH)
      , .C_MEMORY_COMMAND_WIDTH(C_MEMORY_COMMAND_WIDTH)
  ) soc_it_mem_i (
        .slave_clk    (clk)
      , .slave_rst    (rst)

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

      , .memory_interface_clk (clk)
      , .memory_interface_rst (rst)
      , .memory_command
      , .memory_command_valid
      , .memory_command_ready

      , .memory_wdata
      , .memory_wdata_mask
      , .memory_wdata_end
      , .memory_wdata_valid
      , .memory_wdata_ready

      , .memory_rdata
      , .memory_rdata_end
      , .memory_rdata_valid
      , .memory_rdata_ready
  );

  soc_it_mem_sram_adaptor #(
        .C_MEMORY_DATA_WIDTH   (C_MEM_INTERFACE_WIDTH)
      , .C_MEMORY_SIZE         (64*1024)
      , .C_MEMORY_COMMAND_WIDTH(C_MEMORY_COMMAND_WIDTH)
      , .C_MEMORY_ADDRESS_WIDTH(C_MEMORY_ADDRESS_WIDTH)
  ) soc_it_mem_sram_i (
        .system_clk   (clk)
      , .system_rst   (rst)
      
      , .memory_clk   ( )
      , .memory_rst   ( )

      , .memory_command
      , .memory_command_valid
      , .memory_command_ready
      , .memory_wdata
      , .memory_wdata_mask
      , .memory_wdata_end
      , .memory_wdata_valid
      , .memory_wdata_ready
      , .memory_rdata
      , .memory_rdata_end
      , .memory_rdata_valid
      , .memory_rdata_ready
  );

endmodule
