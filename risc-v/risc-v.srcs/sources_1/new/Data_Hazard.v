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
    input pcSrc,
    input [2:0] RegSrc_ID_EX,
    
    output nop_pc,
    output pause_pc,
    output nop_IF_ID,
    output pause_IF_ID,
    output nop_ID_EX,
    output pause_ID_EX,
    output nop_EX_MEM,
    output pause_EX_MEM,
    output nop_MEM_WB,
    output pause_MEM_WB,
    
    // forward
    output [1:0] rs1_forward,
    output [1:0] rs2_forward,
    output rs1_select,
    output rs2_select
    );
    
    assign nop_MEM_WB = 0;
    assign pause_MEM_WB = 0;
    
    assign nop_EX_MEM = 0;
    assign pause_EX_MEM = 0;
    
    wire rs1_Zero;
    wire rs1_ID_EX_Hazard;
    wire rs1_EX_MEM_Hazard;
    wire rs1_MEM_WB_Hazard;
    
    assign rs1_Zero = ( rs1_IF_ID == 0 );
    assign rs1_ID_EX_Hazard = ( RegWR_ID_EX && (rs1_IF_ID == rd_ID_EX) && (!rs1_Zero) );
    assign rs1_EX_MEM_Hazard = ( RegWR_EX_MEM && (rs1_IF_ID == rd_EX_MEM) && (!rs1_Zero) );
    assign rs1_MEM_WB_Hazard = ( RegWR_MEM_WB && (rs1_IF_ID == rd_MEM_WB) && (!rs1_Zero) );
    
    wire rs2_Zero;
    wire rs2_ID_EX_Hazard;
    wire rs2_EX_MEM_Hazard;
    wire rs2_MEM_WB_Hazard;
    
    assign rs2_Zero = ( rs2_IF_ID == 0 );
    assign rs2_ID_EX_Hazard = ( RegWR_ID_EX && (rs2_IF_ID == rd_ID_EX) && (!rs2_Zero) );
    assign rs2_EX_MEM_Hazard = ( RegWR_EX_MEM && (rs2_IF_ID == rd_EX_MEM) && (!rs2_Zero) );
    assign rs2_MEM_WB_Hazard = ( RegWR_MEM_WB && (rs2_IF_ID == rd_MEM_WB) && (!rs2_Zero) );
    
    wire rs1_Hazard;
    wire rs2_Hazard;
    
//    assign rs1_Hazard = (rs1RD) ? (rs1_ID_EX_Hazard || rs1_EX_MEM_Hazard || rs1_MEM_WB_Hazard) : 0;
    assign rs1_Hazard = (rs1RD) ? (rs1_ID_EX_Hazard && RegSrc_ID_EX == 3'b010) : 0;
//    assign rs2_Hazard = (rs2RD) ? (rs2_ID_EX_Hazard || rs2_EX_MEM_Hazard || rs2_MEM_WB_Hazard) : 0;
    assign rs2_Hazard = (rs2RD) ? (rs2_ID_EX_Hazard && RegSrc_ID_EX == 3'b010) : 0;
    
    assign rs1_forward = (rs1_ID_EX_Hazard) ? ( (RegSrc_ID_EX != 3'b010) ? 2'b00 : 2'b11) : 
                            (rs1_EX_MEM_Hazard) ? 2'b01 : 
                            (rs1_MEM_WB_Hazard) ? 2'b10 : 2'b11 ;
                            
    assign rs1_select = (rs1_ID_EX_Hazard) ? ( (RegSrc_ID_EX != 3'b010) ? 1'b1 : 1'b0) : 
                            (rs1_EX_MEM_Hazard) ? 1'b1 : 
                            (rs1_MEM_WB_Hazard) ? 1'b1 : 1'b0 ;
                                
    assign rs2_forward = (rs2_ID_EX_Hazard) ? ( (RegSrc_ID_EX != 3'b010) ? 2'b00 : 2'b11) : 
                            (rs2_EX_MEM_Hazard) ? 2'b01 : 
                            (rs2_MEM_WB_Hazard) ? 2'b10 : 2'b11 ;

    assign rs2_select = (rs2_ID_EX_Hazard) ? ( (RegSrc_ID_EX != 3'b010) ? 1'b1 : 1'b0) : 
                            (rs2_EX_MEM_Hazard) ? 1'b1 : 
                            (rs2_MEM_WB_Hazard) ? 1'b1 : 1'b0 ;
    
    assign nop_ID_EX = (rs1_Hazard || rs2_Hazard || pcSrc);
    assign pause_ID_EX = 0;
    
    assign nop_IF_ID = pcSrc;
    assign pause_IF_ID = (rs1_Hazard || rs2_Hazard);
    
    assign nop_pc = 0;
    assign pause_pc = (rs1_Hazard || rs2_Hazard);
    
endmodule
