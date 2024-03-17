// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Mon Mar 18 03:06:34 2024
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
    
    wire GND_net, VCC_net, s_reset_c, data_out_c, latch_out_c, data_clock_c_1;
    wire [1:0]insert_stat;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(11[12:23])
    wire [15:0]data_to_74hc;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(13[12:24])
    
    wire n459, n468, n498, n496, n494, n492, n380, n490, n488, 
        n486, n484, n482, n480, n476, n474, n478, n472;
    wire [15:0]shift_register;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(12[12:26])
    
    wire n1172;
    wire [15:0]shift_register_15__N_445;
    
    wire n1170, n1169, n1168, n1167, n1166, n1165, n1161, n1159;
    
    VHI i1000 (.Z(VCC_net));
    LUT4 i333_3_lut (.A(shift_register[10]), .B(data_to_74hc[9]), .C(insert_stat[0]), 
         .Z(n482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i333_3_lut.init = 16'hcaca;
    OB latch_out_pad (.I(latch_out_c), .O(latch_out));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(5[12:21])
    LUT4 m1_lut (.Z(n1172)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 mux_15_Mux_1_i3_3_lut (.A(shift_register[1]), .B(n498), .C(n459), 
         .Z(shift_register_15__N_445[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_1_i3_3_lut.init = 16'hcaca;
    LUT4 i349_3_lut (.A(shift_register[2]), .B(n1165), .C(insert_stat[0]), 
         .Z(n498)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i349_3_lut.init = 16'hcaca;
    IB s_reset_pad (.I(s_reset), .O(s_reset_c));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(3[16:23])
    IB s_clk_pad (.I(s_clk), .O(s_clk_c));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    OB data_clock_pad (.I(data_clock_c_1), .O(data_clock));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(6[12:22])
    OB data_out_pad (.I(data_out_c), .O(data_out));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(4[12:20])
    LUT4 mux_15_Mux_6_i3_3_lut (.A(shift_register[6]), .B(n488), .C(n459), 
         .Z(shift_register_15__N_445[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_6_i3_3_lut.init = 16'hcaca;
    LUT4 i339_3_lut (.A(shift_register[7]), .B(n1170), .C(insert_stat[0]), 
         .Z(n488)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i339_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_5_i3_3_lut (.A(shift_register[5]), .B(n490), .C(n459), 
         .Z(shift_register_15__N_445[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_5_i3_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_12_i3_3_lut (.A(shift_register[12]), .B(n476), .C(n459), 
         .Z(shift_register_15__N_445[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_12_i3_3_lut.init = 16'hcaca;
    LUT4 i341_3_lut (.A(shift_register[6]), .B(n1169), .C(insert_stat[0]), 
         .Z(n490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i341_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_4_i3_3_lut (.A(shift_register[4]), .B(n492), .C(n459), 
         .Z(shift_register_15__N_445[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_4_i3_3_lut.init = 16'hcaca;
    LUT4 i327_3_lut (.A(shift_register[13]), .B(data_to_74hc[12]), .C(insert_stat[0]), 
         .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i327_3_lut.init = 16'hcaca;
    LUT4 i343_3_lut (.A(shift_register[5]), .B(n1168), .C(insert_stat[0]), 
         .Z(n492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i343_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_2_i3_3_lut (.A(shift_register[2]), .B(n496), .C(n459), 
         .Z(shift_register_15__N_445[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_2_i3_3_lut.init = 16'hcaca;
    LUT4 i347_3_lut (.A(shift_register[3]), .B(n1167), .C(insert_stat[0]), 
         .Z(n496)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i347_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_3_i3_3_lut (.A(shift_register[3]), .B(n494), .C(n459), 
         .Z(shift_register_15__N_445[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 i345_3_lut (.A(shift_register[4]), .B(n1166), .C(insert_stat[0]), 
         .Z(n494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i345_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_7_i3_3_lut (.A(shift_register[7]), .B(n486), .C(n459), 
         .Z(shift_register_15__N_445[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 i337_3_lut (.A(shift_register[8]), .B(n1159), .C(insert_stat[0]), 
         .Z(n486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i337_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_0_i3_3_lut (.A(shift_register[0]), .B(n468), .C(n459), 
         .Z(shift_register_15__N_445[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_0_i3_3_lut.init = 16'hcaca;
    LUT4 i319_3_lut (.A(shift_register[1]), .B(n1161), .C(insert_stat[0]), 
         .Z(n468)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i319_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_11_i3_3_lut (.A(shift_register[11]), .B(n478), .C(n459), 
         .Z(shift_register_15__N_445[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_11_i3_3_lut.init = 16'hcaca;
    LUT4 i329_3_lut (.A(shift_register[12]), .B(data_to_74hc[11]), .C(insert_stat[0]), 
         .Z(n478)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i329_3_lut.init = 16'hcaca;
    LUT4 i335_3_lut (.A(shift_register[9]), .B(data_to_74hc[8]), .C(insert_stat[0]), 
         .Z(n484)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i335_3_lut.init = 16'hcaca;
    LUT4 i231_1_lut (.A(s_reset_c), .Z(n380)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(3[16:23])
    defparam i231_1_lut.init = 16'h5555;
    LUT4 mux_15_Mux_13_i3_3_lut (.A(shift_register[13]), .B(n474), .C(n459), 
         .Z(shift_register_15__N_445[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_13_i3_3_lut.init = 16'hcaca;
    LUT4 i325_3_lut (.A(shift_register[14]), .B(data_to_74hc[13]), .C(insert_stat[0]), 
         .Z(n474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i325_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_14_i3_3_lut (.A(shift_register[14]), .B(n472), .C(n459), 
         .Z(shift_register_15__N_445[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_14_i3_3_lut.init = 16'hcaca;
    LUT4 i323_3_lut (.A(shift_register[15]), .B(data_to_74hc[14]), .C(insert_stat[0]), 
         .Z(n472)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i323_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_15_i3_4_lut (.A(shift_register[15]), .B(data_to_74hc[15]), 
         .C(n459), .D(insert_stat[0]), .Z(shift_register_15__N_445[15])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_15_i3_4_lut.init = 16'hca0a;
    LUT4 mux_15_Mux_8_i3_3_lut (.A(shift_register[8]), .B(n484), .C(n459), 
         .Z(shift_register_15__N_445[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_8_i3_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(n380));
    LUT4 mux_15_Mux_10_i3_3_lut (.A(shift_register[10]), .B(n480), .C(n459), 
         .Z(shift_register_15__N_445[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_10_i3_3_lut.init = 16'hcaca;
    LUT4 i331_3_lut (.A(shift_register[11]), .B(data_to_74hc[10]), .C(insert_stat[0]), 
         .Z(n480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam i331_3_lut.init = 16'hcaca;
    LUT4 mux_15_Mux_9_i3_3_lut (.A(shift_register[9]), .B(n482), .C(n459), 
         .Z(shift_register_15__N_445[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(56[9] 81[16])
    defparam mux_15_Mux_9_i3_3_lut.init = 16'hcaca;
    control_74HC595D_6number dut (.s_clk_c(s_clk_c), .s_reset_c(s_reset_c), 
            .n1170(n1170), .n1172(n1172), .\data_to_74hc[8] (data_to_74hc[8]), 
            .\data_to_74hc[9] (data_to_74hc[9]), .\data_to_74hc[10] (data_to_74hc[10]), 
            .\data_to_74hc[11] (data_to_74hc[11]), .\data_to_74hc[12] (data_to_74hc[12]), 
            .\data_to_74hc[13] (data_to_74hc[13]), .\data_to_74hc[14] (data_to_74hc[14]), 
            .\data_to_74hc[15] (data_to_74hc[15]), .n1165(n1165), .n1166(n1166), 
            .n1167(n1167), .n1168(n1168), .n1169(n1169), .n1159(n1159), 
            .n1161(n1161), .shift_register_15__N_445({shift_register_15__N_445}), 
            .data_out_c(data_out_c), .shift_register({shift_register}), 
            .GND_net(GND_net), .\insert_stat[0] (insert_stat[0]), .latch_out_c(latch_out_c), 
            .n459(n459), .data_clock_c_1(data_clock_c_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(10[30] 17[6])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module control_74HC595D_6number
//

module control_74HC595D_6number (s_clk_c, s_reset_c, n1170, n1172, \data_to_74hc[8] , 
            \data_to_74hc[9] , \data_to_74hc[10] , \data_to_74hc[11] , 
            \data_to_74hc[12] , \data_to_74hc[13] , \data_to_74hc[14] , 
            \data_to_74hc[15] , n1165, n1166, n1167, n1168, n1169, 
            n1159, n1161, shift_register_15__N_445, data_out_c, shift_register, 
            GND_net, \insert_stat[0] , latch_out_c, n459, data_clock_c_1) /* synthesis syn_module_defined=1 */ ;
    input s_clk_c;
    input s_reset_c;
    output n1170;
    input n1172;
    output \data_to_74hc[8] ;
    output \data_to_74hc[9] ;
    output \data_to_74hc[10] ;
    output \data_to_74hc[11] ;
    output \data_to_74hc[12] ;
    output \data_to_74hc[13] ;
    output \data_to_74hc[14] ;
    output \data_to_74hc[15] ;
    output n1165;
    output n1166;
    output n1167;
    output n1168;
    output n1169;
    output n1159;
    output n1161;
    input [15:0]shift_register_15__N_445;
    output data_out_c;
    output [15:0]shift_register;
    input GND_net;
    output \insert_stat[0] ;
    output latch_out_c;
    output n459;
    output data_clock_c_1;
    
    wire s_clk_c /* synthesis SET_AS_NETWORK=s_clk_c, is_clock=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    wire [47:0]data_in_copy;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(18[12:24])
    
    wire s_clk_c_enable_69, n1154, n501, data_to_74hc_15__N_24;
    wire [15:0]n34;
    
    wire write_en, write_en_N_437, n504;
    wire [7:0]n18;
    
    wire n541, n540, n539, shift_register_15__N_471, n548, n547, 
        n546, n516, n515, n511;
    wire [7:0]data_in_8bit;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(17[11:23])
    
    wire n1153, n1152, n1151;
    wire [7:0]n59;
    
    wire shift_register_15__N_504, shift_register_15__N_470, n523, n522, 
        n518, n1158;
    wire [7:0]stat;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(19[11:15])
    
    wire n373, n502, n500, shift_register_15__N_476, data_to_74hc_15__N_23, 
        data_to_74hc_15__N_283, shift_register_15__N_522, n530, n529, 
        n525, n537, n536, n532, n544, n543, n551, n550, n558, 
        n557, n553, data_to_74hc_15__N_22, data_to_74hc_15__N_280, data_to_74hc_15__N_21, 
        data_to_74hc_15__N_277, data_to_74hc_15__N_20, data_to_74hc_15__N_274, 
        data_to_74hc_15__N_19, data_to_74hc_15__N_271, data_to_74hc_15__N_18, 
        data_to_74hc_15__N_268, data_to_74hc_15__N_17, data_to_74hc_15__N_25, 
        s_clk_c_enable_16;
    wire [7:0]mask_key;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(16[11:19])
    
    wire n1160;
    wire [3:0]loop_counter;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(15[11:23])
    
    wire n555, n554, n375, n513, n512, shift_register_15__N_475, 
        shift_register_15__N_519, data_in_copy_7__N_317, n377, n527, 
        n526, shift_register_15__N_513, shift_register_15__N_473, n520, 
        n519, data_to_74hc_15__N_286, shift_register_15__N_516, shift_register_15__N_474, 
        n534, n533, shift_register_15__N_510, shift_register_15__N_472, 
        shift_register_15__N_507;
    wire [3:0]n21;
    
    wire n505, n1155, n1174, shift_register_15__N_501, shift_register_15__N_469, 
        n682;
    
    FD1P3AX data_in_copy_i0_i0 (.D(n1154), .SP(s_clk_c_enable_69), .CK(s_clk_c), 
            .Q(data_in_copy[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i0.GSR = "ENABLED";
    FD1S3BX data_to_74hc_i0_i0_352_353_set (.D(n34[0]), .CK(s_clk_c), .PD(data_to_74hc_15__N_24), 
            .Q(n501)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i0_352_353_set.GSR = "DISABLED";
    FD1S3AY write_en_242 (.D(write_en_N_437), .CK(s_clk_c), .Q(write_en)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam write_en_242.GSR = "ENABLED";
    FD1S3BX data_in_8bit_i0_i0_355_356_set (.D(n18[0]), .CK(s_clk_c), .PD(data_to_74hc_15__N_24), 
            .Q(n504)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i0_355_356_set.GSR = "DISABLED";
    LUT4 s_reset_I_0_101_2_lut_4_lut (.A(n541), .B(n540), .C(n539), .D(s_reset_c), 
         .Z(shift_register_15__N_471)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_101_2_lut_4_lut.init = 16'hca00;
    LUT4 i400_3_lut_rep_22 (.A(n548), .B(n547), .C(n546), .Z(n1170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i400_3_lut_rep_22.init = 16'hcaca;
    LUT4 i368_3_lut (.A(n516), .B(n515), .C(n511), .Z(data_in_8bit[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i368_3_lut.init = 16'hcaca;
    FD1P3AY data_in_copy_i0_i7 (.D(n1153), .SP(s_clk_c_enable_69), .CK(s_clk_c), 
            .Q(data_in_copy[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i7.GSR = "ENABLED";
    FD1P3AX data_in_copy_i0_i6 (.D(n1152), .SP(s_clk_c_enable_69), .CK(s_clk_c), 
            .Q(data_in_copy[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i6.GSR = "ENABLED";
    FD1P3AY data_in_copy_i0_i5 (.D(n1151), .SP(s_clk_c_enable_69), .CK(s_clk_c), 
            .Q(data_in_copy[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i5.GSR = "ENABLED";
    FD1P3AY data_in_copy_i0_i4 (.D(n59[4]), .SP(s_clk_c_enable_69), .CK(s_clk_c), 
            .Q(data_in_copy[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i4.GSR = "ENABLED";
    FD1P3AX data_in_copy_i0_i3 (.D(n59[3]), .SP(s_clk_c_enable_69), .CK(s_clk_c), 
            .Q(data_in_copy[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i3.GSR = "ENABLED";
    FD1P3AY data_in_copy_i0_i2 (.D(n59[2]), .SP(s_clk_c_enable_69), .CK(s_clk_c), 
            .Q(data_in_copy[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i2.GSR = "ENABLED";
    FD1P3AY data_in_copy_i0_i1 (.D(n59[1]), .SP(s_clk_c_enable_69), .CK(s_clk_c), 
            .Q(data_in_copy[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i1.GSR = "ENABLED";
    LUT4 s_reset_I_0_116_2_lut_4_lut (.A(n548), .B(n547), .C(n546), .D(s_reset_c), 
         .Z(shift_register_15__N_504)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_116_2_lut_4_lut.init = 16'h3500;
    LUT4 s_reset_I_0_100_2_lut_4_lut (.A(n548), .B(n547), .C(n546), .D(s_reset_c), 
         .Z(shift_register_15__N_470)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_100_2_lut_4_lut.init = 16'hca00;
    LUT4 i375_3_lut (.A(n523), .B(n522), .C(n518), .Z(data_in_8bit[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i375_3_lut.init = 16'hcaca;
    LUT4 data_in_8bit_i1_i7_3_lut_4_lut (.A(n1158), .B(data_in_copy[14]), 
         .C(s_clk_c_enable_69), .D(data_in_8bit[6]), .Z(n18[6])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam data_in_8bit_i1_i7_3_lut_4_lut.init = 16'h4f40;
    FD1S3AX stat_FSM_i1 (.D(n373), .CK(s_clk_c), .Q(stat[1]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(31[9] 67[16])
    defparam stat_FSM_i1.GSR = "ENABLED";
    LUT4 s_reset_I_0_106_2_lut_4_lut (.A(n502), .B(n501), .C(n500), .D(s_reset_c), 
         .Z(shift_register_15__N_476)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_106_2_lut_4_lut.init = 16'hca00;
    FD1S1D i362 (.D(n1172), .CK(data_to_74hc_15__N_23), .CD(data_to_74hc_15__N_283), 
           .Q(n511));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i362.GSR = "DISABLED";
    LUT4 s_reset_I_0_2_lut_4_lut (.A(n502), .B(n501), .C(n500), .D(s_reset_c), 
         .Z(shift_register_15__N_522)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_2_lut_4_lut.init = 16'h3500;
    LUT4 data_in_8bit_i1_i6_3_lut_4_lut (.A(data_in_copy[13]), .B(n1158), 
         .C(s_clk_c_enable_69), .D(data_in_8bit[5]), .Z(n18[5])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam data_in_8bit_i1_i6_3_lut_4_lut.init = 16'hefe0;
    LUT4 data_in_8bit_i1_i1_3_lut_4_lut (.A(n1158), .B(data_in_copy[8]), 
         .C(s_clk_c_enable_69), .D(data_in_8bit[0]), .Z(n18[0])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam data_in_8bit_i1_i1_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_4_lut_4_lut (.A(s_clk_c_enable_69), .B(n1158), .C(data_in_copy[9]), 
         .D(data_in_8bit[1]), .Z(n18[1])) /* synthesis lut_function=(A (B+(C))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i1_4_lut_4_lut.init = 16'hfda8;
    LUT4 i1_4_lut_4_lut_adj_3 (.A(s_clk_c_enable_69), .B(n1158), .C(data_in_copy[10]), 
         .D(data_in_8bit[2]), .Z(n18[2])) /* synthesis lut_function=(A (B+(C))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i1_4_lut_4_lut_adj_3.init = 16'hfda8;
    LUT4 data_in_8bit_i1_i8_3_lut_4_lut (.A(data_in_copy[15]), .B(n1158), 
         .C(s_clk_c_enable_69), .D(data_in_8bit[7]), .Z(n18[7])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam data_in_8bit_i1_i8_3_lut_4_lut.init = 16'hefe0;
    LUT4 i382_3_lut (.A(n530), .B(n529), .C(n525), .Z(data_in_8bit[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i382_3_lut.init = 16'hcaca;
    LUT4 i389_3_lut (.A(n537), .B(n536), .C(n532), .Z(data_in_8bit[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i389_3_lut.init = 16'hcaca;
    LUT4 s_reset_I_0_250_2_lut (.A(s_reset_c), .B(data_in_copy[1]), .Z(data_to_74hc_15__N_23)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_250_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_354_2_lut (.A(s_reset_c), .B(data_in_copy[1]), .Z(data_to_74hc_15__N_283)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_354_2_lut.init = 16'h2222;
    LUT4 i396_3_lut (.A(n544), .B(n543), .C(n539), .Z(data_in_8bit[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i396_3_lut.init = 16'hcaca;
    LUT4 i403_3_lut (.A(n551), .B(n550), .C(n546), .Z(data_in_8bit[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i403_3_lut.init = 16'hcaca;
    LUT4 i410_3_lut (.A(n558), .B(n557), .C(n553), .Z(data_in_8bit[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i410_3_lut.init = 16'hcaca;
    FD1S1D i369 (.D(n1172), .CK(data_to_74hc_15__N_22), .CD(data_to_74hc_15__N_280), 
           .Q(n518));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i369.GSR = "DISABLED";
    FD1S1D i376 (.D(n1172), .CK(data_to_74hc_15__N_21), .CD(data_to_74hc_15__N_277), 
           .Q(n525));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i376.GSR = "DISABLED";
    FD1S1D i383 (.D(n1172), .CK(data_to_74hc_15__N_20), .CD(data_to_74hc_15__N_274), 
           .Q(n532));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i383.GSR = "DISABLED";
    FD1S1D i390 (.D(n1172), .CK(data_to_74hc_15__N_19), .CD(data_to_74hc_15__N_271), 
           .Q(n539));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i390.GSR = "DISABLED";
    FD1S1D i397 (.D(n1172), .CK(data_to_74hc_15__N_18), .CD(data_to_74hc_15__N_268), 
           .Q(n546));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i397.GSR = "DISABLED";
    FD1S1D i404 (.D(n1172), .CK(data_to_74hc_15__N_17), .CD(data_to_74hc_15__N_25), 
           .Q(n553));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i404.GSR = "DISABLED";
    LUT4 s_reset_I_0_249_2_lut (.A(s_reset_c), .B(data_in_copy[2]), .Z(data_to_74hc_15__N_22)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_249_2_lut.init = 16'h8888;
    FD1S3BX data_in_8bit_i0_i1_366_367_set (.D(n18[1]), .CK(s_clk_c), .PD(data_to_74hc_15__N_23), 
            .Q(n515)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i1_366_367_set.GSR = "DISABLED";
    FD1S3BX data_in_8bit_i0_i2_373_374_set (.D(n18[2]), .CK(s_clk_c), .PD(data_to_74hc_15__N_22), 
            .Q(n522)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i2_373_374_set.GSR = "DISABLED";
    FD1S3BX data_in_8bit_i0_i3_380_381_set (.D(n18[3]), .CK(s_clk_c), .PD(data_to_74hc_15__N_21), 
            .Q(n529)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i3_380_381_set.GSR = "DISABLED";
    FD1S3BX data_in_8bit_i0_i4_387_388_set (.D(n18[4]), .CK(s_clk_c), .PD(data_to_74hc_15__N_20), 
            .Q(n536)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i4_387_388_set.GSR = "DISABLED";
    FD1S3BX data_in_8bit_i0_i5_394_395_set (.D(n18[5]), .CK(s_clk_c), .PD(data_to_74hc_15__N_19), 
            .Q(n543)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i5_394_395_set.GSR = "DISABLED";
    FD1S3BX data_in_8bit_i0_i6_401_402_set (.D(n18[6]), .CK(s_clk_c), .PD(data_to_74hc_15__N_18), 
            .Q(n550)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i6_401_402_set.GSR = "DISABLED";
    FD1S3BX data_in_8bit_i0_i7_408_409_set (.D(n18[7]), .CK(s_clk_c), .PD(data_to_74hc_15__N_17), 
            .Q(n557)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i7_408_409_set.GSR = "DISABLED";
    FD1P3AX data_to_74hc_i0_i8 (.D(mask_key[0]), .SP(s_clk_c_enable_16), 
            .CK(s_clk_c), .Q(\data_to_74hc[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i8.GSR = "ENABLED";
    FD1P3AY data_to_74hc_i0_i9 (.D(mask_key[1]), .SP(s_clk_c_enable_16), 
            .CK(s_clk_c), .Q(\data_to_74hc[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i9.GSR = "ENABLED";
    FD1P3AY data_to_74hc_i0_i10 (.D(mask_key[2]), .SP(s_clk_c_enable_16), 
            .CK(s_clk_c), .Q(\data_to_74hc[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i10.GSR = "ENABLED";
    FD1P3AY data_to_74hc_i0_i11 (.D(mask_key[3]), .SP(s_clk_c_enable_16), 
            .CK(s_clk_c), .Q(\data_to_74hc[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i11.GSR = "ENABLED";
    FD1P3AY data_to_74hc_i0_i12 (.D(mask_key[4]), .SP(s_clk_c_enable_16), 
            .CK(s_clk_c), .Q(\data_to_74hc[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i12.GSR = "ENABLED";
    FD1P3AY data_to_74hc_i0_i13 (.D(mask_key[5]), .SP(s_clk_c_enable_16), 
            .CK(s_clk_c), .Q(\data_to_74hc[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i13.GSR = "ENABLED";
    FD1P3AY data_to_74hc_i0_i14 (.D(mask_key[6]), .SP(s_clk_c_enable_16), 
            .CK(s_clk_c), .Q(\data_to_74hc[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i14.GSR = "ENABLED";
    FD1P3AY data_to_74hc_i0_i15 (.D(mask_key[7]), .SP(s_clk_c_enable_16), 
            .CK(s_clk_c), .Q(\data_to_74hc[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i15.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n1160), .B(data_in_copy[11]), .C(loop_counter[2]), 
         .D(loop_counter[0]), .Z(n59[3])) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(15[11:23])
    defparam i1_4_lut.init = 16'h8ccc;
    FD1S3DX data_in_8bit_i0_i7_408_409_reset (.D(n18[7]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_25), .Q(n558)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i7_408_409_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_353_2_lut (.A(s_reset_c), .B(data_in_copy[2]), .Z(data_to_74hc_15__N_280)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_353_2_lut.init = 16'h2222;
    FD1S3DX data_to_74hc_i0_i7_405_406_reset (.D(n34[7]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_25), .Q(n555)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i7_405_406_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_248_2_lut (.A(s_reset_c), .B(data_in_copy[3]), .Z(data_to_74hc_15__N_21)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_248_2_lut.init = 16'h8888;
    FD1S3BX data_to_74hc_i0_i7_405_406_set (.D(n34[7]), .CK(s_clk_c), .PD(data_to_74hc_15__N_17), 
            .Q(n554)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i7_405_406_set.GSR = "DISABLED";
    FD1S3DX data_in_8bit_i0_i6_401_402_reset (.D(n18[6]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_268), .Q(n551)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i6_401_402_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_352_2_lut (.A(s_reset_c), .B(data_in_copy[3]), .Z(data_to_74hc_15__N_277)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_352_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_247_2_lut (.A(s_reset_c), .B(data_in_copy[4]), .Z(data_to_74hc_15__N_20)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_247_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_351_2_lut (.A(s_reset_c), .B(data_in_copy[4]), .Z(data_to_74hc_15__N_274)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_351_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_246_2_lut (.A(s_reset_c), .B(data_in_copy[5]), .Z(data_to_74hc_15__N_19)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_246_2_lut.init = 16'h8888;
    FD1S3AX stat_FSM_i2 (.D(n375), .CK(s_clk_c), .Q(stat[0]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(31[9] 67[16])
    defparam stat_FSM_i2.GSR = "ENABLED";
    LUT4 i365_3_lut_rep_17 (.A(n513), .B(n512), .C(n511), .Z(n1165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i365_3_lut_rep_17.init = 16'hcaca;
    LUT4 s_reset_I_0_105_2_lut_4_lut (.A(n513), .B(n512), .C(n511), .D(s_reset_c), 
         .Z(shift_register_15__N_475)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_105_2_lut_4_lut.init = 16'hca00;
    LUT4 s_reset_I_0_121_2_lut_4_lut (.A(n513), .B(n512), .C(n511), .D(s_reset_c), 
         .Z(shift_register_15__N_519)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_121_2_lut_4_lut.init = 16'h3500;
    LUT4 s_reset_I_0_350_2_lut (.A(s_reset_c), .B(data_in_copy[5]), .Z(data_to_74hc_15__N_271)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_350_2_lut.init = 16'h2222;
    FD1S3AY stat_FSM_i3 (.D(n377), .CK(s_clk_c), .Q(data_in_copy_7__N_317));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(31[9] 67[16])
    defparam stat_FSM_i3.GSR = "ENABLED";
    LUT4 s_reset_I_0_245_2_lut (.A(s_reset_c), .B(data_in_copy[6]), .Z(data_to_74hc_15__N_18)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_245_2_lut.init = 16'h8888;
    LUT4 i379_3_lut_rep_18 (.A(n527), .B(n526), .C(n525), .Z(n1166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i379_3_lut_rep_18.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_4 (.A(s_clk_c_enable_69), .B(n1158), .C(data_in_copy[12]), 
         .D(data_in_8bit[4]), .Z(n18[4])) /* synthesis lut_function=(A (B+(C))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i1_4_lut_4_lut_adj_4.init = 16'hfda8;
    LUT4 s_reset_I_0_349_2_lut (.A(s_reset_c), .B(data_in_copy[6]), .Z(data_to_74hc_15__N_268)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_349_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_119_2_lut_4_lut (.A(n527), .B(n526), .C(n525), .D(s_reset_c), 
         .Z(shift_register_15__N_513)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_119_2_lut_4_lut.init = 16'h3500;
    LUT4 s_reset_I_0_244_2_lut (.A(s_reset_c), .B(data_in_copy[7]), .Z(data_to_74hc_15__N_17)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_244_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_103_2_lut_4_lut (.A(n527), .B(n526), .C(n525), .D(s_reset_c), 
         .Z(shift_register_15__N_473)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_103_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_rep_6_4_lut (.A(loop_counter[0]), .B(n1160), .C(loop_counter[2]), 
         .D(data_in_copy[8]), .Z(n1154)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i1_2_lut_rep_6_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut (.A(loop_counter[0]), .B(n1160), .C(loop_counter[2]), 
         .D(data_in_copy[9]), .Z(n59[1])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i1_2_lut_4_lut.init = 16'hff20;
    LUT4 i1_2_lut_4_lut_adj_5 (.A(loop_counter[0]), .B(n1160), .C(loop_counter[2]), 
         .D(data_in_copy[10]), .Z(n59[2])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i1_2_lut_4_lut_adj_5.init = 16'hff20;
    LUT4 i1_2_lut_4_lut_adj_6 (.A(loop_counter[0]), .B(n1160), .C(loop_counter[2]), 
         .D(data_in_copy[12]), .Z(n59[4])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i1_2_lut_4_lut_adj_6.init = 16'hff20;
    LUT4 i372_3_lut_rep_19 (.A(n520), .B(n519), .C(n518), .Z(n1167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i372_3_lut_rep_19.init = 16'hcaca;
    LUT4 s_reset_I_0_2_lut (.A(s_reset_c), .B(data_in_copy[0]), .Z(data_to_74hc_15__N_286)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_252_2_lut (.A(s_reset_c), .B(data_in_copy[7]), .Z(data_to_74hc_15__N_25)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_252_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_120_2_lut_4_lut (.A(n520), .B(n519), .C(n518), .D(s_reset_c), 
         .Z(shift_register_15__N_516)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_120_2_lut_4_lut.init = 16'h3500;
    LUT4 s_reset_I_0_104_2_lut_4_lut (.A(n520), .B(n519), .C(n518), .D(s_reset_c), 
         .Z(shift_register_15__N_474)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_104_2_lut_4_lut.init = 16'hca00;
    LUT4 i386_3_lut_rep_20 (.A(n534), .B(n533), .C(n532), .Z(n1168)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i386_3_lut_rep_20.init = 16'hcaca;
    FD1S3DX data_to_74hc_i0_i6_398_399_reset (.D(n34[6]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_268), .Q(n548)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i6_398_399_reset.GSR = "DISABLED";
    FD1S3BX data_to_74hc_i0_i6_398_399_set (.D(n34[6]), .CK(s_clk_c), .PD(data_to_74hc_15__N_18), 
            .Q(n547)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i6_398_399_set.GSR = "DISABLED";
    FD1S3DX data_in_8bit_i0_i5_394_395_reset (.D(n18[5]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_271), .Q(n544)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i5_394_395_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_118_2_lut_4_lut (.A(n534), .B(n533), .C(n532), .D(s_reset_c), 
         .Z(shift_register_15__N_510)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_118_2_lut_4_lut.init = 16'h3500;
    FD1S3DX data_to_74hc_i0_i5_391_392_reset (.D(n34[5]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_271), .Q(n541)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i5_391_392_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_102_2_lut_4_lut (.A(n534), .B(n533), .C(n532), .D(s_reset_c), 
         .Z(shift_register_15__N_472)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_102_2_lut_4_lut.init = 16'hca00;
    FD1S3BX data_to_74hc_i0_i5_391_392_set (.D(n34[5]), .CK(s_clk_c), .PD(data_to_74hc_15__N_19), 
            .Q(n540)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i5_391_392_set.GSR = "DISABLED";
    FD1S3DX data_in_8bit_i0_i4_387_388_reset (.D(n18[4]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_274), .Q(n537)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i4_387_388_reset.GSR = "DISABLED";
    LUT4 i393_3_lut_rep_21 (.A(n541), .B(n540), .C(n539), .Z(n1169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i393_3_lut_rep_21.init = 16'hcaca;
    FD1S3DX data_to_74hc_i0_i4_384_385_reset (.D(n34[4]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_274), .Q(n534)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i4_384_385_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_117_2_lut_4_lut (.A(n541), .B(n540), .C(n539), .D(s_reset_c), 
         .Z(shift_register_15__N_507)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_117_2_lut_4_lut.init = 16'h3500;
    FD1S3BX data_to_74hc_i0_i4_384_385_set (.D(n34[4]), .CK(s_clk_c), .PD(data_to_74hc_15__N_20), 
            .Q(n533)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i4_384_385_set.GSR = "DISABLED";
    FD1S3DX data_in_8bit_i0_i3_380_381_reset (.D(n18[3]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_277), .Q(n530)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i3_380_381_reset.GSR = "DISABLED";
    FD1S3DX data_to_74hc_i0_i3_377_378_reset (.D(n34[3]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_277), .Q(n527)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i3_377_378_reset.GSR = "DISABLED";
    FD1S3BX data_to_74hc_i0_i3_377_378_set (.D(n34[3]), .CK(s_clk_c), .PD(data_to_74hc_15__N_21), 
            .Q(n526)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i3_377_378_set.GSR = "DISABLED";
    FD1S3DX data_in_8bit_i0_i2_373_374_reset (.D(n18[2]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_280), .Q(n523)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i2_373_374_reset.GSR = "DISABLED";
    FD1S3DX data_to_74hc_i0_i2_370_371_reset (.D(n34[2]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_280), .Q(n520)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i2_370_371_reset.GSR = "DISABLED";
    FD1S3BX data_to_74hc_i0_i2_370_371_set (.D(n34[2]), .CK(s_clk_c), .PD(data_to_74hc_15__N_22), 
            .Q(n519)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i2_370_371_set.GSR = "DISABLED";
    FD1S3DX data_in_8bit_i0_i1_366_367_reset (.D(n18[1]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_283), .Q(n516)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i1_366_367_reset.GSR = "DISABLED";
    FD1S3DX data_to_74hc_i0_i1_363_364_reset (.D(n34[1]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_283), .Q(n513)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i1_363_364_reset.GSR = "DISABLED";
    FD1S3BX data_to_74hc_i0_i1_363_364_set (.D(n34[1]), .CK(s_clk_c), .PD(data_to_74hc_15__N_23), 
            .Q(n512)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i1_363_364_set.GSR = "DISABLED";
    LUT4 i937_1_lut (.A(loop_counter[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i937_1_lut.init = 16'h5555;
    LUT4 i939_2_lut (.A(loop_counter[1]), .B(loop_counter[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i939_2_lut.init = 16'h6666;
    LUT4 s_reset_I_0_251_2_lut (.A(s_reset_c), .B(data_in_copy[0]), .Z(data_to_74hc_15__N_24)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_251_2_lut.init = 16'h8888;
    FD1S1D i351 (.D(n1172), .CK(data_to_74hc_15__N_24), .CD(data_to_74hc_15__N_286), 
           .Q(n500));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i351.GSR = "DISABLED";
    FD1S3DX data_in_8bit_i0_i0_355_356_reset (.D(n18[0]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_286), .Q(n505)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_8bit_i0_i0_355_356_reset.GSR = "DISABLED";
    FD1S3DX data_to_74hc_i0_i0_352_353_reset (.D(n34[0]), .CK(s_clk_c), 
            .CD(data_to_74hc_15__N_286), .Q(n502)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_to_74hc_i0_i0_352_353_reset.GSR = "DISABLED";
    FD1P3JX data_in_copy_i0_i30 (.D(data_in_copy[38]), .SP(s_clk_c_enable_69), 
            .PD(n1155), .CK(s_clk_c), .Q(data_in_copy[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i30.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i29 (.D(data_in_copy[37]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i29.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i28 (.D(data_in_copy[36]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i28.GSR = "ENABLED";
    FD1P3IX loop_counter_200__i0 (.D(n21[0]), .SP(s_clk_c_enable_69), .CD(n1174), 
            .CK(s_clk_c), .Q(loop_counter[0]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam loop_counter_200__i0.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i26 (.D(data_in_copy[34]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i26.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i31 (.D(data_in_copy[39]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i31.GSR = "ENABLED";
    FD1P3IX mask_key_i0_i0 (.D(mask_key[7]), .SP(s_clk_c_enable_69), .CD(n1174), 
            .CK(s_clk_c), .Q(mask_key[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam mask_key_i0_i0.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i25 (.D(data_in_copy[33]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i25.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i24 (.D(data_in_copy[32]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i24.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i23 (.D(data_in_copy[31]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i23.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i22 (.D(data_in_copy[30]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i22.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i21 (.D(data_in_copy[29]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i21.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i20 (.D(data_in_copy[28]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i20.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i19 (.D(data_in_copy[27]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i19.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i18 (.D(data_in_copy[26]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i18.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i17 (.D(data_in_copy[25]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i17.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i16 (.D(data_in_copy[24]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i16.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i15 (.D(data_in_copy[23]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i15.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i14 (.D(data_in_copy[22]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i14.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i13 (.D(data_in_copy[21]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i13.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i12 (.D(data_in_copy[20]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i12.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i11 (.D(data_in_copy[19]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i11.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i10 (.D(data_in_copy[18]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i10.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i9 (.D(data_in_copy[17]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i9.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i8 (.D(data_in_copy[16]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i8.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i27 (.D(data_in_copy[35]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i27.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i32 (.D(data_in_copy[40]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i32.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i33 (.D(data_in_copy[41]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i33.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i34 (.D(data_in_copy[42]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i34.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i35 (.D(data_in_copy[43]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i35.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i36 (.D(data_in_copy[44]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i36.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i37 (.D(data_in_copy[45]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i37.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i38 (.D(data_in_copy[46]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i38.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i39 (.D(data_in_copy[47]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i39.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i40 (.D(data_in_copy[0]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i40.GSR = "ENABLED";
    FD1P3IX data_in_copy_i0_i41 (.D(data_in_copy[1]), .SP(s_clk_c_enable_69), 
            .CD(n1174), .CK(s_clk_c), .Q(data_in_copy[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i41.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i42 (.D(data_in_copy[2]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i42.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i43 (.D(data_in_copy[3]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i43.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i44 (.D(data_in_copy[4]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i44.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i45 (.D(data_in_copy[5]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i45.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i46 (.D(data_in_copy[6]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i46.GSR = "ENABLED";
    FD1P3JX data_in_copy_i0_i47 (.D(data_in_copy[7]), .SP(s_clk_c_enable_69), 
            .PD(n1174), .CK(s_clk_c), .Q(data_in_copy[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam data_in_copy_i0_i47.GSR = "ENABLED";
    FD1P3IX loop_counter_200__i1 (.D(n21[1]), .SP(s_clk_c_enable_69), .CD(n1174), 
            .CK(s_clk_c), .Q(loop_counter[1]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam loop_counter_200__i1.GSR = "ENABLED";
    FD1P3IX loop_counter_200__i2 (.D(n21[2]), .SP(s_clk_c_enable_69), .CD(n1174), 
            .CK(s_clk_c), .Q(loop_counter[2]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam loop_counter_200__i2.GSR = "ENABLED";
    FD1P3IX loop_counter_200__i3 (.D(n21[3]), .SP(s_clk_c_enable_69), .CD(n1174), 
            .CK(s_clk_c), .Q(loop_counter[3]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam loop_counter_200__i3.GSR = "ENABLED";
    FD1P3JX mask_key_i0_i1 (.D(mask_key[0]), .SP(s_clk_c_enable_69), .PD(n1174), 
            .CK(s_clk_c), .Q(mask_key[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam mask_key_i0_i1.GSR = "ENABLED";
    FD1P3JX mask_key_i0_i2 (.D(mask_key[1]), .SP(s_clk_c_enable_69), .PD(n1174), 
            .CK(s_clk_c), .Q(mask_key[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam mask_key_i0_i2.GSR = "ENABLED";
    FD1P3JX mask_key_i0_i3 (.D(mask_key[2]), .SP(s_clk_c_enable_69), .PD(n1174), 
            .CK(s_clk_c), .Q(mask_key[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam mask_key_i0_i3.GSR = "ENABLED";
    FD1P3JX mask_key_i0_i4 (.D(mask_key[3]), .SP(s_clk_c_enable_69), .PD(n1174), 
            .CK(s_clk_c), .Q(mask_key[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam mask_key_i0_i4.GSR = "ENABLED";
    FD1P3JX mask_key_i0_i5 (.D(mask_key[4]), .SP(s_clk_c_enable_69), .PD(n1174), 
            .CK(s_clk_c), .Q(mask_key[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam mask_key_i0_i5.GSR = "ENABLED";
    FD1P3JX mask_key_i0_i6 (.D(mask_key[5]), .SP(s_clk_c_enable_69), .PD(n1174), 
            .CK(s_clk_c), .Q(mask_key[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam mask_key_i0_i6.GSR = "ENABLED";
    FD1P3JX mask_key_i0_i7 (.D(mask_key[6]), .SP(s_clk_c_enable_69), .PD(n1155), 
            .CK(s_clk_c), .Q(mask_key[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=30, LSE_RCOL=6, LSE_LLINE=10, LSE_RLINE=17 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam mask_key_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_4_4_lut (.A(loop_counter[0]), .B(n1160), .C(loop_counter[2]), 
         .D(data_in_copy[14]), .Z(n1152)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i1_2_lut_rep_4_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_rep_3_4_lut (.A(loop_counter[0]), .B(n1160), .C(loop_counter[2]), 
         .D(data_in_copy[13]), .Z(n1151)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i1_2_lut_rep_3_4_lut.init = 16'hff20;
    LUT4 i357_3_lut (.A(n505), .B(n504), .C(n500), .Z(data_in_8bit[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i357_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_5_4_lut (.A(loop_counter[0]), .B(n1160), .C(loop_counter[2]), 
         .D(data_in_copy[15]), .Z(n1153)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i1_2_lut_rep_5_4_lut.init = 16'hff20;
    LUT4 i946_2_lut_3_lut (.A(loop_counter[1]), .B(loop_counter[0]), .C(loop_counter[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i946_2_lut_3_lut.init = 16'h7878;
    LUT4 i953_3_lut_4_lut (.A(loop_counter[1]), .B(loop_counter[0]), .C(loop_counter[2]), 
         .D(loop_counter[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(46[41:58])
    defparam i953_3_lut_4_lut.init = 16'h7f80;
    LUT4 i407_3_lut_rep_11 (.A(n555), .B(n554), .C(n553), .Z(n1159)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i407_3_lut_rep_11.init = 16'hcaca;
    LUT4 s_reset_I_0_115_2_lut_4_lut (.A(n555), .B(n554), .C(n553), .D(s_reset_c), 
         .Z(shift_register_15__N_501)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_115_2_lut_4_lut.init = 16'h3500;
    LUT4 s_reset_I_0_99_2_lut_4_lut (.A(n555), .B(n554), .C(n553), .D(s_reset_c), 
         .Z(shift_register_15__N_469)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam s_reset_I_0_99_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_rep_12 (.A(loop_counter[1]), .B(loop_counter[3]), .Z(n1160)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(35[25:43])
    defparam i1_2_lut_rep_12.init = 16'heeee;
    LUT4 i533_1_lut (.A(write_en), .Z(n682)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i533_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_rep_10_4_lut (.A(loop_counter[1]), .B(loop_counter[3]), 
         .C(loop_counter[2]), .D(loop_counter[0]), .Z(n1158)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(35[25:43])
    defparam i2_3_lut_rep_10_4_lut.init = 16'h1000;
    LUT4 i354_3_lut_rep_13 (.A(n502), .B(n501), .C(n500), .Z(n1161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(30[10] 68[8])
    defparam i354_3_lut_rep_13.init = 16'hcaca;
    control_74HC595D dut (.shift_register_15__N_445({shift_register_15__N_445}), 
            .shift_register_15__N_476(shift_register_15__N_476), .shift_register_15__N_522(shift_register_15__N_522), 
            .n1172(n1172), .data_out_c(data_out_c), .shift_register({shift_register}), 
            .s_clk_c(s_clk_c), .GND_net(GND_net), .shift_register_15__N_501(shift_register_15__N_501), 
            .shift_register_15__N_469(shift_register_15__N_469), .\stat[0] (stat[0]), 
            .data_in_8bit({data_in_8bit}), .n1170(n1170), .n26(n34[6]), 
            .shift_register_15__N_504(shift_register_15__N_504), .shift_register_15__N_470(shift_register_15__N_470), 
            .shift_register_15__N_507(shift_register_15__N_507), .shift_register_15__N_471(shift_register_15__N_471), 
            .shift_register_15__N_510(shift_register_15__N_510), .s_reset_c(s_reset_c), 
            .\data_to_74hc[12] (\data_to_74hc[12] ), .shift_register_15__N_472(shift_register_15__N_472), 
            .shift_register_15__N_516(shift_register_15__N_516), .shift_register_15__N_474(shift_register_15__N_474), 
            .shift_register_15__N_513(shift_register_15__N_513), .insert_stat({Open_0, 
            \insert_stat[0] }), .latch_out_c(latch_out_c), .shift_register_15__N_473(shift_register_15__N_473), 
            .n1169(n1169), .n27(n34[5]), .\stat[1] (stat[1]), .n373(n373), 
            .n1168(n1168), .n28(n34[4]), .write_en(write_en), .n459(n459), 
            .n1166(n1166), .n29(n34[3]), .data_in_copy_7__N_317(data_in_copy_7__N_317), 
            .s_clk_c_enable_16(s_clk_c_enable_16), .n1167(n1167), .n30(n34[2]), 
            .\data_to_74hc[11] (\data_to_74hc[11] ), .n1165(n1165), .n31(n34[1]), 
            .n377(n377), .\data_to_74hc[13] (\data_to_74hc[13] ), .shift_register_15__N_475(shift_register_15__N_475), 
            .shift_register_15__N_519(shift_register_15__N_519), .\data_to_74hc[14] (\data_to_74hc[14] ), 
            .n1158(n1158), .n1155(n1155), .\data_to_74hc[8] (\data_to_74hc[8] ), 
            .s_clk_c_enable_69(s_clk_c_enable_69), .n375(n375), .data_clock_c_1(data_clock_c_1), 
            .n64(n59[3]), .n13(n18[3]), .n1174(n1174), .\data_to_74hc[10] (\data_to_74hc[10] ), 
            .\data_to_74hc[15] (\data_to_74hc[15] ), .n1159(n1159), .n25(n34[7]), 
            .\data_to_74hc[9] (\data_to_74hc[9] ), .write_en_N_437(write_en_N_437), 
            .n1161(n1161), .n32(n34[0]), .n682(n682)) /* synthesis syn_module_defined=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(71[18] 80[2])
    
endmodule
//
// Verilog Description of module control_74HC595D
//

module control_74HC595D (shift_register_15__N_445, shift_register_15__N_476, 
            shift_register_15__N_522, n1172, data_out_c, shift_register, 
            s_clk_c, GND_net, shift_register_15__N_501, shift_register_15__N_469, 
            \stat[0] , data_in_8bit, n1170, n26, shift_register_15__N_504, 
            shift_register_15__N_470, shift_register_15__N_507, shift_register_15__N_471, 
            shift_register_15__N_510, s_reset_c, \data_to_74hc[12] , shift_register_15__N_472, 
            shift_register_15__N_516, shift_register_15__N_474, shift_register_15__N_513, 
            insert_stat, latch_out_c, shift_register_15__N_473, n1169, 
            n27, \stat[1] , n373, n1168, n28, write_en, n459, 
            n1166, n29, data_in_copy_7__N_317, s_clk_c_enable_16, n1167, 
            n30, \data_to_74hc[11] , n1165, n31, n377, \data_to_74hc[13] , 
            shift_register_15__N_475, shift_register_15__N_519, \data_to_74hc[14] , 
            n1158, n1155, \data_to_74hc[8] , s_clk_c_enable_69, n375, 
            data_clock_c_1, n64, n13, n1174, \data_to_74hc[10] , \data_to_74hc[15] , 
            n1159, n25, \data_to_74hc[9] , write_en_N_437, n1161, 
            n32, n682) /* synthesis syn_module_defined=1 */ ;
    input [15:0]shift_register_15__N_445;
    input shift_register_15__N_476;
    input shift_register_15__N_522;
    input n1172;
    output data_out_c;
    output [15:0]shift_register;
    input s_clk_c;
    input GND_net;
    input shift_register_15__N_501;
    input shift_register_15__N_469;
    input \stat[0] ;
    input [7:0]data_in_8bit;
    input n1170;
    output n26;
    input shift_register_15__N_504;
    input shift_register_15__N_470;
    input shift_register_15__N_507;
    input shift_register_15__N_471;
    input shift_register_15__N_510;
    input s_reset_c;
    input \data_to_74hc[12] ;
    input shift_register_15__N_472;
    input shift_register_15__N_516;
    input shift_register_15__N_474;
    input shift_register_15__N_513;
    output [1:0]insert_stat;
    output latch_out_c;
    input shift_register_15__N_473;
    input n1169;
    output n27;
    input \stat[1] ;
    output n373;
    input n1168;
    output n28;
    input write_en;
    output n459;
    input n1166;
    output n29;
    input data_in_copy_7__N_317;
    output s_clk_c_enable_16;
    input n1167;
    output n30;
    input \data_to_74hc[11] ;
    input n1165;
    output n31;
    output n377;
    input \data_to_74hc[13] ;
    input shift_register_15__N_475;
    input shift_register_15__N_519;
    input \data_to_74hc[14] ;
    input n1158;
    output n1155;
    input \data_to_74hc[8] ;
    output s_clk_c_enable_69;
    output n375;
    output data_clock_c_1;
    input n64;
    output n13;
    output n1174;
    input \data_to_74hc[10] ;
    input \data_to_74hc[15] ;
    input n1159;
    output n25;
    input \data_to_74hc[9] ;
    output write_en_N_437;
    input n1161;
    output n32;
    input n682;
    
    wire [1:0]n180 /* synthesis is_clock=1, SET_AS_NETWORK=\dut/dut/can_write */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(14[12:21])
    wire s_clk_c /* synthesis SET_AS_NETWORK=s_clk_c, is_clock=1 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/top.v(2[16:21])
    
    wire n606, shift_register_15__N_486, n605, shift_register_15__N_464, 
        n507, n602, shift_register_15__N_489, can_write_enable_1;
    wire [1:0]stat;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(15[12:16])
    
    wire n242, n1, n601, shift_register_15__N_465, n1107;
    wire [7:0]counter;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(13[12:19])
    wire [7:0]n353;
    
    wire n562, n561, n560;
    wire [1:0]n179;
    
    wire n598, shift_register_15__N_492, n597, shift_register_15__N_466, 
        n594, shift_register_15__N_495, n593, shift_register_15__N_467, 
        n590, shift_register_15__N_498, n589, shift_register_15__N_468, 
        n586, n585, n1106, n1163, n582, n581, n578, n577, n1104, 
        n1105, n574, n573, n566, n565, n570;
    wire [1:0]insert_stat_c;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(11[12:23])
    
    wire n58, can_write_enable_10, data_out_N_587, n569, n580, n576, 
        n4, n787, n572, n568, n564, shift_register_15__N_463, shift_register_15__N_483, 
        shift_register_15__N_462, n604, n600, n592, n588, shift_register_15__N_480, 
        shift_register_15__N_461, shift_register_15__N_477, n614, n613, 
        n612, n610, n609, n608, n618, n617, n616, n509, n508, 
        s_clk_c_enable_42, n584, n596;
    
    FD1S3DX shift_register_i12_456_457_reset (.D(shift_register_15__N_445[12]), 
            .CK(n180[0]), .CD(shift_register_15__N_486), .Q(n606)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i12_456_457_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i12_456_457_set (.D(shift_register_15__N_445[12]), 
            .CK(n180[0]), .PD(shift_register_15__N_464), .Q(n605)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i12_456_457_set.GSR = "DISABLED";
    FD1S1D i358 (.D(n1172), .CK(shift_register_15__N_476), .CD(shift_register_15__N_522), 
           .Q(n507));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i358.GSR = "DISABLED";
    FD1S3DX shift_register_i11_452_453_reset (.D(shift_register_15__N_445[11]), 
            .CK(n180[0]), .CD(shift_register_15__N_489), .Q(n602)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i11_452_453_reset.GSR = "DISABLED";
    FD1P3AX data_out_90 (.D(shift_register[0]), .SP(can_write_enable_1), 
            .CK(n180[0]), .Q(data_out_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam data_out_90.GSR = "DISABLED";
    FD1S3IX stat_201__i0 (.D(n1), .CK(s_clk_c), .CD(n242), .Q(stat[0]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(37[25:33])
    defparam stat_201__i0.GSR = "ENABLED";
    FD1S3BX shift_register_i11_452_453_set (.D(shift_register_15__N_445[11]), 
            .CK(n180[0]), .PD(shift_register_15__N_465), .Q(n601)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i11_452_453_set.GSR = "DISABLED";
    CCU2D add_131_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1107), 
          .S0(n353[7]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(63[32:43])
    defparam add_131_9.INIT0 = 16'h5aaa;
    defparam add_131_9.INIT1 = 16'h0000;
    defparam add_131_9.INJECT1_0 = "NO";
    defparam add_131_9.INJECT1_1 = "NO";
    LUT4 i414_3_lut (.A(n562), .B(n561), .C(n560), .Z(shift_register[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i414_3_lut.init = 16'hcaca;
    LUT4 i218_2_lut (.A(stat[0]), .B(stat[1]), .Z(n179[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(24[9] 43[16])
    defparam i218_2_lut.init = 16'h6666;
    FD1S3DX shift_register_i10_448_449_reset (.D(shift_register_15__N_445[10]), 
            .CK(n180[0]), .CD(shift_register_15__N_492), .Q(n598)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i10_448_449_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i10_448_449_set (.D(shift_register_15__N_445[10]), 
            .CK(n180[0]), .PD(shift_register_15__N_466), .Q(n597)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i10_448_449_set.GSR = "DISABLED";
    FD1S3DX shift_register_i9_444_445_reset (.D(shift_register_15__N_445[9]), 
            .CK(n180[0]), .CD(shift_register_15__N_495), .Q(n594)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i9_444_445_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i9_444_445_set (.D(shift_register_15__N_445[9]), 
            .CK(n180[0]), .PD(shift_register_15__N_467), .Q(n593)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i9_444_445_set.GSR = "DISABLED";
    FD1S3DX shift_register_i8_440_441_reset (.D(shift_register_15__N_445[8]), 
            .CK(n180[0]), .CD(shift_register_15__N_498), .Q(n590)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i8_440_441_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i8_440_441_set (.D(shift_register_15__N_445[8]), 
            .CK(n180[0]), .PD(shift_register_15__N_468), .Q(n589)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i8_440_441_set.GSR = "DISABLED";
    FD1S3DX shift_register_i7_436_437_reset (.D(shift_register_15__N_445[7]), 
            .CK(n180[0]), .CD(shift_register_15__N_501), .Q(n586)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i7_436_437_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i7_436_437_set (.D(shift_register_15__N_445[7]), 
            .CK(n180[0]), .PD(shift_register_15__N_469), .Q(n585)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i7_436_437_set.GSR = "DISABLED";
    CCU2D add_131_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1106), .COUT(n1107), .S0(n353[5]), .S1(n353[6]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(63[32:43])
    defparam add_131_7.INIT0 = 16'h5aaa;
    defparam add_131_7.INIT1 = 16'h5aaa;
    defparam add_131_7.INJECT1_0 = "NO";
    defparam add_131_7.INJECT1_1 = "NO";
    LUT4 data_to_74hc_i1_i7_3_lut_4_lut (.A(\stat[0] ), .B(n1163), .C(data_in_8bit[6]), 
         .D(n1170), .Z(n26)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam data_to_74hc_i1_i7_3_lut_4_lut.init = 16'hf780;
    FD1S3DX shift_register_i6_432_433_reset (.D(shift_register_15__N_445[6]), 
            .CK(n180[0]), .CD(shift_register_15__N_504), .Q(n582)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i6_432_433_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i6_432_433_set (.D(shift_register_15__N_445[6]), 
            .CK(n180[0]), .PD(shift_register_15__N_470), .Q(n581)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i6_432_433_set.GSR = "DISABLED";
    FD1S3DX shift_register_i5_428_429_reset (.D(shift_register_15__N_445[5]), 
            .CK(n180[0]), .CD(shift_register_15__N_507), .Q(n578)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i5_428_429_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i5_428_429_set (.D(shift_register_15__N_445[5]), 
            .CK(n180[0]), .PD(shift_register_15__N_471), .Q(n577)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i5_428_429_set.GSR = "DISABLED";
    CCU2D add_131_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1104), .COUT(n1105), .S0(n353[1]), .S1(n353[2]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(63[32:43])
    defparam add_131_3.INIT0 = 16'h5aaa;
    defparam add_131_3.INIT1 = 16'h5aaa;
    defparam add_131_3.INJECT1_0 = "NO";
    defparam add_131_3.INJECT1_1 = "NO";
    FD1S3DX shift_register_i4_424_425_reset (.D(shift_register_15__N_445[4]), 
            .CK(n180[0]), .CD(shift_register_15__N_510), .Q(n574)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i4_424_425_reset.GSR = "DISABLED";
    LUT4 s_reset_I_0_110_2_lut (.A(s_reset_c), .B(\data_to_74hc[12] ), .Z(shift_register_15__N_486)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_110_2_lut.init = 16'h2222;
    FD1S3BX shift_register_i4_424_425_set (.D(shift_register_15__N_445[4]), 
            .CK(n180[0]), .PD(shift_register_15__N_472), .Q(n573)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i4_424_425_set.GSR = "DISABLED";
    FD1S3DX shift_register_i2_416_417_reset (.D(shift_register_15__N_445[2]), 
            .CK(n180[0]), .CD(shift_register_15__N_516), .Q(n566)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i2_416_417_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i2_416_417_set (.D(shift_register_15__N_445[2]), 
            .CK(n180[0]), .PD(shift_register_15__N_474), .Q(n565)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i2_416_417_set.GSR = "DISABLED";
    FD1S3DX shift_register_i3_420_421_reset (.D(shift_register_15__N_445[3]), 
            .CK(n180[0]), .CD(shift_register_15__N_513), .Q(n570)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i3_420_421_reset.GSR = "DISABLED";
    FD1S3IX insert_stat_i0 (.D(n58), .CK(n180[0]), .CD(insert_stat_c[1]), 
            .Q(insert_stat[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam insert_stat_i0.GSR = "ENABLED";
    FD1P3AX latch_out_88 (.D(data_out_N_587), .SP(can_write_enable_10), 
            .CK(n180[0]), .Q(latch_out_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam latch_out_88.GSR = "ENABLED";
    FD1S3BX shift_register_i3_420_421_set (.D(shift_register_15__N_445[3]), 
            .CK(n180[0]), .PD(shift_register_15__N_473), .Q(n569)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i3_420_421_set.GSR = "DISABLED";
    LUT4 data_to_74hc_i1_i6_3_lut_4_lut (.A(\stat[0] ), .B(n1163), .C(data_in_8bit[5]), 
         .D(n1169), .Z(n27)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam data_to_74hc_i1_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(insert_stat[0]), .B(insert_stat_c[1]), 
         .C(\stat[1] ), .D(\stat[0] ), .Z(n373)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(11[12:23])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'he2e0;
    LUT4 data_to_74hc_i1_i5_3_lut_4_lut (.A(\stat[0] ), .B(n1163), .C(data_in_8bit[4]), 
         .D(n1168), .Z(n28)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam data_to_74hc_i1_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(insert_stat[0]), .B(insert_stat_c[1]), 
         .C(write_en), .D(data_out_N_587), .Z(n459)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h2031;
    LUT4 data_to_74hc_i1_i4_3_lut_4_lut (.A(\stat[0] ), .B(n1163), .C(data_in_8bit[3]), 
         .D(n1166), .Z(n29)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam data_to_74hc_i1_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 i434_3_lut (.A(n582), .B(n581), .C(n580), .Z(shift_register[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i434_3_lut.init = 16'hcaca;
    LUT4 i430_3_lut (.A(n578), .B(n577), .C(n576), .Z(shift_register[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i430_3_lut.init = 16'hcaca;
    LUT4 i996_2_lut_rep_14 (.A(insert_stat[0]), .B(insert_stat_c[1]), .Z(can_write_enable_10)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i996_2_lut_rep_14.init = 16'h1111;
    LUT4 i219_1_lut (.A(stat[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(24[9] 43[16])
    defparam i219_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut (.A(insert_stat[0]), .B(insert_stat_c[1]), 
         .C(data_in_copy_7__N_317), .D(\stat[1] ), .Z(n4)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i2_2_lut_3_lut (.A(insert_stat[0]), .B(insert_stat_c[1]), .C(data_out_N_587), 
         .Z(n787)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i999_2_lut_3_lut_3_lut_4_lut (.A(insert_stat[0]), .B(insert_stat_c[1]), 
         .C(data_out_N_587), .D(s_reset_c), .Z(can_write_enable_1)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i999_2_lut_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_15 (.A(insert_stat[0]), .B(insert_stat_c[1]), .Z(n1163)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i1_2_lut_rep_15.init = 16'h2222;
    LUT4 i1_2_lut_rep_8_3_lut (.A(insert_stat[0]), .B(insert_stat_c[1]), 
         .C(\stat[0] ), .Z(s_clk_c_enable_16)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i1_2_lut_rep_8_3_lut.init = 16'h2020;
    LUT4 data_to_74hc_i1_i3_3_lut_4_lut (.A(\stat[0] ), .B(n1163), .C(data_in_8bit[2]), 
         .D(n1167), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam data_to_74hc_i1_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 s_reset_I_0_95_2_lut (.A(s_reset_c), .B(\data_to_74hc[11] ), .Z(shift_register_15__N_465)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_95_2_lut.init = 16'h8888;
    LUT4 i426_3_lut (.A(n574), .B(n573), .C(n572), .Z(shift_register[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i426_3_lut.init = 16'hcaca;
    LUT4 i736_3_lut_4_lut (.A(\stat[0] ), .B(n1163), .C(data_in_8bit[1]), 
         .D(n1165), .Z(n31)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i736_3_lut_4_lut.init = 16'hf780;
    LUT4 i422_3_lut (.A(n570), .B(n569), .C(n568), .Z(shift_register[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i422_3_lut.init = 16'hcaca;
    LUT4 i418_3_lut (.A(n566), .B(n565), .C(n564), .Z(shift_register[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i418_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(insert_stat[0]), .B(data_out_N_587), .Z(n58)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i865_4_lut (.A(insert_stat_c[1]), .B(insert_stat[0]), .C(data_in_copy_7__N_317), 
         .D(\stat[1] ), .Z(n377)) /* synthesis lut_function=(A (C)+!A !(B+!(C+(D)))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/number_6.v(11[12:23])
    defparam i865_4_lut.init = 16'hb1b0;
    LUT4 s_reset_I_0_93_2_lut (.A(s_reset_c), .B(\data_to_74hc[13] ), .Z(shift_register_15__N_463)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_93_2_lut.init = 16'h8888;
    FD1S1D i411 (.D(n1172), .CK(shift_register_15__N_475), .CD(shift_register_15__N_519), 
           .Q(n560));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i411.GSR = "DISABLED";
    LUT4 s_reset_I_0_109_2_lut (.A(s_reset_c), .B(\data_to_74hc[13] ), .Z(shift_register_15__N_483)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_109_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_94_2_lut (.A(s_reset_c), .B(\data_to_74hc[12] ), .Z(shift_register_15__N_464)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_94_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_92_2_lut (.A(s_reset_c), .B(\data_to_74hc[14] ), .Z(shift_register_15__N_462)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_92_2_lut.init = 16'h8888;
    FD1S3DX shift_register_i1_412_413_reset (.D(shift_register_15__N_445[1]), 
            .CK(n180[0]), .CD(shift_register_15__N_519), .Q(n562)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i1_412_413_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i1_412_413_set (.D(shift_register_15__N_445[1]), 
            .CK(n180[0]), .PD(shift_register_15__N_475), .Q(n561)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i1_412_413_set.GSR = "DISABLED";
    FD1S3IX stat_201__i1 (.D(n179[1]), .CK(s_clk_c), .CD(n242), .Q(stat[1]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(37[25:33])
    defparam stat_201__i1.GSR = "ENABLED";
    LUT4 s_reset_I_0_111_2_lut (.A(s_reset_c), .B(\data_to_74hc[11] ), .Z(shift_register_15__N_489)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_111_2_lut.init = 16'h2222;
    LUT4 i458_3_lut (.A(n606), .B(n605), .C(n604), .Z(shift_register[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i458_3_lut.init = 16'hcaca;
    LUT4 i454_3_lut (.A(n602), .B(n601), .C(n600), .Z(shift_register[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i454_3_lut.init = 16'hcaca;
    LUT4 i446_3_lut (.A(n594), .B(n593), .C(n592), .Z(shift_register[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i446_3_lut.init = 16'hcaca;
    LUT4 i472_2_lut_rep_7_3_lut_4_lut (.A(insert_stat[0]), .B(insert_stat_c[1]), 
         .C(n1158), .D(data_in_copy_7__N_317), .Z(n1155)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i472_2_lut_rep_7_3_lut_4_lut.init = 16'h2000;
    LUT4 i442_3_lut (.A(n590), .B(n589), .C(n588), .Z(shift_register[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i442_3_lut.init = 16'hcaca;
    LUT4 s_reset_I_0_114_2_lut (.A(s_reset_c), .B(\data_to_74hc[8] ), .Z(shift_register_15__N_498)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_114_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_108_2_lut (.A(s_reset_c), .B(\data_to_74hc[14] ), .Z(shift_register_15__N_480)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_108_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_16 (.A(insert_stat[0]), .B(insert_stat_c[1]), .C(data_in_copy_7__N_317), 
         .Z(s_clk_c_enable_69)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i1_2_lut_rep_16.init = 16'h2020;
    LUT4 i1_4_lut_4_lut (.A(insert_stat[0]), .B(insert_stat_c[1]), .C(data_in_copy_7__N_317), 
         .D(\stat[0] ), .Z(n375)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i1_4_lut_4_lut.init = 16'hfd20;
    FD1S3AX data_clock_33_i1 (.D(n179[1]), .CK(s_clk_c), .Q(data_clock_c_1));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(24[9] 43[16])
    defparam data_clock_33_i1.GSR = "ENABLED";
    LUT4 s_reset_I_0_98_2_lut (.A(s_reset_c), .B(\data_to_74hc[8] ), .Z(shift_register_15__N_468)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_98_2_lut.init = 16'h8888;
    LUT4 i728_3_lut_4_lut (.A(data_in_copy_7__N_317), .B(n1163), .C(n64), 
         .D(data_in_8bit[3]), .Z(n13)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i728_3_lut_4_lut.init = 16'hf780;
    LUT4 i472_2_lut_rep_24 (.A(insert_stat[0]), .B(insert_stat_c[1]), .C(n1158), 
         .D(data_in_copy_7__N_317), .Z(n1174)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i472_2_lut_rep_24.init = 16'h2000;
    LUT4 s_reset_I_0_112_2_lut (.A(s_reset_c), .B(\data_to_74hc[10] ), .Z(shift_register_15__N_492)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_112_2_lut.init = 16'h2222;
    LUT4 s_reset_I_0_91_2_lut (.A(s_reset_c), .B(\data_to_74hc[15] ), .Z(shift_register_15__N_461)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_91_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_107_2_lut (.A(s_reset_c), .B(\data_to_74hc[15] ), .Z(shift_register_15__N_477)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_107_2_lut.init = 16'h2222;
    LUT4 i3_4_lut (.A(counter[4]), .B(counter[5]), .C(counter[7]), .D(counter[6]), 
         .Z(data_out_N_587)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 data_to_74hc_i1_i8_3_lut_4_lut (.A(\stat[0] ), .B(n1163), .C(data_in_8bit[7]), 
         .D(n1159), .Z(n25)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam data_to_74hc_i1_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 s_reset_I_0_97_2_lut (.A(s_reset_c), .B(\data_to_74hc[9] ), .Z(shift_register_15__N_467)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_97_2_lut.init = 16'h8888;
    LUT4 i466_3_lut (.A(n614), .B(n613), .C(n612), .Z(shift_register[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i466_3_lut.init = 16'hcaca;
    LUT4 i462_3_lut (.A(n610), .B(n609), .C(n608), .Z(shift_register[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i462_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_2 (.A(\stat[0] ), .B(n1163), .C(n4), .D(write_en), 
         .Z(write_en_N_437)) /* synthesis lut_function=(A (B+(D))+!A (C (D))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i1_4_lut_4_lut_adj_2.init = 16'hfa88;
    LUT4 data_to_74hc_i1_i1_3_lut_4_lut (.A(\stat[0] ), .B(n1163), .C(data_in_8bit[0]), 
         .D(n1161), .Z(n32)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam data_to_74hc_i1_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i470_3_lut (.A(n618), .B(n617), .C(n616), .Z(shift_register[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i470_3_lut.init = 16'hcaca;
    FD1S3DX shift_register_i0_359_360_reset (.D(shift_register_15__N_445[0]), 
            .CK(n180[0]), .CD(shift_register_15__N_522), .Q(n509)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i0_359_360_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i0_359_360_set (.D(shift_register_15__N_445[0]), 
            .CK(n180[0]), .PD(shift_register_15__N_476), .Q(n508)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i0_359_360_set.GSR = "DISABLED";
    LUT4 i497_1_lut (.A(stat[1]), .Z(s_clk_c_enable_42)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(37[25:33])
    defparam i497_1_lut.init = 16'h5555;
    LUT4 i438_3_lut (.A(n586), .B(n585), .C(n584), .Z(shift_register[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i438_3_lut.init = 16'hcaca;
    FD1S1D i415 (.D(n1172), .CK(shift_register_15__N_474), .CD(shift_register_15__N_516), 
           .Q(n564));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i415.GSR = "DISABLED";
    FD1S1D i419 (.D(n1172), .CK(shift_register_15__N_473), .CD(shift_register_15__N_513), 
           .Q(n568));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i419.GSR = "DISABLED";
    FD1S1D i423 (.D(n1172), .CK(shift_register_15__N_472), .CD(shift_register_15__N_510), 
           .Q(n572));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i423.GSR = "DISABLED";
    FD1S1D i427 (.D(n1172), .CK(shift_register_15__N_471), .CD(shift_register_15__N_507), 
           .Q(n576));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i427.GSR = "DISABLED";
    FD1S1D i431 (.D(n1172), .CK(shift_register_15__N_470), .CD(shift_register_15__N_504), 
           .Q(n580));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i431.GSR = "DISABLED";
    FD1S1D i435 (.D(n1172), .CK(shift_register_15__N_469), .CD(shift_register_15__N_501), 
           .Q(n584));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i435.GSR = "DISABLED";
    FD1S1D i439 (.D(n1172), .CK(shift_register_15__N_468), .CD(shift_register_15__N_498), 
           .Q(n588));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i439.GSR = "DISABLED";
    FD1S1D i443 (.D(n1172), .CK(shift_register_15__N_467), .CD(shift_register_15__N_495), 
           .Q(n592));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i443.GSR = "DISABLED";
    FD1S1D i447 (.D(n1172), .CK(shift_register_15__N_466), .CD(shift_register_15__N_492), 
           .Q(n596));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i447.GSR = "DISABLED";
    FD1S1D i451 (.D(n1172), .CK(shift_register_15__N_465), .CD(shift_register_15__N_489), 
           .Q(n600));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i451.GSR = "DISABLED";
    FD1S1D i455 (.D(n1172), .CK(shift_register_15__N_464), .CD(shift_register_15__N_486), 
           .Q(n604));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i455.GSR = "DISABLED";
    FD1S1D i459 (.D(n1172), .CK(shift_register_15__N_463), .CD(shift_register_15__N_483), 
           .Q(n608));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i459.GSR = "DISABLED";
    FD1S1D i463 (.D(n1172), .CK(shift_register_15__N_462), .CD(shift_register_15__N_480), 
           .Q(n612));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i463.GSR = "DISABLED";
    FD1S1D i467 (.D(n1172), .CK(shift_register_15__N_461), .CD(shift_register_15__N_477), 
           .Q(n616));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i467.GSR = "DISABLED";
    FD1S3BX shift_register_i13_460_461_set (.D(shift_register_15__N_445[13]), 
            .CK(n180[0]), .PD(shift_register_15__N_463), .Q(n609)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i13_460_461_set.GSR = "DISABLED";
    FD1S3DX shift_register_i13_460_461_reset (.D(shift_register_15__N_445[13]), 
            .CK(n180[0]), .CD(shift_register_15__N_483), .Q(n610)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i13_460_461_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i14_464_465_set (.D(shift_register_15__N_445[14]), 
            .CK(n180[0]), .PD(shift_register_15__N_462), .Q(n613)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i14_464_465_set.GSR = "DISABLED";
    FD1S3DX shift_register_i14_464_465_reset (.D(shift_register_15__N_445[14]), 
            .CK(n180[0]), .CD(shift_register_15__N_480), .Q(n614)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i14_464_465_reset.GSR = "DISABLED";
    FD1S3BX shift_register_i15_468_469_set (.D(shift_register_15__N_445[15]), 
            .CK(n180[0]), .PD(shift_register_15__N_461), .Q(n617)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i15_468_469_set.GSR = "DISABLED";
    FD1S3DX shift_register_i15_468_469_reset (.D(shift_register_15__N_445[15]), 
            .CK(n180[0]), .CD(shift_register_15__N_477), .Q(n618)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam shift_register_i15_468_469_reset.GSR = "DISABLED";
    CCU2D add_131_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1105), .COUT(n1106), .S0(n353[3]), .S1(n353[4]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(63[32:43])
    defparam add_131_5.INIT0 = 16'h5aaa;
    defparam add_131_5.INIT1 = 16'h5aaa;
    defparam add_131_5.INJECT1_0 = "NO";
    defparam add_131_5.INJECT1_1 = "NO";
    FD1P3AX data_clock_33_i0 (.D(n1), .SP(s_clk_c_enable_42), .CK(s_clk_c), 
            .Q(n180[0]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(24[9] 43[16])
    defparam data_clock_33_i0.GSR = "ENABLED";
    FD1P3IX counter_i0 (.D(n353[0]), .SP(can_write_enable_10), .CD(n787), 
            .CK(n180[0]), .Q(counter[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam counter_i0.GSR = "ENABLED";
    FD1P3IX counter_i1 (.D(n353[1]), .SP(can_write_enable_10), .CD(n787), 
            .CK(n180[0]), .Q(counter[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam counter_i1.GSR = "ENABLED";
    FD1P3IX counter_i2 (.D(n353[2]), .SP(can_write_enable_10), .CD(n787), 
            .CK(n180[0]), .Q(counter[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam counter_i2.GSR = "ENABLED";
    FD1P3IX counter_i3 (.D(n353[3]), .SP(can_write_enable_10), .CD(n787), 
            .CK(n180[0]), .Q(counter[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam counter_i3.GSR = "ENABLED";
    FD1P3IX counter_i4 (.D(n353[4]), .SP(can_write_enable_10), .CD(n787), 
            .CK(n180[0]), .Q(counter[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam counter_i4.GSR = "ENABLED";
    FD1P3IX counter_i5 (.D(n353[5]), .SP(can_write_enable_10), .CD(n787), 
            .CK(n180[0]), .Q(counter[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam counter_i5.GSR = "ENABLED";
    FD1P3IX counter_i6 (.D(n353[6]), .SP(can_write_enable_10), .CD(n787), 
            .CK(n180[0]), .Q(counter[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam counter_i6.GSR = "ENABLED";
    FD1P3IX counter_i7 (.D(n353[7]), .SP(can_write_enable_10), .CD(n787), 
            .CK(n180[0]), .Q(counter[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam counter_i7.GSR = "ENABLED";
    FD1S3IX insert_stat_i1 (.D(n1163), .CK(n180[0]), .CD(n682), .Q(insert_stat_c[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=71, LSE_RLINE=80 */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam insert_stat_i1.GSR = "ENABLED";
    LUT4 i450_3_lut (.A(n598), .B(n597), .C(n596), .Z(shift_register[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i450_3_lut.init = 16'hcaca;
    CCU2D add_131_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1104), .S1(n353[0]));   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(63[32:43])
    defparam add_131_1.INIT0 = 16'hF000;
    defparam add_131_1.INIT1 = 16'h5555;
    defparam add_131_1.INJECT1_0 = "NO";
    defparam add_131_1.INJECT1_1 = "NO";
    LUT4 s_reset_I_0_96_2_lut (.A(s_reset_c), .B(\data_to_74hc[10] ), .Z(shift_register_15__N_466)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_96_2_lut.init = 16'h8888;
    LUT4 s_reset_I_0_113_2_lut (.A(s_reset_c), .B(\data_to_74hc[9] ), .Z(shift_register_15__N_495)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam s_reset_I_0_113_2_lut.init = 16'h2222;
    LUT4 i361_3_lut (.A(n509), .B(n508), .C(n507), .Z(shift_register[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(55[14] 82[8])
    defparam i361_3_lut.init = 16'hcaca;
    LUT4 i99_2_lut (.A(stat[0]), .B(stat[1]), .Z(n242)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/37543/documents/project/fpga/step_baseboard_v40_v2/control_74hc.v(24[9] 43[16])
    defparam i99_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

