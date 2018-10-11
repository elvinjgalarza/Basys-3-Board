`timescale 1ns / 1ps

module BCD_to_7Segment_LED_Display_Structural(
    input z0,
    input z1,
    input z2,
    input z3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output dp,
    output an0,
    output an1,
    output an2,
    output an3
    );
    
    // Defining wires for NOT signals
    wire z3_not, z2_not, z1_not, z0_not;
    wire SOP_a0, SOP_a1;
    wire SOP_b0, SOP_b1;
    wire SOP_d0, SOP_d1, SOP_d2;
    wire SOP_e0, SOP_e1;
    wire SOP_f0, SOP_f1, SOP_f2;
    wire SOP_g0, SOP_g1;
    wire SOP_an00, SOP_an1;
    
    // Isntantiating NOT gates as per schematic
    not n0(z0_not, z0);
    not n1(z1_not, z1);
    not n2(z2_not, z2);
    not n3(z3_not, z3);
    
    // Instantiating the equations now...
    
    // for a:
    and h0(SOP_a0, z2, z1_not, z0_not);
    and h1(SOP_a1, z3_not, z2_not, z1_not, z0);
    or h3(a, SOP_a0, SOP_a1);
    
    // for b:
    and h4(SOP_b0, z2, z1_not, z0);
    and h5(SOP_b1, z2, z1, z0_not);
    or h6(b, SOP_b0, SOP_b1);
    
    // for c:
    and h7(c, z2_not, z1, z0_not);
    
    // for d:
    and h8(SOP_d0, z2, z1_not, z0_not);
    and h9(SOP_d1, z2, z1, z0);
    and h10(SOP_d2, z3_not, z2_not, z1_not, z0);
    or h11(d, SOP_d0, SOP_d1, SOP_d2);
    
    // for e:
    and h12(SOP_e0, z2, z1_not);
    and h13(SOP_e1, z0); // not need, pero im a visual learner
    or h14(e, SOP_e0, SOP_e1);
    
    // for f:
    and h15(SOP_f0, z3_not, z2_not, z0);
    and h16(SOP_f1, z1, z0);
    and h17(SOP_f2, z2_not, z1);
    or h18(f, SOP_f0, SOP_f1, SOP_f2);
    
    // for g:
    and h19(SOP_g0, z3_not, z2_not, z1_not);
    and h20(SOP_g1, z2, z1, z0);
    or h21(g, SOP_g0, SOP_g1);
    
    // for an0:
    and h22(SOP_an00, z3, z2);
    and h23(SOP_an1, z3, z1);
    or h24(an0, SOP_an00, SOP_an1);
    
    //for an1, an2, an3, dp = 1
    or h25(an1, z0, z0_not);
    or h26(an2, z0, z0_not);
    or h27(an3, z0, z0_not);
    or h28(dp, z0, z0_not);
    
        
endmodule
