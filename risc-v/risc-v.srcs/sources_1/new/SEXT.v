`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 16:18:06
// Design Name: 
// Module Name: SEXT
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


module SEXT(
    input [24:0] ins,
    input [2:0] ImmType,
    output [31:0] imm
    );
    
    wire [31:0] imm_I;
    wire [31:0] imm_S;
    wire [31:0] imm_U;
    wire [31:0] imm_B;
    wire [31:0] imm_J;
    wire [31:0] imm_shamt;
    parameter default_imm = 32'b0;
    
    assign imm_I = {{20{ins[24]}}, ins[24:13]};
    assign imm_S = {{20{ins[24]}}, ins[24:18], ins[4:0]};
    assign imm_U = {ins[24:5], {12{1'b0}}};
    assign imm_B = {{19{ins[24]}}, ins[24], ins[0], ins[23:18], ins[4:1], 1'b0};
    assign imm_J = {{11{ins[24]}}, ins[24], ins[12:5], ins[13], ins[23:14], 1'b0};
    assign imm_shamt = {{27{1'b0}}, ins[17:13]};
    
    assign imm = (ImmType == 3'b001) ? imm_I :
                 (ImmType == 3'b010) ? imm_S :
                 (ImmType == 3'b011) ? imm_U :
                 (ImmType == 3'b100) ? imm_B :
                 (ImmType == 3'b101) ? imm_J :
                 (ImmType == 3'b110) ? imm_shamt :
                 default_imm;
    
    
endmodule
