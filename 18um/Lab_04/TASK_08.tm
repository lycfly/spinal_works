// TetraMAX ATPG Script
//
// File: TASK_08.tm
// Path: <DFTW>/Lab_04

// ATPG MODEL
// Library read by .tmaxrc file.
// Read in Verilog DUT netlist.
   read netlist LATCH8-net.v
   run build_model LATCH8

// DFT CHECK
// Read test-protocol file.
// Run DFT check on LATCH8.
   set drc LATCH8.spf
   run drc

// COMBINATIONAL ATPG
   add faults -all
   set atpg  -capture 0 \
             -nofull_seq_atpg \
             -merge off \
             -nosummary
   run atpg
   report summaries

// FAST-SEQUENTIAL ATPG
   set atpg  -capture 4
   run atpg
   report summaries

// FULL-SEQUENTIAL ATPG
   set atpg  -full_seq_atpg
   run atpg
   report summaries
