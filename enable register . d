module register_with_enable (
    input clk,
    input reset,
    input enable,
    input [7:0] D,
    output reg [7:0] Q
);

    always @(posedge clk) begin
        if (reset)
            Q <= 8'b0;
        else if (enable)
            Q <= D;
    end
endmodule
