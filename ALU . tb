`timescale 1ns/1ps
module tb_alu;
    reg [3:0] a, b;
    reg [1:0] sel;
    wire [3:0] y;

    alu uut(a, b, sel, y);

    initial begin
        $dumpfile("alu.vcd"); $dumpvars(0, tb_alu);
        a = 4'b1010; b = 4'b0101;

        sel = 2'b00; #10;
        sel = 2'b01; #10; 
        sel = 2'b10; #10;
        sel = 2'b11; #10; 

        $finish;
    end
endmodule
