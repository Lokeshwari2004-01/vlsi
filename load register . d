module register_with_load (
    input clk,
    input reset,
    input load,
    input [7:0] D,
    output reg [7:0] Q
);

    always @(posedge clk) begin
        if (reset)
            Q <= 8'b0;
        else if (load)
            Q <= D; 
        
    end
endmodule
