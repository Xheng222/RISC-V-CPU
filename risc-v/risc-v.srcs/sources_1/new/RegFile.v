`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 19:20:19
// Design Name: 
// Module Name: RegFile
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


module RegFile(
    input clk,
    input rst,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input RegWR,
    input [31:0] RegData,
    output [31:0] rd1,
    output [31:0] rd2
    );
    
    reg [31:0] regs [31:0];
    

    
    integer i;
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            for(i=0;i<32;i=i+1) begin
                regs[i] <= 0;
            end
        end
        else if(RegWR) begin
            regs[rd] <= RegData;
        end
    end
    
    //��һ���Ĵ�����Ϊ0
    assign rd1 = (rs1 == 5'b0)? 32'b0 : regs[rs1];
    assign rd2 = (rs2 == 5'b0)? 32'b0 : regs[rs2];
    
endmodule
