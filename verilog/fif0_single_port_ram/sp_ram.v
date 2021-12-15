

module sp_ram
  #(
     DW = 16,
     AW = 8
   )
   (
     input                clk,
     input                ce,
     input                we,
     input       [DW-1:0] wdata,
     input       [AW-1:0] addr,
     output reg  [DW-1:0] rdata
   );

  reg [DW-1:0] ram [(1<<AW) -1 :0];

  always@(posedge clk)
    if(ce)
      if(we)
        ram[addr] <= wdata;
      else
        rdata <= ram[addr];



endmodule
