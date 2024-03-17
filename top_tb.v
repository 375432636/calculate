`timescale 1ns/1ps
module testbench_top();

    reg s_clk;
    reg s_reset;
    reg [15:0] data_in;
    wire data_out;
    wire latch_out;
    wire data_clock;

    // Instantiate the control_74HC595D module
    top dut (
        .s_clk(s_clk),
        .s_reset(s_reset),
        .data_out(data_out),
        .latch_out(latch_out),
        .data_clock(data_clock)
    );

    // Clock generation
    always begin
        #5 s_clk = ~s_clk;
    end

    // Reset generation
    initial begin
        s_clk = 0;
        s_reset = 1;
        data_in = 16'h1234; // Input data
        #10;
        s_reset = 0;
        #10;
        data_in = 16'h5678; // Change input data
        #100;
        $finish;
    end


endmodule