`timescale 1ns / 1ps

module Branch_Control_tb;

    // Inputs
    reg [2:0] BranchSrc;
    reg [31:0] imm;
    reg BranchEn;
    reg [31:0] pc;
    reg [31:0] ALUoutput;

    // Outputs
    wire pcSrc;
    wire [31:0] jpc;

    // Instantiate the Unit Under Test (UUT)
    Branch_Control uut (
        .BranchSrc(BranchSrc),
        .imm(imm),
        .BranchEn(BranchEn),
        .pc(pc),
        .ALUoutput(ALUoutput),
        .pcSrc(pcSrc),
        .jpc(jpc)
    );

    initial begin
        // Initialize Inputs
        BranchSrc = 3'b000; // beq
        imm = 32'd10;
        BranchEn = 1;
        pc = 32'd100;
        ALUoutput = 32'd0;
        #10;

        // Check beq condition
        $display("beq Test: pcSrc = %b, jpc = %d", pcSrc, jpc);

        // Change inputs for bne
        BranchSrc = 3'b001; // bne
        ALUoutput = 32'd1;
        #10;
        
        BranchSrc = 3'b001; // bne
        ALUoutput = 32'd0;
        #10;

        // Check bne condition
        $display("bne Test: pcSrc = %b, jpc = %d", pcSrc, jpc);

        // Change inputs for blt
        BranchSrc = 3'b010; // blt
        ALUoutput = 32'd1;
        #10;

        // Check blt condition
        $display("blt Test: pcSrc = %b, jpc = %d", pcSrc, jpc);

        // Change inputs for bge
        BranchSrc = 3'b011; // bge
        ALUoutput = 32'd0;
        #10;

        // Check bge condition
        $display("bge Test: pcSrc = %b, jpc = %d", pcSrc, jpc);

        // Change inputs for jal
        BranchSrc = 3'b110; // jal
        #10;

        // Check jal condition
        $display("jal Test: pcSrc = %b, jpc = %d", pcSrc, jpc);

        // Change inputs for jalr
        BranchSrc = 3'b111; // jalr
        ALUoutput = 32'd200;
        #10;

        // Check jalr condition
        $display("jalr Test: pcSrc = %b, jpc = %d", pcSrc, jpc);

        // Finish the simulation
        $finish;
    end

endmodule
