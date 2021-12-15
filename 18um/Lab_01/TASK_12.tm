// SINE-WAVE GENERATOR
// TetraMAX ATPG Script
//
// File: TASK_12.tm
// Path: <DFTW>/Lab_01

// ATPG MODEL
// Library read by .tmaxrc file.
// Read in Verilog DUT netlist.
   read netlist SINE_GEN-net.v
   run build_model SINE_GEN

// CLASSROOM CONSTRAINTS
// For consistency across the classroom.
// Force the pattern to access ROM word
// 4, and to output negated sine data.
   add cell constraint 1  /\ANGLE_reg[4]
   add cell constraint 0  /\ANGLE_reg[3]
   add cell constraint 1  /\ANGLE_reg[2]
   add cell constraint 0  /\ANGLE_reg[1]
   add cell constraint 0  /\ANGLE_reg[0]

// DFT CHECK
// Read test-protocol file.
// Run DFT check on SINE_GEN.
   set drc  -chain c0  SINE_GEN.spf
   run drc

// TARGET FAULT
// Edit the target fault site:
   remove faults -all
   add faults  /U_ROM/U__/Y  -stuck 0

// COMBINATIONAL ATPG
   set atpg  -capture 0 \
             -merge off \
             -nosummary
   run atpg
   report summaries

// TEST PROGRAM
   write patterns  SINE_GEN.stil \
                  -format stil   \
                  -replace 
