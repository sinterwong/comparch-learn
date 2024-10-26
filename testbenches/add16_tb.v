`include "modules/adder/add16.v"

`timescale 1ns / 1ps

module Add16_tb; reg [15:0] a; reg [15:0] b; wire [15:0] out; Add16 uut (.a(a), .b(b), .out(out));

initial begin
    // Initialize Inputs
    a = 0;
    b = 0;
    
    // Test case 1: 0 + 0
    #10;
    $display("Test 1: a = %x, b = %x, out = %x", a, b, out);
    $display("Test 1: a = %d, b = %d, out = %d\n", a, b, out);
    
    // Test case 2: Max + 1
    a = 16'hFFFF;
    b = 1;
    #10;
    $display("Test 2: a = %x, b = %x, out = %x", a, b, out);
    $display("Test 2: a = %d, b = %d, out = %d\n", a, b, out);
    
    // Test case 3: 1 + Max
    a = 1;
    b = 16'hFFFF;
    #10;
    $display("Test 3: a = %x, b = %x, out = %x", a, b, out);
    $display("Test 3: a = %d, b = %d, out = %d\n", a, b, out);
    
    
    // Test case 4: Random numbers
    a = $random;
    b = $random;
    #10;
    $display("Test 4: a = %x, b = %x, out = %x", a, b, out);
    $display("Test 4: a = %d, b = %d, out = %d\n", a, b, out);
    
    // Test case 5: Random numbers
    a = $random;
    b = $random;
    #10;
    $display("Test 5: a = %x, b = %x, out = %x", a, b, out);
    $display("Test 5: a = %d, b = %d, out = %d\n", a, b, out);
    
    
    // Test case 6: Specific overflow case
    a = 16'h8000;
    b = 16'h8000;
    #10;
    $display("Test 6: a = %x, b = %x, out = %x", a, b, out);
    $display("Test 6: a = %d, b = %d, out = %d\n", a, b, out);
    
    
    
    $finish;
end

endmodule
