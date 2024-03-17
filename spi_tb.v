`timescale 1ns/1ps
module testbench_spi();

    reg s_clk;             // 主设备控制的时钟信号
    reg s_chip_select;     // 片选信号
    reg s_data;            // 主设备发送的数据
    wire [47:0] data_in; // 包含6个16位寄存器的数组

    // Instantiate the spi_slave module
    spi_slave dut (
        .master_clk(s_clk),
        .master_chip_select(s_chip_select),
        .master_data(s_data),
        .data_in(data_in)
    );

    // Clock generation
    always begin
        #2 s_clk = ~s_clk;
    end

    // Test sequence
    initial begin
        s_clk = 0;
        s_chip_select = 0;
        s_data = 16'h0000; // 初始化发送数据

        // 开始测试
        #10 s_chip_select = 1;
        // 发送数据到 spi_slave
        // 第一个寄存器写入 16 位数据
        s_data = 1'h1;
        #100;
        // 第二个寄存器写入 16 位数据
        s_data = 1'h0;
        #100;
        // 第三个寄存器写入 16 位数据
        s_data = 1'b1;
        #100;
        // 第四个寄存器写入 16 位数据
        s_data = 1'b0;
        #100;
        // 第五个寄存器写入 16 位数据
        s_data = 1'b1;
        #100;
        // 第六个寄存器写入 16 位数据
        s_data = 1'b0;
        #100;
        // 结束测试
        s_chip_select = 0;
        #100;
        $finish;
    end

endmodule