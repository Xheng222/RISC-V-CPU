`timescale 1ns / 1ps

module PC(
    input clk,
    input rst,
    input nop,
    input pause,
    input [31:0] npc,
    output reg [31:0] pc
    );
    
    reg cnt;
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            pc = 32'b0;
            cnt = 0;
        end
        else begin
            if (!nop && !pause) begin
                if (!cnt) cnt <= 1;
                else pc <= npc;                
            end
            else begin
                if (nop) pc = 32'b0;
            end    
        end
    end
    
endmodule