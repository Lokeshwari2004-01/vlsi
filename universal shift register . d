module universal_shift_register(
    input clk, reset,
    input [1:0] sel,         // 00: Hold, 01: Left, 10: Right, 11: Parallel Load
    input [3:0] data_in,
    output reg [3:0] q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;
        else begin
            case(sel)
                2'b00: q <= q;
                2'b01: q <= {q[2:0], 1'b0};
                2'b10: q <= {1'b0, q[3:1]};
                2'b11: q <= data_in;
            endcase
        end
    end
endmodule
