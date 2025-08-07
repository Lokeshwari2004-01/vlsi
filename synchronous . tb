`timescale 1ns/1ps

module tb_sync_counter;
    reg clk = 0, reset;
    wire [3:0] count;

    sync_counter uut (.clk(clk), .reset(reset), .count(count));

    always #5 clk = ~clk;  // 10ns clock period

    initial begin
        $monitor("Time=%0t clk=%b reset=%b count=%d", $time, clk, reset, count);

        reset = 1; #12;   
        reset = 0;

        #100; 
        $finish;
    end
endmodule
