`timescale 1ns / 1ps

module IRAM(
    input clk,
    input rst,
    input WR_en,
    input [31:0] Addr,
    input [7:0] instrWR,
    input [31:0] pc,

    output [31:0] instr,
    output reg [15:0] WR_data
    );
   
	reg [7:0] rom[1023:0];
	reg [31:0] addr;
    reg flag;	
    integer i = 0;    

    initial begin
        flag = 0;
        WR_data = 0;
        $readmemb("../../../../risc-v.srcs/sources_1/new/IROM.txt", rom);
    end
    
    assign instr = {rom[pc][7:0], rom[pc + 1][7:0], rom[pc + 2][7:0], rom[pc + 3][7:0]}; 
    
    always @(posedge clk) begin
        if (WR_en) begin
            if (!flag) begin
                addr = 0;
                flag = 1;
                for (i = 0; i < 1024; i = i + 1) begin
                    rom[i] = 8'b00000000;
                end    
                
                rom[addr] = instrWR[7:0];          
                WR_data[7:0] = instrWR[7:0];  
                WR_data[15:8] = addr[7:0];  
            end 
            else begin
                addr = addr + 1;    
                rom[addr] = instrWR[7:0];          
                WR_data[7:0] = instrWR[7:0];  
                WR_data[15:8] = addr[7:0];  
            end              
        end
        else if (rst)
            flag = 0;
    end

endmodule
