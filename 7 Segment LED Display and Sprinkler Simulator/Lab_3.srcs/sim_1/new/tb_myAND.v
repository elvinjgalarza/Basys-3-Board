`timescale 1ns / 1ps


// Step 2 (Design Entry using Verilog) 
module tb_myAND;

    // Inputs to be defined as registers
    reg a;
    reg b;
    
    // Outputs to be defined as wires
    wire out;
    
    myAND and_gate0(
        .a(a),
        .b(b),
        .out(out)
    );
    
    initial 
        begin
        
            // Stimulus - All input combinations followed by some wait time to observe o/p
            
            // ab = 00
            a = 1'b0;
            b = 1'b0;
            #50;
            
            // ab =01
            a = 1'b0;
            b = 1'b1;
            #50;
            
            // ab = 10
            a = 1'b1;
            b = 1'b0;
            #50;
            
            // ab = 11
            a = 1'b1;
            b = 1'b1;
        
        end
endmodule
