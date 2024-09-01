`timescale 1ns / 1ps

module tb_uart_top;

    // 定义时钟频率
    parameter CLK_FREQ = 100;  // 100 MHz

    // 时钟信号
    reg clk;
    reg rst_n;
    reg rs232_rxd;
    reg rx_start;

    // 输出信号
    wire rs232_txd;
    wire O_rs232_txd;
    wire [6:0] led;
    wire [1:0] px;
    wire [7:0] led_reg;
    wire W_bps_rx_clk;
    wire   [7:0] O_rx_Data;
    wire         O_rx_done;
    wire  [31:0] O_data_counter;
    // 实例化 UART_TOP 模块
    uart_top u_uart_top (
        .I_clk(clk),
        .I_rst_n(rst_n),
        .I_rs232_rxd(rs232_rxd),
        .I_rx_start(rx_start),
        .O_rs232_txd(O_rs232_txd),
        .O_rx_done(O_rx_done),
        .O_rx_Data(O_rx_Data),
        .O_data_counter(O_data_counter)
//        .O_led(led),
//        .O_px(px),
//        .led(led_reg)
//        .W_bps_rx_clk(W_bps_rx_clk)
    );
    


    // 时钟生成
    always #5 clk = ~clk;

    // 初始值
    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        rs232_rxd = 1'b1;
        rx_start = 1'b0;

        // 等待一段时间后释放复位信号
        #1000;  // 等待 1 秒
        rst_n = 1'b1;
    end

    // 串行数据生成
    initial begin
        // 等待一段时间开始发送数据
        #100000;  // 等待 10 秒
        rx_start = 1'b1;
        #W_bps_rx_clk;
        // 发送一个字节的数据 "A" (ASCII 65)
        rs232_rxd = 1'b0;  // 起始位
        #8680;  // 大约8680个时钟周期
        rs232_rxd = 1'b0;  // 数据位
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b1;  // 停止位
        #8680;

#868000;
        // 发送一个字节的数据 "A" (ASCII 65)
        rs232_rxd = 1'b0;  // 起始位
        #8680;  // 大约8680个时钟周期
        rs232_rxd = 1'b0;  // 数据位
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b1;  // 停止位
        #8680;
        #868000;

                // 发送一个字节的数据 "A" (ASCII 65)
        rs232_rxd = 1'b0;  // 起始位
        #8680;  // 大约8680个时钟周期
        rs232_rxd = 1'b0;  // 数据位
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b1;
        #8680;
        rs232_rxd = 1'b0;
        #8680;
        rs232_rxd = 1'b1;  // 停止位
        #8680;
        #868000;

                // 发送一个字节的数据 "A" (ASCII 65)
//        #8680;  // 大约8680个时钟周期
//        rs232_rxd = 1'b0;  // 数据位
//        #8680;
//        rs232_rxd = 1'b1;
//        #8680;
//        rs232_rxd = 1'b0;
//        #8680;
//        rs232_rxd = 1'b1;
//        #8680;
//        rs232_rxd = 1'b0;
//        #8680;
//        rs232_rxd = 1'b1;
//        #8680;
//        rs232_rxd = 1'b0;
//        #8680;
//        rs232_rxd = 1'b1;
//        #8680;
//        rs232_rxd = 1'b1;  // 停止位
//        #8680;
//        // 使能接收
        #50000;  // 等待一段时间以确保数据被完全接收
        rx_start = 1'b0;

        // 等待一段时间观察结果
        #50000;
        $finish;
    end

    // 监控输出
    always @(posedge clk) begin
        if (rst_n == 1'b1) begin
            if (led_reg[0] == 1'b1) begin
                $display("LED 0 is ON at time %0d ns", $time);
            end
        end
    end

endmodule