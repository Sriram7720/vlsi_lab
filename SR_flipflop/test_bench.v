 module test;
  reg s,r,clk;
  wire q,qb;
   SRFF t1(s,r,clk,q,qb);
  initial
    begin 
      clk = 1'b0;
    end
  always #5 clk = ~clk;
  initial 
    begin
    s = 1'b1;r = 1'b0;
    #10 
    s = 1'b0;r = 1'b0;
      #10 
    s = 1'b0;r = 1'b1;
        #10 
    s = 1'b1;r = 1'b1;
      #20;
    end
  initial
    #120 $finish;
endmodule 
