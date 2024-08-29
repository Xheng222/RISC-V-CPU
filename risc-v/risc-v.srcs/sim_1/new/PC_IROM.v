`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 14:37:28
// Design Name: 
// Module Name: PC_IROM
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


module PC_IROM;
    reg clk = 1;
    reg rst = 1;
    reg [31:0] npc;
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
    
    always #5 clk = ~clk;
    
    initial begin
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
