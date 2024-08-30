`timescale 1ns / 1ps

module Control_tb;
    reg clk;
    reg rst;
    reg pcSrc;    
    reg [31:0] jpc;   
     
    wire [31:0] npc;
    wire [31:0] pcReg;
    wire [31:0] instr;
    wire [31:0] pc;  
    
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
    
    always #5 clk = ~clk;

    integer i;
    initial begin
        clk = 1;
        rst = 0;
        pcSrc = 0;
        jpc = 0;
        
        #100
        rst = 1;
        #11
        for (i = 0; i < 50; i = i + 1) begin

            $display("ALUop = %d, ALUSrc = %d, BranchSrc = %d, BranchEn = %d, RegWR = %d, RegSrc = %d, MemRD = %d, MemWR = %d, MemRWType = %d, ImmType = %d, opcode = %d, funct3 = %d, funct7 = %d",
                        ALUop, ALUSrc, BranchSrc, BranchEn, RegWR, RegSrc, MemRD, MemWR, MemRWType, ImmType, opcode, funct3, funct7);            
            #10;
        end
        



        
        #100
        rst = 0;
        $finish;
    end
    
endmodule
