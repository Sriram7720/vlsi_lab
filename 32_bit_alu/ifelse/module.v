module alu(a,b,f,y);
  input [31:0]a;
  input [31:0]b;
  input [2:0]f;
  output reg [31:0]y;
  always @(*)
    begin
      if(f == 0)
        y = a&b;
      else if(f == 1)
        y = a|b;
      else if(f == 2)
        y = ~(a&b);
      else if(f == 3)
        y = ~(a|b);
      else if(f == 4)
        y = a+b;
      else if(f == 5)
        y = a-b;
      else if(f == 6)
        y = a*b;
      else
        y = 32'bx;
    end
endmodule
