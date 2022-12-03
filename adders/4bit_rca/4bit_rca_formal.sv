`default_nettype none
`timescale 1us/100 ns

`include "4bit_rca.sv"

module _4bit_rca_formal(a, b, c_in, s, c_out);

    input wire [3:0] a, b;
    input wire c_in;
    output wire [3:0] s;
    output wire c_out;

    _4bit_rca rca(.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));

    wire [4:0] y;
    assign y = a + b + c_in;

    always @(a, b, c_in) begin
        assert(s == y[3:0] && c_out == y[4]);
        cover(s == 4'hf && c_out);
    end

endmodule
