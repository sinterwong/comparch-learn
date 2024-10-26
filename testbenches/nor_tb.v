`include "modules/gates/nor.v"

module nor_tb; reg a, b; wire out; Nor obj(a,
                                           b,
                                           out);
    
    initial begin
        a = 0;
        b = 0;
        #10
        a = 0;
        b = 1;
        #10
        a = 1;
        b = 0;
        #10
        a = 1;
        b = 1;
    end
    
    
    initial begin
        $monitor("a = %d b = %d out = %d \n", a, b, out);
    end
endmodule
