module dlatch(d,en,rst,q,qb);
  input d,en,rst;
  output q,qb;
  reg q;
  always @(en,rst,d)
    begin 
      if(rst)
        q = 1'b0;
      else
        if(en)
          q = d;
    end
  assign qb = ~q;
endmodule
