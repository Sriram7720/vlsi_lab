module dff(d,clk,q,qb);
  input d,clk;
  output q,qb;
  reg q,qb;
  always @(posedge clk)
    begin
      q = d;
      qb = ~q;
    end
endmodule
  
