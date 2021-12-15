/* verilog_memcomp Version: c0.5.0-EAC */
/* common_memcomp Version: c0.1.2-EAC */
/* lang compiler Version: 4.5.1-EAC Nov  6 2014 16:10:45 */
//
//       CONFIDENTIAL AND PROPRIETARY SOFTWARE OF ARM PHYSICAL IP, INC.
//      
//       Copyright (c) 1993 - 2021 ARM Physical IP, Inc.  All Rights Reserved.
//      
//       Use of this Software is subject to the terms and conditions of the
//       applicable license agreement with ARM Physical IP, Inc.
//       In addition, this Software is protected by patents, copyright law 
//       and international treaties.
//      
//       The copyright notice(s) in this Software does not indicate actual or
//       intended publication of this Software.
//
//      Verilog model for High Speed Single Port SRAM SVT MVT Compiler
//
//       Instance Name:              sram256x8
//       Words:                      256
//       Bits:                       8
//       Mux:                        8
//       Drive:                      6
//       Write Mask:                 Off
//       Write Thru:                 Off
//       Extra Margin Adjustment:    On
//       Test Muxes                  Off
//       Power Gating:               Off
//       Retention:                  On
//       Pipeline:                   Off
//       Read Disturb Test:	        Off
//       
//       Creation Date:  Mon Feb 22 15:03:13 2021
//       Version: 	r0p0
//
//      Modeling Assumptions: This model supports full gate level simulation
//          including proper x-handling and timing check behavior.  Unit
//          delay timing is included in the model. Back-annotation of SDF
//          (v3.0 or v2.1) is supported.  SDF can be created utilyzing the delay
//          calculation views provided with this generator and supported
//          delay calculators.  All buses are modeled [MSB:LSB].  All 
//          ports are padded with Verilog primitives.
//
//      Modeling Limitations: None.
//
//      Known Bugs: None.
//
//      Known Work Arounds: N/A
//
`timescale 1 ns/1 ps
`define ARM_MEM_PROP 1.000
`define ARM_MEM_RETAIN 1.000
`define ARM_MEM_PERIOD 3.000
`define ARM_MEM_WIDTH 1.000
`define ARM_MEM_SETUP 1.000
`define ARM_MEM_HOLD 0.500
`define ARM_MEM_COLLISION 3.000
// If ARM_UD_MODEL is defined at Simulator Command Line, it Selects the Fast Functional Model
`ifdef ARM_UD_MODEL

// Following parameter Values can be overridden at Simulator Command Line.

// ARM_UD_DP Defines the delay through Data Paths, for Memory Models it represents BIST MUX output delays.
`ifdef ARM_UD_DP
`else
`define ARM_UD_DP #0.001
`endif
// ARM_UD_CP Defines the delay through Clock Path Cells, for Memory Models it is not used.
`ifdef ARM_UD_CP
`else
`define ARM_UD_CP
`endif
// ARM_UD_SEQ Defines the delay through the Memory, for Memory Models it is used for CLK->Q delays.
`ifdef ARM_UD_SEQ
`else
`define ARM_UD_SEQ #0.01
`endif

`celldefine
// If POWER_PINS is defined at Simulator Command Line, it selects the module definition with Power Ports
`ifdef POWER_PINS
module sram256x8 (VDDCE, VDDPE, VSSE, Q, CLK, CEN, WEN, A, D, EMA, EMAW, EMAS, RET1N);
`else
module sram256x8 (Q, CLK, CEN, WEN, A, D, EMA, EMAW, EMAS, RET1N);
`endif

  parameter ASSERT_PREFIX = "";
  parameter BITS = 8;
  parameter WORDS = 256;
  parameter MUX = 8;
  parameter MEM_WIDTH = 64; // redun block size 8, 32 on left, 32 on right
  parameter MEM_HEIGHT = 32;
  parameter WP_SIZE = 8 ;
  parameter UPM_WIDTH = 3;
  parameter UPMW_WIDTH = 2;
  parameter UPMS_WIDTH = 1;

  output [7:0] Q;
  input  CLK;
  input  CEN;
  input  WEN;
  input [7:0] A;
  input [7:0] D;
  input [2:0] EMA;
  input [1:0] EMAW;
  input  EMAS;
  input  RET1N;
`ifdef POWER_PINS
  inout VDDCE;
  inout VDDPE;
  inout VSSE;
`endif

  reg pre_charge_st;
  integer row_address;
  integer mux_address;
  initial row_address = 0;
  initial mux_address = 0;
  reg [63:0] mem [0:31];
  reg [63:0] row, row_t;
  reg LAST_CLK;
  reg [63:0] row_mask;
  reg [63:0] new_data;
  reg [63:0] data_out;
  reg [7:0] readLatch0;
  reg [7:0] shifted_readLatch0;
  reg [7:0] Q_int;
  reg [7:0] writeEnable;
  reg clk0_int;

  wire [7:0] Q_;
 wire  CLK_;
  wire  CEN_;
  reg  CEN_int;
  reg  CEN_p2;
  wire  WEN_;
  reg  WEN_int;
  wire [7:0] A_;
  reg [7:0] A_int;
  wire [7:0] D_;
  reg [7:0] D_int;
  wire [2:0] EMA_;
  reg [2:0] EMA_int;
  wire [1:0] EMAW_;
  reg [1:0] EMAW_int;
  wire  EMAS_;
  reg  EMAS_int;
  wire  RET1N_;
  reg  RET1N_int;

  assign Q[0] = Q_[0]; 
  assign Q[1] = Q_[1]; 
  assign Q[2] = Q_[2]; 
  assign Q[3] = Q_[3]; 
  assign Q[4] = Q_[4]; 
  assign Q[5] = Q_[5]; 
  assign Q[6] = Q_[6]; 
  assign Q[7] = Q_[7]; 
  assign CLK_ = CLK;
  assign CEN_ = CEN;
  assign WEN_ = WEN;
  assign A_[0] = A[0];
  assign A_[1] = A[1];
  assign A_[2] = A[2];
  assign A_[3] = A[3];
  assign A_[4] = A[4];
  assign A_[5] = A[5];
  assign A_[6] = A[6];
  assign A_[7] = A[7];
  assign D_[0] = D[0];
  assign D_[1] = D[1];
  assign D_[2] = D[2];
  assign D_[3] = D[3];
  assign D_[4] = D[4];
  assign D_[5] = D[5];
  assign D_[6] = D[6];
  assign D_[7] = D[7];
  assign EMA_[0] = EMA[0];
  assign EMA_[1] = EMA[1];
  assign EMA_[2] = EMA[2];
  assign EMAW_[0] = EMAW[0];
  assign EMAW_[1] = EMAW[1];
  assign EMAS_ = EMAS;
  assign RET1N_ = RET1N;

   `ifdef ARM_FAULT_MODELING
     sram256x8_error_injection u1(.CLK(CLK_), .Q_out(Q_), .A(A_int), .CEN(CEN_int), .WEN(WEN_int), .Q_in(Q_int));
  `else
  assign `ARM_UD_SEQ Q_ = (RET1N_ | pre_charge_st) ? ((Q_int)) : {8{1'bx}};
  `endif

// If INITIALIZE_MEMORY is defined at Simulator Command Line, it Initializes the Memory with all ZEROS.
`ifdef INITIALIZE_MEMORY
  integer i;
  initial begin
    #0;
    for (i = 0; i < MEM_HEIGHT; i = i + 1)
      mem[i] = {MEM_WIDTH{1'b0}};
  end
`endif
  always @ (EMA_) begin
  	if(EMA_ < 3) 
   	$display("Warning: Set Value for EMA doesn't match Default value 3 in %m at %0t", $time);
  end
  always @ (EMAW_) begin
  	if(EMAW_ < 1) 
   	$display("Warning: Set Value for EMAW doesn't match Default value 1 in %m at %0t", $time);
  end
  always @ (EMAS_) begin
  	if(EMAS_ < 0) 
   	$display("Warning: Set Value for EMAS doesn't match Default value 0 in %m at %0t", $time);
  end

  task failedWrite;
  input port_f;
  integer i;
  begin
    for (i = 0; i < MEM_HEIGHT; i = i + 1)
      mem[i] = {MEM_WIDTH{1'bx}};
  end
  endtask

  function isBitX;
    input bitval;
    begin
      isBitX = ( bitval===1'bx || bitval===1'bz ) ? 1'b1 : 1'b0;
    end
  endfunction


task loadmem;
	input [1000*8-1:0] filename;
	reg [BITS-1:0] memld [0:WORDS-1];
	integer i;
	reg [BITS-1:0] wordtemp;
	reg [7:0] Atemp;
  begin
	$readmemb(filename, memld);
     if (CEN_ === 1'b1) begin
	  for (i=0;i<WORDS;i=i+1) begin
	  wordtemp = memld[i];
	  Atemp = i;
	  mux_address = (Atemp & 3'b111);
      row_address = (Atemp >> 3);
      row = mem[row_address];
        writeEnable = {8{1'b1}};
        row_mask =  ( {7'b0000000, writeEnable[7], 7'b0000000, writeEnable[6], 7'b0000000, writeEnable[5],
          7'b0000000, writeEnable[4], 7'b0000000, writeEnable[3], 7'b0000000, writeEnable[2],
          7'b0000000, writeEnable[1], 7'b0000000, writeEnable[0]} << mux_address);
        new_data =  ( {7'b0000000, wordtemp[7], 7'b0000000, wordtemp[6], 7'b0000000, wordtemp[5],
          7'b0000000, wordtemp[4], 7'b0000000, wordtemp[3], 7'b0000000, wordtemp[2],
          7'b0000000, wordtemp[1], 7'b0000000, wordtemp[0]} << mux_address);
        row = (row & ~row_mask) | (row_mask & (~row_mask | new_data));
        mem[row_address] = row;
  	end
  end
  end
  endtask

task dumpmem;
	input [1000*8-1:0] filename_dump;
	integer i, dump_file_desc;
	reg [BITS-1:0] wordtemp;
	reg [7:0] Atemp;
  begin
	dump_file_desc = $fopen(filename_dump);
     if (CEN_ === 1'b1) begin
	  for (i=0;i<WORDS;i=i+1) begin
	  Atemp = i;
	  mux_address = (Atemp & 3'b111);
      row_address = (Atemp >> 3);
      row = mem[row_address];
        writeEnable = {8{1'b1}};
        data_out = (row >> (mux_address));
        readLatch0 = {data_out[56], data_out[48], data_out[40], data_out[32], data_out[24],
          data_out[16], data_out[8], data_out[0]};
        shifted_readLatch0 = readLatch0;
        Q_int = {shifted_readLatch0[7], shifted_readLatch0[6], shifted_readLatch0[5],
          shifted_readLatch0[4], shifted_readLatch0[3], shifted_readLatch0[2], shifted_readLatch0[1],
          shifted_readLatch0[0]};
   	$fdisplay(dump_file_desc, "%b", Q_int);
  end
  	end
    $fclose(dump_file_desc);
  end
  endtask

task loadaddr;
	input [7:0] load_addr;
	input [7:0] load_data;
	reg [BITS-1:0] wordtemp;
	reg [7:0] Atemp;
  begin
     if (CEN_ === 1'b1) begin
	  wordtemp = load_data;
	  Atemp = load_addr;
	  mux_address = (Atemp & 3'b111);
      row_address = (Atemp >> 3);
      row = mem[row_address];
        writeEnable = {8{1'b1}};
        row_mask =  ( {7'b0000000, writeEnable[7], 7'b0000000, writeEnable[6], 7'b0000000, writeEnable[5],
          7'b0000000, writeEnable[4], 7'b0000000, writeEnable[3], 7'b0000000, writeEnable[2],
          7'b0000000, writeEnable[1], 7'b0000000, writeEnable[0]} << mux_address);
        new_data =  ( {7'b0000000, wordtemp[7], 7'b0000000, wordtemp[6], 7'b0000000, wordtemp[5],
          7'b0000000, wordtemp[4], 7'b0000000, wordtemp[3], 7'b0000000, wordtemp[2],
          7'b0000000, wordtemp[1], 7'b0000000, wordtemp[0]} << mux_address);
        row = (row & ~row_mask) | (row_mask & (~row_mask | new_data));
        mem[row_address] = row;
  end
  end
  endtask

task dumpaddr;
	output [7:0] dump_data;
	input [7:0] dump_addr;
	reg [BITS-1:0] wordtemp;
	reg [7:0] Atemp;
  begin
     if (CEN_ === 1'b1) begin
	  Atemp = dump_addr;
	  mux_address = (Atemp & 3'b111);
      row_address = (Atemp >> 3);
      row = mem[row_address];
        writeEnable = {8{1'b1}};
        data_out = (row >> (mux_address));
        readLatch0 = {data_out[56], data_out[48], data_out[40], data_out[32], data_out[24],
          data_out[16], data_out[8], data_out[0]};
        shifted_readLatch0 = readLatch0;
        Q_int = {shifted_readLatch0[7], shifted_readLatch0[6], shifted_readLatch0[5],
          shifted_readLatch0[4], shifted_readLatch0[3], shifted_readLatch0[2], shifted_readLatch0[1],
          shifted_readLatch0[0]};
   	dump_data = Q_int;
  	end
  end
  endtask


  task readWrite;
  begin
    if (RET1N_int === 1'bx || RET1N_int === 1'bz) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (RET1N_int === 1'b0 && CEN_int === 1'b0) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (RET1N_int === 1'b0) begin
      // no cycle in retention mode
    end else if (^{CEN_int, EMA_int, EMAW_int, EMAS_int, RET1N_int} === 1'bx) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if ((A_int >= WORDS) && (CEN_int === 1'b0)) begin
      Q_int = WEN_int !== 1'b1 ? Q_int : {8{1'bx}};
    end else if (CEN_int === 1'b0 && (^A_int) === 1'bx) begin
     if (WEN_int !== 1)
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (CEN_int === 1'b0) begin
      mux_address = (A_int & 3'b111);
      row_address = (A_int >> 3);
      if (row_address > 31)
        row = {64{1'bx}};
      else
        row = mem[row_address];
        writeEnable = ~ {8{WEN_int}};
      if (WEN_int !== 1'b1) begin
        row_mask =  ( {7'b0000000, writeEnable[7], 7'b0000000, writeEnable[6], 7'b0000000, writeEnable[5],
          7'b0000000, writeEnable[4], 7'b0000000, writeEnable[3], 7'b0000000, writeEnable[2],
          7'b0000000, writeEnable[1], 7'b0000000, writeEnable[0]} << mux_address);
        new_data =  ( {7'b0000000, D_int[7], 7'b0000000, D_int[6], 7'b0000000, D_int[5],
          7'b0000000, D_int[4], 7'b0000000, D_int[3], 7'b0000000, D_int[2], 7'b0000000, D_int[1],
          7'b0000000, D_int[0]} << mux_address);
        row = (row & ~row_mask) | (row_mask & (~row_mask | new_data));
        mem[row_address] = row;
      end else begin
        data_out = (row >> (mux_address%8));
        readLatch0 = {data_out[56], data_out[48], data_out[40], data_out[32], data_out[24],
          data_out[16], data_out[8], data_out[0]};
        shifted_readLatch0 = readLatch0;
        Q_int = {shifted_readLatch0[7], shifted_readLatch0[6], shifted_readLatch0[5],
          shifted_readLatch0[4], shifted_readLatch0[3], shifted_readLatch0[2], shifted_readLatch0[1],
          shifted_readLatch0[0]};
      end
      if( isBitX(WEN_int) ) begin
        Q_int = {8{1'bx}};
      end
    end
  end
  endtask
  always @ (CEN_ or CLK_) begin
  	if(CLK_ == 1'b0) begin
  		CEN_p2 = CEN_;
  	end
  end

`ifdef POWER_PINS
  always @ (VDDCE) begin
      if (VDDCE != 1'b1) begin
       if (VDDPE == 1'b1) begin
        $display("VDDCE should be powered down after VDDPE, Illegal power down sequencing in %m at %0t", $time);
       end
        $display("In PowerDown Mode in %m at %0t", $time);
        failedWrite(0);
      end
      if (VDDCE == 1'b1) begin
       if (VDDPE == 1'b1) begin
        $display("VDDPE should be powered up after VDDCE in %m at %0t", $time);
        $display("Illegal power up sequencing in %m at %0t", $time);
       end
        failedWrite(0);
      end
  end
`endif
`ifdef POWER_PINS
  always @ (RET1N_ or VDDPE or VDDCE) begin
`else     
  always @ RET1N_ begin
`endif
`ifdef POWER_PINS
    if (RET1N_ == 1'b1 && RET1N_int == 1'b1 && VDDCE == 1'b1 && VDDPE == 1'b1 && pre_charge_st == 1'b1 && (CEN_ === 1'bx || CLK_ === 1'bx)) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end
`else     
`endif
`ifdef POWER_PINS
`else     
      pre_charge_st = 0;
`endif
    if (RET1N_ === 1'bx || RET1N_ === 1'bz) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (RET1N_ === 1'b0 && CEN_p2 === 1'b0 ) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (RET1N_ === 1'b1 && CEN_p2 === 1'b0 ) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end
`ifdef POWER_PINS
    if (RET1N_ == 1'b0 && VDDCE == 1'b1 && VDDPE == 1'b1) begin
      pre_charge_st = 1;
    end else if (RET1N_ == 1'b0 && VDDPE == 1'b0) begin
      pre_charge_st = 0;
      if (VDDCE != 1'b1) begin
        failedWrite(0);
      end
`else     
    if (RET1N_ == 1'b0) begin
`endif
      Q_int = {8{1'bx}};
      CEN_int = 1'bx;
      WEN_int = 1'bx;
      A_int = {8{1'bx}};
      D_int = {8{1'bx}};
      EMA_int = {3{1'bx}};
      EMAW_int = {2{1'bx}};
      EMAS_int = 1'bx;
      RET1N_int = 1'bx;
`ifdef POWER_PINS
    end else if (RET1N_ == 1'b1 && VDDCE == 1'b1 && VDDPE == 1'b1 &&  pre_charge_st == 1'b1) begin
      pre_charge_st = 0;
    end else begin
      pre_charge_st = 0;
`else     
    end else begin
`endif
        Q_int = {8{1'bx}};
      CEN_int = 1'bx;
      WEN_int = 1'bx;
      A_int = {8{1'bx}};
      D_int = {8{1'bx}};
      EMA_int = {3{1'bx}};
      EMAW_int = {2{1'bx}};
      EMAS_int = 1'bx;
      RET1N_int = 1'bx;
    end
    RET1N_int = RET1N_;
  end


  always @ CLK_ begin
// If POWER_PINS is defined at Simulator Command Line, it selects the module definition with Power Ports
`ifdef POWER_PINS
    if (VDDCE === 1'bx || VDDCE === 1'bz)
      $display("Warning: Unknown value for VDDCE %b in %m at %0t", VDDCE, $time);
    if (VDDPE === 1'bx || VDDPE === 1'bz)
      $display("Warning: Unknown value for VDDPE %b in %m at %0t", VDDPE, $time);
    if (VSSE === 1'bx || VSSE === 1'bz)
      $display("Warning: Unknown value for VSSE %b in %m at %0t", VSSE, $time);
`endif
`ifdef POWER_PINS
  if (RET1N_ == 1'b0) begin
`else     
  if (RET1N_ == 1'b0) begin
`endif
      // no cycle in retention mode
  end else begin
    if ((CLK_ === 1'bx || CLK_ === 1'bz) && RET1N_ !== 1'b0) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (CLK_ === 1'b1 && LAST_CLK === 1'b0) begin
      CEN_int = CEN_;
      EMA_int = EMA_;
      EMAW_int = EMAW_;
      EMAS_int = EMAS_;
      RET1N_int = RET1N_;
      if (CEN_int != 1'b1) begin
        WEN_int = WEN_;
        A_int = A_;
        D_int = D_;
      end
      clk0_int = 1'b0;
      CEN_int = CEN_;
      EMA_int = EMA_;
      EMAW_int = EMAW_;
      EMAS_int = EMAS_;
      RET1N_int = RET1N_;
      if (CEN_int != 1'b1) begin
        WEN_int = WEN_;
        A_int = A_;
        D_int = D_;
      end
      clk0_int = 1'b0;
    readWrite;
    end else if (CLK_ === 1'b0 && LAST_CLK === 1'b1) begin
    end
  end
    LAST_CLK = CLK_;
  end
// If POWER_PINS is defined at Simulator Command Line, it selects the module definition with Power Ports
`ifdef POWER_PINS
 always @ (VDDCE or VDDPE or VSSE) begin
    if (VDDCE === 1'bx || VDDCE === 1'bz)
      $display("Warning: Unknown value for VDDCE %b in %m at %0t", VDDCE, $time);
    if (VDDPE === 1'bx || VDDPE === 1'bz)
      $display("Warning: Unknown value for VDDPE %b in %m at %0t", VDDPE, $time);
    if (VSSE === 1'bx || VSSE === 1'bz)
      $display("Warning: Unknown value for VSSE %b in %m at %0t", VSSE, $time);
 end
`endif

endmodule
`endcelldefine
`else
`celldefine
// If POWER_PINS is defined at Simulator Command Line, it selects the module definition with Power Ports
`ifdef POWER_PINS
module sram256x8 (VDDCE, VDDPE, VSSE, Q, CLK, CEN, WEN, A, D, EMA, EMAW, EMAS, RET1N);
`else
module sram256x8 (Q, CLK, CEN, WEN, A, D, EMA, EMAW, EMAS, RET1N);
`endif

  parameter ASSERT_PREFIX = "";
  parameter BITS = 8;
  parameter WORDS = 256;
  parameter MUX = 8;
  parameter MEM_WIDTH = 64; // redun block size 8, 32 on left, 32 on right
  parameter MEM_HEIGHT = 32;
  parameter WP_SIZE = 8 ;
  parameter UPM_WIDTH = 3;
  parameter UPMW_WIDTH = 2;
  parameter UPMS_WIDTH = 1;

  output [7:0] Q;
  input  CLK;
  input  CEN;
  input  WEN;
  input [7:0] A;
  input [7:0] D;
  input [2:0] EMA;
  input [1:0] EMAW;
  input  EMAS;
  input  RET1N;
`ifdef POWER_PINS
  inout VDDCE;
  inout VDDPE;
  inout VSSE;
`endif

  reg pre_charge_st;
  integer row_address;
  integer mux_address;
  initial row_address = 0;
  initial mux_address = 0;
  reg [63:0] mem [0:31];
  reg [63:0] row, row_t;
  reg LAST_CLK;
  reg [63:0] row_mask;
  reg [63:0] new_data;
  reg [63:0] data_out;
  reg [7:0] readLatch0;
  reg [7:0] shifted_readLatch0;
  reg [7:0] Q_int;
  reg [7:0] writeEnable;

  reg NOT_CEN, NOT_WEN, NOT_A7, NOT_A6, NOT_A5, NOT_A4, NOT_A3, NOT_A2, NOT_A1, NOT_A0;
  reg NOT_D7, NOT_D6, NOT_D5, NOT_D4, NOT_D3, NOT_D2, NOT_D1, NOT_D0, NOT_EMA2, NOT_EMA1;
  reg NOT_EMA0, NOT_EMAW1, NOT_EMAW0, NOT_EMAS, NOT_RET1N;
  reg NOT_CLK_PER, NOT_CLK_MINH, NOT_CLK_MINL;
  reg clk0_int;

  wire [7:0] Q_;
 wire  CLK_;
  wire  CEN_;
  reg  CEN_int;
  reg  CEN_p2;
  wire  WEN_;
  reg  WEN_int;
  wire [7:0] A_;
  reg [7:0] A_int;
  wire [7:0] D_;
  reg [7:0] D_int;
  wire [2:0] EMA_;
  reg [2:0] EMA_int;
  wire [1:0] EMAW_;
  reg [1:0] EMAW_int;
  wire  EMAS_;
  reg  EMAS_int;
  wire  RET1N_;
  reg  RET1N_int;

  buf B0(Q[0], Q_[0]);
  buf B1(Q[1], Q_[1]);
  buf B2(Q[2], Q_[2]);
  buf B3(Q[3], Q_[3]);
  buf B4(Q[4], Q_[4]);
  buf B5(Q[5], Q_[5]);
  buf B6(Q[6], Q_[6]);
  buf B7(Q[7], Q_[7]);
  buf B8(CLK_, CLK);
  buf B9(CEN_, CEN);
  buf B10(WEN_, WEN);
  buf B11(A_[0], A[0]);
  buf B12(A_[1], A[1]);
  buf B13(A_[2], A[2]);
  buf B14(A_[3], A[3]);
  buf B15(A_[4], A[4]);
  buf B16(A_[5], A[5]);
  buf B17(A_[6], A[6]);
  buf B18(A_[7], A[7]);
  buf B19(D_[0], D[0]);
  buf B20(D_[1], D[1]);
  buf B21(D_[2], D[2]);
  buf B22(D_[3], D[3]);
  buf B23(D_[4], D[4]);
  buf B24(D_[5], D[5]);
  buf B25(D_[6], D[6]);
  buf B26(D_[7], D[7]);
  buf B27(EMA_[0], EMA[0]);
  buf B28(EMA_[1], EMA[1]);
  buf B29(EMA_[2], EMA[2]);
  buf B30(EMAW_[0], EMAW[0]);
  buf B31(EMAW_[1], EMAW[1]);
  buf B32(EMAS_, EMAS);
  buf B33(RET1N_, RET1N);

   `ifdef ARM_FAULT_MODELING
     sram256x8_error_injection u1(.CLK(CLK_), .Q_out(Q_), .A(A_int), .CEN(CEN_int), .WEN(WEN_int), .Q_in(Q_int));
  `else
  assign Q_ = (RET1N_ | pre_charge_st) ? ((Q_int)) : {8{1'bx}};
  `endif

// If INITIALIZE_MEMORY is defined at Simulator Command Line, it Initializes the Memory with all ZEROS.
`ifdef INITIALIZE_MEMORY
  integer i;
  initial begin
    #0;
    for (i = 0; i < MEM_HEIGHT; i = i + 1)
      mem[i] = {MEM_WIDTH{1'b0}};
  end
`endif
  always @ (EMA_) begin
  	if(EMA_ < 3) 
   	$display("Warning: Set Value for EMA doesn't match Default value 3 in %m at %0t", $time);
  end
  always @ (EMAW_) begin
  	if(EMAW_ < 1) 
   	$display("Warning: Set Value for EMAW doesn't match Default value 1 in %m at %0t", $time);
  end
  always @ (EMAS_) begin
  	if(EMAS_ < 0) 
   	$display("Warning: Set Value for EMAS doesn't match Default value 0 in %m at %0t", $time);
  end

  task failedWrite;
  input port_f;
  integer i;
  begin
    for (i = 0; i < MEM_HEIGHT; i = i + 1)
      mem[i] = {MEM_WIDTH{1'bx}};
  end
  endtask

  function isBitX;
    input bitval;
    begin
      isBitX = ( bitval===1'bx || bitval===1'bz ) ? 1'b1 : 1'b0;
    end
  endfunction


task loadmem;
	input [1000*8-1:0] filename;
	reg [BITS-1:0] memld [0:WORDS-1];
	integer i;
	reg [BITS-1:0] wordtemp;
	reg [7:0] Atemp;
  begin
	$readmemb(filename, memld);
     if (CEN_ === 1'b1) begin
	  for (i=0;i<WORDS;i=i+1) begin
	  wordtemp = memld[i];
	  Atemp = i;
	  mux_address = (Atemp & 3'b111);
      row_address = (Atemp >> 3);
      row = mem[row_address];
        writeEnable = {8{1'b1}};
        row_mask =  ( {7'b0000000, writeEnable[7], 7'b0000000, writeEnable[6], 7'b0000000, writeEnable[5],
          7'b0000000, writeEnable[4], 7'b0000000, writeEnable[3], 7'b0000000, writeEnable[2],
          7'b0000000, writeEnable[1], 7'b0000000, writeEnable[0]} << mux_address);
        new_data =  ( {7'b0000000, wordtemp[7], 7'b0000000, wordtemp[6], 7'b0000000, wordtemp[5],
          7'b0000000, wordtemp[4], 7'b0000000, wordtemp[3], 7'b0000000, wordtemp[2],
          7'b0000000, wordtemp[1], 7'b0000000, wordtemp[0]} << mux_address);
        row = (row & ~row_mask) | (row_mask & (~row_mask | new_data));
        mem[row_address] = row;
  	end
  end
  end
  endtask

task dumpmem;
	input [1000*8-1:0] filename_dump;
	integer i, dump_file_desc;
	reg [BITS-1:0] wordtemp;
	reg [7:0] Atemp;
  begin
	dump_file_desc = $fopen(filename_dump);
     if (CEN_ === 1'b1) begin
	  for (i=0;i<WORDS;i=i+1) begin
	  Atemp = i;
	  mux_address = (Atemp & 3'b111);
      row_address = (Atemp >> 3);
      row = mem[row_address];
        writeEnable = {8{1'b1}};
        data_out = (row >> (mux_address));
        readLatch0 = {data_out[56], data_out[48], data_out[40], data_out[32], data_out[24],
          data_out[16], data_out[8], data_out[0]};
        shifted_readLatch0 = readLatch0;
        Q_int = {shifted_readLatch0[7], shifted_readLatch0[6], shifted_readLatch0[5],
          shifted_readLatch0[4], shifted_readLatch0[3], shifted_readLatch0[2], shifted_readLatch0[1],
          shifted_readLatch0[0]};
   	$fdisplay(dump_file_desc, "%b", Q_int);
  end
  	end
    $fclose(dump_file_desc);
  end
  endtask

task loadaddr;
	input [7:0] load_addr;
	input [7:0] load_data;
	reg [BITS-1:0] wordtemp;
	reg [7:0] Atemp;
  begin
     if (CEN_ === 1'b1) begin
	  wordtemp = load_data;
	  Atemp = load_addr;
	  mux_address = (Atemp & 3'b111);
      row_address = (Atemp >> 3);
      row = mem[row_address];
        writeEnable = {8{1'b1}};
        row_mask =  ( {7'b0000000, writeEnable[7], 7'b0000000, writeEnable[6], 7'b0000000, writeEnable[5],
          7'b0000000, writeEnable[4], 7'b0000000, writeEnable[3], 7'b0000000, writeEnable[2],
          7'b0000000, writeEnable[1], 7'b0000000, writeEnable[0]} << mux_address);
        new_data =  ( {7'b0000000, wordtemp[7], 7'b0000000, wordtemp[6], 7'b0000000, wordtemp[5],
          7'b0000000, wordtemp[4], 7'b0000000, wordtemp[3], 7'b0000000, wordtemp[2],
          7'b0000000, wordtemp[1], 7'b0000000, wordtemp[0]} << mux_address);
        row = (row & ~row_mask) | (row_mask & (~row_mask | new_data));
        mem[row_address] = row;
  end
  end
  endtask

task dumpaddr;
	output [7:0] dump_data;
	input [7:0] dump_addr;
	reg [BITS-1:0] wordtemp;
	reg [7:0] Atemp;
  begin
     if (CEN_ === 1'b1) begin
	  Atemp = dump_addr;
	  mux_address = (Atemp & 3'b111);
      row_address = (Atemp >> 3);
      row = mem[row_address];
        writeEnable = {8{1'b1}};
        data_out = (row >> (mux_address));
        readLatch0 = {data_out[56], data_out[48], data_out[40], data_out[32], data_out[24],
          data_out[16], data_out[8], data_out[0]};
        shifted_readLatch0 = readLatch0;
        Q_int = {shifted_readLatch0[7], shifted_readLatch0[6], shifted_readLatch0[5],
          shifted_readLatch0[4], shifted_readLatch0[3], shifted_readLatch0[2], shifted_readLatch0[1],
          shifted_readLatch0[0]};
   	dump_data = Q_int;
  	end
  end
  endtask


  task readWrite;
  begin
    if (RET1N_int === 1'bx || RET1N_int === 1'bz) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (RET1N_int === 1'b0 && CEN_int === 1'b0) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (RET1N_int === 1'b0) begin
      // no cycle in retention mode
    end else if (^{CEN_int, EMA_int, EMAW_int, EMAS_int, RET1N_int} === 1'bx) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if ((A_int >= WORDS) && (CEN_int === 1'b0)) begin
      Q_int = WEN_int !== 1'b1 ? Q_int : {8{1'bx}};
    end else if (CEN_int === 1'b0 && (^A_int) === 1'bx) begin
     if (WEN_int !== 1)
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (CEN_int === 1'b0) begin
      mux_address = (A_int & 3'b111);
      row_address = (A_int >> 3);
      if (row_address > 31)
        row = {64{1'bx}};
      else
        row = mem[row_address];
        writeEnable = ~ {8{WEN_int}};
      if (WEN_int !== 1'b1) begin
        row_mask =  ( {7'b0000000, writeEnable[7], 7'b0000000, writeEnable[6], 7'b0000000, writeEnable[5],
          7'b0000000, writeEnable[4], 7'b0000000, writeEnable[3], 7'b0000000, writeEnable[2],
          7'b0000000, writeEnable[1], 7'b0000000, writeEnable[0]} << mux_address);
        new_data =  ( {7'b0000000, D_int[7], 7'b0000000, D_int[6], 7'b0000000, D_int[5],
          7'b0000000, D_int[4], 7'b0000000, D_int[3], 7'b0000000, D_int[2], 7'b0000000, D_int[1],
          7'b0000000, D_int[0]} << mux_address);
        row = (row & ~row_mask) | (row_mask & (~row_mask | new_data));
        mem[row_address] = row;
      end else begin
        data_out = (row >> (mux_address%8));
        readLatch0 = {data_out[56], data_out[48], data_out[40], data_out[32], data_out[24],
          data_out[16], data_out[8], data_out[0]};
        shifted_readLatch0 = readLatch0;
        Q_int = {shifted_readLatch0[7], shifted_readLatch0[6], shifted_readLatch0[5],
          shifted_readLatch0[4], shifted_readLatch0[3], shifted_readLatch0[2], shifted_readLatch0[1],
          shifted_readLatch0[0]};
      end
      if( isBitX(WEN_int) ) begin
        Q_int = {8{1'bx}};
      end
    end
  end
  endtask
  always @ (CEN_ or CLK_) begin
  	if(CLK_ == 1'b0) begin
  		CEN_p2 = CEN_;
  	end
  end

`ifdef POWER_PINS
  always @ (VDDCE) begin
      if (VDDCE != 1'b1) begin
       if (VDDPE == 1'b1) begin
        $display("VDDCE should be powered down after VDDPE, Illegal power down sequencing in %m at %0t", $time);
       end
        $display("In PowerDown Mode in %m at %0t", $time);
        failedWrite(0);
      end
      if (VDDCE == 1'b1) begin
       if (VDDPE == 1'b1) begin
        $display("VDDPE should be powered up after VDDCE in %m at %0t", $time);
        $display("Illegal power up sequencing in %m at %0t", $time);
       end
        failedWrite(0);
      end
  end
`endif
`ifdef POWER_PINS
  always @ (RET1N_ or VDDPE or VDDCE) begin
`else     
  always @ RET1N_ begin
`endif
`ifdef POWER_PINS
    if (RET1N_ == 1'b1 && RET1N_int == 1'b1 && VDDCE == 1'b1 && VDDPE == 1'b1 && pre_charge_st == 1'b1 && (CEN_ === 1'bx || CLK_ === 1'bx)) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end
`else     
`endif
`ifdef POWER_PINS
`else     
      pre_charge_st = 0;
`endif
    if (RET1N_ === 1'bx || RET1N_ === 1'bz) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (RET1N_ === 1'b0 && CEN_p2 === 1'b0 ) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (RET1N_ === 1'b1 && CEN_p2 === 1'b0 ) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end
`ifdef POWER_PINS
    if (RET1N_ == 1'b0 && VDDCE == 1'b1 && VDDPE == 1'b1) begin
      pre_charge_st = 1;
    end else if (RET1N_ == 1'b0 && VDDPE == 1'b0) begin
      pre_charge_st = 0;
      if (VDDCE != 1'b1) begin
        failedWrite(0);
      end
`else     
    if (RET1N_ == 1'b0) begin
`endif
      Q_int = {8{1'bx}};
      CEN_int = 1'bx;
      WEN_int = 1'bx;
      A_int = {8{1'bx}};
      D_int = {8{1'bx}};
      EMA_int = {3{1'bx}};
      EMAW_int = {2{1'bx}};
      EMAS_int = 1'bx;
      RET1N_int = 1'bx;
`ifdef POWER_PINS
    end else if (RET1N_ == 1'b1 && VDDCE == 1'b1 && VDDPE == 1'b1 &&  pre_charge_st == 1'b1) begin
      pre_charge_st = 0;
    end else begin
      pre_charge_st = 0;
`else     
    end else begin
`endif
        Q_int = {8{1'bx}};
      CEN_int = 1'bx;
      WEN_int = 1'bx;
      A_int = {8{1'bx}};
      D_int = {8{1'bx}};
      EMA_int = {3{1'bx}};
      EMAW_int = {2{1'bx}};
      EMAS_int = 1'bx;
      RET1N_int = 1'bx;
    end
    RET1N_int = RET1N_;
  end


  always @ CLK_ begin
// If POWER_PINS is defined at Simulator Command Line, it selects the module definition with Power Ports
`ifdef POWER_PINS
    if (VDDCE === 1'bx || VDDCE === 1'bz)
      $display("Warning: Unknown value for VDDCE %b in %m at %0t", VDDCE, $time);
    if (VDDPE === 1'bx || VDDPE === 1'bz)
      $display("Warning: Unknown value for VDDPE %b in %m at %0t", VDDPE, $time);
    if (VSSE === 1'bx || VSSE === 1'bz)
      $display("Warning: Unknown value for VSSE %b in %m at %0t", VSSE, $time);
`endif
`ifdef POWER_PINS
  if (RET1N_ == 1'b0) begin
`else     
  if (RET1N_ == 1'b0) begin
`endif
      // no cycle in retention mode
  end else begin
    if ((CLK_ === 1'bx || CLK_ === 1'bz) && RET1N_ !== 1'b0) begin
      failedWrite(0);
        Q_int = {8{1'bx}};
    end else if (CLK_ === 1'b1 && LAST_CLK === 1'b0) begin
      CEN_int = CEN_;
      EMA_int = EMA_;
      EMAW_int = EMAW_;
      EMAS_int = EMAS_;
      RET1N_int = RET1N_;
      if (CEN_int != 1'b1) begin
        WEN_int = WEN_;
        A_int = A_;
        D_int = D_;
      end
      clk0_int = 1'b0;
      CEN_int = CEN_;
      EMA_int = EMA_;
      EMAW_int = EMAW_;
      EMAS_int = EMAS_;
      RET1N_int = RET1N_;
      if (CEN_int != 1'b1) begin
        WEN_int = WEN_;
        A_int = A_;
        D_int = D_;
      end
      clk0_int = 1'b0;
    readWrite;
    end else if (CLK_ === 1'b0 && LAST_CLK === 1'b1) begin
    end
  end
    LAST_CLK = CLK_;
  end

  reg globalNotifier0;
  initial globalNotifier0 = 1'b0;

  always @ globalNotifier0 begin
    if ($realtime == 0) begin
    end else if (CEN_int === 1'bx || EMAS_int === 1'bx || EMAW_int[0] === 1'bx || 
      EMAW_int[1] === 1'bx || EMA_int[0] === 1'bx || EMA_int[1] === 1'bx || EMA_int[2] === 1'bx || 
      RET1N_int === 1'bx || clk0_int === 1'bx) begin
        Q_int = {8{1'bx}};
      failedWrite(0);
    end else if (CEN_int === 1'b0 && (^A_int) === 1'bx) begin
        failedWrite(0);
        Q_int = {8{1'bx}};
    end else begin
      #0;#0;
      readWrite;
   end
    globalNotifier0 = 1'b0;
  end
// If POWER_PINS is defined at Simulator Command Line, it selects the module definition with Power Ports
`ifdef POWER_PINS
 always @ (VDDCE or VDDPE or VSSE) begin
    if (VDDCE === 1'bx || VDDCE === 1'bz)
      $display("Warning: Unknown value for VDDCE %b in %m at %0t", VDDCE, $time);
    if (VDDPE === 1'bx || VDDPE === 1'bz)
      $display("Warning: Unknown value for VDDPE %b in %m at %0t", VDDPE, $time);
    if (VSSE === 1'bx || VSSE === 1'bz)
      $display("Warning: Unknown value for VSSE %b in %m at %0t", VSSE, $time);
 end
`endif

  always @ NOT_CEN begin
    CEN_int = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_WEN begin
    WEN_int = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_A7 begin
    A_int[7] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_A6 begin
    A_int[6] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_A5 begin
    A_int[5] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_A4 begin
    A_int[4] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_A3 begin
    A_int[3] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_A2 begin
    A_int[2] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_A1 begin
    A_int[1] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_A0 begin
    A_int[0] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_D7 begin
    D_int[7] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_D6 begin
    D_int[6] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_D5 begin
    D_int[5] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_D4 begin
    D_int[4] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_D3 begin
    D_int[3] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_D2 begin
    D_int[2] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_D1 begin
    D_int[1] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_D0 begin
    D_int[0] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_EMA2 begin
    EMA_int[2] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_EMA1 begin
    EMA_int[1] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_EMA0 begin
    EMA_int[0] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_EMAW1 begin
    EMAW_int[1] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_EMAW0 begin
    EMAW_int[0] = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_EMAS begin
    EMAS_int = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_RET1N begin
    RET1N_int = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end

  always @ NOT_CLK_PER begin
    clk0_int = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_CLK_MINH begin
    clk0_int = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end
  always @ NOT_CLK_MINL begin
    clk0_int = 1'bx;
    if ( globalNotifier0 === 1'b0 ) globalNotifier0 = 1'bx;
  end



  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0, RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0, RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0, RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0, RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0, RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0, RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0, RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0, RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0, RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0, RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0, RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0, RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0, RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0, RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0, RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0, RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1, RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1, RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1, RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1, RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1, RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1, RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1, RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1, RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1, RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1, RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1, RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1, RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1, RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1, RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1, RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1;
  wire RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1, RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1;
  wire RET1Neq1, RET1Neq1aCENeq0aWENeq0, RET1Neq1aCENeq0;

  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&!EMA[0]&&!EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&EMA[0]&&!EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&!EMA[0]&&!EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&EMA[0]&&!EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&!EMA[0]&&!EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&EMA[0]&&!EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&!EMA[0]&&!EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&EMA[0]&&!EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&!EMA[0]&&!EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&EMA[0]&&!EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&!EMA[0]&&!EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&EMA[0]&&!EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&!EMA[0]&&!EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&EMA[0]&&!EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&!EMA[0]&&!EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&EMA[0]&&!EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&!EMA[0]&&EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&EMA[0]&&EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&!EMA[0]&&EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&EMA[0]&&EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&!EMA[0]&&EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&EMA[0]&&EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&!EMA[0]&&EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&EMA[0]&&EMAW[1]&&!EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&!EMA[0]&&EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&EMA[0]&&EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&!EMA[0]&&EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&EMA[0]&&EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&!EMA[0]&&EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&EMA[0]&&EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&!EMA[0]&&EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&EMA[0]&&EMAW[1]&&EMAW[0]&&!EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&!EMA[0]&&!EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&EMA[0]&&!EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&!EMA[0]&&!EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&EMA[0]&&!EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&!EMA[0]&&!EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&EMA[0]&&!EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&!EMA[0]&&!EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&EMA[0]&&!EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&!EMA[0]&&!EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&EMA[0]&&!EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&!EMA[0]&&!EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&EMA[0]&&!EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&!EMA[0]&&!EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&EMA[0]&&!EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&!EMA[0]&&!EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&EMA[0]&&!EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&!EMA[0]&&EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&EMA[0]&&EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&!EMA[0]&&EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&EMA[0]&&EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&!EMA[0]&&EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&EMA[0]&&EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&!EMA[0]&&EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&EMA[0]&&EMAW[1]&&!EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&!EMA[0]&&EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&!EMA[1]&&EMA[0]&&EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&!EMA[0]&&EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&!EMA[2]&&EMA[1]&&EMA[0]&&EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&!EMA[0]&&EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&!EMA[1]&&EMA[0]&&EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&!EMA[0]&&EMAW[1]&&EMAW[0]&&EMAS;
  assign RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1 = 
  RET1N&&!CEN&&EMA[2]&&EMA[1]&&EMA[0]&&EMAW[1]&&EMAW[0]&&EMAS;


  assign RET1Neq1aCENeq0aWENeq0 = RET1N&&!CEN&&!WEN;

  assign RET1Neq1 = RET1N;
  assign RET1Neq1aCENeq0 = RET1N&&!CEN;

  specify

    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[7] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[6] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[5] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[4] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[3] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[2] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[1] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[0] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[7] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[6] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[5] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[4] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[3] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[2] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[1] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[0] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[7] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[6] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[5] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[4] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[3] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[2] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[1] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[0] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[7] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[6] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[5] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[4] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[3] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[2] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[1] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b0 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[0] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[7] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[6] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[5] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[4] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[3] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[2] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[1] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b0)
       (posedge CLK => (Q[0] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[7] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[6] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[5] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[4] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[3] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[2] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[1] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b0 && EMA[0] == 1'b1)
       (posedge CLK => (Q[0] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[7] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[6] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[5] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[4] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[3] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[2] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[1] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b0)
       (posedge CLK => (Q[0] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[7] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[6] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[5] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[4] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[3] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[2] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[1] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);
    if (RET1N == 1'b1 && WEN == 1'b1 && EMA[2] == 1'b1 && EMA[1] == 1'b1 && EMA[0] == 1'b1)
       (posedge CLK => (Q[0] : 1'b0)) = (`ARM_MEM_PROP, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP, `ARM_MEM_RETAIN, `ARM_MEM_PROP);


   // Define SDTC only if back-annotating SDF file generated by Design Compiler
   `ifdef NO_SDTC
       $period(posedge CLK, `ARM_MEM_PERIOD, NOT_CLK_PER);
   `else
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq0, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq0aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq0aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq0aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq0aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq0aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq0aEMAW1eq1aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
       $period(posedge CLK &&& RET1Neq1aCENeq0aEMA2eq1aEMA1eq1aEMA0eq1aEMAW1eq1aEMAW0eq1aEMASeq1, `ARM_MEM_PERIOD, NOT_CLK_PER);
   `endif


   // Define SDTC only if back-annotating SDF file generated by Design Compiler
   `ifdef NO_SDTC
       $width(posedge CLK, `ARM_MEM_WIDTH, 0, NOT_CLK_MINH);
       $width(negedge CLK, `ARM_MEM_WIDTH, 0, NOT_CLK_MINL);
   `else
       $width(posedge CLK &&& RET1Neq1, `ARM_MEM_WIDTH, 0, NOT_CLK_MINH);
       $width(negedge CLK &&& RET1Neq1, `ARM_MEM_WIDTH, 0, NOT_CLK_MINL);
   `endif

    $setuphold(posedge CLK &&& RET1Neq1, posedge CEN, `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_CEN);
    $setuphold(posedge CLK &&& RET1Neq1, negedge CEN, `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_CEN);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge WEN, `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_WEN);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge WEN, `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_WEN);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge A[7], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A7);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge A[6], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A6);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge A[5], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A5);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge A[4], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A4);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge A[3], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A3);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge A[2], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A2);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge A[1], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A1);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge A[0], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A0);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge A[7], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A7);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge A[6], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A6);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge A[5], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A5);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge A[4], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A4);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge A[3], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A3);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge A[2], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A2);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge A[1], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A1);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge A[0], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_A0);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, posedge D[7], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D7);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, posedge D[6], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D6);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, posedge D[5], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D5);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, posedge D[4], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D4);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, posedge D[3], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D3);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, posedge D[2], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D2);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, posedge D[1], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D1);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, posedge D[0], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D0);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, negedge D[7], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D7);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, negedge D[6], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D6);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, negedge D[5], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D5);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, negedge D[4], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D4);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, negedge D[3], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D3);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, negedge D[2], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D2);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, negedge D[1], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D1);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0aWENeq0, negedge D[0], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_D0);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge EMA[2], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMA2);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge EMA[1], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMA1);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge EMA[0], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMA0);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge EMA[2], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMA2);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge EMA[1], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMA1);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge EMA[0], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMA0);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge EMAW[1], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMAW1);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge EMAW[0], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMAW0);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge EMAW[1], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMAW1);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge EMAW[0], `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMAW0);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, posedge EMAS, `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMAS);
    $setuphold(posedge CLK &&& RET1Neq1aCENeq0, negedge EMAS, `ARM_MEM_SETUP, `ARM_MEM_HOLD, NOT_EMAS);
    $setuphold(negedge RET1N, negedge CEN, 0.000, `ARM_MEM_HOLD, NOT_RET1N);
    $setuphold(posedge RET1N, negedge CEN, 0.000, `ARM_MEM_HOLD, NOT_RET1N);
    $setuphold(posedge CEN, posedge RET1N, 0.000, `ARM_MEM_HOLD, NOT_RET1N);
    $setuphold(posedge CEN, negedge RET1N, 0.000, `ARM_MEM_HOLD, NOT_RET1N);
  endspecify


endmodule
`endcelldefine
`endif
`timescale 1ns/1ps
module sram256x8_error_injection (Q_out, Q_in, CLK, A, CEN, WEN);
   output [7:0] Q_out;
   input [7:0] Q_in;
   input CLK;
   input [7:0] A;
   input CEN;
   input WEN;
   parameter LEFT_RED_COLUMN_FAULT = 2'd1;
   parameter RIGHT_RED_COLUMN_FAULT = 2'd2;
   parameter NO_RED_FAULT = 2'd0;
   reg [7:0] Q_out;
   reg entry_found;
   reg list_complete;
   reg [15:0] fault_table [31:0];
   reg [15:0] fault_entry;
initial
begin
   `ifdef DUT
      `define pre_pend_path TB.DUT_inst.CHIP
   `else
       `define pre_pend_path TB.CHIP
   `endif
   `ifdef ARM_NONREPAIRABLE_FAULT
      `pre_pend_path.SMARCHCHKBVCD_LVISION_MBISTPG_ASSEMBLY_UNDER_TEST_INST.MEM0_MEM_INST.u1.add_fault(8'd163,3'd6,2'd1,2'd0);
   `endif
end
   task add_fault;
   //This task injects fault in memory
      input [7:0] address;
      input [2:0] bitPlace;
      input [1:0] fault_type;
      input [1:0] red_fault;
 
      integer i;
      reg done;
   begin
      done = 1'b0;
      i = 0;
      while ((!done) && i < 31)
      begin
         fault_entry = fault_table[i];
         if (fault_entry[0] === 1'b0 || fault_entry[0] === 1'bx)
         begin
            fault_entry[0] = 1'b1;
            fault_entry[2:1] = red_fault;
            fault_entry[4:3] = fault_type;
            fault_entry[7:5] = bitPlace;
            fault_entry[15:8] = address;
            fault_table[i] = fault_entry;
            done = 1'b1;
         end
         i = i+1;
      end
   end
   endtask
//This task removes all fault entries injected by user
task remove_all_faults;
   integer i;
begin
   for (i = 0; i < 32; i=i+1)
   begin
      fault_entry = fault_table[i];
      fault_entry[0] = 1'b0;
      fault_table[i] = fault_entry;
   end
end
endtask
task bit_error;
// This task is used to inject error in memory and should be called
// only from current module.
//
// This task injects error depending upon fault type to particular bit
// of the output
   inout [7:0] q_int;
   input [1:0] fault_type;
   input [2:0] bitLoc;
begin
   if (fault_type === 2'd0)
      q_int[bitLoc] = 1'b0;
   else if (fault_type === 2'd1)
      q_int[bitLoc] = 1'b1;
   else
      q_int[bitLoc] = ~q_int[bitLoc];
end
endtask
task error_injection_on_output;
// This function goes through error injection table for every
// read cycle and corrupts Q output if fault for the particular
// address is present in fault table
//
// If fault is redundant column is detected, this task corrupts
// Q output in read cycle
//
// If fault is repaired using repair bus, this task does not
// courrpt Q output in read cycle
//
   output [7:0] Q_output;
   reg list_complete;
   integer i;
   reg [4:0] row_address;
   reg [2:0] column_address;
   reg [2:0] bitPlace;
   reg [1:0] fault_type;
   reg [1:0] red_fault;
   reg valid;
   reg [1:0] msb_bit_calc;
begin
   entry_found = 1'b0;
   list_complete = 1'b0;
   i = 0;
   Q_output = Q_in;
   while(!list_complete)
   begin
      fault_entry = fault_table[i];
      {row_address, column_address, bitPlace, fault_type, red_fault, valid} = fault_entry;
      i = i + 1;
      if (valid == 1'b1)
      begin
         if (red_fault === NO_RED_FAULT)
         begin
            if (row_address == A[7:3] && column_address == A[2:0])
            begin
               if (bitPlace < 4)
                  bit_error(Q_output,fault_type, bitPlace);
               else if (bitPlace >= 4 )
                  bit_error(Q_output,fault_type, bitPlace);
            end
         end
      end
      else
         list_complete = 1'b1;
      end
   end
   endtask
   always @ (Q_in or CLK or A or CEN or WEN)
   begin
   if (CEN === 1'b0 && &WEN === 1'b1)
      error_injection_on_output(Q_out);
   else
      Q_out = Q_in;
   end
endmodule
