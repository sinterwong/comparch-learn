`include "modules/adder/full_adder.v"

module full_adder_tb; reg a, b, c; wire carry, sum; FullAdder obj(a,
                                                                  b,
                                                                  c,
                                                                  carry,
                                                                  sum);
    
    initial begin
        a = 0;
        b = 0;
        c = 0;
        #10
        a = 0;
        b = 0;
        c = 1;
        #10
        a = 0;
        b = 1;
        c = 0;
        #10
        a = 0;
        b = 1;
        c = 1;
        #10
        a = 1;
        b = 0;
        c = 0;
        #10
        a = 1;
        b = 0;
        c = 1;
        #10
        a = 1;
        b = 1;
        c = 0;
        #10
        a = 1;
        b = 1;
        c = 1;
    end
    
    
    initial begin
        $monitor("a = %d b = %d c = %d carry = %d sum = %d \n", a, b, c, carry, sum);
    end
endmodule
