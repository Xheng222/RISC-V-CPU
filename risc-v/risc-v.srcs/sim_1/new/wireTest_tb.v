`timescale 1ns / 1ps

module WireTest_tb;
    reg clk;
    reg rst;
  
    wire [31:0] npc;
    wire [31:0] pcReg;
    wire [31:0] instr;
    wire [31:0] pc;  
    wire pcSrc;    
    wire [31:0] jpc; 
    
    // IF_ID
    wire [6:0] opcode;
    wire [2:0] funct3;
    wire [6:0] funct7;
    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [4:0] rd;
    wire [24:0] imm;
    
    // Control
    wire [2:0] ImmType;
    wire MemRD;
    wire MemWR;
    wire [2:0] MemRWType;
    wire ALUSrc;
    wire [3:0] ALUop;
    wire BranchEn;
    wire [2:0] BranchSrc;
    wire RegWR;
    wire [2:0] RegSrc;
    
    // RegFile
//    wire [31:0] RegData;
    wire [31:0] rs1Data;
    wire [31:0] rs2Data;
    
    // SEXT
    wire [31:0] ImmExt;
    
    PC pc_1(
        .clk(clk),
        .rst(rst),
        .npc(npc),
        .pc(pc)
    );
    
    IROM irom(
        .pc(pc),
        .instr(instr)
    );
    
    PC_Control pc_control(
        .pc(pc),
        .pcSrc(pcSrc),
        .jpc(jpc),
        .npc(npc)
    );
    
    IF_ID if_id(
        .clk(clk),
        .rst(rst),
        .pc(pc),
        .instr(instr),
        .pcReg(pcReg),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .imm(imm)
    );
    
    Control control(
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .ImmType(ImmType),
        .MemRD(MemRD),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .ALUSrc(ALUSrc),
        .ALUop(ALUop),
        .BranchEn(BranchEn),
        .BranchSrc(BranchSrc),
        .RegWR(RegWR),
        .RegSrc(RegSrc)
    );
    
    wire [4:0] rd_WB;
    wire RegWR_WB;
    wire [31:0] RegData_WB;
    
    RegFile regfile(
        .clk(clk),
        .rst(rst),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd_WB),
        .RegWR(RegWR_WB),
        .RegData(RegData_WB),
        .rs1Data(rs1Data),
        .rs2Data(rs2Data)
    );
   
    SEXT sext(
        .imm(imm),
        .ImmType(ImmType),
        .ImmExt(ImmExt)
    );

    // ID/EX       
    wire [31:0] pc_ID_EX;
    wire [31:0] imm_ID_EX;
    wire BranchEn_ID_EX;
    wire [2:0] BranchSrc_ID_EX;
    wire [3:0] ALUop_ID_EX;
    wire [31:0] rs1Data_ID_EX;    
    wire [31:0] rs2Data_ID_EX;
    wire ALUSrc_ID_EX;

    wire MemRD_ID_EX;
    wire MemWR_ID_EX;
    wire [2:0] MemRWType_ID_EX;
    wire RegWR_ID_EX;
    wire [2:0] RegSrc_ID_EX;
    wire [4:0] rd_ID_EX;

    ID_EX id_ex(
        .clk(clk),
        .rst(rst),
        .MemRD(MemRD),
        .ALUSrc(ALUSrc),
        .ALUop(ALUop),
        .BranchSrc(BranchSrc),
        .BranchEn(BranchEn),
        .RegWR(RegWR),
        .RegSrc(RegSrc),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .rd1(rs1Data),
        .rd2(rs2Data),
        .rd(rd),
        .pc(pcReg),
        .imm(ImmExt),
        .MemRD_out(MemRD_ID_EX),
        .ALUSrc_out(ALUSrc_ID_EX),
        .ALUop_out(ALUop_ID_EX),
        .BranchSrc_out(BranchSrc_ID_EX),
        .BranchEn_out(BranchEn_ID_EX),
        .RegWR_out(RegWR_ID_EX),
        .RegSrc_out(RegSrc_ID_EX),
        .MemWR_out(MemWR_ID_EX),
        .MemRWType_out(MemRWType_ID_EX),
        .rd1_out(rs1Data_ID_EX),
        .rd2_out(rs2Data_ID_EX),
        .rd_out(rd_ID_EX),
        .pc_out(pc_ID_EX),
        .imm_out(imm_ID_EX)
    );

    // EX
    // Branch_Control
    wire [31:0] ALUoutput;
    wire [31:0] data2;
    
    Branch_Control branch_control(
        .BranchSrc(BranchSrc_ID_EX),
        .imm(imm_ID_EX),
        .BranchEn(BranchEn_ID_EX),
        .pc(pc_ID_EX),
        .pcSrc(pcSrc),
        .ALUoutput(ALUoutput),     
        .jpc(jpc)
    );
    
    MUX_2 mux_2(
        .a0(imm_ID_EX),
        .a1(rs2Data_ID_EX),
        .select(ALUSrc_ID_EX),
        .data2(data2)
    );

    ALU alu(
        .ALUop(ALUop_ID_EX),
        .data1(rs1Data_ID_EX),
        .data2(data2),
        .ALUoutput(ALUoutput)
    );

    // EX/MEM

    wire [31:0] ALUoutput_EX_MEM;
    wire [31:0] pc_EX_MEM;
    wire [31:0] imm_EX_MEM;
    wire [31:0] rs2Data_EX_MEM;
    wire MemRD_EX_MEM;
    wire MemWR_EX_MEM;
    wire [2:0] MemRWType_EX_MEM;
    wire RegWR_EX_MEM;
    wire [2:0] RegSrc_EX_MEM;
    wire [4:0] rd_EX_MEM;

    EX_MEM ex_mem(
        .clk(clk),
        .rst(rst),
        .ALUoutput(ALUoutput),
        .MemRD(MemRD_ID_EX),
        .MemWR(MemWR_ID_EX),
        .MemRWType(MemRWType_ID_EX),
        .RegWR(RegWR_ID_EX),
        .RegSrc(RegSrc_ID_EX),
        .imm(imm_ID_EX),
        .rd2(rs2Data_ID_EX),
        .rd(rd_ID_EX),
        .pc(pc_ID_EX),
        .ALUoutput_EX_MEM(ALUoutput_EX_MEM),
        .MemRD_out(MemRD_EX_MEM),
        .MemWR_out(MemWR_EX_MEM),
        .MemRWType_out(MemRWType_EX_MEM),
        .RegWR_out(RegWR_EX_MEM),
        .RegSrc_out(RegSrc_EX_MEM),
        .imm_out(imm_EX_MEM),
        .rd2_out(rs2Data_EX_MEM),
        .rd_out(rd_EX_MEM),
        .pc_out(pc_EX_MEM)  
    );
    
    // DRAM
    
    wire [31:0] MemData;
    wire [31:0] rdData;
    
    DRAM dram(
        .clk(clk),
        .MemRD(MemRD_EX_MEM),
        .MemWR(MemWR_EX_MEM),
        .MemRWType(MemRWType_EX_MEM),
        .ALUoutput(ALUoutput_EX_MEM),
        .rd2(rs2Data_EX_MEM),
        .MemData(MemData)
    );
    
    Rd_Select rd_select(
        .ALUoutput(ALUoutput_EX_MEM),
        .imm(imm_EX_MEM),
        .pc(pc_EX_MEM),
        .MemData(MemData),
        .RegSrc(RegSrc_EX_MEM),
        .rdData(rdData)
    );
    
    MEM_WB mem_wb(
        .clk(clk),
        .rst(rst),
        .RegWR(RegWR_EX_MEM),
        .rd(rd_EX_MEM),
        .rdData(rdData),
        .rd_out(rd_WB),
        .RegWR_out(RegWR_WB),
        .rdData_out(RegData_WB)
    );
    
    always #5 clk = ~clk;
    integer i;
    initial begin
        clk = 1;
        rst = 1;
        #10
        rst = 0;
        #90
        rst = 1;
        #11
        for (i = 0; i < 50; i = i + 1) begin
            $display("ALUop = %d, ALUSrc = %d, BranchSrc = %d, BranchEn = %d, RegWR = %d, RegSrc = %d, MemRD = %d, MemWR = %d, MemRWType = %d, ImmType = %d, opcode = %d, funct3 = %d, funct7 = %d",
                        ALUop, ALUSrc, BranchSrc, BranchEn, RegWR, RegSrc, MemRD, MemWR, MemRWType, ImmType, opcode, funct3, funct7);            
            #10;
        end
        $finish;
    end
endmodule
