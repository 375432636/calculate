module top(
    input wire s_clk,
    input wire s_reset,
    output data_out,
    output latch_out,
    output data_clock
);
    reg [47:0] data_in = 48'b11111100_01100000_11011010_11110010_01100110_10110110;
    // reg [47:0] data_in = 48'b11011111_11101111_11110111_11111011_11111101_11111110;
    control_74HC595D_6number dut (
        .s_clk(s_clk),
        .s_reset(s_reset),
        .data_in(data_in),
        .data_out(data_out),
        .data_clock(data_clock),
        .latch_out(latch_out)
    );
endmodule