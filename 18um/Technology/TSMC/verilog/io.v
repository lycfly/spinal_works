// TSMC Standard Cell Function Library Ver 
// Model Type: PCIx , Fri Jul 31 15:39:04 CST 1998
`timescale 1ns / 10ps
`celldefine
module PCI33DGZ (I, OEN, PAD, C);
   input I, OEN;
   inout PAD;
   output C;
   bufif0               (PAD, I, OEN);
   buf                  (C, PAD);
   always @(PAD)
      begin
        if (!$test$plusargs("bus_conflict_off"))
           if ($countdrivers(PAD) && (PAD === 1'bx))
               $display("%t ++BUS CONFLICT++ : %m", $realtime);
      end
   specify
      (I => PAD)=(0, 0);
      (OEN => PAD)=(0, 0, 0, 0, 0, 0);
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIx , Mon Mar  1 20:13:57 CST 1999
`timescale 1ns / 10ps
`celldefine
module PCI33SDGZ (I, OEN, PAD, C);
   input I, OEN;
   inout PAD;
   output C;
   bufif0               (PAD, I, OEN);
   buf                  (C, PAD);
   always @(PAD)
      begin
        if (!$test$plusargs("bus_conflict_off"))
           if ($countdrivers(PAD) && (PAD === 1'bx))
               $display("%t ++BUS CONFLICT++ : %m", $realtime);
      end
   specify
      (I => PAD)=(0, 0);
      (OEN => PAD)=(0, 0, 0, 0, 0, 0);
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIx , Fri Jul 31 15:39:04 CST 1998
`timescale 1ns / 10ps
`celldefine
module PCI66DGZ (I, OEN, PAD, C);
   input I, OEN;
   inout PAD;
   output C;
   bufif0               (PAD, I, OEN);
   buf                  (C, PAD);
   always @(PAD)
      begin
        if (!$test$plusargs("bus_conflict_off"))
           if ($countdrivers(PAD) && (PAD === 1'bx))
               $display("%t ++BUS CONFLICT++ : %m", $realtime);
      end
   specify
      (I => PAD)=(0, 0);
      (OEN => PAD)=(0, 0, 0, 0, 0, 0);
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIx , Mon Mar  1 20:13:25 CST 1999
`timescale 1ns / 10ps
`celldefine
module PCI66SDGZ (I, OEN, PAD, C);
   input I, OEN;
   inout PAD;
   output C;
   bufif0               (PAD, I, OEN);
   buf                  (C, PAD);
   always @(PAD)
      begin
        if (!$test$plusargs("bus_conflict_off"))
           if ($countdrivers(PAD) && (PAD === 1'bx))
               $display("%t ++BUS CONFLICT++ : %m", $realtime);
      end
   specify
      (I => PAD)=(0, 0);
      (OEN => PAD)=(0, 0, 0, 0, 0, 0);
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCK01CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCK02CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCK03CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCK04CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCK05CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCK06CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCKH1CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:54 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCKH1SDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCKH2CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:54 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCKH2SDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:54 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCKH3CDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Mon Nov 24 11:09:54 CST 1997
`timescale 1ns / 10ps
`celldefine
module PCKH3SDG (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCORNER , Mon Mar  9 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PCORNERDG ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCORNER , Mon Mar  9 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PCORNERDG_L ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDB02DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDB02SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDB04DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDB04SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDB08DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDB08SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDB12DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDB12SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDB16DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDB16SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDB24DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDB24SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDCH1DGZ (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDCH2DGZ (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDCH3DGZ (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDD02DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDD02SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDD04DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDD04SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDD08DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDD08SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDD12DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDD12SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDD16DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDD16SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDD24DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDD24SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDDx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDDDGZ (PAD, C);
   input PAD;
   output C;

   parameter PullTime = 10000;

   wire HiZ = (PAD===1'bz);
   bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
   buf          (C, C_buf);
   pmos		(C_buf, PAD, 1'b0);

   specify
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDDx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDDSDGZ (PAD, C);
   input PAD;
   output C;

   parameter PullTime = 10000;

   wire HiZ = (PAD===1'bz);
   bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
   buf          (C, C_buf);
   pmos		(C_buf, PAD, 1'b0);

   specify
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:37 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDDW02DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:37 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDDW04DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:37 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDDW08DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:38 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDDW12DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:38 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDDW16DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:38 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDDW24DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDDxW , Wed Aug 19 17:18:59 CST 1998
`timescale 1ns / 10ps
`celldefine
module PDDWDGZ (PAD, C, REN);
   input PAD,REN;
   output C;

   parameter PullTime = 10000;

   bufif0(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, REN);
   buf          (C, C_buf);
   pmos		(C_buf, PAD, 1'b0);

   specify
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDIx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDIDGZ (PAD, C);
   input PAD;
   output C;
   buf		(C, PAD);
   specify
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDIx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDISDGZ (PAD, C);
   input PAD;
   output C;
   buf		(C, PAD);
   specify
      (PAD => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDO02CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDO04CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDO08CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDO12CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDO16CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDO24CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDSH1DGZ (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDSH2DGZ (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDCx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDSH3DGZ (CLK, CP);
    input CLK;
    output CP;
    buf		(CP, CLK);
    specify
       (CLK => CP)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDT02DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDT04DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDT08DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDT12DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDT16DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDT24DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDU02DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDU02SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDU04DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDU04SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDU08DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDU08SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDU12DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDU12SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDU16DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDU16SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDU24DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDU24SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDUx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDUDGZ (PAD, C);
   input PAD;
   output C;

   parameter PullTime = 10000;

   wire HiZ = (PAD===1'bz);
   bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
   buf          (C, C_buf);
   pmos		(C_buf, PAD, 1'b0);

   specify
      (PAD => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDUx , Tue Dec 16 10:42:50 CST 1997
`timescale 1ns / 10ps
`celldefine
module PDUSDGZ (PAD, C);
   input PAD;
   output C;

   parameter PullTime = 10000;

   wire HiZ = (PAD===1'bz);
   bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
   buf          (C, C_buf);
   pmos		(C_buf, PAD, 1'b0);

   specify
      (PAD => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:36 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDUW02DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:36 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDUW04DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:36 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDUW08DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:36 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDUW12DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:36 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDUW16DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:36 CST 1999
`timescale 1ns / 10ps
`celldefine
module PDUW24DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDUxW , Wed Aug 19 17:18:59 CST 1998
`timescale 1ns / 10ps
`celldefine
module PDUWDGZ (PAD, C, REN);
   input PAD,REN;
   output C;

   parameter PullTime = 10000;

   bufif0(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, REN);
   buf          (C, C_buf);
   pmos		(C_buf, PAD, 1'b0);

   specify
      (PAD => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDXOx , Tue Aug 25 15:08:28 CST 1998
`timescale 1ns / 10ps
`celldefine
module PDXO01DG (XIN, XOUT, XC);
    input XIN;
    output XOUT, XC;
    not		(XOUT, XIN);
    not		(XC, XOUT);
    specify
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDXOx , Tue Aug 25 15:08:28 CST 1998
`timescale 1ns / 10ps
`celldefine
module PDXO02DG (XIN, XOUT, XC);
    input XIN;
    output XOUT, XC;
    not		(XOUT, XIN);
    not		(XC, XOUT);
    specify
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDXOx , Tue Aug 25 15:08:28 CST 1998
`timescale 1ns / 10ps
`celldefine
module PDXO03DG (XIN, XOUT, XC);
    input XIN;
    output XOUT, XC;
    not		(XOUT, XIN);
    not		(XC, XOUT);
    specify
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PEXOx , Tue Aug 25 15:08:28 CST 1998
`timescale 1ns / 10ps
`celldefine
module PDXOE1DG (XC, XOUT, XIN, E);
    input XIN, E;
    output XC, XOUT;
    not                  (XC, XOUT);
    nand                 (XOUT, E, XIN);
    specify
       (E => XC)=(0, 0);
       (E => XOUT)=(0, 0);
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PEXOx , Tue Aug 25 15:08:28 CST 1998
`timescale 1ns / 10ps
`celldefine
module PDXOE2DG (XC, XOUT, XIN, E);
    input XIN, E;
    output XC, XOUT;
    not                  (XC, XOUT);
    nand                 (XOUT, E, XIN);
    specify
       (E => XC)=(0, 0);
       (E => XOUT)=(0, 0);
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PEXOx , Tue Aug 25 15:08:28 CST 1998
`timescale 1ns / 10ps
`celldefine
module PDXOE3DG (XC, XOUT, XIN, E);
    input XIN, E;
    output XC, XOUT;
    not                  (XC, XOUT);
    nand                 (XOUT, E, XIN);
    specify
       (E => XC)=(0, 0);
       (E => XOUT)=(0, 0);
       (XIN => XC)=(0, 0);
       (XIN => XOUT)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRB08DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRB08SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRB12DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRB12SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRB16DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRB16SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRB24DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDBx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRB24SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    bufif0	(PAD, I, OEN);
    buf		(C, PAD);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRD08DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRD08SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRD12DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRD12SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRD16DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRD16SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Tue Dec 16 10:42:52 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRD24DGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBDx , Mon Mar  1 20:12:09 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRD24SDGZ (I, OEN, PAD, C);
    inout PAD;
    input I, OEN;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:38 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRDW08DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:38 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRDW12DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:38 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRDW16DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxDD , Sun Mar 14 09:48:38 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRDW24DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b0, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRO08CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRO12CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRO16CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDOx , Mon Nov 24 11:09:30 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRO24CDG (I, PAD);
    input I;
    output PAD;
    buf		(PAD, I);
    specify
       (I => PAD)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRT08DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRT12DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRT16DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PDTx , Tue Dec 16 10:42:51 CST 1997
`timescale 1ns / 10ps
`celldefine
module PRT24DGZ (I, OEN, PAD);
    input I, OEN;
    output PAD;
    bufif0	(PAD, I, OEN);
    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Wed Aug 19 17:18:57 CST 1998
`timescale 1ns / 10ps
`celldefine
module PRU08DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:10 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRU08SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Wed Aug 19 17:18:57 CST 1998
`timescale 1ns / 10ps
`celldefine
module PRU12DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:10 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRU12SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Wed Aug 19 17:18:57 CST 1998
`timescale 1ns / 10ps
`celldefine
module PRU16DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:10 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRU16SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Wed Aug 19 17:18:57 CST 1998
`timescale 1ns / 10ps
`celldefine
module PRU24DGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PBUx , Mon Mar  1 20:12:10 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRU24SDGZ (I, OEN, PAD, C);
    input I, OEN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, HiZ);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:37 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRUW08DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:37 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRUW12DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:37 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRUW16DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PCIxUU , Sun Mar 14 09:48:37 CST 1999
`timescale 1ns / 10ps
`celldefine
module PRUW24DGZ (I, OEN, REN, PAD, C);
    input I, OEN, REN;
    inout PAD;
    output C;

    parameter PullTime = 10000;
 
    wire HiZ = (PAD===1'bz);
    not (RE, REN);
    and (PADRE, HiZ, RE);
    bufif1(weak0,weak1)#(PullTime,PullTime,0)(C_buf, 1'b1, PADRE);
    buf         (C, C_buf);
    bufif0       (PAD, I, OEN);
    pmos         (C_buf, PAD, 1'b0);

    always @(PAD)
       begin
         if (!$test$plusargs("bus_conflict_off"))
            if ($countdrivers(PAD) && (PAD === 1'bx))
                $display("%t ++BUS CONFLICT++ : %m", $realtime);
       end
    specify
       (I => PAD)=(0, 0);
       (OEN => PAD)=(0, 0, 0, 0, 0, 0);
       (PAD => C)=(0, 0);
    endspecify
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PVDDx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PVDD1DGZ (VDD);
    inout   VDD;
    supply1 VDD;
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PVDDx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PVDD2DGZ ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PVSSx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PVSS1DGZ (VSS);
    inout   VSS;
    supply0 VSS;
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PVSSx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PVSS2DGZ ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver 
// Model Type: PVSSx , Tue Dec 16 10:42:53 CST 1997
`timescale 1ns / 10ps
`celldefine
module PVSS3DGZ (VSS);
    inout   VSS;
    supply0 VSS;
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PFEED , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PFEED50 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PFEED , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PFEED35 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PFEED , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PFEED20 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PFEED , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PFEED10 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PFEED , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PFEED5 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PFEED , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PFEED2 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PFEED , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PFEED1 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PFEED , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PFEED01 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PAD , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PADIZ40 ();
endmodule
`endcelldefine

// TSMC Standard Cell Function Library Ver
// Model Type: PAD , Tue Apr 4 15:54:26 CST 1998
`timescale 1ns / 10ps
`celldefine
module PADOZ40 ();
endmodule
`endcelldefine
