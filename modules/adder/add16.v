`include "modules/adder/full_adder.v"

`ifndef _ADDER_16_V_
`define _ADDER_16_V_


// 16位加法器
module Add16(input[15:0] a,
             b,
             output[15:0] out);
wire[15:0] c;
// FullAdder g01(a[0], b[0], 1'b0, c[0], out[0]);
// FullAdder g02(a[1], b[1], c[0], c[1], out[1]);
// FullAdder g03(a[2], b[2], c[1], c[2], out[2]);
// FullAdder g04(a[3], b[3], c[2], c[3], out[3]);
// FullAdder g05(a[4], b[4], c[3], c[4], out[4]);
// FullAdder g06(a[5], b[5], c[4], c[5], out[5]);
// FullAdder g07(a[6], b[6], c[5], c[6], out[6]);
// FullAdder g08(a[7], b[7], c[6], c[7], out[7]);
// FullAdder g09(a[8], b[8], c[7], c[8], out[8]);
// FullAdder g10(a[9], b[9], c[8], c[9], out[9]);
// FullAdder g11(a[10], b[10], c[9], c[10], out[10]);
// FullAdder g12(a[11], b[11], c[10], c[11], out[11]);
// FullAdder g13(a[12], b[12], c[11], c[12], out[12]);
// FullAdder g14(a[13], b[13], c[12], c[13], out[13]);
// FullAdder g15(a[14], b[14], c[13], c[14], out[14]);
// FullAdder g16(a[15], b[15], c[14], c[15], out[15]);

genvar i;
generate
for (i = 0; i<16; i = i+1) begin: adder_gen
FullAdder g(a[i], b[i], (i == 0) ? 1'b0 : c[i-1], c[i], out[i]);
end
endgenerate

endmodule
`endif
