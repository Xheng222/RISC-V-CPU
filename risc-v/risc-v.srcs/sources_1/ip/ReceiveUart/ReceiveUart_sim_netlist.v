// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Sun Sep  1 21:16:07 2024
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
   (E,
    \R_bps_rx_cnt_reg[8]_0 ,
    \FSM_sequential_R_state_reg[3] ,
    \R_bps_rx_cnt_reg[11]_0 ,
    O_rx_done5_out,
    I_rst_n,
    Q,
    O_bps_rx_clk_en,
    \FSM_sequential_R_state_reg[0] ,
    I_clk,
    \R_bps_rx_cnt_reg[12]_0 );
  output [0:0]E;
  output \R_bps_rx_cnt_reg[8]_0 ;
  output \FSM_sequential_R_state_reg[3] ;
  output [0:0]\R_bps_rx_cnt_reg[11]_0 ;
  input O_rx_done5_out;
  input I_rst_n;
  input [0:0]Q;
  input O_bps_rx_clk_en;
  input \FSM_sequential_R_state_reg[0] ;
  input I_clk;
  input \R_bps_rx_cnt_reg[12]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_R_state[3]_i_3_n_0 ;
  wire \FSM_sequential_R_state[3]_i_4_n_0 ;
  wire \FSM_sequential_R_state_reg[0] ;
  wire \FSM_sequential_R_state_reg[3] ;
  wire I_clk;
  wire I_rst_n;
  wire O_bps_rx_clk_en;
  wire O_rs232_rxd_reg_i_8_n_0;
  wire O_rx_done5_out;
  wire [0:0]Q;
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
  wire \R_bps_rx_cnt[12]_i_4_n_0 ;
  wire [0:0]\R_bps_rx_cnt_reg[11]_0 ;
  wire \R_bps_rx_cnt_reg[12]_0 ;
  wire \R_bps_rx_cnt_reg[8]_0 ;
  wire [12:0]p_0_in;
  wire [3:3]NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \FSM_sequential_R_state[3]_i_1 
       (.I0(\FSM_sequential_R_state_reg[0] ),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(\FSM_sequential_R_state[3]_i_3_n_0 ),
        .I5(\FSM_sequential_R_state[3]_i_4_n_0 ),
        .O(\R_bps_rx_cnt_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_sequential_R_state[3]_i_3 
       (.I0(R_bps_rx_cnt[8]),
        .I1(R_bps_rx_cnt[9]),
        .I2(R_bps_rx_cnt[5]),
        .I3(R_bps_rx_cnt[6]),
        .O(\FSM_sequential_R_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FSM_sequential_R_state[3]_i_4 
       (.I0(R_bps_rx_cnt[2]),
        .I1(R_bps_rx_cnt[3]),
        .I2(R_bps_rx_cnt[4]),
        .I3(R_bps_rx_cnt[7]),
        .I4(R_bps_rx_cnt[1]),
        .I5(R_bps_rx_cnt[0]),
        .O(\FSM_sequential_R_state[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \O_para_data[7]_i_1 
       (.I0(\R_bps_rx_cnt_reg[8]_0 ),
        .I1(O_rx_done5_out),
        .I2(I_rst_n),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    O_rs232_rxd_reg_i_5
       (.I0(\FSM_sequential_R_state[3]_i_4_n_0 ),
        .I1(R_bps_rx_cnt[8]),
        .I2(R_bps_rx_cnt[9]),
        .I3(R_bps_rx_cnt[5]),
        .I4(R_bps_rx_cnt[6]),
        .I5(O_rs232_rxd_reg_i_8_n_0),
        .O(\R_bps_rx_cnt_reg[8]_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    O_rs232_rxd_reg_i_8
       (.I0(R_bps_rx_cnt[12]),
        .I1(R_bps_rx_cnt[10]),
        .I2(R_bps_rx_cnt[11]),
        .O(O_rs232_rxd_reg_i_8_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \R_bps_rx_cnt[0]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(O_bps_rx_clk_en),
        .I2(R_bps_rx_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[10]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[10]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[11]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[11]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[11]));
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[12]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[12]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'h888A8A8A8A8A8A8A)) 
    \R_bps_rx_cnt[12]_i_2 
       (.I0(O_rs232_rxd_reg_i_8_n_0),
        .I1(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I2(R_bps_rx_cnt[7]),
        .I3(R_bps_rx_cnt[6]),
        .I4(R_bps_rx_cnt[5]),
        .I5(\R_bps_rx_cnt[12]_i_4_n_0 ),
        .O(\R_bps_rx_cnt[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \R_bps_rx_cnt[12]_i_3 
       (.I0(R_bps_rx_cnt[9]),
        .I1(R_bps_rx_cnt[8]),
        .O(\R_bps_rx_cnt[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \R_bps_rx_cnt[12]_i_4 
       (.I0(R_bps_rx_cnt[2]),
        .I1(R_bps_rx_cnt[3]),
        .I2(R_bps_rx_cnt[0]),
        .I3(R_bps_rx_cnt[1]),
        .I4(R_bps_rx_cnt[4]),
        .O(\R_bps_rx_cnt[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[1]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[1]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[2]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[2]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[3]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[3]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[4]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[4]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[5]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[5]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[6]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[6]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[7]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[7]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[8]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[8]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[9]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I1(R_bps_rx_cnt0[9]),
        .I2(O_bps_rx_clk_en),
        .O(p_0_in[9]));
  FDCE \R_bps_rx_cnt_reg[0] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[0]),
        .Q(R_bps_rx_cnt[0]));
  FDCE \R_bps_rx_cnt_reg[10] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[10]),
        .Q(R_bps_rx_cnt[10]));
  FDCE \R_bps_rx_cnt_reg[11] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[11]),
        .Q(R_bps_rx_cnt[11]));
  FDCE \R_bps_rx_cnt_reg[12] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[12]),
        .Q(R_bps_rx_cnt[12]));
  FDCE \R_bps_rx_cnt_reg[1] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[1]),
        .Q(R_bps_rx_cnt[1]));
  FDCE \R_bps_rx_cnt_reg[2] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[2]),
        .Q(R_bps_rx_cnt[2]));
  FDCE \R_bps_rx_cnt_reg[3] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[3]),
        .Q(R_bps_rx_cnt[3]));
  FDCE \R_bps_rx_cnt_reg[4] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[4]),
        .Q(R_bps_rx_cnt[4]));
  FDCE \R_bps_rx_cnt_reg[5] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[5]),
        .Q(R_bps_rx_cnt[5]));
  FDCE \R_bps_rx_cnt_reg[6] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[6]),
        .Q(R_bps_rx_cnt[6]));
  FDCE \R_bps_rx_cnt_reg[7] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[7]),
        .Q(R_bps_rx_cnt[7]));
  FDCE \R_bps_rx_cnt_reg[8] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[8]),
        .Q(R_bps_rx_cnt[8]));
  FDCE \R_bps_rx_cnt_reg[9] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_bps_rx_cnt_reg[12]_0 ),
        .D(p_0_in[9]),
        .Q(R_bps_rx_cnt[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \R_para_data_reg[0]_i_3 
       (.I0(Q),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(\FSM_sequential_R_state[3]_i_3_n_0 ),
        .I5(\FSM_sequential_R_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_R_state_reg[3] ));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module ReceiveUart_uart_rx
   (I_rst_n_0,
    O_bps_rx_clk_en,
    O_rx_done_reg_0,
    O_rs232_txd,
    Q,
    O_rx_done5_out,
    O_rx_done_reg_1,
    O_rx_Data,
    I_rs232_rxd,
    I_clk,
    \R_para_data_reg_reg[7]_0 ,
    I_rx_start,
    I_rst_n,
    E,
    \R_para_data_reg_reg[0]_0 ,
    \O_para_data_reg[7]_0 );
  output I_rst_n_0;
  output O_bps_rx_clk_en;
  output O_rx_done_reg_0;
  output O_rs232_txd;
  output [0:0]Q;
  output O_rx_done5_out;
  output O_rx_done_reg_1;
  output [7:0]O_rx_Data;
  input I_rs232_rxd;
  input I_clk;
  input \R_para_data_reg_reg[7]_0 ;
  input I_rx_start;
  input I_rst_n;
  input [0:0]E;
  input \R_para_data_reg_reg[0]_0 ;
  input [0:0]\O_para_data_reg[7]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_R_state[0]_i_1_n_0 ;
  wire \FSM_sequential_R_state[1]_i_1_n_0 ;
  wire \FSM_sequential_R_state[2]_i_1_n_0 ;
  wire \FSM_sequential_R_state[3]_i_2_n_0 ;
  wire I_clk;
  wire I_rs232_rxd;
  wire I_rst_n;
  wire I_rst_n_0;
  wire I_rx_start;
  wire O_bps_rx_clk_en;
  wire [0:0]\O_para_data_reg[7]_0 ;
  wire O_rs232_rxd_reg_i_1_n_0;
  wire O_rs232_rxd_reg_i_3_n_0;
  wire O_rs232_rxd_reg_i_4_n_0;
  wire O_rs232_rxd_reg_i_6_n_0;
  wire O_rs232_txd;
  wire [7:0]O_rx_Data;
  wire O_rx_done1;
  wire O_rx_done5_out;
  wire O_rx_done_i_1_n_0;
  wire O_rx_done_reg_0;
  wire O_rx_done_reg_1;
  wire [0:0]Q;
  wire [7:0]R_para_data_reg;
  wire \R_para_data_reg[0]_i_1_n_0 ;
  wire \R_para_data_reg[1]_i_1_n_0 ;
  wire \R_para_data_reg[2]_i_1_n_0 ;
  wire \R_para_data_reg[2]_i_2_n_0 ;
  wire \R_para_data_reg[2]_i_3_n_0 ;
  wire \R_para_data_reg[2]_i_4_n_0 ;
  wire \R_para_data_reg[3]_i_1_n_0 ;
  wire \R_para_data_reg[3]_i_2_n_0 ;
  wire \R_para_data_reg[4]_i_1_n_0 ;
  wire \R_para_data_reg[4]_i_3_n_0 ;
  wire \R_para_data_reg[5]_i_1_n_0 ;
  wire \R_para_data_reg[5]_i_3_n_0 ;
  wire \R_para_data_reg[6]_i_1_n_0 ;
  wire \R_para_data_reg[6]_i_3_n_0 ;
  wire \R_para_data_reg[7]_i_1_n_0 ;
  wire \R_para_data_reg[7]_i_2_n_0 ;
  wire \R_para_data_reg_reg[0]_0 ;
  wire \R_para_data_reg_reg[7]_0 ;
  wire R_receiving_i_1_n_0;
  wire R_receiving_reg_n_0;
  wire R_rs232_rx_reg0;
  wire R_rs232_rx_reg1;
  wire R_rs232_rx_reg2;
  wire R_rs232_rx_reg3;
  wire [2:0]R_state;
  wire [6:0]p_1_in;

  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \FSM_sequential_R_state[0]_i_1 
       (.I0(Q),
        .I1(R_state[1]),
        .I2(R_state[2]),
        .I3(O_rx_done_reg_0),
        .I4(R_receiving_reg_n_0),
        .I5(R_state[0]),
        .O(\FSM_sequential_R_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000600)) 
    \FSM_sequential_R_state[1]_i_1 
       (.I0(R_state[1]),
        .I1(R_state[0]),
        .I2(O_rx_done_reg_0),
        .I3(R_receiving_reg_n_0),
        .I4(Q),
        .O(\FSM_sequential_R_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000780000)) 
    \FSM_sequential_R_state[2]_i_1 
       (.I0(R_state[0]),
        .I1(R_state[1]),
        .I2(R_state[2]),
        .I3(O_rx_done_reg_0),
        .I4(R_receiving_reg_n_0),
        .I5(Q),
        .O(\FSM_sequential_R_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000800000)) 
    \FSM_sequential_R_state[3]_i_2 
       (.I0(R_state[1]),
        .I1(R_state[0]),
        .I2(R_state[2]),
        .I3(O_rx_done_reg_0),
        .I4(R_receiving_reg_n_0),
        .I5(Q),
        .O(\FSM_sequential_R_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[0] 
       (.C(I_clk),
        .CE(E),
        .CLR(I_rst_n_0),
        .D(\FSM_sequential_R_state[0]_i_1_n_0 ),
        .Q(R_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[1] 
       (.C(I_clk),
        .CE(E),
        .CLR(I_rst_n_0),
        .D(\FSM_sequential_R_state[1]_i_1_n_0 ),
        .Q(R_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[2] 
       (.C(I_clk),
        .CE(E),
        .CLR(I_rst_n_0),
        .D(\FSM_sequential_R_state[2]_i_1_n_0 ),
        .Q(R_state[2]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[3] 
       (.C(I_clk),
        .CE(E),
        .CLR(I_rst_n_0),
        .D(\FSM_sequential_R_state[3]_i_2_n_0 ),
        .Q(Q));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \O_para_data[7]_i_2 
       (.I0(R_state[0]),
        .I1(R_state[1]),
        .I2(R_receiving_reg_n_0),
        .I3(O_rx_done_reg_0),
        .I4(Q),
        .I5(R_state[2]),
        .O(O_rx_done5_out));
  FDRE \O_para_data_reg[0] 
       (.C(I_clk),
        .CE(\O_para_data_reg[7]_0 ),
        .D(R_para_data_reg[0]),
        .Q(O_rx_Data[0]),
        .R(1'b0));
  FDRE \O_para_data_reg[1] 
       (.C(I_clk),
        .CE(\O_para_data_reg[7]_0 ),
        .D(R_para_data_reg[1]),
        .Q(O_rx_Data[1]),
        .R(1'b0));
  FDRE \O_para_data_reg[2] 
       (.C(I_clk),
        .CE(\O_para_data_reg[7]_0 ),
        .D(R_para_data_reg[2]),
        .Q(O_rx_Data[2]),
        .R(1'b0));
  FDRE \O_para_data_reg[3] 
       (.C(I_clk),
        .CE(\O_para_data_reg[7]_0 ),
        .D(R_para_data_reg[3]),
        .Q(O_rx_Data[3]),
        .R(1'b0));
  FDRE \O_para_data_reg[4] 
       (.C(I_clk),
        .CE(\O_para_data_reg[7]_0 ),
        .D(R_para_data_reg[4]),
        .Q(O_rx_Data[4]),
        .R(1'b0));
  FDRE \O_para_data_reg[5] 
       (.C(I_clk),
        .CE(\O_para_data_reg[7]_0 ),
        .D(R_para_data_reg[5]),
        .Q(O_rx_Data[5]),
        .R(1'b0));
  FDRE \O_para_data_reg[6] 
       (.C(I_clk),
        .CE(\O_para_data_reg[7]_0 ),
        .D(R_para_data_reg[6]),
        .Q(O_rx_Data[6]),
        .R(1'b0));
  FDRE \O_para_data_reg[7] 
       (.C(I_clk),
        .CE(\O_para_data_reg[7]_0 ),
        .D(R_para_data_reg[7]),
        .Q(O_rx_Data[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000B00)) 
    O_rs232_rxd_reg_i_1
       (.I0(O_rs232_rxd_reg_i_3_n_0),
        .I1(O_rs232_rxd_reg_i_4_n_0),
        .I2(\R_para_data_reg_reg[7]_0 ),
        .I3(O_rs232_rxd_reg_i_6_n_0),
        .I4(O_rx_done_reg_1),
        .I5(O_rs232_txd),
        .O(O_rs232_rxd_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    O_rs232_rxd_reg_i_2
       (.I0(I_rst_n),
        .O(I_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    O_rs232_rxd_reg_i_3
       (.I0(R_state[0]),
        .I1(R_state[1]),
        .O(O_rs232_rxd_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    O_rs232_rxd_reg_i_4
       (.I0(Q),
        .I1(R_state[2]),
        .O(O_rs232_rxd_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    O_rs232_rxd_reg_i_6
       (.I0(R_state[2]),
        .I1(R_state[1]),
        .I2(Q),
        .O(O_rs232_rxd_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    O_rs232_rxd_reg_i_7
       (.I0(O_rx_done_reg_0),
        .I1(R_receiving_reg_n_0),
        .O(O_rx_done_reg_1));
  FDPE O_rs232_rxd_reg_reg
       (.C(I_clk),
        .CE(1'b1),
        .D(O_rs232_rxd_reg_i_1_n_0),
        .PRE(I_rst_n_0),
        .Q(O_rs232_txd));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hA2AAA2A2)) 
    O_rx_done_i_1
       (.I0(O_rx_done5_out),
        .I1(R_receiving_reg_n_0),
        .I2(O_rx_done_reg_0),
        .I3(\R_para_data_reg_reg[7]_0 ),
        .I4(O_rs232_rxd_reg_i_6_n_0),
        .O(O_rx_done_i_1_n_0));
  FDCE O_rx_done_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n_0),
        .D(O_rx_done_i_1_n_0),
        .Q(O_rx_done_reg_0));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    \R_para_data_reg[0]_i_1 
       (.I0(p_1_in[0]),
        .I1(O_rx_done_reg_1),
        .I2(\R_para_data_reg_reg[0]_0 ),
        .I3(R_state[1]),
        .I4(R_state[2]),
        .I5(R_para_data_reg[0]),
        .O(\R_para_data_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \R_para_data_reg[0]_i_2 
       (.I0(R_state[1]),
        .I1(R_state[0]),
        .I2(I_rs232_rxd),
        .I3(Q),
        .I4(O_rx_done_reg_1),
        .I5(R_state[2]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAA0020)) 
    \R_para_data_reg[1]_i_1 
       (.I0(p_1_in[1]),
        .I1(\R_para_data_reg_reg[7]_0 ),
        .I2(O_rs232_rxd_reg_i_4_n_0),
        .I3(R_state[0]),
        .I4(O_rx_done_reg_1),
        .I5(R_para_data_reg[1]),
        .O(\R_para_data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \R_para_data_reg[1]_i_2 
       (.I0(R_state[0]),
        .I1(I_rs232_rxd),
        .I2(R_state[1]),
        .I3(Q),
        .I4(O_rx_done_reg_1),
        .I5(R_state[2]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFF04FF00000400)) 
    \R_para_data_reg[2]_i_1 
       (.I0(\R_para_data_reg[2]_i_2_n_0 ),
        .I1(I_rs232_rxd),
        .I2(\R_para_data_reg[2]_i_3_n_0 ),
        .I3(E),
        .I4(\R_para_data_reg[2]_i_4_n_0 ),
        .I5(R_para_data_reg[2]),
        .O(\R_para_data_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \R_para_data_reg[2]_i_2 
       (.I0(R_state[0]),
        .I1(R_state[1]),
        .O(\R_para_data_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \R_para_data_reg[2]_i_3 
       (.I0(R_state[2]),
        .I1(O_rx_done_reg_0),
        .I2(R_receiving_reg_n_0),
        .I3(Q),
        .O(\R_para_data_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222220220)) 
    \R_para_data_reg[2]_i_4 
       (.I0(R_receiving_reg_n_0),
        .I1(O_rx_done_reg_0),
        .I2(R_state[0]),
        .I3(R_state[1]),
        .I4(Q),
        .I5(R_state[2]),
        .O(\R_para_data_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3333333200000002)) 
    \R_para_data_reg[3]_i_1 
       (.I0(\R_para_data_reg[3]_i_2_n_0 ),
        .I1(O_rx_done_reg_1),
        .I2(O_rs232_rxd_reg_i_3_n_0),
        .I3(\R_para_data_reg_reg[7]_0 ),
        .I4(Q),
        .I5(R_para_data_reg[3]),
        .O(\R_para_data_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \R_para_data_reg[3]_i_2 
       (.I0(R_state[2]),
        .I1(R_state[1]),
        .I2(I_rs232_rxd),
        .I3(R_state[0]),
        .O(\R_para_data_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    \R_para_data_reg[4]_i_1 
       (.I0(p_1_in[4]),
        .I1(O_rx_done_reg_1),
        .I2(\R_para_data_reg[4]_i_3_n_0 ),
        .I3(\R_para_data_reg_reg[7]_0 ),
        .I4(Q),
        .I5(R_para_data_reg[4]),
        .O(\R_para_data_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \R_para_data_reg[4]_i_2 
       (.I0(Q),
        .I1(O_rx_done_reg_1),
        .I2(R_state[2]),
        .I3(R_state[1]),
        .I4(R_state[0]),
        .I5(I_rs232_rxd),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \R_para_data_reg[4]_i_3 
       (.I0(R_state[1]),
        .I1(R_state[2]),
        .I2(R_state[0]),
        .O(\R_para_data_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    \R_para_data_reg[5]_i_1 
       (.I0(p_1_in[5]),
        .I1(O_rx_done_reg_1),
        .I2(\R_para_data_reg[5]_i_3_n_0 ),
        .I3(\R_para_data_reg_reg[7]_0 ),
        .I4(Q),
        .I5(R_para_data_reg[5]),
        .O(\R_para_data_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \R_para_data_reg[5]_i_2 
       (.I0(Q),
        .I1(O_rx_done_reg_1),
        .I2(R_state[2]),
        .I3(R_state[0]),
        .I4(I_rs232_rxd),
        .I5(R_state[1]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \R_para_data_reg[5]_i_3 
       (.I0(R_state[1]),
        .I1(R_state[2]),
        .I2(R_state[0]),
        .O(\R_para_data_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \R_para_data_reg[6]_i_1 
       (.I0(p_1_in[6]),
        .I1(O_rx_done_reg_1),
        .I2(Q),
        .I3(\R_para_data_reg_reg[7]_0 ),
        .I4(\R_para_data_reg[6]_i_3_n_0 ),
        .I5(R_para_data_reg[6]),
        .O(\R_para_data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \R_para_data_reg[6]_i_2 
       (.I0(Q),
        .I1(O_rx_done_reg_1),
        .I2(R_state[2]),
        .I3(R_state[0]),
        .I4(R_state[1]),
        .I5(I_rs232_rxd),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \R_para_data_reg[6]_i_3 
       (.I0(R_state[2]),
        .I1(R_state[0]),
        .I2(R_state[1]),
        .O(\R_para_data_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0800000008)) 
    \R_para_data_reg[7]_i_1 
       (.I0(I_rs232_rxd),
        .I1(Q),
        .I2(O_rx_done_reg_1),
        .I3(\R_para_data_reg[7]_i_2_n_0 ),
        .I4(\R_para_data_reg_reg[7]_0 ),
        .I5(R_para_data_reg[7]),
        .O(\R_para_data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \R_para_data_reg[7]_i_2 
       (.I0(R_state[2]),
        .I1(R_state[1]),
        .I2(R_state[0]),
        .O(\R_para_data_reg[7]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h55550040)) 
    R_receiving_i_1
       (.I0(O_rx_done_reg_0),
        .I1(I_rx_start),
        .I2(R_rs232_rx_reg3),
        .I3(R_rs232_rx_reg2),
        .I4(R_receiving_reg_n_0),
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

  wire I_clk;
  wire I_rs232_rxd;
  wire I_rst_n;
  wire I_rx_start;
  wire O_bps_rx_clk_en;
  wire [31:0]O_data_counter;
  wire O_rs232_txd;
  wire [7:0]O_rx_Data;
  wire O_rx_done;
  wire O_rx_done5_out;
  wire [3:3]R_state;
  wire U_baudrate_gen_n_0;
  wire U_baudrate_gen_n_1;
  wire U_baudrate_gen_n_2;
  wire U_baudrate_gen_n_3;
  wire U_uart_rxd_n_0;
  wire U_uart_rxd_n_6;
  wire \data_counter[3]_i_2_n_0 ;
  wire \data_counter_reg[11]_i_1_n_0 ;
  wire \data_counter_reg[11]_i_1_n_1 ;
  wire \data_counter_reg[11]_i_1_n_2 ;
  wire \data_counter_reg[11]_i_1_n_3 ;
  wire \data_counter_reg[11]_i_1_n_4 ;
  wire \data_counter_reg[11]_i_1_n_5 ;
  wire \data_counter_reg[11]_i_1_n_6 ;
  wire \data_counter_reg[11]_i_1_n_7 ;
  wire \data_counter_reg[15]_i_1_n_0 ;
  wire \data_counter_reg[15]_i_1_n_1 ;
  wire \data_counter_reg[15]_i_1_n_2 ;
  wire \data_counter_reg[15]_i_1_n_3 ;
  wire \data_counter_reg[15]_i_1_n_4 ;
  wire \data_counter_reg[15]_i_1_n_5 ;
  wire \data_counter_reg[15]_i_1_n_6 ;
  wire \data_counter_reg[15]_i_1_n_7 ;
  wire \data_counter_reg[19]_i_1_n_0 ;
  wire \data_counter_reg[19]_i_1_n_1 ;
  wire \data_counter_reg[19]_i_1_n_2 ;
  wire \data_counter_reg[19]_i_1_n_3 ;
  wire \data_counter_reg[19]_i_1_n_4 ;
  wire \data_counter_reg[19]_i_1_n_5 ;
  wire \data_counter_reg[19]_i_1_n_6 ;
  wire \data_counter_reg[19]_i_1_n_7 ;
  wire \data_counter_reg[23]_i_1_n_0 ;
  wire \data_counter_reg[23]_i_1_n_1 ;
  wire \data_counter_reg[23]_i_1_n_2 ;
  wire \data_counter_reg[23]_i_1_n_3 ;
  wire \data_counter_reg[23]_i_1_n_4 ;
  wire \data_counter_reg[23]_i_1_n_5 ;
  wire \data_counter_reg[23]_i_1_n_6 ;
  wire \data_counter_reg[23]_i_1_n_7 ;
  wire \data_counter_reg[27]_i_1_n_0 ;
  wire \data_counter_reg[27]_i_1_n_1 ;
  wire \data_counter_reg[27]_i_1_n_2 ;
  wire \data_counter_reg[27]_i_1_n_3 ;
  wire \data_counter_reg[27]_i_1_n_4 ;
  wire \data_counter_reg[27]_i_1_n_5 ;
  wire \data_counter_reg[27]_i_1_n_6 ;
  wire \data_counter_reg[27]_i_1_n_7 ;
  wire \data_counter_reg[31]_i_1_n_1 ;
  wire \data_counter_reg[31]_i_1_n_2 ;
  wire \data_counter_reg[31]_i_1_n_3 ;
  wire \data_counter_reg[31]_i_1_n_4 ;
  wire \data_counter_reg[31]_i_1_n_5 ;
  wire \data_counter_reg[31]_i_1_n_6 ;
  wire \data_counter_reg[31]_i_1_n_7 ;
  wire \data_counter_reg[3]_i_1_n_0 ;
  wire \data_counter_reg[3]_i_1_n_1 ;
  wire \data_counter_reg[3]_i_1_n_2 ;
  wire \data_counter_reg[3]_i_1_n_3 ;
  wire \data_counter_reg[3]_i_1_n_4 ;
  wire \data_counter_reg[3]_i_1_n_5 ;
  wire \data_counter_reg[3]_i_1_n_6 ;
  wire \data_counter_reg[3]_i_1_n_7 ;
  wire \data_counter_reg[7]_i_1_n_0 ;
  wire \data_counter_reg[7]_i_1_n_1 ;
  wire \data_counter_reg[7]_i_1_n_2 ;
  wire \data_counter_reg[7]_i_1_n_3 ;
  wire \data_counter_reg[7]_i_1_n_4 ;
  wire \data_counter_reg[7]_i_1_n_5 ;
  wire \data_counter_reg[7]_i_1_n_6 ;
  wire \data_counter_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_data_counter_reg[31]_i_1_CO_UNCONNECTED ;

  ReceiveUart_baudrate_gen U_baudrate_gen
       (.E(U_baudrate_gen_n_0),
        .\FSM_sequential_R_state_reg[0] (U_uart_rxd_n_6),
        .\FSM_sequential_R_state_reg[3] (U_baudrate_gen_n_2),
        .I_clk(I_clk),
        .I_rst_n(I_rst_n),
        .O_bps_rx_clk_en(O_bps_rx_clk_en),
        .O_rx_done5_out(O_rx_done5_out),
        .Q(R_state),
        .\R_bps_rx_cnt_reg[11]_0 (U_baudrate_gen_n_3),
        .\R_bps_rx_cnt_reg[12]_0 (U_uart_rxd_n_0),
        .\R_bps_rx_cnt_reg[8]_0 (U_baudrate_gen_n_1));
  ReceiveUart_uart_rx U_uart_rxd
       (.E(U_baudrate_gen_n_3),
        .I_clk(I_clk),
        .I_rs232_rxd(I_rs232_rxd),
        .I_rst_n(I_rst_n),
        .I_rst_n_0(U_uart_rxd_n_0),
        .I_rx_start(I_rx_start),
        .O_bps_rx_clk_en(O_bps_rx_clk_en),
        .\O_para_data_reg[7]_0 (U_baudrate_gen_n_0),
        .O_rs232_txd(O_rs232_txd),
        .O_rx_Data(O_rx_Data),
        .O_rx_done5_out(O_rx_done5_out),
        .O_rx_done_reg_0(O_rx_done),
        .O_rx_done_reg_1(U_uart_rxd_n_6),
        .Q(R_state),
        .\R_para_data_reg_reg[0]_0 (U_baudrate_gen_n_2),
        .\R_para_data_reg_reg[7]_0 (U_baudrate_gen_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \data_counter[3]_i_2 
       (.I0(O_data_counter[0]),
        .O(\data_counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[0] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[3]_i_1_n_7 ),
        .Q(O_data_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[10] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[11]_i_1_n_5 ),
        .Q(O_data_counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[11] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[11]_i_1_n_4 ),
        .Q(O_data_counter[11]));
  CARRY4 \data_counter_reg[11]_i_1 
       (.CI(\data_counter_reg[7]_i_1_n_0 ),
        .CO({\data_counter_reg[11]_i_1_n_0 ,\data_counter_reg[11]_i_1_n_1 ,\data_counter_reg[11]_i_1_n_2 ,\data_counter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[11]_i_1_n_4 ,\data_counter_reg[11]_i_1_n_5 ,\data_counter_reg[11]_i_1_n_6 ,\data_counter_reg[11]_i_1_n_7 }),
        .S(O_data_counter[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[12] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[15]_i_1_n_7 ),
        .Q(O_data_counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[13] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[15]_i_1_n_6 ),
        .Q(O_data_counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[14] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[15]_i_1_n_5 ),
        .Q(O_data_counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[15] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[15]_i_1_n_4 ),
        .Q(O_data_counter[15]));
  CARRY4 \data_counter_reg[15]_i_1 
       (.CI(\data_counter_reg[11]_i_1_n_0 ),
        .CO({\data_counter_reg[15]_i_1_n_0 ,\data_counter_reg[15]_i_1_n_1 ,\data_counter_reg[15]_i_1_n_2 ,\data_counter_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[15]_i_1_n_4 ,\data_counter_reg[15]_i_1_n_5 ,\data_counter_reg[15]_i_1_n_6 ,\data_counter_reg[15]_i_1_n_7 }),
        .S(O_data_counter[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[16] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[19]_i_1_n_7 ),
        .Q(O_data_counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[17] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[19]_i_1_n_6 ),
        .Q(O_data_counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[18] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[19]_i_1_n_5 ),
        .Q(O_data_counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[19] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[19]_i_1_n_4 ),
        .Q(O_data_counter[19]));
  CARRY4 \data_counter_reg[19]_i_1 
       (.CI(\data_counter_reg[15]_i_1_n_0 ),
        .CO({\data_counter_reg[19]_i_1_n_0 ,\data_counter_reg[19]_i_1_n_1 ,\data_counter_reg[19]_i_1_n_2 ,\data_counter_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[19]_i_1_n_4 ,\data_counter_reg[19]_i_1_n_5 ,\data_counter_reg[19]_i_1_n_6 ,\data_counter_reg[19]_i_1_n_7 }),
        .S(O_data_counter[19:16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[1] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[3]_i_1_n_6 ),
        .Q(O_data_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[20] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[23]_i_1_n_7 ),
        .Q(O_data_counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[21] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[23]_i_1_n_6 ),
        .Q(O_data_counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[22] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[23]_i_1_n_5 ),
        .Q(O_data_counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[23] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[23]_i_1_n_4 ),
        .Q(O_data_counter[23]));
  CARRY4 \data_counter_reg[23]_i_1 
       (.CI(\data_counter_reg[19]_i_1_n_0 ),
        .CO({\data_counter_reg[23]_i_1_n_0 ,\data_counter_reg[23]_i_1_n_1 ,\data_counter_reg[23]_i_1_n_2 ,\data_counter_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[23]_i_1_n_4 ,\data_counter_reg[23]_i_1_n_5 ,\data_counter_reg[23]_i_1_n_6 ,\data_counter_reg[23]_i_1_n_7 }),
        .S(O_data_counter[23:20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[24] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[27]_i_1_n_7 ),
        .Q(O_data_counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[25] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[27]_i_1_n_6 ),
        .Q(O_data_counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[26] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[27]_i_1_n_5 ),
        .Q(O_data_counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[27] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[27]_i_1_n_4 ),
        .Q(O_data_counter[27]));
  CARRY4 \data_counter_reg[27]_i_1 
       (.CI(\data_counter_reg[23]_i_1_n_0 ),
        .CO({\data_counter_reg[27]_i_1_n_0 ,\data_counter_reg[27]_i_1_n_1 ,\data_counter_reg[27]_i_1_n_2 ,\data_counter_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[27]_i_1_n_4 ,\data_counter_reg[27]_i_1_n_5 ,\data_counter_reg[27]_i_1_n_6 ,\data_counter_reg[27]_i_1_n_7 }),
        .S(O_data_counter[27:24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[28] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[31]_i_1_n_7 ),
        .Q(O_data_counter[28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[29] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[31]_i_1_n_6 ),
        .Q(O_data_counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[2] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[3]_i_1_n_5 ),
        .Q(O_data_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[30] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[31]_i_1_n_5 ),
        .Q(O_data_counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[31] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[31]_i_1_n_4 ),
        .Q(O_data_counter[31]));
  CARRY4 \data_counter_reg[31]_i_1 
       (.CI(\data_counter_reg[27]_i_1_n_0 ),
        .CO({\NLW_data_counter_reg[31]_i_1_CO_UNCONNECTED [3],\data_counter_reg[31]_i_1_n_1 ,\data_counter_reg[31]_i_1_n_2 ,\data_counter_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[31]_i_1_n_4 ,\data_counter_reg[31]_i_1_n_5 ,\data_counter_reg[31]_i_1_n_6 ,\data_counter_reg[31]_i_1_n_7 }),
        .S(O_data_counter[31:28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[3] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[3]_i_1_n_4 ),
        .Q(O_data_counter[3]));
  CARRY4 \data_counter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\data_counter_reg[3]_i_1_n_0 ,\data_counter_reg[3]_i_1_n_1 ,\data_counter_reg[3]_i_1_n_2 ,\data_counter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\data_counter_reg[3]_i_1_n_4 ,\data_counter_reg[3]_i_1_n_5 ,\data_counter_reg[3]_i_1_n_6 ,\data_counter_reg[3]_i_1_n_7 }),
        .S({O_data_counter[3:1],\data_counter[3]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[4] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[7]_i_1_n_7 ),
        .Q(O_data_counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[5] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[7]_i_1_n_6 ),
        .Q(O_data_counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[6] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[7]_i_1_n_5 ),
        .Q(O_data_counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[7] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[7]_i_1_n_4 ),
        .Q(O_data_counter[7]));
  CARRY4 \data_counter_reg[7]_i_1 
       (.CI(\data_counter_reg[3]_i_1_n_0 ),
        .CO({\data_counter_reg[7]_i_1_n_0 ,\data_counter_reg[7]_i_1_n_1 ,\data_counter_reg[7]_i_1_n_2 ,\data_counter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_counter_reg[7]_i_1_n_4 ,\data_counter_reg[7]_i_1_n_5 ,\data_counter_reg[7]_i_1_n_6 ,\data_counter_reg[7]_i_1_n_7 }),
        .S(O_data_counter[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[8] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[11]_i_1_n_7 ),
        .Q(O_data_counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_counter_reg[9] 
       (.C(I_clk),
        .CE(O_rx_done),
        .CLR(U_uart_rxd_n_0),
        .D(\data_counter_reg[11]_i_1_n_6 ),
        .Q(O_data_counter[9]));
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
