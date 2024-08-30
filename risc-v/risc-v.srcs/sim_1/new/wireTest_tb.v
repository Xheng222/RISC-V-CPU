`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 14:19:34
// Design Name: 
// Module Name: wireTest_tb
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


module wireTest_tb(
    input clk,
    input rst
    );

    wire [31:0] pc_1;
    wire [31:0] npc;

    PC pc(
        .clk(clk),
        .rst(rst),
        .npc(npc),
        .pc(pc_1)
    )

    wire [31:0] ins;

    IROM irom(
        .pc(pc_1),
        .instr(ins)
    )

    wire pcSrc;
    wire [31:0] jpc;

    PC_Control pc_control(
        .pcSrc(pcSrc),
        .jpc(jpc),
        .pc(pc_1),
        .npc(npc)
    )

    /////////////////////////////
    //         ID/EX           //
    /////////////////////////////


    wire MemRD;
    wire ALUsrc;
    wire [3:0] ALUop;
    wire [2:0] BranchSrc;
    wire BranchEn;
    wire RegWR;
    wire [2:0] RegSrc;
    wire MemWR;
    wire [2:0] MemRWType;

    wire [31:0] rs1data;
    wire [31:0] rs2data;

    wire [4:0] rd;
    wire [31:0] pcReg;
    wire [31:0] immExt;
    
    wire [31:0] pc_3;
    wire [31:0] imm_2;
    wire BranchEn_2;
    wire [2:0] BranchSrc_2;
    wire [3:0] ALUop_2;
    wire [31:0] rd2_2;
    wire ALUsrc_2;
    wire [31:0] rd1_2;
    wire MemRD_2;
    wire MemWR_2;
    wire [2:0] MemRWType_2;
    wire RegWR_2;
    wire [2:0] RegSrc_2;
    wire [4:0] rd_2;

    ID_EX id_ex(
        .clk(clk),
        .rst(rst),
        .MemRD(MemRD),
        .ALUsrc(ALUsrc),
        .ALUop(ALUop),
        .BranchSrc(BranchSrc),
        .BranchEn(BranchEn),
        .RegWR(RegWR),
        .RegSrc(RegSrc),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .rd1(rs1data),
        .rd2(rs2data),
        .rd(rd),
        .pc(pcReg),
        .imm(immExt),
        .MemRD_out(MemRD_2),
        .ALUsrc_out(ALUsrc_2),
        .ALUop_out(ALUop_2),
        .BranchSrc_out(BranchSrc_2),
        .BranchEn_out(BranchEn_2),
        .RegWR_out(RegWR_2),
        .RegSrc_out(RegSrc_2),
        .MemWR_out(MemWR_2),
        .MemRWType_out(MemRWType_2),
        .rd1_out(rd1_2),
        .rd2_out(rd2_2),
        .rd_out(rd_2),
        .pc_out(pc_3),
        .imm_out(imm_2),
    )



    /////////////////////////////
    //      执行阶段(EX)        //
    /////////////////////////////



    Branch_Control branch_control(
        .BranchSrc(BranchSrc_2),
        .BranchEn(BranchEn_2),
        .pc(pc_3),
        .pcSrc(pcSrc),
        .jpc(jpc),
        .ALUoutput(ALUoutput)
    )


    wire [31:0] b;
    
    MUX_2 mux_2(
        .a0(imm_2),
        .a1(rd2_2),
        .ALUsrc(ALUsrc_2),
        .b(b)
    )

    wire [31:0] ALUoutput;

    ALU alu(
        .ALUop(ALUop_2),
        .data1(rd1_2),
        .data2(b),
        .ALUoutput(ALUoutput)
    )

    /////////////////////////////
    //         EX/MEM          //
    /////////////////////////////

    wire [31:0] ALUoutput_2
    wire [31:0] pc_4;
    wire [31:0] imm_3;
    wire BranchEn_3;
    wire [2:0] BranchSrc_3;
    wire [3:0] ALUop_3;
    wire [31:0] rd2_3;
    wire ALUsrc_3;
    wire [31:0] rd1_3;
    wire MemRD_3;
    wire MemWR_3;
    wire [2:0] MemRWType_3;
    wire RegWR_3;
    wire [2:0] RegSrc_3;
    wire [4:0] rd_3;


    EX_MEM ex_mem(
        .clk(clk),
        .rst(rst),
        .ALUoutput(ALUoutput),
        .MemRD(MemRD_2),
        .MemWR(MemWR_2),
        .MemRWType(MemRWType_2),
        .RegWR(RegWR_2),
        .RegSrc(RegSrc_2),
        .imm(imm_2),
        .rd2(rd2_2),
        .rd(rd_2),
        .pc(pc_3),
        .ALUoutput_out(ALUoutput_2),
        .MemRD_out(MemRD_3),
        .MemWR_out(MemWR_3),
        .MemRWType_out(MemRWType_3),
        .RegWR_out(RegWR_3),
        .RegSrc_out(RegSrc_3),
        .imm_out(imm_3),
        .rd2_out(rd2_3),
        .rd_out(rd_3),
        .pc_out(pc_4),        
    )


endmodule
