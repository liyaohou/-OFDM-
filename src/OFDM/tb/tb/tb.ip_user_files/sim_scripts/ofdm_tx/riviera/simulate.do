transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ofdm_tx  -L xpm -L xil_defaultlib -L util_vector_logic_v2_0_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ofdm_tx xil_defaultlib.glbl

do {ofdm_tx.udo}

run 1000ns

endsim

quit -force
