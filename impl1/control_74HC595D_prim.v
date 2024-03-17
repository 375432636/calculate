// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Sun Mar 17 19:42:27 2024
//
// Verilog Description of module control_74HC595D
//

module control_74HC595D (s_clk, s_reset, data_in, data_out, latch_out) /* synthesis syn_module_defined=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(1[8:24])
    input s_clk;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    input s_reset;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(3[16:23])
    input [15:0]data_in;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    output data_out;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(5[16:24])
    output latch_out;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(6[16:25])
    
    wire s_clk_c /* synthesis SET_AS_NETWORK=s_clk_c, is_clock=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    
    wire GND_net, VCC_net, s_reset_c, data_in_c_15, data_in_c_14, 
        data_in_c_13, data_in_c_12, data_in_c_11, data_in_c_10, data_in_c_9, 
        data_in_c_8, data_in_c_7, data_in_c_6, data_in_c_5, data_in_c_4, 
        data_in_c_3, data_in_c_2, data_in_c_1, data_in_c_0, data_out_c, 
        latch_out_c;
    wire [15:0]shift_register;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(9[12:26])
    wire [7:0]counter;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(10[12:19])
    
    wire n8, n7, n6, n5, n215, n221, n217, n206, shift_register_15__N_101, 
        n205;
    wire [15:0]shift_register_15__N_1;
    
    wire n193, n218, n219, n203, n273, shift_register_15__N_24, 
        shift_register_15__N_51, shift_register_15__N_23, shift_register_15__N_48, 
        shift_register_15__N_22, shift_register_15__N_45, shift_register_15__N_21, 
        shift_register_15__N_42, shift_register_15__N_20, shift_register_15__N_39, 
        shift_register_15__N_19, shift_register_15__N_36, shift_register_15__N_18, 
        shift_register_15__N_33, shift_register_15__N_17, shift_register_15__N_54, 
        n209, shift_register_15__N_25, shift_register_15__N_57, shift_register_15__N_26, 
        shift_register_15__N_60, shift_register_15__N_27, shift_register_15__N_63, 
        shift_register_15__N_28, shift_register_15__N_66, shift_register_15__N_29, 
        shift_register_15__N_69, shift_register_15__N_30, shift_register_15__N_72, 
        shift_register_15__N_31, shift_register_15__N_75, shift_register_15__N_32, 
        shift_register_15__N_78, n202, n210, n211, n201, n213, n207, 
        n214, n225, n226, n227, n38, n39, n40, n41, n42, n43, 
        n44, n45, n275, s_clk_c_enable_1, n274, n272, n222, n223, 
        n231, n230, n233, n229, n234, n235, n237, n238, n239, 
        n241, n242, n243, n245, n246, n247, n249, n250, n251, 
        n253, n254, n255, n257, n258, n259, n295, n261, n262, 
        n263;
    
    VHI i200 (.Z(VCC_net));
    LUT4 s_reset_I_0_70_2_lut (.A(s_reset_c), .B(data_in_c_14), .Z(shift_register_15__N_18)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_70_2_lut.init = 16'h8888;
    OB latch_out_pad (.I(latch_out_c), .O(latch_out));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(6[16:25])
    CCU2D counter_109_add_4_5 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n273), .COUT(n274), .S0(n42), .S1(n41));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_109_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_109_add_4_5.INJECT1_0 = "NO";
    defparam counter_109_add_4_5.INJECT1_1 = "NO";
    FD1S1D i129 (.D(n295), .CK(shift_register_15__N_17), .CD(shift_register_15__N_33), 
           .Q(n205));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i129.GSR = "DISABLED";
    FD1S3IX counter_109__i3 (.D(n42), .CK(s_clk_c), .CD(shift_register_15__N_101), 
            .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109__i3.GSR = "ENABLED";
    FD1S3IX counter_109__i2 (.D(n43), .CK(s_clk_c), .CD(shift_register_15__N_101), 
            .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109__i2.GSR = "ENABLED";
    FD1S3AX latch_out_67 (.D(shift_register_15__N_101), .CK(s_clk_c), .Q(latch_out_c));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam latch_out_67.GSR = "ENABLED";
    FD1S3IX counter_109__i1 (.D(n44), .CK(s_clk_c), .CD(shift_register_15__N_101), 
            .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109__i1.GSR = "ENABLED";
    FD1S1D i133 (.D(n295), .CK(shift_register_15__N_18), .CD(shift_register_15__N_36), 
           .Q(n209));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i133.GSR = "DISABLED";
    FD1S3IX counter_109__i0 (.D(n45), .CK(s_clk_c), .CD(shift_register_15__N_101), 
            .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109__i0.GSR = "ENABLED";
    LUT4 s_reset_I_0_80_2_lut (.A(s_reset_c), .B(data_in_c_4), .Z(shift_register_15__N_28)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_80_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_95_2_lut (.A(s_reset_c), .B(data_in_c_5), .Z(shift_register_15__N_63)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_95_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_79_2_lut (.A(s_reset_c), .B(data_in_c_5), .Z(shift_register_15__N_27)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_79_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_94_2_lut (.A(s_reset_c), .B(data_in_c_6), .Z(shift_register_15__N_60)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_94_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_78_2_lut (.A(s_reset_c), .B(data_in_c_6), .Z(shift_register_15__N_26)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_78_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_93_2_lut (.A(s_reset_c), .B(data_in_c_7), .Z(shift_register_15__N_57)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_93_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_77_2_lut (.A(s_reset_c), .B(data_in_c_7), .Z(shift_register_15__N_25)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_77_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_92_2_lut (.A(s_reset_c), .B(data_in_c_8), .Z(shift_register_15__N_54)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_92_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_76_2_lut (.A(s_reset_c), .B(data_in_c_8), .Z(shift_register_15__N_24)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_76_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_84_2_lut (.A(s_reset_c), .B(data_in_c_0), .Z(shift_register_15__N_32)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_84_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_91_2_lut (.A(s_reset_c), .B(data_in_c_9), .Z(shift_register_15__N_51)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_91_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_75_2_lut (.A(s_reset_c), .B(data_in_c_9), .Z(shift_register_15__N_23)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_75_2_lut.init = 16'h8888;
    LUT4 i188_3_lut (.A(n263), .B(n262), .C(n261), .Z(shift_register[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i188_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i1_3_lut (.A(data_in_c_0), .B(shift_register[1]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[0])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i1_3_lut.init = 16'hacac;
    LUT4 s_reset_I_0_2_lut (.A(s_reset_c), .B(data_in_c_0), .Z(shift_register_15__N_78)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_2_lut.init = 16'h2222;
    LUT4 i184_3_lut (.A(n259), .B(n258), .C(n257), .Z(shift_register[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i184_3_lut.init = 16'hcaca;
    LUT4 s_reset_I_0_90_2_lut (.A(s_reset_c), .B(data_in_c_10), .Z(shift_register_15__N_48)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_90_2_lut.init = 16'h2222;
    LUT4 data_in_15__I_0_i2_3_lut (.A(data_in_c_1), .B(shift_register[2]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[1])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i2_3_lut.init = 16'hacac;
    FD1S1D i137 (.D(n295), .CK(shift_register_15__N_19), .CD(shift_register_15__N_39), 
           .Q(n213));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i137.GSR = "DISABLED";
    FD1S1D i141 (.D(n295), .CK(shift_register_15__N_20), .CD(shift_register_15__N_42), 
           .Q(n217));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i141.GSR = "DISABLED";
    FD1S1D i145 (.D(n295), .CK(shift_register_15__N_21), .CD(shift_register_15__N_45), 
           .Q(n221));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i145.GSR = "DISABLED";
    FD1S3BX shift_register_i15_130_131_set (.D(shift_register_15__N_1[15]), 
            .CK(s_clk_c), .PD(shift_register_15__N_17), .Q(n206));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i15_130_131_set.GSR = "DISABLED";
    FD1P3AX data_out_68 (.D(shift_register[0]), .SP(s_clk_c_enable_1), .CK(s_clk_c), 
            .Q(data_out_c));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam data_out_68.GSR = "DISABLED";
    CCU2D counter_109_add_4_3 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n272), 
          .COUT(n273), .S0(n44), .S1(n43));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_109_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_109_add_4_3.INJECT1_0 = "NO";
    defparam counter_109_add_4_3.INJECT1_1 = "NO";
    LUT4 i180_3_lut (.A(n255), .B(n254), .C(n253), .Z(shift_register[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i180_3_lut.init = 16'hcaca;
    FD1S1D i149 (.D(n295), .CK(shift_register_15__N_22), .CD(shift_register_15__N_48), 
           .Q(n225));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i149.GSR = "DISABLED";
    FD1S3DX shift_register_i0_126_127_reset (.D(shift_register_15__N_1[0]), 
            .CK(s_clk_c), .CD(shift_register_15__N_78), .Q(n203));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i0_126_127_reset.GSR = "DISABLED";
    LUT4 data_in_15__I_0_i3_3_lut (.A(data_in_c_2), .B(shift_register[3]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[2])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i3_3_lut.init = 16'hacac;
    LUT4 s_reset_I_0_74_2_lut (.A(s_reset_c), .B(data_in_c_10), .Z(shift_register_15__N_22)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_74_2_lut.init = 16'h8888;
    FD1S1D i153 (.D(n295), .CK(shift_register_15__N_23), .CD(shift_register_15__N_51), 
           .Q(n229));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i153.GSR = "DISABLED";
    FD1S3BX shift_register_i0_126_127_set (.D(shift_register_15__N_1[0]), 
            .CK(s_clk_c), .PD(shift_register_15__N_32), .Q(n202));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i0_126_127_set.GSR = "DISABLED";
    FD1S1D i157 (.D(n295), .CK(shift_register_15__N_24), .CD(shift_register_15__N_54), 
           .Q(n233));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i157.GSR = "DISABLED";
    OB data_out_pad (.I(data_out_c), .O(data_out));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(5[16:24])
    FD1S1D i161 (.D(n295), .CK(shift_register_15__N_25), .CD(shift_register_15__N_57), 
           .Q(n237));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i161.GSR = "DISABLED";
    FD1S1D i165 (.D(n295), .CK(shift_register_15__N_26), .CD(shift_register_15__N_60), 
           .Q(n241));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i165.GSR = "DISABLED";
    FD1S1D i169 (.D(n295), .CK(shift_register_15__N_27), .CD(shift_register_15__N_63), 
           .Q(n245));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i169.GSR = "DISABLED";
    FD1S1D i173 (.D(n295), .CK(shift_register_15__N_28), .CD(shift_register_15__N_66), 
           .Q(n249));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i173.GSR = "DISABLED";
    FD1S1D i177 (.D(n295), .CK(shift_register_15__N_29), .CD(shift_register_15__N_69), 
           .Q(n253));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i177.GSR = "DISABLED";
    FD1S1D i181 (.D(n295), .CK(shift_register_15__N_30), .CD(shift_register_15__N_72), 
           .Q(n257));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i181.GSR = "DISABLED";
    FD1S1D i185 (.D(n295), .CK(shift_register_15__N_31), .CD(shift_register_15__N_75), 
           .Q(n261));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i185.GSR = "DISABLED";
    FD1S3IX counter_109__i4 (.D(n41), .CK(s_clk_c), .CD(shift_register_15__N_101), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109__i4.GSR = "ENABLED";
    GSR GSR_INST (.GSR(n193));
    CCU2D counter_109_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n8), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n272), .S1(n45));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109_add_4_1.INIT0 = 16'hF000;
    defparam counter_109_add_4_1.INIT1 = 16'h0555;
    defparam counter_109_add_4_1.INJECT1_0 = "NO";
    defparam counter_109_add_4_1.INJECT1_1 = "NO";
    LUT4 i176_3_lut (.A(n251), .B(n250), .C(n249), .Z(shift_register[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i176_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i4_3_lut (.A(data_in_c_3), .B(shift_register[4]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[3])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i4_3_lut.init = 16'hacac;
    LUT4 i172_3_lut (.A(n247), .B(n246), .C(n245), .Z(shift_register[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i172_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i5_3_lut (.A(data_in_c_4), .B(shift_register[5]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[4])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i5_3_lut.init = 16'hacac;
    LUT4 i168_3_lut (.A(n243), .B(n242), .C(n241), .Z(shift_register[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i168_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i6_3_lut (.A(data_in_c_5), .B(shift_register[6]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[5])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i6_3_lut.init = 16'hacac;
    LUT4 i164_3_lut (.A(n239), .B(n238), .C(n237), .Z(shift_register[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i164_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i7_3_lut (.A(data_in_c_6), .B(shift_register[7]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[6])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i7_3_lut.init = 16'hacac;
    LUT4 i160_3_lut (.A(n235), .B(n234), .C(n233), .Z(shift_register[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i160_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i8_3_lut (.A(data_in_c_7), .B(shift_register[8]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[7])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i8_3_lut.init = 16'hacac;
    LUT4 i156_3_lut (.A(n231), .B(n230), .C(n229), .Z(shift_register[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i156_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i9_3_lut (.A(data_in_c_8), .B(shift_register[9]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[8])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i9_3_lut.init = 16'hacac;
    LUT4 i152_3_lut (.A(n227), .B(n226), .C(n225), .Z(shift_register[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i152_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i10_3_lut (.A(data_in_c_9), .B(shift_register[10]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[9])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i10_3_lut.init = 16'hacac;
    IB s_clk_pad (.I(s_clk), .O(s_clk_c));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    IB s_reset_pad (.I(s_reset), .O(s_reset_c));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(3[16:23])
    IB data_in_pad_15 (.I(data_in[15]), .O(data_in_c_15));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_14 (.I(data_in[14]), .O(data_in_c_14));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_13 (.I(data_in[13]), .O(data_in_c_13));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_12 (.I(data_in[12]), .O(data_in_c_12));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_11 (.I(data_in[11]), .O(data_in_c_11));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_10 (.I(data_in[10]), .O(data_in_c_10));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_9 (.I(data_in[9]), .O(data_in_c_9));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_8 (.I(data_in[8]), .O(data_in_c_8));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_7 (.I(data_in[7]), .O(data_in_c_7));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_6 (.I(data_in[6]), .O(data_in_c_6));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_5 (.I(data_in[5]), .O(data_in_c_5));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_4 (.I(data_in[4]), .O(data_in_c_4));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_3 (.I(data_in[3]), .O(data_in_c_3));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_2 (.I(data_in[2]), .O(data_in_c_2));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_1 (.I(data_in[1]), .O(data_in_c_1));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    IB data_in_pad_0 (.I(data_in[0]), .O(data_in_c_0));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[23:30])
    FD1S3IX counter_109__i5 (.D(n40), .CK(s_clk_c), .CD(shift_register_15__N_101), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109__i5.GSR = "ENABLED";
    FD1S3IX counter_109__i6 (.D(n39), .CK(s_clk_c), .CD(shift_register_15__N_101), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109__i6.GSR = "ENABLED";
    FD1S3IX counter_109__i7 (.D(n38), .CK(s_clk_c), .CD(shift_register_15__N_101), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109__i7.GSR = "ENABLED";
    FD1S1D i125 (.D(n295), .CK(shift_register_15__N_32), .CD(shift_register_15__N_78), 
           .Q(n201));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i125.GSR = "DISABLED";
    LUT4 i148_3_lut (.A(n223), .B(n222), .C(n221), .Z(shift_register[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i148_3_lut.init = 16'hcaca;
    LUT4 i128_3_lut (.A(n203), .B(n202), .C(n201), .Z(shift_register[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i128_3_lut.init = 16'hcaca;
    CCU2D counter_109_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n275), .S0(n38));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_109_add_4_9.INIT1 = 16'h0000;
    defparam counter_109_add_4_9.INJECT1_0 = "NO";
    defparam counter_109_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_109_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n274), .COUT(n275), .S0(n40), .S1(n39));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(23[24:35])
    defparam counter_109_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_109_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_109_add_4_7.INJECT1_0 = "NO";
    defparam counter_109_add_4_7.INJECT1_1 = "NO";
    LUT4 i199_2_lut (.A(shift_register_15__N_101), .B(s_reset_c), .Z(s_clk_c_enable_1)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i199_2_lut.init = 16'h1111;
    LUT4 data_in_15__I_0_i11_3_lut (.A(data_in_c_10), .B(shift_register[11]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[10])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i11_3_lut.init = 16'hacac;
    LUT4 i189_2_lut (.A(data_in_c_15), .B(shift_register_15__N_101), .Z(shift_register_15__N_1[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam i189_2_lut.init = 16'h8888;
    FD1S3BX shift_register_i14_134_135_set (.D(shift_register_15__N_1[14]), 
            .CK(s_clk_c), .PD(shift_register_15__N_18), .Q(n210));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i14_134_135_set.GSR = "DISABLED";
    LUT4 s_reset_I_0_89_2_lut (.A(s_reset_c), .B(data_in_c_11), .Z(shift_register_15__N_45)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_89_2_lut.init = 16'h2222;
    LUT4 i144_3_lut (.A(n219), .B(n218), .C(n217), .Z(shift_register[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i144_3_lut.init = 16'hcaca;
    LUT4 data_in_15__I_0_i12_3_lut (.A(data_in_c_11), .B(shift_register[12]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[11])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i12_3_lut.init = 16'hacac;
    FD1S3DX shift_register_i14_134_135_reset (.D(shift_register_15__N_1[14]), 
            .CK(s_clk_c), .CD(shift_register_15__N_36), .Q(n211));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i14_134_135_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i13_138_139_set (.D(shift_register_15__N_1[13]), 
            .CK(s_clk_c), .PD(shift_register_15__N_19), .Q(n214));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i13_138_139_set.GSR = "DISABLED";
    LUT4 i140_3_lut (.A(n215), .B(n214), .C(n213), .Z(shift_register[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i140_3_lut.init = 16'hcaca;
    FD1S3DX shift_register_i13_138_139_reset (.D(shift_register_15__N_1[13]), 
            .CK(s_clk_c), .CD(shift_register_15__N_39), .Q(n215));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i13_138_139_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i12_142_143_set (.D(shift_register_15__N_1[12]), 
            .CK(s_clk_c), .PD(shift_register_15__N_20), .Q(n218));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i12_142_143_set.GSR = "DISABLED";
    LUT4 data_in_15__I_0_i13_3_lut (.A(data_in_c_12), .B(shift_register[13]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[12])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i13_3_lut.init = 16'hacac;
    FD1S3DX shift_register_i12_142_143_reset (.D(shift_register_15__N_1[12]), 
            .CK(s_clk_c), .CD(shift_register_15__N_42), .Q(n219));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i12_142_143_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i11_146_147_set (.D(shift_register_15__N_1[11]), 
            .CK(s_clk_c), .PD(shift_register_15__N_21), .Q(n222));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i11_146_147_set.GSR = "DISABLED";
    LUT4 i136_3_lut (.A(n211), .B(n210), .C(n209), .Z(shift_register[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i136_3_lut.init = 16'hcaca;
    FD1S3DX shift_register_i11_146_147_reset (.D(shift_register_15__N_1[11]), 
            .CK(s_clk_c), .CD(shift_register_15__N_45), .Q(n223));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i11_146_147_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i10_150_151_set (.D(shift_register_15__N_1[10]), 
            .CK(s_clk_c), .PD(shift_register_15__N_22), .Q(n226));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i10_150_151_set.GSR = "DISABLED";
    LUT4 data_in_15__I_0_i14_3_lut (.A(data_in_c_13), .B(shift_register[14]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[13])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i14_3_lut.init = 16'hacac;
    FD1S3DX shift_register_i10_150_151_reset (.D(shift_register_15__N_1[10]), 
            .CK(s_clk_c), .CD(shift_register_15__N_48), .Q(n227));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i10_150_151_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i9_154_155_set (.D(shift_register_15__N_1[9]), 
            .CK(s_clk_c), .PD(shift_register_15__N_23), .Q(n230));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i9_154_155_set.GSR = "DISABLED";
    LUT4 i132_3_lut (.A(n207), .B(n206), .C(n205), .Z(shift_register[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam i132_3_lut.init = 16'hcaca;
    FD1S3DX shift_register_i9_154_155_reset (.D(shift_register_15__N_1[9]), 
            .CK(s_clk_c), .CD(shift_register_15__N_51), .Q(n231));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i9_154_155_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i8_158_159_set (.D(shift_register_15__N_1[8]), 
            .CK(s_clk_c), .PD(shift_register_15__N_24), .Q(n234));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i8_158_159_set.GSR = "DISABLED";
    LUT4 data_in_15__I_0_i15_3_lut (.A(data_in_c_14), .B(shift_register[15]), 
         .C(shift_register_15__N_101), .Z(shift_register_15__N_1[14])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(25[14] 30[12])
    defparam data_in_15__I_0_i15_3_lut.init = 16'hacac;
    FD1S3DX shift_register_i8_158_159_reset (.D(shift_register_15__N_1[8]), 
            .CK(s_clk_c), .CD(shift_register_15__N_54), .Q(n235));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i8_158_159_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i7_162_163_set (.D(shift_register_15__N_1[7]), 
            .CK(s_clk_c), .PD(shift_register_15__N_25), .Q(n238));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i7_162_163_set.GSR = "DISABLED";
    LUT4 i117_1_lut (.A(s_reset_c), .Z(n193)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(3[16:23])
    defparam i117_1_lut.init = 16'h5555;
    FD1S3DX shift_register_i7_162_163_reset (.D(shift_register_15__N_1[7]), 
            .CK(s_clk_c), .CD(shift_register_15__N_57), .Q(n239));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i7_162_163_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i6_166_167_set (.D(shift_register_15__N_1[6]), 
            .CK(s_clk_c), .PD(shift_register_15__N_26), .Q(n242));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i6_166_167_set.GSR = "DISABLED";
    LUT4 s_reset_I_0_99_2_lut (.A(s_reset_c), .B(data_in_c_1), .Z(shift_register_15__N_75)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_99_2_lut.init = 16'h2222;
    FD1S3DX shift_register_i6_166_167_reset (.D(shift_register_15__N_1[6]), 
            .CK(s_clk_c), .CD(shift_register_15__N_60), .Q(n243));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i6_166_167_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i5_170_171_set (.D(shift_register_15__N_1[5]), 
            .CK(s_clk_c), .PD(shift_register_15__N_27), .Q(n246));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i5_170_171_set.GSR = "DISABLED";
    LUT4 s_reset_I_0_83_2_lut (.A(s_reset_c), .B(data_in_c_1), .Z(shift_register_15__N_31)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_83_2_lut.init = 16'h8888;
    FD1S3DX shift_register_i5_170_171_reset (.D(shift_register_15__N_1[5]), 
            .CK(s_clk_c), .CD(shift_register_15__N_63), .Q(n247));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i5_170_171_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i4_174_175_set (.D(shift_register_15__N_1[4]), 
            .CK(s_clk_c), .PD(shift_register_15__N_28), .Q(n250));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i4_174_175_set.GSR = "DISABLED";
    LUT4 s_reset_I_0_98_2_lut (.A(s_reset_c), .B(data_in_c_2), .Z(shift_register_15__N_72)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_98_2_lut.init = 16'h2222;
    FD1S3DX shift_register_i4_174_175_reset (.D(shift_register_15__N_1[4]), 
            .CK(s_clk_c), .CD(shift_register_15__N_66), .Q(n251));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i4_174_175_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i3_178_179_set (.D(shift_register_15__N_1[3]), 
            .CK(s_clk_c), .PD(shift_register_15__N_29), .Q(n254));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i3_178_179_set.GSR = "DISABLED";
    LUT4 s_reset_I_0_82_2_lut (.A(s_reset_c), .B(data_in_c_2), .Z(shift_register_15__N_30)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_82_2_lut.init = 16'h8888;
    FD1S3DX shift_register_i3_178_179_reset (.D(shift_register_15__N_1[3]), 
            .CK(s_clk_c), .CD(shift_register_15__N_69), .Q(n255));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i3_178_179_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i2_182_183_set (.D(shift_register_15__N_1[2]), 
            .CK(s_clk_c), .PD(shift_register_15__N_30), .Q(n258));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i2_182_183_set.GSR = "DISABLED";
    LUT4 s_reset_I_0_97_2_lut (.A(s_reset_c), .B(data_in_c_3), .Z(shift_register_15__N_69)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_97_2_lut.init = 16'h2222;
    FD1S3DX shift_register_i2_182_183_reset (.D(shift_register_15__N_1[2]), 
            .CK(s_clk_c), .CD(shift_register_15__N_72), .Q(n259));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i2_182_183_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i1_186_187_set (.D(shift_register_15__N_1[1]), 
            .CK(s_clk_c), .PD(shift_register_15__N_31), .Q(n262));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i1_186_187_set.GSR = "DISABLED";
    LUT4 s_reset_I_0_81_2_lut (.A(s_reset_c), .B(data_in_c_3), .Z(shift_register_15__N_29)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_81_2_lut.init = 16'h8888;
    FD1S3DX shift_register_i1_186_187_reset (.D(shift_register_15__N_1[1]), 
            .CK(s_clk_c), .CD(shift_register_15__N_75), .Q(n263));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i1_186_187_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_96_2_lut (.A(s_reset_c), .B(data_in_c_4), .Z(shift_register_15__N_66)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_96_2_lut.init = 16'h2222;
    FD1S3DX shift_register_i15_130_131_reset (.D(shift_register_15__N_1[15]), 
            .CK(s_clk_c), .CD(shift_register_15__N_33), .Q(n207));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam shift_register_i15_130_131_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_73_2_lut (.A(s_reset_c), .B(data_in_c_11), .Z(shift_register_15__N_21)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_73_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_88_2_lut (.A(s_reset_c), .B(data_in_c_12), .Z(shift_register_15__N_42)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_88_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_72_2_lut (.A(s_reset_c), .B(data_in_c_12), .Z(shift_register_15__N_20)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_72_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_87_2_lut (.A(s_reset_c), .B(data_in_c_13), .Z(shift_register_15__N_39)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_87_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_71_2_lut (.A(s_reset_c), .B(data_in_c_13), .Z(shift_register_15__N_19)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_71_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_86_2_lut (.A(s_reset_c), .B(data_in_c_14), .Z(shift_register_15__N_36)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_86_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_69_2_lut (.A(s_reset_c), .B(data_in_c_15), .Z(shift_register_15__N_17)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_69_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_85_2_lut (.A(s_reset_c), .B(data_in_c_15), .Z(shift_register_15__N_33)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(17[14] 31[8])
    defparam s_reset_I_0_85_2_lut.init = 16'h2222;
    LUT4 i3_4_lut (.A(counter[4]), .B(counter[5]), .C(counter[6]), .D(counter[7]), 
         .Z(shift_register_15__N_101)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n295)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

