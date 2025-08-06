module Sequence_Detector_MOORE (
    input  wire clk,
    input  wire reset,
    input  wire seq_in,
    output reg  det_out
);
  typedef enum reg [2:0] {
    S0 = 3'b000,
    S1 = 3'b001,
    S2 = 3'b010,
    S3 = 3'b011,
    S4 = 3'b100
  } state_t;

  state_t state, next;
  always @(posedge clk or posedge reset) begin
    if (reset)
      state <= S0;
    else
      state <= next;
  end
  always @(*) begin
    det_out = 1'b0;
    case (state)
      S0: next = seq_in ? S1 : S0;
      S1: next = seq_in ? S1 : S2;
      S2: next = seq_in ? S3 : S0;
      S3: begin
            if (seq_in) begin
              det_out = 1'b1;
              next = S1; 
            end else
              next = S2;
          end
      default: next = S0;
    endcase
  end
  
endmodule
