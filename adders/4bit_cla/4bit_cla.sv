`ifndef __4BIT_CLA_SVH_
`define __4BIT_CLA_SVH_

`default_nettype none
`timescale 1us/100 ns

module _4bit_cla(a, b, c_in, s, c_out, p, g);

    input wire [3:0] a, b;
    input wire c_in;
    output wire [3:0] s, p, g;
    output wire c_out;

    wire [3:0] c;

    assign p = a ^ b;
    assign g = a & b;

    assign c[0]  = c_in;

    assign c[1]  = g[0] | (p[0] & c[0]);

    assign c[2]  = g[1] | (p[1] & g[0])
                        | (p[1] & p[0] & c[0]);

    assign c[3]  = g[2] | (p[2] & g[1])
                        | (p[2] & p[1] & g[0])
                        | (p[2] & p[1] & p[0] & c[0]);

    assign c_out = g[3] | (p[3] & g[2])
                        | (p[3] & p[2] & g[1])
                        | (p[3] & p[2] & p[1] & g[0])
                        | (p[3] & p[2] & p[1] & p[0] & c[0]);

    assign s = c ^ p;

endmodule

`endif  /* __4BIT_CLA_SVH_ */
