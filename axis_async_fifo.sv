
module axis_async_fifo #(
      parameter AXIS_TDATA_WIDTH = 64
    , parameter AXIS_TDEST_WIDTH = 4
    , parameter AXIS_TID_WIDTH   = 4
    , parameter AXIS_TUSER_WIDTH = 4
    , parameter AXIS_TKEEP_WIDTH = AXIS_TDATA_WIDTH / 8
    , parameter AXIS_TSTRB_WIDTH = AXIS_TDATA_WIDTH / 8
    , parameter FIFO_DEPTH       = 1024
    , parameter STORE_FORWARD    = 0
) (
      input  wire s_axis_clk
    , input  wire s_axis_rst_n
    , input  wire m_axis_clk

    , input  logic [AXIS_TDEST_WIDTH-1:0]   s_axis_tdest
    , input  logic [AXIS_TUSER_WIDTH-1:0]    s_axis_tuser
    , input  logic [AXIS_TID_WIDTH-1:0] s_axis_tid
    , input  logic [AXIS_TDATA_WIDTH-1:0] s_axis_tdata
    , input  logic [AXIS_TKEEP_WIDTH-1:0] s_axis_tkeep
    , input  logic [AXIS_TSTRB_WIDTH-1:0] s_axis_tstrb
    , input  logic s_axis_tvalid
    , input  logic s_axis_tlast
    , output logic s_axis_tready

    , output logic [AXIS_TDEST_WIDTH-1:0] m_axis_tdest
    , output logic [AXIS_TUSER_WIDTH-1:0] m_axis_tuser
    , output logic [AXIS_TID_WIDTH-1:0] m_axis_tid
    , output logic [AXIS_TDATA_WIDTH-1:0] m_axis_tdata
    , output logic [AXIS_TKEEP_WIDTH-1:0] m_axis_tkeep
    , output logic [AXIS_TSTRB_WIDTH-1:0] m_axis_tstrb
    , output logic m_axis_tvalid
    , output logic m_axis_tlast
    , input  logic m_axis_tready
);

  localparam packet_fifo_mode = STORE_FORWARD ? "true" : "false";

  // xpm_fifo_axis: AXI Stream FIFO
  // Xilinx Parameterized Macro, version 2019.1

  xpm_fifo_axis #(
      .CDC_SYNC_STAGES(2),  // DECIMAL
      .CLOCKING_MODE("independent_clock"),  // String
      .ECC_MODE("no_ecc"),  // String
      .FIFO_DEPTH(FIFO_DEPTH),  // DECIMAL
      .FIFO_MEMORY_TYPE("auto"),  // String
      .PACKET_FIFO(packet_fifo_mode),  // String
      .PROG_EMPTY_THRESH(10),  // DECIMAL
      .PROG_FULL_THRESH(10),  // DECIMAL
      .RD_DATA_COUNT_WIDTH(0),  // DECIMAL
      .RELATED_CLOCKS(0),  // DECIMAL
      .SIM_ASSERT_CHK(0),  // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      .TDATA_WIDTH(AXIS_TDATA_WIDTH),  // DECIMAL
      .TDEST_WIDTH(AXIS_TDEST_WIDTH),  // DECIMAL
      .TID_WIDTH(AXIS_TID_WIDTH),  // DECIMAL
      .TUSER_WIDTH(AXIS_TUSER_WIDTH),  // DECIMAL
      .USE_ADV_FEATURES("1000"),  // String
      .WR_DATA_COUNT_WIDTH(0)  // DECIMAL
  ) xpm_fifo_axis_inst (
      .almost_empty_axis(),

      .almost_full_axis(),

      .dbiterr_axis(),

      .m_axis_tdata(m_axis_tdata),

      .m_axis_tdest(m_axis_tdest),

      .m_axis_tid(m_axis_tid),

      .m_axis_tkeep(m_axis_tkeep),

      .m_axis_tlast(m_axis_tlast),
      .m_axis_tstrb(m_axis_tstrb),

      .m_axis_tuser(m_axis_tuser),

      .m_axis_tvalid(m_axis_tvalid),

      .prog_empty_axis(),

      .prog_full_axis(),

      .rd_data_count_axis(),

      .s_axis_tready(s_axis_tready),

      .sbiterr_axis(),

      .wr_data_count_axis(),

      .injectdbiterr_axis(1'b0),
      .injectsbiterr_axis(1'b0),

      .m_aclk(m_axis_clk),
      .m_axis_tready(m_axis_tready),

      .s_aclk(s_axis_clk),

      .s_aresetn   (s_axis_rst_n),
      .s_axis_tdata(s_axis_tdata),

      .s_axis_tdest(s_axis_tdest),

      .s_axis_tid(s_axis_tid),

      .s_axis_tkeep(s_axis_tkeep),
      .s_axis_tlast(s_axis_tlast),
      .s_axis_tstrb(s_axis_tstrb),

      .s_axis_tuser(s_axis_tuser),

      .s_axis_tvalid(s_axis_tvalid)
  );

endmodule
