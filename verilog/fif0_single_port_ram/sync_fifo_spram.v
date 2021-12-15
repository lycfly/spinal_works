
`define REGISTER

module sync_fifo_spram
  #(
     AW = 4,
     DW = 16
   )
   (
     input               clk,
     input               rst_n,
     input               wr_en,
     input   [DW-1:0]    din,
     output              full,
     input               rd_en,
     output  [DW-1:0]    dout,
     output              empty
   );
   
   reg  [AW:0] wr_cnt;
   reg  [AW:0] rd_cnt;
   wire [AW-1:0] wr_p, rd_p;
   wire wr_flag, rd_flag;
   
   assign wr_p = wr_cnt[AW-1:0];
   assign rd_p = rd_cnt[AW-1:0];
   
   assign full = (wr_cnt[AW]!= rd_cnt[AW] && wr_p==rd_p)? 1:0; 
   assign empty = (wr_cnt== rd_cnt)? 1:0;
   
   assign wr_flag = !full & wr_en;
   assign rd_flag = !empty & rd_en;
   
   reg [DW-1 : 0] mem [(1<<AW)-1 : 0];
   reg [DW-1:0] dout_reg;
   assign dout = dout_reg;
   always@(posedge clk or negedge rst_n)
   begin
      if(!rst_n) begin
          wr_cnt <= 'd0;
          rd_cnt <= 'd0;
      end
      else begin
          if(wr_flag)
          begin
              mem[wr_p] <= din;
              wr_cnt <= wr_cnt + 1'b1;
          end
          if(rd_flag)
          begin
              dout_reg <= mem[rd_p];
              rd_cnt <= rd_cnt + 1'b1;
          end
      end
    end

endmodule
