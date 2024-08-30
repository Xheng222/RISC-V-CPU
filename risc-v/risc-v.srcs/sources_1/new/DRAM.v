`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 13:29:18
// Design Name: 
// Module Name: DRAM
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


module DRAM(
    input clk,
    input MemRD,
    input MemWR,
    input [2:0] MemRWType,
    input [31:0] ALUoutput,
    input [31:0] rd2,
    output [31:0] MemData
    );

    reg [31:0] dram [255:0];

    wire [31:0] data_8;
    wire [31:0] data_16;
    wire [31:0] data_8u;
    wire [31:0] data_16u;

    assign data_8 = {{24{dram[ALUoutput][7]}}, dram[ALUoutput][7:0]};
    assign data_16 = {{16{dram[ALUoutput][15]}}, dram[ALUoutput][15:0]};
    assign data_8u = {{24{1'b0}}, dram[ALUoutput][7:0]};
    assign data_16u = {{16{1'b0}}, dram[ALUoutput][15:0]};

    always @(posedge clk) begin
        if(MemWR) begin
            case(MemRWType)
                3'b000 : dram[ALUoutput] <= {{24{rd2[7]}}, rd2[7:0]}; //8位
                3'b001 : dram[ALUoutput] <= {{16{rd2[15]}}, rd2[15:0]}; //16位
                3'b010 : dram[ALUoutput] <= rd2; //32位
                default: dram[ALUoutput] <= 32'b0; 
            endcase
        end
    end
    
    assign MemData = MemRD ? 
                     (MemRWType == 3'b000 ? data_8 : // 8位
                      MemRWType == 3'b001 ? data_16 : // 16位
                      MemRWType == 3'b010 ? dram[ALUoutput] : //32位
                      MemRWType == 3'b100 ? data_8u : // 无符号 8位
                      MemRWType == 3'b101 ? data_16u : // 无符号 16位
                      32'b0
                     )
                     : 32'b0;

endmodule
