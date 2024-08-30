`timescale 1ns / 1ps

module SEXT(
    input [24:0] imm,
    input [2:0] ImmType,
    output [31:0] ImmExt
    );
    
    wire [31:0] imm_I;
    wire [31:0] imm_S;
    wire [31:0] imm_U;
    wire [31:0] imm_B;
    wire [31:0] imm_J;
    wire [31:0] imm_shamt;
    parameter default_imm = 32'b0;
    
    assign imm_I = {{20{imm[24]}}, imm[24:13]};
    assign imm_S = {{20{imm[24]}}, imm[24:18], imm[4:0]};
    assign imm_U = {imm[24:5], {12{1'b0}}};
    assign imm_B = {{19{imm[24]}}, imm[24], imm[0], imm[23:18], imm[4:1], 1'b0};
    assign imm_J = {{11{imm[24]}}, imm[24], imm[12:5], imm[13], imm[23:14], 1'b0};
    assign imm_shamt = {{27{1'b0}}, imm[17:13]};
    
    assign ImmExt = (ImmType == 3'b001) ? imm_I :
                 (ImmType == 3'b010) ? imm_S :
                 (ImmType == 3'b011) ? imm_U :
                 (ImmType == 3'b100) ? imm_B :
                 (ImmType == 3'b101) ? imm_J :
                 (ImmType == 3'b110) ? imm_shamt :
                 default_imm;
    
    
endmodule
