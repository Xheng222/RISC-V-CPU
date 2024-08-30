`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 10:49:59
// Design Name: 
// Module Name: EX_MEM
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

//ALUoutput[31:0]
//MemRD、MemWR、MemRWType[2:0]
//RegWR、RegSrc[1:0]
//imm[31:0]
//rd2[31:0]、rd[4:0]
//pc[31:0]

module EX_MEM(
    input clk,
    input rst,
    input [31:0] ALUoutput,
    input MemRD,
    input MemWR,
    input [2:0] MemRWType,
    input RegWR,
    input [2:0] RegSrc,
    input [31:0] imm,
    input [31:0] rd2,
    input [4:0] rd,
    input [31:0] pc,
    output reg [31:0] ALUoutput_out,
    output reg MemRD_out,
    output reg MemWR_out,
    output reg [2:0] MemRWType_out,
    output reg RegWR_out,
    output reg [2:0] RegSrc_out,
    output reg [31:0] imm_out,
    output reg [31:0] rd2_out,
    output reg [4:0] rd_out,
    output reg [31:0] pc_out
    );
    
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            ALUoutput_out <= 32'b0;
            MemRD_out <= 1'b0;
            MemWR_out <= 1'b0;
            MemRWType_out <= 3'b0;
            RegWR_out <= 1'b0;
            RegSrc_out <= 3'b0;
            imm_out <= 32'b0;
            rd2_out <= 32'b0;
            rd_out <= 5'b0;
            pc_out <= 32'b0;
        end
        else begin
            ALUoutput_out <= ALUoutput;
            MemRD_out <= MemRD;
            MemWR_out <= MemWR;
            MemRWType_out <= MemRWType;
            RegWR_out <= RegWR;
            RegSrc_out <= RegSrc;
            imm_out <= imm;
            rd2_out <= rd2;
            rd_out <= rd;
            pc_out <= pc;
        end
    end
endmodule
