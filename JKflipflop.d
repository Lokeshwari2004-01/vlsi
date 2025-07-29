module JK_flipflop (
  input clk, rst_n,
  input j,k,
  output reg q,
  output q_bar
  );
  always@(posedge clk) begin
    if(!rst_n) q <= 0;
    else begin
      case({j,k})
        2'b00: q <= q;   
        2'b01: q <= 1'b0; 
        2'b10: q <= 1'b1; 
        2'b11: q <= ~q;   
      endcase
    end
  end
  assign q_bar = ~q;
endmodule