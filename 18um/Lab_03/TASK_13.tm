// FIVE_REG BLOCK
// TetraMAX Script:
//
// File: TASK_13.tm
// Path: <DFTW>/Lab_03
// Note: Reads Lab_03/.tmaxrc.

// BUILD ATPG MODEL:
// Read Verilog netlist for DUT:
   read netlist FIVE_REG-net.v
   run build_model

// PRE-ATPG DFT CHECK:
// 1. Read test protocol file.
// 2. Run DFT check on FIVE_REG.
   set drc  -chain c0  FIVE_REG.spf
   run drc

// PREPARE FOR ATPG:
   remove faults -all
   add faults    -all

// PERFORM COMBINATIONAL ATPG:
// 1. Disable Fast Sequential mode.
// 2. Turn off dynamic compaction.
   set atpg  -capture 0  -merge off  -verb
   run atpg
