
module all_gates_tb;
    reg a, b;
    wire and_out, or_out, not_a, xor_out, xnor_out, nand_out, nor_out;
 all_gates uut(a, b, and_out, or_out, not_a, xor_out, xnor_out, nand_out, nor_out);
    initial begin
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
    end
  initial begin
    $dumpfile("all.vcd");
    $dumpvars;
  end
  
endmodule
