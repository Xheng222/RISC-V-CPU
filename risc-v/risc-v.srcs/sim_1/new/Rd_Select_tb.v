`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 13:11:48
// Design Name: 
// Module Name: Rd_Select_tb
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


`timescale 1ns / 1ps

module Rd_Select_tb;

    // Inputs
    reg [31:0] ALUoutput;
    reg [31:0] imm;
    reg [31:0] pc;
    reg [31:0] MemData;
    reg [2:0] RegSrc;

    // Outputs
    wire [31:0] RdData;

    // Instantiate the Unit Under Test (UUT)
    Rd_Select uut (
        .ALUoutput(ALUoutput),
        .imm(imm),
        .pc(pc),
        .MemData(MemData),
        .RegSrc(RegSrc),
        .RdData(RdData)
    );

    initial begin
        // Initialize Inputs
        ALUoutput = 32'd10;
        imm = 32'd20;
        pc = 32'd30;
        MemData = 32'd40;

        // Test for ALUoutput (RegSrc = 3'b000)
        RegSrc = 3'b000;
        #10;
        $display("RegSrc = %b: RdData = %d", RegSrc, RdData);

        // Test for pc + 32'b100 (RegSrc = 3'b001)
        RegSrc = 3'b001;
        #10;
        $display("RegSrc = %b: RdData = %d", RegSrc, RdData);

        // Test for MemData (RegSrc = 3'b010)
        RegSrc = 3'b010;
        #10;
        $display("RegSrc = %b: RdData = %d", RegSrc, RdData);

        // Test for imm (RegSrc = 3'b011)
        RegSrc = 3'b011;
        #10;
        $display("RegSrc = %b: RdData = %d", RegSrc, RdData);

        // Test for pc + imm (RegSrc = 3'b100)
        RegSrc = 3'b100;
        #10;
        $display("RegSrc = %b: RdData = %d", RegSrc, RdData);

        // Test for default case (RegSrc = other values)
        RegSrc = 3'b101; // This value is not explicitly handled, should be 0
        #10;
        $display("RegSrc = %b: RdData = %d", RegSrc, RdData);

        // Finish the simulation
        $finish;
    end

endmodule

