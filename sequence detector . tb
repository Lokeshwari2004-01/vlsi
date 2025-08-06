module tb_Sequence_Detector_MOORE;

  reg clk = 0, reset = 1, seq_in = 0;
  wire det_out;

  Sequence_Detector_MOORE uut (
    .clk(clk), .reset(reset),
    .seq_in(seq_in), .det_out(det_out)
  );

  
  always #10 clk = ~clk;

  initial begin
    #25 reset = 0;
  
    {seq_in} = 1; #20;
    {seq_in} = 0; #20;
    {seq_in} = 1; #20;
    {seq_in} = 1; #20; 
    {seq_in} = 0; #20;
    {seq_in} = 1; #20;
    {seq_in} = 1; #20; 
    #40 $finish;
  end
  initial begin
    $dumpfile("sd.vcd");
    $dumpvars();
  end
endmodule
