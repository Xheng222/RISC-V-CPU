`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/29 11:09:13
// Design Name: 
// Module Name: ALU
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

module ALU(
  input  [3:0] ALUop,
  input  [31:0] data1,
  input  [31:0] data2,
  output reg [31:0] ALUoutput
);

wire [31:0] ADD;   //加法操作
wire [31:0] SUB;   //减法操作
wire [31:0] AND;   //按位与
wire [31:0] OR;    //按位或
wire [31:0] XOR;   //按位异或

wire [31:0] SLL;   //逻辑左移
wire [31:0] SRL;   //逻辑右移
wire [31:0] SRA;   //算术右移

wire [31:0] SLT;   //有符号比较，小于置位
wire [31:0] SLTU;  //无符号比较，小于置位

assign ADD = data1 + data2;
assign SUB = data1 - data2;
assign AND = data1 & data2;
assign OR = data1 | data2;
assign XOR = data1 ^ data2;

assign SLL = data1 << data2;
assign SRL = data1 >> data2;
//assign SRA = data1 >>> data2;
assign SRA = {{32{data1[31]}}, data1[31:0]} >> data2[4:0];

assign SLT[31:1] = 31'b0;
assign SLT[0] = ($signed(data1) < $signed(data2)) ? 1 : 0;

assign SLTU[31:1] = 31'b0;
assign SLTU[0] = (data1 < data2) ? 1 : 0;

always @(*) begin
    case(ALUop)
        4'b0000: ALUoutput = ADD;
        4'b0011: ALUoutput = SUB;
        4'b0100: ALUoutput = AND;
        4'b0101: ALUoutput = OR;
        4'b0110: ALUoutput = XOR;
        4'b1000: ALUoutput = SLT;
        4'b1001: ALUoutput = SLTU;
        4'b1100: ALUoutput = SLL;
        4'b1101: ALUoutput = SRL;
        4'b1110: ALUoutput = SRA;
        default: ALUoutput = data1; 
    endcase
end

endmodule
