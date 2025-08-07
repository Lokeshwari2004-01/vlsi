
module uart_tb;
    reg clk, reset, start;
    reg [7:0] data;
    wire tx, busy;

    uart_tb uut(clk, reset, start, data, tx, busy);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("uart_tx.vcd"); $dumpvars(0, tb_uart_tx);
        clk = 0; reset = 1; start = 0; data = 8'hA5;
        #10 reset = 0;
        #10 start = 1;
        #10 start = 0;
        #200;
        $finish;
    end
endmodule
