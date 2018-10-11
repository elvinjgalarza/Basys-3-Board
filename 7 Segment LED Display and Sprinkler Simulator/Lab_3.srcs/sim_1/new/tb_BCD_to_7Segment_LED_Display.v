`timescale 1ns / 1ps

module tb_BCD_to_7Segment_LED_Display;
    // Inputs to be defined as registers
    reg z0,z1,z2,z3;
    // Outputs to be defined as wires
    wire a,b,c,d,e,f,g,dp,an0,an1,an2,an3;
    
    
    // Instantiate the Unit Under Test (UUT)
    // Records what's in the wave form by this format: wire/reg(coressponding name to be displayed on wave form) 
    BCD_to_7Segment_LED_Display_Structural uut (
        .z0(z0),
        .z1(z1),
        .z2(z2),
        .z3(z3),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .dp(dp),
        .an0(an0),
        .an1(an1),
        .an2(an2),
        .an3(an3)
        );
        
        // Begin the waveforms
        
        initial begin
        
        // Initialize inputs to 0
        
        $display("TC00");
        z3 = 0;
        z2 = 0;
        z1 = 0;
        z0 = 0;
        #50;
        if({a,b,c,d,e,f,g} != 7'b0000001) $display("Result is wrong");
        
        
        $display("TC01");
        z3 = 0;
        z2 = 0;
        z1 = 0;
        z0 = 1;
        #50;
        if({a,b,c,d,e,f,g} != 7'b1001111) $display("Result is wrong");

        
        $display("TC02");
        z3 = 0;
        z2 = 0;
        z1 = 1;
        z0 = 0;
        #50;
        if({a,b,c,d,e,f,g} != 7'b0010010) $display("Result is wrong");
        
        
        $display("TC03");
        z3 = 0;
        z2 = 0;
        z1 = 1;
        z0 = 1;
        #50;
        if({a,b,c,d,e,f,g} != 7'b0000110) $display("Result is wrong");
        
        $display("TC04");
        z3 = 0;
        z2 = 1;
        z1 = 0;
        z0 = 0;
        #50;
        if({a,b,c,d,e,f,g} != 7'b1001100) $display("Result is wrong");
        
        
        $display("TC05");
        z3 = 0;
        z2 = 1;
        z1 = 0;
        z0 = 1;
        #50;
        if({a,b,c,d,e,f,g} != 7'b0100100) $display("Result is wrong");
        
        
        // ask about how 6 should be displayed
        $display("TC06");
        z3 = 0;
        z2 = 1;
        z1 = 1;
        z0 = 0;
        #50;
        if({a,b,c,d,e,f,g} != 7'b0100000) $display("Result is wrong");
        
       
        $display("TC07");
        z3 = 0;
        z2 = 1;
        z1 = 1;
        z0 = 1;
        #50;
        if({a,b,c,d,e,f,g} != 7'b0001111) $display("Result is wrong");
        
        $display("TC08");
        z3 = 1;
        z2 = 0;
        z1 = 0;
        z0 = 0;
        #50;
        if({a,b,c,d,e,f,g} != 7'b0000000) $display("Result is wrong");
        
        
        // ask how 9 should be displayed
        $display("TC09");
        z3 = 1;
        z2 = 0;
        z1 = 0;
        z0 = 1;
        #50;
        if({a,b,c,d,e,f,g} != 7'b0000100) $display("Result is wrong");
        
        
        $display("TC10");
        z3 = 1;
        z2 = 0;
        z1 = 1;
        z0 = 0;
        #50;
        if({a,b,c,d,e,f,g} != 7'b1111111) $display("Result is wrong");
        
        
        $display("TC11");
        z3 = 1;
        z2 = 0;
        z1 = 1;
        z0 = 1;
        #50;
        if({a,b,c,d,e,f,g} != 7'b1111111) $display("Result is wrong");
        
        
        $display("TC12");
        z3 = 1;
        z2 = 1;
        z1 = 0;
        z0 = 0;
        #50;
        if({a,b,c,d,e,f,g} != 7'b1111111) $display("Result is wrong");
        
        
        $display("TC13");
        z3 = 1;
        z2 = 1;
        z1 = 0;
        z0 = 1;
        #50;
        if({a,b,c,d,e,f,g} != 7'b1111111) $display("Result is wrong");
        
        
        $display("TC14");
        z3 = 1;
        z2 = 1;
        z1 = 1;
        z0 = 0;
        #50;
        if({a,b,c,d,e,f,g} != 7'b1111111) $display("Result is wrong");
        
        $display("TC15");
        z3 = 1;
        z2 = 1;
        z1 = 1;
        z0 = 1;
        #50;
        if({a,b,c,d,e,f,g} != 7'b1111111) $display("Result is wrong");
        
        
        end

endmodule
