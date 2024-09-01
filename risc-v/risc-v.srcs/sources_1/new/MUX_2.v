`timescale 1ns / 1ps

module MUX_2(
    input [31:0] a0,
    input [31:0] a1,
    input select,
    output [31:0] data2
    );
    
    assign data2 = select ? a1 : a0;
    
endmodule
