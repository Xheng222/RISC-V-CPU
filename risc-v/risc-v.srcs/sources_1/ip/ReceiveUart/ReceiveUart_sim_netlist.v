// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Tue Sep  3 15:24:59 2024
// Host        : LAPTOP-U0UTG14L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/computer/RISC-V-CPU/risc-v/risc-v.srcs/sources_1/ip/ReceiveUart/ReceiveUart_sim_netlist.v
// Design      : ReceiveUart
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ReceiveUart,uart_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "uart_top,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module ReceiveUart
   (I_clk,
    I_rst_n,
    I_rs232_rxd,
    I_rx_start,
    O_rs232_txd,
    O_rx_Data,
    O_rx_done,
    O_data_counter);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 I_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_clk, ASSOCIATED_RESET I_rst_n, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input I_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 I_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input I_rst_n;
  input I_rs232_rxd;
  input I_rx_start;
  output O_rs232_txd;
  output [7:0]O_rx_Data;
  output O_rx_done;
  output [31:0]O_data_counter;

  wire I_clk;
  wire I_rs232_rxd;
  wire I_rst_n;
  wire I_rx_start;
  wire [31:0]O_data_counter;
  wire O_rs232_txd;
  wire [7:0]O_rx_Data;
  wire O_rx_done;

  ReceiveUart_uart_top inst
       (.I_clk(I_clk),
        .I_rs232_rxd(I_rs232_rxd),
        .I_rst_n(I_rst_n),
        .I_rx_start(I_rx_start),
        .O_data_counter(O_data_counter),
        .O_rs232_txd(O_rs232_txd),
        .O_rx_Data(O_rx_Data),
        .O_rx_done(O_rx_done));
endmodule

(* ORIG_REF_NAME = "baudrate_gen" *) 
module ReceiveUart_baudrate_gen
   (\R_bps_rx_cnt_reg[12]_0 ,
    O_bps_rx_clk_en,
    I_clk,
    \R_bps_rx_cnt_reg[12]_1 );
  output \R_bps_rx_cnt_reg[12]_0 ;
  input O_bps_rx_clk_en;
  input I_clk;
  input \R_bps_rx_cnt_reg[12]_1 ;

  wire I_clk;
  wire O_bps_rx_clk_en;
  wire O_rs232_rxd_reg_i_10_n_0;
  wire O_rs232_rxd_reg_i_6_n_0;
  wire O_rs232_rxd_reg_i_7_n_0;
  wire O_rs232_rxd_reg_i_8_n_0;
  wire O_rs232_rxd_reg_i_9_n_0;
  wire [12:0]R_bps_rx_cnt;
  wire [12:1]R_bps_rx_cnt0;
  wire R_bps_rx_cnt0_carry__0_n_0;
  wire R_bps_rx_cnt0_carry__0_n_1;
  wire R_bps_rx_cnt0_carry__0_n_2;
  wire R_bps_rx_cnt0_carry__0_n_3;
  wire R_bps_rx_cnt0_carry__1_n_1;
  wire R_bps_rx_cnt0_carry__1_n_2;
  wire R_bps_rx_cnt0_carry__1_n_3;
  wire R_bps_rx_cnt0_carry_n_0;
  wire R_bps_rx_cnt0_carry_n_1;
  wire R_bps_rx_cnt0_carry_n_2;
  wire R_bps_rx_cnt0_carry_n_3;
  wire \R_bps_rx_cnt[12]_i_2_n_0 ;
  wire \R_bps_rx_cnt[12]_i_3_n_0 ;
  wire \R_bps_rx_cnt_reg[12]_0 ;
  wire \R_bps_rx_cnt_reg[12]_1 ;
  wire [12:0]p_0_in;
  wire [3:3]NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hBA)) 
    O_rs232_rxd_reg_i_10
       (.I0(R_bps_rx_cnt[11]),
        .I1(R_bps_rx_cnt[10]),
        .I2(R_bps_rx_cnt[9]),
        .O(O_rs232_rxd_reg_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    O_rs232_rxd_reg_i_5
       (.I0(O_rs232_rxd_reg_i_6_n_0),
        .I1(O_rs232_rxd_reg_i_7_n_0),
        .I2(O_rs232_rxd_reg_i_8_n_0),
        .I3(O_rs232_rxd_reg_i_9_n_0),
        .I4(O_rs232_rxd_reg_i_10_n_0),
        .I5(R_bps_rx_cnt[12]),
        .O(\R_bps_rx_cnt_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    O_rs232_rxd_reg_i_6
       (.I0(R_bps_rx_cnt[10]),
        .I1(R_bps_rx_cnt[11]),
        .O(O_rs232_rxd_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    O_rs232_rxd_reg_i_7
       (.I0(R_bps_rx_cnt[7]),
        .I1(R_bps_rx_cnt[8]),
        .O(O_rs232_rxd_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    O_rs232_rxd_reg_i_8
       (.I0(R_bps_rx_cnt[3]),
        .I1(R_bps_rx_cnt[0]),
        .I2(R_bps_rx_cnt[2]),
        .I3(R_bps_rx_cnt[1]),
        .I4(R_bps_rx_cnt[5]),
        .I5(R_bps_rx_cnt[4]),
        .O(O_rs232_rxd_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    O_rs232_rxd_reg_i_9
       (.I0(R_bps_rx_cnt[8]),
        .I1(R_bps_rx_cnt[7]),
        .I2(R_bps_rx_cnt[6]),
        .O(O_rs232_rxd_reg_i_9_n_0));
  CARRY4 R_bps_rx_cnt0_carry
       (.CI(1'b0),
        .CO({R_bps_rx_cnt0_carry_n_0,R_bps_rx_cnt0_carry_n_1,R_bps_rx_cnt0_carry_n_2,R_bps_rx_cnt0_carry_n_3}),
        .CYINIT(R_bps_rx_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_bps_rx_cnt0[4:1]),
        .S(R_bps_rx_cnt[4:1]));
  CARRY4 R_bps_rx_cnt0_carry__0
       (.CI(R_bps_rx_cnt0_carry_n_0),
        .CO({R_bps_rx_cnt0_carry__0_n_0,R_bps_rx_cnt0_carry__0_n_1,R_bps_rx_cnt0_carry__0_n_2,R_bps_rx_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_bps_rx_cnt0[8:5]),
        .S(R_bps_rx_cnt[8:5]));
  CARRY4 R_bps_rx_cnt0_carry__1
       (.CI(R_bps_rx_cnt0_carry__0_n_0),
        .CO({NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED[3],R_bps_rx_cnt0_carry__1_n_1,R_bps_rx_cnt0_carry__1_n_2,R_bps_rx_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_bps_rx_cnt0[12:9]),
        .S(R_bps_rx_cnt[12:9]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \R_bps_rx_cnt[0]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[10]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[10]),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[11]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[11]),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[12]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hEEEEEAAAAAAAAAAA)) 
    \R_bps_rx_cnt[12]_i_2 
       (.I0(R_bps_rx_cnt[12]),
        .I1(R_bps_rx_cnt[9]),
        .I2(R_bps_rx_cnt[5]),
        .I3(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I4(R_bps_rx_cnt[7]),
        .I5(R_bps_rx_cnt[8]),
        .O(\R_bps_rx_cnt[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA888)) 
    \R_bps_rx_cnt[12]_i_3 
       (.I0(R_bps_rx_cnt[6]),
        .I1(R_bps_rx_cnt[4]),
        .I2(R_bps_rx_cnt[0]),
        .I3(R_bps_rx_cnt[1]),
        .I4(R_bps_rx_cnt[2]),
        .I5(R_bps_rx_cnt[3]),
        .O(\R_bps_rx_cnt[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[1]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[2]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[3]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[4]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[5]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[6]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[7]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[8]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \R_bps_rx_cnt[9]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I4(R_bps_rx_cnt0[9]),
        .O(p_0_in[9]));
  FDCE \R_bps_rx_cnt_reg[0] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[0]),
        .Q(R_bps_rx_cnt[0]));
  FDCE \R_bps_rx_cnt_reg[10] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[10]),
        .Q(R_bps_rx_cnt[10]));
  FDCE \R_bps_rx_cnt_reg[11] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[11]),
        .Q(R_bps_rx_cnt[11]));
  FDCE \R_bps_rx_cnt_reg[12] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[12]),
        .Q(R_bps_rx_cnt[12]));
  FDCE \R_bps_rx_cnt_reg[1] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[1]),
        .Q(R_bps_rx_cnt[1]));
  FDCE \R_bps_rx_cnt_reg[2] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[2]),
        .Q(R_bps_rx_cnt[2]));
  FDCE \R_bps_rx_cnt_reg[3] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[3]),
        .Q(R_bps_rx_cnt[3]));
  FDCE \R_bps_rx_cnt_reg[4] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[4]),
        .Q(R_bps_rx_cnt[4]));
  FDCE \R_bps_rx_cnt_reg[5] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[5]),
        .Q(R_bps_rx_cnt[5]));
  FDCE \R_bps_rx_cnt_reg[6] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[6]),
        .Q(R_bps_rx_cnt[6]));
  FDCE \R_bps_rx_cnt_reg[7] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[7]),
        .Q(R_bps_rx_cnt[7]));
  FDCE \R_bps_rx_cnt_reg[8] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[8]),
        .Q(R_bps_rx_cnt[8]));
  FDCE \R_bps_rx_cnt_reg[9] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_1 ),
        .D(p_0_in[9]),
        .Q(R_bps_rx_cnt[9]));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module ReceiveUart_uart_rx
   (I_rst_n_0,
    O_bps_rx_clk_en,
    O_rx_done_reg_0,
    O_rs232_txd,
    O_rx_Data,
    I_rs232_rxd,
    I_clk,
    I_rst_n,
    \R_para_data_reg_reg[7]_0 );
  output I_rst_n_0;
  output O_bps_rx_clk_en;
  output O_rx_done_reg_0;
  output O_rs232_txd;
  output [7:0]O_rx_Data;
  input I_rs232_rxd;
  input I_clk;
  input I_rst_n;
  input \R_para_data_reg_reg[7]_0 ;

  wire \FSM_sequential_R_state[0]_i_1_n_0 ;
  wire \FSM_sequential_R_state[1]_i_1_n_0 ;
  wire \FSM_sequential_R_state[2]_i_1_n_0 ;
  wire \FSM_sequential_R_state[3]_i_1_n_0 ;
  wire \FSM_sequential_R_state[3]_i_2_n_0 ;
  wire I_clk;
  wire I_rs232_rxd;
  wire I_rst_n;
  wire I_rst_n_0;
  wire O_bps_rx_clk_en;
  wire \O_para_data[7]_i_1_n_0 ;
  wire \O_para_data[7]_i_2_n_0 ;
  wire O_rs232_rxd_reg_i_1_n_0;
  wire O_rs232_rxd_reg_i_3_n_0;
  wire O_rs232_rxd_reg_i_4_n_0;
  wire O_rs232_txd;
  wire [7:0]O_rx_Data;
  wire O_rx_done1;
  wire O_rx_done_i_1_n_0;
  wire O_rx_done_reg_0;
  wire [7:0]R_para_data_reg;
  wire \R_para_data_reg[0]_i_1_n_0 ;
  wire \R_para_data_reg[0]_i_2_n_0 ;
  wire \R_para_data_reg[1]_i_1_n_0 ;
  wire \R_para_data_reg[1]_i_2_n_0 ;
  wire \R_para_data_reg[2]_i_1_n_0 ;
  wire \R_para_data_reg[2]_i_2_n_0 ;
  wire \R_para_data_reg[2]_i_3_n_0 ;
  wire \R_para_data_reg[2]_i_4_n_0 ;
  wire \R_para_data_reg[3]_i_1_n_0 ;
  wire \R_para_data_reg[3]_i_2_n_0 ;
  wire \R_para_data_reg[4]_i_1_n_0 ;
  wire \R_para_data_reg[4]_i_2_n_0 ;
  wire \R_para_data_reg[4]_i_3_n_0 ;
  wire \R_para_data_reg[4]_i_4_n_0 ;
  wire \R_para_data_reg[5]_i_1_n_0 ;
  wire \R_para_data_reg[5]_i_2_n_0 ;
  wire \R_para_data_reg[5]_i_3_n_0 ;
  wire \R_para_data_reg[5]_i_4_n_0 ;
  wire \R_para_data_reg[6]_i_1_n_0 ;
  wire \R_para_data_reg[6]_i_2_n_0 ;
  wire \R_para_data_reg[6]_i_3_n_0 ;
  wire \R_para_data_reg[7]_i_1_n_0 ;
  wire \R_para_data_reg[7]_i_2_n_0 ;
  wire \R_para_data_reg[7]_i_3_n_0 ;
  wire \R_para_data_reg_reg[7]_0 ;
  wire R_receiving_i_1_n_0;
  wire R_receiving_reg_n_0;
  wire R_rs232_rx_reg0;
  wire R_rs232_rx_reg1;
  wire R_rs232_rx_reg2;
  wire R_rs232_rx_reg3;
  wire [3:0]R_state;

  LUT6 #(
    .INIT(64'h0000000011150000)) 
    \FSM_sequential_R_state[0]_i_1 
       (.I0(R_state[0]),
        .I1(R_state[3]),
        .I2(R_state[2]),
        .I3(R_state[1]),
        .I4(R_receiving_reg_n_0),
        .I5(O_rx_done_reg_0),
        .O(\FSM_sequential_R_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00001400)) 
    \FSM_sequential_R_state[1]_i_1 
       (.I0(R_state[3]),
        .I1(R_state[0]),
        .I2(R_state[1]),
        .I3(R_receiving_reg_n_0),
        .I4(O_rx_done_reg_0),
        .O(\FSM_sequential_R_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004040004000400)) 
    \FSM_sequential_R_state[2]_i_1 
       (.I0(R_state[3]),
        .I1(R_receiving_reg_n_0),
        .I2(O_rx_done_reg_0),
        .I3(R_state[2]),
        .I4(R_state[0]),
        .I5(R_state[1]),
        .O(\FSM_sequential_R_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_R_state[3]_i_1 
       (.I0(\R_para_data_reg_reg[7]_0 ),
        .I1(O_rx_done_reg_0),
        .I2(R_receiving_reg_n_0),
        .O(\FSM_sequential_R_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000008)) 
    \FSM_sequential_R_state[3]_i_2 
       (.I0(R_state[3]),
        .I1(R_receiving_reg_n_0),
        .I2(O_rx_done_reg_0),
        .I3(R_state[1]),
        .I4(R_state[2]),
        .I5(R_state[0]),
        .O(\FSM_sequential_R_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[0] 
       (.C(I_clk),
        .CE(\FSM_sequential_R_state[3]_i_1_n_0 ),
        .CLR(I_rst_n_0),
        .D(\FSM_sequential_R_state[0]_i_1_n_0 ),
        .Q(R_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[1] 
       (.C(I_clk),
        .CE(\FSM_sequential_R_state[3]_i_1_n_0 ),
        .CLR(I_rst_n_0),
        .D(\FSM_sequential_R_state[1]_i_1_n_0 ),
        .Q(R_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[2] 
       (.C(I_clk),
        .CE(\FSM_sequential_R_state[3]_i_1_n_0 ),
        .CLR(I_rst_n_0),
        .D(\FSM_sequential_R_state[2]_i_1_n_0 ),
        .Q(R_state[2]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[3] 
       (.C(I_clk),
        .CE(\FSM_sequential_R_state[3]_i_1_n_0 ),
        .CLR(I_rst_n_0),
        .D(\FSM_sequential_R_state[3]_i_2_n_0 ),
        .Q(R_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    O_bps_rx_clk_en_i_1
       (.I0(R_receiving_reg_n_0),
        .I1(O_rx_done_reg_0),
        .O(O_rx_done1));
  FDCE O_bps_rx_clk_en_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(O_rx_done1),
        .Q(O_bps_rx_clk_en));
  LUT5 #(
    .INIT(32'h20000000)) 
    \O_para_data[7]_i_1 
       (.I0(R_receiving_reg_n_0),
        .I1(O_rx_done_reg_0),
        .I2(I_rst_n),
        .I3(\O_para_data[7]_i_2_n_0 ),
        .I4(\R_para_data_reg_reg[7]_0 ),
        .O(\O_para_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \O_para_data[7]_i_2 
       (.I0(R_state[1]),
        .I1(R_state[2]),
        .I2(R_state[0]),
        .I3(R_state[3]),
        .O(\O_para_data[7]_i_2_n_0 ));
  FDRE \O_para_data_reg[0] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[0]),
        .Q(O_rx_Data[0]),
        .R(1'b0));
  FDRE \O_para_data_reg[1] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[1]),
        .Q(O_rx_Data[1]),
        .R(1'b0));
  FDRE \O_para_data_reg[2] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[2]),
        .Q(O_rx_Data[2]),
        .R(1'b0));
  FDRE \O_para_data_reg[3] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[3]),
        .Q(O_rx_Data[3]),
        .R(1'b0));
  FDRE \O_para_data_reg[4] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[4]),
        .Q(O_rx_Data[4]),
        .R(1'b0));
  FDRE \O_para_data_reg[5] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[5]),
        .Q(O_rx_Data[5]),
        .R(1'b0));
  FDRE \O_para_data_reg[6] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[6]),
        .Q(O_rx_Data[6]),
        .R(1'b0));
  FDRE \O_para_data_reg[7] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[7]),
        .Q(O_rx_Data[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDFFFFFFF10000000)) 
    O_rs232_rxd_reg_i_1
       (.I0(O_rs232_rxd_reg_i_3_n_0),
        .I1(O_rx_done_reg_0),
        .I2(R_receiving_reg_n_0),
        .I3(O_rs232_rxd_reg_i_4_n_0),
        .I4(\R_para_data_reg_reg[7]_0 ),
        .I5(O_rs232_txd),
        .O(O_rs232_rxd_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    O_rs232_rxd_reg_i_2
       (.I0(I_rst_n),
        .O(I_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEE01)) 
    O_rs232_rxd_reg_i_3
       (.I0(R_state[1]),
        .I1(R_state[2]),
        .I2(R_state[0]),
        .I3(R_state[3]),
        .O(O_rs232_rxd_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h57)) 
    O_rs232_rxd_reg_i_4
       (.I0(R_state[3]),
        .I1(R_state[2]),
        .I2(R_state[1]),
        .O(O_rs232_rxd_reg_i_4_n_0));
  FDPE O_rs232_rxd_reg_reg
       (.C(I_clk),
        .CE(1'b1),
        .D(O_rs232_rxd_reg_i_1_n_0),
        .PRE(I_rst_n_0),
        .Q(O_rs232_txd));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    O_rx_done_i_1
       (.I0(\O_para_data[7]_i_2_n_0 ),
        .I1(O_rs232_rxd_reg_i_4_n_0),
        .I2(\R_para_data_reg_reg[7]_0 ),
        .I3(O_rx_done_reg_0),
        .I4(R_receiving_reg_n_0),
        .O(O_rx_done_i_1_n_0));
  FDCE O_rx_done_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(O_rx_done_i_1_n_0),
        .Q(O_rx_done_reg_0));
  LUT6 #(
    .INIT(64'hCC8CCCCC00800000)) 
    \R_para_data_reg[0]_i_1 
       (.I0(\R_para_data_reg[0]_i_2_n_0 ),
        .I1(O_rx_done1),
        .I2(\R_para_data_reg[4]_i_3_n_0 ),
        .I3(R_state[2]),
        .I4(\R_para_data_reg_reg[7]_0 ),
        .I5(R_para_data_reg[0]),
        .O(\R_para_data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \R_para_data_reg[0]_i_2 
       (.I0(R_state[2]),
        .I1(I_rs232_rxd),
        .I2(R_state[0]),
        .I3(R_state[1]),
        .I4(R_state[3]),
        .O(\R_para_data_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCC8CCCCC00800000)) 
    \R_para_data_reg[1]_i_1 
       (.I0(\R_para_data_reg[1]_i_2_n_0 ),
        .I1(O_rx_done1),
        .I2(\R_para_data_reg[5]_i_3_n_0 ),
        .I3(R_state[2]),
        .I4(\R_para_data_reg_reg[7]_0 ),
        .I5(R_para_data_reg[1]),
        .O(\R_para_data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \R_para_data_reg[1]_i_2 
       (.I0(R_state[2]),
        .I1(R_state[1]),
        .I2(R_state[0]),
        .I3(I_rs232_rxd),
        .I4(R_state[3]),
        .O(\R_para_data_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF333380000000)) 
    \R_para_data_reg[2]_i_1 
       (.I0(\R_para_data_reg[2]_i_2_n_0 ),
        .I1(\R_para_data_reg[2]_i_3_n_0 ),
        .I2(\R_para_data_reg_reg[7]_0 ),
        .I3(\R_para_data_reg[2]_i_4_n_0 ),
        .I4(O_rx_done1),
        .I5(R_para_data_reg[2]),
        .O(\R_para_data_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \R_para_data_reg[2]_i_2 
       (.I0(R_state[2]),
        .I1(R_state[1]),
        .I2(I_rs232_rxd),
        .I3(R_state[0]),
        .I4(R_state[3]),
        .O(\R_para_data_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFBBF)) 
    \R_para_data_reg[2]_i_3 
       (.I0(O_rx_done_reg_0),
        .I1(R_receiving_reg_n_0),
        .I2(R_state[1]),
        .I3(R_state[0]),
        .O(\R_para_data_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \R_para_data_reg[2]_i_4 
       (.I0(R_state[3]),
        .I1(R_state[2]),
        .O(\R_para_data_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCC8CCCCC00800000)) 
    \R_para_data_reg[3]_i_1 
       (.I0(\R_para_data_reg[3]_i_2_n_0 ),
        .I1(O_rx_done1),
        .I2(\R_para_data_reg[5]_i_3_n_0 ),
        .I3(R_state[1]),
        .I4(\R_para_data_reg_reg[7]_0 ),
        .I5(R_para_data_reg[3]),
        .O(\R_para_data_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \R_para_data_reg[3]_i_2 
       (.I0(R_state[0]),
        .I1(I_rs232_rxd),
        .I2(R_state[1]),
        .I3(R_state[2]),
        .I4(R_state[3]),
        .O(\R_para_data_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF00FFFF80000000)) 
    \R_para_data_reg[4]_i_1 
       (.I0(\R_para_data_reg[4]_i_2_n_0 ),
        .I1(\R_para_data_reg_reg[7]_0 ),
        .I2(\R_para_data_reg[4]_i_3_n_0 ),
        .I3(O_rx_done1),
        .I4(\R_para_data_reg[4]_i_4_n_0 ),
        .I5(R_para_data_reg[4]),
        .O(\R_para_data_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \R_para_data_reg[4]_i_2 
       (.I0(I_rs232_rxd),
        .I1(R_state[0]),
        .I2(R_state[1]),
        .I3(R_state[2]),
        .I4(R_state[3]),
        .O(\R_para_data_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \R_para_data_reg[4]_i_3 
       (.I0(R_state[3]),
        .I1(R_state[1]),
        .O(\R_para_data_reg[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFBFBFF)) 
    \R_para_data_reg[4]_i_4 
       (.I0(O_rx_done_reg_0),
        .I1(R_receiving_reg_n_0),
        .I2(R_state[1]),
        .I3(R_state[0]),
        .I4(R_state[2]),
        .O(\R_para_data_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCC8CCCCC00800000)) 
    \R_para_data_reg[5]_i_1 
       (.I0(\R_para_data_reg[5]_i_2_n_0 ),
        .I1(O_rx_done1),
        .I2(\R_para_data_reg[5]_i_3_n_0 ),
        .I3(\R_para_data_reg[5]_i_4_n_0 ),
        .I4(\R_para_data_reg_reg[7]_0 ),
        .I5(R_para_data_reg[5]),
        .O(\R_para_data_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \R_para_data_reg[5]_i_2 
       (.I0(R_state[1]),
        .I1(R_state[0]),
        .I2(I_rs232_rxd),
        .I3(R_state[2]),
        .I4(R_state[3]),
        .O(\R_para_data_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \R_para_data_reg[5]_i_3 
       (.I0(R_state[0]),
        .I1(R_state[3]),
        .O(\R_para_data_reg[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \R_para_data_reg[5]_i_4 
       (.I0(R_state[1]),
        .I1(R_state[2]),
        .O(\R_para_data_reg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC8CCC00008000)) 
    \R_para_data_reg[6]_i_1 
       (.I0(\R_para_data_reg[6]_i_2_n_0 ),
        .I1(O_rx_done1),
        .I2(\R_para_data_reg[6]_i_3_n_0 ),
        .I3(\R_para_data_reg_reg[7]_0 ),
        .I4(R_state[3]),
        .I5(R_para_data_reg[6]),
        .O(\R_para_data_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \R_para_data_reg[6]_i_2 
       (.I0(R_state[1]),
        .I1(I_rs232_rxd),
        .I2(R_state[0]),
        .I3(R_state[2]),
        .I4(R_state[3]),
        .O(\R_para_data_reg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \R_para_data_reg[6]_i_3 
       (.I0(R_state[0]),
        .I1(R_state[2]),
        .I2(R_state[1]),
        .O(\R_para_data_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEAEE22222A22)) 
    \R_para_data_reg[7]_i_1 
       (.I0(\R_para_data_reg[7]_i_2_n_0 ),
        .I1(O_rx_done1),
        .I2(R_state[1]),
        .I3(\R_para_data_reg_reg[7]_0 ),
        .I4(\R_para_data_reg[7]_i_3_n_0 ),
        .I5(R_para_data_reg[7]),
        .O(\R_para_data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \R_para_data_reg[7]_i_2 
       (.I0(O_rx_done_reg_0),
        .I1(R_receiving_reg_n_0),
        .I2(I_rs232_rxd),
        .I3(R_state[3]),
        .O(\R_para_data_reg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \R_para_data_reg[7]_i_3 
       (.I0(R_state[2]),
        .I1(R_state[0]),
        .O(\R_para_data_reg[7]_i_3_n_0 ));
  FDCE \R_para_data_reg_reg[0] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(\R_para_data_reg[0]_i_1_n_0 ),
        .Q(R_para_data_reg[0]));
  FDCE \R_para_data_reg_reg[1] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(\R_para_data_reg[1]_i_1_n_0 ),
        .Q(R_para_data_reg[1]));
  FDCE \R_para_data_reg_reg[2] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(\R_para_data_reg[2]_i_1_n_0 ),
        .Q(R_para_data_reg[2]));
  FDCE \R_para_data_reg_reg[3] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(\R_para_data_reg[3]_i_1_n_0 ),
        .Q(R_para_data_reg[3]));
  FDCE \R_para_data_reg_reg[4] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(\R_para_data_reg[4]_i_1_n_0 ),
        .Q(R_para_data_reg[4]));
  FDCE \R_para_data_reg_reg[5] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(\R_para_data_reg[5]_i_1_n_0 ),
        .Q(R_para_data_reg[5]));
  FDCE \R_para_data_reg_reg[6] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(\R_para_data_reg[6]_i_1_n_0 ),
        .Q(R_para_data_reg[6]));
  FDCE \R_para_data_reg_reg[7] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(\R_para_data_reg[7]_i_1_n_0 ),
        .Q(R_para_data_reg[7]));
  LUT4 #(
    .INIT(16'h5510)) 
    R_receiving_i_1
       (.I0(O_rx_done_reg_0),
        .I1(R_rs232_rx_reg2),
        .I2(R_rs232_rx_reg3),
        .I3(R_receiving_reg_n_0),
        .O(R_receiving_i_1_n_0));
  FDCE R_receiving_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(R_receiving_i_1_n_0),
        .Q(R_receiving_reg_n_0));
  FDCE R_rs232_rx_reg0_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(I_rs232_rxd),
        .Q(R_rs232_rx_reg0));
  FDCE R_rs232_rx_reg1_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(R_rs232_rx_reg0),
        .Q(R_rs232_rx_reg1));
  FDCE R_rs232_rx_reg2_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(R_rs232_rx_reg1),
        .Q(R_rs232_rx_reg2));
  FDCE R_rs232_rx_reg3_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(R_rs232_rx_reg2),
        .Q(R_rs232_rx_reg3));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module ReceiveUart_uart_top
   (I_clk,
    I_rst_n,
    I_rs232_rxd,
    I_rx_start,
    O_rs232_txd,
    O_rx_Data,
    O_rx_done,
    O_data_counter);
  input I_clk;
  input I_rst_n;
  input I_rs232_rxd;
  input I_rx_start;
  output O_rs232_txd;
  output [7:0]O_rx_Data;
  output O_rx_done;
  output [31:0]O_data_counter;

  wire \<const0> ;
  wire I_clk;
  wire I_rs232_rxd;
  wire I_rst_n;
  wire O_bps_rx_clk_en;
  wire O_rs232_txd;
  wire [7:0]O_rx_Data;
  wire O_rx_done;
  wire U_baudrate_gen_n_0;
  wire U_uart_rxd_n_0;

  assign O_data_counter[31] = \<const0> ;
  assign O_data_counter[30] = \<const0> ;
  assign O_data_counter[29] = \<const0> ;
  assign O_data_counter[28] = \<const0> ;
  assign O_data_counter[27] = \<const0> ;
  assign O_data_counter[26] = \<const0> ;
  assign O_data_counter[25] = \<const0> ;
  assign O_data_counter[24] = \<const0> ;
  assign O_data_counter[23] = \<const0> ;
  assign O_data_counter[22] = \<const0> ;
  assign O_data_counter[21] = \<const0> ;
  assign O_data_counter[20] = \<const0> ;
  assign O_data_counter[19] = \<const0> ;
  assign O_data_counter[18] = \<const0> ;
  assign O_data_counter[17] = \<const0> ;
  assign O_data_counter[16] = \<const0> ;
  assign O_data_counter[15] = \<const0> ;
  assign O_data_counter[14] = \<const0> ;
  assign O_data_counter[13] = \<const0> ;
  assign O_data_counter[12] = \<const0> ;
  assign O_data_counter[11] = \<const0> ;
  assign O_data_counter[10] = \<const0> ;
  assign O_data_counter[9] = \<const0> ;
  assign O_data_counter[8] = \<const0> ;
  assign O_data_counter[7] = \<const0> ;
  assign O_data_counter[6] = \<const0> ;
  assign O_data_counter[5] = \<const0> ;
  assign O_data_counter[4] = \<const0> ;
  assign O_data_counter[3] = \<const0> ;
  assign O_data_counter[2] = \<const0> ;
  assign O_data_counter[1] = \<const0> ;
  assign O_data_counter[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ReceiveUart_baudrate_gen U_baudrate_gen
       (.I_clk(I_clk),
        .O_bps_rx_clk_en(O_bps_rx_clk_en),
        .\R_bps_rx_cnt_reg[12]_0 (U_baudrate_gen_n_0),
        .\R_bps_rx_cnt_reg[12]_1 (U_uart_rxd_n_0));
  ReceiveUart_uart_rx U_uart_rxd
       (.I_clk(I_clk),
        .I_rs232_rxd(I_rs232_rxd),
        .I_rst_n(I_rst_n),
        .I_rst_n_0(U_uart_rxd_n_0),
        .O_bps_rx_clk_en(O_bps_rx_clk_en),
        .O_rs232_txd(O_rs232_txd),
        .O_rx_Data(O_rx_Data),
        .O_rx_done_reg_0(O_rx_done),
        .\R_para_data_reg_reg[7]_0 (U_baudrate_gen_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
