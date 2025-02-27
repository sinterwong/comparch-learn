`include "modules/gates/not.v"

module not_tb; reg a; wire out; Not obj(a,
                                        out);
    
    initial begin
        a = 0;
        #10
        a = 1;
    end
    
    
    initial begin
        $monitor("a = %d out = %d \n", a, out);
    end
endmodule
