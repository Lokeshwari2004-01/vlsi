module tb_register_load_store;
    reg clk = 0, reset, load;
    reg [7:0] data_in;
    wire [7:0] data_out;

    register_load_store uut (.clk(clk), .reset(reset), .load(load), .data_in(data_in), .data_out(data_out));
    always #5 clk = ~clk;

    initial begin
        reset = 1; load = 0; data_in = 8'h00;
        #10 reset = 0;

        #10 load = 1; data_in = 8'h0A;
        #10 load = 0; data_in = 8'hFF;  
        #20 $finish;
    end
endmodule
