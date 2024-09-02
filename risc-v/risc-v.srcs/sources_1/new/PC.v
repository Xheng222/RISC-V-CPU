`timescale 1ns / 1ps

module PC(
    input clk,
    input rst,
    input nop,
    input pause,
    input [31:0] npc,
    output reg [31:0] pc
    );
    
//    reg cnt;
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            pc <= -4;
//            cnt <= 0;
        end
        else begin
            if (!pause) begin
                    pc <= npc;                
            end
//            else begin
//                if (nop) instr <= 32'b00010011;
//            end    
        end
    end
    
endmodule