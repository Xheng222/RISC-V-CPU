// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Tue Sep  3 15:24:59 2024
// Host        : LAPTOP-U0UTG14L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/computer/RISC-V-CPU/risc-v/risc-v.srcs/sources_1/ip/ReceiveUart/ReceiveUart_stub.v
// Design      : ReceiveUart
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_top,Vivado 2019.2" *)
module ReceiveUart(I_clk, I_rst_n, I_rs232_rxd, I_rx_start, 
  O_rs232_txd, O_rx_Data, O_rx_done, O_data_counter)
/* synthesis syn_black_box black_box_pad_pin="I_clk,I_rst_n,I_rs232_rxd,I_rx_start,O_rs232_txd,O_rx_Data[7:0],O_rx_done,O_data_counter[31:0]" */;
  input I_clk;
  input I_rst_n;
  input I_rs232_rxd;
  input I_rx_start;
  output O_rs232_txd;
  output [7:0]O_rx_Data;
  output O_rx_done;
  output [31:0]O_data_counter;
endmodule
