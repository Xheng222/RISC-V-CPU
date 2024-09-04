`timescale 1ns / 1ps

module DRAM(
    input clk,
    input RD_en,
    input WR_en,
    input [2:0] RWType,
    input [31:0] Addr,
    input [31:0] WR_data,
    
    output [31:0] MemData,
    output reg [15:0] show_num_1,
    output reg [15:0] show_num_2
    );
    
    reg [7:0] dram [4095:0];    
    reg [31:0] MemDataReg;
            
    reg [7:0] data;    
    reg [31:0] addr; 
    reg [1:0] state;
    reg flag;

    
    initial begin
        state = 0;
        show_num_1 = 0;
        show_num_2 = 0;
        flag = 0;
        $readmemb("../../../../risc-v.srcs/sources_1/new/DRAM.txt", dram);
    end
    
    always @(posedge clk) begin
        if (WR_en) begin
            case (state)
                2'b00 : begin 
                    case (RWType)
                        3'b000 : begin 
                            if (Addr <= 32'd4095)  begin 
                                data = WR_data[7:0]; 
                                addr = Addr; 
                                state = 2'b01; 
                                dram[addr] = data; 
                                show_num_1[7:0] = WR_data[7:0];
                                show_num_1[15:8] = 8'b0;
                                show_num_2[7:0] = Addr[7:0];  
                                show_num_2[15:8] = 8'b0;
                            end
                            else if (Addr == 32'd4096) begin 
                                show_num_1[7:0] = WR_data[7:0];
                            end  
                            else if (Addr == 32'd4097) begin 
                                show_num_1[15:8] = WR_data[7:0];
                            end  
                            else if (Addr == 32'd4098) begin 
                                show_num_2[7:0] = WR_data[7:0];
                            end                   
                            else if (Addr == 32'd4099) begin 
                                show_num_2[15:8] = WR_data[7:0];
                            end   
                            else begin
                                show_num_1[7:0] = WR_data[7:0];
                                show_num_1[15:8] = 8'b11111111;
                                show_num_2[7:0] = Addr[7:0];  
                                show_num_2[15:8] = 8'b11111111;
                            end
                        end 
                        
                        3'b001 : begin 
                            data = WR_data[15:8]; 
                            addr = Addr; 
                            state = 2'b01;  
                            dram[addr] = data; 
                        end
                        
                        3'b010 : begin 
                            data = WR_data[31:24]; 
                            addr = Addr; 
                            state = 2'b01;  
                            dram[addr] = data; 
                        end
                        
                        3'b111 : begin
                            if (!flag) begin 
                                flag = 1; 
                                addr = 0; 
                                data = WR_data[7:0]; 
                                dram[addr] = data; 
                                state = 2'b00;
                                
//                                Reg_show_num[7:0] = WR_data[7:0];
//                                Reg_show_num[15:8] = Addr[7:0];
                            end
                            else begin
                                addr = addr + 1;
                                data = WR_data[7:0]; 
                                dram[addr] = data; 
                                state = 2'b00;   
                                
//                                Reg_show_num[7:0] = WR_data[7:0];
//                                Reg_show_num[15:8] = Addr[7:0];
                            end 
                        end
                        default : ; 
                    endcase
                end
                
                2'b01 : begin 
                    case (RWType)
                        3'b001 : begin
                            state = 2'b10;
                            data = WR_data[7:0];                             
                            addr = Addr + 1;
                            dram[addr] = data; 
                        end
                        
                        3'b010 : begin  
                            state = 2'b10;
                            data = WR_data[23:16]; 
                            addr = Addr + 1;
                            dram[addr] = data; 
                        end
  
                        default : ; 
                    endcase
                end
                
                2'b10 : begin 
                    case (RWType)
                        3'b010 : begin
                            state = 2'b11;
                            data = WR_data[15:8];
                            addr = Addr + 2;
                            dram[addr] = data; 
                        end
                        
                        default : ; 
                    endcase
                end
                
                2'b11 : begin    
                    case (RWType)
                        3'b010 : begin
                            state = 2'b00;
                            data = WR_data[7:0]; 
                            addr = Addr + 3;
                            dram[addr] = data; 
                        end
                        
                        default : addr = -1; 
                    endcase
                end
            endcase              
        end
        else begin 
            state = 2'b00;
            flag = 0; 
        end
    end
    
    wire [31:0] data_8;
    wire [31:0] data_16;
    wire [31:0] data_8u;
    wire [31:0] data_16u;
    wire [31:0] data_32;

    assign data_8 = {{24{dram[Addr][7]}}, dram[Addr][7:0]};
    assign data_16 = {{16{dram[Addr][7]}}, dram[Addr][7:0], dram[Addr + 1][7:0]};
    assign data_8u = {{24{1'b0}}, dram[Addr][7:0]};
    assign data_16u = {{16{1'b0}}, dram[Addr][7:0], dram[Addr + 1][7:0]};
    assign data_32 = {dram[Addr][7:0], dram[Addr + 1][7:0], dram[Addr + 2][7:0], dram[Addr + 3][7:0]};

    assign MemData = RWType == 3'b000 ? data_8 : // 8 bit?
                      RWType == 3'b001 ? data_16 : // 16 bit
                      RWType == 3'b010 ? data_32 : //32 bit?
                      RWType == 3'b100 ? data_8u : // 8 bit
                      RWType == 3'b101 ? data_16u : 32'b0;

endmodule
