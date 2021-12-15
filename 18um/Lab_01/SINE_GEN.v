/************************************************/
/* SINE-WAVE GENERATOR                          */
/* Outputs digitized sine wave.                 */
/* Gets sines from ROM look-up table.           */
/*                                              */
/* File: SINE_GEN.v                             */
/* Path: <DFTW>/Lab_01                          */
/************************************************/

module SINE_GEN( CLOCK,SINE );

   input  CLOCK;
   output [3:0] SINE;

// This signal implements a five-bit counter.
// It counts 8 x 4 = 32 time slices, dividing
// each of four quadrants into 8 time slices.

   reg [4:0] ANGLE;

// Signals to address ROM, and read its data:

   reg [2:0] ROM_IN;
   reg [3:0] ROM_OUT;

always @( posedge CLOCK )
   begin: COUNT
   // Counts 0 to 31 and rolls over:
      ANGLE <= ANGLE + 1;
   end

always @( ANGLE )
   begin: COMPLEMENT
   // Invert address, quadrants 2 and 4:
      ROM_IN = ANGLE[2:0] ^ { 3{ANGLE[3]} };
   end

// Instantiate look-up table:
   ROM_8x4
   U_ROM( .ADDR(ROM_IN),.SINE(ROM_OUT) );

// Negate ROM output, quadrants 3 and 4:
assign SINE = ROM_OUT ^ { 4{ANGLE[4]} };

endmodule

/************************************************/
