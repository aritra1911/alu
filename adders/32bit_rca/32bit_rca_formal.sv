`default_nettype none
`timescale 1us/100 ns

`include "32bit_rca.sv"

module _32bit_rca_formal(a, b, c_in, s, c_out);

    input wire [31:0] a, b;
    input wire c_in;
    output wire [31:0] s;
    output wire c_out;

    _32bit_rca rca(.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));

    wire [32:0] y;
    assign y = a + b + c_in;

    always @(a, b, c_in) begin
        assert(s == y[31:0] && c_out == y[32]);
        cover(s == 32'hffffffff && c_out);
    end

endmodule
