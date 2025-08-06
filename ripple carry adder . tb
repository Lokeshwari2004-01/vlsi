module tb_ripple_carry_adder;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;

  ripple_carry_adder rca (A, B, Cin, Sum, Cout);

  initial begin
    A = 4'b0001; B = 4'b0010; Cin = 0;
    #10;
    A = 4'b0101; B = 4'b0011; Cin = 0;
    #10;
    A = 4'b1111; B = 4'b0001; Cin = 0;
    #10;
    A = 4'b1111; B = 4'b1111; Cin = 1;
    #10;
  end
  initial begin 
    $dumpfile("ripple.vcd");
    $dumpvars();
  end
endmodule
