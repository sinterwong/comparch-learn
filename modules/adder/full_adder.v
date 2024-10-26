`include "modules/gates/or.v"
`include "modules/adder/half_adder.v"

`ifndef _FULL_ADDER_V_
`define _FULL_ADDER_V_


// 全加器考虑上一位进位的结果，所以输入参数有三个
module FullAdder(input a,
                 b,
                 c,
                 output carry,
                 sum);
    HalfAdder first(a, b, fc, AB);
    HalfAdder last(AB, c, sc, sum);
    Or finalC(fc, sc, carry);
endmodule
    `endif
