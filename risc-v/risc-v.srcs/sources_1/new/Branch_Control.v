`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 10:43:08
// Design Name: 
// Module Name: Branch_Control
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
`define default_pc 32'b0

module Branch_Control(
    input [2:0] BranchSrc,
    input [31:0] imm,
    input BranchEn,
    input [31:0] pc,
    input [31:0] ALUoutput,
    output pcSrc,
    output [31:0] jpc
    );

    assign pcSrc = BranchEn ? 
                   (BranchSrc == 3'b000 ? (ALUoutput == 0 ? 1 : 0 )  : //beq
                    BranchSrc == 3'b001 ? (ALUoutput != 0 ? 1 : 0 )  : //bne
                    BranchSrc == 3'b010 ? (ALUoutput == 1 ? 1 : 0 )  : //blt
                    BranchSrc == 3'b011 ? (ALUoutput == 0 ? 1 : 0 )  : //bge
                    BranchSrc == 3'b100 ? (ALUoutput == 1 ? 1 : 0 )  : //bltu
                    BranchSrc == 3'b101 ? (ALUoutput == 0 ? 1 : 0 )  : //bgeu
                    BranchSrc == 3'b110 ? 1 : //jal
                    BranchSrc == 3'b111 ? 1 : 0 //jalr
                   )
                   : 0 ;

    assign jpc =  BranchSrc == 3'b111 ?  ALUoutput //jalr
                                      : pc + imm ; //ÆäËû

                  


endmodule
