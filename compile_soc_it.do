set SOC_IT_ROOT $env(SOC_IT_ROOT)

vlib C:/Siliconscapes/axi_hbm_int/sim/soc_it
vmap soc_it C:/Siliconscapes/axi_hbm_int/sim/soc_it

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_slave_arbiter.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_slave_data_fifo.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_slave_handler.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_tag_manager.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_xpress_link_arbiter.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_handler.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_handler_pool.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_master_handler.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_nif\\hardware\\verilog\\soc_it_nif_request_handler.v


vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_8way.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_8way_fast.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_8way_lookup.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_8way_single_cycle.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\arbiter\\arbitration_4way.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\utility\\cdc_syncfifo.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\utility\\cdc_syncfifo_xpm.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_mem\\hardware\\verilog\\soc_it_mem_sram_adaptor.v
vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_mem\\hardware\\verilog\\soc_it_mem.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_tester\\hardware\\verilog\\soc_it_tester_bulk_transaction_generator.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include ${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\utility\\skid_barrier.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it C:\\Xilinx\\Vivado\\2019.1\\data\\verilog\\src\\glbl.v

vlog -lint -sv +define+simulation +define+SIMULATION -work soc_it +incdir+${SOC_IT_ROOT}\\infrastructure\\soc_it_common\\hardware\\include testbench_soc_it.sv
