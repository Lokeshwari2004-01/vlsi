module fsm_moore_1101(
    input clk, reset, in,
    output reg detected
);
    typedef enum reg [2:0] {S0, S1, S2, S3, S4} state_t;
    state_t state;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S0;
            detected <= 0;
        end else begin
            case(state)
                S0: state <= in ? S1 : S0;
                S1: state <= in ? S2 : S0;
                S2: state <= in ? S2 : S3;
                S3: state <= in ? S4 : S0;
                S4: state <= in ? S2 : S0;
            endcase

            detected <= (state == S4);
        end
    end
endmodule
