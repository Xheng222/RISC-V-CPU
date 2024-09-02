`timescale 1ns / 1ps

module DRAM(
    input clk,
    input clk_slow,
    input MemRD,
    input MemWR,
    input [2:0] MemRWType,
    input [31:0] ALUoutput,
    input [31:0] rd2,
    
    output [31:0] MemData,
    output [7:0] show_num
    );
    
//    reg WRSrc; // 1 - Write
    reg [31:0] addr;    
    reg [7:0] data;

//    output reg [7:0] MemData
    
//    DRAM_WR dram_wr(
//        .clk(clk),
//        .WRSrc(WRSrc),
//        .addr(addr),
//        .data(data),
        
//        .MemData(MemData_WR)
    
//    );

    reg [31:0] MemDataReg;
    reg [7:0] Reg_show_num;
    reg [1:0] state;
    
    reg [7:0] dram [1023:0];
    
    initial begin
        state = 0;
//        WRSrc = 0;
        Reg_show_num = 0;
        $readmemb("../../../../risc-v.srcs/sources_1/new/DRAM.txt", dram);
    end
    
    always @(posedge clk) begin
        if (MemWR) begin
            case (state)
                2'b00 : begin 
//                    WRSrc <= 1; 
                    addr = ALUoutput;
                    state = 2'b01;
                    case (MemRWType)
                        3'b000 :  begin 
                            if (addr != 1026) begin
                                data = rd2[7:0];                                 
                            end
//                            else begin
                                Reg_show_num = rd2[7:0];     
//                                addr = -1;                             
//                            end      
                        end 
                        3'b001 :  data = rd2[15:8]; 
                        3'b010 :  data = rd2[31:24]; 
                        default : addr = -1; 
                    endcase
                end
                
                2'b01 : begin 
                    addr = ALUoutput + 1;
                    state = 2'b10;
                    case (MemRWType)
//                        3'b000 :  WRSrc <= 0;
                        3'b001 :  data = rd2[7:0]; 
                        3'b010 :  data = rd2[23:16]; 
                        default : addr = -1; 
                    endcase
                end
                
                2'b10 : begin 
                    addr = ALUoutput + 2;
                    state = 2'b11;
                    case (MemRWType)
//                        3'b001 :  WRSrc <= 0; 
                        3'b010 :  data = rd2[15:8]; 
                        default : addr = -1; 
                    endcase
                end
                
                2'b11 : begin 
                    addr = ALUoutput + 3;
                    state = 2'b00;
                    case (MemRWType)
                        3'b010 :  data = rd2[7:0]; 
                        default : addr = -1; 
                    endcase
                end
            endcase     
            
            if (addr != -1) dram[addr] <= data;     
              
        end
//        else if (MemRD) begin
//            case (state) 
//                2'b00 : begin 
//                    addr = ALUoutput;
//                    state = 2'b01;
//                    case (MemRWType)
//                        3'b000 :  MemDataReg[7:0] = MemData_WR; 
//                        3'b100 :  MemDataReg[7:0] = MemData_WR; 
//                        3'b001 :  MemDataReg[15:8] = MemData_WR; 
//                        3'b101 :  MemDataReg[15:8] = MemData_WR; 
//                        3'b010 :  MemDataReg[31:24] = MemData_WR;
//                        default : ; 
//                    endcase
//                end
//                2'b01 : begin 
//                    addr = ALUoutput + 1;
//                    state = 2'b10;
//                    case (MemRWType)
//                        3'b000 :  MemDataReg[31:8] = {24{MemDataReg[7]}};
//                        3'b100 :  MemDataReg[31:8] = 24'b0; 
//                        3'b001 :  MemDataReg[7:0] = MemData_WR; 
//                        3'b101 :  MemDataReg[7:0] = MemData_WR; 
//                        3'b010 :  MemDataReg[23:16] = MemData_WR;
//                        default : ; 
//                    endcase
//                end
//                2'b10 : begin 
//                    addr = ALUoutput + 2;
//                    state = 2'b11;
//                    case (MemRWType)
//                        3'b001 :  MemDataReg[31:16] = {16{MemDataReg[15]}}; 
//                        3'b101 :  MemDataReg[31:16] = 16'b0; 
//                        3'b010 :  MemDataReg[15:7] = MemData_WR;
//                        default : ; 
//                    endcase
//                end
//                2'b11 : begin 
//                    addr = ALUoutput + 3;
//                    state = 2'b00;
//                    case (MemRWType)
//                        3'b010 :  MemDataReg[7:0] = MemData_WR;
//                        default : ; 
//                    endcase
//                end
//            endcase
//        end
        else 
            state = 2'b00;
    end
    
    wire [31:0] data_8;
    wire [31:0] data_16;
    wire [31:0] data_8u;
    wire [31:0] data_16u;
    wire [31:0] data_32;

    assign data_8 = {{24{dram[ALUoutput][7]}}, dram[ALUoutput][7:0]};
    assign data_16 = {{16{dram[ALUoutput][7]}}, dram[ALUoutput][7:0], dram[ALUoutput + 1][7:0]};
    assign data_8u = {{24{1'b0}}, dram[ALUoutput][7:0]};
    assign data_16u = {{16{1'b0}}, dram[ALUoutput][7:0], dram[ALUoutput + 1][7:0]};
    assign data_32 = {dram[ALUoutput][7:0], dram[ALUoutput + 1][7:0], dram[ALUoutput + 2][7:0], dram[ALUoutput + 3][7:0]};

    assign MemData = MemRWType == 3'b000 ? data_8 : // 8 bit?
                      MemRWType == 3'b001 ? data_16 : // 16 bit
                      MemRWType == 3'b010 ? data_32 : //32 bit?
                      MemRWType == 3'b100 ? data_8u : // 8 bit
                      MemRWType == 3'b101 ? data_16u : 32'b0;


//    assign MemData = MemDataReg;
                     
    assign show_num = Reg_show_num;





//    reg [7:0] dram [255:0];
    
//    
//    reg [31:0] DataRD;

//    wire [31:0] data_8;
//    wire [31:0] data_16;
//    wire [31:0] data_8u;
//    wire [31:0] data_16u;
//    wire [31:0] data_32;
    
//    initial begin
//        Reg_show_num = 0;
//        $readmemb("../../../../risc-v.srcs/sources_1/new/DRAM.txt", dram);
//    end

//    assign data_8 = {{24{DataRD[31]}}, DataRD[31:24]};
//    assign data_16 = {{16{DataRD[31]}}, DataRD[31:16]};
//    assign data_8u = {{24{1'b0}}, DataRD[31:24]};
//    assign data_16u = {{16{1'b0}}, DataRD[31:16]};
//    assign data_32 = DataRD;

//    always @(posedge clk_slow) begin
//        if(MemWR) begin
//            case(MemRWType)
//                3'b000 : begin 
//                    if (ALUoutput != 32'h0402)
//                        dram[ALUoutput] <= rd2[7:0]; //8 bit
////                    else
//                        Reg_show_num <= rd2[7:0];
//                end
////                3'b001 : begin dram[ALUoutput + 1] <= rd2[7:0]; dram[ALUoutput] <= rd2[15:8]; end //16 bit?
////                3'b010 : begin dram[ALUoutput + 3] <= rd2[7:0]; dram[ALUoutput + 2] <= rd2[15:8]; dram[ALUoutput + 1] <= rd2[23:16]; dram[ALUoutput] <= rd2[31:24]; end //32 bit
//                default: dram[ALUoutput] <= 8'b0; 
//            endcase
//        end
//        else if (MemRD) begin
//            DataRD[7:0] <= dram[ALUoutput + 3][7:0];
//            DataRD[15:8] <= dram[ALUoutput + 2][7:0];
//            DataRD[23:16] <= dram[ALUoutput + 1][7:0];
//            DataRD[31:24] <= dram[ALUoutput][7:0];
            
////            case(MemRWType)
////                3'b000 : DataRD <= data_8;
////                3'b001 : DataRD <= data_16; //16 bit
////                3'b010 : DataRD <= data_32;  //32 bit
////                3'b100 : DataRD <= data_8u;  
////                3'b101 : DataRD <= data_16u;  
////                default: DataRD <= 32'b0; 
////            endcase
//        end
//    end
    
    


endmodule
