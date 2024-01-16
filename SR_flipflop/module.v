module SRFF(s,r,clk,q,qb);
  input s,r,clk;
  output q,qb;
  reg q,qb;
  reg [1:0]sr;
  always @(posedge clk)
    begin 
      sr = {s,r};
      case(sr)
        2'b00:q = q;
        2'b01:q = 1'b0;
        2'b10:q = 1'b1;
        2'b11:q = 1'bx;
      endcase
      qb = ~q;
    end
endmodule
