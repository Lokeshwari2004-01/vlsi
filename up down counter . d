module up_down_counter (
  input  wire clk,
  input  wire reset_n, 
  input  wire dir,    
  output reg  [3:0] q
);
  always @(posedge clk) begin
    if (!reset_n)
      q <= 4'h0;
    else if (dir)
      q <= q + 1;
    else
      q <= q - 1;
  end
endmodule
