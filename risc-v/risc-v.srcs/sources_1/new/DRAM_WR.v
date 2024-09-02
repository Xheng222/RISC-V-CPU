`timescale 1ns / 1ps

module DRAM_WR(
    input clk,
    input WRSrc, // 0 - Read, 1 - Write
    input [31:0] addr,    
    input [7:0] data,
    
    output [7:0] MemData
    );
    
    reg [7:0] dram [1023:0];
    initial begin
        $readmemb("../../../../risc-v.srcs/sources_1/new/DRAM.txt", dram);
    end
    
    always @(posedge clk) begin
        if (WRSrc) begin
            dram[addr] <= data;
        end
    end
    
    assign MemData = dram[addr];
    
endmodule
