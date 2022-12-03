`ifndef __4BIT_RCA_SVH_
`define __4BIT_RCA_SVH_

`default_nettype none
`timescale 1us/100 ns

`include "fa.sv"

module _4bit_rca(a, b, c_in, s, c_out);

    input wire [3:0] a, b;
    input wire c_in;
    output wire [3:0] s;
    output wire c_out;

    wire c1, c2, c3;

    fa fa0(.a(a[0]), .b(b[0]), .c_in(c_in), .s(s[0]), .c_out(c1));
    fa fa1(.a(a[1]), .b(b[1]), .c_in(c1),   .s(s[1]), .c_out(c2));
    fa fa2(.a(a[2]), .b(b[2]), .c_in(c2),   .s(s[2]), .c_out(c3));
    fa fa3(.a(a[3]), .b(b[3]), .c_in(c3),   .s(s[3]), .c_out(c_out));

endmodule

`endif  /* __4BIT_RCA_SVH_ */
