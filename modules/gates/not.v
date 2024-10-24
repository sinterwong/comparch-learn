`include "modules/gates/nand.v"

`ifndef _NOT_V_
`define _NOT_V_
module Not(input a,
           output out);
    Nand g1(a, a, out);
endmodule
    
    `endif
