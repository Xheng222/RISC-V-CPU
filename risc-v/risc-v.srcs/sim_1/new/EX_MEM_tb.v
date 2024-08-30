`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 11:11:43
// Design Name: 
// Module Name: EX_MEM_tb
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

module tb_EX_MEM;

    // Testbench signals
    reg clk;
    reg rst;
    reg [31:0] ALUoutput;
    reg MemRD;
    reg MemWR;
    reg [2:0] MemRWType;
    reg RegWR;
    reg [2:0] RegSrc;
    reg [31:0] imm;
    reg [31:0] rd2;
    reg [4:0] rd;
    reg [31:0] pc;
    
    wire [31:0] ALUoutput_out;
    wire MemRD_out;
    wire MemWR_out;
    wire [2:0] MemRWType_out;
    wire RegWR_out;
    wire [2:0] RegSrc_out;
    wire [31:0] imm_out;
    wire [31:0] rd2_out;
    wire [4:0] rd_out;
    wire [31:0] pc_out;
    
    // Instantiate the EX_MEM module
    EX_MEM uut (
        .clk(clk),
        .rst(rst),
        .ALUoutput(ALUoutput),
        .MemRD(MemRD),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .RegWR(RegWR),
        .RegSrc(RegSrc),
        .imm(imm),
        .rd2(rd2),
        .rd(rd),
        .pc(pc),
        .ALUoutput_out(ALUoutput_out),
        .MemRD_out(MemRD_out),
        .MemWR_out(MemWR_out),
        .MemRWType_out(MemRWType_out),
        .RegWR_out(RegWR_out),
        .RegSrc_out(RegSrc_out),
        .imm_out(imm_out),
        .rd2_out(rd2_out),
        .rd_out(rd_out),
        .pc_out(pc_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 time units clock period
    end
    
    // Stimulus
    initial begin
        // Initialize inputs
        rst = 0;
        ALUoutput = 32'h0000_0000;
        MemRD = 0;
        MemWR = 0;
        MemRWType = 3'b000;
        RegWR = 0;
        RegSrc = 3'b000;
        imm = 32'h0000_0000;
        rd2 = 32'h0000_0000;
        rd = 5'b00000;
        pc = 32'h0000_0000;
        
        // Apply reset
        #10 rst = 1;
        #10 rst = 0;
        #10 rst = 1;
        
        // Apply test values
        ALUoutput = 32'h1234_5678;
        MemRD = 1;
        MemWR = 1;
        MemRWType = 3'b101;
        RegWR = 1;
        RegSrc = 3'b010;
        imm = 32'hABCD_EF01;
        rd2 = 32'h1111_2222;
        rd = 5'b10001;
        pc = 32'h1234_5678;
        
        #10; // Wait for a clock edge
        
        // Change values
        ALUoutput = 32'h8765_4321;
        MemRD = 0;
        MemWR = 0;
        MemRWType = 3'b010;
        RegWR = 0;
        RegSrc = 3'b110;
        imm = 32'hFFFF_FFFF;
        rd2 = 32'h3333_4444;
        rd = 5'b01010;
        pc = 32'h8765_4321;
        
        #10; // Wait for a clock edge
        
        // Finish simulation
        // Apply reset
        #10 rst = 1;
        #10 rst = 0;
        #10 rst = 1;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("At time %t, ALUoutput_out = %h, MemRD_out = %b, MemWR_out = %b, MemRWType_out = %b, RegWR_out = %b, RegSrc_out = %b, imm_out = %h, rd2_out = %h, rd_out = %b, pc_out = %h",
                 $time, ALUoutput_out, MemRD_out, MemWR_out, MemRWType_out, RegWR_out, RegSrc_out, imm_out, rd2_out, rd_out, pc_out);
    end

endmodule
