`timescale 1ns / 1ps
module RISC_CPU(
    input clk,
    input rst,    
    input rx_done,
    input WR_Src,  // 1 - IRAM; 0 - DRAM
    input [31:0] Addr,
    input [7:0] data,
    
    output [15:0] show_num_1,
    output [15:0] show_num_2
    );
    
    //  1 / 4 clk
    
    reg clk_slow = 0;
    integer i = 0;
    always @(posedge clk) begin
        if (i < 1)
            i = i + 1;
        else begin
            i = 0;
            clk_slow = ~clk_slow;
        end
    end
    

    // IF State //
    
    // PC
    wire [31:0] npc;
    wire [31:0] pcReg;
    wire [31:0] instr;
    wire [31:0] pc;  
    wire pcSrc;    
    wire [31:0] jpc; 
    wire nop_pc;
    wire pause_pc;
    
    
    PC_Control pc_control(
        .pc(pc),
        .pcSrc(pcSrc),
        .jpc(jpc),
        .npc(npc)
    );
    
    PC pc_1(
        .clk(clk_slow),
        .rst(rst),
        .nop(nop_pc),
        .pause(pause_pc),
        .npc(npc),
        .pc(pc)
    );
    
    wire IRAMWR_en;
    wire clk_rst;
    wire [15:0] WR_data_IRAM;
    
    assign IRAMWR_en = (!rst && WR_Src);
    assign clk_rst = (rst) ? clk : ~rx_done;
   
    IRAM iram(
        .clk(clk_rst),
        .rst(rst),
        .WR_en(IRAMWR_en),
        .Addr(Addr),
        .instrWR(data),
        .pc(pc),
        
        .instr(instr),
        .WR_data(WR_data_IRAM)
    );
     
    // IF_ID
    wire [6:0] opcode;
    wire [2:0] funct3;
    wire [6:0] funct7;
    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [4:0] rd;
    wire [24:0] imm;
    wire nop_IF_ID;
    wire pause_IF_ID;
    
    IF_ID if_id(
        .clk(clk_slow),
        .rst(rst),
        .nop(nop_IF_ID),
        .pause(pause_IF_ID),
        .pc(pc),
        .instr(instr),
        .pcReg(pcReg),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .imm(imm)
    );
    
    // ID State //
    
    // Control
    wire [2:0] ImmType;
    wire MemRD;
    wire MemWR;
    wire [2:0] MemRWType;
    wire ALUSrc;
    wire [3:0] ALUop;
    wire BranchEn;
    wire [2:0] BranchSrc;
    wire RegWR;
    wire [2:0] RegSrc;
    wire rs1RD;
    wire rs2RD;
    
    Control control(
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .ImmType(ImmType),
        .MemRD(MemRD),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .ALUSrc(ALUSrc),
        .ALUop(ALUop),
        .BranchEn(BranchEn),
        .BranchSrc(BranchSrc),
        .RegWR(RegWR),
        .RegSrc(RegSrc),
        .rs1RD(rs1RD),
        .rs2RD(rs2RD)
    );
    
    // RegFile
    wire [31:0] rs1Data;
    wire [31:0] rs2Data;
    wire [4:0] rd_MEM_WB;
    wire RegWR_MEM_WB;
    wire [31:0] RegData_MEM_WB;
    
    RegFile regfile(
        .clk(clk_slow),
        .rst(rst),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd_MEM_WB),
        .RegWR(RegWR_MEM_WB),
        .RegData(RegData_MEM_WB),
        .rs1Data(rs1Data),
        .rs2Data(rs2Data)
    );
    
    // rs1 rs2 MUX
    wire rs1_select;
    wire rs2_select;
    wire [31:0] rs1_forward_data;
    wire [31:0] rs2_forward_data;
    wire [31:0] rs1Data_MUX;
    wire [31:0] rs2Data_MUX;
    
    MUX_2 mux_rs1(
        .a0(rs1Data),
        .a1(rs1_forward_data),
        .select(rs1_select),
        .data2(rs1Data_MUX)
    );
    
    MUX_2 mux_rs2(
        .a0(rs2Data),
        .a1(rs2_forward_data),
        .select(rs2_select),
        .data2(rs2Data_MUX)
    );
    
    // SEXT
    wire [31:0] ImmExt;

    SEXT sext(
        .imm(imm),
        .ImmType(ImmType),
        .ImmExt(ImmExt)
    );

    // ID/EX       
    wire [31:0] pc_ID_EX;
    wire [31:0] imm_ID_EX;
    wire BranchEn_ID_EX;
    wire [2:0] BranchSrc_ID_EX;
    wire [3:0] ALUop_ID_EX;
    wire [31:0] rs1Data_ID_EX;    
    wire [31:0] rs2Data_ID_EX;
    wire ALUSrc_ID_EX;

    wire MemRD_ID_EX;
    wire MemWR_ID_EX;
    wire [2:0] MemRWType_ID_EX;
    wire RegWR_ID_EX;
    wire [2:0] RegSrc_ID_EX;
    wire [4:0] rd_ID_EX;
    wire nop_ID_EX;
    wire pause_ID_EX;

    ID_EX id_ex(
        .clk(clk_slow),
        .rst(rst),
        .nop(nop_ID_EX),
        .pause(pause_ID_EX),
        .MemRD(MemRD),
        .ALUSrc(ALUSrc),
        .ALUop(ALUop),
        .BranchSrc(BranchSrc),
        .BranchEn(BranchEn),
        .RegWR(RegWR),
        .RegSrc(RegSrc),
        .MemWR(MemWR),
        .MemRWType(MemRWType),
        .rd1(rs1Data_MUX),
        .rd2(rs2Data_MUX),
        .rd(rd),
        .pc(pcReg),
        .imm(ImmExt),
        .MemRD_out(MemRD_ID_EX),
        .ALUSrc_out(ALUSrc_ID_EX),
        .ALUop_out(ALUop_ID_EX),
        .BranchSrc_out(BranchSrc_ID_EX),
        .BranchEn_out(BranchEn_ID_EX),
        .RegWR_out(RegWR_ID_EX),
        .RegSrc_out(RegSrc_ID_EX),
        .MemWR_out(MemWR_ID_EX),
        .MemRWType_out(MemRWType_ID_EX),
        .rd1_out(rs1Data_ID_EX),
        .rd2_out(rs2Data_ID_EX),
        .rd_out(rd_ID_EX),
        .pc_out(pc_ID_EX),
        .imm_out(imm_ID_EX)
    );

    // EX State 
    // ALU
    wire [31:0] ALUoutput;
    wire [31:0] data2_ALU;
    
    MUX_2 mux_ALU(
        .a0(imm_ID_EX),
        .a1(rs2Data_ID_EX),
        .select(ALUSrc_ID_EX),
        .data2(data2_ALU)
    );    
            
    ALU alu(
        .ALUop(ALUop_ID_EX),
        .data1(rs1Data_ID_EX),
        .data2(data2_ALU),
        .ALUoutput(ALUoutput)
    );    
    
    // Branch_Control
    Branch_Control branch_control(
        .BranchSrc(BranchSrc_ID_EX),
        .imm(imm_ID_EX),
        .BranchEn(BranchEn_ID_EX),
        .pc(pc_ID_EX),
        .pcSrc(pcSrc),
        .ALUoutput(ALUoutput),     
        .jpc(jpc)
    );
    
    // EX/MEM

    wire [31:0] ALUoutput_EX_MEM;
    wire [31:0] pc_EX_MEM;
    wire [31:0] imm_EX_MEM;
    wire [31:0] rs2Data_EX_MEM;
    wire MemRD_EX_MEM;
    wire MemWR_EX_MEM;
    wire [2:0] MemRWType_EX_MEM;
    wire RegWR_EX_MEM;
    wire [2:0] RegSrc_EX_MEM;
    wire [4:0] rd_EX_MEM;
//    wire nop_EX_MEM;
//    wire pause_EX_MEM;
    wire [31:0] EXData;
    wire [31:0] EXData_EX_MEM;

    EX_MEM ex_mem(
        .clk(clk_slow),
        .rst(rst),
//        .nop(nop_EX_MEM),
//        .pause(pause_EX_MEM),
        .MemRD(MemRD_ID_EX),
        .MemWR(MemWR_ID_EX),
        .MemRWType(MemRWType_ID_EX),
        .RegWR(RegWR_ID_EX),
        .RegSrc(RegSrc_ID_EX),
        .rd2(rs2Data_ID_EX),
        .rd(rd_ID_EX),
        .EXData(EXData),
        
        .MemRD_out(MemRD_EX_MEM),
        .MemWR_out(MemWR_EX_MEM),
        .MemRWType_out(MemRWType_EX_MEM),
        .RegWR_out(RegWR_EX_MEM),
        .RegSrc_out(RegSrc_EX_MEM),
        .rd2_out(rs2Data_EX_MEM),
        .rd_out(rd_EX_MEM),
        .EXData_out(EXData_EX_MEM)
    );
    
    // MEM State //
    
    // DRAM
    wire DRAMWR_en;
    wire clk_Dram;
    wire MemRD_rst;
    wire MemWR_rst;  
    wire [2:0] MemRWType_rst;  
    wire [31:0] DramAddr;
    wire [31:0] DataWR;
    wire [15:0] WR_data_DRAM;
    wire [31:0] MemData; 
    
//    wire [15:0] show_num_1;
//    wire [15:0] show_num_2;
        
    assign DRAMWR_en = (!rst && !WR_Src);
    assign clk_Dram = (rst) ? clk : ~rx_done;
    assign RD_en_rst = (DRAMWR_en) ? 0 : MemRD_EX_MEM;
    assign WR_en_rst = (DRAMWR_en) ? 1 : MemWR_EX_MEM;
    assign MemRWType_rst = (DRAMWR_en) ? 3'b111 : MemRWType_EX_MEM;
    assign  DramAddr = (DRAMWR_en) ? Addr : EXData_EX_MEM;
    assign  DataWR = (DRAMWR_en) ? {{24{1'b0}}, data} : rs2Data_EX_MEM;
    
   
    DRAM dram(
        .clk(clk_Dram),
        .RD_en(RD_en_rst),
        .WR_en(WR_en_rst),
        .RWType(MemRWType_rst),
        .Addr(DramAddr),
        .WR_data(DataWR),
        .MemData(MemData),
        
        .show_num_1(show_num_1),
        .show_num_2(WR_data_DRAM)
    );

    assign show_num_2 = (IRAMWR_en) ? WR_data_IRAM : WR_data_DRAM;
    
    // WB select    
    wire [31:0] rdData;
    
    Rd_Select rd_select(
        .EXData(EXData_EX_MEM),
        .MemData(MemData),
        .RegSrc(RegSrc_EX_MEM),
        .rdData(rdData)
    );

    // WB State //
//    wire nop_MEM_WB;
//    wire pause_MEM_WB;
    
    MEM_WB mem_wb(
        .clk(clk_slow),
        .rst(rst),
//        .nop(nop_MEM_WB),
//        .pause(pause_MEM_WB),
        .RegWR(RegWR_EX_MEM),
        .rd(rd_EX_MEM),
        .rdData(rdData),
        .rd_out(rd_MEM_WB),
        .RegWR_out(RegWR_MEM_WB),
        .rdData_out(RegData_MEM_WB)
    );
    
    // Data Hazard
    wire [1:0] rs1_forward;
    wire [1:0] rs2_forward;

    
    Data_Hazard data_hazard(
        .rs1RD(rs1RD),
        .rs1_IF_ID(rs1),
        .rs2RD(rs2RD),
        .rs2_IF_ID(rs2),
        .RegWR_ID_EX(RegWR_ID_EX),
        .rd_ID_EX(rd_ID_EX),
        .RegWR_EX_MEM(RegWR_EX_MEM),
        .rd_EX_MEM(rd_EX_MEM),
        .RegWR_MEM_WB(RegWR_MEM_WB),
        .rd_MEM_WB(rd_MEM_WB),
        .pcSrc(pcSrc),
        .RegSrc_ID_EX(RegSrc_ID_EX),
        
        .nop_pc(nop_pc),
        .pause_pc(pause_pc),
        .nop_IF_ID(nop_IF_ID),
        .pause_IF_ID(pause_IF_ID),
        .nop_ID_EX(nop_ID_EX),
        .pause_ID_EX(pause_ID_EX),
        .nop_EX_MEM(nop_EX_MEM),
        .pause_EX_MEM(pause_EX_MEM),
        .nop_MEM_WB(nop_MEM_WB),
        .pause_MEM_WB(pause_MEM_WB),
        
        .rs1_forward(rs1_forward),
        .rs2_forward(rs2_forward),
        .rs1_select(rs1_select),
        .rs2_select(rs2_select)
    );
    
    // Forward
    Forward forward(
        .RegSrc_ID_EX(RegSrc_ID_EX),
        .ALUoutput(ALUoutput),
        .imm_ID_EX(imm_ID_EX),
        .pc_ID_EX(pc_ID_EX),
        .rdData_MEM(rdData),
        .rdData_WB(RegData_MEM_WB),
        .rs1_forward(rs1_forward),
        .rs2_forward(rs2_forward),
        
        .rs1_forward_data(rs1_forward_data),
        .rs2_forward_data(rs2_forward_data),
        .EXData(EXData)
    );
endmodule
