`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 13:01:22
// Design Name: 
// Module Name: Rd_Select
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


module Rd_Select(
    input [31:0] ALUoutput,
    input [31:0] imm,
    input [31:0] pc,
    input [31:0] MemData,
    input [2:0] RegSrc,
    output [31:0] RdData
    );

    assign RdData = RegSrc == 3'b000 ? ALUoutput : //来自ALU
                    RegSrc == 3'b001 ? pc + 32'b100 : // pc+4
                    RegSrc == 3'b010 ? MemData : // 来自内存
                    RegSrc == 3'b011 ? imm : // imm
                    RegSrc == 3'b100 ? pc + imm : // pc + imm
                    32'b0 ;
endmodule
