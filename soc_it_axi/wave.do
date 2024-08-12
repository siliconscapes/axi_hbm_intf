onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/sap_clk
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/sap_rst
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_ack
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_complete
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_error
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_tag
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_option
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_type
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_flow
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_local_address
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_length
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_descriptor_src_rdy
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_descriptor_dst_rdy
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_descriptor_tag
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_descriptor
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_datain_src_rdy
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_datain_dst_rdy
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_datain_tag
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_datain_option
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_datain
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_dataout_src_rdy
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_dataout_dst_rdy
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_dataout_tag
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_dataout_option
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_dataout
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/workspace_address
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/workspace_size
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/enabled
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/error_count
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/active
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/state
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/transfer_type
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/transfer_length
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/transfer_offset
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/transfer_address
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/transfer_count
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/transfer_index
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/transfer_range_end
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/transfer_out_of_range
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_request_acked
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_descriptor_accepted
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_data_phase
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_datain_expected
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_datain_expected_address
add wave -noupdate -group soc_it_tester /testbench_soc_it_axi/soc_it_tester_i/master_transfers_remaining
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_clk
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_rst
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_ack
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_complete
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_error
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_tag
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_option
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_type
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_flow
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_local_address
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_length
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_descriptor_src_rdy
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_descriptor_dst_rdy
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_descriptor_tag
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_descriptor
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_src_rdy
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_dst_rdy
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_option
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_tag
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_src_rdy
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_dst_rdy
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_option
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_tag
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_clk
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_rst
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_device_id
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_burst_start
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_burst_length
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_burst_rnw
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_address
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_transaction_id
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_transaction_option
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_address_valid
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_address_ack
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_wrreq
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_wrack
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_be
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_datain
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_rdreq
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_rdack
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_dataout
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/handler_pool_debug_set
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_ack_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_complete_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_option_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_error_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_tag_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_type_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_flow_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_local_address_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_request_length_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_descriptor_src_rdy_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_descriptor_dst_rdy_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_descriptor_tag_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_descriptor_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_src_rdy_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_dst_rdy_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_option_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_tag_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_datain_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_src_rdy_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_dst_rdy_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_option_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_tag_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/master_dataout_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_burst_start_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_burst_length_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_burst_rnw_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_address_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_transaction_id_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_transaction_option_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_address_valid_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_address_ack_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_wrreq_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_wrack_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_be_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_datain_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_rdreq_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_rdack_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_dataout_pool
add wave -noupdate -group soc_it_nif /testbench_soc_it_axi/soc_it_nif_i/slave_dual_device_id
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_rst
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_clk
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_burst_start
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_burst_length
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_burst_rnw
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_address
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_transaction_id
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_transaction_option
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_address_valid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_address_ack
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_wrreq
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_wrack
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_be
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_datain
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_rdreq
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_rdack
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/slave_dataout
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/axi_clk
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/axi_rst_n
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awaddr
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awlen
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awsize
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awburst
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awlock
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awcache
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awprot
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_awready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_wdata
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_wstrb
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_wlast
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_wvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_wready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_bid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_bresp
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_bvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_bready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_araddr
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arlen
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arsize
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arburst
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arlock
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arcache
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arprot
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_arready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_rid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_rdata
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_rresp
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_rlast
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_rvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axi_rready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_desc_addr
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_desc_len
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_desc_tag
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_desc_id
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_desc_dest
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_desc_user
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_desc_valid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_desc_ready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_data_tdata
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_data_tkeep
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_data_tvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_data_tlast
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_data_tid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_data_tdest
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_data_tuser
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_write_data_tready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_read_desc_addr
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_read_desc_len
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_read_desc_tag
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_read_desc_id
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_read_desc_dest
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_read_desc_user
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_read_desc_valid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/m_axis_read_desc_ready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_data_tdata
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_data_tkeep
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_data_tvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_data_tlast
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_data_tid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_data_tdest
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_data_tuser
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_data_tready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/xfer_params_src
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/xfer_params_dst
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/xfer_params_src_req
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/xfer_params_src_ack
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/xfer_params_dst_req
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/xfer_params_dst_ack
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/soc_it_wvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/soc_it_wready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/soc_it_wlast
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/soc_it_rready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/soc_it_rvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/soc_it_rlast
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_data_resize_tkeep
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_data_resize_tdata
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_data_resize_tvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_data_resize_tlast
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_data_resize_tready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_data_resize_tuser
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_data_resize_tid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_data_resize_tdest
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_data_resize_tkeep
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_data_resize_tdata
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_data_resize_tvalid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_data_resize_tlast
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_data_resize_tready
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_data_resize_tuser
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_data_resize_tid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_data_resize_tdest
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/read_enable
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_enable
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/write_abort
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_desc_status_tag
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_desc_status_error
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_read_desc_status_valid
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_write_desc_status_len
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_write_desc_status_tag
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_write_desc_status_id
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_write_desc_status_dest
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_write_desc_status_user
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_write_desc_status_error
add wave -noupdate -group soc_it_axi /testbench_soc_it_axi/soc_it_axi_i/s_axis_write_desc_status_valid
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/clk_i
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/rst_i
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_burst_start
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_burst_length
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_burst_rnw
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_address
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_address_valid
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_address_ack
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_wrreq
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_wrack
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_rdreq
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/slave_rdack
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/xfer_params_o
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/xfer_params_req_o
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/xfer_params_ack_i
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/soc_it_wvalid_o
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/soc_it_wready_i
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/soc_it_wlast_o
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/soc_it_rready_o
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/soc_it_rvalid_i
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/soc_it_rlast_i
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/next
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/curr
add wave -noupdate -expand -group soc_it_axi_slave /testbench_soc_it_axi/soc_it_axi_i/slave/init
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/clk_i
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/rst_ni
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/xfer_params_i
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/xfer_params_req_i
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/xfer_params_ack_o
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_write_desc_addr
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_write_desc_len
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_write_desc_tag
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_write_desc_id
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_write_desc_dest
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_write_desc_user
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_write_desc_valid
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_write_desc_ready
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_read_desc_addr
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_read_desc_len
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_read_desc_tag
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_read_desc_id
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_read_desc_dest
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_read_desc_user
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_read_desc_valid
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/m_axis_read_desc_ready
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/next
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/curr
add wave -noupdate -expand -group soc_it_axi_master /testbench_soc_it_axi/soc_it_axi_i/master/init
add wave -noupdate -expand -group soc_it_axi_cdc_descr /testbench_soc_it_axi/soc_it_axi_i/soc_it_descriptor_cdc/src_clk_i
add wave -noupdate -expand -group soc_it_axi_cdc_descr /testbench_soc_it_axi/soc_it_axi_i/soc_it_descriptor_cdc/dst_clk_i
add wave -noupdate -expand -group soc_it_axi_cdc_descr /testbench_soc_it_axi/soc_it_axi_i/soc_it_descriptor_cdc/src_data_i
add wave -noupdate -expand -group soc_it_axi_cdc_descr /testbench_soc_it_axi/soc_it_axi_i/soc_it_descriptor_cdc/src_valid_i
add wave -noupdate -expand -group soc_it_axi_cdc_descr /testbench_soc_it_axi/soc_it_axi_i/soc_it_descriptor_cdc/src_ack_o
add wave -noupdate -expand -group soc_it_axi_cdc_descr /testbench_soc_it_axi/soc_it_axi_i/soc_it_descriptor_cdc/dst_data_o
add wave -noupdate -expand -group soc_it_axi_cdc_descr /testbench_soc_it_axi/soc_it_axi_i/soc_it_descriptor_cdc/dst_valid_o
add wave -noupdate -expand -group soc_it_axi_cdc_descr /testbench_soc_it_axi/soc_it_axi_i/soc_it_descriptor_cdc/dst_ack_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 313
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1956 ps}
