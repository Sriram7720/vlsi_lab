module test;
  reg [31:0]a;
  reg [31:0]b;
  reg [2:0]f;
  wire [31:0]y;
  alu a1(a,b,f,y);
  initial 
    begin
      a = 4'b0101;
      b = 4'b0010;
      f = 0;
      #10 f = 1;
      #10 f = 2;
      #10 f = 3;
      #10 f = 4;
      #10 f = 6;
      #10;
    end
  initial
    #120 $finish;
endmodule
      
