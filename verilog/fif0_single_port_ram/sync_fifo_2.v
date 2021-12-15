
module sync_fifo_2
#( parameter AW = 3,    //地址宽度为3,
   parameter DW = 16,    //数据位宽，
   parameter DEPTH = 8  //数据个数，FIFO深度
  )
   (
     input clk,
     input rst_n,
     input wr_en,
     input rd_en,
     input [DW-1:0] din,
     output [DW-1:0] dout,
     output full,
     output empty,
     output [AW:0] fifo_cnt
   );


  reg [DW-1:0] buf_mem [DEPTH-1:0];  // 或换成双端口RAM
  reg [AW-1:0] rd_ptr,wr_ptr;        // 读写指针
  reg [DW-1:0] dout_reg;
  reg [AW:0] fifo_cnt_reg;           // 存入数据的计数，0-8，位宽要比地址位宽大1

  //========= 写入 ============
  always @(posedge clk)
  begin
    if(wr_en&&!full)
    begin
      buf_mem[wr_ptr] <= din;
    end
  end

  //========= 读出 ============
  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
    begin
      dout_reg <= 'd0;
    end
    else
    begin
      if(rd_en&&!empty)
      begin
        dout_reg <= buf_mem[rd_ptr];
      end
      else
        dout_reg <= dout_reg;
    end
  end

  assign dout = dout_reg;

  //========= 数据计数 ============
  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
    begin
      fifo_cnt_reg <= {(AW+1){1'b0}};
    end
    else
    begin
      if((wr_en&&!full)&&((rd_en&&!empty)))
        fifo_cnt_reg <= fifo_cnt_reg;
      else if(wr_en&&!full)
        fifo_cnt_reg <= fifo_cnt_reg+1'b1;
      else if(rd_en&&!empty)
        fifo_cnt_reg <= fifo_cnt_reg-1'b1;
      else
        fifo_cnt_reg <= fifo_cnt_reg;
    end
  end
  assign fifo_cnt = fifo_cnt_reg;

  //========= 读写指针控制 ============
  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
    begin
      rd_ptr <= {AW{1'b0}};
    end
    else
    begin
      if(rd_en&&!empty)
        rd_ptr <= rd_ptr + 1'b1;
      else
        rd_ptr <= rd_ptr;
    end
  end

  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
    begin
      wr_ptr <= {AW{1'b0}};
    end
    else
    begin
      if(wr_en&&!full)
        wr_ptr <= wr_ptr + 1'b1;
      else
        wr_ptr <= wr_ptr;
    end
  end

  //========= 空满判断 ============
  assign full = (fifo_cnt_reg == DEPTH)?1'b1:1'b0;
  assign empty = (fifo_cnt_reg == {(AW+1){1'b0}})?1'b1:1'b0;

endmodule
