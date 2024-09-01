`timescale 1ns / 1ps

module tb_uart_top;

    // ����ʱ��Ƶ��
    parameter CLK_FREQ = 100;  // 100 MHz

    // ʱ���ź�
    reg clk;
    reg rst_n;
    reg rs232_rxd;
    reg rx_start;

    // ����ź�
    wire rs232_txd;
    wire O_rs232_txd;
    wire [6:0] led;
    wire [1:0] px;
    wire [7:0] led_reg;
    wire W_bps_rx_clk;
    wire   [7:0] O_rx_Data;
    wire         O_rx_done;
    wire  [31:0] O_data_counter;
    // ʵ���� UART_TOP ģ��
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
    


    // ʱ������
    always #5 clk = ~clk;

    // ��ʼֵ
    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        rs232_rxd = 1'b1;
        rx_start = 1'b0;

        // �ȴ�һ��ʱ����ͷŸ�λ�ź�
        #1000;  // �ȴ� 1 ��
        rst_n = 1'b1;
    end

    // ������������
    initial begin
        // �ȴ�һ��ʱ�俪ʼ��������
        #100000;  // �ȴ� 10 ��
        rx_start = 1'b1;
        #W_bps_rx_clk;
        // ����һ���ֽڵ����� "A" (ASCII 65)
        rs232_rxd = 1'b0;  // ��ʼλ
        #8680;  // ��Լ8680��ʱ������
        rs232_rxd = 1'b0;  // ����λ
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
        rs232_rxd = 1'b1;  // ֹͣλ
        #8680;

#868000;
        // ����һ���ֽڵ����� "A" (ASCII 65)
        rs232_rxd = 1'b0;  // ��ʼλ
        #8680;  // ��Լ8680��ʱ������
        rs232_rxd = 1'b0;  // ����λ
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
        rs232_rxd = 1'b1;  // ֹͣλ
        #8680;
        #868000;

                // ����һ���ֽڵ����� "A" (ASCII 65)
        rs232_rxd = 1'b0;  // ��ʼλ
        #8680;  // ��Լ8680��ʱ������
        rs232_rxd = 1'b0;  // ����λ
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
        rs232_rxd = 1'b1;  // ֹͣλ
        #8680;
        #868000;

                // ����һ���ֽڵ����� "A" (ASCII 65)
//        #8680;  // ��Լ8680��ʱ������
//        rs232_rxd = 1'b0;  // ����λ
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
//        rs232_rxd = 1'b1;  // ֹͣλ
//        #8680;
//        // ʹ�ܽ���
        #50000;  // �ȴ�һ��ʱ����ȷ�����ݱ���ȫ����
        rx_start = 1'b0;

        // �ȴ�һ��ʱ��۲���
        #50000;
        $finish;
    end

    // ������
    always @(posedge clk) begin
        if (rst_n == 1'b1) begin
            if (led_reg[0] == 1'b1) begin
                $display("LED 0 is ON at time %0d ns", $time);
            end
        end
    end

endmodule