module tb_piso_shift;
    reg clk = 0, reset, load;
    reg [7:0] parallel_in;
    wire serial_out;

    piso_shift uut (.clk(clk), .reset(reset), .load(load), .parallel_in(parallel_in), .serial_out(serial_out));
    always #5 clk = ~clk;

    initial begin
        reset = 1; load = 0; parallel_in = 8'hA5;
        #10 reset = 0;
        #10 load = 1;
        #10 load = 0;

        
        repeat (8) #10;

        $finish;
    end
endmodule
