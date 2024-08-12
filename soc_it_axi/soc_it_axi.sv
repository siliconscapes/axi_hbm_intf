module soc_it_axi #(
	  parameter	C_MEM_INTERFACE_WIDTH  = 256
	, parameter	C_MEM_ADDRESS_WIDTH    = 64
	, parameter	C_SLV_INTERFACE_WIDTH  = 128
    , parameter C_SLV_ADDRESS_WIDTH    = 64
    , parameter C_SLV_BURST_LENGTH     = 13
    , parameter AXI_ADDR_WIDTH         = C_MEM_ADDRESS_WIDTH
    , parameter AXI_DATA_WIDTH         = C_MEM_INTERFACE_WIDTH
    , parameter AXI_ID_WIDTH           = 8
    , parameter AXI_STRB_WIDTH         = (AXI_DATA_WIDTH / 8)
    , parameter AXIS_KEEP_WIDTH        = (AXI_DATA_WIDTH / 8)
)(
      input logic                                       slave_rst
    , input logic                                       slave_clk

	, input logic										slave_burst_start       
	, input	logic [C_SLV_BURST_LENGTH-1:0]				slave_burst_length      
	, input	logic									    slave_burst_rnw         
		
	, input  logic 	[C_SLV_ADDRESS_WIDTH-1 :0]			slave_address           
	, input	 logic									    slave_address_valid     
	, output logic										slave_address_ack       
	, input  logic	[3  :0]								slave_wrreq             
	, output logic										slave_wrack             
	, input  logic	[(C_SLV_INTERFACE_WIDTH/8)-1 :0] 	slave_be                
	, input  logic 	[ C_SLV_INTERFACE_WIDTH-1:0]		slave_datain            
	, input  logic	[3  :0]  							slave_rdreq             
	, output logic										slave_rdack             
	, output logic	[ C_SLV_INTERFACE_WIDTH-1:0]		slave_dataout           
	
    , input logic                                       axi_clk
    , input logic                                       axi_rst_n

    , output logic [  AXI_ID_WIDTH-1:0]                 m_axi_awid
    , output logic [AXI_ADDR_WIDTH-1:0]                 m_axi_awaddr
    , output logic [               7:0]                 m_axi_awlen
    , output logic [               2:0]                 m_axi_awsize
    , output logic [               1:0]                 m_axi_awburst
    , output logic                                      m_axi_awlock
    , output logic [               3:0]                 m_axi_awcache
    , output logic [               2:0]                 m_axi_awprot
    , output logic                                      m_axi_awvalid
    , input  logic                                      m_axi_awready
    , output logic [AXI_DATA_WIDTH-1:0]                 m_axi_wdata
    , output logic [AXI_STRB_WIDTH-1:0]                 m_axi_wstrb
    , output logic                                      m_axi_wlast
    , output logic                                      m_axi_wvalid
    , input  logic                                      m_axi_wready
    , input  logic [  AXI_ID_WIDTH-1:0]                 m_axi_bid
    , input  logic [               1:0]                 m_axi_bresp
    , input  logic                                      m_axi_bvalid
    , output logic                                      m_axi_bready
    , output logic [  AXI_ID_WIDTH-1:0]                 m_axi_arid
    , output logic [AXI_ADDR_WIDTH-1:0]                 m_axi_araddr
    , output logic [               7:0]                 m_axi_arlen
    , output logic [               2:0]                 m_axi_arsize
    , output logic [               1:0]                 m_axi_arburst
    , output logic                                      m_axi_arlock
    , output logic [               3:0]                 m_axi_arcache
    , output logic [               2:0]                 m_axi_arprot
    , output logic                                      m_axi_arvalid
    , input  logic                                      m_axi_arready
    , input  logic [  AXI_ID_WIDTH-1:0]                 m_axi_rid
    , input  logic [AXI_DATA_WIDTH-1:0]                 m_axi_rdata
    , input  logic [               1:0]                 m_axi_rresp
    , input  logic                                      m_axi_rlast
    , input  logic                                      m_axi_rvalid
    , output logic                                      m_axi_rready
);

    localparam AXIS_DEST_WIDTH = 8;
    localparam AXIS_USER_WIDTH = 8;
    localparam AXIS_ID_WIDTH   = 8;
    localparam STREAM_LEN_WIDTH = 21;
    localparam STREAM_TAG_WIDTH = 8;
    localparam XFER_PARAMS_WIDTH = C_SLV_ADDRESS_WIDTH + C_SLV_BURST_LENGTH + 1 + 1; // slv_burst_start , slv_burst_rnw

    logic [AXI_ADDR_WIDTH-1:0]   m_axis_write_desc_addr;
    logic [STREAM_LEN_WIDTH-1:0] m_axis_write_desc_len;
    logic [STREAM_TAG_WIDTH-1:0] m_axis_write_desc_tag;
    logic [AXIS_ID_WIDTH-1:0]    m_axis_write_desc_id;
    logic [AXIS_DEST_WIDTH-1:0]  m_axis_write_desc_dest;
    logic [AXIS_USER_WIDTH-1:0]  m_axis_write_desc_user;
    logic                        m_axis_write_desc_valid;
    logic                        m_axis_write_desc_ready;
    logic [AXI_DATA_WIDTH-1:0]   m_axis_write_data_tdata;
    logic [AXIS_KEEP_WIDTH-1:0]  m_axis_write_data_tkeep;
    logic                        m_axis_write_data_tvalid;
    logic                        m_axis_write_data_tlast;
    logic [AXIS_ID_WIDTH-1:0]    m_axis_write_data_tid;
    logic [AXIS_DEST_WIDTH-1:0]  m_axis_write_data_tdest;
    logic [AXIS_USER_WIDTH-1:0]  m_axis_write_data_tuser;
    logic                        m_axis_write_data_tready;
    logic [AXI_ADDR_WIDTH-1:0]   m_axis_read_desc_addr;
    logic [STREAM_LEN_WIDTH-1:0] m_axis_read_desc_len;
    logic [STREAM_TAG_WIDTH-1:0] m_axis_read_desc_tag;
    logic [AXIS_ID_WIDTH-1:0]    m_axis_read_desc_id;
    logic [AXIS_DEST_WIDTH-1:0]  m_axis_read_desc_dest;
    logic [AXIS_USER_WIDTH-1:0]  m_axis_read_desc_user;
    logic                        m_axis_read_desc_valid;
    logic                        m_axis_read_desc_ready;
    logic [AXI_DATA_WIDTH-1:0]   s_axis_read_data_tdata;
    logic [AXIS_KEEP_WIDTH-1:0]  s_axis_read_data_tkeep;
    logic                        s_axis_read_data_tvalid;
    logic                        s_axis_read_data_tlast;
    logic [AXIS_ID_WIDTH-1:0]    s_axis_read_data_tid;
    logic [AXIS_DEST_WIDTH-1:0]  s_axis_read_data_tdest;
    logic [AXIS_USER_WIDTH-1:0]  s_axis_read_data_tuser;
    logic                        s_axis_read_data_tready;


    logic [XFER_PARAMS_WIDTH-1:0] xfer_params_src;
    logic [XFER_PARAMS_WIDTH-1:0] xfer_params_dst;
    logic xfer_params_src_req;
    logic xfer_params_src_ack;
    logic xfer_params_dst_req;
    logic xfer_params_dst_ack;

    logic soc_it_wvalid;
    logic soc_it_wready;
    logic soc_it_wlast;

    logic soc_it_rready;
    logic soc_it_rvalid;
    logic soc_it_rlast;

    soc_it_handler #(
          .C_AXI_INTERFACE_WIDTH(C_MEM_INTERFACE_WIDTH)
        , .C_SLV_INTERFACE_WIDTH(C_SLV_INTERFACE_WIDTH)
        , .C_SLV_ADDRESS_WIDTH(C_SLV_ADDRESS_WIDTH)
        , .C_SLV_BURST_LENGTH(C_SLV_BURST_LENGTH)
        , .XFER_PARAMS_WIDTH(XFER_PARAMS_WIDTH)
    ) slave (
          .clk_i                    (slave_clk          )
        , .rst_i                    (slave_rst          )

        , .slave_burst_start
        , .slave_burst_length
        , .slave_burst_rnw

        , .slave_address
        , .slave_address_valid
        , .slave_address_ack
        , .slave_wrreq
        , .slave_wrack
        , .slave_rdreq
        , .slave_rdack

        , .xfer_params_o            (xfer_params_src)
        , .xfer_params_req_o        (xfer_params_src_req)
        , .xfer_params_ack_i        (xfer_params_src_ack)

        , .soc_it_wvalid_o          (soc_it_wvalid      )
        , .soc_it_wready_i          (soc_it_wready      )
        , .soc_it_wlast_o           (soc_it_wlast       )

        , .soc_it_rready_o          (soc_it_rready      )
        , .soc_it_rvalid_i          (soc_it_rvalid      )
        , .soc_it_rlast_i           (soc_it_rlast       )
    );

    axi_handler #(
          .AXIS_DEST_WIDTH(AXIS_DEST_WIDTH)
        , .AXIS_USER_WIDTH(AXIS_USER_WIDTH)
        , .AXIS_ID_WIDTH(AXIS_ID_WIDTH)
        , .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH)
        , .AXI_DATA_WIDTH(AXI_DATA_WIDTH)
        , .STREAM_LEN_WIDTH(STREAM_LEN_WIDTH)
        , .STREAM_TAG_WIDTH(STREAM_TAG_WIDTH)
        , .XFER_PARAMS_WIDTH(XFER_PARAMS_WIDTH)
        , .C_SLV_ADDRESS_WIDTH(C_SLV_ADDRESS_WIDTH)
        , .C_SLV_BURST_LENGTH(C_SLV_BURST_LENGTH)
    ) master (
          .clk_i                    (axi_clk)
        , .rst_ni                   (axi_rst_n)

        , .xfer_params_i            (xfer_params_dst       )
        , .xfer_params_req_i        (xfer_params_dst_req   )
        , .xfer_params_ack_o        (xfer_params_dst_ack   )

        , .m_axis_write_desc_addr  
        , .m_axis_write_desc_len   
        , .m_axis_write_desc_tag   
        , .m_axis_write_desc_id    
        , .m_axis_write_desc_dest  
        , .m_axis_write_desc_user  
        , .m_axis_write_desc_valid 
        , .m_axis_write_desc_ready 

        , .m_axis_read_desc_addr    
        , .m_axis_read_desc_len     
        , .m_axis_read_desc_tag     
        , .m_axis_read_desc_id      
        , .m_axis_read_desc_dest    
        , .m_axis_read_desc_user    
        , .m_axis_read_desc_valid   
        , .m_axis_read_desc_ready   
    );

    cdc_handshake #(
          .DATA_WIDTH   (XFER_PARAMS_WIDTH)
    ) soc_it_descriptor_cdc (
          .src_clk_i        (slave_clk  )
        , .dst_clk_i        (axi_clk    )

        , .src_data_i       (xfer_params_src)
        , .src_valid_i      (xfer_params_src_req)
        , .src_ack_o        (xfer_params_src_ack)

        , .dst_data_o       (xfer_params_dst)
        , .dst_valid_o      (xfer_params_dst_req)
        , .dst_ack_i        (xfer_params_dst_ack)
    );

    logic [AXIS_KEEP_WIDTH-1:0] write_data_resize_tkeep;
    logic [AXI_DATA_WIDTH-1:0] write_data_resize_tdata;
    logic write_data_resize_tvalid;
    logic write_data_resize_tlast;
    logic write_data_resize_tready;
    logic [AXIS_USER_WIDTH-1:0] write_data_resize_tuser;
    logic [AXIS_ID_WIDTH-1:0] write_data_resize_tid;
    logic [AXIS_DEST_WIDTH-1:0] write_data_resize_tdest;

    axis_adapter #(
          .S_DATA_WIDTH(C_SLV_INTERFACE_WIDTH)
        , .S_KEEP_ENABLE(1)
        , .S_KEEP_WIDTH(C_SLV_INTERFACE_WIDTH/8)
        , .M_DATA_WIDTH(AXI_DATA_WIDTH)
        , .M_KEEP_ENABLE(1)
        , .M_KEEP_WIDTH(AXI_DATA_WIDTH/8)
        , .ID_ENABLE(1)
        , .ID_WIDTH(AXI_ID_WIDTH)
        , .DEST_ENABLE(1)
        , .DEST_WIDTH(AXIS_DEST_WIDTH)
        , .USER_ENABLE(1)
        , .USER_WIDTH(AXIS_USER_WIDTH)
    ) axi_write_adapter (
          .clk              (slave_clk)
        , .rst              (slave_rst)

        , .s_axis_tdata     (slave_datain)
        , .s_axis_tkeep     (slave_be)
        , .s_axis_tvalid    (soc_it_wvalid)
        , .s_axis_tready    (soc_it_wready)
        , .s_axis_tlast     (soc_it_wlast)
        , .s_axis_tid       ('0)
        , .s_axis_tdest     ('0)
        , .s_axis_tuser     ('0)

        , .m_axis_tdata     (write_data_resize_tdata)
        , .m_axis_tkeep     (write_data_resize_tkeep)
        , .m_axis_tvalid    (write_data_resize_tvalid)
        , .m_axis_tready    (write_data_resize_tready)
        , .m_axis_tlast     (write_data_resize_tlast)
        , .m_axis_tid       (write_data_resize_tid  )
        , .m_axis_tdest     (write_data_resize_tdest)
        , .m_axis_tuser     (write_data_resize_tuser)
    );

    axis_async_fifo #(
          .AXIS_TDATA_WIDTH(AXI_DATA_WIDTH)
        , .AXIS_TDEST_WIDTH(AXIS_DEST_WIDTH)
        , .AXIS_TUSER_WIDTH(AXIS_USER_WIDTH)
        , .AXIS_TID_WIDTH(AXIS_ID_WIDTH)
        , .FIFO_DEPTH(4096)
        , .STORE_FORWARD(0)
    ) axi_write_fifo (
          .s_axis_clk       (slave_clk)
        , .s_axis_rst_n     (!slave_rst)
        , .s_axis_tdest     (write_data_resize_tdest)
        , .s_axis_tuser     (write_data_resize_tuser)
        , .s_axis_tid       (write_data_resize_tid)
        , .s_axis_tdata     (write_data_resize_tdata)
        , .s_axis_tstrb     ('1)
        , .s_axis_tkeep     (write_data_resize_tkeep)
        , .s_axis_tvalid    (write_data_resize_tvalid)
        , .s_axis_tlast     (write_data_resize_tlast)
        , .s_axis_tready    (write_data_resize_tready)

        , .m_axis_clk       (axi_clk)
        , .m_axis_tdest     (m_axis_write_data_tdest )
        , .m_axis_tuser     (m_axis_write_data_tuser )
        , .m_axis_tid       (m_axis_write_data_tid   )
        , .m_axis_tstrb     (   ) //uc
        , .m_axis_tkeep     (m_axis_write_data_tkeep )
        , .m_axis_tdata     (m_axis_write_data_tdata )
        , .m_axis_tvalid    (m_axis_write_data_tvalid)
        , .m_axis_tlast     (m_axis_write_data_tlast )
        , .m_axis_tready    (m_axis_write_data_tready)
    );

    logic [AXIS_KEEP_WIDTH-1:0] read_data_resize_tkeep;
    logic [AXI_DATA_WIDTH-1:0] read_data_resize_tdata;
    logic read_data_resize_tvalid;
    logic read_data_resize_tlast;
    logic read_data_resize_tready;
    logic [AXIS_USER_WIDTH-1:0] read_data_resize_tuser;
    logic [AXIS_ID_WIDTH-1:0] read_data_resize_tid;
    logic [AXIS_DEST_WIDTH-1:0] read_data_resize_tdest;

    axis_async_fifo #(
          .AXIS_TDATA_WIDTH(AXI_DATA_WIDTH)
        , .AXIS_TDEST_WIDTH(AXIS_DEST_WIDTH)
        , .AXIS_TUSER_WIDTH(AXIS_USER_WIDTH)
        , .AXIS_TID_WIDTH(AXIS_ID_WIDTH)
        , .FIFO_DEPTH(4096)
        , .STORE_FORWARD(0)
    ) axi_read_fifo (
          .s_axis_clk       (axi_clk)
        , .s_axis_rst_n     (axi_rst_n)
        , .s_axis_tdest     (s_axis_read_data_tdest)
        , .s_axis_tuser     (s_axis_read_data_tuser)
        , .s_axis_tid       (s_axis_read_data_tid  )
        , .s_axis_tdata     (s_axis_read_data_tdata)
        , .s_axis_tstrb     ('1)
        , .s_axis_tkeep     (s_axis_read_data_tkeep )
        , .s_axis_tvalid    (s_axis_read_data_tvalid)
        , .s_axis_tlast     (s_axis_read_data_tlast )
        , .s_axis_tready    (s_axis_read_data_tready)

        , .m_axis_clk       (slave_clk)
        , .m_axis_tdest     (read_data_resize_tdest   ) 
        , .m_axis_tuser     (read_data_resize_tuser   )  
        , .m_axis_tid       (read_data_resize_tid     ) 
        , .m_axis_tstrb     (   ) //uc
        , .m_axis_tkeep     (read_data_resize_tkeep   ) 
        , .m_axis_tdata     (read_data_resize_tdata   )
        , .m_axis_tvalid    (read_data_resize_tvalid  )
        , .m_axis_tlast     (read_data_resize_tlast   )
        , .m_axis_tready    (read_data_resize_tready  )
    );

    axis_adapter #(
          .S_DATA_WIDTH(AXI_DATA_WIDTH)
        , .S_KEEP_ENABLE(1)
        , .S_KEEP_WIDTH(AXI_DATA_WIDTH/8)
        , .M_DATA_WIDTH(C_SLV_INTERFACE_WIDTH)
        , .M_KEEP_ENABLE(1)
        , .M_KEEP_WIDTH(C_SLV_INTERFACE_WIDTH/8)
        , .ID_ENABLE(1)
        , .ID_WIDTH(AXI_ID_WIDTH)
        , .DEST_ENABLE(1)
        , .DEST_WIDTH(AXIS_DEST_WIDTH)
        , .USER_ENABLE(1)
        , .USER_WIDTH(AXIS_USER_WIDTH)
    ) axi_read_adapter (
          .clk              (slave_clk)
        , .rst              (slave_rst)

        , .s_axis_tdata     (read_data_resize_tdata)
        , .s_axis_tkeep     (read_data_resize_tkeep)
        , .s_axis_tvalid    (read_data_resize_tvalid)
        , .s_axis_tready    (read_data_resize_tready)
        , .s_axis_tlast     (read_data_resize_tlast)
        , .s_axis_tid       (read_data_resize_tid)
        , .s_axis_tdest     (read_data_resize_tdest)
        , .s_axis_tuser     (read_data_resize_tuser)

        , .m_axis_tdata     (slave_dataout)
        , .m_axis_tkeep     (   )
        , .m_axis_tvalid    (soc_it_rvalid)
        , .m_axis_tready    (soc_it_rready)
        , .m_axis_tlast     (soc_it_rlast)
        , .m_axis_tid       (   )
        , .m_axis_tdest     (   )
        , .m_axis_tuser     (   )
    );

    logic read_enable;
    logic write_enable;
    logic write_abort;

    assign read_enable  = 1'b1;
    assign write_enable = 1'b1;
    assign write_abort  = 1'b0;

    logic [STREAM_TAG_WIDTH-1:0]  s_axis_read_desc_status_tag;
    logic [3:0]                   s_axis_read_desc_status_error;
    logic                         s_axis_read_desc_status_valid;

    logic [STREAM_LEN_WIDTH-1:0]  s_axis_write_desc_status_len;
    logic [STREAM_TAG_WIDTH-1:0]  s_axis_write_desc_status_tag;
    logic [AXIS_ID_WIDTH-1:0]     s_axis_write_desc_status_id;
    logic [AXIS_DEST_WIDTH-1:0]   s_axis_write_desc_status_dest;
    logic [AXIS_USER_WIDTH-1:0]   s_axis_write_desc_status_user;
    logic [3:0]                   s_axis_write_desc_status_error;
    logic                         s_axis_write_desc_status_valid;

    axi_dma #(
          .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH)
        , .AXI_DATA_WIDTH(AXI_DATA_WIDTH)
        , .AXI_ID_WIDTH(AXI_ID_WIDTH)
        , .AXIS_ID_WIDTH(AXIS_ID_WIDTH)
        , .AXIS_USER_WIDTH(AXIS_USER_WIDTH)
        , .AXIS_DEST_WIDTH(AXIS_DEST_WIDTH)
        , .TAG_WIDTH(STREAM_TAG_WIDTH)
        , .LEN_WIDTH(STREAM_LEN_WIDTH)
        , .ENABLE_UNALIGNED(1'b1)
    ) axi_dma_i (
          .clk                  (axi_clk)
        , .rst                  (!axi_rst_n)

        , .s_axis_read_desc_addr (m_axis_read_desc_addr)
        , .s_axis_read_desc_len  (m_axis_read_desc_len)
        , .s_axis_read_desc_tag  (m_axis_read_desc_tag)
        , .s_axis_read_desc_id   (m_axis_read_desc_id)
        , .s_axis_read_desc_dest (m_axis_read_desc_dest)
        , .s_axis_read_desc_user (m_axis_read_desc_user)
        , .s_axis_read_desc_valid(m_axis_read_desc_valid)
        , .s_axis_read_desc_ready(m_axis_read_desc_ready)

        , .m_axis_read_desc_status_tag  (s_axis_read_desc_status_tag)
        , .m_axis_read_desc_status_error(s_axis_read_desc_status_error)
        , .m_axis_read_desc_status_valid(s_axis_read_desc_status_valid)

        , .s_axis_write_desc_addr (m_axis_write_desc_addr)
        , .s_axis_write_desc_len  (m_axis_write_desc_len)
        , .s_axis_write_desc_tag  (m_axis_write_desc_tag)
        , .s_axis_write_desc_valid(m_axis_write_desc_valid)
        , .s_axis_write_desc_ready(m_axis_write_desc_ready)

        , .m_axis_write_desc_status_len  (s_axis_write_desc_status_len)
        , .m_axis_write_desc_status_tag  (s_axis_write_desc_status_tag)
        , .m_axis_write_desc_status_id   (s_axis_write_desc_status_id)
        , .m_axis_write_desc_status_dest (s_axis_write_desc_status_dest)
        , .m_axis_write_desc_status_user (s_axis_write_desc_status_user)
        , .m_axis_write_desc_status_error(s_axis_write_desc_status_error)
        , .m_axis_write_desc_status_valid(s_axis_write_desc_status_valid)

        , .m_axis_read_data_tdata (s_axis_read_data_tdata)
        , .m_axis_read_data_tkeep (s_axis_read_data_tkeep)
        , .m_axis_read_data_tvalid(s_axis_read_data_tvalid)
        , .m_axis_read_data_tready(s_axis_read_data_tready)
        , .m_axis_read_data_tlast (s_axis_read_data_tlast)
        , .m_axis_read_data_tid   (s_axis_read_data_tid)
        , .m_axis_read_data_tdest (s_axis_read_data_tdest)
        , .m_axis_read_data_tuser (s_axis_read_data_tuser)

        , .s_axis_write_data_tdata (m_axis_write_data_tdata)
        , .s_axis_write_data_tkeep (m_axis_write_data_tkeep)
        , .s_axis_write_data_tvalid(m_axis_write_data_tvalid)
        , .s_axis_write_data_tready(m_axis_write_data_tready)
        , .s_axis_write_data_tlast (m_axis_write_data_tlast)
        , .s_axis_write_data_tid   (m_axis_write_data_tid)
        , .s_axis_write_data_tdest (m_axis_write_data_tdest)
        , .s_axis_write_data_tuser (m_axis_write_data_tuser)

        , .m_axi_awid
        , .m_axi_awaddr
        , .m_axi_awlen
        , .m_axi_awsize
        , .m_axi_awburst
        , .m_axi_awlock
        , .m_axi_awcache
        , .m_axi_awprot
        , .m_axi_awvalid
        , .m_axi_awready
        , .m_axi_wdata
        , .m_axi_wstrb
        , .m_axi_wlast
        , .m_axi_wvalid
        , .m_axi_wready
        , .m_axi_bid
        , .m_axi_bresp
        , .m_axi_bvalid
        , .m_axi_bready
        , .m_axi_arid
        , .m_axi_araddr
        , .m_axi_arlen
        , .m_axi_arsize
        , .m_axi_arburst
        , .m_axi_arlock
        , .m_axi_arcache
        , .m_axi_arprot
        , .m_axi_arvalid
        , .m_axi_arready
        , .m_axi_rid
        , .m_axi_rdata
        , .m_axi_rresp
        , .m_axi_rlast
        , .m_axi_rvalid
        , .m_axi_rready

        , .read_enable
        , .write_enable
        , .write_abort
    );

endmodule