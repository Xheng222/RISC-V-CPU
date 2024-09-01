-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Sun Sep  1 20:04:03 2024
-- Host        : LAPTOP-U0UTG14L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/computer/RISC-V-CPU/risc-v/risc-v.srcs/sources_1/ip/LightShow/LightShow_sim_netlist.vhdl
-- Design      : LightShow
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LightShow_light_show is
  port (
    \R_px_temp_reg[1]_0\ : out STD_LOGIC;
    \R_px_temp_reg[0]_0\ : out STD_LOGIC;
    O_led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    I_clk : in STD_LOGIC;
    I_show_num : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of LightShow_light_show : entity is "light_show";
end LightShow_light_show;

architecture STRUCTURE of LightShow_light_show is
  signal \O_led[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \O_led[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \O_led[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \O_led[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal R_counter : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal R_counter0 : STD_LOGIC_VECTOR ( 32 downto 1 );
  signal \R_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__6_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__6_n_3\ : STD_LOGIC;
  signal R_counter0_carry_n_0 : STD_LOGIC;
  signal R_counter0_carry_n_1 : STD_LOGIC;
  signal R_counter0_carry_n_2 : STD_LOGIC;
  signal R_counter0_carry_n_3 : STD_LOGIC;
  signal R_px_temp11_out : STD_LOGIC;
  signal \R_px_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_px_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \R_px_temp[1]_i_2_n_0\ : STD_LOGIC;
  signal \^r_px_temp_reg[0]_0\ : STD_LOGIC;
  signal \^r_px_temp_reg[1]_0\ : STD_LOGIC;
  signal R_temp : STD_LOGIC;
  signal \R_temp[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[0]_P_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[1]_P_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[2]_P_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_2_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_3_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_4_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_5_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_6_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_7_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_8_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_C_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_P_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_C_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_P_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_C_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_P_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_C_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_P_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \NLW_R_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R_counter[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \R_counter[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_counter[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R_counter[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \R_counter[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_counter[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R_counter[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_counter[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R_counter[17]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \R_counter[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \R_counter[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \R_counter[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \R_counter[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R_counter[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_counter[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R_counter[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R_counter[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R_counter[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R_counter[26]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R_counter[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_counter[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_counter[29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R_counter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \R_counter[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_counter[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_counter[32]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \R_counter[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R_counter[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \R_counter[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \R_counter[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \R_counter[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R_counter[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_counter[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_px_temp[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \R_temp_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \R_temp_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \R_temp_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \R_temp_reg[3]_LDC\ : label is "LDC";
begin
  \R_px_temp_reg[0]_0\ <= \^r_px_temp_reg[0]_0\;
  \R_px_temp_reg[1]_0\ <= \^r_px_temp_reg[1]_0\;
\O_led[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFFFE2FFFF1DE2"
    )
        port map (
      I0 => \R_temp_reg[3]_C_n_0\,
      I1 => \R_temp_reg[3]_LDC_n_0\,
      I2 => \R_temp_reg[3]_P_n_0\,
      I3 => \O_led[6]_INST_0_i_2_n_0\,
      I4 => \O_led[6]_INST_0_i_3_n_0\,
      I5 => \O_led[6]_INST_0_i_1_n_0\,
      O => O_led(0)
    );
\O_led[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF71DFDFDF717171"
    )
        port map (
      I0 => \O_led[6]_INST_0_i_1_n_0\,
      I1 => \O_led[6]_INST_0_i_3_n_0\,
      I2 => \O_led[6]_INST_0_i_2_n_0\,
      I3 => \R_temp_reg[3]_P_n_0\,
      I4 => \R_temp_reg[3]_LDC_n_0\,
      I5 => \R_temp_reg[3]_C_n_0\,
      O => O_led(1)
    );
\O_led[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E200FFFFE2FF"
    )
        port map (
      I0 => \R_temp_reg[3]_C_n_0\,
      I1 => \R_temp_reg[3]_LDC_n_0\,
      I2 => \R_temp_reg[3]_P_n_0\,
      I3 => \O_led[6]_INST_0_i_2_n_0\,
      I4 => \O_led[6]_INST_0_i_3_n_0\,
      I5 => \O_led[6]_INST_0_i_1_n_0\,
      O => O_led(2)
    );
\O_led[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555ABFBFEAEFD5D"
    )
        port map (
      I0 => \O_led[6]_INST_0_i_1_n_0\,
      I1 => \R_temp_reg[3]_C_n_0\,
      I2 => \R_temp_reg[3]_LDC_n_0\,
      I3 => \R_temp_reg[3]_P_n_0\,
      I4 => \O_led[6]_INST_0_i_2_n_0\,
      I5 => \O_led[6]_INST_0_i_3_n_0\,
      O => O_led(3)
    );
\O_led[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DFFFFFF1DE21DFF"
    )
        port map (
      I0 => \R_temp_reg[3]_C_n_0\,
      I1 => \R_temp_reg[3]_LDC_n_0\,
      I2 => \R_temp_reg[3]_P_n_0\,
      I3 => \O_led[6]_INST_0_i_2_n_0\,
      I4 => \O_led[6]_INST_0_i_3_n_0\,
      I5 => \O_led[6]_INST_0_i_1_n_0\,
      O => O_led(4)
    );
\O_led[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"297F2929297F7F7F"
    )
        port map (
      I0 => \O_led[6]_INST_0_i_1_n_0\,
      I1 => \O_led[6]_INST_0_i_3_n_0\,
      I2 => \O_led[5]_INST_0_i_1_n_0\,
      I3 => \R_temp_reg[2]_P_n_0\,
      I4 => \R_temp_reg[2]_LDC_n_0\,
      I5 => \R_temp_reg[2]_C_n_0\,
      O => O_led(5)
    );
\O_led[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R_temp_reg[3]_P_n_0\,
      I1 => \R_temp_reg[3]_LDC_n_0\,
      I2 => \R_temp_reg[3]_C_n_0\,
      O => \O_led[5]_INST_0_i_1_n_0\
    );
\O_led[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF57F756A6FD5D"
    )
        port map (
      I0 => \O_led[6]_INST_0_i_1_n_0\,
      I1 => \R_temp_reg[3]_C_n_0\,
      I2 => \R_temp_reg[3]_LDC_n_0\,
      I3 => \R_temp_reg[3]_P_n_0\,
      I4 => \O_led[6]_INST_0_i_2_n_0\,
      I5 => \O_led[6]_INST_0_i_3_n_0\,
      O => O_led(6)
    );
\O_led[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R_temp_reg[0]_P_n_0\,
      I1 => \R_temp_reg[0]_LDC_n_0\,
      I2 => \R_temp_reg[0]_C_n_0\,
      O => \O_led[6]_INST_0_i_1_n_0\
    );
\O_led[6]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R_temp_reg[2]_P_n_0\,
      I1 => \R_temp_reg[2]_LDC_n_0\,
      I2 => \R_temp_reg[2]_C_n_0\,
      O => \O_led[6]_INST_0_i_2_n_0\
    );
\O_led[6]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R_temp_reg[1]_P_n_0\,
      I1 => \R_temp_reg[1]_LDC_n_0\,
      I2 => \R_temp_reg[1]_C_n_0\,
      O => \O_led[6]_INST_0_i_3_n_0\
    );
R_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => R_counter0_carry_n_0,
      CO(2) => R_counter0_carry_n_1,
      CO(1) => R_counter0_carry_n_2,
      CO(0) => R_counter0_carry_n_3,
      CYINIT => R_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(4 downto 1),
      S(3 downto 0) => R_counter(4 downto 1)
    );
\R_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => R_counter0_carry_n_0,
      CO(3) => \R_counter0_carry__0_n_0\,
      CO(2) => \R_counter0_carry__0_n_1\,
      CO(1) => \R_counter0_carry__0_n_2\,
      CO(0) => \R_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(8 downto 5),
      S(3 downto 0) => R_counter(8 downto 5)
    );
\R_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__0_n_0\,
      CO(3) => \R_counter0_carry__1_n_0\,
      CO(2) => \R_counter0_carry__1_n_1\,
      CO(1) => \R_counter0_carry__1_n_2\,
      CO(0) => \R_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(12 downto 9),
      S(3 downto 0) => R_counter(12 downto 9)
    );
\R_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__1_n_0\,
      CO(3) => \R_counter0_carry__2_n_0\,
      CO(2) => \R_counter0_carry__2_n_1\,
      CO(1) => \R_counter0_carry__2_n_2\,
      CO(0) => \R_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(16 downto 13),
      S(3 downto 0) => R_counter(16 downto 13)
    );
\R_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__2_n_0\,
      CO(3) => \R_counter0_carry__3_n_0\,
      CO(2) => \R_counter0_carry__3_n_1\,
      CO(1) => \R_counter0_carry__3_n_2\,
      CO(0) => \R_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(20 downto 17),
      S(3 downto 0) => R_counter(20 downto 17)
    );
\R_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__3_n_0\,
      CO(3) => \R_counter0_carry__4_n_0\,
      CO(2) => \R_counter0_carry__4_n_1\,
      CO(1) => \R_counter0_carry__4_n_2\,
      CO(0) => \R_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(24 downto 21),
      S(3 downto 0) => R_counter(24 downto 21)
    );
\R_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__4_n_0\,
      CO(3) => \R_counter0_carry__5_n_0\,
      CO(2) => \R_counter0_carry__5_n_1\,
      CO(1) => \R_counter0_carry__5_n_2\,
      CO(0) => \R_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(28 downto 25),
      S(3 downto 0) => R_counter(28 downto 25)
    );
\R_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__5_n_0\,
      CO(3) => \NLW_R_counter0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \R_counter0_carry__6_n_1\,
      CO(1) => \R_counter0_carry__6_n_2\,
      CO(0) => \R_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(32 downto 29),
      S(3 downto 0) => R_counter(32 downto 29)
    );
\R_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => R_temp,
      I1 => R_counter(0),
      O => p_0_in(0)
    );
\R_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(10),
      I1 => R_temp,
      O => p_0_in(10)
    );
\R_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(11),
      I1 => R_temp,
      O => p_0_in(11)
    );
\R_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(12),
      I1 => R_temp,
      O => p_0_in(12)
    );
\R_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(13),
      I1 => R_temp,
      O => p_0_in(13)
    );
\R_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(14),
      I1 => R_temp,
      O => p_0_in(14)
    );
\R_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(15),
      I1 => R_temp,
      O => p_0_in(15)
    );
\R_counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(16),
      I1 => R_temp,
      O => p_0_in(16)
    );
\R_counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(17),
      I1 => R_temp,
      O => p_0_in(17)
    );
\R_counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(18),
      I1 => R_temp,
      O => p_0_in(18)
    );
\R_counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(19),
      I1 => R_temp,
      O => p_0_in(19)
    );
\R_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(1),
      I1 => R_temp,
      O => p_0_in(1)
    );
\R_counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(20),
      I1 => R_temp,
      O => p_0_in(20)
    );
\R_counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(21),
      I1 => R_temp,
      O => p_0_in(21)
    );
\R_counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(22),
      I1 => R_temp,
      O => p_0_in(22)
    );
\R_counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(23),
      I1 => R_temp,
      O => p_0_in(23)
    );
\R_counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(24),
      I1 => R_temp,
      O => p_0_in(24)
    );
\R_counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(25),
      I1 => R_temp,
      O => p_0_in(25)
    );
\R_counter[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(26),
      I1 => R_temp,
      O => p_0_in(26)
    );
\R_counter[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(27),
      I1 => R_temp,
      O => p_0_in(27)
    );
\R_counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(28),
      I1 => R_temp,
      O => p_0_in(28)
    );
\R_counter[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(29),
      I1 => R_temp,
      O => p_0_in(29)
    );
\R_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(2),
      I1 => R_temp,
      O => p_0_in(2)
    );
\R_counter[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(30),
      I1 => R_temp,
      O => p_0_in(30)
    );
\R_counter[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(31),
      I1 => R_temp,
      O => p_0_in(31)
    );
\R_counter[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(32),
      I1 => R_temp,
      O => p_0_in(32)
    );
\R_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(3),
      I1 => R_temp,
      O => p_0_in(3)
    );
\R_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(4),
      I1 => R_temp,
      O => p_0_in(4)
    );
\R_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(5),
      I1 => R_temp,
      O => p_0_in(5)
    );
\R_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(6),
      I1 => R_temp,
      O => p_0_in(6)
    );
\R_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(7),
      I1 => R_temp,
      O => p_0_in(7)
    );
\R_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(8),
      I1 => R_temp,
      O => p_0_in(8)
    );
\R_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(9),
      I1 => R_temp,
      O => p_0_in(9)
    );
\R_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(0),
      Q => R_counter(0)
    );
\R_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(10),
      Q => R_counter(10)
    );
\R_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(11),
      Q => R_counter(11)
    );
\R_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(12),
      Q => R_counter(12)
    );
\R_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(13),
      Q => R_counter(13)
    );
\R_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(14),
      Q => R_counter(14)
    );
\R_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(15),
      Q => R_counter(15)
    );
\R_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(16),
      Q => R_counter(16)
    );
\R_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(17),
      Q => R_counter(17)
    );
\R_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(18),
      Q => R_counter(18)
    );
\R_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(19),
      Q => R_counter(19)
    );
\R_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(1),
      Q => R_counter(1)
    );
\R_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(20),
      Q => R_counter(20)
    );
\R_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(21),
      Q => R_counter(21)
    );
\R_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(22),
      Q => R_counter(22)
    );
\R_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(23),
      Q => R_counter(23)
    );
\R_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(24),
      Q => R_counter(24)
    );
\R_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(25),
      Q => R_counter(25)
    );
\R_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(26),
      Q => R_counter(26)
    );
\R_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(27),
      Q => R_counter(27)
    );
\R_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(28),
      Q => R_counter(28)
    );
\R_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(29),
      Q => R_counter(29)
    );
\R_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(2),
      Q => R_counter(2)
    );
\R_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(30),
      Q => R_counter(30)
    );
\R_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(31),
      Q => R_counter(31)
    );
\R_counter_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(32),
      Q => R_counter(32)
    );
\R_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(3),
      Q => R_counter(3)
    );
\R_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(4),
      Q => R_counter(4)
    );
\R_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(5),
      Q => R_counter(5)
    );
\R_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(6),
      Q => R_counter(6)
    );
\R_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(7),
      Q => R_counter(7)
    );
\R_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(8),
      Q => R_counter(8)
    );
\R_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => p_0_in(9),
      Q => R_counter(9)
    );
\R_px_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => R_px_temp11_out,
      I1 => R_temp,
      I2 => \^r_px_temp_reg[0]_0\,
      O => \R_px_temp[0]_i_1_n_0\
    );
\R_px_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => R_px_temp11_out,
      I1 => R_temp,
      I2 => \^r_px_temp_reg[1]_0\,
      O => \R_px_temp[1]_i_1_n_0\
    );
\R_px_temp[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_n,
      O => \R_px_temp[1]_i_2_n_0\
    );
\R_px_temp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => \^r_px_temp_reg[1]_0\,
      I1 => \^r_px_temp_reg[0]_0\,
      I2 => R_counter(31),
      I3 => R_counter(30),
      I4 => \R_temp[3]_P_i_4_n_0\,
      I5 => \R_temp[3]_P_i_3_n_0\,
      O => R_px_temp11_out
    );
\R_px_temp_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => '1',
      D => \R_px_temp[0]_i_1_n_0\,
      PRE => \R_px_temp[1]_i_2_n_0\,
      Q => \^r_px_temp_reg[0]_0\
    );
\R_px_temp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_px_temp[1]_i_2_n_0\,
      D => \R_px_temp[1]_i_1_n_0\,
      Q => \^r_px_temp_reg[1]_0\
    );
\R_temp[0]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => I_show_num(4),
      I1 => R_px_temp11_out,
      I2 => I_show_num(0),
      I3 => R_temp,
      I4 => \R_temp_reg[0]_C_n_0\,
      O => \R_temp[0]_C_i_1_n_0\
    );
\R_temp[0]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => I_show_num(4),
      I1 => R_px_temp11_out,
      I2 => I_show_num(0),
      O => \R_temp[0]_P_i_1_n_0\
    );
\R_temp[1]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => I_show_num(5),
      I1 => R_px_temp11_out,
      I2 => I_show_num(1),
      I3 => R_temp,
      I4 => \R_temp_reg[1]_C_n_0\,
      O => \R_temp[1]_C_i_1_n_0\
    );
\R_temp[1]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => I_show_num(5),
      I1 => R_px_temp11_out,
      I2 => I_show_num(1),
      O => \R_temp[1]_P_i_1_n_0\
    );
\R_temp[2]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => I_show_num(6),
      I1 => R_px_temp11_out,
      I2 => I_show_num(2),
      I3 => R_temp,
      I4 => \R_temp_reg[2]_C_n_0\,
      O => \R_temp[2]_C_i_1_n_0\
    );
\R_temp[2]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => I_show_num(6),
      I1 => R_px_temp11_out,
      I2 => I_show_num(2),
      O => \R_temp[2]_P_i_1_n_0\
    );
\R_temp[3]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => I_show_num(7),
      I1 => R_px_temp11_out,
      I2 => I_show_num(3),
      I3 => R_temp,
      I4 => \R_temp_reg[3]_C_n_0\,
      O => \R_temp[3]_C_i_1_n_0\
    );
\R_temp[3]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFEFFFE0000"
    )
        port map (
      I0 => \R_temp[3]_P_i_3_n_0\,
      I1 => \R_temp[3]_P_i_4_n_0\,
      I2 => R_counter(30),
      I3 => R_counter(31),
      I4 => \^r_px_temp_reg[0]_0\,
      I5 => \^r_px_temp_reg[1]_0\,
      O => R_temp
    );
\R_temp[3]_P_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => I_show_num(7),
      I1 => R_px_temp11_out,
      I2 => I_show_num(3),
      O => \R_temp[3]_P_i_2_n_0\
    );
\R_temp[3]_P_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \R_temp[3]_P_i_5_n_0\,
      I1 => R_counter(28),
      I2 => R_counter(29),
      I3 => R_counter(32),
      I4 => R_counter(26),
      I5 => R_counter(27),
      O => \R_temp[3]_P_i_3_n_0\
    );
\R_temp[3]_P_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A888"
    )
        port map (
      I0 => \R_temp[3]_P_i_6_n_0\,
      I1 => R_counter(15),
      I2 => R_counter(14),
      I3 => \R_temp[3]_P_i_7_n_0\,
      I4 => \R_temp[3]_P_i_8_n_0\,
      O => \R_temp[3]_P_i_4_n_0\
    );
\R_temp[3]_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => R_counter(20),
      I1 => R_counter(21),
      I2 => R_counter(22),
      I3 => R_counter(23),
      I4 => R_counter(25),
      I5 => R_counter(24),
      O => \R_temp[3]_P_i_5_n_0\
    );
\R_temp[3]_P_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => R_counter(17),
      I1 => R_counter(16),
      I2 => R_counter(19),
      I3 => R_counter(18),
      O => \R_temp[3]_P_i_6_n_0\
    );
\R_temp[3]_P_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => R_counter(12),
      I1 => R_counter(11),
      I2 => R_counter(7),
      I3 => R_counter(9),
      O => \R_temp[3]_P_i_7_n_0\
    );
\R_temp[3]_P_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => R_counter(9),
      I1 => R_counter(6),
      I2 => R_counter(8),
      I3 => R_counter(13),
      I4 => R_counter(10),
      O => \R_temp[3]_P_i_8_n_0\
    );
\R_temp_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_temp_reg[0]_LDC_i_2_n_0\,
      D => \R_temp[0]_C_i_1_n_0\,
      Q => \R_temp_reg[0]_C_n_0\
    );
\R_temp_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \R_temp_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \R_temp_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \R_temp_reg[0]_LDC_n_0\
    );
\R_temp_reg[0]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_show_num(0),
      I1 => I_rst_n,
      O => \R_temp_reg[0]_LDC_i_1_n_0\
    );
\R_temp_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_n,
      I1 => I_show_num(0),
      O => \R_temp_reg[0]_LDC_i_2_n_0\
    );
\R_temp_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => R_temp,
      D => \R_temp[0]_P_i_1_n_0\,
      PRE => \R_temp_reg[0]_LDC_i_1_n_0\,
      Q => \R_temp_reg[0]_P_n_0\
    );
\R_temp_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_temp_reg[1]_LDC_i_2_n_0\,
      D => \R_temp[1]_C_i_1_n_0\,
      Q => \R_temp_reg[1]_C_n_0\
    );
\R_temp_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \R_temp_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \R_temp_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \R_temp_reg[1]_LDC_n_0\
    );
\R_temp_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_show_num(1),
      I1 => I_rst_n,
      O => \R_temp_reg[1]_LDC_i_1_n_0\
    );
\R_temp_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_n,
      I1 => I_show_num(1),
      O => \R_temp_reg[1]_LDC_i_2_n_0\
    );
\R_temp_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => R_temp,
      D => \R_temp[1]_P_i_1_n_0\,
      PRE => \R_temp_reg[1]_LDC_i_1_n_0\,
      Q => \R_temp_reg[1]_P_n_0\
    );
\R_temp_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_temp_reg[2]_LDC_i_2_n_0\,
      D => \R_temp[2]_C_i_1_n_0\,
      Q => \R_temp_reg[2]_C_n_0\
    );
\R_temp_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \R_temp_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \R_temp_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \R_temp_reg[2]_LDC_n_0\
    );
\R_temp_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_show_num(2),
      I1 => I_rst_n,
      O => \R_temp_reg[2]_LDC_i_1_n_0\
    );
\R_temp_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_n,
      I1 => I_show_num(2),
      O => \R_temp_reg[2]_LDC_i_2_n_0\
    );
\R_temp_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => R_temp,
      D => \R_temp[2]_P_i_1_n_0\,
      PRE => \R_temp_reg[2]_LDC_i_1_n_0\,
      Q => \R_temp_reg[2]_P_n_0\
    );
\R_temp_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_temp_reg[3]_LDC_i_2_n_0\,
      D => \R_temp[3]_C_i_1_n_0\,
      Q => \R_temp_reg[3]_C_n_0\
    );
\R_temp_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \R_temp_reg[3]_LDC_i_2_n_0\,
      D => '1',
      G => \R_temp_reg[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \R_temp_reg[3]_LDC_n_0\
    );
\R_temp_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_show_num(3),
      I1 => I_rst_n,
      O => \R_temp_reg[3]_LDC_i_1_n_0\
    );
\R_temp_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_n,
      I1 => I_show_num(3),
      O => \R_temp_reg[3]_LDC_i_2_n_0\
    );
\R_temp_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => R_temp,
      D => \R_temp[3]_P_i_2_n_0\,
      PRE => \R_temp_reg[3]_LDC_i_1_n_0\,
      Q => \R_temp_reg[3]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LightShow is
  port (
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    I_show_num : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O_led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O_px : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of LightShow : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of LightShow : entity is "LightShow,light_show,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of LightShow : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of LightShow : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of LightShow : entity is "light_show,Vivado 2019.2";
end LightShow;

architecture STRUCTURE of LightShow is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I_clk : signal is "xilinx.com:signal:clock:1.0 I_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I_clk : signal is "XIL_INTERFACENAME I_clk, ASSOCIATED_RESET I_rst_n, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I_rst_n : signal is "xilinx.com:signal:reset:1.0 I_rst_n RST";
  attribute X_INTERFACE_PARAMETER of I_rst_n : signal is "XIL_INTERFACENAME I_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.LightShow_light_show
     port map (
      I_clk => I_clk,
      I_rst_n => I_rst_n,
      I_show_num(7 downto 0) => I_show_num(7 downto 0),
      O_led(6 downto 0) => O_led(6 downto 0),
      \R_px_temp_reg[0]_0\ => O_px(0),
      \R_px_temp_reg[1]_0\ => O_px(1)
    );
end STRUCTURE;
