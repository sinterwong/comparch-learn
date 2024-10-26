`include "modules/gates/and.v"
`include "modules/gates/xor.v"

`ifndef _HALF_ADDER_V_
`define _HALF_ADDER_V_


// 半加器不考虑上一位进位的结果，所以输入参数只有两个
module HalfAdder(input a,
                 b,
                 output carry,
                 sum);
    And c(a, b, carry);
    Xor s(a, b, sum);
endmodule
    `endif
