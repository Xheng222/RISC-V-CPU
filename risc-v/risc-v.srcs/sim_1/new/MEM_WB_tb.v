`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 13:10:47
// Design Name: 
// Module Name: MEM_WB_tb
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


module MEM_WB_tb(

    );

    // Testbench signals
    reg clk;
    reg rst;
    reg RegWR;
    reg [4:0] rd;
    reg [31:0] RdData;
    wire RegWR_out;
    wire [4:0] rd_out;
    wire [31:0] RdData_out;

    // Instantiate the MEM_WB module
    MEM_WB uut (
        .clk(clk),
        .rst(rst),
        .RegWR(RegWR),
        .rd(rd),
        .RdData(RdData),
        .RegWR_out(RegWR_out),
        .rd_out(rd_out),
        .RdData_out(RdData_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 time units period
    end

    // Test sequence
    initial begin
        // Initialize signals
        rst = 0;
        RegWR = 0;
        rd = 5'b00000;
        RdData = 32'b0;

        // Apply reset
        // Apply reset
        #10 rst = 1;
        #10 rst = 0;
        #10 rst = 1;

        // Apply test vectors
        RegWR = 1;
        rd = 5'b10101;
        RdData = 32'hDEADBEEF;

        #10;

        // Check outputs
        if (RegWR_out !== RegWR) $display("Error: RegWR_out mismatch at time %0t", $time);
        if (rd_out !== rd) $display("Error: rd_out mismatch at time %0t", $time);
        if (RdData_out !== RdData) $display("Error: RdData_out mismatch at time %0t", $time);

        // Change inputs
        #10;
        RegWR = 0;
        rd = 5'b11011;
        RdData = 32'hCAFEBABE;

        // Check outputs
        #10;
        if (RegWR_out !== RegWR) $display("Error: RegWR_out mismatch at time %0t", $time);
        if (rd_out !== rd) $display("Error: rd_out mismatch at time %0t", $time);
        if (RdData_out !== RdData) $display("Error: RdData_out mismatch at time %0t", $time);

        // End simulation
        #20;
        // Apply reset
        #10;
        rst = 0;
        #10;
        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time: %0t, RegWR: %b, rd: %b, RdData: %h, RegWR_out: %b, rd_out: %b, RdData_out: %h", 
                 $time, RegWR, rd, RdData, RegWR_out, rd_out, RdData_out);
    end

endmodule
