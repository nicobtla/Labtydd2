onerror {quit -f}
vlib work
vlog -work work template.vo
vlog -work work template.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.template_vlg_vec_tst
vcd file -direction template.msim.vcd
vcd add -internal template_vlg_vec_tst/*
vcd add -internal template_vlg_vec_tst/i1/*
add wave /*
run -all
