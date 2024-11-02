transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {E:/86152/FPGA/Verilog/file_management/UDP_OFDM/rtl/UDP_DDR_OFDM/src/OFDM/tb/tb/tb.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_2

vlog -work xpm  -incr -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_2 \
"F:/AppData/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/AppData/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"F:/AppData/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_2 \
"../../../bd/ofdm_tx/ip/ofdm_tx_interleaver_2_0_0/sim/ofdm_tx_interleaver_2_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_tx_mcu_0_0/sim/ofdm_tx_tx_mcu_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_interleaver_1_0_0/sim/ofdm_tx_interleaver_1_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_convenc_0_0/sim/ofdm_tx_convenc_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_scramler_0_0/sim/ofdm_tx_scramler_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_maping_0_0/sim/ofdm_tx_maping_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_puncture_0_0/sim/ofdm_tx_puncture_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_symbol_train_0_0/sim/ofdm_tx_symbol_train_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_pilot_0_0/sim/ofdm_tx_pilot_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_dac_0_0/sim/ofdm_tx_dac_0_0.v" \
"../../../bd/ofdm_tx/ip/ofdm_tx_ifft_0_0/sim/ofdm_tx_ifft_0_0.v" \

vlog -work util_vector_logic_v2_0_2  -incr -v2k5 -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_2 \
"../../../../tb.gen/sources_1/bd/ofdm_tx/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_2 \
"../../../bd/ofdm_tx/ip/ofdm_tx_util_vector_logic_0_0/sim/ofdm_tx_util_vector_logic_0_0.v" \
"../../../bd/ofdm_tx/sim/ofdm_tx.v" \

vlog -work xil_defaultlib \
"glbl.v"

