`timescale 1ns / 1ps

module tb_Multiplexer_structural;

    // the order in which it will appear with simultation is run
    // Inputs to be defined as registers
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg s0;
    reg s1;
    // Outputs to be defined as wires
    wire d;
    
    
    // Instantiate the Unit Under Test (UUT)
    // Records what's in the wave form by this format: wire/reg(coressponding name to be displayed on wave form)
    Multiplexer_structural uut (
        .s0(s0),
        .s1(s1),
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .d(d)
    );
    
    // Begin the wave forms
    initial begin
        // Initialize Inputs to 0
        s0 = 0;
        s1 = 0;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;    
    
        // Wait 50 ns for global reset to finish
        #50;
        
        // Stimulus - All input combinations followed by some wait time to observe the o/p
        // if (d != 1'b0) means "if the output d does NOT equal a bit value of 0"
        // made s1 first and s2 second for better readability
        
        // for s1s0 = 00
        s1 = 0;
        s0 = 0;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50;
        $display ("TC01");
        if (d != 1'b0) $display ("Result is wrong");

        s1 = 0;
        s0 = 0;
        i0 = 1;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50;
        $display ("TC02");
        if (d != 1'b1) $display ("Result is wrong");

        // for s1s0 = 01
        s1 = 0;        
        s0 = 1;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50
        $display ("TC03");
        if (d != 1'b0) $display ("Result is wrong");
        
        s1 = 0;
        s0 = 1;
        i0 = 0;
        i1 = 1;
        i2 = 0;
        i3 = 0;
        #50
        $display ("TC04");
        if (d != 1'b1) $display ("Result is wrong");
        
        // for s1s0 = 10
        s1 = 1;
        s0 = 0;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50
        $display ("TC05"); 
        if (d != 1'b0) $display ("Result is wrong");
        
        s1 = 1;
        s0 = 0;
        i0 = 0;
        i1 = 0;
        i2 = 1;
        i3 = 0;
        #50
        $display ("TC06"); 
        if (d != 1'b1) $display ("Result is wrong");
        
        // for s1s0 = 11
        s1 = 1;
        s0 = 1;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        #50
        $display ("TC07"); 
        if (d != 1'b0) $display ("Result is wrong");
        
        s1 = 1;
        s0 = 1;
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 1;
        #50
        $display ("TC08"); 
        if (d != 1'b1) $display ("Result is wrong");
        
    end
    
endmodule