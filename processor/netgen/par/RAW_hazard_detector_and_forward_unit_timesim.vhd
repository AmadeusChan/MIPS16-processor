--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: RAW_hazard_detector_and_forward_unit_timesim.vhd
-- /___/   /\     Timestamp: Sat Nov 25 14:03:23 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf RAW_hazard_detector_and_forward_unit.pcf -rpw 100 -tpw 0 -ar Structure -tm RAW_hazard_detector_and_forward_unit -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim RAW_hazard_detector_and_forward_unit.ncd RAW_hazard_detector_and_forward_unit_timesim.vhd 
-- Device	: 3s1200efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: RAW_hazard_detector_and_forward_unit.ncd
-- Output file	: \\vmware-host\shared folders\amadeus\academic_materials\Semester_Fall2017\Computer_Orgnization\projects\MIPS16-processor\processor\netgen\par\RAW_hazard_detector_and_forward_unit_timesim.vhd
-- # of Entities	: 1
-- Design Name	: RAW_hazard_detector_and_forward_unit
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

entity RAW_hazard_detector_and_forward_unit is
  port (
    is_hazard_1 : out STD_LOGIC; 
    is_hazard_2 : out STD_LOGIC; 
    alu_reg_write_enable : in STD_LOGIC := 'X'; 
    mem_reg_write_enable : in STD_LOGIC := 'X'; 
    wb_reg_write_enable : in STD_LOGIC := 'X'; 
    forward_data_1 : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    forward_data_2 : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    alu_write_back_data : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    wb_write_back_data : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    alu_write_back_reg : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    mem_write_back_reg : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    read_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    read_reg_2 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    mem_write_back_data : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    wb_write_back_reg : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end RAW_hazard_detector_and_forward_unit;

architecture Structure of RAW_hazard_detector_and_forward_unit is
  signal is_hazard_1_from_mem : STD_LOGIC; 
  signal is_hazard_1_from_alu_0 : STD_LOGIC; 
  signal mem_write_back_data_15_IBUF_761 : STD_LOGIC; 
  signal alu_write_back_data_15_IBUF_762 : STD_LOGIC; 
  signal is_hazard_1_from_wb_0 : STD_LOGIC; 
  signal wb_write_back_data_15_IBUF_764 : STD_LOGIC; 
  signal is_hazard_2_from_mem : STD_LOGIC; 
  signal is_hazard_2_from_alu_0 : STD_LOGIC; 
  signal mem_write_back_data_7_IBUF_768 : STD_LOGIC; 
  signal alu_write_back_data_7_IBUF_769 : STD_LOGIC; 
  signal is_hazard_2_from_wb_0 : STD_LOGIC; 
  signal wb_write_back_data_7_IBUF_771 : STD_LOGIC; 
  signal mem_write_back_data_14_IBUF_773 : STD_LOGIC; 
  signal alu_write_back_data_14_IBUF_774 : STD_LOGIC; 
  signal wb_write_back_data_14_IBUF_775 : STD_LOGIC; 
  signal mem_write_back_data_1_IBUF_777 : STD_LOGIC; 
  signal alu_write_back_data_1_IBUF_778 : STD_LOGIC; 
  signal wb_write_back_data_1_IBUF_779 : STD_LOGIC; 
  signal mem_write_back_data_5_IBUF_781 : STD_LOGIC; 
  signal alu_write_back_data_5_IBUF_782 : STD_LOGIC; 
  signal wb_write_back_data_5_IBUF_783 : STD_LOGIC; 
  signal wb_reg_write_enable_IBUF_785 : STD_LOGIC; 
  signal wb_write_back_reg_2_IBUF_786 : STD_LOGIC; 
  signal read_reg_2_2_IBUF_787 : STD_LOGIC; 
  signal read_reg_1_2_IBUF_788 : STD_LOGIC; 
  signal is_hazard_2_from_wb_and000049_0 : STD_LOGIC; 
  signal is_hazard_1_from_wb_and000049_0 : STD_LOGIC; 
  signal is_hazard_2_from_mem_and000049_0 : STD_LOGIC; 
  signal mem_write_back_reg_1_IBUF_792 : STD_LOGIC; 
  signal read_reg_2_1_IBUF_793 : STD_LOGIC; 
  signal N127_0 : STD_LOGIC; 
  signal is_hazard_1_from_mem_and000049_0 : STD_LOGIC; 
  signal read_reg_1_1_IBUF_797 : STD_LOGIC; 
  signal N129_0 : STD_LOGIC; 
  signal mem_reg_write_enable_IBUF_800 : STD_LOGIC; 
  signal mem_write_back_reg_2_IBUF_801 : STD_LOGIC; 
  signal is_hazard_2_from_alu_and000049_0 : STD_LOGIC; 
  signal alu_write_back_reg_1_IBUF_803 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal alu_write_back_reg_3_IBUF_805 : STD_LOGIC; 
  signal read_reg_2_3_IBUF_806 : STD_LOGIC; 
  signal alu_write_back_reg_0_IBUF_807 : STD_LOGIC; 
  signal read_reg_2_0_IBUF_808 : STD_LOGIC; 
  signal mem_write_back_reg_3_IBUF_809 : STD_LOGIC; 
  signal mem_write_back_reg_0_IBUF_810 : STD_LOGIC; 
  signal read_reg_1_3_IBUF_811 : STD_LOGIC; 
  signal read_reg_1_0_IBUF_812 : STD_LOGIC; 
  signal alu_reg_write_enable_IBUF_813 : STD_LOGIC; 
  signal alu_write_back_reg_2_IBUF_814 : STD_LOGIC; 
  signal is_hazard_1_from_alu_and000049_0 : STD_LOGIC; 
  signal wb_write_back_reg_1_IBUF_816 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal wb_write_back_reg_3_IBUF_818 : STD_LOGIC; 
  signal wb_write_back_reg_0_IBUF_819 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal alu_write_back_data_0_IBUF_827 : STD_LOGIC; 
  signal alu_write_back_data_2_IBUF_830 : STD_LOGIC; 
  signal mem_write_back_data_10_IBUF_831 : STD_LOGIC; 
  signal alu_write_back_data_3_IBUF_833 : STD_LOGIC; 
  signal mem_write_back_data_11_IBUF_834 : STD_LOGIC; 
  signal alu_write_back_data_4_IBUF_836 : STD_LOGIC; 
  signal mem_write_back_data_12_IBUF_837 : STD_LOGIC; 
  signal mem_write_back_data_13_IBUF_838 : STD_LOGIC; 
  signal alu_write_back_data_6_IBUF_840 : STD_LOGIC; 
  signal alu_write_back_data_8_IBUF_843 : STD_LOGIC; 
  signal alu_write_back_data_9_IBUF_845 : STD_LOGIC; 
  signal mem_write_back_data_0_IBUF_849 : STD_LOGIC; 
  signal mem_write_back_data_2_IBUF_852 : STD_LOGIC; 
  signal mem_write_back_data_3_IBUF_855 : STD_LOGIC; 
  signal mem_write_back_data_4_IBUF_858 : STD_LOGIC; 
  signal mem_write_back_data_6_IBUF_862 : STD_LOGIC; 
  signal mem_write_back_data_8_IBUF_864 : STD_LOGIC; 
  signal mem_write_back_data_9_IBUF_866 : STD_LOGIC; 
  signal wb_write_back_data_0_IBUF_867 : STD_LOGIC; 
  signal wb_write_back_data_2_IBUF_868 : STD_LOGIC; 
  signal wb_write_back_data_10_IBUF_869 : STD_LOGIC; 
  signal wb_write_back_data_3_IBUF_870 : STD_LOGIC; 
  signal wb_write_back_data_11_IBUF_871 : STD_LOGIC; 
  signal wb_write_back_data_4_IBUF_872 : STD_LOGIC; 
  signal wb_write_back_data_12_IBUF_873 : STD_LOGIC; 
  signal wb_write_back_data_13_IBUF_874 : STD_LOGIC; 
  signal wb_write_back_data_6_IBUF_875 : STD_LOGIC; 
  signal wb_write_back_data_8_IBUF_876 : STD_LOGIC; 
  signal alu_write_back_data_10_IBUF_877 : STD_LOGIC; 
  signal wb_write_back_data_9_IBUF_878 : STD_LOGIC; 
  signal alu_write_back_data_11_IBUF_879 : STD_LOGIC; 
  signal alu_write_back_data_12_IBUF_880 : STD_LOGIC; 
  signal alu_write_back_data_13_IBUF_881 : STD_LOGIC; 
  signal forward_data_1_15_OBUF_F5MUX_905 : STD_LOGIC; 
  signal forward_data_1_15_1_903 : STD_LOGIC; 
  signal forward_data_1_15_OBUF_BXINV_897 : STD_LOGIC; 
  signal forward_data_1_15_2_895 : STD_LOGIC; 
  signal forward_data_2_7_OBUF_F5MUX_930 : STD_LOGIC; 
  signal forward_data_2_7_1_928 : STD_LOGIC; 
  signal forward_data_2_7_OBUF_BXINV_922 : STD_LOGIC; 
  signal forward_data_2_7_2_920 : STD_LOGIC; 
  signal forward_data_2_14_OBUF_F5MUX_955 : STD_LOGIC; 
  signal forward_data_2_14_1_953 : STD_LOGIC; 
  signal forward_data_2_14_OBUF_BXINV_947 : STD_LOGIC; 
  signal forward_data_2_14_2_945 : STD_LOGIC; 
  signal forward_data_2_1_OBUF_F5MUX_980 : STD_LOGIC; 
  signal forward_data_2_1_1_978 : STD_LOGIC; 
  signal forward_data_2_1_OBUF_BXINV_972 : STD_LOGIC; 
  signal forward_data_2_1_2_970 : STD_LOGIC; 
  signal forward_data_1_5_OBUF_F5MUX_1005 : STD_LOGIC; 
  signal forward_data_1_5_1_1003 : STD_LOGIC; 
  signal forward_data_1_5_OBUF_BXINV_997 : STD_LOGIC; 
  signal forward_data_1_5_2_995 : STD_LOGIC; 
  signal is_hazard_2_from_wb_and000049_1028 : STD_LOGIC; 
  signal is_hazard_1_from_wb_and000049_1020 : STD_LOGIC; 
  signal is_hazard_2_OBUF_1052 : STD_LOGIC; 
  signal is_hazard_2_from_mem_pack_1 : STD_LOGIC; 
  signal is_hazard_1_OBUF_1076 : STD_LOGIC; 
  signal is_hazard_1_from_mem_pack_1 : STD_LOGIC; 
  signal is_hazard_1_from_mem_and000049_1100 : STD_LOGIC; 
  signal is_hazard_2_from_mem_and000049_1092 : STD_LOGIC; 
  signal is_hazard_2_from_alu : STD_LOGIC; 
  signal N123_pack_1 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal is_hazard_1_from_alu_and000049_1172 : STD_LOGIC; 
  signal is_hazard_2_from_alu_and000049_1164 : STD_LOGIC; 
  signal is_hazard_2_from_wb : STD_LOGIC; 
  signal N119_pack_1 : STD_LOGIC; 
  signal is_hazard_1_from_alu : STD_LOGIC; 
  signal N125_pack_1 : STD_LOGIC; 
  signal is_hazard_1_from_wb : STD_LOGIC; 
  signal N121_pack_1 : STD_LOGIC; 
  signal wb_write_back_reg_0_INBUF : STD_LOGIC; 
  signal wb_write_back_reg_1_INBUF : STD_LOGIC; 
  signal wb_write_back_reg_2_INBUF : STD_LOGIC; 
  signal wb_write_back_reg_3_INBUF : STD_LOGIC; 
  signal forward_data_1_10_O : STD_LOGIC; 
  signal forward_data_1_11_O : STD_LOGIC; 
  signal forward_data_1_12_O : STD_LOGIC; 
  signal alu_reg_write_enable_INBUF : STD_LOGIC; 
  signal forward_data_1_13_O : STD_LOGIC; 
  signal forward_data_1_14_O : STD_LOGIC; 
  signal forward_data_1_15_O : STD_LOGIC; 
  signal alu_write_back_data_0_INBUF : STD_LOGIC; 
  signal wb_reg_write_enable_INBUF : STD_LOGIC; 
  signal forward_data_2_10_O : STD_LOGIC; 
  signal alu_write_back_data_1_INBUF : STD_LOGIC; 
  signal forward_data_2_11_O : STD_LOGIC; 
  signal alu_write_back_data_2_INBUF : STD_LOGIC; 
  signal mem_write_back_data_10_INBUF : STD_LOGIC; 
  signal forward_data_2_12_O : STD_LOGIC; 
  signal alu_write_back_data_3_INBUF : STD_LOGIC; 
  signal mem_write_back_data_11_INBUF : STD_LOGIC; 
  signal forward_data_2_13_O : STD_LOGIC; 
  signal alu_write_back_data_4_INBUF : STD_LOGIC; 
  signal mem_write_back_data_12_INBUF : STD_LOGIC; 
  signal forward_data_2_14_O : STD_LOGIC; 
  signal alu_write_back_data_5_INBUF : STD_LOGIC; 
  signal mem_write_back_data_13_INBUF : STD_LOGIC; 
  signal forward_data_2_15_O : STD_LOGIC; 
  signal alu_write_back_data_6_INBUF : STD_LOGIC; 
  signal read_reg_1_0_INBUF : STD_LOGIC; 
  signal forward_data_1_0_O : STD_LOGIC; 
  signal mem_write_back_data_14_INBUF : STD_LOGIC; 
  signal alu_write_back_data_7_INBUF : STD_LOGIC; 
  signal read_reg_1_1_INBUF : STD_LOGIC; 
  signal forward_data_1_1_O : STD_LOGIC; 
  signal mem_write_back_data_15_INBUF : STD_LOGIC; 
  signal alu_write_back_data_8_INBUF : STD_LOGIC; 
  signal read_reg_1_2_INBUF : STD_LOGIC; 
  signal mem_write_back_reg_0_INBUF : STD_LOGIC; 
  signal forward_data_1_2_O : STD_LOGIC; 
  signal alu_write_back_data_9_INBUF : STD_LOGIC; 
  signal read_reg_1_3_INBUF : STD_LOGIC; 
  signal mem_write_back_reg_1_INBUF : STD_LOGIC; 
  signal forward_data_1_3_O : STD_LOGIC; 
  signal read_reg_2_0_INBUF : STD_LOGIC; 
  signal mem_write_back_reg_2_INBUF : STD_LOGIC; 
  signal forward_data_2_0_O : STD_LOGIC; 
  signal forward_data_1_4_O : STD_LOGIC; 
  signal mem_reg_write_enable_INBUF : STD_LOGIC; 
  signal read_reg_2_1_INBUF : STD_LOGIC; 
  signal mem_write_back_reg_3_INBUF : STD_LOGIC; 
  signal mem_write_back_data_0_INBUF : STD_LOGIC; 
  signal forward_data_2_1_O : STD_LOGIC; 
  signal forward_data_1_5_O : STD_LOGIC; 
  signal read_reg_2_2_INBUF : STD_LOGIC; 
  signal mem_write_back_data_1_INBUF : STD_LOGIC; 
  signal forward_data_2_2_O : STD_LOGIC; 
  signal forward_data_1_6_O : STD_LOGIC; 
  signal read_reg_2_3_INBUF : STD_LOGIC; 
  signal mem_write_back_data_2_INBUF : STD_LOGIC; 
  signal forward_data_2_3_O : STD_LOGIC; 
  signal forward_data_1_7_O : STD_LOGIC; 
  signal mem_write_back_data_3_INBUF : STD_LOGIC; 
  signal forward_data_2_4_O : STD_LOGIC; 
  signal forward_data_1_8_O : STD_LOGIC; 
  signal mem_write_back_data_4_INBUF : STD_LOGIC; 
  signal forward_data_2_5_O : STD_LOGIC; 
  signal forward_data_1_9_O : STD_LOGIC; 
  signal mem_write_back_data_5_INBUF : STD_LOGIC; 
  signal forward_data_2_6_O : STD_LOGIC; 
  signal mem_write_back_data_6_INBUF : STD_LOGIC; 
  signal forward_data_2_7_O : STD_LOGIC; 
  signal mem_write_back_data_7_INBUF : STD_LOGIC; 
  signal forward_data_2_8_O : STD_LOGIC; 
  signal mem_write_back_data_8_INBUF : STD_LOGIC; 
  signal forward_data_2_9_O : STD_LOGIC; 
  signal mem_write_back_data_9_INBUF : STD_LOGIC; 
  signal wb_write_back_data_0_INBUF : STD_LOGIC; 
  signal wb_write_back_data_1_INBUF : STD_LOGIC; 
  signal wb_write_back_data_2_INBUF : STD_LOGIC; 
  signal wb_write_back_data_10_INBUF : STD_LOGIC; 
  signal wb_write_back_data_3_INBUF : STD_LOGIC; 
  signal wb_write_back_data_11_INBUF : STD_LOGIC; 
  signal wb_write_back_data_4_INBUF : STD_LOGIC; 
  signal wb_write_back_data_12_INBUF : STD_LOGIC; 
  signal wb_write_back_data_5_INBUF : STD_LOGIC; 
  signal wb_write_back_data_13_INBUF : STD_LOGIC; 
  signal wb_write_back_data_6_INBUF : STD_LOGIC; 
  signal wb_write_back_data_14_INBUF : STD_LOGIC; 
  signal alu_write_back_reg_0_INBUF : STD_LOGIC; 
  signal wb_write_back_data_7_INBUF : STD_LOGIC; 
  signal wb_write_back_data_15_INBUF : STD_LOGIC; 
  signal alu_write_back_reg_1_INBUF : STD_LOGIC; 
  signal wb_write_back_data_8_INBUF : STD_LOGIC; 
  signal alu_write_back_reg_2_INBUF : STD_LOGIC; 
  signal alu_write_back_data_10_INBUF : STD_LOGIC; 
  signal wb_write_back_data_9_INBUF : STD_LOGIC; 
  signal alu_write_back_reg_3_INBUF : STD_LOGIC; 
  signal alu_write_back_data_11_INBUF : STD_LOGIC; 
  signal alu_write_back_data_12_INBUF : STD_LOGIC; 
  signal alu_write_back_data_13_INBUF : STD_LOGIC; 
  signal alu_write_back_data_14_INBUF : STD_LOGIC; 
  signal alu_write_back_data_15_INBUF : STD_LOGIC; 
  signal is_hazard_1_O : STD_LOGIC; 
  signal is_hazard_2_O : STD_LOGIC; 
  signal forward_data_1_10_OBUF_F5MUX_1968 : STD_LOGIC; 
  signal forward_data_1_10_1_1966 : STD_LOGIC; 
  signal forward_data_1_10_OBUF_BXINV_1960 : STD_LOGIC; 
  signal forward_data_1_10_2_1958 : STD_LOGIC; 
  signal forward_data_2_8_OBUF_F5MUX_1993 : STD_LOGIC; 
  signal forward_data_2_8_1_1991 : STD_LOGIC; 
  signal forward_data_2_8_OBUF_BXINV_1985 : STD_LOGIC; 
  signal forward_data_2_8_2_1983 : STD_LOGIC; 
  signal forward_data_2_15_OBUF_F5MUX_2018 : STD_LOGIC; 
  signal forward_data_2_15_1_2016 : STD_LOGIC; 
  signal forward_data_2_15_OBUF_BXINV_2010 : STD_LOGIC; 
  signal forward_data_2_15_2_2008 : STD_LOGIC; 
  signal forward_data_2_2_OBUF_F5MUX_2043 : STD_LOGIC; 
  signal forward_data_2_2_1_2041 : STD_LOGIC; 
  signal forward_data_2_2_OBUF_BXINV_2035 : STD_LOGIC; 
  signal forward_data_2_2_2_2033 : STD_LOGIC; 
  signal forward_data_1_6_OBUF_F5MUX_2068 : STD_LOGIC; 
  signal forward_data_1_6_1_2066 : STD_LOGIC; 
  signal forward_data_1_6_OBUF_BXINV_2060 : STD_LOGIC; 
  signal forward_data_1_6_2_2058 : STD_LOGIC; 
  signal forward_data_1_0_OBUF_F5MUX_2093 : STD_LOGIC; 
  signal forward_data_1_0_1_2091 : STD_LOGIC; 
  signal forward_data_1_0_OBUF_BXINV_2085 : STD_LOGIC; 
  signal forward_data_1_0_2_2083 : STD_LOGIC; 
  signal forward_data_1_11_OBUF_F5MUX_2118 : STD_LOGIC; 
  signal forward_data_1_11_1_2116 : STD_LOGIC; 
  signal forward_data_1_11_OBUF_BXINV_2110 : STD_LOGIC; 
  signal forward_data_1_11_2_2108 : STD_LOGIC; 
  signal forward_data_2_9_OBUF_F5MUX_2143 : STD_LOGIC; 
  signal forward_data_2_9_1_2141 : STD_LOGIC; 
  signal forward_data_2_9_OBUF_BXINV_2135 : STD_LOGIC; 
  signal forward_data_2_9_2_2133 : STD_LOGIC; 
  signal forward_data_2_3_OBUF_F5MUX_2168 : STD_LOGIC; 
  signal forward_data_2_3_1_2166 : STD_LOGIC; 
  signal forward_data_2_3_OBUF_BXINV_2160 : STD_LOGIC; 
  signal forward_data_2_3_2_2158 : STD_LOGIC; 
  signal forward_data_1_7_OBUF_F5MUX_2193 : STD_LOGIC; 
  signal forward_data_1_7_1_2191 : STD_LOGIC; 
  signal forward_data_1_7_OBUF_BXINV_2185 : STD_LOGIC; 
  signal forward_data_1_7_2_2183 : STD_LOGIC; 
  signal forward_data_2_10_OBUF_F5MUX_2218 : STD_LOGIC; 
  signal forward_data_2_10_1_2216 : STD_LOGIC; 
  signal forward_data_2_10_OBUF_BXINV_2210 : STD_LOGIC; 
  signal forward_data_2_10_2_2208 : STD_LOGIC; 
  signal forward_data_1_1_OBUF_F5MUX_2243 : STD_LOGIC; 
  signal forward_data_1_1_1_2241 : STD_LOGIC; 
  signal forward_data_1_1_OBUF_BXINV_2235 : STD_LOGIC; 
  signal forward_data_1_1_2_2233 : STD_LOGIC; 
  signal forward_data_1_12_OBUF_F5MUX_2268 : STD_LOGIC; 
  signal forward_data_1_12_1_2266 : STD_LOGIC; 
  signal forward_data_1_12_OBUF_BXINV_2260 : STD_LOGIC; 
  signal forward_data_1_12_2_2258 : STD_LOGIC; 
  signal forward_data_2_4_OBUF_F5MUX_2293 : STD_LOGIC; 
  signal forward_data_2_4_1_2291 : STD_LOGIC; 
  signal forward_data_2_4_OBUF_BXINV_2285 : STD_LOGIC; 
  signal forward_data_2_4_2_2283 : STD_LOGIC; 
  signal forward_data_1_8_OBUF_F5MUX_2318 : STD_LOGIC; 
  signal forward_data_1_8_1_2316 : STD_LOGIC; 
  signal forward_data_1_8_OBUF_BXINV_2310 : STD_LOGIC; 
  signal forward_data_1_8_2_2308 : STD_LOGIC; 
  signal forward_data_2_11_OBUF_F5MUX_2343 : STD_LOGIC; 
  signal forward_data_2_11_1_2341 : STD_LOGIC; 
  signal forward_data_2_11_OBUF_BXINV_2335 : STD_LOGIC; 
  signal forward_data_2_11_2_2333 : STD_LOGIC; 
  signal forward_data_1_2_OBUF_F5MUX_2368 : STD_LOGIC; 
  signal forward_data_1_2_1_2366 : STD_LOGIC; 
  signal forward_data_1_2_OBUF_BXINV_2360 : STD_LOGIC; 
  signal forward_data_1_2_2_2358 : STD_LOGIC; 
  signal forward_data_1_13_OBUF_F5MUX_2393 : STD_LOGIC; 
  signal forward_data_1_13_1_2391 : STD_LOGIC; 
  signal forward_data_1_13_OBUF_BXINV_2385 : STD_LOGIC; 
  signal forward_data_1_13_2_2383 : STD_LOGIC; 
  signal forward_data_2_5_OBUF_F5MUX_2418 : STD_LOGIC; 
  signal forward_data_2_5_1_2416 : STD_LOGIC; 
  signal forward_data_2_5_OBUF_BXINV_2410 : STD_LOGIC; 
  signal forward_data_2_5_2_2408 : STD_LOGIC; 
  signal forward_data_1_9_OBUF_F5MUX_2443 : STD_LOGIC; 
  signal forward_data_1_9_1_2441 : STD_LOGIC; 
  signal forward_data_1_9_OBUF_BXINV_2435 : STD_LOGIC; 
  signal forward_data_1_9_2_2433 : STD_LOGIC; 
  signal forward_data_2_12_OBUF_F5MUX_2468 : STD_LOGIC; 
  signal forward_data_2_12_1_2466 : STD_LOGIC; 
  signal forward_data_2_12_OBUF_BXINV_2460 : STD_LOGIC; 
  signal forward_data_2_12_2_2458 : STD_LOGIC; 
  signal forward_data_1_3_OBUF_F5MUX_2493 : STD_LOGIC; 
  signal forward_data_1_3_1_2491 : STD_LOGIC; 
  signal forward_data_1_3_OBUF_BXINV_2485 : STD_LOGIC; 
  signal forward_data_1_3_2_2483 : STD_LOGIC; 
  signal forward_data_1_14_OBUF_F5MUX_2518 : STD_LOGIC; 
  signal forward_data_1_14_1_2516 : STD_LOGIC; 
  signal forward_data_1_14_OBUF_BXINV_2510 : STD_LOGIC; 
  signal forward_data_1_14_2_2508 : STD_LOGIC; 
  signal forward_data_2_6_OBUF_F5MUX_2543 : STD_LOGIC; 
  signal forward_data_2_6_1_2541 : STD_LOGIC; 
  signal forward_data_2_6_OBUF_BXINV_2535 : STD_LOGIC; 
  signal forward_data_2_6_2_2533 : STD_LOGIC; 
  signal forward_data_2_13_OBUF_F5MUX_2568 : STD_LOGIC; 
  signal forward_data_2_13_1_2566 : STD_LOGIC; 
  signal forward_data_2_13_OBUF_BXINV_2560 : STD_LOGIC; 
  signal forward_data_2_13_2_2558 : STD_LOGIC; 
  signal forward_data_2_0_OBUF_F5MUX_2593 : STD_LOGIC; 
  signal forward_data_2_0_1_2591 : STD_LOGIC; 
  signal forward_data_2_0_OBUF_BXINV_2585 : STD_LOGIC; 
  signal forward_data_2_0_2_2583 : STD_LOGIC; 
  signal forward_data_1_4_OBUF_F5MUX_2618 : STD_LOGIC; 
  signal forward_data_1_4_1_2616 : STD_LOGIC; 
  signal forward_data_1_4_OBUF_BXINV_2610 : STD_LOGIC; 
  signal forward_data_1_4_2_2608 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  forward_data_1_15_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y98"
    )
    port map (
      IA => forward_data_1_15_2_895,
      IB => forward_data_1_15_1_903,
      SEL => forward_data_1_15_OBUF_BXINV_897,
      O => forward_data_1_15_OBUF_F5MUX_905
    );
  forward_data_1_15_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y98",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_15_OBUF_BXINV_897
    );
  forward_data_2_7_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y81"
    )
    port map (
      IA => forward_data_2_7_2_920,
      IB => forward_data_2_7_1_928,
      SEL => forward_data_2_7_OBUF_BXINV_922,
      O => forward_data_2_7_OBUF_F5MUX_930
    );
  forward_data_2_7_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y81",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_7_OBUF_BXINV_922
    );
  forward_data_2_14_1 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X79Y103"
    )
    port map (
      ADR0 => mem_write_back_data_14_IBUF_773,
      ADR1 => VCC,
      ADR2 => is_hazard_2_from_alu_0,
      ADR3 => alu_write_back_data_14_IBUF_774,
      O => forward_data_2_14_1_953
    );
  forward_data_2_14_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y103"
    )
    port map (
      IA => forward_data_2_14_2_945,
      IB => forward_data_2_14_1_953,
      SEL => forward_data_2_14_OBUF_BXINV_947,
      O => forward_data_2_14_OBUF_F5MUX_955
    );
  forward_data_2_14_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y103",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_14_OBUF_BXINV_947
    );
  forward_data_2_14_2 : X_LUT4
    generic map(
      INIT => X"EA40",
      LOC => "SLICE_X79Y103"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => wb_write_back_data_14_IBUF_775,
      ADR2 => is_hazard_2_from_wb_0,
      ADR3 => alu_write_back_data_14_IBUF_774,
      O => forward_data_2_14_2_945
    );
  forward_data_2_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y69"
    )
    port map (
      IA => forward_data_2_1_2_970,
      IB => forward_data_2_1_1_978,
      SEL => forward_data_2_1_OBUF_BXINV_972,
      O => forward_data_2_1_OBUF_F5MUX_980
    );
  forward_data_2_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y69",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_1_OBUF_BXINV_972
    );
  forward_data_1_5_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y74"
    )
    port map (
      IA => forward_data_1_5_2_995,
      IB => forward_data_1_5_1_1003,
      SEL => forward_data_1_5_OBUF_BXINV_997,
      O => forward_data_1_5_OBUF_F5MUX_1005
    );
  forward_data_1_5_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_5_OBUF_BXINV_997
    );
  is_hazard_2_from_wb_and000049_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y119",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_wb_and000049_1028,
      O => is_hazard_2_from_wb_and000049_0
    );
  is_hazard_2_from_wb_and000049_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y119",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_wb_and000049_1020,
      O => is_hazard_1_from_wb_and000049_0
    );
  is_hazard_2_or00001 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X61Y118"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => is_hazard_2_from_wb_0,
      ADR2 => is_hazard_2_from_mem,
      ADR3 => VCC,
      O => is_hazard_2_OBUF_1052
    );
  is_hazard_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y118",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem_pack_1,
      O => is_hazard_2_from_mem
    );
  is_hazard_2_from_mem_and000061 : X_LUT4
    generic map(
      INIT => X"8020",
      LOC => "SLICE_X61Y118"
    )
    port map (
      ADR0 => N127_0,
      ADR1 => read_reg_2_1_IBUF_793,
      ADR2 => is_hazard_2_from_mem_and000049_0,
      ADR3 => mem_write_back_reg_1_IBUF_792,
      O => is_hazard_2_from_mem_pack_1
    );
  is_hazard_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y119",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem_pack_1,
      O => is_hazard_1_from_mem
    );
  is_hazard_1_from_mem_and000049_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y118",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem_and000049_1100,
      O => is_hazard_1_from_mem_and000049_0
    );
  is_hazard_1_from_mem_and000049_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y118",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem_and000049_1092,
      O => is_hazard_2_from_mem_and000049_0
    );
  is_hazard_2_from_alu_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y116",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_alu,
      O => is_hazard_2_from_alu_0
    );
  is_hazard_2_from_alu_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y116",
      PATHPULSE => 798 ps
    )
    port map (
      I => N123_pack_1,
      O => N123
    );
  is_hazard_2_from_mem_and000061_SW0 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X57Y118"
    )
    port map (
      ADR0 => read_reg_2_3_IBUF_806,
      ADR1 => mem_write_back_reg_3_IBUF_809,
      ADR2 => read_reg_2_0_IBUF_808,
      ADR3 => mem_write_back_reg_0_IBUF_810,
      O => N127
    );
  N127_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y118",
      PATHPULSE => 798 ps
    )
    port map (
      I => N127,
      O => N127_0
    );
  N127_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y118",
      PATHPULSE => 798 ps
    )
    port map (
      I => N129,
      O => N129_0
    );
  is_hazard_1_from_mem_and000061_SW0 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X57Y118"
    )
    port map (
      ADR0 => read_reg_1_3_IBUF_811,
      ADR1 => mem_write_back_reg_3_IBUF_809,
      ADR2 => read_reg_1_0_IBUF_812,
      ADR3 => mem_write_back_reg_0_IBUF_810,
      O => N129
    );
  is_hazard_1_from_alu_and000049_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y116",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_alu_and000049_1172,
      O => is_hazard_1_from_alu_and000049_0
    );
  is_hazard_1_from_alu_and000049_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y116",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_alu_and000049_1164,
      O => is_hazard_2_from_alu_and000049_0
    );
  is_hazard_2_from_wb_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y118",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_wb,
      O => is_hazard_2_from_wb_0
    );
  is_hazard_2_from_wb_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y118",
      PATHPULSE => 798 ps
    )
    port map (
      I => N119_pack_1,
      O => N119
    );
  is_hazard_1_from_alu_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y117",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_alu,
      O => is_hazard_1_from_alu_0
    );
  is_hazard_1_from_alu_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y117",
      PATHPULSE => 798 ps
    )
    port map (
      I => N125_pack_1,
      O => N125
    );
  is_hazard_1_from_wb_and000061 : X_LUT4
    generic map(
      INIT => X"8400",
      LOC => "SLICE_X59Y119"
    )
    port map (
      ADR0 => read_reg_1_1_IBUF_797,
      ADR1 => is_hazard_1_from_wb_and000049_0,
      ADR2 => wb_write_back_reg_1_IBUF_816,
      ADR3 => N121,
      O => is_hazard_1_from_wb
    );
  is_hazard_1_from_wb_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y119",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_wb,
      O => is_hazard_1_from_wb_0
    );
  is_hazard_1_from_wb_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X59Y119",
      PATHPULSE => 798 ps
    )
    port map (
      I => N121_pack_1,
      O => N121
    );
  wb_write_back_reg_0_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_reg(0),
      O => wb_write_back_reg_0_INBUF
    );
  wb_write_back_reg_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_reg(1),
      O => wb_write_back_reg_1_INBUF
    );
  wb_write_back_reg_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD45",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_reg(2),
      O => wb_write_back_reg_2_INBUF
    );
  wb_write_back_reg_3_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_reg(3),
      O => wb_write_back_reg_3_INBUF
    );
  forward_data_1_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => forward_data_1_10_O,
      O => forward_data_1(10)
    );
  forward_data_1_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD76"
    )
    port map (
      I => forward_data_1_11_O,
      O => forward_data_1(11)
    );
  forward_data_1_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => forward_data_1_12_O,
      O => forward_data_1(12)
    );
  alu_reg_write_enable_IBUF : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_reg_write_enable,
      O => alu_reg_write_enable_INBUF
    );
  alu_reg_write_enable_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_reg_write_enable_INBUF,
      O => alu_reg_write_enable_IBUF_813
    );
  forward_data_1_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => forward_data_1_13_O,
      O => forward_data_1(13)
    );
  forward_data_1_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => forward_data_1_14_O,
      O => forward_data_1(14)
    );
  forward_data_1_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => forward_data_1_15_O,
      O => forward_data_1(15)
    );
  alu_write_back_data_0_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(0),
      O => alu_write_back_data_0_INBUF
    );
  wb_reg_write_enable_IBUF : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_reg_write_enable,
      O => wb_reg_write_enable_INBUF
    );
  forward_data_2_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => forward_data_2_10_O,
      O => forward_data_2(10)
    );
  alu_write_back_data_1_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(1),
      O => alu_write_back_data_1_INBUF
    );
  alu_write_back_data_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_1_INBUF,
      O => alu_write_back_data_1_IBUF_778
    );
  forward_data_2_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => forward_data_2_11_O,
      O => forward_data_2(11)
    );
  alu_write_back_data_2_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(2),
      O => alu_write_back_data_2_INBUF
    );
  mem_write_back_data_10_IBUF : X_BUF
    generic map(
      LOC => "IPAD91",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(10),
      O => mem_write_back_data_10_INBUF
    );
  forward_data_2_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => forward_data_2_12_O,
      O => forward_data_2(12)
    );
  alu_write_back_data_3_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(3),
      O => alu_write_back_data_3_INBUF
    );
  mem_write_back_data_11_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(11),
      O => mem_write_back_data_11_INBUF
    );
  forward_data_2_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD58"
    )
    port map (
      I => forward_data_2_13_O,
      O => forward_data_2(13)
    );
  alu_write_back_data_4_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(4),
      O => alu_write_back_data_4_INBUF
    );
  alu_write_back_data_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_4_INBUF,
      O => alu_write_back_data_4_IBUF_836
    );
  mem_write_back_data_12_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(12),
      O => mem_write_back_data_12_INBUF
    );
  forward_data_2_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => forward_data_2_14_O,
      O => forward_data_2(14)
    );
  alu_write_back_data_5_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(5),
      O => alu_write_back_data_5_INBUF
    );
  mem_write_back_data_13_IBUF : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(13),
      O => mem_write_back_data_13_INBUF
    );
  forward_data_2_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => forward_data_2_15_O,
      O => forward_data_2(15)
    );
  alu_write_back_data_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(6),
      O => alu_write_back_data_6_INBUF
    );
  read_reg_1_0_IBUF : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1(0),
      O => read_reg_1_0_INBUF
    );
  read_reg_1_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_0_INBUF,
      O => read_reg_1_0_IBUF_812
    );
  forward_data_1_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => forward_data_1_0_O,
      O => forward_data_1(0)
    );
  mem_write_back_data_14_IBUF : X_BUF
    generic map(
      LOC => "IPAD101",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(14),
      O => mem_write_back_data_14_INBUF
    );
  alu_write_back_data_7_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(7),
      O => alu_write_back_data_7_INBUF
    );
  read_reg_1_1_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1(1),
      O => read_reg_1_1_INBUF
    );
  forward_data_1_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => forward_data_1_1_O,
      O => forward_data_1(1)
    );
  mem_write_back_data_15_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(15),
      O => mem_write_back_data_15_INBUF
    );
  alu_write_back_data_8_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(8),
      O => alu_write_back_data_8_INBUF
    );
  read_reg_1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1(2),
      O => read_reg_1_2_INBUF
    );
  read_reg_1_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_2_INBUF,
      O => read_reg_1_2_IBUF_788
    );
  mem_write_back_reg_0_IBUF : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_reg(0),
      O => mem_write_back_reg_0_INBUF
    );
  mem_write_back_reg_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_reg_0_INBUF,
      O => mem_write_back_reg_0_IBUF_810
    );
  forward_data_1_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => forward_data_1_2_O,
      O => forward_data_1(2)
    );
  alu_write_back_data_9_IBUF : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(9),
      O => alu_write_back_data_9_INBUF
    );
  read_reg_1_3_IBUF : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1(3),
      O => read_reg_1_3_INBUF
    );
  mem_write_back_reg_1_IBUF : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_reg(1),
      O => mem_write_back_reg_1_INBUF
    );
  forward_data_1_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => forward_data_1_3_O,
      O => forward_data_1(3)
    );
  read_reg_2_0_IBUF : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2(0),
      O => read_reg_2_0_INBUF
    );
  mem_write_back_reg_2_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_reg(2),
      O => mem_write_back_reg_2_INBUF
    );
  mem_write_back_reg_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_reg_2_INBUF,
      O => mem_write_back_reg_2_IBUF_801
    );
  forward_data_2_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => forward_data_2_0_O,
      O => forward_data_2(0)
    );
  forward_data_1_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => forward_data_1_4_O,
      O => forward_data_1(4)
    );
  mem_reg_write_enable_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_reg_write_enable,
      O => mem_reg_write_enable_INBUF
    );
  read_reg_2_1_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2(1),
      O => read_reg_2_1_INBUF
    );
  mem_write_back_reg_3_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_reg(3),
      O => mem_write_back_reg_3_INBUF
    );
  mem_write_back_data_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(0),
      O => mem_write_back_data_0_INBUF
    );
  forward_data_2_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => forward_data_2_1_O,
      O => forward_data_2(1)
    );
  forward_data_1_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => forward_data_1_5_O,
      O => forward_data_1(5)
    );
  read_reg_2_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD39",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2(2),
      O => read_reg_2_2_INBUF
    );
  read_reg_2_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD39",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_2_INBUF,
      O => read_reg_2_2_IBUF_787
    );
  mem_write_back_data_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(1),
      O => mem_write_back_data_1_INBUF
    );
  mem_write_back_data_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_1_INBUF,
      O => mem_write_back_data_1_IBUF_777
    );
  forward_data_2_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => forward_data_2_2_O,
      O => forward_data_2(2)
    );
  forward_data_1_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => forward_data_1_6_O,
      O => forward_data_1(6)
    );
  read_reg_2_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD38",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2(3),
      O => read_reg_2_3_INBUF
    );
  mem_write_back_data_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(2),
      O => mem_write_back_data_2_INBUF
    );
  forward_data_2_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => forward_data_2_3_O,
      O => forward_data_2(3)
    );
  forward_data_1_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => forward_data_1_7_O,
      O => forward_data_1(7)
    );
  mem_write_back_data_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(3),
      O => mem_write_back_data_3_INBUF
    );
  mem_write_back_data_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_3_INBUF,
      O => mem_write_back_data_3_IBUF_855
    );
  forward_data_2_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => forward_data_2_4_O,
      O => forward_data_2(4)
    );
  forward_data_1_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => forward_data_1_8_O,
      O => forward_data_1(8)
    );
  mem_write_back_data_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(4),
      O => mem_write_back_data_4_INBUF
    );
  forward_data_2_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => forward_data_2_5_O,
      O => forward_data_2(5)
    );
  forward_data_1_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => forward_data_1_9_O,
      O => forward_data_1(9)
    );
  mem_write_back_data_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(5),
      O => mem_write_back_data_5_INBUF
    );
  forward_data_2_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => forward_data_2_6_O,
      O => forward_data_2(6)
    );
  mem_write_back_data_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(6),
      O => mem_write_back_data_6_INBUF
    );
  mem_write_back_data_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_6_INBUF,
      O => mem_write_back_data_6_IBUF_862
    );
  forward_data_2_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => forward_data_2_7_O,
      O => forward_data_2(7)
    );
  mem_write_back_data_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD111",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(7),
      O => mem_write_back_data_7_INBUF
    );
  forward_data_2_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => forward_data_2_8_O,
      O => forward_data_2(8)
    );
  mem_write_back_data_8_IBUF : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(8),
      O => mem_write_back_data_8_INBUF
    );
  forward_data_2_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => forward_data_2_9_O,
      O => forward_data_2(9)
    );
  mem_write_back_data_9_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data(9),
      O => mem_write_back_data_9_INBUF
    );
  wb_write_back_data_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(0),
      O => wb_write_back_data_0_INBUF
    );
  wb_write_back_data_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD75",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(1),
      O => wb_write_back_data_1_INBUF
    );
  wb_write_back_data_2_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(2),
      O => wb_write_back_data_2_INBUF
    );
  wb_write_back_data_10_IBUF : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(10),
      O => wb_write_back_data_10_INBUF
    );
  wb_write_back_data_3_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(3),
      O => wb_write_back_data_3_INBUF
    );
  wb_write_back_data_11_IBUF : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(11),
      O => wb_write_back_data_11_INBUF
    );
  wb_write_back_data_4_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(4),
      O => wb_write_back_data_4_INBUF
    );
  wb_write_back_data_12_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(12),
      O => wb_write_back_data_12_INBUF
    );
  wb_write_back_data_5_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(5),
      O => wb_write_back_data_5_INBUF
    );
  wb_write_back_data_13_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(13),
      O => wb_write_back_data_13_INBUF
    );
  wb_write_back_data_6_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(6),
      O => wb_write_back_data_6_INBUF
    );
  wb_write_back_data_14_IBUF : X_BUF
    generic map(
      LOC => "IPAD53",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(14),
      O => wb_write_back_data_14_INBUF
    );
  alu_write_back_reg_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD32",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_reg(0),
      O => alu_write_back_reg_0_INBUF
    );
  wb_write_back_data_7_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(7),
      O => wb_write_back_data_7_INBUF
    );
  wb_write_back_data_15_IBUF : X_BUF
    generic map(
      LOC => "IPAD52",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(15),
      O => wb_write_back_data_15_INBUF
    );
  alu_write_back_reg_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD31",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_reg(1),
      O => alu_write_back_reg_1_INBUF
    );
  wb_write_back_data_8_IBUF : X_BUF
    generic map(
      LOC => "IPAD96",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(8),
      O => wb_write_back_data_8_INBUF
    );
  alu_write_back_reg_2_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_reg(2),
      O => alu_write_back_reg_2_INBUF
    );
  alu_write_back_data_10_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(10),
      O => alu_write_back_data_10_INBUF
    );
  wb_write_back_data_9_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data(9),
      O => wb_write_back_data_9_INBUF
    );
  alu_write_back_reg_3_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_reg(3),
      O => alu_write_back_reg_3_INBUF
    );
  alu_write_back_data_11_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(11),
      O => alu_write_back_data_11_INBUF
    );
  alu_write_back_data_12_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(12),
      O => alu_write_back_data_12_INBUF
    );
  alu_write_back_data_13_IBUF : X_BUF
    generic map(
      LOC => "IPAD79",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(13),
      O => alu_write_back_data_13_INBUF
    );
  alu_write_back_data_14_IBUF : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(14),
      O => alu_write_back_data_14_INBUF
    );
  alu_write_back_data_15_IBUF : X_BUF
    generic map(
      LOC => "IPAD74",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data(15),
      O => alu_write_back_data_15_INBUF
    );
  is_hazard_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => is_hazard_1_O,
      O => is_hazard_1
    );
  is_hazard_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => is_hazard_2_O,
      O => is_hazard_2
    );
  forward_data_1_10_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y93"
    )
    port map (
      IA => forward_data_1_10_2_1958,
      IB => forward_data_1_10_1_1966,
      SEL => forward_data_1_10_OBUF_BXINV_1960,
      O => forward_data_1_10_OBUF_F5MUX_1968
    );
  forward_data_1_10_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y93",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_10_OBUF_BXINV_1960
    );
  forward_data_2_8_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y89"
    )
    port map (
      IA => forward_data_2_8_2_1983,
      IB => forward_data_2_8_1_1991,
      SEL => forward_data_2_8_OBUF_BXINV_1985,
      O => forward_data_2_8_OBUF_F5MUX_1993
    );
  forward_data_2_8_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y89",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_8_OBUF_BXINV_1985
    );
  forward_data_2_15_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y102"
    )
    port map (
      IA => forward_data_2_15_2_2008,
      IB => forward_data_2_15_1_2016,
      SEL => forward_data_2_15_OBUF_BXINV_2010,
      O => forward_data_2_15_OBUF_F5MUX_2018
    );
  forward_data_2_15_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y102",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_15_OBUF_BXINV_2010
    );
  forward_data_2_2_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X88Y72"
    )
    port map (
      IA => forward_data_2_2_2_2033,
      IB => forward_data_2_2_1_2041,
      SEL => forward_data_2_2_OBUF_BXINV_2035,
      O => forward_data_2_2_OBUF_F5MUX_2043
    );
  forward_data_2_2_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_2_OBUF_BXINV_2035
    );
  forward_data_1_6_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y85"
    )
    port map (
      IA => forward_data_1_6_2_2058,
      IB => forward_data_1_6_1_2066,
      SEL => forward_data_1_6_OBUF_BXINV_2060,
      O => forward_data_1_6_OBUF_F5MUX_2068
    );
  forward_data_1_6_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y85",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_6_OBUF_BXINV_2060
    );
  forward_data_1_0_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y73"
    )
    port map (
      IA => forward_data_1_0_2_2083,
      IB => forward_data_1_0_1_2091,
      SEL => forward_data_1_0_OBUF_BXINV_2085,
      O => forward_data_1_0_OBUF_F5MUX_2093
    );
  forward_data_1_0_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_0_OBUF_BXINV_2085
    );
  forward_data_1_11_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y96"
    )
    port map (
      IA => forward_data_1_11_2_2108,
      IB => forward_data_1_11_1_2116,
      SEL => forward_data_1_11_OBUF_BXINV_2110,
      O => forward_data_1_11_OBUF_F5MUX_2118
    );
  forward_data_1_11_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y96",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_11_OBUF_BXINV_2110
    );
  forward_data_2_9_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X88Y97"
    )
    port map (
      IA => forward_data_2_9_2_2133,
      IB => forward_data_2_9_1_2141,
      SEL => forward_data_2_9_OBUF_BXINV_2135,
      O => forward_data_2_9_OBUF_F5MUX_2143
    );
  forward_data_2_9_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y97",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_9_OBUF_BXINV_2135
    );
  forward_data_2_3_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y68"
    )
    port map (
      IA => forward_data_2_3_2_2158,
      IB => forward_data_2_3_1_2166,
      SEL => forward_data_2_3_OBUF_BXINV_2160,
      O => forward_data_2_3_OBUF_F5MUX_2168
    );
  forward_data_2_3_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y68",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_3_OBUF_BXINV_2160
    );
  forward_data_1_7_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y66"
    )
    port map (
      IA => forward_data_1_7_2_2183,
      IB => forward_data_1_7_1_2191,
      SEL => forward_data_1_7_OBUF_BXINV_2185,
      O => forward_data_1_7_OBUF_F5MUX_2193
    );
  forward_data_1_7_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y66",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_7_OBUF_BXINV_2185
    );
  forward_data_2_10_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y93"
    )
    port map (
      IA => forward_data_2_10_2_2208,
      IB => forward_data_2_10_1_2216,
      SEL => forward_data_2_10_OBUF_BXINV_2210,
      O => forward_data_2_10_OBUF_F5MUX_2218
    );
  forward_data_2_10_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y93",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_10_OBUF_BXINV_2210
    );
  forward_data_1_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y69"
    )
    port map (
      IA => forward_data_1_1_2_2233,
      IB => forward_data_1_1_1_2241,
      SEL => forward_data_1_1_OBUF_BXINV_2235,
      O => forward_data_1_1_OBUF_F5MUX_2243
    );
  forward_data_1_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y69",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_1_OBUF_BXINV_2235
    );
  forward_data_1_12_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y101"
    )
    port map (
      IA => forward_data_1_12_2_2258,
      IB => forward_data_1_12_1_2266,
      SEL => forward_data_1_12_OBUF_BXINV_2260,
      O => forward_data_1_12_OBUF_F5MUX_2268
    );
  forward_data_1_12_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y101",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_12_OBUF_BXINV_2260
    );
  forward_data_2_4_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y77"
    )
    port map (
      IA => forward_data_2_4_2_2283,
      IB => forward_data_2_4_1_2291,
      SEL => forward_data_2_4_OBUF_BXINV_2285,
      O => forward_data_2_4_OBUF_F5MUX_2293
    );
  forward_data_2_4_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_4_OBUF_BXINV_2285
    );
  forward_data_1_8_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y75"
    )
    port map (
      IA => forward_data_1_8_2_2308,
      IB => forward_data_1_8_1_2316,
      SEL => forward_data_1_8_OBUF_BXINV_2310,
      O => forward_data_1_8_OBUF_F5MUX_2318
    );
  forward_data_1_8_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_8_OBUF_BXINV_2310
    );
  forward_data_2_11_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y96"
    )
    port map (
      IA => forward_data_2_11_2_2333,
      IB => forward_data_2_11_1_2341,
      SEL => forward_data_2_11_OBUF_BXINV_2335,
      O => forward_data_2_11_OBUF_F5MUX_2343
    );
  forward_data_2_11_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y96",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_11_OBUF_BXINV_2335
    );
  forward_data_1_2_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X89Y72"
    )
    port map (
      IA => forward_data_1_2_2_2358,
      IB => forward_data_1_2_1_2366,
      SEL => forward_data_1_2_OBUF_BXINV_2360,
      O => forward_data_1_2_OBUF_F5MUX_2368
    );
  forward_data_1_2_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X89Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_2_OBUF_BXINV_2360
    );
  forward_data_1_13_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y100"
    )
    port map (
      IA => forward_data_1_13_2_2383,
      IB => forward_data_1_13_1_2391,
      SEL => forward_data_1_13_OBUF_BXINV_2385,
      O => forward_data_1_13_OBUF_F5MUX_2393
    );
  forward_data_1_13_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y100",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_13_OBUF_BXINV_2385
    );
  forward_data_2_5_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      IA => forward_data_2_5_2_2408,
      IB => forward_data_2_5_1_2416,
      SEL => forward_data_2_5_OBUF_BXINV_2410,
      O => forward_data_2_5_OBUF_F5MUX_2418
    );
  forward_data_2_5_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_5_OBUF_BXINV_2410
    );
  forward_data_1_9_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y96"
    )
    port map (
      IA => forward_data_1_9_2_2433,
      IB => forward_data_1_9_1_2441,
      SEL => forward_data_1_9_OBUF_BXINV_2435,
      O => forward_data_1_9_OBUF_F5MUX_2443
    );
  forward_data_1_9_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y96",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_9_OBUF_BXINV_2435
    );
  forward_data_2_12_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y100"
    )
    port map (
      IA => forward_data_2_12_2_2458,
      IB => forward_data_2_12_1_2466,
      SEL => forward_data_2_12_OBUF_BXINV_2460,
      O => forward_data_2_12_OBUF_F5MUX_2468
    );
  forward_data_2_12_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y100",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_12_OBUF_BXINV_2460
    );
  forward_data_1_3_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y71"
    )
    port map (
      IA => forward_data_1_3_2_2483,
      IB => forward_data_1_3_1_2491,
      SEL => forward_data_1_3_OBUF_BXINV_2485,
      O => forward_data_1_3_OBUF_F5MUX_2493
    );
  forward_data_1_3_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y71",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_3_OBUF_BXINV_2485
    );
  forward_data_1_14_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X79Y102"
    )
    port map (
      IA => forward_data_1_14_2_2508,
      IB => forward_data_1_14_1_2516,
      SEL => forward_data_1_14_OBUF_BXINV_2510,
      O => forward_data_1_14_OBUF_F5MUX_2518
    );
  forward_data_1_14_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y102",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_14_OBUF_BXINV_2510
    );
  forward_data_2_6_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y84"
    )
    port map (
      IA => forward_data_2_6_2_2533,
      IB => forward_data_2_6_1_2541,
      SEL => forward_data_2_6_OBUF_BXINV_2535,
      O => forward_data_2_6_OBUF_F5MUX_2543
    );
  forward_data_2_6_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y84",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_6_OBUF_BXINV_2535
    );
  forward_data_2_13_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X78Y118"
    )
    port map (
      IA => forward_data_2_13_2_2558,
      IB => forward_data_2_13_1_2566,
      SEL => forward_data_2_13_OBUF_BXINV_2560,
      O => forward_data_2_13_OBUF_F5MUX_2568
    );
  forward_data_2_13_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y118",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_13_OBUF_BXINV_2560
    );
  forward_data_2_0_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y72"
    )
    port map (
      IA => forward_data_2_0_2_2583,
      IB => forward_data_2_0_1_2591,
      SEL => forward_data_2_0_OBUF_BXINV_2585,
      O => forward_data_2_0_OBUF_F5MUX_2593
    );
  forward_data_2_0_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_from_mem,
      O => forward_data_2_0_OBUF_BXINV_2585
    );
  forward_data_1_4_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y76"
    )
    port map (
      IA => forward_data_1_4_2_2608,
      IB => forward_data_1_4_1_2616,
      SEL => forward_data_1_4_OBUF_BXINV_2610,
      O => forward_data_1_4_OBUF_F5MUX_2618
    );
  forward_data_1_4_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_from_mem,
      O => forward_data_1_4_OBUF_BXINV_2610
    );
  forward_data_1_15_2 : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X79Y98"
    )
    port map (
      ADR0 => is_hazard_1_from_wb_0,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => alu_write_back_data_15_IBUF_762,
      ADR3 => wb_write_back_data_15_IBUF_764,
      O => forward_data_1_15_2_895
    );
  forward_data_1_15_1 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X79Y98"
    )
    port map (
      ADR0 => VCC,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => mem_write_back_data_15_IBUF_761,
      ADR3 => alu_write_back_data_15_IBUF_762,
      O => forward_data_1_15_1_903
    );
  forward_data_2_7_2 : X_LUT4
    generic map(
      INIT => X"CCA0",
      LOC => "SLICE_X90Y81"
    )
    port map (
      ADR0 => wb_write_back_data_7_IBUF_771,
      ADR1 => alu_write_back_data_7_IBUF_769,
      ADR2 => is_hazard_2_from_wb_0,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_7_2_920
    );
  forward_data_2_7_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X90Y81"
    )
    port map (
      ADR0 => mem_write_back_data_7_IBUF_768,
      ADR1 => alu_write_back_data_7_IBUF_769,
      ADR2 => VCC,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_7_1_928
    );
  forward_data_2_1_2 : X_LUT4
    generic map(
      INIT => X"D888",
      LOC => "SLICE_X90Y69"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => alu_write_back_data_1_IBUF_778,
      ADR2 => is_hazard_2_from_wb_0,
      ADR3 => wb_write_back_data_1_IBUF_779,
      O => forward_data_2_1_2_970
    );
  forward_data_2_1_1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X90Y69"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => alu_write_back_data_1_IBUF_778,
      ADR2 => VCC,
      ADR3 => mem_write_back_data_1_IBUF_777,
      O => forward_data_2_1_1_978
    );
  forward_data_1_5_2 : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X90Y74"
    )
    port map (
      ADR0 => is_hazard_1_from_wb_0,
      ADR1 => wb_write_back_data_5_IBUF_783,
      ADR2 => alu_write_back_data_5_IBUF_782,
      ADR3 => is_hazard_1_from_alu_0,
      O => forward_data_1_5_2_995
    );
  forward_data_1_5_1 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X90Y74"
    )
    port map (
      ADR0 => mem_write_back_data_5_IBUF_781,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => alu_write_back_data_5_IBUF_782,
      ADR3 => VCC,
      O => forward_data_1_5_1_1003
    );
  is_hazard_1_from_wb_and000049 : X_LUT4
    generic map(
      INIT => X"C030",
      LOC => "SLICE_X55Y119"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_reg_1_2_IBUF_788,
      ADR2 => wb_reg_write_enable_IBUF_785,
      ADR3 => wb_write_back_reg_2_IBUF_786,
      O => is_hazard_1_from_wb_and000049_1020
    );
  is_hazard_2_from_wb_and000049 : X_LUT4
    generic map(
      INIT => X"C00C",
      LOC => "SLICE_X55Y119"
    )
    port map (
      ADR0 => VCC,
      ADR1 => wb_reg_write_enable_IBUF_785,
      ADR2 => read_reg_2_2_IBUF_787,
      ADR3 => wb_write_back_reg_2_IBUF_786,
      O => is_hazard_2_from_wb_and000049_1028
    );
  is_hazard_1_from_mem_and000061 : X_LUT4
    generic map(
      INIT => X"8008",
      LOC => "SLICE_X61Y119"
    )
    port map (
      ADR0 => N129_0,
      ADR1 => is_hazard_1_from_mem_and000049_0,
      ADR2 => read_reg_1_1_IBUF_797,
      ADR3 => mem_write_back_reg_1_IBUF_792,
      O => is_hazard_1_from_mem_pack_1
    );
  is_hazard_1_or00001 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X61Y119"
    )
    port map (
      ADR0 => is_hazard_1_from_alu_0,
      ADR1 => is_hazard_1_from_wb_0,
      ADR2 => VCC,
      ADR3 => is_hazard_1_from_mem,
      O => is_hazard_1_OBUF_1076
    );
  is_hazard_2_from_mem_and000049 : X_LUT4
    generic map(
      INIT => X"C030",
      LOC => "SLICE_X56Y118"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_reg_2_2_IBUF_787,
      ADR2 => mem_reg_write_enable_IBUF_800,
      ADR3 => mem_write_back_reg_2_IBUF_801,
      O => is_hazard_2_from_mem_and000049_1092
    );
  is_hazard_1_from_mem_and000049 : X_LUT4
    generic map(
      INIT => X"A050",
      LOC => "SLICE_X56Y118"
    )
    port map (
      ADR0 => read_reg_1_2_IBUF_788,
      ADR1 => VCC,
      ADR2 => mem_reg_write_enable_IBUF_800,
      ADR3 => mem_write_back_reg_2_IBUF_801,
      O => is_hazard_1_from_mem_and000049_1100
    );
  is_hazard_2_from_alu_and000061_SW0 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X59Y116"
    )
    port map (
      ADR0 => read_reg_2_3_IBUF_806,
      ADR1 => alu_write_back_reg_3_IBUF_805,
      ADR2 => read_reg_2_0_IBUF_808,
      ADR3 => alu_write_back_reg_0_IBUF_807,
      O => N123_pack_1
    );
  is_hazard_2_from_alu_and000061 : X_LUT4
    generic map(
      INIT => X"8020",
      LOC => "SLICE_X59Y116"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_and000049_0,
      ADR1 => alu_write_back_reg_1_IBUF_803,
      ADR2 => N123,
      ADR3 => read_reg_2_1_IBUF_793,
      O => is_hazard_2_from_alu
    );
  is_hazard_2_from_alu_and000049 : X_LUT4
    generic map(
      INIT => X"A050",
      LOC => "SLICE_X57Y116"
    )
    port map (
      ADR0 => read_reg_2_2_IBUF_787,
      ADR1 => VCC,
      ADR2 => alu_reg_write_enable_IBUF_813,
      ADR3 => alu_write_back_reg_2_IBUF_814,
      O => is_hazard_2_from_alu_and000049_1164
    );
  is_hazard_1_from_alu_and000049 : X_LUT4
    generic map(
      INIT => X"A050",
      LOC => "SLICE_X57Y116"
    )
    port map (
      ADR0 => read_reg_1_2_IBUF_788,
      ADR1 => VCC,
      ADR2 => alu_reg_write_enable_IBUF_813,
      ADR3 => alu_write_back_reg_2_IBUF_814,
      O => is_hazard_1_from_alu_and000049_1172
    );
  is_hazard_2_from_wb_and000061_SW0 : X_LUT4
    generic map(
      INIT => X"8241",
      LOC => "SLICE_X59Y118"
    )
    port map (
      ADR0 => read_reg_2_3_IBUF_806,
      ADR1 => read_reg_2_0_IBUF_808,
      ADR2 => wb_write_back_reg_0_IBUF_819,
      ADR3 => wb_write_back_reg_3_IBUF_818,
      O => N119_pack_1
    );
  is_hazard_2_from_wb_and000061 : X_LUT4
    generic map(
      INIT => X"8020",
      LOC => "SLICE_X59Y118"
    )
    port map (
      ADR0 => N119,
      ADR1 => read_reg_2_1_IBUF_793,
      ADR2 => is_hazard_2_from_wb_and000049_0,
      ADR3 => wb_write_back_reg_1_IBUF_816,
      O => is_hazard_2_from_wb
    );
  is_hazard_1_from_alu_and000061_SW0 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X59Y117"
    )
    port map (
      ADR0 => read_reg_1_3_IBUF_811,
      ADR1 => alu_write_back_reg_3_IBUF_805,
      ADR2 => read_reg_1_0_IBUF_812,
      ADR3 => alu_write_back_reg_0_IBUF_807,
      O => N125_pack_1
    );
  is_hazard_1_from_alu_and000061 : X_LUT4
    generic map(
      INIT => X"8400",
      LOC => "SLICE_X59Y117"
    )
    port map (
      ADR0 => alu_write_back_reg_1_IBUF_803,
      ADR1 => is_hazard_1_from_alu_and000049_0,
      ADR2 => read_reg_1_1_IBUF_797,
      ADR3 => N125,
      O => is_hazard_1_from_alu
    );
  is_hazard_1_from_wb_and000061_SW0 : X_LUT4
    generic map(
      INIT => X"8241",
      LOC => "SLICE_X59Y119"
    )
    port map (
      ADR0 => read_reg_1_3_IBUF_811,
      ADR1 => read_reg_1_0_IBUF_812,
      ADR2 => wb_write_back_reg_0_IBUF_819,
      ADR3 => wb_write_back_reg_3_IBUF_818,
      O => N121_pack_1
    );
  wb_write_back_reg_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_reg_0_INBUF,
      O => wb_write_back_reg_0_IBUF_819
    );
  wb_write_back_reg_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_reg_1_INBUF,
      O => wb_write_back_reg_1_IBUF_816
    );
  wb_write_back_reg_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD45",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_reg_2_INBUF,
      O => wb_write_back_reg_2_IBUF_786
    );
  wb_write_back_reg_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_reg_3_INBUF,
      O => wb_write_back_reg_3_IBUF_818
    );
  alu_write_back_data_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_0_INBUF,
      O => alu_write_back_data_0_IBUF_827
    );
  wb_reg_write_enable_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_reg_write_enable_INBUF,
      O => wb_reg_write_enable_IBUF_785
    );
  mem_write_back_data_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_12_INBUF,
      O => mem_write_back_data_12_IBUF_837
    );
  alu_write_back_data_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_2_INBUF,
      O => alu_write_back_data_2_IBUF_830
    );
  mem_write_back_data_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD91",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_10_INBUF,
      O => mem_write_back_data_10_IBUF_831
    );
  alu_write_back_data_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_3_INBUF,
      O => alu_write_back_data_3_IBUF_833
    );
  mem_write_back_data_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_11_INBUF,
      O => mem_write_back_data_11_IBUF_834
    );
  alu_write_back_data_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_5_INBUF,
      O => alu_write_back_data_5_IBUF_782
    );
  mem_write_back_data_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_13_INBUF,
      O => mem_write_back_data_13_IBUF_838
    );
  alu_write_back_data_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_6_INBUF,
      O => alu_write_back_data_6_IBUF_840
    );
  mem_write_back_data_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD101",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_14_INBUF,
      O => mem_write_back_data_14_IBUF_773
    );
  alu_write_back_data_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_7_INBUF,
      O => alu_write_back_data_7_IBUF_769
    );
  read_reg_1_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_1_INBUF,
      O => read_reg_1_1_IBUF_797
    );
  mem_write_back_data_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_15_INBUF,
      O => mem_write_back_data_15_IBUF_761
    );
  alu_write_back_data_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_8_INBUF,
      O => alu_write_back_data_8_IBUF_843
    );
  alu_write_back_data_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_9_INBUF,
      O => alu_write_back_data_9_IBUF_845
    );
  read_reg_1_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_1_3_INBUF,
      O => read_reg_1_3_IBUF_811
    );
  mem_write_back_reg_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_reg_1_INBUF,
      O => mem_write_back_reg_1_IBUF_792
    );
  read_reg_2_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_0_INBUF,
      O => read_reg_2_0_IBUF_808
    );
  mem_reg_write_enable_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_reg_write_enable_INBUF,
      O => mem_reg_write_enable_IBUF_800
    );
  read_reg_2_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_1_INBUF,
      O => read_reg_2_1_IBUF_793
    );
  mem_write_back_reg_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_reg_3_INBUF,
      O => mem_write_back_reg_3_IBUF_809
    );
  mem_write_back_data_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_0_INBUF,
      O => mem_write_back_data_0_IBUF_849
    );
  read_reg_2_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD38",
      PATHPULSE => 798 ps
    )
    port map (
      I => read_reg_2_3_INBUF,
      O => read_reg_2_3_IBUF_806
    );
  mem_write_back_data_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_2_INBUF,
      O => mem_write_back_data_2_IBUF_852
    );
  mem_write_back_data_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_4_INBUF,
      O => mem_write_back_data_4_IBUF_858
    );
  mem_write_back_data_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_5_INBUF,
      O => mem_write_back_data_5_IBUF_781
    );
  mem_write_back_data_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD111",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_7_INBUF,
      O => mem_write_back_data_7_IBUF_768
    );
  mem_write_back_data_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_8_INBUF,
      O => mem_write_back_data_8_IBUF_864
    );
  mem_write_back_data_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_back_data_9_INBUF,
      O => mem_write_back_data_9_IBUF_866
    );
  wb_write_back_data_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_0_INBUF,
      O => wb_write_back_data_0_IBUF_867
    );
  wb_write_back_data_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD75",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_1_INBUF,
      O => wb_write_back_data_1_IBUF_779
    );
  wb_write_back_data_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_2_INBUF,
      O => wb_write_back_data_2_IBUF_868
    );
  wb_write_back_data_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_10_INBUF,
      O => wb_write_back_data_10_IBUF_869
    );
  wb_write_back_data_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_3_INBUF,
      O => wb_write_back_data_3_IBUF_870
    );
  wb_write_back_data_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_11_INBUF,
      O => wb_write_back_data_11_IBUF_871
    );
  wb_write_back_data_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_4_INBUF,
      O => wb_write_back_data_4_IBUF_872
    );
  wb_write_back_data_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_12_INBUF,
      O => wb_write_back_data_12_IBUF_873
    );
  wb_write_back_data_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_5_INBUF,
      O => wb_write_back_data_5_IBUF_783
    );
  wb_write_back_data_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_13_INBUF,
      O => wb_write_back_data_13_IBUF_874
    );
  wb_write_back_data_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_6_INBUF,
      O => wb_write_back_data_6_IBUF_875
    );
  wb_write_back_data_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD53",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_14_INBUF,
      O => wb_write_back_data_14_IBUF_775
    );
  alu_write_back_reg_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD32",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_reg_0_INBUF,
      O => alu_write_back_reg_0_IBUF_807
    );
  wb_write_back_data_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_7_INBUF,
      O => wb_write_back_data_7_IBUF_771
    );
  wb_write_back_data_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD52",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_15_INBUF,
      O => wb_write_back_data_15_IBUF_764
    );
  alu_write_back_reg_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD31",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_reg_1_INBUF,
      O => alu_write_back_reg_1_IBUF_803
    );
  wb_write_back_data_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD96",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_8_INBUF,
      O => wb_write_back_data_8_IBUF_876
    );
  alu_write_back_reg_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_reg_2_INBUF,
      O => alu_write_back_reg_2_IBUF_814
    );
  alu_write_back_data_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_10_INBUF,
      O => alu_write_back_data_10_IBUF_877
    );
  wb_write_back_data_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 798 ps
    )
    port map (
      I => wb_write_back_data_9_INBUF,
      O => wb_write_back_data_9_IBUF_878
    );
  alu_write_back_reg_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_reg_3_INBUF,
      O => alu_write_back_reg_3_IBUF_805
    );
  alu_write_back_data_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_11_INBUF,
      O => alu_write_back_data_11_IBUF_879
    );
  alu_write_back_data_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_12_INBUF,
      O => alu_write_back_data_12_IBUF_880
    );
  alu_write_back_data_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD79",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_13_INBUF,
      O => alu_write_back_data_13_IBUF_881
    );
  alu_write_back_data_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_14_INBUF,
      O => alu_write_back_data_14_IBUF_774
    );
  alu_write_back_data_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD74",
      PATHPULSE => 798 ps
    )
    port map (
      I => alu_write_back_data_15_INBUF,
      O => alu_write_back_data_15_IBUF_762
    );
  forward_data_1_10_2 : X_LUT4
    generic map(
      INIT => X"B888",
      LOC => "SLICE_X78Y93"
    )
    port map (
      ADR0 => alu_write_back_data_10_IBUF_877,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => is_hazard_1_from_wb_0,
      ADR3 => wb_write_back_data_10_IBUF_869,
      O => forward_data_1_10_2_1958
    );
  forward_data_1_10_1 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X78Y93"
    )
    port map (
      ADR0 => alu_write_back_data_10_IBUF_877,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => mem_write_back_data_10_IBUF_831,
      ADR3 => VCC,
      O => forward_data_1_10_1_1966
    );
  forward_data_2_8_2 : X_LUT4
    generic map(
      INIT => X"D888",
      LOC => "SLICE_X91Y89"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => alu_write_back_data_8_IBUF_843,
      ADR2 => is_hazard_2_from_wb_0,
      ADR3 => wb_write_back_data_8_IBUF_876,
      O => forward_data_2_8_2_1983
    );
  forward_data_2_8_1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X91Y89"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => alu_write_back_data_8_IBUF_843,
      ADR2 => VCC,
      ADR3 => mem_write_back_data_8_IBUF_864,
      O => forward_data_2_8_1_1991
    );
  forward_data_2_15_2 : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X78Y102"
    )
    port map (
      ADR0 => wb_write_back_data_15_IBUF_764,
      ADR1 => is_hazard_2_from_wb_0,
      ADR2 => alu_write_back_data_15_IBUF_762,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_15_2_2008
    );
  forward_data_2_15_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X78Y102"
    )
    port map (
      ADR0 => alu_write_back_data_15_IBUF_762,
      ADR1 => mem_write_back_data_15_IBUF_761,
      ADR2 => VCC,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_15_1_2016
    );
  forward_data_2_2_2 : X_LUT4
    generic map(
      INIT => X"B888",
      LOC => "SLICE_X88Y72"
    )
    port map (
      ADR0 => alu_write_back_data_2_IBUF_830,
      ADR1 => is_hazard_2_from_alu_0,
      ADR2 => is_hazard_2_from_wb_0,
      ADR3 => wb_write_back_data_2_IBUF_868,
      O => forward_data_2_2_2_2033
    );
  forward_data_2_2_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X88Y72"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => mem_write_back_data_2_IBUF_852,
      ADR2 => alu_write_back_data_2_IBUF_830,
      ADR3 => VCC,
      O => forward_data_2_2_1_2041
    );
  forward_data_1_6_2 : X_LUT4
    generic map(
      INIT => X"ACA0",
      LOC => "SLICE_X79Y85"
    )
    port map (
      ADR0 => alu_write_back_data_6_IBUF_840,
      ADR1 => is_hazard_1_from_wb_0,
      ADR2 => is_hazard_1_from_alu_0,
      ADR3 => wb_write_back_data_6_IBUF_875,
      O => forward_data_1_6_2_2058
    );
  forward_data_1_6_1 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X79Y85"
    )
    port map (
      ADR0 => alu_write_back_data_6_IBUF_840,
      ADR1 => VCC,
      ADR2 => mem_write_back_data_6_IBUF_862,
      ADR3 => is_hazard_1_from_alu_0,
      O => forward_data_1_6_1_2066
    );
  forward_data_1_0_2 : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X90Y73"
    )
    port map (
      ADR0 => is_hazard_1_from_wb_0,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => alu_write_back_data_0_IBUF_827,
      ADR3 => wb_write_back_data_0_IBUF_867,
      O => forward_data_1_0_2_2083
    );
  forward_data_1_0_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X90Y73"
    )
    port map (
      ADR0 => is_hazard_1_from_alu_0,
      ADR1 => mem_write_back_data_0_IBUF_849,
      ADR2 => VCC,
      ADR3 => alu_write_back_data_0_IBUF_827,
      O => forward_data_1_0_1_2091
    );
  forward_data_1_11_2 : X_LUT4
    generic map(
      INIT => X"ACA0",
      LOC => "SLICE_X91Y96"
    )
    port map (
      ADR0 => alu_write_back_data_11_IBUF_879,
      ADR1 => wb_write_back_data_11_IBUF_871,
      ADR2 => is_hazard_1_from_alu_0,
      ADR3 => is_hazard_1_from_wb_0,
      O => forward_data_1_11_2_2108
    );
  forward_data_1_11_1 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X91Y96"
    )
    port map (
      ADR0 => alu_write_back_data_11_IBUF_879,
      ADR1 => mem_write_back_data_11_IBUF_834,
      ADR2 => is_hazard_1_from_alu_0,
      ADR3 => VCC,
      O => forward_data_1_11_1_2116
    );
  forward_data_2_9_2 : X_LUT4
    generic map(
      INIT => X"AAC0",
      LOC => "SLICE_X88Y97"
    )
    port map (
      ADR0 => alu_write_back_data_9_IBUF_845,
      ADR1 => is_hazard_2_from_wb_0,
      ADR2 => wb_write_back_data_9_IBUF_878,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_9_2_2133
    );
  forward_data_2_9_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X88Y97"
    )
    port map (
      ADR0 => VCC,
      ADR1 => mem_write_back_data_9_IBUF_866,
      ADR2 => alu_write_back_data_9_IBUF_845,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_9_1_2141
    );
  forward_data_2_3_2 : X_LUT4
    generic map(
      INIT => X"AAC0",
      LOC => "SLICE_X91Y68"
    )
    port map (
      ADR0 => alu_write_back_data_3_IBUF_833,
      ADR1 => is_hazard_2_from_wb_0,
      ADR2 => wb_write_back_data_3_IBUF_870,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_3_2_2158
    );
  forward_data_2_3_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X91Y68"
    )
    port map (
      ADR0 => alu_write_back_data_3_IBUF_833,
      ADR1 => mem_write_back_data_3_IBUF_855,
      ADR2 => VCC,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_3_1_2166
    );
  forward_data_1_7_2 : X_LUT4
    generic map(
      INIT => X"E4A0",
      LOC => "SLICE_X79Y66"
    )
    port map (
      ADR0 => is_hazard_1_from_alu_0,
      ADR1 => wb_write_back_data_7_IBUF_771,
      ADR2 => alu_write_back_data_7_IBUF_769,
      ADR3 => is_hazard_1_from_wb_0,
      O => forward_data_1_7_2_2183
    );
  forward_data_1_7_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X79Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => mem_write_back_data_7_IBUF_768,
      ADR2 => alu_write_back_data_7_IBUF_769,
      ADR3 => is_hazard_1_from_alu_0,
      O => forward_data_1_7_1_2191
    );
  forward_data_2_10_2 : X_LUT4
    generic map(
      INIT => X"EC20",
      LOC => "SLICE_X79Y93"
    )
    port map (
      ADR0 => wb_write_back_data_10_IBUF_869,
      ADR1 => is_hazard_2_from_alu_0,
      ADR2 => is_hazard_2_from_wb_0,
      ADR3 => alu_write_back_data_10_IBUF_877,
      O => forward_data_2_10_2_2208
    );
  forward_data_2_10_1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X79Y93"
    )
    port map (
      ADR0 => VCC,
      ADR1 => mem_write_back_data_10_IBUF_831,
      ADR2 => is_hazard_2_from_alu_0,
      ADR3 => alu_write_back_data_10_IBUF_877,
      O => forward_data_2_10_1_2216
    );
  forward_data_1_1_2 : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X91Y69"
    )
    port map (
      ADR0 => wb_write_back_data_1_IBUF_779,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => alu_write_back_data_1_IBUF_778,
      ADR3 => is_hazard_1_from_wb_0,
      O => forward_data_1_1_2_2233
    );
  forward_data_1_1_1 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X91Y69"
    )
    port map (
      ADR0 => mem_write_back_data_1_IBUF_777,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => alu_write_back_data_1_IBUF_778,
      ADR3 => VCC,
      O => forward_data_1_1_1_2241
    );
  forward_data_1_12_2 : X_LUT4
    generic map(
      INIT => X"EC20",
      LOC => "SLICE_X90Y101"
    )
    port map (
      ADR0 => wb_write_back_data_12_IBUF_873,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => is_hazard_1_from_wb_0,
      ADR3 => alu_write_back_data_12_IBUF_880,
      O => forward_data_1_12_2_2258
    );
  forward_data_1_12_1 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X90Y101"
    )
    port map (
      ADR0 => VCC,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => mem_write_back_data_12_IBUF_837,
      ADR3 => alu_write_back_data_12_IBUF_880,
      O => forward_data_1_12_1_2266
    );
  forward_data_2_4_2 : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X90Y77"
    )
    port map (
      ADR0 => is_hazard_2_from_wb_0,
      ADR1 => wb_write_back_data_4_IBUF_872,
      ADR2 => is_hazard_2_from_alu_0,
      ADR3 => alu_write_back_data_4_IBUF_836,
      O => forward_data_2_4_2_2283
    );
  forward_data_2_4_1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X90Y77"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => VCC,
      ADR2 => alu_write_back_data_4_IBUF_836,
      ADR3 => mem_write_back_data_4_IBUF_858,
      O => forward_data_2_4_1_2291
    );
  forward_data_1_8_2 : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X79Y75"
    )
    port map (
      ADR0 => is_hazard_1_from_wb_0,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => alu_write_back_data_8_IBUF_843,
      ADR3 => wb_write_back_data_8_IBUF_876,
      O => forward_data_1_8_2_2308
    );
  forward_data_1_8_1 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X79Y75"
    )
    port map (
      ADR0 => is_hazard_1_from_alu_0,
      ADR1 => VCC,
      ADR2 => alu_write_back_data_8_IBUF_843,
      ADR3 => mem_write_back_data_8_IBUF_864,
      O => forward_data_1_8_1_2316
    );
  forward_data_2_11_2 : X_LUT4
    generic map(
      INIT => X"AAC0",
      LOC => "SLICE_X90Y96"
    )
    port map (
      ADR0 => alu_write_back_data_11_IBUF_879,
      ADR1 => is_hazard_2_from_wb_0,
      ADR2 => wb_write_back_data_11_IBUF_871,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_11_2_2333
    );
  forward_data_2_11_1 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X90Y96"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_write_back_data_11_IBUF_879,
      ADR2 => mem_write_back_data_11_IBUF_834,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_11_1_2341
    );
  forward_data_1_2_2 : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X89Y72"
    )
    port map (
      ADR0 => wb_write_back_data_2_IBUF_868,
      ADR1 => alu_write_back_data_2_IBUF_830,
      ADR2 => is_hazard_1_from_alu_0,
      ADR3 => is_hazard_1_from_wb_0,
      O => forward_data_1_2_2_2358
    );
  forward_data_1_2_1 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X89Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => alu_write_back_data_2_IBUF_830,
      ADR2 => mem_write_back_data_2_IBUF_852,
      ADR3 => is_hazard_1_from_alu_0,
      O => forward_data_1_2_1_2366
    );
  forward_data_1_13_2 : X_LUT4
    generic map(
      INIT => X"E4A0",
      LOC => "SLICE_X78Y100"
    )
    port map (
      ADR0 => is_hazard_1_from_alu_0,
      ADR1 => is_hazard_1_from_wb_0,
      ADR2 => alu_write_back_data_13_IBUF_881,
      ADR3 => wb_write_back_data_13_IBUF_874,
      O => forward_data_1_13_2_2383
    );
  forward_data_1_13_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X78Y100"
    )
    port map (
      ADR0 => mem_write_back_data_13_IBUF_838,
      ADR1 => VCC,
      ADR2 => alu_write_back_data_13_IBUF_881,
      ADR3 => is_hazard_1_from_alu_0,
      O => forward_data_1_13_1_2391
    );
  forward_data_2_5_2 : X_LUT4
    generic map(
      INIT => X"EA40",
      LOC => "SLICE_X91Y75"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => is_hazard_2_from_wb_0,
      ADR2 => wb_write_back_data_5_IBUF_783,
      ADR3 => alu_write_back_data_5_IBUF_782,
      O => forward_data_2_5_2_2408
    );
  forward_data_2_5_1 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X91Y75"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => alu_write_back_data_5_IBUF_782,
      ADR2 => VCC,
      ADR3 => mem_write_back_data_5_IBUF_781,
      O => forward_data_2_5_1_2416
    );
  forward_data_1_9_2 : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X79Y96"
    )
    port map (
      ADR0 => is_hazard_1_from_wb_0,
      ADR1 => wb_write_back_data_9_IBUF_878,
      ADR2 => alu_write_back_data_9_IBUF_845,
      ADR3 => is_hazard_1_from_alu_0,
      O => forward_data_1_9_2_2433
    );
  forward_data_1_9_1 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X79Y96"
    )
    port map (
      ADR0 => alu_write_back_data_9_IBUF_845,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => mem_write_back_data_9_IBUF_866,
      ADR3 => VCC,
      O => forward_data_1_9_1_2441
    );
  forward_data_2_12_2 : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X90Y100"
    )
    port map (
      ADR0 => wb_write_back_data_12_IBUF_873,
      ADR1 => is_hazard_2_from_wb_0,
      ADR2 => is_hazard_2_from_alu_0,
      ADR3 => alu_write_back_data_12_IBUF_880,
      O => forward_data_2_12_2_2458
    );
  forward_data_2_12_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X90Y100"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => VCC,
      ADR2 => mem_write_back_data_12_IBUF_837,
      ADR3 => alu_write_back_data_12_IBUF_880,
      O => forward_data_2_12_1_2466
    );
  forward_data_1_3_2 : X_LUT4
    generic map(
      INIT => X"B888",
      LOC => "SLICE_X91Y71"
    )
    port map (
      ADR0 => alu_write_back_data_3_IBUF_833,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => wb_write_back_data_3_IBUF_870,
      ADR3 => is_hazard_1_from_wb_0,
      O => forward_data_1_3_2_2483
    );
  forward_data_1_3_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X91Y71"
    )
    port map (
      ADR0 => is_hazard_1_from_alu_0,
      ADR1 => mem_write_back_data_3_IBUF_855,
      ADR2 => alu_write_back_data_3_IBUF_833,
      ADR3 => VCC,
      O => forward_data_1_3_1_2491
    );
  forward_data_1_14_2 : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X79Y102"
    )
    port map (
      ADR0 => is_hazard_1_from_wb_0,
      ADR1 => wb_write_back_data_14_IBUF_775,
      ADR2 => is_hazard_1_from_alu_0,
      ADR3 => alu_write_back_data_14_IBUF_774,
      O => forward_data_1_14_2_2508
    );
  forward_data_1_14_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X79Y102"
    )
    port map (
      ADR0 => mem_write_back_data_14_IBUF_773,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => VCC,
      ADR3 => alu_write_back_data_14_IBUF_774,
      O => forward_data_1_14_1_2516
    );
  forward_data_2_6_2 : X_LUT4
    generic map(
      INIT => X"EC20",
      LOC => "SLICE_X90Y84"
    )
    port map (
      ADR0 => is_hazard_2_from_wb_0,
      ADR1 => is_hazard_2_from_alu_0,
      ADR2 => wb_write_back_data_6_IBUF_875,
      ADR3 => alu_write_back_data_6_IBUF_840,
      O => forward_data_2_6_2_2533
    );
  forward_data_2_6_1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X90Y84"
    )
    port map (
      ADR0 => is_hazard_2_from_alu_0,
      ADR1 => mem_write_back_data_6_IBUF_862,
      ADR2 => VCC,
      ADR3 => alu_write_back_data_6_IBUF_840,
      O => forward_data_2_6_1_2541
    );
  forward_data_2_13_2 : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X78Y118"
    )
    port map (
      ADR0 => is_hazard_2_from_wb_0,
      ADR1 => wb_write_back_data_13_IBUF_874,
      ADR2 => alu_write_back_data_13_IBUF_881,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_13_2_2558
    );
  forward_data_2_13_1 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X78Y118"
    )
    port map (
      ADR0 => VCC,
      ADR1 => is_hazard_2_from_alu_0,
      ADR2 => alu_write_back_data_13_IBUF_881,
      ADR3 => mem_write_back_data_13_IBUF_838,
      O => forward_data_2_13_1_2566
    );
  forward_data_2_0_2 : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X91Y72"
    )
    port map (
      ADR0 => wb_write_back_data_0_IBUF_867,
      ADR1 => alu_write_back_data_0_IBUF_827,
      ADR2 => is_hazard_2_from_alu_0,
      ADR3 => is_hazard_2_from_wb_0,
      O => forward_data_2_0_2_2583
    );
  forward_data_2_0_1 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X91Y72"
    )
    port map (
      ADR0 => alu_write_back_data_0_IBUF_827,
      ADR1 => VCC,
      ADR2 => mem_write_back_data_0_IBUF_849,
      ADR3 => is_hazard_2_from_alu_0,
      O => forward_data_2_0_1_2591
    );
  forward_data_1_4_2 : X_LUT4
    generic map(
      INIT => X"F088",
      LOC => "SLICE_X90Y76"
    )
    port map (
      ADR0 => is_hazard_1_from_wb_0,
      ADR1 => wb_write_back_data_4_IBUF_872,
      ADR2 => alu_write_back_data_4_IBUF_836,
      ADR3 => is_hazard_1_from_alu_0,
      O => forward_data_1_4_2_2608
    );
  forward_data_1_4_1 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X90Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => is_hazard_1_from_alu_0,
      ADR2 => alu_write_back_data_4_IBUF_836,
      ADR3 => mem_write_back_data_4_IBUF_858,
      O => forward_data_1_4_1_2616
    );
  forward_data_1_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_10_OBUF_F5MUX_1968,
      O => forward_data_1_10_O
    );
  forward_data_1_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_11_OBUF_F5MUX_2118,
      O => forward_data_1_11_O
    );
  forward_data_1_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_12_OBUF_F5MUX_2268,
      O => forward_data_1_12_O
    );
  forward_data_1_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_13_OBUF_F5MUX_2393,
      O => forward_data_1_13_O
    );
  forward_data_1_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_14_OBUF_F5MUX_2518,
      O => forward_data_1_14_O
    );
  forward_data_1_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_15_OBUF_F5MUX_905,
      O => forward_data_1_15_O
    );
  forward_data_2_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_10_OBUF_F5MUX_2218,
      O => forward_data_2_10_O
    );
  forward_data_2_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_11_OBUF_F5MUX_2343,
      O => forward_data_2_11_O
    );
  forward_data_2_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_12_OBUF_F5MUX_2468,
      O => forward_data_2_12_O
    );
  forward_data_2_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_13_OBUF_F5MUX_2568,
      O => forward_data_2_13_O
    );
  forward_data_2_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_14_OBUF_F5MUX_955,
      O => forward_data_2_14_O
    );
  forward_data_2_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_15_OBUF_F5MUX_2018,
      O => forward_data_2_15_O
    );
  forward_data_1_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_0_OBUF_F5MUX_2093,
      O => forward_data_1_0_O
    );
  forward_data_1_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_1_OBUF_F5MUX_2243,
      O => forward_data_1_1_O
    );
  forward_data_1_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_2_OBUF_F5MUX_2368,
      O => forward_data_1_2_O
    );
  forward_data_1_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_3_OBUF_F5MUX_2493,
      O => forward_data_1_3_O
    );
  forward_data_2_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_0_OBUF_F5MUX_2593,
      O => forward_data_2_0_O
    );
  forward_data_1_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_4_OBUF_F5MUX_2618,
      O => forward_data_1_4_O
    );
  forward_data_2_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_1_OBUF_F5MUX_980,
      O => forward_data_2_1_O
    );
  forward_data_1_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_5_OBUF_F5MUX_1005,
      O => forward_data_1_5_O
    );
  forward_data_2_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_2_OBUF_F5MUX_2043,
      O => forward_data_2_2_O
    );
  forward_data_1_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_6_OBUF_F5MUX_2068,
      O => forward_data_1_6_O
    );
  forward_data_2_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_3_OBUF_F5MUX_2168,
      O => forward_data_2_3_O
    );
  forward_data_1_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_7_OBUF_F5MUX_2193,
      O => forward_data_1_7_O
    );
  forward_data_2_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_4_OBUF_F5MUX_2293,
      O => forward_data_2_4_O
    );
  forward_data_1_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_8_OBUF_F5MUX_2318,
      O => forward_data_1_8_O
    );
  forward_data_2_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_5_OBUF_F5MUX_2418,
      O => forward_data_2_5_O
    );
  forward_data_1_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_1_9_OBUF_F5MUX_2443,
      O => forward_data_1_9_O
    );
  forward_data_2_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_6_OBUF_F5MUX_2543,
      O => forward_data_2_6_O
    );
  forward_data_2_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_7_OBUF_F5MUX_930,
      O => forward_data_2_7_O
    );
  forward_data_2_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_8_OBUF_F5MUX_1993,
      O => forward_data_2_8_O
    );
  forward_data_2_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 798 ps
    )
    port map (
      I => forward_data_2_9_OBUF_F5MUX_2143,
      O => forward_data_2_9_O
    );
  is_hazard_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_1_OBUF_1076,
      O => is_hazard_1_O
    );
  is_hazard_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 798 ps
    )
    port map (
      I => is_hazard_2_OBUF_1052,
      O => is_hazard_2_O
    );
  NlwBlock_RAW_hazard_detector_and_forward_unit_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

