`timescale 1ns / 1ps

module tb_register_8bit;

    reg clk, reset;
    reg [7:0] D;
    wire [7:0] Q;

    register_8bit uut (
        .clk(clk), .reset(reset), .D(D), .Q(Q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        D = 8'b00000000;

        #10 reset = 0;

        #10 D = 8'b10101010;  
        #10 D = 8'b11110000;  
        #10 reset = 1;       
        #10 reset = 0; D = 8'b00001111; 

        #20 $finish;
    end
endmodule
