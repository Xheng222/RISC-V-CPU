`timescale 1ns / 1ps


module PC_Control_tb;
    reg clk;
    reg rst;
    reg pcSrc;    
    reg [31:0] jpc;   
     
    wire [31:0] npc;
    wire [31:0] pcReg;
    wire [31:0] instr;
    wire [31:0] pc;  
        
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
    
    PC_Control pc_control(
        .pc(pc),
        .pcSrc(pcSrc),
        .jpc(jpc),
        .npc(npc)
    );
    
    always #5 clk = ~clk;

    initial begin
        clk = 1;
        rst = 0;

        pcSrc = 0;
        jpc = 0;
        
        #500
        rst = 1;


        
        #10000
        rst = 0;
        $finish;
    end
endmodule
