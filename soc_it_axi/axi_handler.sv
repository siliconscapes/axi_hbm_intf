module axi_handler #(
      parameter AXIS_DEST_WIDTH  = 8
    , parameter AXIS_USER_WIDTH  = 8
    , parameter AXIS_ID_WIDTH    = 8
    , parameter AXI_ADDR_WIDTH   = 32
    , parameter AXI_DATA_WIDTH   = 64
    , parameter AXIS_KEEP_WIDTH  = AXI_DATA_WIDTH/8
    , parameter STREAM_LEN_WIDTH = 21
    , parameter STREAM_TAG_WIDTH = 8
    , parameter C_SLV_ADDRESS_WIDTH = 64
    , parameter C_SLV_BURST_LENGTH  = 13
    , parameter XFER_PARAMS_WIDTH = C_SLV_ADDRESS_WIDTH + C_SLV_BURST_LENGTH + 1 + 1 // slv_burst_start , slv_burst_rnw
) (
      input clk_i
    , input rst_ni

    , input  logic [XFER_PARAMS_WIDTH-1:0] xfer_params_i
    , input  logic xfer_params_req_i
    , output logic xfer_params_ack_o

    , output logic [AXI_ADDR_WIDTH-1:0]   m_axis_write_desc_addr
    , output logic [STREAM_LEN_WIDTH-1:0] m_axis_write_desc_len
    , output logic [STREAM_TAG_WIDTH-1:0] m_axis_write_desc_tag
    , output logic [AXIS_ID_WIDTH-1:0]    m_axis_write_desc_id
    , output logic [AXIS_DEST_WIDTH-1:0]  m_axis_write_desc_dest
    , output logic [AXIS_USER_WIDTH-1:0]  m_axis_write_desc_user
    , output logic                        m_axis_write_desc_valid
    , input  logic                        m_axis_write_desc_ready

    , output logic [AXI_ADDR_WIDTH-1:0]   m_axis_read_desc_addr
    , output logic [STREAM_LEN_WIDTH-1:0] m_axis_read_desc_len
    , output logic [STREAM_TAG_WIDTH-1:0] m_axis_read_desc_tag
    , output logic [AXIS_ID_WIDTH-1:0]    m_axis_read_desc_id
    , output logic [AXIS_DEST_WIDTH-1:0]  m_axis_read_desc_dest
    , output logic [AXIS_USER_WIDTH-1:0]  m_axis_read_desc_user
    , output logic                        m_axis_read_desc_valid
    , input  logic                        m_axis_read_desc_ready
);
    // axi_handler (master)

    typedef enum logic [2:0] {
          Idle
        , CaptureDescr
        , WriteRequest
        , ReadRequest
        , AckRequest
    } state_e;

    typedef struct {
        state_e state;
        logic                           xfer_req_ack;
        logic [15:0]                    axi_desc_errors;
        logic [XFER_PARAMS_WIDTH-1:0]   xfer_params;
    } regs_t;

    regs_t next, curr;
    regs_t init = '{state: Idle, default: '0};

    always_ff @(posedge clk_i) begin
        if (!rst_ni) begin
            curr <= init;
        end else begin
            curr <= next;
        end
    end

    assign xfer_params_ack_o = curr.xfer_req_ack;

    always_comb begin
        next = curr;

        next.xfer_req_ack = 1'b0;

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

        unique case(curr.state)
            Idle: begin
                next.xfer_req_ack = 1'b0;
                if(xfer_params_req_i) begin 
                    next.state = CaptureDescr;
                    next.xfer_params = xfer_params_i;
                end
            end
            CaptureDescr: begin
                next.xfer_req_ack = 1'b0;

                if(curr.xfer_params[C_SLV_ADDRESS_WIDTH + C_SLV_BURST_LENGTH + 1]) begin //slave_burst_start (should always be the case)
                    if(curr.xfer_params[C_SLV_ADDRESS_WIDTH + C_SLV_BURST_LENGTH]) begin //rnw
                        next.state = ReadRequest;
                    end else begin
                        next.state = WriteRequest;
                    end
                end else begin
                    next.state = Idle;
                    next.axi_desc_errors = curr.axi_desc_errors + 'd1;
                end
            end
            WriteRequest: begin
                m_axis_write_desc_addr  = curr.xfer_params[C_SLV_ADDRESS_WIDTH-1 : 0];
                m_axis_write_desc_len   = curr.xfer_params[C_SLV_ADDRESS_WIDTH + C_SLV_BURST_LENGTH-1 : C_SLV_ADDRESS_WIDTH];
                m_axis_write_desc_tag   = '1;
                m_axis_write_desc_valid = 1'b1;
                if (m_axis_write_desc_ready) begin
                    next.state = AckRequest;
                    next.xfer_req_ack = 1'b1;
                end
            end
            ReadRequest: begin
                m_axis_read_desc_addr  = curr.xfer_params[C_SLV_ADDRESS_WIDTH-1 : 0];
                m_axis_read_desc_len   = curr.xfer_params[C_SLV_ADDRESS_WIDTH + C_SLV_BURST_LENGTH-1 : C_SLV_ADDRESS_WIDTH];
                m_axis_read_desc_tag   = '1;
                m_axis_read_desc_valid = 1'b1;
                if (m_axis_read_desc_ready) begin
                    next.state = AckRequest;
                    next.xfer_req_ack = 1'b1;
                end
            end
            AckRequest: begin
                next.xfer_req_ack = 1'b1;
                if(curr.xfer_req_ack && !xfer_params_req_i) begin //ack accepted
                    next.xfer_req_ack = 1'b0;
                    next.state = Idle;
                end
            end
            default: next.state = Idle;
        endcase 
    end

endmodule