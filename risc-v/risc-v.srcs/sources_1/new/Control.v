`timescale 1ns / 1ps
`include "define.v"

module Control(
    input [6:0] opcode,
    input [14:12] funct3,
    input [32:25] funct7,
    output [2:0] ImmType,
    output MemRD,
    output MemWR,
    output [2:0] MemRWType,
    output ALUSrc,
    output [3:0] ALUop,
    output BranchEn,
    output [2:0] BranchSrc,
    output RegWR,
    output [2:0] RegSrc
    );
    
    wire lui;
    wire auipc; 
    wire jal;
    wire jalr;
    wire B_type;
 	wire R_type;
	wire I_type;  
	wire load;    
	wire store;    

    assign lui = (opcode == `lui) ? 1'b1 : 1'b0;  
	assign auipc = (opcode == `auipc) ? 1'b1 : 1'b0;    
	assign jal = (opcode == `jal) ? 1'b1 : 1'b0;    
    assign jalr = (opcode == `jalr) ? 1'b1 : 1'b0;      
    assign B_type = (opcode == `B_type) ? 1'b1 : 1'b0;     
    assign R_type = (opcode == `R_type) ? 1'b1 : 1'b0;     
    assign I_type = (opcode == `I_type) ? 1'b1 : 1'b0;  
    assign load = (opcode == `load) ? 1'b1 : 1'b0;      
    assign store = (opcode == `store) ? 1'b1 : 1'b0;    

    /**********************************************/

    wire beq;
    wire bne;
    wire blt;
    wire bge;
    wire bltu;
    wire bgeu;    

    assign beq = B_type && funct3 == `beq_funct3;
    assign bne = B_type && funct3 == `bne_funct3;
    assign blt = B_type && funct3 == `blt_funct3;
    assign bge = B_type && funct3 == `bge_funct3;
    assign bltu = B_type && funct3 == `bltu_funct3;
    assign bgeu = B_type && funct3 == `bgeu_funct3;

    /**********************************************/

    wire slli;
    wire srli;
    wire srai;

    assign slli = I_type && funct3 == `slli_funct3 && funct7 == `slli_funct7;
    assign srli = I_type && funct3 == `srli_funct3 && funct7 == `srli_funct7;
    assign srai = I_type && funct3 == `srai_funct3 && funct7 == `srai_funct7; 

    /**********************************************/

    assign ImmType = ( (B_type) ) ? 3'b100 : 
                    ( (R_type) ) ? 3'b000 : 
                    ( (store) ) ? 3'b010 : 
                    ( (lui) || (auipc) ) ? 3'b011 : 
                    ( (jal) ) ? 3'b101 :
                    ( (slli) || (srli) || (srai) ) ? 3'b110 :                    
                    ( (jalr) || (load) || (I_type) ) ? 3'b001 : 3'b111 ;

    assign MemRD = (load) ? 1'b1 : 1'b0 ;

    assign MemWR = (store) ? 1'b1 : 1'b0 ;

    assign MemRWType = ( (store && funct3 == `sb_funct3) || (load && funct3 == `lb_funct3) ) ? 3'b000 :
                        ( (store && funct3 == `sh_funct3) || (load && funct3 == `lh_funct3) ) ? 3'b001 :
                        ( (store && funct3 == `sw_funct3) || (load && funct3 == `lw_funct3) ) ? 3'b010 :
                        ( (load && funct3 == `lbu_funct3) ) ? 3'b100 :
                        ( (load && funct3 == `lhu_funct3) ) ? 3'b101 : 3'b111 ;

    assign ALUSrc = ( (B_type) || (R_type) ) ? 1'b1 : 1'b0 ;

    assign ALUop = ( (R_type && funct3 == `add_funct3 && funct7 == `add_funct7) || (store) || (jalr) || (load) || (I_type && funct3 == `addi_funct3)) ? 4'b0000 :
                    ( (bne) || (beq) || (R_type && funct3 == `sub_funct3 && funct7 == `sub_funct7) ) ? 4'b0011 :
                    ( (R_type && funct3 == `and_funct3 && funct7 == `and_funct7) || (I_type && funct3 == `andi_funct3) ) ? 4'b0100 :
                    ( (R_type && funct3 == `or_funct3 && funct7 == `or_funct7) || (I_type && funct3 == `ori_funct3) ) ? 4'b0101 :
                    ( (R_type && funct3 == `xor_funct3 && funct7 == `xor_funct7) || (I_type && funct3 == `xori_funct3) ) ? 4'b0110 :
                    ( (blt) || (bge) || (R_type && funct3 == `slt_funct3 && funct7 == `slt_funct7) || (I_type && funct3 == `slti_funct3) ) ? 4'b1000 :
                    ( (bltu) || (bgeu) || (R_type && funct3 == `sltu_funct3 && funct7 == `sltu_funct7) || (I_type && funct3 == `sltiu_funct3)) ? 4'b1001 :
                    ( (R_type && funct3 == `sll_funct3 && funct7 == `sll_funct7) || (slli) ) ? 4'b1100 :
                    ( (R_type && funct3 == `srl_funct3 && funct7 == `srl_funct7) || (srli) ) ? 4'b1101 :
                    ( (R_type && funct3 == `sra_funct3 && funct7 == `sra_funct7) || (srai) ) ? 4'b1110 : 4'b1111 ;
    
    assign BranchEn = ( (B_type) || (jal) || (jalr) ) ? 1'b1 : 1'b0 ;

    assign BranchSrc = ( (beq) ) ? 3'b000 : 
                        ( (bne) ) ? 3'b001 : 
                        ( (blt) ) ? 3'b010 : 
                        ( (bge) ) ? 3'b011 : 
                        ( (bltu) ) ? 3'b100 :
                        ( (bgeu) ) ? 3'b101 :
                        ( (jal) ) ? 3'b110 :
                        ( (jalr) ) ? 3'b111 : 3'b000 ;

    assign RegWR = ( (B_type) || (store) ) ? 1'b0 : 1'b1 ;

    assign RegSrc = ( (R_type) || (I_type) ) ? 3'b000 :
                    ( (jal) || (jalr) ) ? 3'b001 :
                    ( (load) ) ? 3'b010 :
                    ( (lui) ) ? 3'b011 :
                    ( (auipc) ) ? 3'b100 : 3'b000 ;
    
endmodule
