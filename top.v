module top(
    input wire s_clk,
    input wire s_reset,
    output data_out,
    output latch_out,
    output data_clock
);
    reg [15:0] data_in = 16'b11111110_01100000;
    control_74HC595D dut (
        .s_clk(s_clk),
        .s_reset(s_reset),
        .data_in(data_in),
        .data_out(data_out),
        .data_clock(data_clock),
        .latch_out(latch_out)
    );
endmodule