`timescale 1ns / 1ps

module IROM(
    input [31:0] pc,
    output [31:0] instr
    );
   
	reg[7:0] rom[1023:0];
	
    //rom进行初始化
    initial begin
        $readmemb("../../../../risc-v.srcs/sources_1/new/IROM.txt", rom);
    end
    
    assign instr[7:0] = rom[pc + 3];
    assign instr[15:8] = rom[pc + 2];
    assign instr[23:16] = rom[pc + 1];
    assign instr[31:24] = rom[pc];

endmodule
