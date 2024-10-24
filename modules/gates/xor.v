`include "modules/gates/or.v"
`include "modules/gates/and.v"
`include "modules/gates/nand.v"

`ifndef _XOR_V_
`define _XOR_V_
module Xor(input a,
           b,
           output out);
    Or og(a, b, ogOut);
    Nand nag(a, b, nagOut);
    And ag(ogOut, nagOut, out);
endmodule
    
    `endif
