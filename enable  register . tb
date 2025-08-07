module tb_register_with_enable;
    reg clk = 0, reset, enable;
    reg [7:0] D;
    wire [7:0] Q;

    register_with_enable uut (.clk(clk), .reset(reset), .enable(enable), .D(D), .Q(Q));
    always #5 clk = ~clk;

    initial begin
        reset = 1; enable = 0; D = 8'h00;
        #10 reset = 0;

        #10 enable = 1; D = 8'hAA; 
        #10 enable = 0; D = 8'hFF;  
        #10 enable = 1; D = 8'h55; 

        #20 $finish;
    end
endmodule
