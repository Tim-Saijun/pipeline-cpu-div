-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Apr 30 22:51:06 2020
-- Host        : DESKTOP-Q6CG7MT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {C:/Users/yufan lu/OneDrive/Vivado
--               Projects/CPU_START_FROM_0/CPU_START_FROM_0.srcs/sources_1/ip/ProgramMemory/ProgramMemory_stub.vhdl}
-- Design      : ProgramMemory
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ProgramMemory is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );

end ProgramMemory;

architecture stub of ProgramMemory is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[3:0],douta[9:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2019.2";
begin
end;
