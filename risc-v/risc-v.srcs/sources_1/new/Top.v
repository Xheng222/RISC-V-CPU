`timescale 1ns / 1ps

module Top(
    input clk,
    input rst,
    input WR_Src,
    input rs232_rxd,

    // Uart
    output rs232_txd,
    
    // Light
    output [6:0] O_led,
    output [1:0] O_px
    );
    
    wire rx_done;
    wire [31:0] addr;
    wire [7:0] data;
    wire [7:0] show_num;
    

    RISC_CPU risc_cpu(
        .clk(clk),
        .rst(rst),
        .rx_done(rx_done),
        .WR_Src(WR_Src),
        .addr(addr),
        .data(data),
        
        .show_num(show_num)
    );
    
    wire rst_n;
    wire rx_start;

    assign rst_n = ~rst;
    assign rx_start = 1;    
    
    
    ReceiveUart receive_uart(
        .I_clk(clk),
        .I_rst_n(rst_n),
        .I_rs232_rxd(rs232_rxd),
        .I_rx_start(rx_start),
        
        .O_rs232_txd(rs232_txd),
        .O_rx_done(rx_done),
        .O_rx_Data(data),
        .O_data_counter(addr)
    );
    
    LightShow light_show(
        .I_clk(clk),
        .I_rst_n(rst),
        .I_show_num(show_num),
    
        .O_led(O_led),
        .O_px(O_px)
    );
    
endmodule
