-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Sun Sep  1 21:16:07 2024
-- Host        : LAPTOP-U0UTG14L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/computer/RISC-V-CPU/risc-v/risc-v.srcs/sources_1/ip/ReceiveUart/ReceiveUart_stub.vhdl
-- Design      : ReceiveUart
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ReceiveUart is
  Port ( 
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    I_rs232_rxd : in STD_LOGIC;
    I_rx_start : in STD_LOGIC;
    O_rs232_txd : out STD_LOGIC;
    O_rx_Data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O_rx_done : out STD_LOGIC;
    O_data_counter : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end ReceiveUart;

architecture stub of ReceiveUart is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I_clk,I_rst_n,I_rs232_rxd,I_rx_start,O_rs232_txd,O_rx_Data[7:0],O_rx_done,O_data_counter[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_top,Vivado 2019.2";
begin
end;
