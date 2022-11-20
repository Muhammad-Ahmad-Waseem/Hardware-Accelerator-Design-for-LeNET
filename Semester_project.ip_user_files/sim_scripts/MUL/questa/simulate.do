onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MUL_opt

do {wave.do}

view wave
view structure
view signals

do {MUL.udo}

run -all

quit -force
