`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 17:06:01
// Design Name: 
// Module Name: SEXT_tb
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

module SEXT_tb;

    // Inputs
    reg [24:0] ins;
    reg [2:0] ImmType;

    // Outputs
    wire [31:0] imm;

    // Instantiate the Unit Under Test (UUT)
    SEXT uut (
        .ins(ins),
        .ImmType(ImmType),
        .imm(imm)
    );

    // Test procedure
    initial begin
        // Initialize Inputs
        ins = 25'b0;
        ImmType = 3'b000;
        
        // Test Case 1: imm_I (ImmType = 3'b001)
        #10;
        ins = 25'b1111111111000000000000000; // Example value
        ImmType = 3'b001;
        #10;
        $display("imm_I = %b", imm);
        // 11111111111111111111 111111111100
        // FFFF FFFC
        
        
        // Test Case 2: imm_S (ImmType = 3'b010)
        #10;
        ins = 25'b1111111111000000010100000; // Example value
        ImmType = 3'b010;
        #10;
        $display("imm_S = %b", imm);
        // 11111111111111111111 111111100000
        // FFFF FFE0
        
        // Test Case 3: imm_U (ImmType = 3'b011)
        #10;
        ins = 25'b1111100000000000000000000; // Example value
        ImmType = 3'b011;
        #10;
        $display("imm_U = %b", imm);
        // 11111 00000 00000 00000 00000 0000000
        // F800 0000
        
        
        // Test Case 4: imm_B (ImmType = 3'b100)
        #10;
        ins = 25'b1111111000000010000000000; // Example value
        ImmType = 3'b100;
        #10;
        $display("imm_B = %b", imm);
        // 1111111111111111111 1 0 111111 0000 0
        // FFFF F7E0
        
        // Test Case 5: imm_J (ImmType = 3'b101)
        #10;
        ins = 25'b1111111111111000000000000; // Example value
        ImmType = 3'b101;
        #10;
        $display("imm_J = %b", imm);
        // 11111111111 1 10000000 1 1111111111 0
        // FFF8 0FFE
        
        // Test Case 6: imm_shamt (ImmType = 3'b110)
        #10;
        ins = 25'b0000000000000100000000000; // Example value
        ImmType = 3'b110;
        #10;
        $display("imm_shamt = %b", imm);
        // 27¸ö0 00000
        
        
        // Test Case 7: default case (ImmType = other)
        #10;
        ImmType = 3'b111;
        #10;
        $display("default_imm = %b", imm);

        // Finish simulation
        $finish;
    end

endmodule

