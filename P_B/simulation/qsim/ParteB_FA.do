onerror {quit -f}
vlib work
vlog -work work ParteB_FA.vo
vlog -work work ParteB_FA.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Full_Adder_vlg_vec_tst
vcd file -direction ParteB_FA.msim.vcd
vcd add -internal Full_Adder_vlg_vec_tst/*
vcd add -internal Full_Adder_vlg_vec_tst/i1/*
add wave /*
run -all
