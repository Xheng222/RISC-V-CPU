`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/30 13:02:27
// Design Name: 
// Module Name: MEM_WB
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

//RegWR rd[4:0] RdData[31:0]

module MEM_WB(
    input clk,
    input rst,
    input RegWR,
    input [4:0] rd,
    input [31:0] RdData,
    output reg RegWR_out,
    output reg [4:0] rd_out,
    output reg [31:0] RdData_out
    );
    
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            RegWR_out <= 1'b0;
            rd_out <= 5'b0;
            RdData_out <= 32'b0;
        end
        else begin
            RegWR_out <= RegWR;
            rd_out <= rd;
            RdData_out <= RdData;
        end
    end
endmodule
