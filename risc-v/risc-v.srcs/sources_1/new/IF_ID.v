`timescale 1ns / 1ps

module IF_ID(
    input clk,
    input rst,
    input nop,
    input pause,
    input [31:0] pc,
    input [31:0] instr,
    output reg [31:0] pcReg,
    output [6:0] opcode,
    output [2:0] funct3,
    output [6:0] funct7,
    output [4:0] rs1,
    output [4:0] rs2,
    output [4:0] rd,
    output [24:0] imm
    );
    
    reg [31:0] instrReg; 
    assign opcode = instrReg[6:0];
    assign funct3 = instrReg[14:12];
    assign funct7 = instrReg[31:25];
    assign rs1 = instrReg[19:15];
    assign rs2 = instrReg[24:20];
    assign rd = instrReg[11:7];
    assign imm = instrReg[31:7];
    reg cnt;
    
    always @(posedge clk or negedge rst) begin
    if (!rst) begin
        pcReg <= 32'b0;
        instrReg <= 32'h00010011; // addi x0, x0, 0  :nop
        cnt <= 0;
    end
    else begin
        if (!nop && !pause) begin
            if (!cnt) cnt <= 1;
            else instrReg <= instr;   
            pcReg <= pc;                        
        end
        else begin
            if (nop) begin
                pcReg <= 32'b0;
                instrReg <= 32'b00010011;
            end
        end    
    end
end
    
endmodule
