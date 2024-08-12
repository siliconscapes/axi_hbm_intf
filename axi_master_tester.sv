`timescale 1ns / 1ps

module axi_master_tester #(
      parameter AXI_ADDR_WIDTH   = 64
    , parameter AXI_DATA_WIDTH   = 64
    , parameter AXI_ID_WIDTH     = 8
    , parameter AXI_STRB_WIDTH   = (AXI_DATA_WIDTH / 8)
    , parameter AXIS_KEEP_WIDTH  = AXI_STRB_WIDTH
    , parameter AXIS_DEST_WIDTH  = 8
    , parameter AXIS_USER_WIDTH  = 8
    , parameter AXIS_ID_WIDTH    = 8
    , parameter STREAM_LEN_WIDTH = 21
    , parameter STREAM_TAG_WIDTH = 8
) (
      input wire clk_i
    , input wire rst_ni

    /*
     * AXI master interface
     */
    , output logic [  AXI_ID_WIDTH-1:0] m_axi_awid
    , output logic [AXI_ADDR_WIDTH-1:0] m_axi_awaddr
    , output logic [               7:0] m_axi_awlen
    , output logic [               2:0] m_axi_awsize
    , output logic [               1:0] m_axi_awburst
    , output logic                      m_axi_awlock
    , output logic [               3:0] m_axi_awcache
    , output logic [               2:0] m_axi_awprot
    , output logic                      m_axi_awvalid
    , input  logic                      m_axi_awready
    , output logic [AXI_DATA_WIDTH-1:0] m_axi_wdata
    , output logic [AXI_STRB_WIDTH-1:0] m_axi_wstrb
    , output logic                      m_axi_wlast
    , output logic                      m_axi_wvalid
    , input  logic                      m_axi_wready
    , input  logic [  AXI_ID_WIDTH-1:0] m_axi_bid
    , input  logic [               1:0] m_axi_bresp
    , input  logic                      m_axi_bvalid
    , output logic                      m_axi_bready
    , output logic [  AXI_ID_WIDTH-1:0] m_axi_arid
    , output logic [AXI_ADDR_WIDTH-1:0] m_axi_araddr
    , output logic [               7:0] m_axi_arlen
    , output logic [               2:0] m_axi_arsize
    , output logic [               1:0] m_axi_arburst
    , output logic                      m_axi_arlock
    , output logic [               3:0] m_axi_arcache
    , output logic [               2:0] m_axi_arprot
    , output logic                      m_axi_arvalid
    , input  logic                      m_axi_arready
    , input  logic [  AXI_ID_WIDTH-1:0] m_axi_rid
    , input  logic [AXI_DATA_WIDTH-1:0] m_axi_rdata
    , input  logic [               1:0] m_axi_rresp
    , input  logic                      m_axi_rlast
    , input  logic                      m_axi_rvalid
    , output logic                      m_axi_rready
);

  //interfaces
  logic [  AXI_ADDR_WIDTH-1:0] m_axis_write_desc_addr;
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
  logic                        m_axis_write_data_tready;
  logic                        m_axis_write_data_tlast;
  logic [AXIS_ID_WIDTH-1:0]    m_axis_write_data_tid;
  logic [AXIS_DEST_WIDTH-1:0]  m_axis_write_data_tdest;
  logic [AXIS_USER_WIDTH-1:0]  m_axis_write_data_tuser;

  logic [  AXI_ADDR_WIDTH-1:0] m_axis_read_desc_addr;
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
  logic                        s_axis_read_data_tready;
  logic                        s_axis_read_data_tlast;
  logic [AXIS_ID_WIDTH-1:0]    s_axis_read_data_tid;
  logic [AXIS_DEST_WIDTH-1:0]  s_axis_read_data_tdest;
  logic [AXIS_USER_WIDTH-1:0]  s_axis_read_data_tuser;

  parameter NUM_AXI_32BIT_WORDS = AXI_DATA_WIDTH/32;

  parameter [AXI_DATA_WIDTH-1:0] TEST_KEY0 = {NUM_AXI_32BIT_WORDS{32'hCAFEF00D}};
  parameter [AXI_DATA_WIDTH-1:0] TEST_KEY1 = {NUM_AXI_32BIT_WORDS{32'hDEADBEEF}};

  parameter CLK_FREQ = 100 * (1000 * 1000);
  parameter CLK_PER = 1 / CLK_FREQ;
  parameter TEST_WAIT_TIME = 60;  // seconds
  parameter WAIT_COUNTS = TEST_WAIT_TIME / CLK_PER;
`ifdef SYNTHESIS
  parameter WAIT_COUNTER_WIDTH = $clog2(WAIT_COUNTS);
`else
  parameter WAIT_COUNTER_WIDTH = 8;
`endif

  parameter AXI_WORD_SIZE = AXI_DATA_WIDTH / 8;

  parameter MAX_TRANSF_LEN = 1024 * 1024;

  logic read_enable;
  logic write_enable;
  logic write_abort;

  assign read_enable  = 1'b1;
  assign write_enable = 1'b1;
  assign write_abort  = 1'b0;

  typedef enum logic [2:0] {
      Idle
    , Count
    , RequestWrites
    , DoWrites
    , RequestReads
    , DoReads
    , Check
    , Report
  } state_e;

  typedef struct {
    state_e state;
    logic [WAIT_COUNTER_WIDTH-1:0] wait_count;
    logic [31:0] test_addr;
    logic [31:0] test_length;
    logic [31:0] w_byte_count;
    logic [31:0] r_byte_count;
    logic w_alt;
    logic test_complete;
    logic stream_valid;
    logic stream_error;
  } regs_t;

  regs_t next, curr;
  regs_t init = '{state: Idle, default: '0};

  logic  test_trig;

  always_ff @(posedge clk_i) begin
    if (!rst_ni) begin
      curr <= init;
      test_trig <= 1'b0;
    end else begin
      curr <= next;
      test_trig <= 1'b1;
    end
  end

  always_comb begin
    next = curr;

    m_axis_write_desc_valid  = 1'b0;
    m_axis_write_desc_len    = '0;
    m_axis_write_desc_id     = '0;
    m_axis_write_desc_user   = '0;
    m_axis_write_desc_dest   = '0;
    m_axis_write_desc_tag    = '0;
    m_axis_write_desc_addr   = '0;

    m_axis_read_desc_valid   = 1'b0;
    m_axis_read_desc_len     = '0;
    m_axis_read_desc_id      = '0;
    m_axis_read_desc_user    = '0;
    m_axis_read_desc_dest    = '0;
    m_axis_read_desc_tag     = '0;
    m_axis_read_desc_addr    = '0;

    m_axis_write_data_tvalid = 1'b0;
    m_axis_write_data_tkeep  = '0;
    m_axis_write_data_tlast  = 1'b0;
    m_axis_write_data_tdest  = '0;
    m_axis_write_data_tid    = '0;
    m_axis_write_data_tuser  = '0;
    m_axis_write_data_tdata  = '0;

    s_axis_read_data_tready  = 1'b0;

    unique case (curr.state)
      Idle: begin
        if (test_trig) begin
          next.wait_count   = '0;
          next.test_addr    = '0;
          next.test_length  = 'd512;
          next.test_complete = 1'b0;
          next.state        = Count;
        end
      end
      Count: begin
        next.stream_valid = 1'b0;
        next.stream_error = 1'b0;

        next.w_byte_count = '0;
        next.r_byte_count = '0;

        next.w_alt        = 1'b0;
        next.wait_count = curr.wait_count + 'd1;
        if (next.wait_count == '1) begin
          next.wait_count = '0;
          next.state = RequestWrites;
        end
      end
      RequestWrites: begin
        m_axis_write_desc_addr  = curr.test_addr;
        m_axis_write_desc_len   = curr.test_length;
        m_axis_write_desc_tag   = '1;
        m_axis_write_desc_valid = 1'b1;
        if (m_axis_write_desc_ready) begin
          next.state = DoWrites;
        end
      end
      DoWrites: begin
        m_axis_write_data_tdata = (curr.w_alt) ? TEST_KEY0 : TEST_KEY1;
        m_axis_write_data_tkeep = '1;
        m_axis_write_data_tvalid = 1'b1;
        m_axis_write_data_tlast  = (curr.w_byte_count == curr.test_length - AXI_WORD_SIZE) ? 1'b1 : 1'b0;
        if (m_axis_write_data_tready) begin
          next.w_alt = !curr.w_alt;
          next.w_byte_count = curr.w_byte_count + AXI_WORD_SIZE;
          if (m_axis_write_data_tlast) begin
            next.state = RequestReads;
          end
        end
      end
      RequestReads: begin
        m_axis_read_desc_addr  = curr.test_addr;
        m_axis_read_desc_len   = curr.test_length;
        m_axis_read_desc_tag   = '1;
        m_axis_read_desc_valid = 1'b1;
        if (m_axis_read_desc_ready) begin
          next.state = DoReads;
        end
      end
      DoReads: begin
        s_axis_read_data_tready = 1'b1;
        if (s_axis_read_data_tvalid) begin
          next.r_byte_count = curr.r_byte_count + AXI_WORD_SIZE;
          if(s_axis_read_data_tlast) begin
            next.state = Check;
          end
        end
      end
      Check: begin
        if((curr.r_byte_count == curr.w_byte_count) && (curr.r_byte_count == curr.test_length)) begin
          next.stream_error = 1'b0;
          next.stream_valid  = 1'b1;
        end else begin
          next.stream_error = 1'b1;
          next.stream_valid  = 1'b0;
        end
        next.state = Report;
      end
      Report: begin
        //
        if (curr.test_length < MAX_TRANSF_LEN) begin
          next.state = Count;
          next.test_addr = curr.test_length;
          next.test_length = curr.test_length << 1;
        end else begin 
          next.test_complete = 1'b1;
        end
      end
      //default
      default: next.state = Idle;
    endcase
  end

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
        .clk(clk_i)
      , .rst(!rst_ni)

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

