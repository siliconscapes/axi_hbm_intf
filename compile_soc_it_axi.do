set SOC_IT_ROOT $env(SOC_IT_ROOT)

vlib C:/Siliconscapes/axi_hbm_int/sim/soc_it_axi
vmap soc_it_axi C:/Siliconscapes/axi_hbm_int/sim/soc_it_axi

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_slave_arbiter.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_slave_data_fifo.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_slave_handler.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_tag_manager.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_xpress_link_arbiter.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_handler.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_handler_pool.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_master_handler.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_request_handler.v


vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_8way.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_8way_fast.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_8way_lookup.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_8way_single_cycle.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_4way.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\utility\\cdc_syncfifo.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\utility\\cdc_syncfifo_xpm.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi C:\\Siliconscapes\\axi_hbm_int\\verilog-axi\\rtl\\axi_dma_rd.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi C:\\Siliconscapes\\axi_hbm_int\\verilog-axi\\rtl\\axi_dma_wr.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi C:\\Siliconscapes\\axi_hbm_int\\verilog-axi\\rtl\\axi_dma.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi C:\\Siliconscapes\\axi_hbm_int\\verilog-axi\\rtl\\axi_ram.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi C:\\Siliconscapes\\axi_hbm_int\\verilog-axis\\rtl\\axis_adapter.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi C:\\Siliconscapes\\axi_hbm_int\\axis_async_fifo.sv
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi C:\\Siliconscapes\\axi_hbm_int\\cdc_handshake.sv

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include C:\\Siliconscapes\\axi_hbm_int\\soc_it_axi\\axi_handler.sv
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include C:\\Siliconscapes\\axi_hbm_int\\soc_it_axi\\soc_it_handler.sv
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include C:\\Siliconscapes\\axi_hbm_int\\soc_it_axi\\soc_it_axi.sv

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_tester\\hardware\\verilog\\soc_it_tester_bulk_transaction_generator.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi C:\\Xilinx\\Vivado\\2019.1\\data\\verilog\\src\\glbl.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it_axi +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include testbench_soc_it_axi.sv
