module register_8bit (
    input clk,
    input reset,
    input [7:0] D,
    output reg [7:0] Q
);

    always @(posedge clk) begin
        if (reset)
            Q <= 8'b00000000;  
        else
            Q <= D;           
    end

endmodule
