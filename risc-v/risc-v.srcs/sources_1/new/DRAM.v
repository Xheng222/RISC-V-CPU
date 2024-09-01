`timescale 1ns / 1ps

module DRAM(
    input clk,
    input MemRD,
    input MemWR,
    input [2:0] MemRWType,
    input [31:0] ALUoutput,
    input [31:0] rd2,
    output [31:0] MemData,
    output [7:0] show_num
    );

    reg [7:0] dram [1023:0];
    
    reg [7:0] Reg_show_num;

    wire [31:0] data_8;
    wire [31:0] data_16;
    wire [31:0] data_8u;
    wire [31:0] data_16u;
    wire [31:0] data_32;
    
    initial begin
        Reg_show_num = 0;
        $readmemb("../../../../risc-v.srcs/sources_1/new/DRAM.txt", dram);
    end

    assign data_8 = {{24{dram[ALUoutput][7]}}, dram[ALUoutput][7:0]};
    assign data_16 = {{16{dram[ALUoutput][7]}}, dram[ALUoutput][7:0], dram[ALUoutput + 1][7:0]};
    assign data_8u = {{24{1'b0}}, dram[ALUoutput][7:0]};
    assign data_16u = {{16{1'b0}}, dram[ALUoutput][7:0], dram[ALUoutput + 1][7:0]};
    assign data_32 = {dram[ALUoutput][7:0], dram[ALUoutput + 1][7:0], dram[ALUoutput + 2][7:0], dram[ALUoutput + 3][7:0]};

    always @(posedge clk) begin
        if(MemWR) begin
            case(MemRWType)
                3'b000 : begin 
                    if (ALUoutput != 32'h0402)
                        dram[ALUoutput] <= rd2[7:0]; //8 bit
                    else
                        Reg_show_num <= rd2[7:0];
                end
                3'b001 : begin dram[ALUoutput + 1] <= rd2[7:0]; dram[ALUoutput] <= rd2[15:8]; end //16 bit?
                3'b010 : begin dram[ALUoutput + 3] <= rd2[7:0]; dram[ALUoutput + 2] <= rd2[15:8]; dram[ALUoutput + 1] <= rd2[23:16]; dram[ALUoutput] <= rd2[31:24]; end //32 bit
                default: dram[ALUoutput] <= 8'b0; 
            endcase
        end
    end
    
    assign MemData = MemRD ? 
                     (MemRWType == 3'b000 ? data_8 : // 8 bit?
                      MemRWType == 3'b001 ? data_16 : // 16 bit
                      MemRWType == 3'b010 ? data_32 : //32 bit?
                      MemRWType == 3'b100 ? data_8u : // 8 bit
                      MemRWType == 3'b101 ? data_16u : // 16 bit?
                      32'b0
                     )
                     : 32'b0;
                     
    assign show_num = Reg_show_num;

endmodule
