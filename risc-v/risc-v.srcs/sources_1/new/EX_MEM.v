`timescale 1ns / 1ps

module EX_MEM(
    input clk,
    input rst,
//    input nop,
//    input pause,
    input MemRD,
    input MemWR,
    input [2:0] MemRWType,
    input RegWR,
    input [2:0] RegSrc,
    input [31:0] rd2,
    input [4:0] rd,
    input [31:0] EXData,
    
    output reg [31:0] EXData_out,
    output reg MemRD_out,
    output reg MemWR_out,
    output reg [2:0] MemRWType_out,
    output reg RegWR_out,
    output reg [2:0] RegSrc_out,
    output reg [31:0] rd2_out,
    output reg [4:0] rd_out
    );
    
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            MemRD_out <= 1'b0;
            MemWR_out <= 1'b0;
            MemRWType_out <= 3'b0;
            RegWR_out <= 1'b1;
            RegSrc_out <= 3'b0;
            rd2_out <= 32'b0;
            rd_out <= 5'b0;
            EXData_out <= 32'b0;
        end
        else begin
//            if (!nop && !pause) begin
                MemRD_out <= MemRD;
                MemWR_out <= MemWR;
                MemRWType_out <= MemRWType;
                RegWR_out <= RegWR;
                RegSrc_out <= RegSrc;
                rd2_out <= rd2;
                rd_out <= rd;   
                EXData_out <= EXData;      
            end
//            else begin
//                if (nop) begin
//                    ALUoutput_EX_MEM <= 32'b0;
//                    MemRD_out <= 1'b0;
//                    MemWR_out <= 1'b0;
//                    MemRWType_out <= 3'b0;
//                    RegWR_out <= 1'b1;
//                    RegSrc_out <= 3'b0;
//                    imm_out <= 32'b0;
//                    rd2_out <= 32'b0;
//                    rd_out <= 5'b0;
//                    pc_out <= 32'b0;
//                end
//            end
//        end
    end
endmodule
