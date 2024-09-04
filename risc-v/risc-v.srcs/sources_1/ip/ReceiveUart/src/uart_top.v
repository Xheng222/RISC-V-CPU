`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/29 15:34:29
// Design Name: 
// Module Name: uart_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_top(
    input          I_clk           , // ϵͳ100MHzʱ��
    input          I_rst_n         , // ϵͳȫ�ָ�λ
    input          I_rs232_rxd     , // ���յĴ������ݣ���Ӳ�����봮������
    input          I_rx_start      , // ����ʹ���ź�
    output         O_rs232_txd     , // ���͵Ĵ������ݣ���Ӳ�����봮������
    output   [7:0] O_rx_Data,
    output         O_rx_done,
    output  [31:0] O_data_counter
////    output  wire   W_bps_rx_clk
    );
    wire rst;
    assign rst = ~I_rst_n;
    wire            W_bps_tx_clk             ;
    wire            W_bps_tx_clk_en          ;
    wire            W_bps_rx_clk             ;
    wire            W_bps_rx_clk_en          ;
    wire            W_tx_start               ;
    wire            W_tx_done                ;
    wire            W_rx_done                ;
//    wire  [7:0]     W_para_data              ;
    wire  [7:0]     W_rx_para_data           ;
    
    
//    reg   [7:0]     R_led_reg               ;
//    reg   [7:0]     R_led                   ;
    reg   [31:0]    data_counter            ;
    
    initial
    begin
        data_counter <= 0;
    end
    
    baudrate_gen U_baudrate_gen
    (
        .I_clk              (I_clk              ), // ϵͳ100MHzʱ��
        .I_rst_n            (I_rst_n            ), // ϵͳȫ�ָ�λ
        .I_bps_tx_clk_en    (W_bps_tx_clk_en    ), // ���ڷ���ģ�鲨����ʱ��ʹ���ź�
        .I_bps_rx_clk_en    (W_bps_rx_clk_en    ), // ���ڽ���ģ�鲨����ʱ��ʹ���ź�
        .O_bps_tx_clk       (W_bps_tx_clk       ), // ����ģ�鲨���ʲ���ʱ��
        .O_bps_rx_clk       (W_bps_rx_clk       )  // ����ģ�鲨���ʲ���ʱ��
    );
    
//    always @(posedge I_clk or negedge I_rst_n)
//    begin
//        if(!I_rst_n)
//            begin
//                R_led[0] <= 1'b0 ;  
//            end
//        else if(I_rx_start)
//        begin 
//            R_led[0] <= 1'b1 ;        
//        end
//        else
//        begin   
//            R_led[0] <= 1'b0 ;        
//        end
//    end
    
    uart_rx U_uart_rxd
    (
        .I_clk              (I_clk              ), // ϵͳ100MHzʱ��
        .I_rst_n            (I_rst_n            ), // ϵͳȫ�ָ�λ
        .I_rx_start         (1'b1               ), // ����ʹ���ź�
        .I_bps_rx_clk       (W_bps_rx_clk       ), // ���ղ�����ʱ��
        .I_rs232_rxd        (I_rs232_rxd        ), // ���յĴ������ݣ���Ӳ�����봮������  
        .O_bps_rx_clk_en    (W_bps_rx_clk_en    ), // ������ʱ��ʹ���ź�
        .O_rx_done          (W_rx_done          ), // ������ɱ�־
        .O_para_data        (O_rx_Data     ),  // ���յ���8-bit��������
        .O_rs232_rxd        (O_rs232_txd        )
    ); 
    
    
    
    always @(I_rx_start) //����д�ڴ��дָ�������
    begin
        data_counter <= 0;
    end
    
    always @(negedge W_rx_done)
    begin

//            R_led_reg <= rx_Data;
            data_counter <= data_counter + 1;
//            R_led_reg <= data_counter;
    end
    
//    assign led[0] = R_led[0];
//    assign O_clk_baudrate = clk_baudrate;
    assign O_rx_done = W_rx_done;
    assign O_data_counter = data_counter;
    
//    light_show U_light_show 
//    (
//        .I_clk              (I_clk),
//        .I_rst_n            (I_rst_n),
//        .I_show_num         (R_led_reg),
//        .O_led              (O_led),
//        .O_px               (O_px)
////        .led                (led)
//    );

endmodule

