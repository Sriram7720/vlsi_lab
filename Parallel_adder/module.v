module fa(a,b,cin,s,cout);
  input a,b,cin;
  output s,cout;
  assign s = a^b^cin;
  assign cout = (a&b)|(b&cin)|(cin&a);
endmodule

module pa(A,B,Cin,S,Cout);
  input [3:0]A;
  input [3:0]B;
  input Cin;
  wire [2:0]C;
  output reg Cout;
  output reg [3:0]S;
  fa f1(A[0],B[0],Cin,S[0],C[0]);
  fa f2(A[1],B[1],C[0],S[1],C[1]);
  fa f3(A[2],B[2],C[1],S[2],C[2]);
  fa f4(A[3],B[3],C[2],S[3],Cout);
endmodule
