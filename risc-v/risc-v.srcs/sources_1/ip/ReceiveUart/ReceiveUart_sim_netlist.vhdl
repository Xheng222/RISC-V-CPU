-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Mon Sep  2 11:38:50 2024
-- Host        : LAPTOP-U0UTG14L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top ReceiveUart -prefix
--               ReceiveUart_ ReceiveUart_sim_netlist.vhdl
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
    \R_bps_rx_cnt_reg[12]_0\ : out STD_LOGIC;
    O_bps_rx_clk_en : in STD_LOGIC;
    I_clk : in STD_LOGIC;
    \R_bps_rx_cnt_reg[12]_1\ : in STD_LOGIC
  );
end ReceiveUart_baudrate_gen;

architecture STRUCTURE of ReceiveUart_baudrate_gen is
  signal O_rs232_rxd_reg_i_10_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_6_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_7_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_8_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_9_n_0 : STD_LOGIC;
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
  signal p_0_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_9 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_bps_rx_cnt[9]_i_1\ : label is "soft_lutpair0";
begin
O_rs232_rxd_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => R_bps_rx_cnt(11),
      I1 => R_bps_rx_cnt(10),
      I2 => R_bps_rx_cnt(9),
      O => O_rs232_rxd_reg_i_10_n_0
    );
O_rs232_rxd_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => O_rs232_rxd_reg_i_6_n_0,
      I1 => O_rs232_rxd_reg_i_7_n_0,
      I2 => O_rs232_rxd_reg_i_8_n_0,
      I3 => O_rs232_rxd_reg_i_9_n_0,
      I4 => O_rs232_rxd_reg_i_10_n_0,
      I5 => R_bps_rx_cnt(12),
      O => \R_bps_rx_cnt_reg[12]_0\
    );
O_rs232_rxd_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => R_bps_rx_cnt(10),
      I1 => R_bps_rx_cnt(11),
      O => O_rs232_rxd_reg_i_6_n_0
    );
O_rs232_rxd_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => R_bps_rx_cnt(7),
      I1 => R_bps_rx_cnt(8),
      O => O_rs232_rxd_reg_i_7_n_0
    );
O_rs232_rxd_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => R_bps_rx_cnt(3),
      I1 => R_bps_rx_cnt(0),
      I2 => R_bps_rx_cnt(2),
      I3 => R_bps_rx_cnt(1),
      I4 => R_bps_rx_cnt(5),
      I5 => R_bps_rx_cnt(4),
      O => O_rs232_rxd_reg_i_8_n_0
    );
O_rs232_rxd_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => R_bps_rx_cnt(8),
      I1 => R_bps_rx_cnt(7),
      I2 => R_bps_rx_cnt(6),
      O => O_rs232_rxd_reg_i_9_n_0
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
\R_bps_rx_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt(0),
      O => p_0_in(0)
    );
\R_bps_rx_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(10),
      O => p_0_in(10)
    );
\R_bps_rx_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(11),
      O => p_0_in(11)
    );
\R_bps_rx_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(12),
      O => p_0_in(12)
    );
\R_bps_rx_cnt[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAAAAAAAAAAA"
    )
        port map (
      I0 => R_bps_rx_cnt(12),
      I1 => R_bps_rx_cnt(9),
      I2 => R_bps_rx_cnt(5),
      I3 => \R_bps_rx_cnt[12]_i_3_n_0\,
      I4 => R_bps_rx_cnt(7),
      I5 => R_bps_rx_cnt(8),
      O => \R_bps_rx_cnt[12]_i_2_n_0\
    );
\R_bps_rx_cnt[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA888"
    )
        port map (
      I0 => R_bps_rx_cnt(6),
      I1 => R_bps_rx_cnt(4),
      I2 => R_bps_rx_cnt(0),
      I3 => R_bps_rx_cnt(1),
      I4 => R_bps_rx_cnt(2),
      I5 => R_bps_rx_cnt(3),
      O => \R_bps_rx_cnt[12]_i_3_n_0\
    );
\R_bps_rx_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(1),
      O => p_0_in(1)
    );
\R_bps_rx_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(2),
      O => p_0_in(2)
    );
\R_bps_rx_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(3),
      O => p_0_in(3)
    );
\R_bps_rx_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(4),
      O => p_0_in(4)
    );
\R_bps_rx_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(5),
      O => p_0_in(5)
    );
\R_bps_rx_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(6),
      O => p_0_in(6)
    );
\R_bps_rx_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(7),
      O => p_0_in(7)
    );
\R_bps_rx_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(8),
      O => p_0_in(8)
    );
\R_bps_rx_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(10),
      I3 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I4 => R_bps_rx_cnt0(9),
      O => p_0_in(9)
    );
\R_bps_rx_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(0),
      Q => R_bps_rx_cnt(0)
    );
\R_bps_rx_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(10),
      Q => R_bps_rx_cnt(10)
    );
\R_bps_rx_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(11),
      Q => R_bps_rx_cnt(11)
    );
\R_bps_rx_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(12),
      Q => R_bps_rx_cnt(12)
    );
\R_bps_rx_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(1),
      Q => R_bps_rx_cnt(1)
    );
\R_bps_rx_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(2),
      Q => R_bps_rx_cnt(2)
    );
\R_bps_rx_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(3),
      Q => R_bps_rx_cnt(3)
    );
\R_bps_rx_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(4),
      Q => R_bps_rx_cnt(4)
    );
\R_bps_rx_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(5),
      Q => R_bps_rx_cnt(5)
    );
\R_bps_rx_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(6),
      Q => R_bps_rx_cnt(6)
    );
\R_bps_rx_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(7),
      Q => R_bps_rx_cnt(7)
    );
\R_bps_rx_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(8),
      Q => R_bps_rx_cnt(8)
    );
\R_bps_rx_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_bps_rx_cnt_reg[12]_1\,
      D => p_0_in(9),
      Q => R_bps_rx_cnt(9)
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
    O_rx_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I_rs232_rxd : in STD_LOGIC;
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    \R_para_data_reg_reg[7]_0\ : in STD_LOGIC
  );
end ReceiveUart_uart_rx;

architecture STRUCTURE of ReceiveUart_uart_rx is
  signal \FSM_sequential_R_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \^i_rst_n_0\ : STD_LOGIC;
  signal \O_para_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \O_para_data[7]_i_2_n_0\ : STD_LOGIC;
  signal O_rs232_rxd_reg_i_1_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_3_n_0 : STD_LOGIC;
  signal O_rs232_rxd_reg_i_4_n_0 : STD_LOGIC;
  signal \^o_rs232_txd\ : STD_LOGIC;
  signal O_rx_done1 : STD_LOGIC;
  signal O_rx_done_i_1_n_0 : STD_LOGIC;
  signal \^o_rx_done_reg_0\ : STD_LOGIC;
  signal R_para_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \R_para_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal R_receiving_i_1_n_0 : STD_LOGIC;
  signal R_receiving_reg_n_0 : STD_LOGIC;
  signal R_rs232_rx_reg0 : STD_LOGIC;
  signal R_rs232_rx_reg1 : STD_LOGIC;
  signal R_rs232_rx_reg2 : STD_LOGIC;
  signal R_rs232_rx_reg3 : STD_LOGIC;
  signal R_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_R_state[1]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[0]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[1]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[2]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[3]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute SOFT_HLUTNM of O_bps_rx_clk_en_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \O_para_data[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of O_rs232_rxd_reg_i_4 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of O_rx_done_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_para_data_reg[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R_para_data_reg[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R_para_data_reg[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R_para_data_reg[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_para_data_reg[2]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_para_data_reg[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_para_data_reg[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_para_data_reg[4]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_para_data_reg[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R_para_data_reg[5]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R_para_data_reg[5]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R_para_data_reg[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R_para_data_reg[6]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R_para_data_reg[7]_i_2\ : label is "soft_lutpair10";
begin
  I_rst_n_0 <= \^i_rst_n_0\;
  O_rs232_txd <= \^o_rs232_txd\;
  O_rx_done_reg_0 <= \^o_rx_done_reg_0\;
\FSM_sequential_R_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011150000"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(3),
      I2 => R_state(2),
      I3 => R_state(1),
      I4 => R_receiving_reg_n_0,
      I5 => \^o_rx_done_reg_0\,
      O => \FSM_sequential_R_state[0]_i_1_n_0\
    );
\FSM_sequential_R_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001400"
    )
        port map (
      I0 => R_state(3),
      I1 => R_state(0),
      I2 => R_state(1),
      I3 => R_receiving_reg_n_0,
      I4 => \^o_rx_done_reg_0\,
      O => \FSM_sequential_R_state[1]_i_1_n_0\
    );
\FSM_sequential_R_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040004000400"
    )
        port map (
      I0 => R_state(3),
      I1 => R_receiving_reg_n_0,
      I2 => \^o_rx_done_reg_0\,
      I3 => R_state(2),
      I4 => R_state(0),
      I5 => R_state(1),
      O => \FSM_sequential_R_state[2]_i_1_n_0\
    );
\FSM_sequential_R_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \R_para_data_reg_reg[7]_0\,
      I1 => \^o_rx_done_reg_0\,
      I2 => R_receiving_reg_n_0,
      O => \FSM_sequential_R_state[3]_i_1_n_0\
    );
\FSM_sequential_R_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000008"
    )
        port map (
      I0 => R_state(3),
      I1 => R_receiving_reg_n_0,
      I2 => \^o_rx_done_reg_0\,
      I3 => R_state(1),
      I4 => R_state(2),
      I5 => R_state(0),
      O => \FSM_sequential_R_state[3]_i_2_n_0\
    );
\FSM_sequential_R_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => \FSM_sequential_R_state[3]_i_1_n_0\,
      CLR => \^i_rst_n_0\,
      D => \FSM_sequential_R_state[0]_i_1_n_0\,
      Q => R_state(0)
    );
\FSM_sequential_R_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => \FSM_sequential_R_state[3]_i_1_n_0\,
      CLR => \^i_rst_n_0\,
      D => \FSM_sequential_R_state[1]_i_1_n_0\,
      Q => R_state(1)
    );
\FSM_sequential_R_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => \FSM_sequential_R_state[3]_i_1_n_0\,
      CLR => \^i_rst_n_0\,
      D => \FSM_sequential_R_state[2]_i_1_n_0\,
      Q => R_state(2)
    );
\FSM_sequential_R_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => \FSM_sequential_R_state[3]_i_1_n_0\,
      CLR => \^i_rst_n_0\,
      D => \FSM_sequential_R_state[3]_i_2_n_0\,
      Q => R_state(3)
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
\O_para_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => R_receiving_reg_n_0,
      I1 => \^o_rx_done_reg_0\,
      I2 => I_rst_n,
      I3 => \O_para_data[7]_i_2_n_0\,
      I4 => \R_para_data_reg_reg[7]_0\,
      O => \O_para_data[7]_i_1_n_0\
    );
\O_para_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(2),
      I2 => R_state(0),
      I3 => R_state(3),
      O => \O_para_data[7]_i_2_n_0\
    );
\O_para_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(0),
      Q => O_rx_Data(0),
      R => '0'
    );
\O_para_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(1),
      Q => O_rx_Data(1),
      R => '0'
    );
\O_para_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(2),
      Q => O_rx_Data(2),
      R => '0'
    );
\O_para_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(3),
      Q => O_rx_Data(3),
      R => '0'
    );
\O_para_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(4),
      Q => O_rx_Data(4),
      R => '0'
    );
\O_para_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(5),
      Q => O_rx_Data(5),
      R => '0'
    );
\O_para_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(6),
      Q => O_rx_Data(6),
      R => '0'
    );
\O_para_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(7),
      Q => O_rx_Data(7),
      R => '0'
    );
O_rs232_rxd_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF10000000"
    )
        port map (
      I0 => O_rs232_rxd_reg_i_3_n_0,
      I1 => \^o_rx_done_reg_0\,
      I2 => R_receiving_reg_n_0,
      I3 => O_rs232_rxd_reg_i_4_n_0,
      I4 => \R_para_data_reg_reg[7]_0\,
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
O_rs232_rxd_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE01"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(2),
      I2 => R_state(0),
      I3 => R_state(3),
      O => O_rs232_rxd_reg_i_3_n_0
    );
O_rs232_rxd_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => R_state(3),
      I1 => R_state(2),
      I2 => R_state(1),
      O => O_rs232_rxd_reg_i_4_n_0
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
      INIT => X"00800000"
    )
        port map (
      I0 => \O_para_data[7]_i_2_n_0\,
      I1 => O_rs232_rxd_reg_i_4_n_0,
      I2 => \R_para_data_reg_reg[7]_0\,
      I3 => \^o_rx_done_reg_0\,
      I4 => R_receiving_reg_n_0,
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
      INIT => X"CC8CCCCC00800000"
    )
        port map (
      I0 => \R_para_data_reg[0]_i_2_n_0\,
      I1 => O_rx_done1,
      I2 => \R_para_data_reg[4]_i_3_n_0\,
      I3 => R_state(2),
      I4 => \R_para_data_reg_reg[7]_0\,
      I5 => R_para_data_reg(0),
      O => \R_para_data_reg[0]_i_1_n_0\
    );
\R_para_data_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => R_state(2),
      I1 => I_rs232_rxd,
      I2 => R_state(0),
      I3 => R_state(1),
      I4 => R_state(3),
      O => \R_para_data_reg[0]_i_2_n_0\
    );
\R_para_data_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC8CCCCC00800000"
    )
        port map (
      I0 => \R_para_data_reg[1]_i_2_n_0\,
      I1 => O_rx_done1,
      I2 => \R_para_data_reg[5]_i_3_n_0\,
      I3 => R_state(2),
      I4 => \R_para_data_reg_reg[7]_0\,
      I5 => R_para_data_reg(1),
      O => \R_para_data_reg[1]_i_1_n_0\
    );
\R_para_data_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => R_state(2),
      I1 => R_state(1),
      I2 => R_state(0),
      I3 => I_rs232_rxd,
      I4 => R_state(3),
      O => \R_para_data_reg[1]_i_2_n_0\
    );
\R_para_data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF333380000000"
    )
        port map (
      I0 => \R_para_data_reg[2]_i_2_n_0\,
      I1 => \R_para_data_reg[2]_i_3_n_0\,
      I2 => \R_para_data_reg_reg[7]_0\,
      I3 => \R_para_data_reg[2]_i_4_n_0\,
      I4 => O_rx_done1,
      I5 => R_para_data_reg(2),
      O => \R_para_data_reg[2]_i_1_n_0\
    );
\R_para_data_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => R_state(2),
      I1 => R_state(1),
      I2 => I_rs232_rxd,
      I3 => R_state(0),
      I4 => R_state(3),
      O => \R_para_data_reg[2]_i_2_n_0\
    );
\R_para_data_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBF"
    )
        port map (
      I0 => \^o_rx_done_reg_0\,
      I1 => R_receiving_reg_n_0,
      I2 => R_state(1),
      I3 => R_state(0),
      O => \R_para_data_reg[2]_i_3_n_0\
    );
\R_para_data_reg[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => R_state(3),
      I1 => R_state(2),
      O => \R_para_data_reg[2]_i_4_n_0\
    );
\R_para_data_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC8CCCCC00800000"
    )
        port map (
      I0 => \R_para_data_reg[3]_i_2_n_0\,
      I1 => O_rx_done1,
      I2 => \R_para_data_reg[5]_i_3_n_0\,
      I3 => R_state(1),
      I4 => \R_para_data_reg_reg[7]_0\,
      I5 => R_para_data_reg(3),
      O => \R_para_data_reg[3]_i_1_n_0\
    );
\R_para_data_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => R_state(0),
      I1 => I_rs232_rxd,
      I2 => R_state(1),
      I3 => R_state(2),
      I4 => R_state(3),
      O => \R_para_data_reg[3]_i_2_n_0\
    );
\R_para_data_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00FFFF80000000"
    )
        port map (
      I0 => \R_para_data_reg[4]_i_2_n_0\,
      I1 => \R_para_data_reg_reg[7]_0\,
      I2 => \R_para_data_reg[4]_i_3_n_0\,
      I3 => O_rx_done1,
      I4 => \R_para_data_reg[4]_i_4_n_0\,
      I5 => R_para_data_reg(4),
      O => \R_para_data_reg[4]_i_1_n_0\
    );
\R_para_data_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => I_rs232_rxd,
      I1 => R_state(0),
      I2 => R_state(1),
      I3 => R_state(2),
      I4 => R_state(3),
      O => \R_para_data_reg[4]_i_2_n_0\
    );
\R_para_data_reg[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => R_state(3),
      I1 => R_state(1),
      O => \R_para_data_reg[4]_i_3_n_0\
    );
\R_para_data_reg[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFBFF"
    )
        port map (
      I0 => \^o_rx_done_reg_0\,
      I1 => R_receiving_reg_n_0,
      I2 => R_state(1),
      I3 => R_state(0),
      I4 => R_state(2),
      O => \R_para_data_reg[4]_i_4_n_0\
    );
\R_para_data_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC8CCCCC00800000"
    )
        port map (
      I0 => \R_para_data_reg[5]_i_2_n_0\,
      I1 => O_rx_done1,
      I2 => \R_para_data_reg[5]_i_3_n_0\,
      I3 => \R_para_data_reg[5]_i_4_n_0\,
      I4 => \R_para_data_reg_reg[7]_0\,
      I5 => R_para_data_reg(5),
      O => \R_para_data_reg[5]_i_1_n_0\
    );
\R_para_data_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(0),
      I2 => I_rs232_rxd,
      I3 => R_state(2),
      I4 => R_state(3),
      O => \R_para_data_reg[5]_i_2_n_0\
    );
\R_para_data_reg[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(3),
      O => \R_para_data_reg[5]_i_3_n_0\
    );
\R_para_data_reg[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(2),
      O => \R_para_data_reg[5]_i_4_n_0\
    );
\R_para_data_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC8CCC00008000"
    )
        port map (
      I0 => \R_para_data_reg[6]_i_2_n_0\,
      I1 => O_rx_done1,
      I2 => \R_para_data_reg[6]_i_3_n_0\,
      I3 => \R_para_data_reg_reg[7]_0\,
      I4 => R_state(3),
      I5 => R_para_data_reg(6),
      O => \R_para_data_reg[6]_i_1_n_0\
    );
\R_para_data_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => R_state(1),
      I1 => I_rs232_rxd,
      I2 => R_state(0),
      I3 => R_state(2),
      I4 => R_state(3),
      O => \R_para_data_reg[6]_i_2_n_0\
    );
\R_para_data_reg[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(2),
      I2 => R_state(1),
      O => \R_para_data_reg[6]_i_3_n_0\
    );
\R_para_data_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAEE22222A22"
    )
        port map (
      I0 => \R_para_data_reg[7]_i_2_n_0\,
      I1 => O_rx_done1,
      I2 => R_state(1),
      I3 => \R_para_data_reg_reg[7]_0\,
      I4 => \R_para_data_reg[7]_i_3_n_0\,
      I5 => R_para_data_reg(7),
      O => \R_para_data_reg[7]_i_1_n_0\
    );
\R_para_data_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^o_rx_done_reg_0\,
      I1 => R_receiving_reg_n_0,
      I2 => I_rs232_rxd,
      I3 => R_state(3),
      O => \R_para_data_reg[7]_i_2_n_0\
    );
\R_para_data_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => R_state(2),
      I1 => R_state(0),
      O => \R_para_data_reg[7]_i_3_n_0\
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
R_receiving_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5510"
    )
        port map (
      I0 => \^o_rx_done_reg_0\,
      I1 => R_rs232_rx_reg2,
      I2 => R_rs232_rx_reg3,
      I3 => R_receiving_reg_n_0,
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
end ReceiveUart_uart_top;

architecture STRUCTURE of ReceiveUart_uart_top is
  signal \<const0>\ : STD_LOGIC;
  signal O_bps_rx_clk_en : STD_LOGIC;
  signal U_baudrate_gen_n_0 : STD_LOGIC;
  signal U_uart_rxd_n_0 : STD_LOGIC;
begin
  O_data_counter(31) <= \<const0>\;
  O_data_counter(30) <= \<const0>\;
  O_data_counter(29) <= \<const0>\;
  O_data_counter(28) <= \<const0>\;
  O_data_counter(27) <= \<const0>\;
  O_data_counter(26) <= \<const0>\;
  O_data_counter(25) <= \<const0>\;
  O_data_counter(24) <= \<const0>\;
  O_data_counter(23) <= \<const0>\;
  O_data_counter(22) <= \<const0>\;
  O_data_counter(21) <= \<const0>\;
  O_data_counter(20) <= \<const0>\;
  O_data_counter(19) <= \<const0>\;
  O_data_counter(18) <= \<const0>\;
  O_data_counter(17) <= \<const0>\;
  O_data_counter(16) <= \<const0>\;
  O_data_counter(15) <= \<const0>\;
  O_data_counter(14) <= \<const0>\;
  O_data_counter(13) <= \<const0>\;
  O_data_counter(12) <= \<const0>\;
  O_data_counter(11) <= \<const0>\;
  O_data_counter(10) <= \<const0>\;
  O_data_counter(9) <= \<const0>\;
  O_data_counter(8) <= \<const0>\;
  O_data_counter(7) <= \<const0>\;
  O_data_counter(6) <= \<const0>\;
  O_data_counter(5) <= \<const0>\;
  O_data_counter(4) <= \<const0>\;
  O_data_counter(3) <= \<const0>\;
  O_data_counter(2) <= \<const0>\;
  O_data_counter(1) <= \<const0>\;
  O_data_counter(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U_baudrate_gen: entity work.ReceiveUart_baudrate_gen
     port map (
      I_clk => I_clk,
      O_bps_rx_clk_en => O_bps_rx_clk_en,
      \R_bps_rx_cnt_reg[12]_0\ => U_baudrate_gen_n_0,
      \R_bps_rx_cnt_reg[12]_1\ => U_uart_rxd_n_0
    );
U_uart_rxd: entity work.ReceiveUart_uart_rx
     port map (
      I_clk => I_clk,
      I_rs232_rxd => I_rs232_rxd,
      I_rst_n => I_rst_n,
      I_rst_n_0 => U_uart_rxd_n_0,
      O_bps_rx_clk_en => O_bps_rx_clk_en,
      O_rs232_txd => O_rs232_txd,
      O_rx_Data(7 downto 0) => O_rx_Data(7 downto 0),
      O_rx_done_reg_0 => O_rx_done,
      \R_para_data_reg_reg[7]_0\ => U_baudrate_gen_n_0
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
