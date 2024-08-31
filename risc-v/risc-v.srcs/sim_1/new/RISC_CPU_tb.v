`timescale 1ns / 1ps

module RISC_CPU_tb;

    reg clk;
    reg rst;
    
    RISC_CPU risc_cpu(
        .clk(clk),
        .rst(rst)
    );
    
    always #5 clk = ~clk;
    integer i;
    initial begin
        clk = 1;
        rst = 1;
        #5
        rst = 0;
        #10
        rst = 1;
        #11
        for (i = 0; i < 50; i = i + 1) begin
        
            #10;
        end
        $finish;
    end
endmodule
