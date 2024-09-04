`timescale 1ns / 1ps

module LightShow(            
    input       I_clk,           
    input       I_rst_n,           
    input       [15:0] I_show_num, 
          
    output      [6:0] O_led,        
    output      [3:0] O_px         
    );
    
    parameter   C_COUNTER_NUM = 250000; 
    
    reg  [3:0]  R_temp = 0;                         
    reg  [3:0]  R_px_temp = 0;        
    reg  [32:0] R_counter = 0;  
    
    wire [15:0]  W_show_num;         
    
    assign W_show_num = I_show_num ;
    
    always@(posedge I_clk) begin
        if(R_px_temp == 4'b1000 && R_counter >= C_COUNTER_NUM) begin       
                R_temp <= W_show_num[3:0];
                R_px_temp <= 4'b0001;
                R_counter <= 0;
        end
        else if(R_px_temp <= 4'b0001 && R_counter >= C_COUNTER_NUM) begin
                R_temp <= W_show_num[7:4];
                R_px_temp <= 4'b0010;
                R_counter <= 0;
        end
        else if(R_px_temp <= 4'b0010 && R_counter >= C_COUNTER_NUM) begin
                R_temp <= W_show_num[11:8];
                R_px_temp <= 4'b0100;
                R_counter <= 0;
        end
        else if(R_counter >= C_COUNTER_NUM) begin
                R_temp <= W_show_num[15:12];
                R_px_temp <= 4'b1000;
                R_counter <= 0;
        end
        else begin
                R_counter <= R_counter + 1;
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
