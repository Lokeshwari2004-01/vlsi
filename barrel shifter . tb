`timescale 1ns/1ps
module tb_barrel_shifter;
    reg [3:0] in;
    reg [1:0] shift;
    reg dir;
    wire [3:0] out;

    barrel_shifter uut(in, shift, dir, out);

    initial begin
        $dumpfile("barrel_shifter.vcd"); $dumpvars(0, tb_barrel_shifter);
        in = 4'b1010;

        shift = 2'd1; dir = 0; #10; // left shift
        shift = 2'd2; dir = 1; #10; // right shift
        shift = 2'd3; dir = 0; #10;

        $finish;
    end
endmodule
