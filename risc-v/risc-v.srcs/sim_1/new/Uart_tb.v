`timescale 1ns / 1ps

module Uart_tb;
    // ����ʱ��Ƶ��
    parameter CLK_FREQ = 100;  // 100 MHz

    // ʱ���ź�
    reg clk;
    reg rst_n;
    reg rs232_rxd;
    reg rx_start;

    wire rx_done;
    wire [31:0] counter;
    wire [7:0] data;
    
    
    ReadUart read_uart(
        .rx_done(rx_done),
        .counter(counter),
        .data(data)
    );

    ReceiveUart receive_uart(
        .I_clk(clk),
        .I_rst_n(rst_n),
        .I_rs232_rxd(rs232_rxd),
        .I_rx_start(rx_start),
        
        .O_rs232_txd(rs232_txd),
        .O_rx_done(rx_done),
        .O_rx_Data(data),
        .O_data_counter(counter)
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
        #2000;
        rx_start = 1'b1;
        #100;

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


       // ʹ�ܽ���
        #50000;  // �ȴ�һ��ʱ����ȷ�����ݱ���ȫ����
        rx_start = 1'b0;

        // �ȴ�һ��ʱ��۲���
        #50000;
        $finish;
    end
 
endmodule
