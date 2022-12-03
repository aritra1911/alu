`ifndef __8BIT_RCA_SVH_
`define __8BIT_RCA_SVH_

`default_nettype none
`timescale 1us/100 ns

`include "4bit_rca.sv"

module _8bit_rca(a, b, c_in, s, c_out);

    input wire [7:0] a, b;
    input wire c_in;
    output wire [7:0] s;
    output wire c_out;

    wire c1;

    _4bit_rca _4bit_rca0(
        .a(a[3:0]),
        .b(b[3:0]),
        .c_in(c_in),
        .s(s[3:0]),
        .c_out(c1)
    );

    _4bit_rca _4bit_rca1(
        .a(a[7:4]),
        .b(b[7:4]),
        .c_in(c1),
        .s(s[7:4]),
        .c_out(c_out)
    );

endmodule

`endif  /* __8BIT_RCA_SVH_ */
