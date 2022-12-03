`ifndef __32BIT_RCA_SVH_
`define __32BIT_RCA_SVH_

`default_nettype none
`timescale 1us/100 ns

`include "16bit_rca.sv"

module _32bit_rca(a, b, c_in, s, c_out);

    input wire [31:0] a, b;
    input wire c_in;
    output wire [31:0] s;
    output wire c_out;

    wire c1;

    _16bit_rca rca0(
        .a(a[15:0]),
        .b(b[15:0]),
        .c_in(c_in),
        .s(s[15:0]),
        .c_out(c1)
    );

    _16bit_rca rca1(
        .a(a[31:16]),
        .b(b[31:16]),
        .c_in(c1),
        .s(s[31:16]),
        .c_out(c_out)
    );

endmodule

`endif  /* __32BIT_RCA_SVH_ */
