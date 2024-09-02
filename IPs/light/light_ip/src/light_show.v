`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/01 19:16:57
// Design Name: 
// Module Name: light_show
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


module light_show(                  //������������˿�
    input       I_clk,              //ϵͳʱ��
    input       I_rst_n,            //��λ�ź�
    input       [7:0] I_show_num,   //����8-bit����
//    input       light_En,           //�����ʹ��
    output      [6:0] O_led,        //�߶�����ܶ�ѡ�ź�
    output      [1:0] O_px          //�߶������λѡ�ź�
    );
    
    //parameter   C_COUNTER_NUM = 1000000;    
    parameter   C_COUNTER_NUM = 100000; //��������ֵ
    
    reg  [3:0]  R_temp;             //��ǰ��ʾ��4-bit���ݼĴ���                
    reg  [1:0]  R_px_temp;          //��ѡ�źżĴ���
    reg  [32:0] R_counter;          //�������Ĵ���
    
    wire [7:0]  W_show_num;         
    
  
//    assign W_show_num = light_En ? I_show_num : W_show_num ;
    assign W_show_num = I_show_num ;
    
    always@(posedge I_clk or negedge I_rst_n)
    begin
        if(!I_rst_n)          
        begin       //��λ����
            R_px_temp <= 2'b11;
            R_temp <= 4'b0;
            R_counter <= 0;
        end
        else begin
            if(R_px_temp == 2'b01 && R_counter >= C_COUNTER_NUM)
            begin       //��4-bit����
                R_temp <= W_show_num[7:4];
                R_px_temp <= 2'b10;
                R_counter <= 0;
            end
            else if(R_px_temp == 2'b10 && R_counter >= C_COUNTER_NUM)
            begin       //��4-bit����
                R_temp <= W_show_num[3:0];
                R_px_temp <= 2'b01;
                R_counter <= 0;
            end
            else
            begin
                R_counter <= R_counter + 1;
            end
       end
    end
    
    assign O_led[0] = (R_temp == 4'b0000||R_temp == 4'b0001||R_temp == 4'b0111
                            ||R_temp == 4'b1100)?0:1;
    assign O_led[1] = (R_temp == 4'b0001||R_temp == 4'b0010||R_temp == 4'b0011
                            ||R_temp == 4'b0111||R_temp == 4'b1101)?0:1;
    assign O_led[2] = (R_temp == 4'b0001||R_temp == 4'b0011||R_temp == 4'b0100
                            ||R_temp == 4'b0101||R_temp == 4'b0111||R_temp == 4'b1001)?0:1;
    assign O_led[3] = (R_temp == 4'b0001||R_temp == 4'b0100||R_temp == 4'b0111
                            ||R_temp == 4'b1010||R_temp == 4'b1111)?0:1;
    assign O_led[4] = (R_temp == 4'b0010||R_temp == 4'b1100||R_temp == 4'b1110
                            ||R_temp == 4'b1111)?0:1;
    assign O_led[5] = (R_temp == 4'b0101||R_temp == 4'b0110||R_temp == 4'b1011
                            ||R_temp == 4'b1100||R_temp == 4'b1110||R_temp == 4'b1111)?0:1;
    assign O_led[6] = (R_temp == 4'b0001||R_temp == 4'b0100||R_temp == 4'b1011
                            ||R_temp == 4'b1101)?0:1;
    assign O_px = R_px_temp;   
endmodule


