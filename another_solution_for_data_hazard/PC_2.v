`timescale 1ns / 1ps

module PC(
    input clk,
    input rst,
    input nop,
    input pause,
    input [31:0] npc,
    output reg [31:0] pc,
    output reg [31:0] instr,
    output reg test
    );
    
    reg cnt;
    
    wire [31:0] instr_IROM;
    IROM irom(
        .pc(npc),
        .instr(instr_IROM)
    );
    
//    wire test;
//    assign test = (instr_IROM & 32'hffffffff) == 32'hffffffff;
        
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
//            pc <= 32'b0;
            pc <= -4;
            instr <= 32'b00010011;
            cnt <= 0;
        end
        else begin
            
            if(nop || pause) begin
                test <= 1;
            end
            else begin
                pc <= npc;                
                instr <= instr_IROM;
            end
            
//            if (!nop && !pause) begin
////                if (!cnt) cnt <= 1;
////                else begin
//                    pc <= npc;                
//                    instr <= instr_IROM;
////                end
//            end
//            else begin
//                if (nop) instr <= 32'b00010011;
//            end    
        end
    end
    
endmodule