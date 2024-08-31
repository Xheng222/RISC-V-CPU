`timescale 1ns / 1ps

module PC_Control(
    input [31:0] pc,
    input pcSrc, // 0 - pc + 4, 1 - jpc
    input [31:0] jpc,
    output [31:0] npc
    );
    
    assign npc = getNpc(pcSrc, jpc, pc);
    function [31:0] getNpc(input pcSrc, input [31:0]jpc, input [31:0]pc);
    begin
        if(pcSrc) begin
            getNpc = jpc;
        end
        else begin
            getNpc = pc + 4;
        end
            
    end
    endfunction
    
//    reg [31:0] npc_temp;
    
//    always @(*) begin
//        if(pcSrc) begin
//            npc_temp <= jpc;
//        end
//        else begin
//            npc_temp <= pc + 4;
//        end
        
//    end
//    assign npc = npc_temp;
    
//    assign npc = (pcSrc == 1) ? jpc : pc + 4;
    
//    always @(*) begin
//        if (pcSrc) begin
//            npc = jpc;
//        end
//        else begin
//            npc = pc + 4;
//        end
//    end

endmodule
