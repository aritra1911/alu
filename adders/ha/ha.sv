`ifndef __HA_SVH_
`define __HA_SVH_

`default_nettype none
`timescale 1us/100 ns

module ha(a, b, s, c);

    input wire a, b;
    output wire s, c;

    assign s = a ^ b;   /* sum */
    assign c = a & b;   /* carry out */

endmodule

`endif  /* __HA_SVH_ */
