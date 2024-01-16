 module test;
  reg t,clk;
  wire q,qb;
   tff t1(t,clk,q,qb);
  initial
    begin 
      $dumpfile("dump.vcd"); 
      $dumpvars;
      clk = 1'b0;
      t = 1'b0;
    end
  always #5 clk = ~clk;
  initial 
    begin
    #10 t = 1'b1;
  	#20 t = ~t;
    end
  initial
    #120 $finish;
endmodule 
