module control_74HC595D(
    input wire s_clk,
    input wire s_reset,
    input wire [47:0] data_in,
    output reg data_out,
    output reg latch_out,
    output reg data_clock
    );


reg [15:0] data_to_74hc;
// 新增变量用于存储每次循环的计数
reg [2:0] loop_counter;
reg [7:0] mask_key ;
reg [7:0] data_in_8bit;
always @(posedge s_reset or posedge latch_out) begin
    if (s_reset) begin
        loop_counter <= 3'b0;
        mask_key <= 8'b1111_1110;
        data_in_8bit <= data_in_copy[7:0];
    end
    if (latch_out) begin
        if (loop_counter==3'b0) begin
            mask_key <= 8'b1111_1110;
        end
        else begin
            mask_key<= mask_key<<1;
        end
        data_in_8bit <= data_in_copy[7:0];
        shift_register <= {mask_key,data_in_8bit};
    end
end

control_74HC595D dut (
    .s_clk(s_clk),
    .s_reset(s_reset),
    .data_in(data_in),
    .data_out(data_out),
    .data_clock(data_clock),
    .latch_out(latch_out)
);