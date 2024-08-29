`timescale 1ns / 1ps

module IF_ID(
    input clk,
    input rst,
    input [31:0] pc,
    input [31:0] instr,
    output reg [31:0] pcReg,
    output reg [31:0] instrReg
    );
    
    always @(posedge clk or negedge rst) begin
    if (!rst) begin
        pcReg <= 32'b0;
        instrReg <= 32'b0;
    end
    else begin
        pcReg <= pc;
        instrReg <= instr;
    end
end
    
endmodule
