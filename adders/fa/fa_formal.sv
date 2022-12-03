`default_nettype none
`timescale 1us/100 ns

`include "fa.sv"

module fa_formal(a, b, c_in, s, c_out);

    input wire a, b, c_in;
    output wire s, c_out;

    fa fa(.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));

    wire [1:0] y;
    assign y = a + b + c_in;

    always @(a, b, c_in) begin
        assert(s == y[0] && c_out == y[1]);
        cover(s && c_out);
    end

endmodule
