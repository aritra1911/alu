`include "ha.sv"

module tb();
    reg a, b;
    wire s, c;

    ha ha0(a, b, s, c);

    initial begin
        $dumpfile("ha.lxt");
        $dumpvars(1, tb);

        #00 a = 0; b = 0;
        #01 a = 0; b = 1;
        #01 a = 1; b = 0;
        #01 a = 1; b = 1;
        #01 $finish;
    end
endmodule
