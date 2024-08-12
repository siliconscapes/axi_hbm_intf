module soc_it_handler #(
	  parameter	C_AXI_INTERFACE_WIDTH  = 512
	, parameter	C_SLV_INTERFACE_WIDTH  = 128
    , parameter C_SLV_ADDRESS_WIDTH    = 64
    , parameter C_SLV_BURST_LENGTH     = 13
    , parameter XFER_PARAMS_WIDTH = C_SLV_ADDRESS_WIDTH + C_SLV_BURST_LENGTH + 1 + 1 // slv_burst_start , slv_burst_rnw
) (  
      input logic                                       clk_i
    , input logic                                       rst_i

	, input logic										slave_burst_start       
	, input	logic [C_SLV_BURST_LENGTH-1:0]				slave_burst_length      
	, input	logic									    slave_burst_rnw         
		
	, input  logic 	[C_SLV_ADDRESS_WIDTH-1 :0]		    slave_address           
	, input	 logic									    slave_address_valid     
	, output logic										slave_address_ack       
	, input  logic	[3  :0]								slave_wrreq             
	, output logic										slave_wrack             
	, input  logic	[3  :0]  							slave_rdreq             
	, output logic										slave_rdack             

    , output logic  [XFER_PARAMS_WIDTH-1:0]             xfer_params_o
    , output logic                                      xfer_params_req_o
    , input  logic                                      xfer_params_ack_i          

    , output logic                                      soc_it_wvalid_o
    , input  logic                                      soc_it_wready_i
    , output logic                                      soc_it_wlast_o 

    , output logic                                      soc_it_rready_o
    , input  logic                                      soc_it_rvalid_i
    , input  logic                                      soc_it_rlast_i
);
    // soc_it handler (slave)

    typedef enum logic [2:0] {
          Idle
        , SendDescr
        , SendWrites
        , CaptureReads
    } state_e;

    typedef struct {
        state_e state;

        logic burst_start_captured;
        logic burst_rnw_captured;
        logic [C_SLV_ADDRESS_WIDTH-1:0] burst_address_captured;
        logic [C_SLV_BURST_LENGTH-1:0]  burst_length_captured;

        logic [XFER_PARAMS_WIDTH-1:0]   xfer_params;
        logic                           xfer_params_req_val;
        logic [12:0]                    wdata_counter;
        logic [12:0]                    rdata_counter;
    } regs_t;

    regs_t next, curr;
    regs_t init = '{state: Idle, default: '0};

    always_ff @(posedge clk_i) begin
        if (rst_i) begin
            curr <= init;
        end else begin
            curr <= next;
        end
    end

    assign xfer_params_o = curr.xfer_params;
    assign xfer_params_req_o = curr.xfer_params_req_val;

    always_comb begin
        next  = curr;

        slave_address_ack = 1'b0;

        soc_it_wvalid_o = 1'b0;
        soc_it_wlast_o  = 1'b0;
        slave_wrack     = 1'b0;

        soc_it_rready_o = 1'b0;
        slave_rdack     = 1'b0;

        //edge detect/reg params (interface should hold this)
        next.burst_start_captured   = (!curr.burst_start_captured) ? slave_burst_start : curr.burst_start_captured;
        //do these need to be captured (params should be held until an ack in any sane interface)
        next.burst_rnw_captured     = (!curr.burst_start_captured) ? slave_burst_rnw   : curr.burst_rnw_captured; 
        next.burst_address_captured = (!curr.burst_start_captured) ? slave_address     : curr.burst_address_captured;
        next.burst_length_captured  = (!curr.burst_start_captured) ? slave_burst_length: curr.burst_length_captured;

        unique case(curr.state)
            Idle: begin
                next.xfer_params = '0;
                next.xfer_params_req_val = 1'b0;
                next.wdata_counter = '0; 
                next.rdata_counter = '0;
                //soc-it request
                if(curr.burst_start_captured && slave_address_valid && !xfer_params_ack_i) begin
                    next.state  = SendDescr;
                    //packetize request
                    next.xfer_params[C_SLV_ADDRESS_WIDTH-1:0] = curr.burst_address_captured;
                    next.xfer_params[(C_SLV_ADDRESS_WIDTH + C_SLV_BURST_LENGTH)-1:C_SLV_ADDRESS_WIDTH] = curr.burst_length_captured;
                    next.xfer_params[C_SLV_ADDRESS_WIDTH  + C_SLV_BURST_LENGTH]    = curr.burst_rnw_captured;
                    next.xfer_params[C_SLV_ADDRESS_WIDTH  + C_SLV_BURST_LENGTH +1] = curr.burst_start_captured;
                    //send request from soc-it to axi domain
                    next.xfer_params_req_val  = 1'b1;
                    next.burst_start_captured = 1'b0;
                end
            end
            SendDescr: begin
                next.xfer_params_req_val = 1'b1;
                if(xfer_params_ack_i) begin
                    next.xfer_params_req_val = 1'b0;
                    //
                    assert(slave_address_valid);
                    if(!slave_burst_rnw) next.state = SendWrites;
                    else                 next.state = CaptureReads;
                end
                //Timeout
            end
            SendWrites: begin
                slave_address_ack = 1'b1; //not using addresses, must be incr from base
                //
                soc_it_wvalid_o = slave_wrreq;
                soc_it_wlast_o  = (curr.wdata_counter == curr.xfer_params[(C_SLV_ADDRESS_WIDTH+13)-1:C_SLV_ADDRESS_WIDTH] - (C_SLV_INTERFACE_WIDTH/8)) ? 1'b1 : 1'b0;
                slave_wrack     = soc_it_wready_i;
                //
                if(soc_it_wvalid_o && soc_it_wready_i) begin
                    next.wdata_counter = curr.wdata_counter + (C_SLV_INTERFACE_WIDTH/8);
                    if(soc_it_wlast_o) begin
                        next.state = Idle;
                    end
                end
            end
            CaptureReads: begin
                slave_address_ack = 1'b1;
                //
                soc_it_rready_o = slave_rdreq;
                slave_rdack     = soc_it_rvalid_i;
                //
                if(soc_it_rvalid_i && soc_it_rready_o) begin
                    next.rdata_counter = curr.rdata_counter + (C_SLV_INTERFACE_WIDTH/8);
                    if(soc_it_rlast_i) begin
                        next.state = Idle;
                        //assert(curr.rdata_counter == curr.xfer_params[(C_SLV_ADDRESS_WIDTH+13)-1:C_SLV_ADDRESS_WIDTH] - (C_SLV_INTERFACE_WIDTH/8));
                    end
                end
            end
        endcase
    end

endmodule