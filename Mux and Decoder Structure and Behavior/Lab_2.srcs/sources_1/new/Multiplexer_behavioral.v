`timescale 1ns / 1ps

module Multiplexer_behavioral(
    input s1,
    input s0,
    input i0,
    input i1,
    input i2,
    input i3,
    output reg d
    );
    
    always @(s1,s0,i0,i1,i2,i3)
    begin
    
    // Initialize output d to 0
    d = 1'b0;
    
    //  can also use if, but used cases here (faster syntax)
    case({s1,s0})
        2'b00 : d = i0;
        2'b01 : d = i1;
        2'b10 : d = i2;
        2'b11 : d = i3;
        default : begin
                  d = 1'b0;
                  end
        endcase
    end
    
endmodule
