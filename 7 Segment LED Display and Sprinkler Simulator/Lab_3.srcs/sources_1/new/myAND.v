`timescale 1ns / 1ps


// Step 2 (Design Entry using Verilog) 
module myAND(
    input a,
    input b,
    output out
    );
    
    and a0 (out, a, b);
    
endmodule
