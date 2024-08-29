`timescale 1ns / 1ps

module PC_Control(
    input [31:0] pc,
    input pcSrc, // 0 - pc + 4, 1 - jpc
    input [31:0] jpc,
    output [31:0] npc
    );
    
    assign npc = (pcSrc == 1) ? jpc : pc + 4;
    
//    always @(*) begin
//        if (pcSrc) begin
//            npc = jpc;
//        end
//        else begin
//            npc = pc + 4;
//        end
//    end

endmodule
