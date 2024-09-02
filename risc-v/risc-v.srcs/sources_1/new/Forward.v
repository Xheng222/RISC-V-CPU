`timescale 1ns / 1ps

module Forward(
    input [2:0] RegSrc_ID_EX,
    input [31:0] ALUoutput,
    input [31:0] imm_ID_EX,
    input [31:0] pc_ID_EX,
    input [31:0] rdData_MEM,
    input [31:0] rdData_WB, 
    input [1:0] rs1_forward,
    input [1:0] rs2_forward,
    
    output [31:0] rs1_forward_data,
    output [31:0] rs2_forward_data,
    output [31:0] EXData
    );
    
    
    wire [31:0] EX_data;
    assign EX_data = RegSrc_ID_EX == 3'b000 ? ALUoutput : // ALU
                RegSrc_ID_EX == 3'b001 ? pc_ID_EX + 32'b100 : // pc + 4
                RegSrc_ID_EX == 3'b011 ? imm_ID_EX : // imm
                RegSrc_ID_EX == 3'b100 ? pc_ID_EX + imm_ID_EX : // pc + imm
                ALUoutput ;
                
    assign EXData = EX_data;
    
    assign rs1_forward_data = (rs1_forward == 2'b00) ? EX_data :
                                (rs1_forward == 2'b01) ? rdData_MEM :
                                (rs1_forward == 2'b10) ?  rdData_WB : 32'b0;
                                
     
     assign rs2_forward_data = (rs2_forward == 2'b00) ? EX_data :
                                (rs2_forward == 2'b01) ? rdData_MEM :
                                (rs2_forward == 2'b10) ?  rdData_WB : 32'b0;
                                                           
endmodule
