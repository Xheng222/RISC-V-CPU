`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 14:00:39
// Design Name: 
// Module Name: DRAM_tb
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



module DRAM_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period for 100MHz clock

    // Inputs
    reg clk;
    reg MemRD;
    reg MemWR;
    reg [2:0] MemRWType;
    reg [31:0] ALUoutput;
    reg [31:0] rd2;

    // Outputs
    wire [31:0] MemData;

    // Instantiate the DRAM module
    DRAM uut (
        .clk(clk),
        .MemRD(MemRD),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .ALUoutput(ALUoutput),
        .rd2(rd2),
        .MemData(MemData)
    );

    // Clock generation
    always begin
        # (CLK_PERIOD / 2) clk = ~clk;
    end

    // Initial block for testbench
    initial begin
        // Initialize inputs
        clk = 1;
        MemRD = 0;
        MemWR = 0;
        MemRWType = 3'b000;
        ALUoutput = 0;
        rd2 = 0;

        // Wait for global reset
        #20;
        
        // Test Case 1: Write and Read 8-bit data
        MemWR = 1;
        MemRWType = 3'b000; // 8-bit signed
        ALUoutput = 32'd0; // Address 0
        rd2 = 32'hFF; // Write 0xFF (signed 8-bit)
        #10;
        MemWR = 0;
        MemRD = 1;
        #10;
        if (MemData !== 32'hFF) $display("Error: Expected 0xFF, got %h", MemData);

        // Test Case 2: Write and Read 16-bit data
        MemWR = 1;
        MemRWType = 3'b001; // 16-bit signed
        ALUoutput = 32'd1; // Address 1
        rd2 = 32'hFFFF; // Write 0xFFFF (signed 16-bit)
        #10;
        MemWR = 0;
        MemRD = 1;
        #10;
        if (MemData !== 32'hFFFF) $display("Error: Expected 0xFFFF, got %h", MemData);

        // Test Case 3: Write and Read 32-bit data
        MemWR = 1;
        MemRWType = 3'b010; // 32-bit
        ALUoutput = 32'd2; // Address 2
        rd2 = 32'h12345678; // Write 0x12345678
        #10;
        MemWR = 0;
        MemRD = 1;
        #10;
        if (MemData !== 32'h12345678) $display("Error: Expected 0x12345678, got %h", MemData);

        // Test Case 4: Read unsigned 8-bit data
        MemWR = 1;
        MemRWType = 3'b000; // 8-bit signed
        ALUoutput = 32'd3; // Address 3
        rd2 = 32'h00A5; // Write 0xA5 (signed 8-bit)
        #10;
        MemWR = 0;
        MemRD = 1;
        MemRWType = 3'b100; // 8-bit unsigned
        #10;
        if (MemData !== 32'h00A5) $display("Error: Expected 0x00A5, got %h", MemData);

        // Test Case 5: Read unsigned 16-bit data
        MemWR = 1;
        MemRWType = 3'b001; // 16-bit signed
        ALUoutput = 32'd4; // Address 4
        rd2 = 32'h00FF; // Write 0x00FF (signed 16-bit)
        #10;
        MemWR = 0;
        MemRD = 1;
        MemRWType = 3'b101; // 16-bit unsigned
        #10;
        if (MemData !== 32'h00FF) $display("Error: Expected 0x00FF, got %h", MemData);

        // Finish simulation
        $finish;
    end

endmodule
