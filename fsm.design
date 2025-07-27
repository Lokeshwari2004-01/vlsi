
module fsm(clk, a, out1, out2);
  input  clk;
  input  a;
  output out1;
  output out2;
  
  reg [2:0] state;

  // State encodings
  parameter [2:0]
    IDLE    = 3'b001,
    STATE_1 = 3'b010,
    FINAL   = 3'b100;
    
  // State machine output
  assign out1 = (state == STATE_1);
  assign out2 = (state == FINAL);
  
  // State transitions
  always @(posedge clk) begin
    case (state)
      IDLE:
        if (a) begin
          state <= STATE_1;
        end else begin
          state <= IDLE;
        end
      STATE_1:
        if (a) begin
          state <= FINAL;
        end else begin
          state <= IDLE;
        end
      FINAL:
        if (a) begin
          state <= FINAL;
        end else begin
          state <= IDLE;
        end
      default:
        state <= IDLE;
    endcase
  end

endmodule