module test;
  reg [3:0]A,Cin;
  reg [3:0]B;
  wire [3:0]S,Cout;
  pa f1(A,B,Cin,S,Cout);
  initial
    begin 
      Cin = 0;
      A = 4'b0100;
      B = 4'b0011;
      #10
      A = 4'b1111;
      B = 4'b1111;
      #10
      #30 $finish;
    end
endmodule
