module spi_slave(
    input wire master_clk,          // 主设备控制的时钟信号
    input wire master_chip_select,  // 片选信号
    input wire master_data,         // 主设备发送的数据
    output reg [47:0] data_in // 包含6个16位寄存器的数据
);

    // SPI Slave 逻辑
    always @(posedge master_clk) begin
        if (master_chip_select) begin
            // 如果片选信号使能，说明开始写入数据
            data_in <= {data_in[46:0], master_data}; // 在暂存寄存器中存储数据
        end
    end
endmodule