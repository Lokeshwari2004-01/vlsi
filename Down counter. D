module down_counter (
  input  wire clk,
  input  wire reset,  
  output reg  [3:0] q
);
  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 4'hF;
    else
      q <= (q == 4'h0) ? 4'hF : q - 1;
  end
endmodule
