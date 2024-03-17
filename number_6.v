module control_74HC595D_6number(
    input wire s_clk,
    input wire s_reset,
    input wire [47:0] data_in,
    output data_out,
    output latch_out,
    output data_clock
);


wire [1:0] insert_stat;
reg write_en;
reg [15:0] data_to_74hc;
// 新增变量用于存储每次循环的计数
reg [3:0] loop_counter;
reg [7:0] mask_key ;
reg [7:0] data_in_8bit;
reg [47:0] data_in_copy;
reg [7:0] stat;
always @(posedge s_reset or posedge s_clk) begin
    if (s_reset) begin
        loop_counter <= 3'b0;
        mask_key = 8'b1111_1110;
        data_in_8bit = data_in_copy[7:0];
        data_to_74hc = {mask_key,data_in_8bit};
        data_in_copy =data_in;
        write_en  = 'b1;      
        stat = 1'b0;
    end
    else begin
        case (stat)
            8'd0: begin 
                if (insert_stat==2'b1) begin

                    if (loop_counter==3'd5) begin
                        data_in_copy = data_in;
                        data_in_8bit = data_in_copy[7:0];
                        mask_key     = 8'b1111_1110;
                        loop_counter <=3'b0;
                    end
                    else begin
                        data_in_copy = {data_in_copy[7:0], data_in_copy[47:8]};
                        data_in_8bit = data_in_copy[7:0];
                        mask_key     = {mask_key[6:0],mask_key[7]};
                        // data_in_copy <= data_in_copy>>8;
                        loop_counter <= loop_counter+3'b1;
                    end
                    stat <= 8'd1;
                end
            end
            8'd1:begin
                if (insert_stat ==2'b1) begin
                    write_en  = 'b1;      
                    data_to_74hc = {mask_key,data_in_8bit};
                    stat <= 8'd2;
                end
            end
            8'd2:begin
                if (insert_stat ==2'b0) begin
                    write_en  = 'b0;      
                    stat <= 8'd0;
                end
            end
                
            default: 
                stat <= stat+1;
        endcase
    end
end

control_74HC595D dut (
    .s_clk(s_clk),
    .s_reset(s_reset),
    .data_in(data_to_74hc),
    .data_out(data_out),
    .data_clock(data_clock),
    .latch_out(latch_out),
    .write_en( write_en),
    .insert_stat(insert_stat)
);
endmodule