`timescale 1ns / 1ps

module ReadUart(
    input rx_done,
    input [31:0] counter,
    input [7:0] data
    );
    
    wire MemRD;
    wire MemWR;  
    wire [2:0] MemRWType;
    
    assign MemRD = 0;
    assign MemWR = 1;
    assign MemRWType = 3'b000;
    
    
    
    DRAM dram(
        .clk(rx_done),
        .MemRD(MemRD),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .ALUoutput(counter),
        .rd2(data)
    );
    
    wire IRAMWR;

    assign IRAMWR = 1;
    
    IRAM iram(
        .clk(rx_done),
        .IRAMWR(IRAMWR),
        .addr(counter),
        .instrWR(data),
        .pc(pc),
        .instr(instr)
    );
    
    
endmodule
