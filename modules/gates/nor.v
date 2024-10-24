`include "modules/gates/or.v"
`include "modules/gates/not.v"

module Nor(input a,
           b,
           output out);
    Or og(a, b, org);
    Not ng(org, out);
endmodule
