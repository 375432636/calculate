// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Sun Mar 17 23:27:02 2024
//
// Verilog Description of module top
//

module top (s_clk, s_reset, data_out, latch_out, data_clock) /* synthesis syn_module_defined=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(1[8:11])
    input s_clk;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    input s_reset;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(3[16:23])
    output data_out;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[12:20])
    output latch_out;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(5[12:21])
    output data_clock;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(6[12:22])
    
    wire s_clk_c /* synthesis SET_AS_NETWORK=s_clk_c, is_clock=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    
    wire GND_net, VCC_net, s_reset_c, data_out_c, latch_out_c, data_clock_c_1, 
        n43;
    
    VHI i92 (.Z(VCC_net));
    OB latch_out_pad (.I(latch_out_c), .O(latch_out));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(5[12:21])
    VLO i1 (.Z(GND_net));
    OB data_clock_pad (.I(data_clock_c_1), .O(data_clock));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(6[12:22])
    TSALL TSALL_INST (.TSALL(GND_net));
    OB data_out_pad (.I(data_out_c), .O(data_out));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[12:20])
    control_74HC595D dut (.GND_net(GND_net), .s_clk_c(s_clk_c), .latch_out_c(latch_out_c), 
            .data_clock_c_1(data_clock_c_1), .data_out_c(data_out_c), .s_reset_c(s_reset_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(9[22] 16[6])
    LUT4 i37_1_lut (.A(s_reset_c), .Z(n43)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(3[16:23])
    defparam i37_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB s_clk_pad (.I(s_clk), .O(s_clk_c));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    IB s_reset_pad (.I(s_reset), .O(s_reset_c));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(3[16:23])
    GSR GSR_INST (.GSR(n43));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module control_74HC595D
//

module control_74HC595D (GND_net, s_clk_c, latch_out_c, data_clock_c_1, 
            data_out_c, s_reset_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input s_clk_c;
    output latch_out_c;
    output data_clock_c_1;
    output data_out_c;
    input s_reset_c;
    
    wire [1:0]n9 /* synthesis SET_AS_NETWORK=\dut/can_write, is_clock=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(12[12:21])
    wire s_clk_c /* synthesis SET_AS_NETWORK=s_clk_c, is_clock=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    wire [1:0]stat;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(13[12:16])
    wire [1:0]n2;
    wire [15:0]shift_register;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(10[12:26])
    
    wire shift_register_15__N_105, n89;
    wire [7:0]n65;
    wire [7:0]counter;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(11[12:19])
    wire [7:0]n37;
    
    wire n90, n24, n1, can_write_enable_1, n88, s_clk_c_enable_1, 
        n91;
    
    LUT4 i77_2_lut (.A(stat[1]), .B(stat[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(35[25:33])
    defparam i77_2_lut.init = 16'h6666;
    FD1S3JX shift_register_i10 (.D(shift_register[11]), .CK(n9[0]), .PD(shift_register_15__N_105), 
            .Q(shift_register[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i10.GSR = "ENABLED";
    FD1S3JX shift_register_i9 (.D(shift_register[10]), .CK(n9[0]), .PD(shift_register_15__N_105), 
            .Q(shift_register[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i9.GSR = "ENABLED";
    FD1S3IX shift_register_i8 (.D(shift_register[9]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(shift_register[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i8.GSR = "ENABLED";
    CCU2D counter_20_add_4_5 (.A0(n65[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n89), .COUT(n90), .S0(n37[3]), .S1(n37[4]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_20_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_20_add_4_5.INJECT1_0 = "NO";
    defparam counter_20_add_4_5.INJECT1_1 = "NO";
    FD1S3IX shift_register_i7 (.D(shift_register[8]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(shift_register[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i7.GSR = "ENABLED";
    FD1S3JX shift_register_i6 (.D(shift_register[7]), .CK(n9[0]), .PD(shift_register_15__N_105), 
            .Q(shift_register[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i6.GSR = "ENABLED";
    FD1S3JX shift_register_i5 (.D(shift_register[6]), .CK(n9[0]), .PD(shift_register_15__N_105), 
            .Q(shift_register[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i5.GSR = "ENABLED";
    FD1S3IX stat_21__i0 (.D(n1), .CK(s_clk_c), .CD(n24), .Q(stat[0]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(35[25:33])
    defparam stat_21__i0.GSR = "ENABLED";
    FD1S3IX counter_20__i0 (.D(n37[0]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(n65[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20__i0.GSR = "ENABLED";
    FD1S3AX latch_out_79 (.D(shift_register_15__N_105), .CK(n9[0]), .Q(latch_out_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam latch_out_79.GSR = "ENABLED";
    FD1S3IX shift_register_i4 (.D(shift_register[5]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(shift_register[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i4.GSR = "ENABLED";
    FD1S3IX shift_register_i3 (.D(shift_register[4]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(shift_register[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i3.GSR = "ENABLED";
    FD1S3IX shift_register_i2 (.D(shift_register[3]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(shift_register[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i2.GSR = "ENABLED";
    FD1S3IX shift_register_i1 (.D(shift_register[2]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(shift_register[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i1.GSR = "ENABLED";
    FD1S3AX data_clock_24_i1 (.D(n2[1]), .CK(s_clk_c), .Q(data_clock_c_1));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(22[9] 41[16])
    defparam data_clock_24_i1.GSR = "ENABLED";
    FD1S3IX counter_20__i7 (.D(n37[7]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20__i7.GSR = "ENABLED";
    FD1S3IX counter_20__i6 (.D(n37[6]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20__i6.GSR = "ENABLED";
    FD1S3IX counter_20__i5 (.D(n37[5]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20__i5.GSR = "ENABLED";
    FD1S3IX counter_20__i4 (.D(n37[4]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20__i4.GSR = "ENABLED";
    FD1S3IX counter_20__i3 (.D(n37[3]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(n65[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20__i3.GSR = "ENABLED";
    FD1S3IX counter_20__i2 (.D(n37[2]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(n65[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20__i2.GSR = "ENABLED";
    FD1S3IX counter_20__i1 (.D(n37[1]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(n65[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20__i1.GSR = "ENABLED";
    FD1S3IX stat_21__i1 (.D(n2[1]), .CK(s_clk_c), .CD(n24), .Q(stat[1]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(35[25:33])
    defparam stat_21__i1.GSR = "ENABLED";
    FD1P3AX data_out_80 (.D(shift_register[0]), .SP(can_write_enable_1), 
            .CK(n9[0]), .Q(data_out_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam data_out_80.GSR = "DISABLED";
    LUT4 i32_1_lut (.A(stat[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(22[9] 41[16])
    defparam i32_1_lut.init = 16'h5555;
    LUT4 i91_2_lut (.A(s_reset_c), .B(shift_register_15__N_105), .Z(can_write_enable_1)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i91_2_lut.init = 16'h1111;
    LUT4 i3_4_lut (.A(counter[5]), .B(counter[4]), .C(counter[6]), .D(counter[7]), 
         .Z(shift_register_15__N_105)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam i3_4_lut.init = 16'hfffe;
    CCU2D counter_20_add_4_3 (.A0(n65[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n88), .COUT(n89), .S0(n37[1]), .S1(n37[2]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_20_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_20_add_4_3.INJECT1_0 = "NO";
    defparam counter_20_add_4_3.INJECT1_1 = "NO";
    LUT4 i44_1_lut (.A(stat[1]), .Z(s_clk_c_enable_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(35[25:33])
    defparam i44_1_lut.init = 16'h5555;
    FD1S3IX shift_register_i0 (.D(shift_register[1]), .CK(n9[0]), .CD(shift_register_15__N_105), 
            .Q(shift_register[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i0.GSR = "ENABLED";
    FD1S3JX shift_register_i12 (.D(shift_register[13]), .CK(n9[0]), .PD(shift_register_15__N_105), 
            .Q(shift_register[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i12.GSR = "ENABLED";
    FD1S3JX shift_register_i13 (.D(shift_register[14]), .CK(n9[0]), .PD(shift_register_15__N_105), 
            .Q(shift_register[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i13.GSR = "ENABLED";
    FD1S3JX shift_register_i14 (.D(shift_register[15]), .CK(n9[0]), .PD(shift_register_15__N_105), 
            .Q(shift_register[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i14.GSR = "ENABLED";
    FD1S3AY shift_register_i15 (.D(shift_register_15__N_105), .CK(n9[0]), 
            .Q(shift_register[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i15.GSR = "ENABLED";
    FD1P3AX data_clock_24_i0 (.D(n1), .SP(s_clk_c_enable_1), .CK(s_clk_c), 
            .Q(n9[0]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(22[9] 41[16])
    defparam data_clock_24_i0.GSR = "ENABLED";
    LUT4 i16_2_lut (.A(stat[0]), .B(stat[1]), .Z(n24)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(22[9] 41[16])
    defparam i16_2_lut.init = 16'h8888;
    CCU2D counter_20_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n91), .S0(n37[7]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_20_add_4_9.INIT1 = 16'h0000;
    defparam counter_20_add_4_9.INJECT1_0 = "NO";
    defparam counter_20_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_20_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n65[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n88), .S1(n37[0]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20_add_4_1.INIT0 = 16'hF000;
    defparam counter_20_add_4_1.INIT1 = 16'h0555;
    defparam counter_20_add_4_1.INJECT1_0 = "NO";
    defparam counter_20_add_4_1.INJECT1_1 = "NO";
    FD1S3JX shift_register_i11 (.D(shift_register[12]), .CK(n9[0]), .PD(shift_register_15__N_105), 
            .Q(shift_register[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=22, LSE_RCOL=6, LSE_LLINE=9, LSE_RLINE=16 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(52[14] 67[8])
    defparam shift_register_i11.GSR = "ENABLED";
    CCU2D counter_20_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n90), .COUT(n91), .S0(n37[5]), .S1(n37[6]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(58[24:35])
    defparam counter_20_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_20_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_20_add_4_7.INJECT1_0 = "NO";
    defparam counter_20_add_4_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

