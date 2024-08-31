`timescale 1ns / 1ps

module Data_Hazard(
    input rs1RD,
    input [4:0] rs1_IF_ID,
    input rs2RD,
    input [4:0] rs2_IF_ID,
    input RegWR_ID_EX,
    input [4:0] rd_ID_EX,
    input RegWR_EX_MEM,
    input [4:0] rd_EX_MEM,
    input RegWR_MEM_WB,
    input [4:0] rd_MEM_WB,
    
    output nop_pc,
    output pause_pc,
    output nop_IF_ID,
    output pause_IF_ID,
    output nop_ID_EX,
    output pause_ID_EX,
    output nop_EX_MEM,
    output pause_EX_MEM,
    output nop_MEM_WB,
    output pause_MEM_WB
    );
    
    
endmodule
