module test;
  reg d,en,rst;
  wire q,qb;
  dlatch d1(d,en,rst,q,qb);
  
  initial 
    begin
      d = 0;
      en = 0;
      rst = 0;
    end
  always #8 en = ~en;
  always #5 d = ~d;
  initial
  #30 rst = 1;
  initial
  #120 $finish;
endmodule
