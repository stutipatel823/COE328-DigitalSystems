onerror {quit -f}
vlib work
vlog -work work lab5.vo
vlog -work work lab5.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.blockMealy_vlg_vec_tst
vcd file -direction lab5.msim.vcd
vcd add -internal blockMealy_vlg_vec_tst/*
vcd add -internal blockMealy_vlg_vec_tst/i1/*
add wave /*
run -all
