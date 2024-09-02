`timescale 1ns / 1ps

module RegFile(
    input clk,
    input rst,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input RegWR,
    input [31:0] RegData,
    output [31:0] rs1Data,
    output [31:0] rs2Data
    );
    
    reg [31:0] regs [31:0];
    
    integer i;
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            for(i = 0;i < 32;i = i + 1) begin
                regs[i] <= 0;
            end
        end
        else if(RegWR) begin
            regs[rd] <= RegData;
        end
    end
    
    //第一个寄存器恒为0
    assign rs1Data = (rs1 == 5'b0)? 32'b0 : regs[rs1];
    assign rs2Data = (rs2 == 5'b0)? 32'b0 : regs[rs2];
    
endmodule
