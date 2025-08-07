module piso_shift_register (
    input clk,
    input reset,
    input load,
    input [7:0] parallel_in,
    output reg serial_out
);
    reg [7:0] shift_reg;

    always @(posedge clk or posedge reset) begin
        if (reset)
            shift_reg <= 8'b0;
        else if (load)
            shift_reg <= parallel_in;
        else
            shift_reg <= shift_reg << 1;
    end

    always @(*) begin
        serial_out = shift_reg[7];
    end
endmodule
