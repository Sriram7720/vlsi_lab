module test;
  reg clk,rst,m;
  wire count;
  counter c1(clk,m,rst,count);
  initial
    begin
      clk = 1'b0;
      m = 1;
      rst = 1'b0;
      #10 rst = ~rst;
    end
  always #5 clk = ~clk;
  initial
    begin
     #60 m = ~m;
   	 #120 rst = ~rst;
    end
  initial 
    #200 $finish;
endmodule
