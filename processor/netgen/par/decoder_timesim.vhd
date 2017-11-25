--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: decoder_timesim.vhd
-- /___/   /\     Timestamp: Sat Nov 25 22:04:37 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf decoder.pcf -rpw 100 -tpw 0 -ar Structure -tm decoder -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim decoder.ncd decoder_timesim.vhd 
-- Device	: 3s1200efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: decoder.ncd
-- Output file	: \\vmware-host\shared folders\amadeus\academic_materials\Semester_Fall2017\Computer_Orgnization\projects\MIPS16-processor\processor\netgen\par\decoder_timesim.vhd
-- # of Entities	: 1
-- Design Name	: decoder
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity decoder is
  port (
    write_back_reg : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    read_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    read_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    immediate : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end decoder;

architecture Structure of decoder is
  signal instruction_10_IBUF_566 : STD_LOGIC; 
  signal instruction_11_IBUF_567 : STD_LOGIC; 
  signal instruction_12_IBUF_568 : STD_LOGIC; 
  signal instruction_13_IBUF_569 : STD_LOGIC; 
  signal instruction_14_IBUF_570 : STD_LOGIC; 
  signal instruction_15_IBUF_572 : STD_LOGIC; 
  signal instruction_0_IBUF_582 : STD_LOGIC; 
  signal instruction_1_IBUF_583 : STD_LOGIC; 
  signal instruction_2_IBUF_585 : STD_LOGIC; 
  signal instruction_3_IBUF_587 : STD_LOGIC; 
  signal instruction_4_IBUF_589 : STD_LOGIC; 
  signal instruction_5_IBUF_590 : STD_LOGIC; 
  signal instruction_6_IBUF_593 : STD_LOGIC; 
  signal instruction_7_IBUF_595 : STD_LOGIC; 
  signal instruction_8_IBUF_598 : STD_LOGIC; 
  signal read_reg_2_3_OBUF_599 : STD_LOGIC; 
  signal instruction_9_IBUF_600 : STD_LOGIC; 
  signal immediate_11_OBUF_0 : STD_LOGIC; 
  signal read_reg_1_or0004 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0012_0 : STD_LOGIC; 
  signal read_reg_1_0_5 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0000 : STD_LOGIC; 
  signal N83_0 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal read_reg_1_1_233 : STD_LOGIC; 
  signal write_back_reg_1_1211 : STD_LOGIC; 
  signal N32_0 : STD_LOGIC; 
  signal N01_0 : STD_LOGIC; 
  signal immediate_cmp_eq0003_617 : STD_LOGIC; 
  signal immediate_or0002 : STD_LOGIC; 
  signal immediate_or0000 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal immediate_4_6_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal read_reg_1_cmp_eq000911_0 : STD_LOGIC; 
  signal N63_0 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal read_reg_1_1_20_0 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal read_reg_1_1_166_0 : STD_LOGIC; 
  signal read_reg_1_1_133_632 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0001_0 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0008_0 : STD_LOGIC; 
  signal immediate_cmp_eq0000_0 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0017_0 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal write_back_reg_1_147_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal read_reg_1_0_8_644 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal write_back_reg_1_12_0 : STD_LOGIC; 
  signal write_back_reg_1_5_0 : STD_LOGIC; 
  signal N73_0 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0011 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0002 : STD_LOGIC; 
  signal write_back_reg_1_195_0 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N34_0 : STD_LOGIC; 
  signal read_reg_1_cmp_eq000924_654 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0009_0 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal write_back_reg_1_1105_660 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal instruction_10_INBUF : STD_LOGIC; 
  signal instruction_11_INBUF : STD_LOGIC; 
  signal instruction_12_INBUF : STD_LOGIC; 
  signal instruction_13_INBUF : STD_LOGIC; 
  signal instruction_14_INBUF : STD_LOGIC; 
  signal immediate_0_O : STD_LOGIC; 
  signal instruction_15_INBUF : STD_LOGIC; 
  signal immediate_1_O : STD_LOGIC; 
  signal immediate_2_O : STD_LOGIC; 
  signal immediate_3_O : STD_LOGIC; 
  signal immediate_4_O : STD_LOGIC; 
  signal immediate_5_O : STD_LOGIC; 
  signal immediate_6_O : STD_LOGIC; 
  signal immediate_7_O : STD_LOGIC; 
  signal immediate_8_O : STD_LOGIC; 
  signal immediate_9_O : STD_LOGIC; 
  signal instruction_0_INBUF : STD_LOGIC; 
  signal instruction_1_INBUF : STD_LOGIC; 
  signal read_reg_1_0_O : STD_LOGIC; 
  signal instruction_2_INBUF : STD_LOGIC; 
  signal read_reg_1_1_O : STD_LOGIC; 
  signal instruction_3_INBUF : STD_LOGIC; 
  signal read_reg_1_2_O : STD_LOGIC; 
  signal instruction_4_INBUF : STD_LOGIC; 
  signal instruction_5_INBUF : STD_LOGIC; 
  signal read_reg_1_3_O : STD_LOGIC; 
  signal read_reg_2_0_O : STD_LOGIC; 
  signal instruction_6_INBUF : STD_LOGIC; 
  signal read_reg_2_1_O : STD_LOGIC; 
  signal instruction_7_INBUF : STD_LOGIC; 
  signal write_back_reg_1_O : STD_LOGIC; 
  signal read_reg_2_2_O : STD_LOGIC; 
  signal instruction_8_INBUF : STD_LOGIC; 
  signal read_reg_2_3_O : STD_LOGIC; 
  signal instruction_9_INBUF : STD_LOGIC; 
  signal write_back_reg_3_O : STD_LOGIC; 
  signal write_back_reg_2_O : STD_LOGIC; 
  signal immediate_10_O : STD_LOGIC; 
  signal immediate_11_O : STD_LOGIC; 
  signal immediate_12_O : STD_LOGIC; 
  signal immediate_13_O : STD_LOGIC; 
  signal immediate_14_O : STD_LOGIC; 
  signal immediate_15_O : STD_LOGIC; 
  signal write_back_reg_0_O : STD_LOGIC; 
  signal read_reg_1_0_5_F5MUX_1005 : STD_LOGIC; 
  signal read_reg_1_0_5_F : STD_LOGIC; 
  signal read_reg_1_0_5_BXINV_994 : STD_LOGIC; 
  signal read_reg_1_0_51_992 : STD_LOGIC; 
  signal read_reg_1_or0004_F5MUX_1030 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal read_reg_1_or0004_BXINV_1023 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N8_F5MUX_1055 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N8_BXINV_1048 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal read_reg_1_1_233_F5MUX_1080 : STD_LOGIC; 
  signal read_reg_1_1_2331_1078 : STD_LOGIC; 
  signal read_reg_1_1_233_BXINV_1073 : STD_LOGIC; 
  signal read_reg_1_1_2332_1071 : STD_LOGIC; 
  signal write_back_reg_1_1211_F5MUX_1105 : STD_LOGIC; 
  signal write_back_reg_1_12111_1103 : STD_LOGIC; 
  signal write_back_reg_1_1211_BXINV_1098 : STD_LOGIC; 
  signal instruction_11_IBUF_rt_1096 : STD_LOGIC; 
  signal read_reg_2_3_OBUF_F5MUX_1130 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal read_reg_2_3_OBUF_BXINV_1123 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal immediate_3_OBUF_F5MUX_1155 : STD_LOGIC; 
  signal immediate_3_1_1153 : STD_LOGIC; 
  signal immediate_3_OBUF_BXINV_1148 : STD_LOGIC; 
  signal immediate_3_2_1146 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0000_F5MUX_1180 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0000_F : STD_LOGIC; 
  signal read_reg_1_cmp_eq0000_BXINV_1169 : STD_LOGIC; 
  signal read_reg_1_cmp_eq00001_1167 : STD_LOGIC; 
  signal immediate_or0002_F5MUX_1205 : STD_LOGIC; 
  signal immediate_or00021_1203 : STD_LOGIC; 
  signal immediate_or0002_BXINV_1196 : STD_LOGIC; 
  signal immediate_or00022_1194 : STD_LOGIC; 
  signal immediate_or0000_F5MUX_1230 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal immediate_or0000_BXINV_1223 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N81_F5MUX_1255 : STD_LOGIC; 
  signal read_reg_1_1_133_SW0 : STD_LOGIC; 
  signal N81_BXINV_1248 : STD_LOGIC; 
  signal read_reg_1_1_133_SW01_1246 : STD_LOGIC; 
  signal immediate_4_OBUF_1278 : STD_LOGIC; 
  signal N67_pack_1 : STD_LOGIC; 
  signal immediate_2_OBUF_1302 : STD_LOGIC; 
  signal N10_pack_1 : STD_LOGIC; 
  signal read_reg_1_cmp_eq000911_1326 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N59_pack_1 : STD_LOGIC; 
  signal read_reg_1_1_OBUF_1374 : STD_LOGIC; 
  signal N79_pack_1 : STD_LOGIC; 
  signal write_back_reg_0_OBUF_1398 : STD_LOGIC; 
  signal N52_pack_1 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0008_1422 : STD_LOGIC; 
  signal N36_pack_1 : STD_LOGIC; 
  signal immediate_7_OBUF_1446 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal write_back_reg_1_147_1462 : STD_LOGIC; 
  signal read_reg_1_0_OBUF_1494 : STD_LOGIC; 
  signal read_reg_1_0_8_pack_1 : STD_LOGIC; 
  signal immediate_6_OBUF_1518 : STD_LOGIC; 
  signal write_back_reg_1_12_1510 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal write_back_reg_1_OBUF_1535 : STD_LOGIC; 
  signal read_reg_2_1_OBUF_1566 : STD_LOGIC; 
  signal read_reg_2_0_OBUF_1559 : STD_LOGIC; 
  signal immediate_9_OBUF_1590 : STD_LOGIC; 
  signal N7_pack_1 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0012 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0001 : STD_LOGIC; 
  signal write_back_reg_1_195_1638 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0002_pack_1 : STD_LOGIC; 
  signal read_reg_2_2_OBUF_1662 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0011_pack_1 : STD_LOGIC; 
  signal write_back_reg_1_5_1686 : STD_LOGIC; 
  signal N23_pack_2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal read_reg_1_1_133_pack_1 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0017 : STD_LOGIC; 
  signal N15_pack_1 : STD_LOGIC; 
  signal immediate_cmp_eq0000 : STD_LOGIC; 
  signal N17_pack_1 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N61_pack_1 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal write_back_reg_3_OBUF_1798 : STD_LOGIC; 
  signal immediate_4_6_1830 : STD_LOGIC; 
  signal immediate_cmp_eq0003_pack_1 : STD_LOGIC; 
  signal read_reg_1_1_20_1854 : STD_LOGIC; 
  signal N77_pack_1 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N75_pack_1 : STD_LOGIC; 
  signal read_reg_1_2_OBUF_1902 : STD_LOGIC; 
  signal N111_pack_2 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal read_reg_1_1_166_1919 : STD_LOGIC; 
  signal read_reg_1_cmp_eq0009 : STD_LOGIC; 
  signal read_reg_1_cmp_eq000924_pack_1 : STD_LOGIC; 
  signal immediate_8_OBUF_1974 : STD_LOGIC; 
  signal immediate_11_OBUF_1966 : STD_LOGIC; 
  signal immediate_1_OBUF_1998 : STD_LOGIC; 
  signal immediate_0_OBUF_1991 : STD_LOGIC; 
  signal read_reg_1_3_OBUF_2022 : STD_LOGIC; 
  signal N29_pack_1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal write_back_reg_1_1105_pack_1 : STD_LOGIC; 
  signal write_back_reg_2_OBUF_2070 : STD_LOGIC; 
  signal N50_pack_1 : STD_LOGIC; 
  signal immediate_5_OBUF_2082 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  instruction_10_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(10),
      O => instruction_10_INBUF
    );
  instruction_11_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(11),
      O => instruction_11_INBUF
    );
  instruction_12_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(12),
      O => instruction_12_INBUF
    );
  instruction_13_IBUF : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(13),
      O => instruction_13_INBUF
    );
  instruction_14_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(14),
      O => instruction_14_INBUF
    );
  immediate_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => immediate_0_O,
      O => immediate(0)
    );
  instruction_15_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(15),
      O => instruction_15_INBUF
    );
  immediate_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => immediate_1_O,
      O => immediate(1)
    );
  immediate_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => immediate_2_O,
      O => immediate(2)
    );
  immediate_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => immediate_3_O,
      O => immediate(3)
    );
  immediate_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => immediate_4_O,
      O => immediate(4)
    );
  immediate_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => immediate_5_O,
      O => immediate(5)
    );
  immediate_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => immediate_6_O,
      O => immediate(6)
    );
  immediate_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => immediate_7_O,
      O => immediate(7)
    );
  immediate_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => immediate_8_O,
      O => immediate(8)
    );
  immediate_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD132"
    )
    port map (
      I => immediate_9_O,
      O => immediate(9)
    );
  instruction_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(0),
      O => instruction_0_INBUF
    );
  instruction_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(1),
      O => instruction_1_INBUF
    );
  read_reg_1_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => read_reg_1_0_O,
      O => read_reg_1(0)
    );
  instruction_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(2),
      O => instruction_2_INBUF
    );
  read_reg_1_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD120"
    )
    port map (
      I => read_reg_1_1_O,
      O => read_reg_1(1)
    );
  instruction_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(3),
      O => instruction_3_INBUF
    );
  read_reg_1_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => read_reg_1_2_O,
      O => read_reg_1(2)
    );
  instruction_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(4),
      O => instruction_4_INBUF
    );
  instruction_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(5),
      O => instruction_5_INBUF
    );
  read_reg_1_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => read_reg_1_3_O,
      O => read_reg_1(3)
    );
  read_reg_2_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => read_reg_2_0_O,
      O => read_reg_2(0)
    );
  instruction_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(6),
      O => instruction_6_INBUF
    );
  instruction_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_6_INBUF,
      O => instruction_6_IBUF_593
    );
  read_reg_2_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => read_reg_2_1_O,
      O => read_reg_2(1)
    );
  instruction_7_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(7),
      O => instruction_7_INBUF
    );
  instruction_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_7_INBUF,
      O => instruction_7_IBUF_595
    );
  write_back_reg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => write_back_reg_1_O,
      O => write_back_reg(1)
    );
  read_reg_2_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD114"
    )
    port map (
      I => read_reg_2_2_O,
      O => read_reg_2(2)
    );
  instruction_8_IBUF : X_BUF
    generic map(
      LOC => "IPAD111",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(8),
      O => instruction_8_INBUF
    );
  instruction_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD111",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_8_INBUF,
      O => instruction_8_IBUF_598
    );
  read_reg_2_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => read_reg_2_3_O,
      O => read_reg_2(3)
    );
  instruction_9_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(9),
      O => instruction_9_INBUF
    );
  instruction_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_9_INBUF,
      O => instruction_9_IBUF_600
    );
  write_back_reg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => write_back_reg_3_O,
      O => write_back_reg(3)
    );
  write_back_reg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => write_back_reg_2_O,
      O => write_back_reg(2)
    );
  immediate_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => immediate_10_O,
      O => immediate(10)
    );
  immediate_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => immediate_11_O,
      O => immediate(11)
    );
  immediate_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => immediate_12_O,
      O => immediate(12)
    );
  immediate_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => immediate_13_O,
      O => immediate(13)
    );
  immediate_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => immediate_14_O,
      O => immediate(14)
    );
  immediate_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => immediate_15_O,
      O => immediate(15)
    );
  write_back_reg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => write_back_reg_0_O,
      O => write_back_reg(0)
    );
  read_reg_1_0_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y54",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_0_5_F5MUX_1005,
      O => read_reg_1_0_5
    );
  read_reg_1_0_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y54"
    )
    port map (
      IA => read_reg_1_0_51_992,
      IB => read_reg_1_0_5_F,
      SEL => read_reg_1_0_5_BXINV_994,
      O => read_reg_1_0_5_F5MUX_1005
    );
  read_reg_1_0_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y54",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_or0004,
      O => read_reg_1_0_5_BXINV_994
    );
  read_reg_1_or0004_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_or0004_F5MUX_1030,
      O => read_reg_1_or0004
    );
  read_reg_1_or0004_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y58"
    )
    port map (
      IA => N85,
      IB => N86,
      SEL => read_reg_1_or0004_BXINV_1023,
      O => read_reg_1_or0004_F5MUX_1030
    );
  read_reg_1_or0004_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_11_IBUF_567,
      O => read_reg_1_or0004_BXINV_1023
    );
  N8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y45",
      PATHPULSE => 798 ps
    )
    port map (
      I => N8_F5MUX_1055,
      O => N8
    );
  N8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y45"
    )
    port map (
      IA => N91,
      IB => N92,
      SEL => N8_BXINV_1048,
      O => N8_F5MUX_1055
    );
  N8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y45",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_14_IBUF_570,
      O => N8_BXINV_1048
    );
  read_reg_1_1_233_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_1_233_F5MUX_1080,
      O => read_reg_1_1_233
    );
  read_reg_1_1_233_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y60"
    )
    port map (
      IA => read_reg_1_1_2332_1071,
      IB => read_reg_1_1_2331_1078,
      SEL => read_reg_1_1_233_BXINV_1073,
      O => read_reg_1_1_233_F5MUX_1080
    );
  read_reg_1_1_233_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_15_IBUF_572,
      O => read_reg_1_1_233_BXINV_1073
    );
  write_back_reg_1_1211_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y53",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_1_1211_F5MUX_1105,
      O => write_back_reg_1_1211
    );
  write_back_reg_1_1211_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y53"
    )
    port map (
      IA => instruction_11_IBUF_rt_1096,
      IB => write_back_reg_1_12111_1103,
      SEL => write_back_reg_1_1211_BXINV_1098,
      O => write_back_reg_1_1211_F5MUX_1105
    );
  write_back_reg_1_1211_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y53",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_15_IBUF_572,
      O => write_back_reg_1_1211_BXINV_1098
    );
  read_reg_2_3_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y62",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_3_OBUF_F5MUX_1130,
      O => read_reg_2_3_OBUF_599
    );
  read_reg_2_3_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y62"
    )
    port map (
      IA => N89,
      IB => N90,
      SEL => read_reg_2_3_OBUF_BXINV_1123,
      O => read_reg_2_3_OBUF_F5MUX_1130
    );
  read_reg_2_3_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y62",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_13_IBUF_569,
      O => read_reg_2_3_OBUF_BXINV_1123
    );
  immediate_3_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y28"
    )
    port map (
      IA => immediate_3_2_1146,
      IB => immediate_3_1_1153,
      SEL => immediate_3_OBUF_BXINV_1148,
      O => immediate_3_OBUF_F5MUX_1155
    );
  immediate_3_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y28",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_4_IBUF_589,
      O => immediate_3_OBUF_BXINV_1148
    );
  read_reg_1_cmp_eq0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y38",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq0000_F5MUX_1180,
      O => read_reg_1_cmp_eq0000
    );
  read_reg_1_cmp_eq0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y38"
    )
    port map (
      IA => read_reg_1_cmp_eq00001_1167,
      IB => read_reg_1_cmp_eq0000_F,
      SEL => read_reg_1_cmp_eq0000_BXINV_1169,
      O => read_reg_1_cmp_eq0000_F5MUX_1180
    );
  read_reg_1_cmp_eq0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y38",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_15_IBUF_572,
      O => read_reg_1_cmp_eq0000_BXINV_1169
    );
  immediate_or0002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y38",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_or0002_F5MUX_1205,
      O => immediate_or0002
    );
  immediate_or0002_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y38"
    )
    port map (
      IA => immediate_or00022_1194,
      IB => immediate_or00021_1203,
      SEL => immediate_or0002_BXINV_1196,
      O => immediate_or0002_F5MUX_1205
    );
  immediate_or0002_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y38",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_15_IBUF_572,
      O => immediate_or0002_BXINV_1196
    );
  immediate_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_or0000_F5MUX_1230,
      O => immediate_or0000
    );
  immediate_or0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y50"
    )
    port map (
      IA => N87,
      IB => N88,
      SEL => immediate_or0000_BXINV_1223,
      O => immediate_or0000_F5MUX_1230
    );
  immediate_or0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_13_IBUF_569,
      O => immediate_or0000_BXINV_1223
    );
  N81_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y61",
      PATHPULSE => 798 ps
    )
    port map (
      I => N81_F5MUX_1255,
      O => N81
    );
  N81_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y61"
    )
    port map (
      IA => read_reg_1_1_133_SW01_1246,
      IB => read_reg_1_1_133_SW0,
      SEL => N81_BXINV_1248,
      O => N81_F5MUX_1255
    );
  N81_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y61",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_15_IBUF_572,
      O => N81_BXINV_1248
    );
  immediate_4_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y36",
      PATHPULSE => 798 ps
    )
    port map (
      I => N67_pack_1,
      O => N67
    );
  immediate_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y29",
      PATHPULSE => 798 ps
    )
    port map (
      I => N10_pack_1,
      O => N10
    );
  read_reg_1_cmp_eq000911_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq000911_1326,
      O => read_reg_1_cmp_eq000911_0
    );
  read_reg_1_cmp_eq000911_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => N63,
      O => N63_0
    );
  N14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y37",
      PATHPULSE => 798 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  N14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y37",
      PATHPULSE => 798 ps
    )
    port map (
      I => N59_pack_1,
      O => N59
    );
  read_reg_1_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y57",
      PATHPULSE => 798 ps
    )
    port map (
      I => N79_pack_1,
      O => N79
    );
  write_back_reg_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y45",
      PATHPULSE => 798 ps
    )
    port map (
      I => N52_pack_1,
      O => N52
    );
  read_reg_1_cmp_eq0008_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y51",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq0008_1422,
      O => read_reg_1_cmp_eq0008_0
    );
  read_reg_1_cmp_eq0008_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y51",
      PATHPULSE => 798 ps
    )
    port map (
      I => N36_pack_1,
      O => N36
    );
  immediate_7_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y43",
      PATHPULSE => 798 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  N16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  N16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_1_147_1462,
      O => write_back_reg_1_147_0
    );
  read_reg_1_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y55",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_0_8_pack_1,
      O => read_reg_1_0_8_644
    );
  immediate_6_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y42",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_1_12_1510,
      O => write_back_reg_1_12_0
    );
  N73_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y49",
      PATHPULSE => 798 ps
    )
    port map (
      I => N73,
      O => N73_0
    );
  immediate_9_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y42",
      PATHPULSE => 798 ps
    )
    port map (
      I => N7_pack_1,
      O => N7
    );
  read_reg_1_cmp_eq0012_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y47",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq0012,
      O => read_reg_1_cmp_eq0012_0
    );
  read_reg_1_cmp_eq0012_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y47",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq0001,
      O => read_reg_1_cmp_eq0001_0
    );
  write_back_reg_1_195_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y49",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_1_195_1638,
      O => write_back_reg_1_195_0
    );
  write_back_reg_1_195_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y49",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq0002_pack_1,
      O => read_reg_1_cmp_eq0002
    );
  read_reg_2_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y59",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq0011_pack_1,
      O => read_reg_1_cmp_eq0011
    );
  write_back_reg_1_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y46",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_1_5_1686,
      O => write_back_reg_1_5_0
    );
  write_back_reg_1_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y46",
      PATHPULSE => 798 ps
    )
    port map (
      I => N23_pack_2,
      O => N23
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y57",
      PATHPULSE => 798 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y57",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_1_133_pack_1,
      O => read_reg_1_1_133_632
    );
  read_reg_1_cmp_eq0017_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y47",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq0017,
      O => read_reg_1_cmp_eq0017_0
    );
  read_reg_1_cmp_eq0017_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y47",
      PATHPULSE => 798 ps
    )
    port map (
      I => N15_pack_1,
      O => N15
    );
  immediate_cmp_eq0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y40",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_cmp_eq0000,
      O => immediate_cmp_eq0000_0
    );
  immediate_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y40",
      PATHPULSE => 798 ps
    )
    port map (
      I => N17_pack_1,
      O => N17
    );
  N83_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y44",
      PATHPULSE => 798 ps
    )
    port map (
      I => N83,
      O => N83_0
    );
  N83_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y44",
      PATHPULSE => 798 ps
    )
    port map (
      I => N61_pack_1,
      O => N61
    );
  N34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y46",
      PATHPULSE => 798 ps
    )
    port map (
      I => N34,
      O => N34_0
    );
  immediate_4_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y41",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_4_6_1830,
      O => immediate_4_6_0
    );
  immediate_4_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y41",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_cmp_eq0003_pack_1,
      O => immediate_cmp_eq0003_617
    );
  read_reg_1_1_20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y55",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_1_20_1854,
      O => read_reg_1_1_20_0
    );
  read_reg_1_1_20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y55",
      PATHPULSE => 798 ps
    )
    port map (
      I => N77_pack_1,
      O => N77
    );
  N01_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y40",
      PATHPULSE => 798 ps
    )
    port map (
      I => N01,
      O => N01_0
    );
  N01_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y40",
      PATHPULSE => 798 ps
    )
    port map (
      I => N75_pack_1,
      O => N75
    );
  read_reg_1_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y54",
      PATHPULSE => 798 ps
    )
    port map (
      I => N111_pack_2,
      O => N111
    );
  N32_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 798 ps
    )
    port map (
      I => N32,
      O => N32_0
    );
  N32_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_1_166_1919,
      O => read_reg_1_1_166_0
    );
  read_reg_1_cmp_eq0009_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y56",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq0009,
      O => read_reg_1_cmp_eq0009_0
    );
  read_reg_1_cmp_eq0009_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y56",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_cmp_eq000924_pack_1,
      O => read_reg_1_cmp_eq000924_654
    );
  immediate_8_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y41",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_11_OBUF_1966,
      O => immediate_11_OBUF_0
    );
  read_reg_1_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y56",
      PATHPULSE => 798 ps
    )
    port map (
      I => N29_pack_1,
      O => N29
    );
  N2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  N2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_1_1105_pack_1,
      O => write_back_reg_1_1105_660
    );
  write_back_reg_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y44",
      PATHPULSE => 798 ps
    )
    port map (
      I => N50_pack_1,
      O => N50
    );
  instruction_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_10_INBUF,
      O => instruction_10_IBUF_566
    );
  instruction_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_11_INBUF,
      O => instruction_11_IBUF_567
    );
  instruction_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_12_INBUF,
      O => instruction_12_IBUF_568
    );
  instruction_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_13_INBUF,
      O => instruction_13_IBUF_569
    );
  instruction_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_14_INBUF,
      O => instruction_14_IBUF_570
    );
  instruction_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_15_INBUF,
      O => instruction_15_IBUF_572
    );
  instruction_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_0_INBUF,
      O => instruction_0_IBUF_582
    );
  instruction_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_1_INBUF,
      O => instruction_1_IBUF_583
    );
  instruction_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_2_INBUF,
      O => instruction_2_IBUF_585
    );
  instruction_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_3_INBUF,
      O => instruction_3_IBUF_587
    );
  instruction_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_4_INBUF,
      O => instruction_4_IBUF_589
    );
  instruction_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_5_INBUF,
      O => instruction_5_IBUF_590
    );
  read_reg_1_0_51 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X91Y54"
    )
    port map (
      ADR0 => N111,
      ADR1 => read_reg_1_cmp_eq0012_0,
      ADR2 => instruction_5_IBUF_590,
      ADR3 => instruction_9_IBUF_600,
      O => read_reg_1_0_51_992
    );
  read_reg_1_or0004_F : X_LUT4
    generic map(
      INIT => X"57CD",
      LOC => "SLICE_X90Y58"
    )
    port map (
      ADR0 => instruction_14_IBUF_570,
      ADR1 => instruction_12_IBUF_568,
      ADR2 => instruction_13_IBUF_569,
      ADR3 => instruction_15_IBUF_572,
      O => N85
    );
  read_reg_1_or0004_G : X_LUT4
    generic map(
      INIT => X"D36D",
      LOC => "SLICE_X90Y58"
    )
    port map (
      ADR0 => instruction_14_IBUF_570,
      ADR1 => instruction_12_IBUF_568,
      ADR2 => instruction_13_IBUF_569,
      ADR3 => instruction_15_IBUF_572,
      O => N86
    );
  write_back_reg_1_281_F : X_LUT4
    generic map(
      INIT => X"AEAA",
      LOC => "SLICE_X90Y45"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0000,
      ADR1 => instruction_15_IBUF_572,
      ADR2 => N17,
      ADR3 => instruction_11_IBUF_567,
      O => N91
    );
  write_back_reg_1_281_G : X_LUT4
    generic map(
      INIT => X"AAEA",
      LOC => "SLICE_X90Y45"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0000,
      ADR1 => instruction_13_IBUF_569,
      ADR2 => N83_0,
      ADR3 => instruction_12_IBUF_568,
      O => N92
    );
  read_reg_1_1_2332 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X90Y60"
    )
    port map (
      ADR0 => instruction_13_IBUF_569,
      ADR1 => instruction_12_IBUF_568,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => instruction_14_IBUF_570,
      O => read_reg_1_1_2332_1071
    );
  read_reg_1_1_2331 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X90Y60"
    )
    port map (
      ADR0 => instruction_13_IBUF_569,
      ADR1 => instruction_12_IBUF_568,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => instruction_14_IBUF_570,
      O => read_reg_1_1_2331_1078
    );
  instruction_11_IBUF_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X91Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_11_IBUF_567,
      ADR2 => VCC,
      ADR3 => VCC,
      O => instruction_11_IBUF_rt_1096
    );
  write_back_reg_1_12111 : X_LUT4
    generic map(
      INIT => X"8C0F",
      LOC => "SLICE_X91Y53"
    )
    port map (
      ADR0 => instruction_12_IBUF_568,
      ADR1 => instruction_14_IBUF_570,
      ADR2 => instruction_13_IBUF_569,
      ADR3 => instruction_11_IBUF_567,
      O => write_back_reg_1_12111_1103
    );
  read_reg_2_or0000_F : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X90Y62"
    )
    port map (
      ADR0 => instruction_12_IBUF_568,
      ADR1 => instruction_15_IBUF_572,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => instruction_14_IBUF_570,
      O => N89
    );
  read_reg_2_or0000_G : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X90Y62"
    )
    port map (
      ADR0 => instruction_12_IBUF_568,
      ADR1 => instruction_15_IBUF_572,
      ADR2 => N32_0,
      ADR3 => instruction_14_IBUF_570,
      O => N90
    );
  immediate_3_3 : X_LUT4
    generic map(
      INIT => X"CC50",
      LOC => "SLICE_X91Y28"
    )
    port map (
      ADR0 => instruction_2_IBUF_585,
      ADR1 => N01_0,
      ADR2 => immediate_cmp_eq0003_617,
      ADR3 => instruction_3_IBUF_587,
      O => immediate_3_2_1146
    );
  immediate_3_2 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X91Y28"
    )
    port map (
      ADR0 => instruction_3_IBUF_587,
      ADR1 => N01_0,
      ADR2 => immediate_cmp_eq0003_617,
      ADR3 => immediate_or0002,
      O => immediate_3_1_1153
    );
  read_reg_1_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X91Y38"
    )
    port map (
      ADR0 => instruction_13_IBUF_569,
      ADR1 => instruction_14_IBUF_570,
      ADR2 => instruction_12_IBUF_568,
      ADR3 => instruction_11_IBUF_567,
      O => read_reg_1_cmp_eq00001_1167
    );
  immediate_or00022 : X_LUT4
    generic map(
      INIT => X"A8AC",
      LOC => "SLICE_X90Y38"
    )
    port map (
      ADR0 => instruction_12_IBUF_568,
      ADR1 => instruction_11_IBUF_567,
      ADR2 => instruction_14_IBUF_570,
      ADR3 => instruction_13_IBUF_569,
      O => immediate_or00022_1194
    );
  immediate_or00021 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X90Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_12_IBUF_568,
      ADR2 => VCC,
      ADR3 => instruction_13_IBUF_569,
      O => immediate_or00021_1203
    );
  immediate_or0000_F : X_LUT4
    generic map(
      INIT => X"2241",
      LOC => "SLICE_X91Y50"
    )
    port map (
      ADR0 => instruction_12_IBUF_568,
      ADR1 => instruction_11_IBUF_567,
      ADR2 => instruction_14_IBUF_570,
      ADR3 => instruction_15_IBUF_572,
      O => N87
    );
  immediate_or0000_G : X_LUT4
    generic map(
      INIT => X"0015",
      LOC => "SLICE_X91Y50"
    )
    port map (
      ADR0 => instruction_12_IBUF_568,
      ADR1 => instruction_11_IBUF_567,
      ADR2 => instruction_14_IBUF_570,
      ADR3 => instruction_15_IBUF_572,
      O => N88
    );
  read_reg_1_1_133_SW02 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X90Y61"
    )
    port map (
      ADR0 => instruction_13_IBUF_569,
      ADR1 => instruction_12_IBUF_568,
      ADR2 => VCC,
      ADR3 => instruction_14_IBUF_570,
      O => read_reg_1_1_133_SW01_1246
    );
  read_reg_1_1_133_SW01 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X90Y61"
    )
    port map (
      ADR0 => instruction_13_IBUF_569,
      ADR1 => instruction_12_IBUF_568,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => instruction_14_IBUF_570,
      O => read_reg_1_1_133_SW0
    );
  immediate_4_25_SW0 : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X90Y36"
    )
    port map (
      ADR0 => immediate_or0002,
      ADR1 => immediate_4_6_0,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => N16_0,
      O => N67_pack_1
    );
  immediate_4_25 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X90Y36"
    )
    port map (
      ADR0 => instruction_4_IBUF_589,
      ADR1 => instruction_3_IBUF_587,
      ADR2 => read_reg_1_cmp_eq0000,
      ADR3 => N67,
      O => immediate_4_OBUF_1278
    );
  immediate_3_21 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X90Y29"
    )
    port map (
      ADR0 => immediate_or0002,
      ADR1 => immediate_cmp_eq0003_617,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N10_pack_1
    );
  immediate_2_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X90Y29"
    )
    port map (
      ADR0 => N01_0,
      ADR1 => instruction_4_IBUF_589,
      ADR2 => N10,
      ADR3 => instruction_2_IBUF_585,
      O => immediate_2_OBUF_1302
    );
  write_back_reg_1_195_SW0 : X_LUT4
    generic map(
      INIT => X"8899",
      LOC => "SLICE_X91Y48"
    )
    port map (
      ADR0 => instruction_2_IBUF_585,
      ADR1 => instruction_3_IBUF_587,
      ADR2 => VCC,
      ADR3 => instruction_0_IBUF_582,
      O => N63
    );
  read_reg_1_cmp_eq000911 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X91Y48"
    )
    port map (
      ADR0 => instruction_2_IBUF_585,
      ADR1 => instruction_3_IBUF_587,
      ADR2 => instruction_1_IBUF_583,
      ADR3 => instruction_0_IBUF_582,
      O => read_reg_1_cmp_eq000911_1326
    );
  immediate_5_3_SW0 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X90Y37"
    )
    port map (
      ADR0 => immediate_cmp_eq0003_617,
      ADR1 => instruction_11_IBUF_567,
      ADR2 => immediate_or0002,
      ADR3 => N16_0,
      O => N59_pack_1
    );
  immediate_5_3 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X90Y37"
    )
    port map (
      ADR0 => instruction_4_IBUF_589,
      ADR1 => instruction_3_IBUF_587,
      ADR2 => N59,
      ADR3 => read_reg_1_cmp_eq0000,
      O => N14
    );
  read_reg_1_1_38_SW0 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X91Y57"
    )
    port map (
      ADR0 => read_reg_1_1_166_0,
      ADR1 => read_reg_1_1_133_632,
      ADR2 => instruction_9_IBUF_600,
      ADR3 => instruction_14_IBUF_570,
      O => N79_pack_1
    );
  read_reg_1_1_38 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X91Y57"
    )
    port map (
      ADR0 => read_reg_1_1_20_0,
      ADR1 => N111,
      ADR2 => instruction_6_IBUF_593,
      ADR3 => N79,
      O => read_reg_1_1_OBUF_1374
    );
  write_back_reg_0_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X91Y45"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0001_0,
      ADR1 => instruction_8_IBUF_598,
      ADR2 => instruction_2_IBUF_585,
      ADR3 => N2_0,
      O => N52_pack_1
    );
  write_back_reg_0_Q : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X91Y45"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0012_0,
      ADR1 => instruction_5_IBUF_590,
      ADR2 => N8,
      ADR3 => N52,
      O => write_back_reg_0_OBUF_1398
    );
  read_reg_1_cmp_eq0008_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X91Y51"
    )
    port map (
      ADR0 => instruction_12_IBUF_568,
      ADR1 => VCC,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => VCC,
      O => N36_pack_1
    );
  read_reg_1_cmp_eq0008 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X91Y51"
    )
    port map (
      ADR0 => instruction_14_IBUF_570,
      ADR1 => instruction_15_IBUF_572,
      ADR2 => instruction_13_IBUF_569,
      ADR3 => N36,
      O => read_reg_1_cmp_eq0008_1422
    );
  immediate_5_21 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X90Y43"
    )
    port map (
      ADR0 => immediate_cmp_eq0000_0,
      ADR1 => read_reg_1_cmp_eq0017_0,
      ADR2 => immediate_or0000,
      ADR3 => VCC,
      O => N12
    );
  immediate_7_1 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X90Y43"
    )
    port map (
      ADR0 => instruction_7_IBUF_595,
      ADR1 => read_reg_1_cmp_eq0017_0,
      ADR2 => immediate_cmp_eq0000_0,
      ADR3 => N7,
      O => immediate_7_OBUF_1446
    );
  write_back_reg_1_147 : X_LUT4
    generic map(
      INIT => X"7533",
      LOC => "SLICE_X90Y50"
    )
    port map (
      ADR0 => instruction_15_IBUF_572,
      ADR1 => instruction_14_IBUF_570,
      ADR2 => instruction_13_IBUF_569,
      ADR3 => instruction_12_IBUF_568,
      O => write_back_reg_1_147_1462
    );
  read_reg_1_or000021 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X90Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_13_IBUF_569,
      ADR2 => instruction_15_IBUF_572,
      ADR3 => instruction_12_IBUF_568,
      O => N16
    );
  read_reg_1_0_8 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X90Y55"
    )
    port map (
      ADR0 => instruction_15_IBUF_572,
      ADR1 => instruction_11_IBUF_567,
      ADR2 => instruction_10_IBUF_566,
      ADR3 => N15,
      O => read_reg_1_0_8_pack_1
    );
  read_reg_1_0_16 : X_LUT4
    generic map(
      INIT => X"FFA8",
      LOC => "SLICE_X90Y55"
    )
    port map (
      ADR0 => instruction_8_IBUF_598,
      ADR1 => N4_0,
      ADR2 => read_reg_1_0_8_644,
      ADR3 => read_reg_1_0_5,
      O => read_reg_1_0_OBUF_1494
    );
  write_back_reg_1_12 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X91Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => N8,
      ADR3 => instruction_6_IBUF_593,
      O => write_back_reg_1_12_1510
    );
  immediate_6_1 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X91Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N12_0,
      ADR2 => instruction_6_IBUF_593,
      ADR3 => N14_0,
      O => immediate_6_OBUF_1518
    );
  write_back_reg_1_15 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X91Y49"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => write_back_reg_1_5_0,
      ADR2 => instruction_9_IBUF_600,
      ADR3 => write_back_reg_1_12_0,
      O => write_back_reg_1_OBUF_1535
    );
  read_reg_1_1_236_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X91Y49"
    )
    port map (
      ADR0 => instruction_15_IBUF_572,
      ADR1 => instruction_11_IBUF_567,
      ADR2 => instruction_9_IBUF_600,
      ADR3 => instruction_8_IBUF_598,
      O => N73
    );
  read_reg_2_0_1 : X_LUT4
    generic map(
      INIT => X"FFE4",
      LOC => "SLICE_X90Y59"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0011,
      ADR1 => instruction_5_IBUF_590,
      ADR2 => instruction_8_IBUF_598,
      ADR3 => read_reg_2_3_OBUF_599,
      O => read_reg_2_0_OBUF_1559
    );
  read_reg_2_1_1 : X_LUT4
    generic map(
      INIT => X"FEDC",
      LOC => "SLICE_X90Y59"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0011,
      ADR1 => read_reg_2_3_OBUF_599,
      ADR2 => instruction_6_IBUF_593,
      ADR3 => instruction_9_IBUF_600,
      O => read_reg_2_1_OBUF_1566
    );
  immediate_7_11 : X_LUT4
    generic map(
      INIT => X"EAEA",
      LOC => "SLICE_X90Y42"
    )
    port map (
      ADR0 => N14_0,
      ADR1 => instruction_7_IBUF_595,
      ADR2 => immediate_or0000,
      ADR3 => VCC,
      O => N7_pack_1
    );
  immediate_9_1 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X90Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_9_IBUF_600,
      ADR2 => immediate_cmp_eq0000_0,
      ADR3 => N7,
      O => immediate_9_OBUF_1590
    );
  read_reg_1_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"00C0",
      LOC => "SLICE_X91Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N15,
      ADR2 => instruction_15_IBUF_572,
      ADR3 => instruction_11_IBUF_567,
      O => read_reg_1_cmp_eq0001
    );
  read_reg_1_1_321 : X_LUT4
    generic map(
      INIT => X"0404",
      LOC => "SLICE_X91Y47"
    )
    port map (
      ADR0 => instruction_11_IBUF_567,
      ADR1 => N15,
      ADR2 => instruction_15_IBUF_572,
      ADR3 => VCC,
      O => read_reg_1_cmp_eq0012
    );
  read_reg_1_cmp_eq00021 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X90Y49"
    )
    port map (
      ADR0 => N15,
      ADR1 => VCC,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => instruction_15_IBUF_572,
      O => read_reg_1_cmp_eq0002_pack_1
    );
  write_back_reg_1_195 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X90Y49"
    )
    port map (
      ADR0 => instruction_4_IBUF_589,
      ADR1 => N63_0,
      ADR2 => read_reg_1_cmp_eq0002,
      ADR3 => instruction_1_IBUF_583,
      O => write_back_reg_1_195_1638
    );
  read_reg_1_cmp_eq00111 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X91Y59"
    )
    port map (
      ADR0 => instruction_15_IBUF_572,
      ADR1 => N17,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => instruction_14_IBUF_570,
      O => read_reg_1_cmp_eq0011_pack_1
    );
  read_reg_2_2_1 : X_LUT4
    generic map(
      INIT => X"5044",
      LOC => "SLICE_X91Y59"
    )
    port map (
      ADR0 => read_reg_2_3_OBUF_599,
      ADR1 => instruction_7_IBUF_595,
      ADR2 => instruction_10_IBUF_566,
      ADR3 => read_reg_1_cmp_eq0011,
      O => read_reg_2_2_OBUF_1662
    );
  write_back_reg_1_3 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X90Y46"
    )
    port map (
      ADR0 => instruction_3_IBUF_587,
      ADR1 => read_reg_1_cmp_eq0002,
      ADR2 => N34_0,
      ADR3 => instruction_4_IBUF_589,
      O => N23_pack_2
    );
  write_back_reg_1_5 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X90Y46"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0001_0,
      ADR1 => read_reg_1_cmp_eq0012_0,
      ADR2 => instruction_3_IBUF_587,
      ADR3 => N23,
      O => write_back_reg_1_5_1686
    );
  read_reg_1_1_133 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X90Y57"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq000911_0,
      ADR1 => read_reg_1_cmp_eq000924_654,
      ADR2 => read_reg_1_cmp_eq0008_0,
      ADR3 => N81,
      O => read_reg_1_1_133_pack_1
    );
  read_reg_1_1_182 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X90Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_14_IBUF_570,
      ADR2 => read_reg_1_1_133_632,
      ADR3 => read_reg_1_1_166_0,
      O => N4
    );
  read_reg_1_or000421 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X90Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_13_IBUF_569,
      ADR2 => instruction_12_IBUF_568,
      ADR3 => instruction_14_IBUF_570,
      O => N15_pack_1
    );
  read_reg_1_cmp_eq00171 : X_LUT4
    generic map(
      INIT => X"2020",
      LOC => "SLICE_X90Y47"
    )
    port map (
      ADR0 => instruction_11_IBUF_567,
      ADR1 => instruction_15_IBUF_572,
      ADR2 => N15,
      ADR3 => VCC,
      O => read_reg_1_cmp_eq0017
    );
  read_reg_1_or000431 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X91Y40"
    )
    port map (
      ADR0 => instruction_13_IBUF_569,
      ADR1 => VCC,
      ADR2 => instruction_12_IBUF_568,
      ADR3 => VCC,
      O => N17_pack_1
    );
  immediate_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X91Y40"
    )
    port map (
      ADR0 => instruction_14_IBUF_570,
      ADR1 => instruction_15_IBUF_572,
      ADR2 => N17,
      ADR3 => instruction_11_IBUF_567,
      O => immediate_cmp_eq0000
    );
  write_back_reg_1_233_SW0 : X_LUT4
    generic map(
      INIT => X"BFB6",
      LOC => "SLICE_X91Y44"
    )
    port map (
      ADR0 => instruction_1_IBUF_583,
      ADR1 => instruction_3_IBUF_587,
      ADR2 => instruction_2_IBUF_585,
      ADR3 => instruction_0_IBUF_582,
      O => N61_pack_1
    );
  write_back_reg_1_281_SW0 : X_LUT4
    generic map(
      INIT => X"A080",
      LOC => "SLICE_X91Y44"
    )
    port map (
      ADR0 => instruction_11_IBUF_567,
      ADR1 => instruction_4_IBUF_589,
      ADR2 => instruction_15_IBUF_572,
      ADR3 => N61,
      O => N83
    );
  write_back_reg_3_1 : X_LUT4
    generic map(
      INIT => X"FFEA",
      LOC => "SLICE_X91Y46"
    )
    port map (
      ADR0 => N23,
      ADR1 => instruction_0_IBUF_582,
      ADR2 => read_reg_1_cmp_eq0008_0,
      ADR3 => read_reg_1_cmp_eq0012_0,
      O => write_back_reg_3_OBUF_1798
    );
  write_back_reg_1_3_SW0 : X_LUT4
    generic map(
      INIT => X"FFDD",
      LOC => "SLICE_X91Y46"
    )
    port map (
      ADR0 => instruction_1_IBUF_583,
      ADR1 => instruction_0_IBUF_582,
      ADR2 => VCC,
      ADR3 => instruction_2_IBUF_585,
      O => N34
    );
  immediate_cmp_eq0003 : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X90Y41"
    )
    port map (
      ADR0 => N36,
      ADR1 => instruction_14_IBUF_570,
      ADR2 => instruction_15_IBUF_572,
      ADR3 => instruction_13_IBUF_569,
      O => immediate_cmp_eq0003_pack_1
    );
  immediate_4_6 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X90Y41"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0017_0,
      ADR1 => immediate_or0000,
      ADR2 => immediate_cmp_eq0000_0,
      ADR3 => immediate_cmp_eq0003_617,
      O => immediate_4_6_1830
    );
  read_reg_1_1_20_SW0 : X_LUT4
    generic map(
      INIT => X"00ED",
      LOC => "SLICE_X91Y55"
    )
    port map (
      ADR0 => instruction_9_IBUF_600,
      ADR1 => instruction_8_IBUF_598,
      ADR2 => instruction_10_IBUF_566,
      ADR3 => instruction_15_IBUF_572,
      O => N77_pack_1
    );
  read_reg_1_1_20 : X_LUT4
    generic map(
      INIT => X"CECC",
      LOC => "SLICE_X91Y55"
    )
    port map (
      ADR0 => N15,
      ADR1 => read_reg_1_or0004,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => N77,
      O => read_reg_1_1_20_1854
    );
  immediate_3_1_SW1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X90Y40"
    )
    port map (
      ADR0 => read_reg_1_cmp_eq0017_0,
      ADR1 => immediate_or0000,
      ADR2 => immediate_cmp_eq0000_0,
      ADR3 => read_reg_1_cmp_eq0000,
      O => N75_pack_1
    );
  immediate_3_1 : X_LUT4
    generic map(
      INIT => X"FF20",
      LOC => "SLICE_X90Y40"
    )
    port map (
      ADR0 => instruction_11_IBUF_567,
      ADR1 => N17,
      ADR2 => instruction_15_IBUF_572,
      ADR3 => N75,
      O => N01
    );
  read_reg_1_1_236 : X_LUT4
    generic map(
      INIT => X"ECCC",
      LOC => "SLICE_X90Y54"
    )
    port map (
      ADR0 => N73_0,
      ADR1 => read_reg_1_1_233,
      ADR2 => instruction_10_IBUF_566,
      ADR3 => N15,
      O => N111_pack_2
    );
  read_reg_1_2_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X90Y54"
    )
    port map (
      ADR0 => instruction_7_IBUF_595,
      ADR1 => N4_0,
      ADR2 => instruction_10_IBUF_566,
      ADR3 => N111,
      O => read_reg_1_2_OBUF_1902
    );
  read_reg_1_1_166 : X_LUT4
    generic map(
      INIT => X"10C3",
      LOC => "SLICE_X91Y62"
    )
    port map (
      ADR0 => instruction_11_IBUF_567,
      ADR1 => instruction_13_IBUF_569,
      ADR2 => instruction_15_IBUF_572,
      ADR3 => instruction_12_IBUF_568,
      O => read_reg_1_1_166_1919
    );
  read_reg_2_or0000_SW1 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X91Y62"
    )
    port map (
      ADR0 => instruction_9_IBUF_600,
      ADR1 => instruction_8_IBUF_598,
      ADR2 => instruction_11_IBUF_567,
      ADR3 => instruction_10_IBUF_566,
      O => N32
    );
  read_reg_1_cmp_eq000924 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X91Y56"
    )
    port map (
      ADR0 => instruction_6_IBUF_593,
      ADR1 => instruction_4_IBUF_589,
      ADR2 => instruction_5_IBUF_590,
      ADR3 => instruction_7_IBUF_595,
      O => read_reg_1_cmp_eq000924_pack_1
    );
  read_reg_1_cmp_eq000925 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X91Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => read_reg_1_cmp_eq000924_654,
      ADR3 => read_reg_1_cmp_eq000911_0,
      O => read_reg_1_cmp_eq0009
    );
  immediate_11_1 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X91Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => immediate_cmp_eq0000_0,
      ADR2 => N7,
      ADR3 => instruction_10_IBUF_566,
      O => immediate_11_OBUF_1966
    );
  immediate_8_1 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X91Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => immediate_cmp_eq0000_0,
      ADR2 => N7,
      ADR3 => instruction_8_IBUF_598,
      O => immediate_8_OBUF_1974
    );
  immediate_0_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X91Y29"
    )
    port map (
      ADR0 => instruction_2_IBUF_585,
      ADR1 => N10,
      ADR2 => instruction_0_IBUF_582,
      ADR3 => N01_0,
      O => immediate_0_OBUF_1991
    );
  immediate_1_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X91Y29"
    )
    port map (
      ADR0 => N01_0,
      ADR1 => N10,
      ADR2 => instruction_3_IBUF_587,
      ADR3 => instruction_1_IBUF_583,
      O => immediate_1_OBUF_1998
    );
  read_reg_1_3_SW0 : X_LUT4
    generic map(
      INIT => X"F0B0",
      LOC => "SLICE_X90Y56"
    )
    port map (
      ADR0 => instruction_8_IBUF_598,
      ADR1 => instruction_10_IBUF_566,
      ADR2 => read_reg_1_cmp_eq0012_0,
      ADR3 => instruction_9_IBUF_600,
      O => N29_pack_1
    );
  read_reg_1_3_Q : X_LUT4
    generic map(
      INIT => X"FFAE",
      LOC => "SLICE_X90Y56"
    )
    port map (
      ADR0 => read_reg_1_or0004,
      ADR1 => read_reg_1_cmp_eq0008_0,
      ADR2 => read_reg_1_cmp_eq0009_0,
      ADR3 => N29,
      O => read_reg_1_3_OBUF_2022
    );
  write_back_reg_1_1105 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X90Y48"
    )
    port map (
      ADR0 => instruction_0_IBUF_582,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => read_reg_1_cmp_eq0008_0,
      O => write_back_reg_1_1105_pack_1
    );
  write_back_reg_1_1121 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X90Y48"
    )
    port map (
      ADR0 => write_back_reg_1_147_0,
      ADR1 => write_back_reg_1_195_0,
      ADR2 => write_back_reg_1_1211,
      ADR3 => write_back_reg_1_1105_660,
      O => N2
    );
  write_back_reg_2_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X90Y44"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => instruction_4_IBUF_589,
      ADR2 => instruction_10_IBUF_566,
      ADR3 => read_reg_1_cmp_eq0001_0,
      O => N50_pack_1
    );
  write_back_reg_2_Q : X_LUT4
    generic map(
      INIT => X"FF88",
      LOC => "SLICE_X90Y44"
    )
    port map (
      ADR0 => instruction_7_IBUF_595,
      ADR1 => N8,
      ADR2 => VCC,
      ADR3 => N50,
      O => write_back_reg_2_OBUF_2070
    );
  immediate_5_1 : X_LUT4
    generic map(
      INIT => X"FAF0",
      LOC => "SLICE_X91Y34"
    )
    port map (
      ADR0 => instruction_5_IBUF_590,
      ADR1 => VCC,
      ADR2 => N14_0,
      ADR3 => N12_0,
      O => immediate_5_OBUF_2082
    );
  immediate_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_0_OBUF_1991,
      O => immediate_0_O
    );
  immediate_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_1_OBUF_1998,
      O => immediate_1_O
    );
  immediate_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_2_OBUF_1302,
      O => immediate_2_O
    );
  immediate_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_3_OBUF_F5MUX_1155,
      O => immediate_3_O
    );
  immediate_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_4_OBUF_1278,
      O => immediate_4_O
    );
  immediate_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_5_OBUF_2082,
      O => immediate_5_O
    );
  immediate_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_6_OBUF_1518,
      O => immediate_6_O
    );
  immediate_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_7_OBUF_1446,
      O => immediate_7_O
    );
  immediate_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_8_OBUF_1974,
      O => immediate_8_O
    );
  immediate_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_9_OBUF_1590,
      O => immediate_9_O
    );
  read_reg_1_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_0_OBUF_1494,
      O => read_reg_1_0_O
    );
  read_reg_1_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_1_OBUF_1374,
      O => read_reg_1_1_O
    );
  read_reg_1_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_2_OBUF_1902,
      O => read_reg_1_2_O
    );
  read_reg_1_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_3_OBUF_2022,
      O => read_reg_1_3_O
    );
  read_reg_2_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_0_OBUF_1559,
      O => read_reg_2_0_O
    );
  read_reg_2_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_1_OBUF_1566,
      O => read_reg_2_1_O
    );
  write_back_reg_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_1_OBUF_1535,
      O => write_back_reg_1_O
    );
  read_reg_2_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_2_OBUF_1662,
      O => read_reg_2_2_O
    );
  read_reg_2_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_3_OBUF_599,
      O => read_reg_2_3_O
    );
  write_back_reg_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_3_OBUF_1798,
      O => write_back_reg_3_O
    );
  write_back_reg_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_2_OBUF_2070,
      O => write_back_reg_2_O
    );
  immediate_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_11_OBUF_0,
      O => immediate_10_O
    );
  immediate_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_11_OBUF_0,
      O => immediate_11_O
    );
  immediate_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_11_OBUF_0,
      O => immediate_12_O
    );
  immediate_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_11_OBUF_0,
      O => immediate_13_O
    );
  immediate_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_11_OBUF_0,
      O => immediate_14_O
    );
  immediate_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 798 ps
    )
    port map (
      I => immediate_11_OBUF_0,
      O => immediate_15_O
    );
  write_back_reg_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 798 ps
    )
    port map (
      I => write_back_reg_0_OBUF_1398,
      O => write_back_reg_0_O
    );
  read_reg_1_0_5_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X91Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_reg_1_0_5_F
    );
  read_reg_1_cmp_eq0000_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X91Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_reg_1_cmp_eq0000_F
    );
  NlwBlock_decoder_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

