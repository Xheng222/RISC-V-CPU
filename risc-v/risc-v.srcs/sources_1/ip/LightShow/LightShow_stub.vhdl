-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Sun Sep  1 20:04:03 2024
-- Host        : LAPTOP-U0UTG14L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/computer/RISC-V-CPU/risc-v/risc-v.srcs/sources_1/ip/LightShow/LightShow_stub.vhdl
-- Design      : LightShow
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LightShow is
  Port ( 
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    I_show_num : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O_led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O_px : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end LightShow;

architecture stub of LightShow is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I_clk,I_rst_n,I_show_num[7:0],O_led[6:0],O_px[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "light_show,Vivado 2019.2";
begin
end;
