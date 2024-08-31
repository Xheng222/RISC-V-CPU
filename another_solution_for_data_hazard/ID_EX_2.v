`timescale 1ns / 1ps

module ID_EX(
    input clk,
    input rst,
    input nop,
    input pause,
    input MemRD,
    input ALUSrc,
    input [3:0] ALUop,
    input [2:0] BranchSrc,
    input BranchEn,
    input RegWR,
    input [2:0] RegSrc,
    input MemWR,
    input [2:0] MemRWType,
    input [31:0] rd1,
    input [31:0] rd2,
    input [4:0] rd,
    input [31:0] pc,
    input [31:0] imm,
    output reg [2:0] BranchSrc_out,
    output reg [31:0] imm_out,
    output reg BranchEn_out,
    output reg [31:0] pc_out,
    output reg [3:0] ALUop_out,
    output reg [31:0] rd1_out,
    output reg ALUSrc_out,
    output reg [31:0] rd2_out,
    output reg MemRD_out,
    output reg MemWR_out,
    output reg [2:0] MemRWType_out,
    output reg RegWR_out,
    output reg [2:0] RegSrc_out,
    output reg [4:0] rd_out
    );
    
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            BranchSrc_out <= 3'b0;
            imm_out <= 32'b0;
            BranchEn_out <= 1'b0;
            pc_out <= 32'b0;
            ALUop_out <= 4'b0;
            rd1_out <= 32'b0;
            ALUSrc_out <= 1'b0;
            rd2_out <= 32'b0;
            MemRD_out <= 1'b0;
            MemWR_out <= 1'b0;
            MemRWType_out <= 3'b0;
            RegWR_out <= 1'b1;
            RegSrc_out <= 3'b0;
            rd_out <= 5'b0;
        end
        else begin 
//            if (!nop && !pause) begin
//                BranchSrc_out <= BranchSrc;
//                imm_out <= imm;
//                BranchEn_out <= BranchEn;
//                pc_out <= pc;
//                ALUop_out <= ALUop;
//                rd1_out <= rd1;
//                ALUSrc_out <= ALUSrc;
//                rd2_out <= rd2;
//                MemRD_out <= MemRD;
//                MemWR_out <= MemWR;
//                MemRWType_out <= MemRWType;
//                RegWR_out <= RegWR;
//                RegSrc_out <= RegSrc;
//                rd_out <= rd;
//            end
//            else begin
//                if (nop) begin
//                    BranchSrc_out <= 3'b0;
//                    imm_out <= 32'b0;
//                    BranchEn_out <= 1'b0;
//                    pc_out <= 32'b0;
//                    ALUop_out <= 4'b0;
//                    rd1_out <= 32'b0;
//                    ALUSrc_out <= 1'b0;
//                    rd2_out <= 32'b0;
//                    MemRD_out <= 1'b0;
//                    MemWR_out <= 1'b0;
//                    MemRWType_out <= 3'b0;
//                    RegWR_out <= 1'b1;
//                    RegSrc_out <= 3'b0;
//                    rd_out <= 5'b0;
//                end
//            end
            if(nop) begin 
                BranchSrc_out <= 3'b0;
                imm_out <= 32'b0;
                BranchEn_out <= 1'b0;
                pc_out <= 32'b0;
                ALUop_out <= 4'b0;
                rd1_out <= 32'b0;
                ALUSrc_out <= 1'b0;
                rd2_out <= 32'b0;
                MemRD_out <= 1'b0;
                MemWR_out <= 1'b0;
                MemRWType_out <= 3'b0;
                RegWR_out <= 1'b1;
                RegSrc_out <= 3'b0;
                rd_out <= 5'b0;
            end
            else if(pause) begin
            end
            else begin
                BranchSrc_out <= BranchSrc;
                imm_out <= imm;
                BranchEn_out <= BranchEn;
                pc_out <= pc;
                ALUop_out <= ALUop;
                rd1_out <= rd1;
                ALUSrc_out <= ALUSrc;
                rd2_out <= rd2;
                MemRD_out <= MemRD;
                MemWR_out <= MemWR;
                MemRWType_out <= MemRWType;
                RegWR_out <= RegWR;
                RegSrc_out <= RegSrc;
                rd_out <= rd;
            end
        end
    end
    
endmodule
