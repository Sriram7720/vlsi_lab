module JKFF(j,k,clk,q,qb);
  input j,k,clk;
  output q,qb;
  reg q = 0,qb = 1;
  reg [1:0]jk;
  always @(posedge clk)
    begin
      jk = {j,k};
      case(jk)
        2'b00:q = q;
        2'b01:q = 1'b0;
        2'b10:q = 1'b1;
        2'b11:q = ~q;
      endcase
      qb = ~q;
    end
endmodule
