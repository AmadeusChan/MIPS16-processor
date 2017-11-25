--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: controller_timesim.vhd
-- /___/   /\     Timestamp: Sat Nov 25 15:19:23 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf controller.pcf -rpw 100 -tpw 0 -ar Structure -tm controller -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim controller.ncd controller_timesim.vhd 
-- Device	: 3s1200efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: controller.ncd
-- Output file	: \\vmware-host\shared folders\amadeus\academic_materials\Semester_Fall2017\Computer_Orgnization\projects\MIPS16-processor\processor\netgen\par\controller_timesim.vhd
-- # of Entities	: 1
-- Design Name	: controller
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

entity controller is
  port (
    operand1_src : out STD_LOGIC; 
    reg_write_enable : out STD_LOGIC; 
    out_mem_read : out STD_LOGIC; 
    out_mem_write : out STD_LOGIC; 
    mem_enable : out STD_LOGIC; 
    is_branch : out STD_LOGIC; 
    branch_type : out STD_LOGIC; 
    is_jump : out STD_LOGIC; 
    wb_src : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    operand2_src : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    op_code : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end controller;

architecture Structure of controller is
  signal instruction_10_IBUF_386 : STD_LOGIC; 
  signal instruction_11_IBUF_388 : STD_LOGIC; 
  signal instruction_12_IBUF_389 : STD_LOGIC; 
  signal instruction_13_IBUF_390 : STD_LOGIC; 
  signal instruction_14_IBUF_391 : STD_LOGIC; 
  signal instruction_15_IBUF_392 : STD_LOGIC; 
  signal instruction_0_IBUF_397 : STD_LOGIC; 
  signal instruction_1_IBUF_399 : STD_LOGIC; 
  signal instruction_2_IBUF_401 : STD_LOGIC; 
  signal instruction_3_IBUF_403 : STD_LOGIC; 
  signal instruction_4_IBUF_404 : STD_LOGIC; 
  signal instruction_5_IBUF_405 : STD_LOGIC; 
  signal instruction_6_IBUF_407 : STD_LOGIC; 
  signal instruction_7_IBUF_408 : STD_LOGIC; 
  signal instruction_8_IBUF_409 : STD_LOGIC; 
  signal instruction_9_IBUF_411 : STD_LOGIC; 
  signal reg_write_enable14 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal reg_write_enable95 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal operand1_src67_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal N29_0 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal is_jump17_0 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N48_0 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal wb_src_0_41_0 : STD_LOGIC; 
  signal N46_0 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N73_0 : STD_LOGIC; 
  signal reg_write_enable33_438 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal op_code_0_36_0 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal wb_src_2_46_0 : STD_LOGIC; 
  signal N67_0 : STD_LOGIC; 
  signal operand2_src_0_24_0 : STD_LOGIC; 
  signal N59_0 : STD_LOGIC; 
  signal wb_src_2_15_0 : STD_LOGIC; 
  signal wb_src_2_24_450 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal operand2_src_0_50_452 : STD_LOGIC; 
  signal N77_0 : STD_LOGIC; 
  signal operand2_src_0_61_454 : STD_LOGIC; 
  signal instruction_10_INBUF : STD_LOGIC; 
  signal mem_enable_O : STD_LOGIC; 
  signal instruction_11_INBUF : STD_LOGIC; 
  signal instruction_12_INBUF : STD_LOGIC; 
  signal instruction_13_INBUF : STD_LOGIC; 
  signal instruction_14_INBUF : STD_LOGIC; 
  signal instruction_15_INBUF : STD_LOGIC; 
  signal is_branch_O : STD_LOGIC; 
  signal wb_src_0_O : STD_LOGIC; 
  signal wb_src_1_O : STD_LOGIC; 
  signal is_jump_O : STD_LOGIC; 
  signal instruction_0_INBUF : STD_LOGIC; 
  signal wb_src_2_O : STD_LOGIC; 
  signal instruction_1_INBUF : STD_LOGIC; 
  signal operand2_src_0_O : STD_LOGIC; 
  signal instruction_2_INBUF : STD_LOGIC; 
  signal operand2_src_1_O : STD_LOGIC; 
  signal instruction_3_INBUF : STD_LOGIC; 
  signal instruction_4_INBUF : STD_LOGIC; 
  signal instruction_5_INBUF : STD_LOGIC; 
  signal out_mem_write_O : STD_LOGIC; 
  signal instruction_6_INBUF : STD_LOGIC; 
  signal instruction_7_INBUF : STD_LOGIC; 
  signal instruction_8_INBUF : STD_LOGIC; 
  signal out_mem_read_O : STD_LOGIC; 
  signal instruction_9_INBUF : STD_LOGIC; 
  signal op_code_1_O : STD_LOGIC; 
  signal operand1_src_O : STD_LOGIC; 
  signal op_code_0_O : STD_LOGIC; 
  signal branch_type_O : STD_LOGIC; 
  signal op_code_3_O : STD_LOGIC; 
  signal op_code_2_O : STD_LOGIC; 
  signal reg_write_enable_O : STD_LOGIC; 
  signal reg_write_enable14_F5MUX_710 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal reg_write_enable14_BXINV_703 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N14_F5MUX_735 : STD_LOGIC; 
  signal N14_F : STD_LOGIC; 
  signal N14_BXINV_724 : STD_LOGIC; 
  signal wb_src_0_11 : STD_LOGIC; 
  signal reg_write_enable95_F5MUX_760 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal reg_write_enable95_BXINV_753 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal out_mem_write_OBUF_F5MUX_785 : STD_LOGIC; 
  signal out_mem_write_OBUF_F : STD_LOGIC; 
  signal out_mem_write_OBUF_BXINV_774 : STD_LOGIC; 
  signal mem_write : STD_LOGIC; 
  signal operand1_src_OBUF_F5MUX_810 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal operand1_src_OBUF_BXINV_803 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal op_code_1_OBUF_F5MUX_835 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal op_code_1_OBUF_BXINV_827 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal is_jump_OBUF_F5MUX_860 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal is_jump_OBUF_BXINV_853 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal operand1_src67_883 : STD_LOGIC; 
  signal N57_pack_1 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N44_pack_1 : STD_LOGIC; 
  signal mem_enable_OBUF_931 : STD_LOGIC; 
  signal N31_pack_1 : STD_LOGIC; 
  signal op_code_2_OBUF_955 : STD_LOGIC; 
  signal N53_pack_1 : STD_LOGIC; 
  signal op_code_3_OBUF_979 : STD_LOGIC; 
  signal wb_src_1_OBUF_971 : STD_LOGIC; 
  signal wb_src_0_41_1003 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N41_pack_2 : STD_LOGIC; 
  signal reg_write_enable_OBUF_1051 : STD_LOGIC; 
  signal reg_write_enable33_pack_1 : STD_LOGIC; 
  signal out_mem_read_OBUF_1075 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal operand2_src_1_OBUF_1099 : STD_LOGIC; 
  signal N111_pack_1 : STD_LOGIC; 
  signal op_code_0_OBUF_1123 : STD_LOGIC; 
  signal N75_pack_1 : STD_LOGIC; 
  signal is_branch_OBUF_1147 : STD_LOGIC; 
  signal N37_pack_1 : STD_LOGIC; 
  signal is_jump17_1171 : STD_LOGIC; 
  signal N69_pack_1 : STD_LOGIC; 
  signal op_code_0_36_1195 : STD_LOGIC; 
  signal N65_pack_1 : STD_LOGIC; 
  signal wb_src_0_OBUF_1219 : STD_LOGIC; 
  signal N63_pack_1 : STD_LOGIC; 
  signal wb_src_2_46_1243 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal operand2_src_0_24_1267 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal wb_src_2_15_1284 : STD_LOGIC; 
  signal wb_src_2_OBUF_1315 : STD_LOGIC; 
  signal wb_src_2_24_pack_1 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N32_pack_1 : STD_LOGIC; 
  signal branch_type_OBUF_1363 : STD_LOGIC; 
  signal N35_pack_1 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal operand2_src_0_50_pack_1 : STD_LOGIC; 
  signal operand2_src_0_OBUF_1411 : STD_LOGIC; 
  signal operand2_src_0_61_pack_1 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  instruction_10_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(10),
      O => instruction_10_INBUF
    );
  mem_enable_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => mem_enable_O,
      O => mem_enable
    );
  instruction_11_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(11),
      O => instruction_11_INBUF
    );
  instruction_12_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(12),
      O => instruction_12_INBUF
    );
  instruction_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_12_INBUF,
      O => instruction_12_IBUF_389
    );
  instruction_13_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(13),
      O => instruction_13_INBUF
    );
  instruction_14_IBUF : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(14),
      O => instruction_14_INBUF
    );
  instruction_15_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(15),
      O => instruction_15_INBUF
    );
  is_branch_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => is_branch_O,
      O => is_branch
    );
  wb_src_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => wb_src_0_O,
      O => wb_src(0)
    );
  wb_src_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD132"
    )
    port map (
      I => wb_src_1_O,
      O => wb_src(1)
    );
  is_jump_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => is_jump_O,
      O => is_jump
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
  wb_src_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => wb_src_2_O,
      O => wb_src(2)
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
  operand2_src_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => operand2_src_0_O,
      O => operand2_src(0)
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
  operand2_src_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => operand2_src_1_O,
      O => operand2_src(1)
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
  instruction_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(4),
      O => instruction_4_INBUF
    );
  instruction_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_4_INBUF,
      O => instruction_4_IBUF_404
    );
  instruction_5_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(5),
      O => instruction_5_INBUF
    );
  instruction_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_5_INBUF,
      O => instruction_5_IBUF_405
    );
  out_mem_write_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => out_mem_write_O,
      O => out_mem_write
    );
  instruction_6_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(6),
      O => instruction_6_INBUF
    );
  instruction_7_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(7),
      O => instruction_7_INBUF
    );
  instruction_8_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(8),
      O => instruction_8_INBUF
    );
  out_mem_read_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => out_mem_read_O,
      O => out_mem_read
    );
  instruction_9_IBUF : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction(9),
      O => instruction_9_INBUF
    );
  op_code_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => op_code_1_O,
      O => op_code(1)
    );
  operand1_src_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => operand1_src_O,
      O => operand1_src
    );
  op_code_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => op_code_0_O,
      O => op_code(0)
    );
  branch_type_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => branch_type_O,
      O => branch_type
    );
  op_code_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => op_code_3_O,
      O => op_code(3)
    );
  op_code_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => op_code_2_O,
      O => op_code(2)
    );
  reg_write_enable_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => reg_write_enable_O,
      O => reg_write_enable
    );
  reg_write_enable14_G : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X90Y43"
    )
    port map (
      ADR0 => instruction_12_IBUF_389,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => instruction_11_IBUF_388,
      O => N90
    );
  reg_write_enable14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y43",
      PATHPULSE => 798 ps
    )
    port map (
      I => reg_write_enable14_F5MUX_710,
      O => reg_write_enable14
    );
  reg_write_enable14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y43"
    )
    port map (
      IA => N89,
      IB => N90,
      SEL => reg_write_enable14_BXINV_703,
      O => reg_write_enable14_F5MUX_710
    );
  reg_write_enable14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y43",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_13_IBUF_390,
      O => reg_write_enable14_BXINV_703
    );
  N14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y39",
      PATHPULSE => 798 ps
    )
    port map (
      I => N14_F5MUX_735,
      O => N14
    );
  N14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y39"
    )
    port map (
      IA => wb_src_0_11,
      IB => N14_F,
      SEL => N14_BXINV_724,
      O => N14_F5MUX_735
    );
  N14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y39",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_4_IBUF_404,
      O => N14_BXINV_724
    );
  reg_write_enable95_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y42",
      PATHPULSE => 798 ps
    )
    port map (
      I => reg_write_enable95_F5MUX_760,
      O => reg_write_enable95
    );
  reg_write_enable95_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y42"
    )
    port map (
      IA => N83,
      IB => N84,
      SEL => reg_write_enable95_BXINV_753,
      O => reg_write_enable95_F5MUX_760
    );
  reg_write_enable95_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y42",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_15_IBUF_392,
      O => reg_write_enable95_BXINV_753
    );
  out_mem_write_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y24"
    )
    port map (
      IA => mem_write,
      IB => out_mem_write_OBUF_F,
      SEL => out_mem_write_OBUF_BXINV_774,
      O => out_mem_write_OBUF_F5MUX_785
    );
  out_mem_write_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y24",
      PATHPULSE => 798 ps
    )
    port map (
      I => N31,
      O => out_mem_write_OBUF_BXINV_774
    );
  operand1_src_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y35"
    )
    port map (
      IA => N87,
      IB => N88,
      SEL => operand1_src_OBUF_BXINV_803,
      O => operand1_src_OBUF_F5MUX_810
    );
  operand1_src_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y35",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_14_IBUF_391,
      O => operand1_src_OBUF_BXINV_803
    );
  op_code_1_G : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X90Y25"
    )
    port map (
      ADR0 => instruction_3_IBUF_403,
      ADR1 => VCC,
      ADR2 => N12_0,
      ADR3 => instruction_2_IBUF_401,
      O => N82
    );
  op_code_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y25"
    )
    port map (
      IA => N81,
      IB => N82,
      SEL => op_code_1_OBUF_BXINV_827,
      O => op_code_1_OBUF_F5MUX_835
    );
  op_code_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y25",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_0_IBUF_397,
      O => op_code_1_OBUF_BXINV_827
    );
  is_jump54_G : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X90Y33"
    )
    port map (
      ADR0 => instruction_1_IBUF_399,
      ADR1 => N32,
      ADR2 => instruction_4_IBUF_404,
      ADR3 => is_jump17_0,
      O => N86
    );
  is_jump_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y33"
    )
    port map (
      IA => N85,
      IB => N86,
      SEL => is_jump_OBUF_BXINV_853,
      O => is_jump_OBUF_F5MUX_860
    );
  is_jump_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y33",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_11_IBUF_388,
      O => is_jump_OBUF_BXINV_853
    );
  operand1_src67_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y37",
      PATHPULSE => 798 ps
    )
    port map (
      I => operand1_src67_883,
      O => operand1_src67_0
    );
  operand1_src67_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y37",
      PATHPULSE => 798 ps
    )
    port map (
      I => N57_pack_1,
      O => N57
    );
  N29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y43",
      PATHPULSE => 798 ps
    )
    port map (
      I => N29,
      O => N29_0
    );
  N29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y43",
      PATHPULSE => 798 ps
    )
    port map (
      I => N44_pack_1,
      O => N44
    );
  mem_enable_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y27",
      PATHPULSE => 798 ps
    )
    port map (
      I => N31_pack_1,
      O => N31
    );
  op_code_2_Q : X_LUT4
    generic map(
      INIT => X"0455",
      LOC => "SLICE_X91Y25"
    )
    port map (
      ADR0 => instruction_0_IBUF_397,
      ADR1 => N29_0,
      ADR2 => instruction_1_IBUF_399,
      ADR3 => N53,
      O => op_code_2_OBUF_955
    );
  op_code_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y25",
      PATHPULSE => 798 ps
    )
    port map (
      I => N53_pack_1,
      O => N53
    );
  op_code_2_SW0 : X_LUT4
    generic map(
      INIT => X"FF77",
      LOC => "SLICE_X91Y25"
    )
    port map (
      ADR0 => instruction_2_IBUF_401,
      ADR1 => N12_0,
      ADR2 => VCC,
      ADR3 => instruction_3_IBUF_403,
      O => N53_pack_1
    );
  wb_src_0_41_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y38",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_src_0_41_1003,
      O => wb_src_0_41_0
    );
  wb_src_0_41_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y38",
      PATHPULSE => 798 ps
    )
    port map (
      I => N46,
      O => N46_0
    );
  N73_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y41",
      PATHPULSE => 798 ps
    )
    port map (
      I => N73,
      O => N73_0
    );
  N73_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y41",
      PATHPULSE => 798 ps
    )
    port map (
      I => N41_pack_2,
      O => N41
    );
  reg_write_enable_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y42",
      PATHPULSE => 798 ps
    )
    port map (
      I => reg_write_enable33_pack_1,
      O => reg_write_enable33_438
    );
  reg_write_enable33 : X_LUT4
    generic map(
      INIT => X"0CC0",
      LOC => "SLICE_X90Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_13_IBUF_390,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => instruction_11_IBUF_388,
      O => reg_write_enable33_pack_1
    );
  out_mem_read_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y24",
      PATHPULSE => 798 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  operand2_src_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y40",
      PATHPULSE => 798 ps
    )
    port map (
      I => N111_pack_1,
      O => N111
    );
  op_code_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y26",
      PATHPULSE => 798 ps
    )
    port map (
      I => N75_pack_1,
      O => N75
    );
  is_branch_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y51",
      PATHPULSE => 798 ps
    )
    port map (
      I => N37_pack_1,
      O => N37
    );
  is_jump17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y41",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_jump17_1171,
      O => is_jump17_0
    );
  is_jump17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y41",
      PATHPULSE => 798 ps
    )
    port map (
      I => N69_pack_1,
      O => N69
    );
  op_code_0_36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y27",
      PATHPULSE => 798 ps
    )
    port map (
      I => op_code_0_36_1195,
      O => op_code_0_36_0
    );
  op_code_0_36_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y27",
      PATHPULSE => 798 ps
    )
    port map (
      I => N65_pack_1,
      O => N65
    );
  wb_src_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y38",
      PATHPULSE => 798 ps
    )
    port map (
      I => N63_pack_1,
      O => N63
    );
  wb_src_2_46_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y45",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_src_2_46_1243,
      O => wb_src_2_46_0
    );
  wb_src_2_46_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y45",
      PATHPULSE => 798 ps
    )
    port map (
      I => N67,
      O => N67_0
    );
  operand2_src_0_24_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y36",
      PATHPULSE => 798 ps
    )
    port map (
      I => operand2_src_0_24_1267,
      O => operand2_src_0_24_0
    );
  operand2_src_0_24_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y36",
      PATHPULSE => 798 ps
    )
    port map (
      I => N59,
      O => N59_0
    );
  N48_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y45",
      PATHPULSE => 798 ps
    )
    port map (
      I => N48,
      O => N48_0
    );
  N48_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y45",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_src_2_15_1284,
      O => wb_src_2_15_0
    );
  wb_src_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y44",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_src_2_24_pack_1,
      O => wb_src_2_24_450
    );
  N12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y32",
      PATHPULSE => 798 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  N12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y32",
      PATHPULSE => 798 ps
    )
    port map (
      I => N32_pack_1,
      O => N32
    );
  branch_type_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y26",
      PATHPULSE => 798 ps
    )
    port map (
      I => N35_pack_1,
      O => N35
    );
  N77_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y37",
      PATHPULSE => 798 ps
    )
    port map (
      I => N77,
      O => N77_0
    );
  N77_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y37",
      PATHPULSE => 798 ps
    )
    port map (
      I => operand2_src_0_50_pack_1,
      O => operand2_src_0_50_452
    );
  operand2_src_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y36",
      PATHPULSE => 798 ps
    )
    port map (
      I => operand2_src_0_61_pack_1,
      O => operand2_src_0_61_454
    );
  reg_write_enable14_F : X_LUT4
    generic map(
      INIT => X"2425",
      LOC => "SLICE_X90Y43"
    )
    port map (
      ADR0 => instruction_12_IBUF_389,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => instruction_11_IBUF_388,
      O => N89
    );
  op_code_1_F : X_LUT4
    generic map(
      INIT => X"B3A0",
      LOC => "SLICE_X90Y25"
    )
    port map (
      ADR0 => instruction_2_IBUF_401,
      ADR1 => instruction_1_IBUF_399,
      ADR2 => N12_0,
      ADR3 => N29_0,
      O => N81
    );
  is_jump54_F : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X90Y33"
    )
    port map (
      ADR0 => instruction_13_IBUF_390,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => instruction_12_IBUF_389,
      ADR3 => instruction_15_IBUF_392,
      O => N85
    );
  instruction_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_10_INBUF,
      O => instruction_10_IBUF_386
    );
  instruction_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_11_INBUF,
      O => instruction_11_IBUF_388
    );
  instruction_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_13_INBUF,
      O => instruction_13_IBUF_390
    );
  instruction_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_14_INBUF,
      O => instruction_14_IBUF_391
    );
  instruction_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_15_INBUF,
      O => instruction_15_IBUF_392
    );
  instruction_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_0_INBUF,
      O => instruction_0_IBUF_397
    );
  instruction_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_1_INBUF,
      O => instruction_1_IBUF_399
    );
  instruction_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_2_INBUF,
      O => instruction_2_IBUF_401
    );
  instruction_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_3_INBUF,
      O => instruction_3_IBUF_403
    );
  instruction_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_6_INBUF,
      O => instruction_6_IBUF_407
    );
  instruction_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_7_INBUF,
      O => instruction_7_IBUF_408
    );
  instruction_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_8_INBUF,
      O => instruction_8_IBUF_409
    );
  instruction_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 798 ps
    )
    port map (
      I => instruction_9_INBUF,
      O => instruction_9_IBUF_411
    );
  wb_src_0_111 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X91Y39"
    )
    port map (
      ADR0 => instruction_1_IBUF_399,
      ADR1 => instruction_0_IBUF_397,
      ADR2 => instruction_3_IBUF_403,
      ADR3 => instruction_2_IBUF_401,
      O => wb_src_0_11
    );
  reg_write_enable95_F : X_LUT4
    generic map(
      INIT => X"0204",
      LOC => "SLICE_X91Y42"
    )
    port map (
      ADR0 => instruction_8_IBUF_409,
      ADR1 => instruction_10_IBUF_386,
      ADR2 => instruction_12_IBUF_389,
      ADR3 => instruction_9_IBUF_411,
      O => N83
    );
  reg_write_enable95_G : X_LUT4
    generic map(
      INIT => X"00A8",
      LOC => "SLICE_X91Y42"
    )
    port map (
      ADR0 => instruction_13_IBUF_390,
      ADR1 => N69,
      ADR2 => N14,
      ADR3 => instruction_12_IBUF_389,
      O => N84
    );
  mem_write1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X91Y24"
    )
    port map (
      ADR0 => instruction_14_IBUF_391,
      ADR1 => instruction_13_IBUF_390,
      ADR2 => instruction_12_IBUF_389,
      ADR3 => instruction_15_IBUF_392,
      O => mem_write
    );
  operand1_src107_F : X_LUT4
    generic map(
      INIT => X"FF76",
      LOC => "SLICE_X91Y35"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_12_IBUF_389,
      ADR2 => instruction_11_IBUF_388,
      ADR3 => instruction_13_IBUF_390,
      O => N87
    );
  operand1_src107_G : X_LUT4
    generic map(
      INIT => X"FC66",
      LOC => "SLICE_X91Y35"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_12_IBUF_389,
      ADR2 => operand1_src67_0,
      ADR3 => instruction_13_IBUF_390,
      O => N88
    );
  operand1_src67_SW0 : X_LUT4
    generic map(
      INIT => X"FEF5",
      LOC => "SLICE_X90Y37"
    )
    port map (
      ADR0 => instruction_2_IBUF_401,
      ADR1 => instruction_0_IBUF_397,
      ADR2 => instruction_4_IBUF_404,
      ADR3 => instruction_1_IBUF_399,
      O => N57_pack_1
    );
  operand1_src67 : X_LUT4
    generic map(
      INIT => X"F700",
      LOC => "SLICE_X90Y37"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_3_IBUF_403,
      ADR2 => N57,
      ADR3 => instruction_11_IBUF_388,
      O => operand1_src67_883
    );
  reg_write_enable31_SW0 : X_LUT4
    generic map(
      INIT => X"AAFF",
      LOC => "SLICE_X91Y43"
    )
    port map (
      ADR0 => instruction_11_IBUF_388,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => instruction_12_IBUF_389,
      O => N44_pack_1
    );
  reg_write_enable31 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X91Y43"
    )
    port map (
      ADR0 => instruction_13_IBUF_390,
      ADR1 => instruction_15_IBUF_392,
      ADR2 => instruction_14_IBUF_391,
      ADR3 => N44,
      O => N29
    );
  mem_write2 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X91Y27"
    )
    port map (
      ADR0 => N16_0,
      ADR1 => instruction_8_IBUF_409,
      ADR2 => instruction_9_IBUF_411,
      ADR3 => N48_0,
      O => N31_pack_1
    );
  mem_enable1 : X_LUT4
    generic map(
      INIT => X"FF20",
      LOC => "SLICE_X91Y27"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_13_IBUF_390,
      ADR2 => instruction_12_IBUF_389,
      ADR3 => N31,
      O => mem_enable_OBUF_931
    );
  reg_write_enable137 : X_LUT4
    generic map(
      INIT => X"EEEC",
      LOC => "SLICE_X90Y42"
    )
    port map (
      ADR0 => instruction_14_IBUF_391,
      ADR1 => reg_write_enable14,
      ADR2 => reg_write_enable95,
      ADR3 => reg_write_enable33_438,
      O => reg_write_enable_OBUF_1051
    );
  wb_src_1_1 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X91Y30"
    )
    port map (
      ADR0 => N12_0,
      ADR1 => instruction_0_IBUF_397,
      ADR2 => instruction_2_IBUF_401,
      ADR3 => instruction_3_IBUF_403,
      O => wb_src_1_OBUF_971
    );
  op_code_3_1 : X_LUT4
    generic map(
      INIT => X"AA88",
      LOC => "SLICE_X91Y30"
    )
    port map (
      ADR0 => N29_0,
      ADR1 => instruction_0_IBUF_397,
      ADR2 => VCC,
      ADR3 => instruction_1_IBUF_399,
      O => op_code_3_OBUF_979
    );
  reg_write_enable3_SW0 : X_LUT4
    generic map(
      INIT => X"0C0F",
      LOC => "SLICE_X90Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => instruction_12_IBUF_389,
      ADR3 => instruction_11_IBUF_388,
      O => N46
    );
  wb_src_0_41 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X90Y38"
    )
    port map (
      ADR0 => instruction_11_IBUF_388,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => instruction_12_IBUF_389,
      ADR3 => instruction_13_IBUF_390,
      O => wb_src_0_41_1003
    );
  operand2_src_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"FF5F",
      LOC => "SLICE_X90Y41"
    )
    port map (
      ADR0 => instruction_12_IBUF_389,
      ADR1 => VCC,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => instruction_13_IBUF_390,
      O => N41_pack_2
    );
  operand2_src_or0000_SW2 : X_LUT4
    generic map(
      INIT => X"0347",
      LOC => "SLICE_X90Y41"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => N41,
      ADR3 => instruction_11_IBUF_388,
      O => N73
    );
  reg_write_enable51 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X90Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_12_IBUF_389,
      ADR2 => VCC,
      ADR3 => instruction_14_IBUF_391,
      O => N16
    );
  mem_read_or00001 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X90Y24"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_12_IBUF_389,
      ADR2 => instruction_13_IBUF_390,
      ADR3 => instruction_14_IBUF_391,
      O => out_mem_read_OBUF_1075
    );
  reg_write_enable3 : X_LUT4
    generic map(
      INIT => X"CCCE",
      LOC => "SLICE_X90Y40"
    )
    port map (
      ADR0 => N46_0,
      ADR1 => N29_0,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => instruction_13_IBUF_390,
      O => N111_pack_1
    );
  operand2_src_or0000 : X_LUT4
    generic map(
      INIT => X"FF4E",
      LOC => "SLICE_X90Y40"
    )
    port map (
      ADR0 => instruction_12_IBUF_389,
      ADR1 => N73_0,
      ADR2 => N41,
      ADR3 => N111,
      O => operand2_src_1_OBUF_1099
    );
  op_code_0_66_SW0 : X_LUT4
    generic map(
      INIT => X"F3F1",
      LOC => "SLICE_X91Y26"
    )
    port map (
      ADR0 => instruction_0_IBUF_397,
      ADR1 => instruction_11_IBUF_388,
      ADR2 => op_code_0_36_0,
      ADR3 => instruction_1_IBUF_399,
      O => N75_pack_1
    );
  op_code_0_66 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X91Y26"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_13_IBUF_390,
      ADR2 => N75,
      ADR3 => N16_0,
      O => op_code_0_OBUF_1123
    );
  is_branch_SW0 : X_LUT4
    generic map(
      INIT => X"F0E0",
      LOC => "SLICE_X90Y51"
    )
    port map (
      ADR0 => instruction_10_IBUF_386,
      ADR1 => instruction_9_IBUF_411,
      ADR2 => instruction_14_IBUF_391,
      ADR3 => instruction_11_IBUF_388,
      O => N37_pack_1
    );
  is_branch_528 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X90Y51"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_13_IBUF_390,
      ADR2 => N37,
      ADR3 => instruction_12_IBUF_389,
      O => is_branch_OBUF_1147
    );
  is_jump17_SW0 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X91Y41"
    )
    port map (
      ADR0 => instruction_7_IBUF_408,
      ADR1 => instruction_6_IBUF_407,
      ADR2 => VCC,
      ADR3 => instruction_5_IBUF_405,
      O => N69_pack_1
    );
  is_jump17 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X91Y41"
    )
    port map (
      ADR0 => instruction_0_IBUF_397,
      ADR1 => instruction_2_IBUF_401,
      ADR2 => instruction_3_IBUF_403,
      ADR3 => N69,
      O => is_jump17_1171
    );
  op_code_0_36_SW0 : X_LUT4
    generic map(
      INIT => X"BFDD",
      LOC => "SLICE_X90Y27"
    )
    port map (
      ADR0 => instruction_1_IBUF_399,
      ADR1 => instruction_2_IBUF_401,
      ADR2 => instruction_11_IBUF_388,
      ADR3 => instruction_0_IBUF_397,
      O => N65_pack_1
    );
  op_code_0_36 : X_LUT4
    generic map(
      INIT => X"0404",
      LOC => "SLICE_X90Y27"
    )
    port map (
      ADR0 => instruction_4_IBUF_404,
      ADR1 => instruction_3_IBUF_403,
      ADR2 => N65,
      ADR3 => VCC,
      O => op_code_0_36_1195
    );
  wb_src_0_43_SW0 : X_LUT4
    generic map(
      INIT => X"0021",
      LOC => "SLICE_X91Y38"
    )
    port map (
      ADR0 => instruction_1_IBUF_399,
      ADR1 => instruction_0_IBUF_397,
      ADR2 => instruction_3_IBUF_403,
      ADR3 => instruction_2_IBUF_401,
      O => N63_pack_1
    );
  wb_src_0_43 : X_LUT4
    generic map(
      INIT => X"7500",
      LOC => "SLICE_X91Y38"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_4_IBUF_404,
      ADR2 => N63,
      ADR3 => wb_src_0_41_0,
      O => wb_src_0_OBUF_1219
    );
  wb_src_2_24_SW0 : X_LUT4
    generic map(
      INIT => X"FEFF",
      LOC => "SLICE_X91Y45"
    )
    port map (
      ADR0 => instruction_12_IBUF_389,
      ADR1 => instruction_8_IBUF_409,
      ADR2 => instruction_9_IBUF_411,
      ADR3 => instruction_10_IBUF_386,
      O => N67
    );
  wb_src_2_46 : X_LUT4
    generic map(
      INIT => X"ADAD",
      LOC => "SLICE_X91Y45"
    )
    port map (
      ADR0 => instruction_11_IBUF_388,
      ADR1 => N14,
      ADR2 => instruction_12_IBUF_389,
      ADR3 => VCC,
      O => wb_src_2_46_1243
    );
  operand2_src_0_101_SW0 : X_LUT4
    generic map(
      INIT => X"7272",
      LOC => "SLICE_X90Y36"
    )
    port map (
      ADR0 => instruction_13_IBUF_390,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => VCC,
      O => N59
    );
  operand2_src_0_24 : X_LUT4
    generic map(
      INIT => X"0B00",
      LOC => "SLICE_X90Y36"
    )
    port map (
      ADR0 => instruction_13_IBUF_390,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => instruction_11_IBUF_388,
      O => operand2_src_0_24_1267
    );
  wb_src_2_15 : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "SLICE_X90Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => instruction_11_IBUF_388,
      O => wb_src_2_15_1284
    );
  mem_write2_SW0 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X90Y45"
    )
    port map (
      ADR0 => instruction_10_IBUF_386,
      ADR1 => instruction_13_IBUF_390,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => instruction_11_IBUF_388,
      O => N48
    );
  wb_src_2_24 : X_LUT4
    generic map(
      INIT => X"DF5F",
      LOC => "SLICE_X91Y44"
    )
    port map (
      ADR0 => instruction_14_IBUF_391,
      ADR1 => wb_src_2_15_0,
      ADR2 => instruction_13_IBUF_390,
      ADR3 => N67_0,
      O => wb_src_2_24_pack_1
    );
  wb_src_2_56 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X91Y44"
    )
    port map (
      ADR0 => wb_src_2_46_0,
      ADR1 => instruction_15_IBUF_392,
      ADR2 => wb_src_2_24_450,
      ADR3 => VCC,
      O => wb_src_2_OBUF_1315
    );
  is_jump112 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X91Y32"
    )
    port map (
      ADR0 => instruction_15_IBUF_392,
      ADR1 => instruction_12_IBUF_389,
      ADR2 => instruction_14_IBUF_391,
      ADR3 => instruction_13_IBUF_390,
      O => N32_pack_1
    );
  is_jump11 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X91Y32"
    )
    port map (
      ADR0 => instruction_11_IBUF_388,
      ADR1 => instruction_4_IBUF_404,
      ADR2 => N32,
      ADR3 => instruction_1_IBUF_399,
      O => N12
    );
  branch_type_SW0 : X_LUT4
    generic map(
      INIT => X"EFEF",
      LOC => "SLICE_X90Y26"
    )
    port map (
      ADR0 => instruction_11_IBUF_388,
      ADR1 => instruction_12_IBUF_389,
      ADR2 => instruction_13_IBUF_390,
      ADR3 => VCC,
      O => N35_pack_1
    );
  branch_type_600 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X90Y26"
    )
    port map (
      ADR0 => instruction_8_IBUF_409,
      ADR1 => instruction_14_IBUF_391,
      ADR2 => instruction_15_IBUF_392,
      ADR3 => N35,
      O => branch_type_OBUF_1363
    );
  operand2_src_0_50 : X_LUT4
    generic map(
      INIT => X"BFFF",
      LOC => "SLICE_X91Y37"
    )
    port map (
      ADR0 => instruction_1_IBUF_399,
      ADR1 => instruction_11_IBUF_388,
      ADR2 => instruction_14_IBUF_391,
      ADR3 => instruction_2_IBUF_401,
      O => operand2_src_0_50_pack_1
    );
  operand2_src_0_61_SW0 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X91Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => instruction_4_IBUF_404,
      ADR2 => instruction_3_IBUF_403,
      ADR3 => operand2_src_0_50_452,
      O => N77
    );
  operand2_src_0_61 : X_LUT4
    generic map(
      INIT => X"C800",
      LOC => "SLICE_X91Y36"
    )
    port map (
      ADR0 => N77_0,
      ADR1 => instruction_15_IBUF_392,
      ADR2 => instruction_0_IBUF_397,
      ADR3 => instruction_13_IBUF_390,
      O => operand2_src_0_61_pack_1
    );
  operand2_src_0_101 : X_LUT4
    generic map(
      INIT => X"FFF6",
      LOC => "SLICE_X91Y36"
    )
    port map (
      ADR0 => N59_0,
      ADR1 => instruction_12_IBUF_389,
      ADR2 => operand2_src_0_61_454,
      ADR3 => operand2_src_0_24_0,
      O => operand2_src_0_OBUF_1411
    );
  mem_enable_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_enable_OBUF_931,
      O => mem_enable_O
    );
  is_branch_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_branch_OBUF_1147,
      O => is_branch_O
    );
  wb_src_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_src_0_OBUF_1219,
      O => wb_src_0_O
    );
  wb_src_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_src_1_OBUF_971,
      O => wb_src_1_O
    );
  is_jump_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_jump_OBUF_F5MUX_860,
      O => is_jump_O
    );
  wb_src_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_src_2_OBUF_1315,
      O => wb_src_2_O
    );
  operand2_src_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 798 ps
    )
    port map (
      I => operand2_src_0_OBUF_1411,
      O => operand2_src_0_O
    );
  operand2_src_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 798 ps
    )
    port map (
      I => operand2_src_1_OBUF_1099,
      O => operand2_src_1_O
    );
  out_mem_write_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 798 ps
    )
    port map (
      I => out_mem_write_OBUF_F5MUX_785,
      O => out_mem_write_O
    );
  out_mem_read_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 798 ps
    )
    port map (
      I => out_mem_read_OBUF_1075,
      O => out_mem_read_O
    );
  op_code_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 798 ps
    )
    port map (
      I => op_code_1_OBUF_F5MUX_835,
      O => op_code_1_O
    );
  operand1_src_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 798 ps
    )
    port map (
      I => operand1_src_OBUF_F5MUX_810,
      O => operand1_src_O
    );
  op_code_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 798 ps
    )
    port map (
      I => op_code_0_OBUF_1123,
      O => op_code_0_O
    );
  branch_type_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 798 ps
    )
    port map (
      I => branch_type_OBUF_1363,
      O => branch_type_O
    );
  op_code_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 798 ps
    )
    port map (
      I => op_code_3_OBUF_979,
      O => op_code_3_O
    );
  op_code_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 798 ps
    )
    port map (
      I => op_code_2_OBUF_955,
      O => op_code_2_O
    );
  reg_write_enable_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 798 ps
    )
    port map (
      I => reg_write_enable_OBUF_1051,
      O => reg_write_enable_O
    );
  N14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X91Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N14_F
    );
  out_mem_write_OBUF_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X91Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => out_mem_write_OBUF_F
    );
  NlwBlock_controller_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

