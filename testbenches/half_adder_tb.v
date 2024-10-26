`include "modules/adder/half_adder.v"

module half_adder_tb; reg a, b; wire carry, sum; HalfAdder obj(a,
                                                               b,
                                                               carry,
                                                               sum);
    
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
        $monitor("a = %d b = %d carry = %d sum = %d \n", a, b, carry, sum);
    end
endmodule
