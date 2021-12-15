set messages log batch.log -replace
read netlist lab2.lib
ls
read net lab2.edif
run build_model LAB2
report pi constraints
report clocks
report clocks
add clocks 0 /RST2
report clocks
run drc dcxp.spf
add faults -all
report summaries faults patterns
run atpg
run pattern_compress 1
rep sum
write patterns try1.pat -replace -internal -format verilog_single_file -serial
write faults try1.faults -replace -all
set messages nolog
