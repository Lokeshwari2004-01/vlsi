module barrel_shifter (
    input [3:0] in,
    input [1:0] shift,
    input dir, // 0 = left, 1 = right
    output reg [3:0] out
);
    always @(*) begin
        if (dir == 0)
            out = in << shift;
        else
            out = in >> shift;
    end
endmodule
