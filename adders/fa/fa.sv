`ifndef __FA_SVH_
`define __FA_SVH_

`default_nettype none
`timescale 1us/100 ns

`include "ha.sv"

module fa(a, b, c_in, s, c_out);

    input wire a, b, c_in;
    output wire s, c_out;

    wire s0, c0, c1;

    ha ha0(.a(a),  .b(b),    .s(s0), .c(c0));
    ha ha1(.a(s0), .b(c_in), .s(s),  .c(c1));

    assign c_out = c0 | c1;

endmodule

`endif  /* __FA_SVH_ */
