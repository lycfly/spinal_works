/************************************************/
/* ROM_8x4 Look-Up Table                        */
/* Eight four-bit sines.                        */
/*                                              */
/* File: ROM_8x4.v                              */
/* Path: <DFTW>/Lab_01                          */
/************************************************/

module ROM_8x4( ADDR,SINE );

   input  [2:0] ADDR;

   output [3:0] SINE;

// ROM array, 8 x 4:
   reg [3:0] ROM [0:7];

always @( ADDR )
   begin: TABLE

/* Four-Bit Sine Table
 *   (0..90 Degrees)
 *              Approx.     Exact
 *              -------     -----
 */
      ROM[0] = 4'b0000;  // 0.000
      ROM[1] = 4'b0011;  // 0.195
      ROM[2] = 4'b0110;  // 0.383
      ROM[3] = 4'b1001;  // 0.555
      ROM[4] = 4'b1011;  // 0.707
      ROM[5] = 4'b1110;  // 0.831
      ROM[6] = 4'b1111;  // 0.924
      ROM[7] = 4'b1111;  // 0.981
   end

// Table look-up:
assign SINE = ROM[ADDR];

endmodule

/************************************************/
