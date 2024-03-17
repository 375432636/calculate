`default_nettype none
`define DUMPSTR(x) `"top_tb.vcd`"
`timescale 10 ns / 10 ns
module testbench_top();
parameter DURATION = 10;
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
    end

initial begin

  //-- File were to store the simulation results
      $dumpfile("top_tb.vcd");
 
      //-- Dump all the data into that file when simulation finishes
      $dumpvars(0, testbench_top);
      $dumpvars(0, testbench_top.dut.dut.mask_key);
//   $dumpvars(0, sin_tb);
   #(10000*DURATION) $display("End of simulation");
  $finish;
end

endmodule