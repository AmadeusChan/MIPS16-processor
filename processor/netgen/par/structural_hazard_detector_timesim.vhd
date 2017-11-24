--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: structural_hazard_detector_timesim.vhd
-- /___/   /\     Timestamp: Fri Nov 24 20:55:03 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf structural_hazard_detector.pcf -rpw 100 -tpw 0 -ar Structure -tm structural_hazard_detector -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim structural_hazard_detector.ncd structural_hazard_detector_timesim.vhd 
-- Device	: 3s1200efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: structural_hazard_detector.ncd
-- Output file	: \\vmware-host\shared folders\amadeus\academic_materials\Semester_Fall2017\Computer_Orgnization\projects\MIPS16-processor\processor\netgen\par\structural_hazard_detector_timesim.vhd
-- # of Entities	: 1
-- Design Name	: structural_hazard_detector
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

entity structural_hazard_detector is
  port (
    mem_write_in : in STD_LOGIC := 'X'; 
    ram2_oe : out STD_LOGIC; 
    is_hazard : out STD_LOGIC; 
    ram2_we : out STD_LOGIC; 
    ram2_in_address : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    ram2_in_data : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    mem_address_in : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    mem_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end structural_hazard_detector;

architecture Structure of structural_hazard_detector is
  signal ram2_in_address_15_OBUF_209 : STD_LOGIC; 
  signal ram2_we_OBUF_0 : STD_LOGIC; 
  signal mem_write_in_IBUF_212 : STD_LOGIC; 
  signal mem_address_in_13_INBUF : STD_LOGIC; 
  signal mem_address_in_14_INBUF : STD_LOGIC; 
  signal mem_address_in_15_INBUF : STD_LOGIC; 
  signal is_hazard_O : STD_LOGIC; 
  signal ram2_oe_O : STD_LOGIC; 
  signal mem_write_in_INBUF : STD_LOGIC; 
  signal ram2_in_address_0_O : STD_LOGIC; 
  signal mem_data_in_10_INBUF : STD_LOGIC; 
  signal ram2_in_address_1_O : STD_LOGIC; 
  signal mem_data_in_11_INBUF : STD_LOGIC; 
  signal ram2_in_address_2_O : STD_LOGIC; 
  signal mem_data_in_12_INBUF : STD_LOGIC; 
  signal ram2_in_address_3_O : STD_LOGIC; 
  signal mem_data_in_13_INBUF : STD_LOGIC; 
  signal ram2_in_data_10_O : STD_LOGIC; 
  signal ram2_in_address_4_O : STD_LOGIC; 
  signal mem_data_in_14_INBUF : STD_LOGIC; 
  signal ram2_in_data_11_O : STD_LOGIC; 
  signal ram2_in_address_5_O : STD_LOGIC; 
  signal mem_data_in_15_INBUF : STD_LOGIC; 
  signal ram2_in_data_12_O : STD_LOGIC; 
  signal ram2_we_O : STD_LOGIC; 
  signal ram2_in_address_6_O : STD_LOGIC; 
  signal ram2_in_data_13_O : STD_LOGIC; 
  signal mem_address_in_0_INBUF : STD_LOGIC; 
  signal ram2_in_address_7_O : STD_LOGIC; 
  signal ram2_in_data_14_O : STD_LOGIC; 
  signal mem_address_in_1_INBUF : STD_LOGIC; 
  signal ram2_in_address_8_O : STD_LOGIC; 
  signal ram2_in_data_15_O : STD_LOGIC; 
  signal mem_address_in_2_INBUF : STD_LOGIC; 
  signal ram2_in_address_9_O : STD_LOGIC; 
  signal mem_address_in_3_INBUF : STD_LOGIC; 
  signal mem_address_in_4_INBUF : STD_LOGIC; 
  signal mem_address_in_5_INBUF : STD_LOGIC; 
  signal ram2_in_data_0_O : STD_LOGIC; 
  signal mem_address_in_6_INBUF : STD_LOGIC; 
  signal ram2_in_data_1_O : STD_LOGIC; 
  signal mem_address_in_7_INBUF : STD_LOGIC; 
  signal ram2_in_data_2_O : STD_LOGIC; 
  signal mem_address_in_8_INBUF : STD_LOGIC; 
  signal ram2_in_data_3_O : STD_LOGIC; 
  signal mem_address_in_9_INBUF : STD_LOGIC; 
  signal ram2_in_data_4_O : STD_LOGIC; 
  signal ram2_in_data_5_O : STD_LOGIC; 
  signal ram2_in_data_6_O : STD_LOGIC; 
  signal ram2_in_data_7_O : STD_LOGIC; 
  signal ram2_in_data_8_O : STD_LOGIC; 
  signal ram2_in_data_9_O : STD_LOGIC; 
  signal ram2_in_address_10_O : STD_LOGIC; 
  signal ram2_in_address_11_O : STD_LOGIC; 
  signal ram2_in_address_12_O : STD_LOGIC; 
  signal ram2_in_address_13_O : STD_LOGIC; 
  signal ram2_in_address_14_O : STD_LOGIC; 
  signal ram2_in_address_15_O : STD_LOGIC; 
  signal mem_data_in_0_INBUF : STD_LOGIC; 
  signal mem_data_in_1_INBUF : STD_LOGIC; 
  signal mem_data_in_2_INBUF : STD_LOGIC; 
  signal mem_data_in_3_INBUF : STD_LOGIC; 
  signal mem_data_in_4_INBUF : STD_LOGIC; 
  signal ram2_we_OBUF_681 : STD_LOGIC; 
  signal mem_data_in_5_INBUF : STD_LOGIC; 
  signal mem_data_in_6_INBUF : STD_LOGIC; 
  signal mem_address_in_10_INBUF : STD_LOGIC; 
  signal mem_data_in_7_INBUF : STD_LOGIC; 
  signal mem_address_in_11_INBUF : STD_LOGIC; 
  signal mem_data_in_8_INBUF : STD_LOGIC; 
  signal mem_address_in_12_INBUF : STD_LOGIC; 
  signal mem_data_in_9_INBUF : STD_LOGIC; 
  signal ram2_oe_OUTPUT_OFF_O1INV_275 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  mem_address_in_13_IBUF : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(13),
      O => mem_address_in_13_INBUF
    );
  mem_address_in_14_IBUF : X_BUF
    generic map(
      LOC => "IPAD79",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(14),
      O => mem_address_in_14_INBUF
    );
  mem_address_in_15_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(15),
      O => mem_address_in_15_INBUF
    );
  is_hazard_OBUF : X_OBUF
    generic map(
      LOC => "PAD73"
    )
    port map (
      I => is_hazard_O,
      O => is_hazard
    );
  ram2_oe_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => ram2_oe_O,
      O => ram2_oe
    );
  mem_write_in_IBUF : X_BUF
    generic map(
      LOC => "IPAD75",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_in,
      O => mem_write_in_INBUF
    );
  mem_write_in_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD75",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_write_in_INBUF,
      O => mem_write_in_IBUF_212
    );
  ram2_in_address_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => ram2_in_address_0_O,
      O => ram2_in_address(0)
    );
  mem_data_in_10_IBUF : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(10),
      O => mem_data_in_10_INBUF
    );
  ram2_in_address_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => ram2_in_address_1_O,
      O => ram2_in_address(1)
    );
  mem_data_in_11_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(11),
      O => mem_data_in_11_INBUF
    );
  ram2_in_address_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => ram2_in_address_2_O,
      O => ram2_in_address(2)
    );
  mem_data_in_12_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(12),
      O => mem_data_in_12_INBUF
    );
  ram2_in_address_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => ram2_in_address_3_O,
      O => ram2_in_address(3)
    );
  mem_data_in_13_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(13),
      O => mem_data_in_13_INBUF
    );
  ram2_in_data_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD132"
    )
    port map (
      I => ram2_in_data_10_O,
      O => ram2_in_data(10)
    );
  ram2_in_address_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => ram2_in_address_4_O,
      O => ram2_in_address(4)
    );
  mem_data_in_14_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(14),
      O => mem_data_in_14_INBUF
    );
  ram2_in_data_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => ram2_in_data_11_O,
      O => ram2_in_data(11)
    );
  ram2_in_address_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => ram2_in_address_5_O,
      O => ram2_in_address(5)
    );
  mem_data_in_15_IBUF : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(15),
      O => mem_data_in_15_INBUF
    );
  ram2_in_data_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => ram2_in_data_12_O,
      O => ram2_in_data(12)
    );
  ram2_we_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => ram2_we_O,
      O => ram2_we
    );
  ram2_in_address_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => ram2_in_address_6_O,
      O => ram2_in_address(6)
    );
  ram2_in_data_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => ram2_in_data_13_O,
      O => ram2_in_data(13)
    );
  mem_address_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(0),
      O => mem_address_in_0_INBUF
    );
  ram2_in_address_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => ram2_in_address_7_O,
      O => ram2_in_address(7)
    );
  ram2_in_data_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD158"
    )
    port map (
      I => ram2_in_data_14_O,
      O => ram2_in_data(14)
    );
  mem_address_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(1),
      O => mem_address_in_1_INBUF
    );
  ram2_in_address_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => ram2_in_address_8_O,
      O => ram2_in_address(8)
    );
  ram2_in_data_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => ram2_in_data_15_O,
      O => ram2_in_data(15)
    );
  mem_address_in_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD101",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(2),
      O => mem_address_in_2_INBUF
    );
  ram2_in_address_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => ram2_in_address_9_O,
      O => ram2_in_address(9)
    );
  mem_address_in_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD96",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(3),
      O => mem_address_in_3_INBUF
    );
  mem_address_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(4),
      O => mem_address_in_4_INBUF
    );
  mem_address_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(5),
      O => mem_address_in_5_INBUF
    );
  ram2_in_data_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => ram2_in_data_0_O,
      O => ram2_in_data(0)
    );
  mem_address_in_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD91",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(6),
      O => mem_address_in_6_INBUF
    );
  ram2_in_data_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => ram2_in_data_1_O,
      O => ram2_in_data(1)
    );
  mem_address_in_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(7),
      O => mem_address_in_7_INBUF
    );
  ram2_in_data_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => ram2_in_data_2_O,
      O => ram2_in_data(2)
    );
  mem_address_in_8_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(8),
      O => mem_address_in_8_INBUF
    );
  ram2_in_data_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => ram2_in_data_3_O,
      O => ram2_in_data(3)
    );
  mem_address_in_9_IBUF : X_BUF
    generic map(
      LOC => "IPAD111",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(9),
      O => mem_address_in_9_INBUF
    );
  ram2_in_data_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => ram2_in_data_4_O,
      O => ram2_in_data(4)
    );
  ram2_in_data_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => ram2_in_data_5_O,
      O => ram2_in_data(5)
    );
  ram2_in_data_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => ram2_in_data_6_O,
      O => ram2_in_data(6)
    );
  ram2_in_data_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => ram2_in_data_7_O,
      O => ram2_in_data(7)
    );
  ram2_in_data_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => ram2_in_data_8_O,
      O => ram2_in_data(8)
    );
  ram2_in_data_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => ram2_in_data_9_O,
      O => ram2_in_data(9)
    );
  ram2_in_address_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => ram2_in_address_10_O,
      O => ram2_in_address(10)
    );
  ram2_in_address_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => ram2_in_address_11_O,
      O => ram2_in_address(11)
    );
  ram2_in_address_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => ram2_in_address_12_O,
      O => ram2_in_address(12)
    );
  ram2_in_address_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => ram2_in_address_13_O,
      O => ram2_in_address(13)
    );
  ram2_in_address_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => ram2_in_address_14_O,
      O => ram2_in_address(14)
    );
  ram2_in_address_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD76"
    )
    port map (
      I => ram2_in_address_15_O,
      O => ram2_in_address(15)
    );
  mem_data_in_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(0),
      O => mem_data_in_0_INBUF
    );
  mem_data_in_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(1),
      O => mem_data_in_1_INBUF
    );
  mem_data_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(2),
      O => mem_data_in_2_INBUF
    );
  mem_data_in_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(3),
      O => mem_data_in_3_INBUF
    );
  mem_data_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(4),
      O => mem_data_in_4_INBUF
    );
  ram2_we_and00001 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X88Y119"
    )
    port map (
      ADR0 => ram2_in_address_15_OBUF_209,
      ADR1 => VCC,
      ADR2 => mem_write_in_IBUF_212,
      ADR3 => VCC,
      O => ram2_we_OBUF_681
    );
  ram2_we_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X88Y119",
      PATHPULSE => 798 ps
    )
    port map (
      I => ram2_we_OBUF_681,
      O => ram2_we_OBUF_0
    );
  mem_data_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(5),
      O => mem_data_in_5_INBUF
    );
  mem_data_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(6),
      O => mem_data_in_6_INBUF
    );
  mem_address_in_10_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(10),
      O => mem_address_in_10_INBUF
    );
  mem_data_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(7),
      O => mem_data_in_7_INBUF
    );
  mem_address_in_11_IBUF : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(11),
      O => mem_address_in_11_INBUF
    );
  mem_data_in_8_IBUF : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(8),
      O => mem_data_in_8_INBUF
    );
  mem_address_in_12_IBUF : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in(12),
      O => mem_address_in_12_INBUF
    );
  mem_data_in_9_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in(9),
      O => mem_data_in_9_INBUF
    );
  mem_address_in_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_15_INBUF,
      O => ram2_in_address_15_OBUF_209
    );
  is_hazard_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 798 ps
    )
    port map (
      I => ram2_we_OBUF_0,
      O => is_hazard_O
    );
  ram2_oe_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 798 ps
    )
    port map (
      I => ram2_oe_OUTPUT_OFF_O1INV_275,
      O => ram2_oe_O
    );
  ram2_oe_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 798 ps
    )
    port map (
      I => '1',
      O => ram2_oe_OUTPUT_OFF_O1INV_275
    );
  ram2_in_address_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_0_INBUF,
      O => ram2_in_address_0_O
    );
  ram2_in_address_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_1_INBUF,
      O => ram2_in_address_1_O
    );
  ram2_in_address_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_2_INBUF,
      O => ram2_in_address_2_O
    );
  ram2_in_address_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_3_INBUF,
      O => ram2_in_address_3_O
    );
  ram2_in_data_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_10_INBUF,
      O => ram2_in_data_10_O
    );
  ram2_in_address_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_4_INBUF,
      O => ram2_in_address_4_O
    );
  ram2_in_data_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_11_INBUF,
      O => ram2_in_data_11_O
    );
  ram2_in_address_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_5_INBUF,
      O => ram2_in_address_5_O
    );
  ram2_in_data_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_12_INBUF,
      O => ram2_in_data_12_O
    );
  ram2_we_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 798 ps
    )
    port map (
      I => ram2_we_OBUF_0,
      O => ram2_we_O
    );
  ram2_in_address_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_6_INBUF,
      O => ram2_in_address_6_O
    );
  ram2_in_data_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_13_INBUF,
      O => ram2_in_data_13_O
    );
  ram2_in_address_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_7_INBUF,
      O => ram2_in_address_7_O
    );
  ram2_in_data_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_14_INBUF,
      O => ram2_in_data_14_O
    );
  ram2_in_address_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_8_INBUF,
      O => ram2_in_address_8_O
    );
  ram2_in_data_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_15_INBUF,
      O => ram2_in_data_15_O
    );
  ram2_in_address_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_9_INBUF,
      O => ram2_in_address_9_O
    );
  ram2_in_data_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_0_INBUF,
      O => ram2_in_data_0_O
    );
  ram2_in_data_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_1_INBUF,
      O => ram2_in_data_1_O
    );
  ram2_in_data_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_2_INBUF,
      O => ram2_in_data_2_O
    );
  ram2_in_data_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_3_INBUF,
      O => ram2_in_data_3_O
    );
  ram2_in_data_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_4_INBUF,
      O => ram2_in_data_4_O
    );
  ram2_in_data_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_5_INBUF,
      O => ram2_in_data_5_O
    );
  ram2_in_data_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_6_INBUF,
      O => ram2_in_data_6_O
    );
  ram2_in_data_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_7_INBUF,
      O => ram2_in_data_7_O
    );
  ram2_in_data_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_8_INBUF,
      O => ram2_in_data_8_O
    );
  ram2_in_data_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_data_in_9_INBUF,
      O => ram2_in_data_9_O
    );
  ram2_in_address_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_10_INBUF,
      O => ram2_in_address_10_O
    );
  ram2_in_address_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_11_INBUF,
      O => ram2_in_address_11_O
    );
  ram2_in_address_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_12_INBUF,
      O => ram2_in_address_12_O
    );
  ram2_in_address_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_13_INBUF,
      O => ram2_in_address_13_O
    );
  ram2_in_address_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 798 ps
    )
    port map (
      I => mem_address_in_14_INBUF,
      O => ram2_in_address_14_O
    );
  ram2_in_address_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 798 ps
    )
    port map (
      I => ram2_in_address_15_OBUF_209,
      O => ram2_in_address_15_O
    );
  NlwBlock_structural_hazard_detector_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

