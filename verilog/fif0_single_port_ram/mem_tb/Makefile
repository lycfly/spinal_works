SIM=verilator
TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(shell pwd)/../sp_ram.v
TOPLEVEL = sp_ram
MODULE = sp_ram_tb
EXTRA_ARGS += --trace --trace-structs
#EXTRA_ARGS += --trace-fst --trace-structs
include $(shell cocotb-config --makefiles)/Makefile.sim
include $(shell cocotb-config --makefiles)/Makefile.inc