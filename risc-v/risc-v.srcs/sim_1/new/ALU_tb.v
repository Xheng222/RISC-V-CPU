`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 13:27:25
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
    // Inputs
    reg [3:0] ALUop;
    reg [31:0] data1;
    reg [31:0] data2;
    
    reg [31:0] temp;
    // Output
    wire [31:0] ALUoutput;

    // Instantiate the ALU module
    ALU uut (
        .ALUop(ALUop), 
        .data1(data1), 
        .data2(data2), 
        .ALUoutput(ALUoutput)
    );

    // Testbench
    initial begin
        data1 = -32'd10;
        data2 = 32'd5;

        // ADD
        $display("Testing ADD");
        ALUop = 4'b0000; #10;
        $display("ADD: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing SUB");
        ALUop = 4'b0011; #10;
        $display("SUB: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing AND");
        ALUop = 4'b0100; #10;
        $display("AND: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing OR");
        ALUop = 4'b0101; #10;
        $display("OR: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing XOR");
        ALUop = 4'b0110; #10;
        $display("XOR: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing SLT (signed less than)");
        data1 = -32'd10;
        data2 = 32'd5;
        ALUop = 4'b1000; #10;
        $display("SLT: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing SLTU (unsigned less than)");
        data1 = 32'hFFFFFFFF; // -1 in signed, large positive in unsigned
        data2 = 32'd5;
        ALUop = 4'b1001; #10;
        $display("SLTU: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing SLL (logical left shift)");
        data1 = 32'd2;
        data2 = 32'd1;
        ALUop = 4'b1100; #10;
        $display("SLL: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing SRL (logical right shift)");
        data1 = 32'd8;
        data2 = 32'd2;
        ALUop = 4'b1101; #10;
        $display("SRL: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Testing SRA (arithmetic right shift)");
        data1 = -32'd8;
        ALUop = 4'b1110; #10;
        $display("SRA: data1 = %d, data2 = %d, Result = %d", data1, data2, ALUoutput);

        $display("Test completed.");
        $finish;
    end


endmodule
