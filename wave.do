onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/clk_i
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/rst_ni
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awaddr
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awlen
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awsize
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awburst
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awlock
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awcache
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awprot
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awvalid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_awready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_wdata
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_wstrb
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_wlast
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_wvalid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_wready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_bid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_bresp
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_bvalid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_bready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_araddr
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arlen
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arsize
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arburst
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arlock
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arcache
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arprot
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arvalid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_arready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_rid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_rdata
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_rresp
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_rlast
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_rvalid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axi_rready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_desc_addr
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_desc_len
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_desc_tag
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_desc_id
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_desc_dest
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_desc_user
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_desc_valid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_desc_ready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_data_tdata
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_data_tkeep
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_data_tvalid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_data_tready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_data_tlast
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_data_tid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_data_tdest
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_write_data_tuser
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_read_desc_addr
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_read_desc_len
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_read_desc_tag
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_read_desc_id
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_read_desc_dest
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_read_desc_user
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_read_desc_valid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/m_axis_read_desc_ready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_data_tdata
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_data_tkeep
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_data_tvalid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_data_tready
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_data_tlast
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_data_tid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_data_tdest
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_data_tuser
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/read_enable
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/write_enable
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/write_abort
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/next
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/curr
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/init
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/test_trig
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_desc_status_tag
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_desc_status_error
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_read_desc_status_valid
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_write_desc_status_len
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_write_desc_status_tag
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_write_desc_status_id
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_write_desc_status_dest
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_write_desc_status_user
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_write_desc_status_error
add wave -noupdate -expand -group axi_master_tester /testbench/axi_master_test_i/s_axis_write_desc_status_valid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/clk
add wave -noupdate -group axi_ram /testbench/axi_ram_i/rst
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awaddr
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awlen
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awsize
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awburst
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awlock
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awcache
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awprot
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awvalid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awready
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_wdata
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_wstrb
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_wlast
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_wvalid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_wready
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_bid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_bresp
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_bvalid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_bready
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_araddr
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arlen
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arsize
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arburst
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arlock
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arcache
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arprot
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arvalid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arready
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rdata
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rresp
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rlast
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rvalid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rready
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_state_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_state_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_state_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_state_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/mem_wr_en
add wave -noupdate -group axi_ram /testbench/axi_ram_i/mem_rd_en
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_id_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_id_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_addr_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_addr_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_count_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_count_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_size_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_size_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_burst_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_burst_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_id_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_id_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_addr_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_addr_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_count_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_count_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_size_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_size_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_burst_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_burst_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awready_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awready_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_wready_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_wready_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_bid_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_bid_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_bvalid_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_bvalid_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arready_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_arready_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rid_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rid_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rdata_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rdata_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rlast_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rlast_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rvalid_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rvalid_next
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rid_pipe_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rdata_pipe_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rlast_pipe_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_rvalid_pipe_reg
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_awaddr_valid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/s_axi_araddr_valid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/read_addr_valid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/write_addr_valid
add wave -noupdate -group axi_ram /testbench/axi_ram_i/i
add wave -noupdate -group axi_ram /testbench/axi_ram_i/j
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {450980867612 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 321
configure wave -valuecolwidth 248
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
configure wave -timelineunits ns
update
WaveRestoreZoom {450980860642 ps} {450980902777 ps}
