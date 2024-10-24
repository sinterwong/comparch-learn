`include "modules/gates/nand.v"

`ifndef _AND_V_
`define _AND_V_

module And(input a,
           b,
           output out);
    Nand g1(a, b, AnandB);
    Nand g2(AnandB, AnandB, out);
endmodule
    `endif
