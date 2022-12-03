`default_nettype none
`timescale 1us/100 ns

`include "8bit_rca.sv"

module _8bit_rca_formal(a, b, c_in, s, c_out);

    input wire [7:0] a, b;
    input wire c_in;
    output wire [7:0] s;
    output wire c_out;

    _8bit_rca rca(.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));

    wire [8:0] y;
    assign y = a + b + c_in;

    always @(a, b, c_in) begin
        assert(s == y[7:0] && c_out == y[8]);
        cover(s == 8'hff && c_out);
    end

endmodule
