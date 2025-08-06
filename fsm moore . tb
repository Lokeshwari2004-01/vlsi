module tb_fsm_moore_1101;
    reg clk, reset, in;
    wire detected;

    fsm_moore_1101 uut(clk, reset, in, detected);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("fsm_moore.vcd"); $dumpvars(0, tb_fsm_moore_1101);
        clk = 0; reset = 1; in = 0;
        #10 reset = 0;

        in = 1; #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10; // should detect 1101 here

        in = 1; #10;
        in = 0; #10;
        in = 1; #10;

        $finish;
    end
endmodule
