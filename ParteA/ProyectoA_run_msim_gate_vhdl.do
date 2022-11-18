transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ProyectoA.vho}

vcom -93 -work work {E:/lab2/ParteA/testbencha.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  testbencha

add wave *
view structure
view signals
run -all
