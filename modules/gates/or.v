`include "modules/gates/nand.v"

`ifndef _OR_V_
`define _OR_V_
module Or(input a,
          b,
          output out);
    Nand g1(a, a, nandA);
    Nand g2(b, b, nandB);
    Nand g3(nandA, nandB, out);
endmodule
    
    `endif
