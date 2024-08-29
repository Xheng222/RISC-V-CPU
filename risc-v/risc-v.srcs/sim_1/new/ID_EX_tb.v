`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 21:00:38
// Design Name: 
// Module Name: ID_EX_tb
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

module ID_EX_tb;

    // Testbench signals
    reg clk;
    reg rst;
    reg MemRD;
    reg ALUsrc;
    reg [3:0] ALUop;
    reg [2:0] BranchSrc;
    reg BranchEn;
    reg RegWR;
    reg [1:0] RegSrc;
    reg MemWR;
    reg [2:0] MemRWType;
    reg [31:0] rd1;
    reg [31:0] rd2;
    reg [4:0] rd;
    reg [31:0] pc;
    reg [31:0] imm;

    // Outputs from ID_EX
    wire [2:0] BranchSrc_out;
    wire [31:0] imm_out;
    wire BranchEn_out;
    wire [31:0] pc_out;
    wire [3:0] ALUop_out;
    wire [31:0] rd1_out;
    wire ALUsrc_out;
    wire [31:0] rd2_out;
    wire MemRD_out;
    wire MemWR_out;
    wire [2:0] MemRWType_out;
    wire RegWR_out;
    wire [1:0] RegSrc_out;
    wire [4:0] rd_out;

    // Instantiate the ID_EX module
    ID_EX uut (
        .clk(clk),
        .rst(rst),
        .MemRD(MemRD),
        .ALUsrc(ALUsrc),
        .ALUop(ALUop),
        .BranchSrc(BranchSrc),
        .BranchEn(BranchEn),
        .RegWR(RegWR),
        .RegSrc(RegSrc),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .rd1(rd1),
        .rd2(rd2),
        .rd(rd),
        .pc(pc),
        .imm(imm),
        .BranchSrc_out(BranchSrc_out),
        .imm_out(imm_out),
        .BranchEn_out(BranchEn_out),
        .pc_out(pc_out),
        .ALUop_out(ALUop_out),
        .rd1_out(rd1_out),
        .ALUsrc_out(ALUsrc_out),
        .rd2_out(rd2_out),
        .MemRD_out(MemRD_out),
        .MemWR_out(MemWR_out),
        .MemRWType_out(MemRWType_out),
        .RegWR_out(RegWR_out),
        .RegSrc_out(RegSrc_out),
        .rd_out(rd_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period (100MHz clock)
    end

    // Test sequence
    initial begin
        // Initialize signals
        rst = 0;
        MemRD = 0;
        ALUsrc = 0;
        ALUop = 4'b0000;
        BranchSrc = 3'b000;
        BranchEn = 0;
        RegWR = 0;
        RegSrc = 2'b00;
        MemWR = 0;
        MemRWType = 3'b000;
        rd1 = 32'h00000000;
        rd2 = 32'h00000000;
        rd = 5'b00000;
        pc = 32'h00000000;
        imm = 32'h00000000;

        // Apply reset
        #10;
        rst = 1;
        #10;


        // Apply test vectors
        #10;
        MemRD = 1;
        ALUsrc = 1;
        ALUop = 4'b1010;
        BranchSrc = 3'b111;
        BranchEn = 1;
        RegWR = 1;
        RegSrc = 2'b01;
        MemWR = 1;
        MemRWType = 3'b101;
        rd1 = 32'hDEADBEEF;
        rd2 = 32'hCAFEBABE;
        rd = 5'b10101;
        pc = 32'h12345678;
        imm = 32'hFFFF0000;

        #10;
        // Add more test cases as needed
        rst = 0;
        // Finish simulation
        #10;
        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time = %0d, BranchSrc = %b, imm = %h, BranchEn = %b, pc = %h, ALUop = %b, rd1 = %h, ALUsrc = %b, rd2 = %h, MemRD = %b, MemWR = %b, MemRWType = %b, RegWR = %b, RegSrc = %b, rd = %b",
                 $time, BranchSrc_out, imm_out, BranchEn_out, pc_out, ALUop_out, rd1_out, ALUsrc_out, rd2_out, MemRD_out, MemWR_out, MemRWType_out, RegWR_out, RegSrc_out, rd_out);
    end

endmodule

