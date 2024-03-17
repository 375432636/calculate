module control_74HC595D(
    input wire s_clk,
    input wire s_reset,
    input wire [15:0] data_in,
    output reg data_out,
    output reg latch_out,
    output reg data_clock
    );

reg [15:0] shift_register;
reg [7:0]  counter;
reg        can_write;
reg [1:0]  stat ;

always @(posedge s_clk or posedge s_reset) begin
    if (s_reset) begin
        data_clock <= 'b0;
        stat <='b0;
        can_write<='b0;
    end
    else begin
        case (stat)
            2'd0: begin
                data_clock <= 'b0;
                stat <= stat+'b1;
                can_write<='b1;
            end
            2'd1: begin
                data_clock <= 'b1; 
                stat <= stat+'b1;
                can_write<='b0;
            end
            2'd2: begin
                data_clock <= 'b1; 
                stat <= stat+'b1;
            end
            2'd3: begin
                data_clock <= 'b0;
                stat <= 'b0;
            end
        endcase
    end
end


always @(posedge can_write or posedge s_reset) begin
    if (s_reset) begin
        shift_register <= data_in;
        counter <= 8'b0;
        latch_out = 1'b0;

    end else begin
        if (counter < 8'd16) begin
            latch_out <= 1'b0;
            // 移位操作
            data_out <= shift_register[0];
            shift_register <= shift_register>>1;
            counter <= counter + 1;
        end 
        else begin
            // 数据输出
            shift_register <= data_in;
            latch_out <= 1'b1;
            counter <= 8'b0;
        end

    end
end

endmodule