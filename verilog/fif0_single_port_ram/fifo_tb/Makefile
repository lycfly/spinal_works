SIM=verilator
TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(shell pwd)/../*.v 
#TOPLEVEL = sync_fifo_spram
#TOPLEVEL = sync_fifo_2
TOPLEVEL = sync_fifo_spram_v2

MODULE = sync_fifo_tb
EXTRA_ARGS += --trace --trace-structs
#EXTRA_ARGS += --trace-fst --trace-structs
include $(shell cocotb-config --makefiles)/Makefile.sim
include $(shell cocotb-config --makefiles)/Makefile.inc