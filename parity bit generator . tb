module pg_tb();
    reg [3:0] d;
    wire parity;

    pg ak (.d(d), .parity(parity));
    initial begin
        d = 4'b0000; #10;
        d = 4'b1111; #10;
        d = 4'b1010; #10;
        $finish;
    end
  initial begin
    $dumpfile("ak.vcd");
    $dumpvars(1);
  end
endmodule
