transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {parteb.vo}

vcom -93 -work work {C:/Users/usuario/Desktop/tydd2/ParteB/testbenchb.vhd}

vsim -t 1ps -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  testbenchb

add wave *
view structure
view signals
run 40 ns
