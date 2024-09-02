`timescale 1ns / 1ps

module Rd_Select(
    input [31:0] EXData,
    input [31:0] MemData,
    input [2:0] RegSrc,
    output [31:0] rdData
    );

    assign rdData = ( RegSrc == 3'b010 ) ? MemData : EXData ;
endmodule
