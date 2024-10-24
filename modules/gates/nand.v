`ifndef _NAND_V_
`define _NAND_V_

module Nand(input a,
            b,
            output out);
    // nmos 高电接通，低电断开
    nmos n1(o1, 0, b);
    nmos n2(out, o1, a);
    
    // pmos 低电接通，高电断开
    pmos p1(out, 1, a);
    pmos p2(out, 1, b);
endmodule
    
    `endif
