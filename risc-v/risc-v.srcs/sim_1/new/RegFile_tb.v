`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 19:55:24
// Design Name: 
// Module Name: RegFile_tb
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

module RegFile_tb;

    // Inputs
    reg clk;
    reg rst;
    reg [4:0] rs1;
    reg [4:0] rs2;
    reg [4:0] rd;
    reg RegWR;
    reg [31:0] RegData;

    // Outputs
    wire [31:0] rd1;
    wire [31:0] rd2;

    // Instantiate the Unit Under Test (UUT)
    RegFile uut (
        .clk(clk),
        .rst(rst),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .RegWR(RegWR),
        .RegData(RegData),
        .rd1(rd1),
        .rd2(rd2)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize Inputs
        clk = 1;
        rst = 0;
        rs1 = 0;
        rs2 = 0;
        rd = 0;
        RegWR = 0;
        RegData = 0;

        // Wait for global reset
        #10;
        rst = 1;

        // Test Case 1: Write data to register 1
        #10;
        rd = 5'b00001;
        RegData = 32'hA5A5A5A5;
        RegWR = 1;

        // Observe the result
        #10;
        RegWR = 0;
        rs1 = 5'b00001; // Read from register 1
        rs2 = 5'b00000; // Read from register 0

        // Check output
        #10;
        $display("rd1: %h, expected: A5A5A5A5", rd1);
        $display("rd2: %h, expected: 00000000", rd2);

        // Test Case 2: Write data to register 2 and read back
        #10;
        rd = 5'b00010;
        RegData = 32'h12345678;
        RegWR = 1;

        // Observe the result
        #10;
        RegWR = 0;
        rs1 = 5'b00010; // Read from register 2
        rs2 = 5'b00001; // Read from register 1

        // Check output
        #10;
        $display("rd1: %h, expected: 12345678", rd1);
        $display("rd2: %h, expected: A5A5A5A5", rd2);

        // Test Case 3: Reset the register file
        #10;
        rst = 0;

        // Observe the result
        #10;
        rst = 1;
        rs1 = 5'b00010; // Read from register 2
        rs2 = 5'b00001; // Read from register 1
        
        
        #10;
        RegWR = 1;
        rd = 5'b00010;
        RegData = 32'h88888888;
        rs1 = 5'b00010; // Read from register 2
        rs2 = 5'b00001; // Read from register 1

        // Check output
        #10;
        $display("rd1: %h, expected: 00000000", rd1);
        $display("rd2: %h, expected: 00000000", rd2);

        // Finish simulation
        #10;
        $finish;
    end

endmodule

