module decoder_4_2(a,b,c,d,x,y);
  input a,b,c,d;
  output x,y;
  assign x=c|d;
  assign y=b|d;
endmodule