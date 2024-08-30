`timescale 1ns / 1ps

module PC(
    input clk,
    input rst,
    input [31:0] npc,
    output reg [31:0] pc
    );
    
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            pc = 32'b0;
        end
        else begin
            pc <= npc;
        end
    end
    
endmodule