`default_nettype none
`timescale 1us/100 ns

`include "16bit_rca.sv"

module _16bit_rca_formal(a, b, c_in, s, c_out);

    input wire [15:0] a, b;
    input wire c_in;
    output wire [15:0] s;
    output wire c_out;

    _16bit_rca rca(.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));

    wire [16:0] y;
    assign y = a + b + c_in;

    always @(a, b, c_in) begin
        assert(s == y[15:0] && c_out == y[16]);
        cover(s == 16'hffff && c_out);
    end

endmodule
