module tff(t,clk,q,qb);
  input t,clk;
  output q,qb;
  reg q = 0,qb = 1;
  always @(posedge clk)
    begin
      if(t)
      	q = ~q;
      qb = ~q;
    end
endmodule
