module test;
  reg d,clk;
  wire q,qb;
  dff d1(d,clk,q,qb);
  initial
    begin
      clk = 1'b0;
      d = 1'b0;
    end
  always #5 clk = ~clk;
  initial 
    begin
    #10 d = 1'b1;
  	#20 d = ~d;
    end
  initial
    #120 $finish;
endmodule
