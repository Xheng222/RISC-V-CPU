`timescale 1ns / 1ps

module IRAM(
    input clk,
    input IRAMWR,
    input [31:0] addr,
    input [7:0] instrWR,
    input [31:0] pc,
    output [31:0] instr
    );
   
	reg[7:0] rom[1023:0];
    reg flag;	
    integer i = 0;    

    initial begin
        flag = 0;
        $readmemb("../../../../risc-v.srcs/sources_1/new/IROM.txt", rom);
    end
    
    assign instr[7:0] = rom[pc + 3];
    assign instr[15:8] = rom[pc + 2];
    assign instr[23:16] = rom[pc + 1];
    assign instr[31:24] = rom[pc];    
    
//    assign instr[7:0] = rom[3];
//    assign instr[15:8] = rom[2];
//    assign instr[23:16] = rom[1];
//    assign instr[31:24] = rom[0];    
    

    
    always @(posedge clk) begin
        if (IRAMWR) begin
            if (!flag) begin
                flag = 1;
                for (i = 0; i < 1024; i = i + 4) begin
                    rom[i] = 8'b00000000;
                    rom[i + 1] = 8'b00000000;
                    rom[i + 2] = 8'b00000000;
                    rom[i + 3] = 8'b00010011;
                end            
                rom[addr] = instrWR[7:0];
                rom[addr] = instrWR[7:0];                   
            end
            else begin
                rom[addr] = instrWR[7:0];
                rom[addr] = instrWR[7:0];             
            end
        end 
        else begin
           flag = 0; 
        end
    end

endmodule
