`timescale 1ns / 1ps

module MEM_WB(
    input clk,
    input rst,
//    input nop,
//    input pause,
    input RegWR,
    input [4:0] rd,
    input [31:0] rdData,
    
    output reg RegWR_out,
    output reg [4:0] rd_out,
    output reg [31:0] rdData_out
    );
    
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            RegWR_out <= 1'b1;
            rd_out <= 5'b0;
            rdData_out <= 32'b0;
        end
        else begin
//            if (!nop && !pause) begin
                RegWR_out <= RegWR;
                rd_out <= rd;
                rdData_out <= rdData;                
            end
//            else begin
//                if (nop) begin
//                    RegWR_out <= 1'b1;
//                    rd_out <= 5'b0;
//                    rdData_out <= 32'b0;            
//                end
//            end

//        end
    end
endmodule
