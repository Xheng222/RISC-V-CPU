-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Sun Sep  1 21:16:07 2024
-- Host        : LAPTOP-U0UTG14L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/computer/RISC-V-CPU/risc-v/risc-v.srcs/sources_1/ip/ReceiveUart/ReceiveUart_sim_netlist.vhdl
-- Design      : ReceiveUart
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ReceiveUart_baudrate_gen is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \R_bps_rx_cnt_reg[8]_0\ : out STD_LOGIC;
    \FSM_sequential_R_state_reg[3]\ : out STD_LOGIC;
    \R_bps_rx_cnt_reg[11]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_rx_done5_out : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O_bps_rx_clk_en : in STD_LOGIC;
    \FSM_sequential_R_state_reg[0]\ : in STD_LOGIC;
    I_clk : in STD_LOGIC;
    \R_bps_rx_cnt_reg[12]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ReceiveUart_baudrate_gen : entity is "baudrate_gen";
end ReceiveUart_baudrate_gen;

architecture STRUCTURE of ReceiveUart_baudrate_gen is
  signal \FSM_sequential_R_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[3]_i_4_n_0\ : STD_LOGIC;
  signal O_rs232_rxd_reg_i_8_n_0 : STD_LOGIC;
  signal R_bps_rx_cnt : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal R_bps_rx_cnt0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \R_bps_rx_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal R_bps_rx_cnt0_carry_n_0 : STD_LOGIC;
  signal R_bps_rx_cnt0_carry_n_1 : STD_LOGIC;
  signal R_bps_rx_cnt0_carry_n_2 : STD_LOGIC;
  signal R_bps_rx_cnt0_carry_n_3 : STD_LOGIC;
  signal \R_bps_rx_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \R_bps_rx_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \R_bps_rx_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \^r_bps_rx_cnt_reg[8]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_R_state[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[12]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[9]_i_1\ : label is "soft_lutpair6";
begin
  \R_bps_rx_cnt_reg[8]_0\ <= \^r_bps_rx_cnt_reg[8]_0\;
\FSM_sequential_R_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \FSM_sequential_R_state_reg[0]\,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => \FSM_sequential_R_state[3]_i_3_n_0\,
      I5 => \FSM_sequential_R_state[3]_i_4_n_0\,
      O => \R_bps_rx_cnt_reg[11]_0\(0)
    );
\FSM_sequential_R_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => R_bps_rx_cnt(8),
      I1 => R_bps_rx_cnt(9),
      I2 => R_bps_rx_cnt(5),
      I3 => R_bps_rx_cnt(6),
      O => \FSM_sequential_R_state[3]_i_3_n_0\
    );
\FSM_sequential_R_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => R_bps_rx_cnt(2),
      I1 => R_bps_rx_cnt(3),
      I2 => R_bps_rx_cnt(4),
      I3 => R_bps_rx_cnt(7),
      I4 => R_bps_rx_cnt(1),
      I5 => R_bps_rx_cnt(0),
      O => \FSM_sequential_R_state[3]_i_4_n_0\
    );
\O_para_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r_bps_rx_cnt_reg[8]_0\,
      I1 => O_rx_done5_out,
      I2 => I_rst_n,
      O => E(0)
    );
O_rs232_rxd_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_R_state[3]_i_4_n_0\,
      I1 => R_bps_rx_cnt(8),
      I2 => R_bps_rx_cnt(9),
      I3 => R_bps_rx_cnt(5),
      I4 => R_bps_rx_cnt(6),
      I5 => O_rs232_rxd_reg_i_8_n_0,
      O => \^r_bps_rx_cnt_reg[8]_0\
    );
O_rs232_rxd_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => R_bps_rx_cnt(12),
      I1 => R_bps_rx_cnt(10),
      I2 => R_bps_rx_cnt(11),
      O => O_rs232_rxd_reg_i_8_n_0
    );
R_bps_rx_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => R_bps_rx_cnt0_carry_n_0,
      CO(2) => R_bps_rx_cnt0_carry_n_1,
      CO(1) => R_bps_rx_cnt0_carry_n_2,
      CO(0) => R_bps_rx_cnt0_carry_n_3,
      CYINIT => R_bps_rx_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_bps_rx_cnt0(4 downto 1),
      S(3 downto 0) => R_bps_rx_cnt(4 downto 1)
    );
\R_bps_rx_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => R_bps_rx_cnt0_carry_n_0,
      CO(3) => \R_bps_rx_cnt0_carry__0_n_0\,
      CO(2) => \R_bps_rx_cnt0_carry__0_n_1\,
      CO(1) => \R_bps_rx_cnt0_carry__0_n_2\,
      CO(0) => \R_bps_rx_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_bps_rx_cnt0(8 downto 5),
      S(3 downto 0) => R_bps_rx_cnt(8 downto 5)
    );
\R_bps_rx_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_bps_rx_cnt0_carry__0_n_0\,
      CO(3) => \NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \R_bps_rx_cnt0_carry__1_n_1\,
      CO(1) => \R_bps_rx_cnt0_carry__1_n_2\,
      CO(0) => \R_bps_rx_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_bps_rx_cnt0(12 downto 9),
      S(3 downto 0) => R_bps_rx_cnt(12 downto 9)
    );
\R_bps_rx_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => O_bps_rx_clk_en,
      I2 => R_bps_rx_cnt(0),
      O => p_0_in(0)
    );
\R_bps_rx_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(10),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(10)
    );
\R_bps_rx_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(11),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(11)
    );
\R_bps_rx_cnt[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(12),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(12)
    );
\R_bps_rx_cnt[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8A8A8A8A8A8A"
    )
        port map (
      I0 => O_rs232_rxd_reg_i_8_n_0,
      I1 => \R_bps_rx_cnt[12]_i_3_n_0\,
      I2 => R_bps_rx_cnt(7),
      I3 => R_bps_rx_cnt(6),
      I4 => R_bps_rx_cnt(5),
      I5 => \R_bps_rx_cnt[12]_i_4_n_0\,
      O => \R_bps_rx_cnt[12]_i_2_n_0\
    );
\R_bps_rx_cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => R_bps_rx_cnt(9),
      I1 => R_bps_rx_cnt(8),
      O => \R_bps_rx_cnt[12]_i_3_n_0\
    );
\R_bps_rx_cnt[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => R_bps_rx_cnt(2),
      I1 => R_bps_rx_cnt(3),
      I2 => R_bps_rx_cnt(0),
      I3 => R_bps_rx_cnt(1),
      I4 => R_bps_rx_cnt(4),
      O => \R_bps_rx_cnt[12]_i_4_n_0\
    );
\R_bps_rx_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(1),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(1)
    );
\R_bps_rx_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(2),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(2)
    );
\R_bps_rx_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(3),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(3)
    );
\R_bps_rx_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(4),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(4)
    );
\R_bps_rx_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(5),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(5)
    );
\R_bps_rx_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(6),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(6)
    );
\R_bps_rx_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(7),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(7)
    );
\R_bps_rx_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(8),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(8)
    );
\R_bps_rx_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I1 => R_bps_rx_cnt0(9),
      I2 => O_bps_rx_clk_en,
      O => p_0_in(9)
    );
\R_bps_rx_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(0),
      Q => R_bps_rx_cnt(0)
    );
\R_bps_rx_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(10),
      Q => R_bps_rx_cnt(10)
    );
\R_bps_rx_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(11),
      Q => R_bps_rx_cnt(11)
    );
\R_bps_rx_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(12),
      Q => R_bps_rx_cnt(12)
    );
\R_bps_rx_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(1),
      Q => R_bps_rx_cnt(1)
    );
\R_bps_rx_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(2),
      Q => R_bps_rx_cnt(2)
    );
\R_bps_rx_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(3),
      Q => R_bps_rx_cnt(3)
    );
\R_bps_rx_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(4),
      Q => R_bps_rx_cnt(4)
    );
\R_bps_rx_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(5),
      Q => R_bps_rx_cnt(5)
    );
\R_bps_rx_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(6),
      Q => R_bps_rx_cnt(6)
    );
\R_bps_rx_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(7),
      Q => R_bps_rx_cnt(7)
    );
\R_bps_rx_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(8),
      Q => R_bps_rx_cnt(8)
    );
\R_bps_rx_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_0\,
      D => p_0_in(9),
      Q => R_bps_rx_cnt(9)
    );
\R_para_data_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => \FSM_sequential_R_state[3]_i_3_n_0\,
      I5 => \FSM_sequential_R_state[3]_i_4_n_0\,
      O => \FSM_sequential_R_state_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ReceiveUart_uart_rx is
  port (
    I_rst_n_0 : out STD_LOGIC;
    O_bps_rx_clk_en : out STD_LOGIC;
    O_rx_done_reg_0 : out STD_LOGIC;
    O_rs232_txd : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_rx_done5_out : out STD_LOGIC;
    O_rx_done_reg_1 : out STD_LOGIC;
    O_rx_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I_rs232_rxd : in STD_LOGIC;
    I_clk : in STD_LOGIC;
    \R_para_data_reg_reg[7]_0\ : in STD_LOGIC;
    I_rx_start : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \R_para_data_reg_reg[0]_0\ : in STD_LOGIC;
    \O_para_data_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ReceiveUart_uart_rx : entity is "uart_rx";
end ReceiveUart_uart_rx;

architecture STRUCTURE of ReceiveUart_uart_rx is
  signal \FSM_sequential_R_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \^i_rst_n_0\ : STD_LOGIC;
  signal O_rs232_rxd_reg_i_1_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_3_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_4_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_6_n_0 : STD_LOGIC;
  signal \^o_rs232_txd\ : STD_LOGIC;
  signal O_rx_done1 : STD_LOGIC;
  signal \^o_rx_done5_out\ : STD_LOGIC;
  signal O_rx_done_i_1_n_0 : STD_LOGIC;
  signal \^o_rx_done_reg_0\ : STD_LOGIC;
  signal \^o_rx_done_reg_1\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal R_para_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \R_para_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal R_receiving_i_1_n_0 : STD_LOGIC;
  signal R_receiving_reg_n_0 : STD_LOGIC;
  signal R_rs232_rx_reg0 : STD_LOGIC;
  signal R_rs232_rx_reg1 : STD_LOGIC;
  signal R_rs232_rx_reg2 : STD_LOGIC;
  signal R_rs232_rx_reg3 : STD_LOGIC;
  signal R_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_R_state[1]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[0]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[1]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[2]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[3]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute SOFT_HLUTNM of O_bps_rx_clk_en_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_4 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_6 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_7 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of O_rx_done_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R_para_data_reg[2]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R_para_data_reg[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_para_data_reg[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_para_data_reg[5]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \R_para_data_reg[6]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \R_para_data_reg[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of R_receiving_i_1 : label is "soft_lutpair8";
begin
  I_rst_n_0 <= \^i_rst_n_0\;
  O_rs232_txd <= \^o_rs232_txd\;
  O_rx_done5_out <= \^o_rx_done5_out\;
  O_rx_done_reg_0 <= \^o_rx_done_reg_0\;
  O_rx_done_reg_1 <= \^o_rx_done_reg_1\;
  Q(0) <= \^q\(0);
\FSM_sequential_R_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^q\(0),
      I1 => R_state(1),
      I2 => R_state(2),
      I3 => \^o_rx_done_reg_0\,
      I4 => R_receiving_reg_n_0,
      I5 => R_state(0),
      O => \FSM_sequential_R_state[0]_i_1_n_0\
    );
\FSM_sequential_R_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000600"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(0),
      I2 => \^o_rx_done_reg_0\,
      I3 => R_receiving_reg_n_0,
      I4 => \^q\(0),
      O => \FSM_sequential_R_state[1]_i_1_n_0\
    );
\FSM_sequential_R_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000780000"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(1),
      I2 => R_state(2),
      I3 => \^o_rx_done_reg_0\,
      I4 => R_receiving_reg_n_0,
      I5 => \^q\(0),
      O => \FSM_sequential_R_state[2]_i_1_n_0\
    );
\FSM_sequential_R_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000800000"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(0),
      I2 => R_state(2),
      I3 => \^o_rx_done_reg_0\,
      I4 => R_receiving_reg_n_0,
      I5 => \^q\(0),
      O => \FSM_sequential_R_state[3]_i_2_n_0\
    );
\FSM_sequential_R_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => E(0),
      CLR => \^i_rst_n_0\,
      D => \FSM_sequential_R_state[0]_i_1_n_0\,
      Q => R_state(0)
    );
\FSM_sequential_R_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => E(0),
      CLR => \^i_rst_n_0\,
      D => \FSM_sequential_R_state[1]_i_1_n_0\,
      Q => R_state(1)
    );
\FSM_sequential_R_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => E(0),
      CLR => \^i_rst_n_0\,
      D => \FSM_sequential_R_state[2]_i_1_n_0\,
      Q => R_state(2)
    );
\FSM_sequential_R_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => E(0),
      CLR => \^i_rst_n_0\,
      D => \FSM_sequential_R_state[3]_i_2_n_0\,
      Q => \^q\(0)
    );
O_bps_rx_clk_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_receiving_reg_n_0,
      I1 => \^o_rx_done_reg_0\,
      O => O_rx_done1
    );
O_bps_rx_clk_en_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => O_rx_done1,
      Q => O_bps_rx_clk_en
    );
\O_para_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(1),
      I2 => R_receiving_reg_n_0,
      I3 => \^o_rx_done_reg_0\,
      I4 => \^q\(0),
      I5 => R_state(2),
      O => \^o_rx_done5_out\
    );
\O_para_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data_reg[7]_0\(0),
      D => R_para_data_reg(0),
      Q => O_rx_Data(0),
      R => '0'
    );
\O_para_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data_reg[7]_0\(0),
      D => R_para_data_reg(1),
      Q => O_rx_Data(1),
      R => '0'
    );
\O_para_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data_reg[7]_0\(0),
      D => R_para_data_reg(2),
      Q => O_rx_Data(2),
      R => '0'
    );
\O_para_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data_reg[7]_0\(0),
      D => R_para_data_reg(3),
      Q => O_rx_Data(3),
      R => '0'
    );
\O_para_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data_reg[7]_0\(0),
      D => R_para_data_reg(4),
      Q => O_rx_Data(4),
      R => '0'
    );
\O_para_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data_reg[7]_0\(0),
      D => R_para_data_reg(5),
      Q => O_rx_Data(5),
      R => '0'
    );
\O_para_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data_reg[7]_0\(0),
      D => R_para_data_reg(6),
      Q => O_rx_Data(6),
      R => '0'
    );
\O_para_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data_reg[7]_0\(0),
      D => R_para_data_reg(7),
      Q => O_rx_Data(7),
      R => '0'
    );
O_rs232_rxd_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000B00"
    )
        port map (
      I0 => O_rs232_rxd_reg_i_3_n_0,
      I1 => O_rs232_rxd_reg_i_4_n_0,
      I2 => \R_para_data_reg_reg[7]_0\,
      I3 => O_rs232_rxd_reg_i_6_n_0,
      I4 => \^o_rx_done_reg_1\,
      I5 => \^o_rs232_txd\,
      O => O_rs232_rxd_reg_i_1_n_0
    );
O_rs232_rxd_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_n,
      O => \^i_rst_n_0\
    );
O_rs232_rxd_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(1),
      O => O_rs232_rxd_reg_i_3_n_0
    );
O_rs232_rxd_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => R_state(2),
      O => O_rs232_rxd_reg_i_4_n_0
    );
O_rs232_rxd_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => R_state(2),
      I1 => R_state(1),
      I2 => \^q\(0),
      O => O_rs232_rxd_reg_i_6_n_0
    );
O_rs232_rxd_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^o_rx_done_reg_0\,
      I1 => R_receiving_reg_n_0,
      O => \^o_rx_done_reg_1\
    );
O_rs232_rxd_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => '1',
      D => O_rs232_rxd_reg_i_1_n_0,
      PRE => \^i_rst_n_0\,
      Q => \^o_rs232_txd\
    );
O_rx_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA2A2"
    )
        port map (
      I0 => \^o_rx_done5_out\,
      I1 => R_receiving_reg_n_0,
      I2 => \^o_rx_done_reg_0\,
      I3 => \R_para_data_reg_reg[7]_0\,
      I4 => O_rs232_rxd_reg_i_6_n_0,
      O => O_rx_done_i_1_n_0
    );
O_rx_done_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => O_rx_done_i_1_n_0,
      Q => \^o_rx_done_reg_0\
    );
\R_para_data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \^o_rx_done_reg_1\,
      I2 => \R_para_data_reg_reg[0]_0\,
      I3 => R_state(1),
      I4 => R_state(2),
      I5 => R_para_data_reg(0),
      O => \R_para_data_reg[0]_i_1_n_0\
    );
\R_para_data_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(0),
      I2 => I_rs232_rxd,
      I3 => \^q\(0),
      I4 => \^o_rx_done_reg_1\,
      I5 => R_state(2),
      O => p_1_in(0)
    );
\R_para_data_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFEFAAAA0020"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \R_para_data_reg_reg[7]_0\,
      I2 => O_rs232_rxd_reg_i_4_n_0,
      I3 => R_state(0),
      I4 => \^o_rx_done_reg_1\,
      I5 => R_para_data_reg(1),
      O => \R_para_data_reg[1]_i_1_n_0\
    );
\R_para_data_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => R_state(0),
      I1 => I_rs232_rxd,
      I2 => R_state(1),
      I3 => \^q\(0),
      I4 => \^o_rx_done_reg_1\,
      I5 => R_state(2),
      O => p_1_in(1)
    );
\R_para_data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04FF00000400"
    )
        port map (
      I0 => \R_para_data_reg[2]_i_2_n_0\,
      I1 => I_rs232_rxd,
      I2 => \R_para_data_reg[2]_i_3_n_0\,
      I3 => E(0),
      I4 => \R_para_data_reg[2]_i_4_n_0\,
      I5 => R_para_data_reg(2),
      O => \R_para_data_reg[2]_i_1_n_0\
    );
\R_para_data_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(1),
      O => \R_para_data_reg[2]_i_2_n_0\
    );
\R_para_data_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => R_state(2),
      I1 => \^o_rx_done_reg_0\,
      I2 => R_receiving_reg_n_0,
      I3 => \^q\(0),
      O => \R_para_data_reg[2]_i_3_n_0\
    );
\R_para_data_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222220220"
    )
        port map (
      I0 => R_receiving_reg_n_0,
      I1 => \^o_rx_done_reg_0\,
      I2 => R_state(0),
      I3 => R_state(1),
      I4 => \^q\(0),
      I5 => R_state(2),
      O => \R_para_data_reg[2]_i_4_n_0\
    );
\R_para_data_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333200000002"
    )
        port map (
      I0 => \R_para_data_reg[3]_i_2_n_0\,
      I1 => \^o_rx_done_reg_1\,
      I2 => O_rs232_rxd_reg_i_3_n_0,
      I3 => \R_para_data_reg_reg[7]_0\,
      I4 => \^q\(0),
      I5 => R_para_data_reg(3),
      O => \R_para_data_reg[3]_i_1_n_0\
    );
\R_para_data_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => R_state(2),
      I1 => R_state(1),
      I2 => I_rs232_rxd,
      I3 => R_state(0),
      O => \R_para_data_reg[3]_i_2_n_0\
    );
\R_para_data_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => p_1_in(4),
      I1 => \^o_rx_done_reg_1\,
      I2 => \R_para_data_reg[4]_i_3_n_0\,
      I3 => \R_para_data_reg_reg[7]_0\,
      I4 => \^q\(0),
      I5 => R_para_data_reg(4),
      O => \R_para_data_reg[4]_i_1_n_0\
    );
\R_para_data_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^o_rx_done_reg_1\,
      I2 => R_state(2),
      I3 => R_state(1),
      I4 => R_state(0),
      I5 => I_rs232_rxd,
      O => p_1_in(4)
    );
\R_para_data_reg[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(2),
      I2 => R_state(0),
      O => \R_para_data_reg[4]_i_3_n_0\
    );
\R_para_data_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => p_1_in(5),
      I1 => \^o_rx_done_reg_1\,
      I2 => \R_para_data_reg[5]_i_3_n_0\,
      I3 => \R_para_data_reg_reg[7]_0\,
      I4 => \^q\(0),
      I5 => R_para_data_reg(5),
      O => \R_para_data_reg[5]_i_1_n_0\
    );
\R_para_data_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^o_rx_done_reg_1\,
      I2 => R_state(2),
      I3 => R_state(0),
      I4 => I_rs232_rxd,
      I5 => R_state(1),
      O => p_1_in(5)
    );
\R_para_data_reg[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(2),
      I2 => R_state(0),
      O => \R_para_data_reg[5]_i_3_n_0\
    );
\R_para_data_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => p_1_in(6),
      I1 => \^o_rx_done_reg_1\,
      I2 => \^q\(0),
      I3 => \R_para_data_reg_reg[7]_0\,
      I4 => \R_para_data_reg[6]_i_3_n_0\,
      I5 => R_para_data_reg(6),
      O => \R_para_data_reg[6]_i_1_n_0\
    );
\R_para_data_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^o_rx_done_reg_1\,
      I2 => R_state(2),
      I3 => R_state(0),
      I4 => R_state(1),
      I5 => I_rs232_rxd,
      O => p_1_in(6)
    );
\R_para_data_reg[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => R_state(2),
      I1 => R_state(0),
      I2 => R_state(1),
      O => \R_para_data_reg[6]_i_3_n_0\
    );
\R_para_data_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0800000008"
    )
        port map (
      I0 => I_rs232_rxd,
      I1 => \^q\(0),
      I2 => \^o_rx_done_reg_1\,
      I3 => \R_para_data_reg[7]_i_2_n_0\,
      I4 => \R_para_data_reg_reg[7]_0\,
      I5 => R_para_data_reg(7),
      O => \R_para_data_reg[7]_i_1_n_0\
    );
\R_para_data_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => R_state(2),
      I1 => R_state(1),
      I2 => R_state(0),
      O => \R_para_data_reg[7]_i_2_n_0\
    );
\R_para_data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => \R_para_data_reg[0]_i_1_n_0\,
      Q => R_para_data_reg(0)
    );
\R_para_data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => \R_para_data_reg[1]_i_1_n_0\,
      Q => R_para_data_reg(1)
    );
\R_para_data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => \R_para_data_reg[2]_i_1_n_0\,
      Q => R_para_data_reg(2)
    );
\R_para_data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => \R_para_data_reg[3]_i_1_n_0\,
      Q => R_para_data_reg(3)
    );
\R_para_data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => \R_para_data_reg[4]_i_1_n_0\,
      Q => R_para_data_reg(4)
    );
\R_para_data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => \R_para_data_reg[5]_i_1_n_0\,
      Q => R_para_data_reg(5)
    );
\R_para_data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => \R_para_data_reg[6]_i_1_n_0\,
      Q => R_para_data_reg(6)
    );
\R_para_data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => \R_para_data_reg[7]_i_1_n_0\,
      Q => R_para_data_reg(7)
    );
R_receiving_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550040"
    )
        port map (
      I0 => \^o_rx_done_reg_0\,
      I1 => I_rx_start,
      I2 => R_rs232_rx_reg3,
      I3 => R_rs232_rx_reg2,
      I4 => R_receiving_reg_n_0,
      O => R_receiving_i_1_n_0
    );
R_receiving_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => R_receiving_i_1_n_0,
      Q => R_receiving_reg_n_0
    );
R_rs232_rx_reg0_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => I_rs232_rxd,
      Q => R_rs232_rx_reg0
    );
R_rs232_rx_reg1_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => R_rs232_rx_reg0,
      Q => R_rs232_rx_reg1
    );
R_rs232_rx_reg2_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => R_rs232_rx_reg1,
      Q => R_rs232_rx_reg2
    );
R_rs232_rx_reg3_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \^i_rst_n_0\,
      D => R_rs232_rx_reg2,
      Q => R_rs232_rx_reg3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ReceiveUart_uart_top is
  port (
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    I_rs232_rxd : in STD_LOGIC;
    I_rx_start : in STD_LOGIC;
    O_rs232_txd : out STD_LOGIC;
    O_rx_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O_rx_done : out STD_LOGIC;
    O_data_counter : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ReceiveUart_uart_top : entity is "uart_top";
end ReceiveUart_uart_top;

architecture STRUCTURE of ReceiveUart_uart_top is
  signal O_bps_rx_clk_en : STD_LOGIC;
  signal \^o_data_counter\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^o_rx_done\ : STD_LOGIC;
  signal O_rx_done5_out : STD_LOGIC;
  signal R_state : STD_LOGIC_VECTOR ( 3 to 3 );
  signal U_baudrate_gen_n_0 : STD_LOGIC;
  signal U_baudrate_gen_n_1 : STD_LOGIC;
  signal U_baudrate_gen_n_2 : STD_LOGIC;
  signal U_baudrate_gen_n_3 : STD_LOGIC;
  signal U_uart_rxd_n_0 : STD_LOGIC;
  signal U_uart_rxd_n_6 : STD_LOGIC;
  signal \data_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_data_counter_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  O_data_counter(31 downto 0) <= \^o_data_counter\(31 downto 0);
  O_rx_done <= \^o_rx_done\;
U_baudrate_gen: entity work.ReceiveUart_baudrate_gen
     port map (
      E(0) => U_baudrate_gen_n_0,
      \FSM_sequential_R_state_reg[0]\ => U_uart_rxd_n_6,
      \FSM_sequential_R_state_reg[3]\ => U_baudrate_gen_n_2,
      I_clk => I_clk,
      I_rst_n => I_rst_n,
      O_bps_rx_clk_en => O_bps_rx_clk_en,
      O_rx_done5_out => O_rx_done5_out,
      Q(0) => R_state(3),
      \R_bps_rx_cnt_reg[11]_0\(0) => U_baudrate_gen_n_3,
      \R_bps_rx_cnt_reg[12]_0\ => U_uart_rxd_n_0,
      \R_bps_rx_cnt_reg[8]_0\ => U_baudrate_gen_n_1
    );
U_uart_rxd: entity work.ReceiveUart_uart_rx
     port map (
      E(0) => U_baudrate_gen_n_3,
      I_clk => I_clk,
      I_rs232_rxd => I_rs232_rxd,
      I_rst_n => I_rst_n,
      I_rst_n_0 => U_uart_rxd_n_0,
      I_rx_start => I_rx_start,
      O_bps_rx_clk_en => O_bps_rx_clk_en,
      \O_para_data_reg[7]_0\(0) => U_baudrate_gen_n_0,
      O_rs232_txd => O_rs232_txd,
      O_rx_Data(7 downto 0) => O_rx_Data(7 downto 0),
      O_rx_done5_out => O_rx_done5_out,
      O_rx_done_reg_0 => \^o_rx_done\,
      O_rx_done_reg_1 => U_uart_rxd_n_6,
      Q(0) => R_state(3),
      \R_para_data_reg_reg[0]_0\ => U_baudrate_gen_n_2,
      \R_para_data_reg_reg[7]_0\ => U_baudrate_gen_n_1
    );
\data_counter[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o_data_counter\(0),
      O => \data_counter[3]_i_2_n_0\
    );
\data_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[3]_i_1_n_7\,
      Q => \^o_data_counter\(0)
    );
\data_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[11]_i_1_n_5\,
      Q => \^o_data_counter\(10)
    );
\data_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[11]_i_1_n_4\,
      Q => \^o_data_counter\(11)
    );
\data_counter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[7]_i_1_n_0\,
      CO(3) => \data_counter_reg[11]_i_1_n_0\,
      CO(2) => \data_counter_reg[11]_i_1_n_1\,
      CO(1) => \data_counter_reg[11]_i_1_n_2\,
      CO(0) => \data_counter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[11]_i_1_n_4\,
      O(2) => \data_counter_reg[11]_i_1_n_5\,
      O(1) => \data_counter_reg[11]_i_1_n_6\,
      O(0) => \data_counter_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^o_data_counter\(11 downto 8)
    );
\data_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[15]_i_1_n_7\,
      Q => \^o_data_counter\(12)
    );
\data_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[15]_i_1_n_6\,
      Q => \^o_data_counter\(13)
    );
\data_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[15]_i_1_n_5\,
      Q => \^o_data_counter\(14)
    );
\data_counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[15]_i_1_n_4\,
      Q => \^o_data_counter\(15)
    );
\data_counter_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[11]_i_1_n_0\,
      CO(3) => \data_counter_reg[15]_i_1_n_0\,
      CO(2) => \data_counter_reg[15]_i_1_n_1\,
      CO(1) => \data_counter_reg[15]_i_1_n_2\,
      CO(0) => \data_counter_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[15]_i_1_n_4\,
      O(2) => \data_counter_reg[15]_i_1_n_5\,
      O(1) => \data_counter_reg[15]_i_1_n_6\,
      O(0) => \data_counter_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^o_data_counter\(15 downto 12)
    );
\data_counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[19]_i_1_n_7\,
      Q => \^o_data_counter\(16)
    );
\data_counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[19]_i_1_n_6\,
      Q => \^o_data_counter\(17)
    );
\data_counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[19]_i_1_n_5\,
      Q => \^o_data_counter\(18)
    );
\data_counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[19]_i_1_n_4\,
      Q => \^o_data_counter\(19)
    );
\data_counter_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[15]_i_1_n_0\,
      CO(3) => \data_counter_reg[19]_i_1_n_0\,
      CO(2) => \data_counter_reg[19]_i_1_n_1\,
      CO(1) => \data_counter_reg[19]_i_1_n_2\,
      CO(0) => \data_counter_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[19]_i_1_n_4\,
      O(2) => \data_counter_reg[19]_i_1_n_5\,
      O(1) => \data_counter_reg[19]_i_1_n_6\,
      O(0) => \data_counter_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^o_data_counter\(19 downto 16)
    );
\data_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[3]_i_1_n_6\,
      Q => \^o_data_counter\(1)
    );
\data_counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[23]_i_1_n_7\,
      Q => \^o_data_counter\(20)
    );
\data_counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[23]_i_1_n_6\,
      Q => \^o_data_counter\(21)
    );
\data_counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[23]_i_1_n_5\,
      Q => \^o_data_counter\(22)
    );
\data_counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[23]_i_1_n_4\,
      Q => \^o_data_counter\(23)
    );
\data_counter_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[19]_i_1_n_0\,
      CO(3) => \data_counter_reg[23]_i_1_n_0\,
      CO(2) => \data_counter_reg[23]_i_1_n_1\,
      CO(1) => \data_counter_reg[23]_i_1_n_2\,
      CO(0) => \data_counter_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[23]_i_1_n_4\,
      O(2) => \data_counter_reg[23]_i_1_n_5\,
      O(1) => \data_counter_reg[23]_i_1_n_6\,
      O(0) => \data_counter_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^o_data_counter\(23 downto 20)
    );
\data_counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[27]_i_1_n_7\,
      Q => \^o_data_counter\(24)
    );
\data_counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[27]_i_1_n_6\,
      Q => \^o_data_counter\(25)
    );
\data_counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[27]_i_1_n_5\,
      Q => \^o_data_counter\(26)
    );
\data_counter_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[27]_i_1_n_4\,
      Q => \^o_data_counter\(27)
    );
\data_counter_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[23]_i_1_n_0\,
      CO(3) => \data_counter_reg[27]_i_1_n_0\,
      CO(2) => \data_counter_reg[27]_i_1_n_1\,
      CO(1) => \data_counter_reg[27]_i_1_n_2\,
      CO(0) => \data_counter_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[27]_i_1_n_4\,
      O(2) => \data_counter_reg[27]_i_1_n_5\,
      O(1) => \data_counter_reg[27]_i_1_n_6\,
      O(0) => \data_counter_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^o_data_counter\(27 downto 24)
    );
\data_counter_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[31]_i_1_n_7\,
      Q => \^o_data_counter\(28)
    );
\data_counter_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[31]_i_1_n_6\,
      Q => \^o_data_counter\(29)
    );
\data_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[3]_i_1_n_5\,
      Q => \^o_data_counter\(2)
    );
\data_counter_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[31]_i_1_n_5\,
      Q => \^o_data_counter\(30)
    );
\data_counter_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[31]_i_1_n_4\,
      Q => \^o_data_counter\(31)
    );
\data_counter_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[27]_i_1_n_0\,
      CO(3) => \NLW_data_counter_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \data_counter_reg[31]_i_1_n_1\,
      CO(1) => \data_counter_reg[31]_i_1_n_2\,
      CO(0) => \data_counter_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[31]_i_1_n_4\,
      O(2) => \data_counter_reg[31]_i_1_n_5\,
      O(1) => \data_counter_reg[31]_i_1_n_6\,
      O(0) => \data_counter_reg[31]_i_1_n_7\,
      S(3 downto 0) => \^o_data_counter\(31 downto 28)
    );
\data_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[3]_i_1_n_4\,
      Q => \^o_data_counter\(3)
    );
\data_counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_counter_reg[3]_i_1_n_0\,
      CO(2) => \data_counter_reg[3]_i_1_n_1\,
      CO(1) => \data_counter_reg[3]_i_1_n_2\,
      CO(0) => \data_counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \data_counter_reg[3]_i_1_n_4\,
      O(2) => \data_counter_reg[3]_i_1_n_5\,
      O(1) => \data_counter_reg[3]_i_1_n_6\,
      O(0) => \data_counter_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^o_data_counter\(3 downto 1),
      S(0) => \data_counter[3]_i_2_n_0\
    );
\data_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[7]_i_1_n_7\,
      Q => \^o_data_counter\(4)
    );
\data_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[7]_i_1_n_6\,
      Q => \^o_data_counter\(5)
    );
\data_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[7]_i_1_n_5\,
      Q => \^o_data_counter\(6)
    );
\data_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[7]_i_1_n_4\,
      Q => \^o_data_counter\(7)
    );
\data_counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[3]_i_1_n_0\,
      CO(3) => \data_counter_reg[7]_i_1_n_0\,
      CO(2) => \data_counter_reg[7]_i_1_n_1\,
      CO(1) => \data_counter_reg[7]_i_1_n_2\,
      CO(0) => \data_counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[7]_i_1_n_4\,
      O(2) => \data_counter_reg[7]_i_1_n_5\,
      O(1) => \data_counter_reg[7]_i_1_n_6\,
      O(0) => \data_counter_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^o_data_counter\(7 downto 4)
    );
\data_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[11]_i_1_n_7\,
      Q => \^o_data_counter\(8)
    );
\data_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_clk,
      CE => \^o_rx_done\,
      CLR => U_uart_rxd_n_0,
      D => \data_counter_reg[11]_i_1_n_6\,
      Q => \^o_data_counter\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ReceiveUart is
  port (
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    I_rs232_rxd : in STD_LOGIC;
    I_rx_start : in STD_LOGIC;
    O_rs232_txd : out STD_LOGIC;
    O_rx_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O_rx_done : out STD_LOGIC;
    O_data_counter : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ReceiveUart : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ReceiveUart : entity is "ReceiveUart,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ReceiveUart : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ReceiveUart : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ReceiveUart : entity is "uart_top,Vivado 2019.2";
end ReceiveUart;

architecture STRUCTURE of ReceiveUart is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I_clk : signal is "xilinx.com:signal:clock:1.0 I_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I_clk : signal is "XIL_INTERFACENAME I_clk, ASSOCIATED_RESET I_rst_n, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I_rst_n : signal is "xilinx.com:signal:reset:1.0 I_rst_n RST";
  attribute X_INTERFACE_PARAMETER of I_rst_n : signal is "XIL_INTERFACENAME I_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ReceiveUart_uart_top
     port map (
      I_clk => I_clk,
      I_rs232_rxd => I_rs232_rxd,
      I_rst_n => I_rst_n,
      I_rx_start => I_rx_start,
      O_data_counter(31 downto 0) => O_data_counter(31 downto 0),
      O_rs232_txd => O_rs232_txd,
      O_rx_Data(7 downto 0) => O_rx_Data(7 downto 0),
      O_rx_done => O_rx_done
    );
end STRUCTURE;
