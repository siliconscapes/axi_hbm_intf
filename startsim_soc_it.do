do compile_soc_it.do

vsim -novopt -L soc_it -L xpm -t 1ps soc_it.testbench_soc_it soc_it.glbl
