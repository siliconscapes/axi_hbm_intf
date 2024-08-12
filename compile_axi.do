vlib axi_master
vmap axi_master C:/Siliconscapes/axi_hbm_int/sim/axi_master

# Get a list of all Verilog files in the folder
set sv_files [glob *.sv]
set v_files [glob *.v]

foreach file $sv_files {
    vlog -lint -sv -work axi_master $file
}

foreach file $v_files {
    vlog -lint -sv -work axi_master $file
}


