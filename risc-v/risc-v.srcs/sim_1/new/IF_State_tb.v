`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 15:39:41
// Design Name: 
// Module Name: IF_State_tb
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


module IF_State_tb;
    reg clk;
    reg rst;
    reg [31:0] npc;
    wire [31:0] pcReg;
    wire [31:0] pc;
    wire [31:0] instr;
    
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
    
    
    
    always #5 clk = ~clk;

    initial begin
        clk = 1;
        rst = 1;
        npc = 0;
        
        #500
        npc = 32'd0;
        
        #10
        npc = 32'd4;
        
        #10
        npc = 32'd8;
        
        #10
        npc = 32'd12;
        
        #10
        rst = 0;
        $finish;
    end
    
endmodule
