`default_nettype none
`timescale 1us/100 ns

`include "ha.sv"

module ha_formal(a, b, s, c);

    input wire a, b;
    output wire s, c;

    ha ha(.a(a), .b(b), .s(s), .c(c));

    wire [1:0] y;
    assign y = a + b;

    always @(a, b) begin
        assert(s == y[0] && c == y[1]);
        cover(!s && c);
    end

endmodule
