module d_latch(input d,en,rstn,
               output reg q);
  always@(en or rstn or d)
    if(!rstn)
      q<=0;
  else
    if(en)
      q<=d;
endmodule
