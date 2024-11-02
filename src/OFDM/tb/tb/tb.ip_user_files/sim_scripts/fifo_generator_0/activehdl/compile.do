transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/Administrator/Desktop/tb/tb/tb.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/fifo_generator_v13_2_8
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l fifo_generator_v13_2_8 -l xil_defaultlib \
"D:/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 -l xpm -l fifo_generator_v13_2_8 -l xil_defaultlib \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 -l xpm -l fifo_generator_v13_2_8 -l xil_defaultlib \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l fifo_generator_v13_2_8 -l xil_defaultlib \
"../../../../tb.gen/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

