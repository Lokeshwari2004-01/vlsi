module up_counter#(parameter N=4)(input clk, rst, output reg [N-1:0] q);
    always @(posedge clk or posedge rst)
      begin
        if (rst)
            q <= 0;
        else
            q <= q + 1;
    end
endmodule
