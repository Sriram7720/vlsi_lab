module test;
  reg j,k,clk;
  wire q,qb;
  JKFF j1(j,k,clk,q,qb);
  initial
    begin 
      $dumpfile("dump.vcd"); 
      $dumpvars;
      clk = 1'b0;
    end
  always #5 clk = ~clk;
  initial 
    begin
      j = 1'b0; k = 1'b0;
      #10
      j = 1'b0; k = 1'b1;
      #10
      j = 1'b1; k = 1'b0;
      #10
      j = 1'b1; k = 1'b1;
      #20;
    end
  initial
    #120 $finish;
endmodule
      
