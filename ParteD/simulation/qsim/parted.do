onerror {quit -f}
vlib work
vlog -work work parted.vo
vlog -work work parted.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SM1_vlg_vec_tst
vcd file -direction parted.msim.vcd
vcd add -internal SM1_vlg_vec_tst/*
vcd add -internal SM1_vlg_vec_tst/i1/*
add wave /*
run -all
