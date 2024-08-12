do compile_soc_it_axi.do

vsim -novopt -L soc_it_axi -L xpm -t 1ps soc_it_axi.testbench_soc_it_axi soc_it_axi.glbl
