`ifndef __16BIT_RCA_SVH_
`define __16BIT_RCA_SVH_

`default_nettype none
`timescale 1us/100 ns

`include "8bit_rca.sv"

module _16bit_rca(a, b, c_in, s, c_out);

    input wire [15:0] a, b;
    input wire c_in;
    output wire [15:0] s;
    output wire c_out;

    wire c1;

    _8bit_rca rca0(
        .a(a[7:0]),
        .b(b[7:0]),
        .c_in(c_in),
        .s(s[7:0]),
        .c_out(c1)
    );

    _8bit_rca rca1(
        .a(a[15:8]),
        .b(b[15:8]),
        .c_in(c1),
        .s(s[15:8]),
        .c_out(c_out)
    );

endmodule

`endif  /* __16BIT_RCA_SVH_ */
