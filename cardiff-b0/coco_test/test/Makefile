SIM=verilator
TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(shell pwd)/../../cal_phase.v
TOPLEVEL = cal_phase
MODULE = test
EXTRA_ARGS += --trace-fst --trace-structs
include $(shell cocotb-config --makefiles)/Makefile.sim
include $(shell cocotb-config --makefiles)/Makefile.inc
