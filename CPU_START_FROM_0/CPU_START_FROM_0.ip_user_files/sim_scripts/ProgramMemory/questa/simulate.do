onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ProgramMemory_opt

do {wave.do}

view wave
view structure
view signals

do {ProgramMemory.udo}

run -all

quit -force
