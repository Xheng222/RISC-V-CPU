`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/29 15:35:09
// Design Name: 
// Module Name: uart_rx
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


module uart_rx(
    input                       I_clk               , // 系统100MHz时钟
    input                       I_rst_n             , // 系统全局复位
    input                       I_rx_start          , // 接收使能信号
    input                       I_bps_rx_clk        , // 接收波特率时钟
    input                       I_rs232_rxd         , // 接收的串行数据，在硬件上与串口相连  
    output    reg               O_bps_rx_clk_en     , // 波特率时钟使能信号
    output    reg               O_rx_done           , // 接收完成标志
    output    reg   [7:0]       O_para_data         , // 接收到的8-bit并行数据
    output                      O_rs232_rxd           // 接收的串行数据，在硬件上与串口相连
    );
    reg         R_rs232_rx_reg0 ;
    reg         R_rs232_rx_reg1 ;
    reg         R_rs232_rx_reg2 ;
    reg         R_rs232_rx_reg3 ;
    
    reg         O_rs232_rx_reg0 ;
    reg         O_rs232_rx_reg1 ;
    reg         O_rs232_rx_reg2 ;
    reg         O_rs232_rx_reg3 ;
    
    reg         R_receiving     ;
    
    reg [3:0]   R_state         ;
    reg [7:0]   R_para_data_reg ;
    reg         O_rs232_rxd_reg ;
    
    wire        W_rs232_rxd_neg ;
    
    
    ////////////////////////////////////////////////////////////////////////////////
    // 功能：把 I_rs232_rxd 打的前两拍，是为了消除亚稳态
    //       把 I_rs232_rxd 打的后两拍，是为了产生下降沿标志位
    ////////////////////////////////////////////////////////////////////////////////
    always @(posedge I_clk or negedge I_rst_n)
    begin
        if(!I_rst_n)
            begin
                R_rs232_rx_reg0 <= 1'b0 ;
                R_rs232_rx_reg1 <= 1'b0 ;
                R_rs232_rx_reg2 <= 1'b0 ;
                R_rs232_rx_reg3 <= 1'b0 ;
            end 
        else
            begin  
                R_rs232_rx_reg0 <= I_rs232_rxd      ;
                R_rs232_rx_reg1 <= R_rs232_rx_reg0  ; 
                R_rs232_rx_reg2 <= R_rs232_rx_reg1  ; 
                R_rs232_rx_reg3 <= R_rs232_rx_reg2  ; 
            end   
    end
    // 产生I_rs232_rxd信号的下降沿标志位
    assign W_rs232_rxd_neg    =    (~R_rs232_rx_reg2) & R_rs232_rx_reg3 ;
    
    ////////////////////////////////////////////////////////////////////////////////
    // 功能：产生接收信号R_receiving
    ////////////////////////////////////////////////////////////////////////////////
    always @(posedge I_clk or negedge I_rst_n)
    begin
        if(!I_rst_n)
            R_receiving <= 1'b0 ;
        else if(O_rx_done)
            R_receiving <= 1'b0 ;
        else if(I_rx_start && W_rs232_rxd_neg)
            R_receiving <= 1'b1 ;          
    end
    
    ////////////////////////////////////////////////////////////////////////////////
    // 功能：用状态机把串行的输入数据接收，并转化为并行数据输出
    ////////////////////////////////////////////////////////////////////////////////
    always @(posedge I_clk or negedge I_rst_n)
    begin
        if(!I_rst_n)
            begin
                O_rx_done       <= 1'b0 ; 
                R_state         <= 4'd0 ;
                R_para_data_reg <= 8'd0 ;
                O_bps_rx_clk_en <= 1'b0 ;
                O_rs232_rxd_reg <= 1'b0 ;
            end 
        else if(R_receiving && !O_rx_done)
            begin
                O_bps_rx_clk_en <= 1'b1 ; // 打开波特率时钟使能信号
                if(I_bps_rx_clk)
                    begin
                        case(R_state)
                            4'd0  : // 接收起始位，但不保存
                                begin
                                    R_para_data_reg     <= 8'd0             ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b0             ;
                                end
                            4'd1  : // 接收第0位，保存到R_para_data_reg[0]
                                begin
                                    R_para_data_reg[0]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd2  : // 接收第1位，保存到R_para_data_reg[1]
                                begin
                                    R_para_data_reg[1]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd3  : // 接收第2位，保存到R_para_data_reg[2]
                                begin
                                    R_para_data_reg[2]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end 
                            4'd4  : // 接收第3位，保存到R_para_data_reg[3]
                                begin
                                    R_para_data_reg[3]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end 
                            4'd5  : // 接收第4位，保存到R_para_data_reg[4]
                                begin
                                    R_para_data_reg[4]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd6  : // 接收第5位，保存到R_para_data_reg[5]
                                begin
                                    R_para_data_reg[5]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd7  :// 接收第6位，保存到R_para_data_reg[6]
                                begin
                                    R_para_data_reg[6]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd8  : // 接收第7位，保存到R_para_data_reg[7]
                                begin
                                    R_para_data_reg[7]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end 
                            4'd9  : // 接收停止位，但不保存，并把R_para_data_reg给输出
                                begin
                                    O_para_data         <= R_para_data_reg  ;
                                    O_rx_done           <= 1'b1             ; 
                                    R_state             <= 4'd0             ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end 
                                
                            default:R_state <= 4'd0                         ;                                                      
                        endcase 
                    end
            end
        else
            begin
                O_rx_done           <= 1'b0 ;
                R_state             <= 4'd0 ;
                R_para_data_reg     <= 8'd0 ;
                O_bps_rx_clk_en     <= 1'b0 ; // 接收完毕以后关闭波特率时钟使能信号
            end          
    end
    
    assign O_rs232_rxd  = O_rs232_rxd_reg;

endmodule

