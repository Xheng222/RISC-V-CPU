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
    input                       I_clk               , // ϵͳ100MHzʱ��
    input                       I_rst_n             , // ϵͳȫ�ָ�λ
    input                       I_rx_start          , // ����ʹ���ź�
    input                       I_bps_rx_clk        , // ���ղ�����ʱ��
    input                       I_rs232_rxd         , // ���յĴ������ݣ���Ӳ�����봮������  
    output    reg               O_bps_rx_clk_en     , // ������ʱ��ʹ���ź�
    output    reg               O_rx_done           , // ������ɱ�־
    output    reg   [7:0]       O_para_data         , // ���յ���8-bit��������
    output                      O_rs232_rxd           // ���յĴ������ݣ���Ӳ�����봮������
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
    // ���ܣ��� I_rs232_rxd ���ǰ���ģ���Ϊ����������̬
    //       �� I_rs232_rxd ��ĺ����ģ���Ϊ�˲����½��ر�־λ
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
    // ����I_rs232_rxd�źŵ��½��ر�־λ
    assign W_rs232_rxd_neg    =    (~R_rs232_rx_reg2) & R_rs232_rx_reg3 ;
    
    ////////////////////////////////////////////////////////////////////////////////
    // ���ܣ����������ź�R_receiving
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
    // ���ܣ���״̬���Ѵ��е��������ݽ��գ���ת��Ϊ�����������
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
                O_bps_rx_clk_en <= 1'b1 ; // �򿪲�����ʱ��ʹ���ź�
                if(I_bps_rx_clk)
                    begin
                        case(R_state)
                            4'd0  : // ������ʼλ����������
                                begin
                                    R_para_data_reg     <= 8'd0             ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b0             ;
                                end
                            4'd1  : // ���յ�0λ�����浽R_para_data_reg[0]
                                begin
                                    R_para_data_reg[0]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd2  : // ���յ�1λ�����浽R_para_data_reg[1]
                                begin
                                    R_para_data_reg[1]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd3  : // ���յ�2λ�����浽R_para_data_reg[2]
                                begin
                                    R_para_data_reg[2]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end 
                            4'd4  : // ���յ�3λ�����浽R_para_data_reg[3]
                                begin
                                    R_para_data_reg[3]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end 
                            4'd5  : // ���յ�4λ�����浽R_para_data_reg[4]
                                begin
                                    R_para_data_reg[4]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd6  : // ���յ�5λ�����浽R_para_data_reg[5]
                                begin
                                    R_para_data_reg[5]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd7  :// ���յ�6λ�����浽R_para_data_reg[6]
                                begin
                                    R_para_data_reg[6]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end
                            4'd8  : // ���յ�7λ�����浽R_para_data_reg[7]
                                begin
                                    R_para_data_reg[7]  <= I_rs232_rxd      ;
                                    O_rx_done           <= 1'b0             ; 
                                    R_state             <= R_state + 1'b1   ;
                                    O_rs232_rxd_reg     <= 1'b1             ;
                                end 
                            4'd9  : // ����ֹͣλ���������棬����R_para_data_reg�����
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
                O_bps_rx_clk_en     <= 1'b0 ; // ��������Ժ�رղ�����ʱ��ʹ���ź�
            end          
    end
    
    assign O_rs232_rxd  = O_rs232_rxd_reg;

endmodule

