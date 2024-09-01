// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Sun Sep  1 20:04:03 2024
// Host        : LAPTOP-U0UTG14L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/computer/RISC-V-CPU/risc-v/risc-v.srcs/sources_1/ip/LightShow/LightShow_stub.v
// Design      : LightShow
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "light_show,Vivado 2019.2" *)
module LightShow(I_clk, I_rst_n, I_show_num, O_led, O_px)
/* synthesis syn_black_box black_box_pad_pin="I_clk,I_rst_n,I_show_num[7:0],O_led[6:0],O_px[1:0]" */;
  input I_clk;
  input I_rst_n;
  input [7:0]I_show_num;
  output [6:0]O_led;
  output [1:0]O_px;
endmodule
