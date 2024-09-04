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
    input          I_clk           , // 系统100MHz时钟
    input          I_rst_n         , // 系统全局复位
    input          I_rs232_rxd     , // 接收的串行数据，在硬件上与串口相连
    input          I_rx_start      , // 串口使能信号
    output         O_rs232_txd     , // 发送的串行数据，在硬件上与串口相连
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
        .I_clk              (I_clk              ), // 系统100MHz时钟
        .I_rst_n            (I_rst_n            ), // 系统全局复位
        .I_bps_tx_clk_en    (W_bps_tx_clk_en    ), // 串口发送模块波特率时钟使能信号
        .I_bps_rx_clk_en    (W_bps_rx_clk_en    ), // 串口接收模块波特率时钟使能信号
        .O_bps_tx_clk       (W_bps_tx_clk       ), // 发送模块波特率产生时钟
        .O_bps_rx_clk       (W_bps_rx_clk       )  // 接收模块波特率产生时钟
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
        .I_clk              (I_clk              ), // 系统100MHz时钟
        .I_rst_n            (I_rst_n            ), // 系统全局复位
        .I_rx_start         (1'b1               ), // 接收使能信号
        .I_bps_rx_clk       (W_bps_rx_clk       ), // 接收波特率时钟
        .I_rs232_rxd        (I_rs232_rxd        ), // 接收的串行数据，在硬件上与串口相连  
        .O_bps_rx_clk_en    (W_bps_rx_clk_en    ), // 波特率时钟使能信号
        .O_rx_done          (W_rx_done          ), // 接收完成标志
        .O_para_data        (O_rx_Data     ),  // 接收到的8-bit并行数据
        .O_rs232_rxd        (O_rs232_txd        )
    ); 
    
    
    
    always @(I_rx_start) //交换写内存和写指令后，清零
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

