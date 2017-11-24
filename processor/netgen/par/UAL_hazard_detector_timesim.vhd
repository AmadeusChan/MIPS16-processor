--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: UAL_hazard_detector_timesim.vhd
-- /___/   /\     Timestamp: Fri Nov 24 16:53:59 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf UAL_hazard_detector.pcf -rpw 100 -tpw 0 -ar Structure -tm UAL_hazard_detector -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim UAL_hazard_detector.ncd UAL_hazard_detector_timesim.vhd 
-- Device	: 3s1200efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: UAL_hazard_detector.ncd
-- Output file	: \\vmware-host\shared folders\amadeus\academic_materials\Semester_Fall2017\Computer_Orgnization\projects\MIPS16-processor\processor\netgen\par\UAL_hazard_detector_timesim.vhd
-- # of Entities	: 1
-- Design Name	: UAL_hazard_detector
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

entity UAL_hazard_detector is
  port (
    clk : in STD_LOGIC := 'X'; 
    reg_write_enable : in STD_LOGIC := 'X'; 
    is_ual_hazard_1 : out STD_LOGIC; 
    is_ual_hazard_2 : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    bubble : out STD_LOGIC; 
    mem_read : in STD_LOGIC := 'X'; 
    stall : out STD_LOGIC; 
    write_back_reg : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    read_reg1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    read_reg2 : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end UAL_hazard_detector;

architecture Structure of UAL_hazard_detector is
  signal stall_OBUF_125 : STD_LOGIC; 
  signal write_back_reg_0_IBUF_126 : STD_LOGIC; 
  signal write_back_reg_1_IBUF_127 : STD_LOGIC; 
  signal write_back_reg_2_IBUF_128 : STD_LOGIC; 
  signal write_back_reg_3_IBUF_129 : STD_LOGIC; 
  signal read_reg1_0_IBUF_130 : STD_LOGIC; 
  signal read_reg1_1_IBUF_131 : STD_LOGIC; 
  signal read_reg1_2_IBUF_132 : STD_LOGIC; 
  signal read_reg1_3_IBUF_133 : STD_LOGIC; 
  signal read_reg2_0_IBUF_134 : STD_LOGIC; 
  signal read_reg2_1_IBUF_135 : STD_LOGIC; 
  signal mem_read_IBUF_136 : STD_LOGIC; 
  signal read_reg2_2_IBUF_137 : STD_LOGIC; 
  signal read_reg2_3_IBUF_138 : STD_LOGIC; 
  signal is_ual_hazard_1_OBUF_139 : STD_LOGIC; 
  signal is_ual_hazard_2_OBUF_140 : STD_LOGIC; 
  signal rst_IBUF_141 : STD_LOGIC; 
  signal reg_write_enable_IBUF_142 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal is_ual_hazard_1_not0001_0 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0000_0 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0001_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0001426_0 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0000426_0 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0000453_152 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0001453_153 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal bubble_O : STD_LOGIC; 
  signal write_back_reg_0_INBUF : STD_LOGIC; 
  signal stall_O : STD_LOGIC; 
  signal write_back_reg_1_INBUF : STD_LOGIC; 
  signal write_back_reg_2_INBUF : STD_LOGIC; 
  signal write_back_reg_3_INBUF : STD_LOGIC; 
  signal read_reg1_0_INBUF : STD_LOGIC; 
  signal read_reg1_1_INBUF : STD_LOGIC; 
  signal read_reg1_2_INBUF : STD_LOGIC; 
  signal read_reg1_3_INBUF : STD_LOGIC; 
  signal read_reg2_0_INBUF : STD_LOGIC; 
  signal read_reg2_1_INBUF : STD_LOGIC; 
  signal mem_read_INBUF : STD_LOGIC; 
  signal read_reg2_2_INBUF : STD_LOGIC; 
  signal read_reg2_3_INBUF : STD_LOGIC; 
  signal is_ual_hazard_1_O : STD_LOGIC; 
  signal is_ual_hazard_2_O : STD_LOGIC; 
  signal rst_INBUF : STD_LOGIC; 
  signal reg_write_enable_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal is_ual_hazard_1_OBUF_DYMUX_305 : STD_LOGIC; 
  signal is_ual_hazard_1_mux0000 : STD_LOGIC; 
  signal is_ual_hazard_1_OBUF_CLKINV_296 : STD_LOGIC; 
  signal is_ual_hazard_1_OBUF_CEINV_295 : STD_LOGIC; 
  signal is_ual_hazard_2_OBUF_DXMUX_343 : STD_LOGIC; 
  signal is_ual_hazard_2_mux0000_340 : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal is_ual_hazard_2_OBUF_CLKINV_325 : STD_LOGIC; 
  signal is_ual_hazard_2_OBUF_CEINV_324 : STD_LOGIC; 
  signal is_ual_hazard_2_OBUF_FFX_RSTAND_349 : STD_LOGIC; 
  signal is_ual_hazard_1_not0001 : STD_LOGIC; 
  signal stall_OBUF_pack_1 : STD_LOGIC; 
  signal state_0_DYMUX_384 : STD_LOGIC; 
  signal state_0_CLKINV_381 : STD_LOGIC; 
  signal state_0_CEINV_380 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0001426_413 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0000426_406 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0000 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0000453_pack_1 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0001 : STD_LOGIC; 
  signal is_ual_hazard_2_tmp_cmp_eq0001453_pack_1 : STD_LOGIC; 
  signal is_ual_hazard_1_OBUF_FFY_RSTAND_311 : STD_LOGIC; 
  signal state_0_FFY_RSTAND_390 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD38",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  bubble_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => bubble_O,
      O => bubble
    );
  write_back_reg_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_back_reg(0),
      O => write_back_reg_0_INBUF
    );
  stall_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => stall_O,
      O => stall
    );
  write_back_reg_1_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_back_reg(1),
      O => write_back_reg_1_INBUF
    );
  write_back_reg_2_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_back_reg(2),
      O => write_back_reg_2_INBUF
    );
  write_back_reg_3_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_back_reg(3),
      O => write_back_reg_3_INBUF
    );
  read_reg1_0_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg1(0),
      O => read_reg1_0_INBUF
    );
  read_reg1_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg1(1),
      O => read_reg1_1_INBUF
    );
  read_reg1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg1(2),
      O => read_reg1_2_INBUF
    );
  read_reg1_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg1_2_INBUF,
      O => read_reg1_2_IBUF_132
    );
  read_reg1_3_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg1(3),
      O => read_reg1_3_INBUF
    );
  read_reg1_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg1_3_INBUF,
      O => read_reg1_3_IBUF_133
    );
  read_reg2_0_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg2(0),
      O => read_reg2_0_INBUF
    );
  read_reg2_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg2_0_INBUF,
      O => read_reg2_0_IBUF_134
    );
  read_reg2_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg2(1),
      O => read_reg2_1_INBUF
    );
  mem_read_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 638 ps
    )
    port map (
      I => mem_read,
      O => mem_read_INBUF
    );
  read_reg2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg2(2),
      O => read_reg2_2_INBUF
    );
  read_reg2_3_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg2(3),
      O => read_reg2_3_INBUF
    );
  is_ual_hazard_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => is_ual_hazard_1_O,
      O => is_ual_hazard_1
    );
  is_ual_hazard_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => is_ual_hazard_2_O,
      O => is_ual_hazard_2
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_141
    );
  reg_write_enable_IBUF : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_write_enable,
      O => reg_write_enable_INBUF
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  is_ual_hazard_1_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_1_mux0000,
      O => is_ual_hazard_1_OBUF_DYMUX_305
    );
  is_ual_hazard_1_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => is_ual_hazard_1_OBUF_CLKINV_296
    );
  is_ual_hazard_1_OBUF_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_1_not0001_0,
      O => is_ual_hazard_1_OBUF_CEINV_295
    );
  is_ual_hazard_2_OBUF_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_2_mux0000_340,
      O => is_ual_hazard_2_OBUF_DXMUX_343
    );
  is_ual_hazard_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  is_ual_hazard_2_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => is_ual_hazard_2_OBUF_CLKINV_325
    );
  is_ual_hazard_2_OBUF_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_1_not0001_0,
      O => is_ual_hazard_2_OBUF_CEINV_324
    );
  is_ual_hazard_2_217 : X_FF
    generic map(
      LOC => "SLICE_X91Y27",
      INIT => '0'
    )
    port map (
      I => is_ual_hazard_2_OBUF_DXMUX_343,
      CE => is_ual_hazard_2_OBUF_CEINV_324,
      CLK => is_ual_hazard_2_OBUF_CLKINV_325,
      SET => GND,
      RST => is_ual_hazard_2_OBUF_FFX_RSTAND_349,
      O => is_ual_hazard_2_OBUF_140
    );
  is_ual_hazard_2_OBUF_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X91Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_141,
      O => is_ual_hazard_2_OBUF_FFX_RSTAND_349
    );
  is_ual_hazard_1_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_1_not0001,
      O => is_ual_hazard_1_not0001_0
    );
  is_ual_hazard_1_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => stall_OBUF_pack_1,
      O => stall_OBUF_125
    );
  stall1 : X_LUT4
    generic map(
      INIT => X"E000",
      LOC => "SLICE_X91Y24"
    )
    port map (
      ADR0 => is_ual_hazard_2_tmp_cmp_eq0000_0,
      ADR1 => is_ual_hazard_2_tmp_cmp_eq0001_0,
      ADR2 => mem_read_IBUF_136,
      ADR3 => reg_write_enable_IBUF_142,
      O => stall_OBUF_pack_1
    );
  state_0_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X90Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => state(0),
      O => state_0_DYMUX_384
    );
  state_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => state_0_CLKINV_381
    );
  state_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_1_not0001_0,
      O => state_0_CEINV_380
    );
  is_ual_hazard_2_tmp_cmp_eq0001426_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_2_tmp_cmp_eq0001426_413,
      O => is_ual_hazard_2_tmp_cmp_eq0001426_0
    );
  is_ual_hazard_2_tmp_cmp_eq0001426_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_2_tmp_cmp_eq0000426_406,
      O => is_ual_hazard_2_tmp_cmp_eq0000426_0
    );
  is_ual_hazard_2_tmp_cmp_eq0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_2_tmp_cmp_eq0000,
      O => is_ual_hazard_2_tmp_cmp_eq0000_0
    );
  is_ual_hazard_2_tmp_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_2_tmp_cmp_eq0000453_pack_1,
      O => is_ual_hazard_2_tmp_cmp_eq0000453_152
    );
  is_ual_hazard_2_tmp_cmp_eq0000454 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X91Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => is_ual_hazard_2_tmp_cmp_eq0000426_0,
      ADR3 => is_ual_hazard_2_tmp_cmp_eq0000453_152,
      O => is_ual_hazard_2_tmp_cmp_eq0000
    );
  is_ual_hazard_2_tmp_cmp_eq0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_2_tmp_cmp_eq0001,
      O => is_ual_hazard_2_tmp_cmp_eq0001_0
    );
  is_ual_hazard_2_tmp_cmp_eq0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_2_tmp_cmp_eq0001453_pack_1,
      O => is_ual_hazard_2_tmp_cmp_eq0001453_153
    );
  write_back_reg_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_back_reg_0_INBUF,
      O => write_back_reg_0_IBUF_126
    );
  write_back_reg_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_back_reg_1_INBUF,
      O => write_back_reg_1_IBUF_127
    );
  write_back_reg_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_back_reg_2_INBUF,
      O => write_back_reg_2_IBUF_128
    );
  write_back_reg_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_back_reg_3_INBUF,
      O => write_back_reg_3_IBUF_129
    );
  read_reg1_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg1_0_INBUF,
      O => read_reg1_0_IBUF_130
    );
  read_reg1_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD141",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg1_1_INBUF,
      O => read_reg1_1_IBUF_131
    );
  read_reg2_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg2_1_INBUF,
      O => read_reg2_1_IBUF_135
    );
  mem_read_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 638 ps
    )
    port map (
      I => mem_read_INBUF,
      O => mem_read_IBUF_136
    );
  read_reg2_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg2_2_INBUF,
      O => read_reg2_2_IBUF_137
    );
  read_reg2_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_reg2_3_INBUF,
      O => read_reg2_3_IBUF_138
    );
  reg_write_enable_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_write_enable_INBUF,
      O => reg_write_enable_IBUF_142
    );
  is_ual_hazard_1_mux00001 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X90Y23"
    )
    port map (
      ADR0 => reg_write_enable_IBUF_142,
      ADR1 => mem_read_IBUF_136,
      ADR2 => state(0),
      ADR3 => is_ual_hazard_2_tmp_cmp_eq0000_0,
      O => is_ual_hazard_1_mux0000
    );
  is_ual_hazard_1_202 : X_FF
    generic map(
      LOC => "SLICE_X90Y23",
      INIT => '0'
    )
    port map (
      I => is_ual_hazard_1_OBUF_DYMUX_305,
      CE => is_ual_hazard_1_OBUF_CEINV_295,
      CLK => is_ual_hazard_1_OBUF_CLKINV_296,
      SET => GND,
      RST => is_ual_hazard_1_OBUF_FFY_RSTAND_311,
      O => is_ual_hazard_1_OBUF_139
    );
  is_ual_hazard_1_OBUF_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X90Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_141,
      O => is_ual_hazard_1_OBUF_FFY_RSTAND_311
    );
  is_ual_hazard_2_mux0000_SW0 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X91Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => mem_read_IBUF_136,
      ADR3 => reg_write_enable_IBUF_142,
      O => N2_pack_1
    );
  is_ual_hazard_2_mux0000 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X91Y27"
    )
    port map (
      ADR0 => state(0),
      ADR1 => is_ual_hazard_2_tmp_cmp_eq0001_0,
      ADR2 => is_ual_hazard_2_tmp_cmp_eq0000_0,
      ADR3 => N2,
      O => is_ual_hazard_2_mux0000_340
    );
  is_ual_hazard_1_not00011 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X91Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => stall_OBUF_125,
      ADR3 => state(0),
      O => is_ual_hazard_1_not0001
    );
  state_0 : X_FF
    generic map(
      LOC => "SLICE_X90Y22",
      INIT => '0'
    )
    port map (
      I => state_0_DYMUX_384,
      CE => state_0_CEINV_380,
      CLK => state_0_CLKINV_381,
      SET => GND,
      RST => state_0_FFY_RSTAND_390,
      O => state(0)
    );
  state_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X90Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => rst_IBUF_141,
      O => state_0_FFY_RSTAND_390
    );
  is_ual_hazard_2_tmp_cmp_eq0000426 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X91Y26"
    )
    port map (
      ADR0 => read_reg1_1_IBUF_131,
      ADR1 => write_back_reg_1_IBUF_127,
      ADR2 => read_reg1_0_IBUF_130,
      ADR3 => write_back_reg_0_IBUF_126,
      O => is_ual_hazard_2_tmp_cmp_eq0000426_406
    );
  is_ual_hazard_2_tmp_cmp_eq0001426 : X_LUT4
    generic map(
      INIT => X"8241",
      LOC => "SLICE_X91Y26"
    )
    port map (
      ADR0 => write_back_reg_1_IBUF_127,
      ADR1 => read_reg2_0_IBUF_134,
      ADR2 => write_back_reg_0_IBUF_126,
      ADR3 => read_reg2_1_IBUF_135,
      O => is_ual_hazard_2_tmp_cmp_eq0001426_413
    );
  is_ual_hazard_2_tmp_cmp_eq0000453 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X91Y25"
    )
    port map (
      ADR0 => read_reg1_3_IBUF_133,
      ADR1 => write_back_reg_3_IBUF_129,
      ADR2 => read_reg1_2_IBUF_132,
      ADR3 => write_back_reg_2_IBUF_128,
      O => is_ual_hazard_2_tmp_cmp_eq0000453_pack_1
    );
  is_ual_hazard_2_tmp_cmp_eq0001453 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X91Y30"
    )
    port map (
      ADR0 => write_back_reg_2_IBUF_128,
      ADR1 => read_reg2_2_IBUF_137,
      ADR2 => write_back_reg_3_IBUF_129,
      ADR3 => read_reg2_3_IBUF_138,
      O => is_ual_hazard_2_tmp_cmp_eq0001453_pack_1
    );
  is_ual_hazard_2_tmp_cmp_eq0001454 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X91Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => is_ual_hazard_2_tmp_cmp_eq0001426_0,
      ADR2 => is_ual_hazard_2_tmp_cmp_eq0001453_153,
      ADR3 => VCC,
      O => is_ual_hazard_2_tmp_cmp_eq0001
    );
  bubble_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 638 ps
    )
    port map (
      I => stall_OBUF_125,
      O => bubble_O
    );
  stall_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 638 ps
    )
    port map (
      I => stall_OBUF_125,
      O => stall_O
    );
  is_ual_hazard_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_1_OBUF_139,
      O => is_ual_hazard_1_O
    );
  is_ual_hazard_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 638 ps
    )
    port map (
      I => is_ual_hazard_2_OBUF_140,
      O => is_ual_hazard_2_O
    );
  NlwBlock_UAL_hazard_detector_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_UAL_hazard_detector_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

