`timescale 1ns / 1ps

module Top(
    input clk,
    input rst,
    input WR_Src,
    input rs232_rxd,

    // Uart
    output rs232_txd,
    
    // Light
    output [6:0] O_led_1,
    output [3:0] O_px_1,
    
    output [6:0] O_led_2,
    output [3:0] O_px_2
    );
    
    wire rx_done;
    wire [31:0] Addr;
    wire [7:0] data;
    wire [15:0] show_num_1;
    wire [15:0] show_num_2;
    
    reg clk_slow = 0;
    integer i = 0;
    always @(posedge clk) begin
        if (i < 1)
            i = i + 1;
        else begin
            i = 0;
            clk_slow = ~clk_slow;
        end
    end

    RISC_CPU risc_cpu(
        .clk(clk_slow),
        .rst(rst),
        .rx_done(rx_done),
        .WR_Src(WR_Src),
        .Addr(Addr),
        .data(data),
        
        .show_num_1(show_num_1),
        .show_num_2(show_num_2)
    );
    
    wire rst_n;

    assign rst_n = ~rst;
    
    ReceiveUart receive_uart(
        .I_clk(clk),
        .I_rst_n(rst_n),
        .I_rs232_rxd(rs232_rxd),
        .I_rx_start(WR_Src),
        
        .O_rs232_txd(rs232_txd),
        .O_rx_done(rx_done),
        .O_rx_Data(data),
        .O_data_counter(Addr)
    );

    LightShow light_show_1(
        .I_clk(clk),
        .I_rst_n(rst),
        .I_show_num(show_num_1),
    
        .O_led(O_led_1),
        .O_px(O_px_1)
    );
    
    LightShow light_show_2(
        .I_clk(clk),
        .I_rst_n(rst),
        .I_show_num(show_num_2),
    
        .O_led(O_led_2),
        .O_px(O_px_2)
    );
    
endmodule
