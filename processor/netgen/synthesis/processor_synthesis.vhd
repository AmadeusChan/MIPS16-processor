--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: processor_synthesis.vhd
-- /___/   /\     Timestamp: Sat Dec 02 21:57:19 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm processor -w -dir netgen/synthesis -ofmt vhdl -sim processor.ngc processor_synthesis.vhd 
-- Device	: xc3s1200e-4-fg320
-- Input file	: processor.ngc
-- Output file	: C:\Users\cslab\Downloads\MIPS16-processor-master\processor\netgen\synthesis\processor_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: processor
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity processor is
  port (
    clk : in STD_LOGIC := 'X'; 
    ram1_we : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    ram2_en : out STD_LOGIC; 
    hs : out STD_LOGIC; 
    data_ready : in STD_LOGIC := 'X'; 
    tbre : in STD_LOGIC := 'X'; 
    clk_manual : in STD_LOGIC := 'X'; 
    ram2_oe : out STD_LOGIC; 
    clk_serial_port : in STD_LOGIC := 'X'; 
    tsre : in STD_LOGIC := 'X'; 
    ram1_en : out STD_LOGIC; 
    vs : out STD_LOGIC; 
    ram2_we : out STD_LOGIC; 
    rdn : out STD_LOGIC; 
    wrn : out STD_LOGIC; 
    ram1_oe : out STD_LOGIC; 
    ram1_data : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    ram2_data : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    oGreen : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    ram1_addr : out STD_LOGIC_VECTOR ( 17 downto 0 ); 
    disp0 : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    disp1 : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    ram2_addr : out STD_LOGIC_VECTOR ( 17 downto 0 ); 
    oRed : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    oBlue : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    led : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    switch : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end processor;

architecture Structure of processor is
  component font
    port (
      clka : in STD_LOGIC := 'X'; 
      addra : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal ALU_MEM_regs_imp_mem_enable_out_32 : STD_LOGIC; 
  signal ALU_MEM_regs_imp_mem_read_out_33 : STD_LOGIC; 
  signal ALU_MEM_regs_imp_mem_write_out_34 : STD_LOGIC; 
  signal ALU_MEM_regs_imp_reg_write_enable_out_35 : STD_LOGIC; 
  signal ALU_MEM_regs_imp_rst_inv : STD_LOGIC; 
  signal ALU_imp_N01 : STD_LOGIC; 
  signal ALU_imp_N10 : STD_LOGIC; 
  signal ALU_imp_N11 : STD_LOGIC; 
  signal ALU_imp_N111 : STD_LOGIC; 
  signal ALU_imp_N12 : STD_LOGIC; 
  signal ALU_imp_N13 : STD_LOGIC; 
  signal ALU_imp_N17 : STD_LOGIC; 
  signal ALU_imp_N22 : STD_LOGIC; 
  signal ALU_imp_N24 : STD_LOGIC; 
  signal ALU_imp_N25 : STD_LOGIC; 
  signal ALU_imp_N27 : STD_LOGIC; 
  signal ALU_imp_N28 : STD_LOGIC; 
  signal ALU_imp_N4 : STD_LOGIC; 
  signal ALU_imp_N46 : STD_LOGIC; 
  signal ALU_imp_N5 : STD_LOGIC; 
  signal ALU_imp_N72 : STD_LOGIC; 
  signal ALU_imp_Sh10_104 : STD_LOGIC; 
  signal ALU_imp_Sh100_105 : STD_LOGIC; 
  signal ALU_imp_Sh101_106 : STD_LOGIC; 
  signal ALU_imp_Sh102_107 : STD_LOGIC; 
  signal ALU_imp_Sh103_108 : STD_LOGIC; 
  signal ALU_imp_Sh107_109 : STD_LOGIC; 
  signal ALU_imp_Sh108_110 : STD_LOGIC; 
  signal ALU_imp_Sh109_111 : STD_LOGIC; 
  signal ALU_imp_Sh11_112 : STD_LOGIC; 
  signal ALU_imp_Sh110_113 : STD_LOGIC; 
  signal ALU_imp_Sh111_114 : STD_LOGIC; 
  signal ALU_imp_Sh12_115 : STD_LOGIC; 
  signal ALU_imp_Sh13 : STD_LOGIC; 
  signal ALU_imp_Sh14 : STD_LOGIC; 
  signal ALU_imp_Sh16113_118 : STD_LOGIC; 
  signal ALU_imp_Sh16128_119 : STD_LOGIC; 
  signal ALU_imp_Sh18114_120 : STD_LOGIC; 
  signal ALU_imp_Sh18127_121 : STD_LOGIC; 
  signal ALU_imp_Sh32 : STD_LOGIC; 
  signal ALU_imp_Sh33 : STD_LOGIC; 
  signal ALU_imp_Sh34_124 : STD_LOGIC; 
  signal ALU_imp_Sh5_125 : STD_LOGIC; 
  signal ALU_imp_Sh6_126 : STD_LOGIC; 
  signal ALU_imp_Sh7_127 : STD_LOGIC; 
  signal ALU_imp_Sh72_128 : STD_LOGIC; 
  signal ALU_imp_Sh73_129 : STD_LOGIC; 
  signal ALU_imp_Sh77 : STD_LOGIC; 
  signal ALU_imp_Sh78 : STD_LOGIC; 
  signal ALU_imp_Sh79 : STD_LOGIC; 
  signal ALU_imp_Sh96_133 : STD_LOGIC; 
  signal ALU_imp_Sh97_134 : STD_LOGIC; 
  signal ALU_imp_Sh98_135 : STD_LOGIC; 
  signal ALU_imp_tmp_0_118_136 : STD_LOGIC; 
  signal ALU_imp_tmp_0_12_137 : STD_LOGIC; 
  signal ALU_imp_tmp_0_144_138 : STD_LOGIC; 
  signal ALU_imp_tmp_0_171_139 : STD_LOGIC; 
  signal ALU_imp_tmp_0_34_140 : STD_LOGIC; 
  signal ALU_imp_tmp_0_49_141 : STD_LOGIC; 
  signal ALU_imp_tmp_0_86_142 : STD_LOGIC; 
  signal ALU_imp_tmp_0_91 : STD_LOGIC; 
  signal ALU_imp_tmp_10_110_144 : STD_LOGIC; 
  signal ALU_imp_tmp_10_117 : STD_LOGIC; 
  signal ALU_imp_tmp_10_12_146 : STD_LOGIC; 
  signal ALU_imp_tmp_10_122_147 : STD_LOGIC; 
  signal ALU_imp_tmp_10_131 : STD_LOGIC; 
  signal ALU_imp_tmp_10_148 : STD_LOGIC; 
  signal ALU_imp_tmp_10_155_150 : STD_LOGIC; 
  signal ALU_imp_tmp_10_165_151 : STD_LOGIC; 
  signal ALU_imp_tmp_10_22 : STD_LOGIC; 
  signal ALU_imp_tmp_10_37_153 : STD_LOGIC; 
  signal ALU_imp_tmp_10_61 : STD_LOGIC; 
  signal ALU_imp_tmp_10_63 : STD_LOGIC; 
  signal ALU_imp_tmp_10_78_156 : STD_LOGIC; 
  signal ALU_imp_tmp_11_109_157 : STD_LOGIC; 
  signal ALU_imp_tmp_11_129_158 : STD_LOGIC; 
  signal ALU_imp_tmp_11_13_159 : STD_LOGIC; 
  signal ALU_imp_tmp_11_15_160 : STD_LOGIC; 
  signal ALU_imp_tmp_11_2 : STD_LOGIC; 
  signal ALU_imp_tmp_11_22_162 : STD_LOGIC; 
  signal ALU_imp_tmp_11_30_163 : STD_LOGIC; 
  signal ALU_imp_tmp_11_37_164 : STD_LOGIC; 
  signal ALU_imp_tmp_11_42_165 : STD_LOGIC; 
  signal ALU_imp_tmp_11_61_166 : STD_LOGIC; 
  signal ALU_imp_tmp_11_73_167 : STD_LOGIC; 
  signal ALU_imp_tmp_12_109_168 : STD_LOGIC; 
  signal ALU_imp_tmp_12_127_169 : STD_LOGIC; 
  signal ALU_imp_tmp_12_13_170 : STD_LOGIC; 
  signal ALU_imp_tmp_12_15_171 : STD_LOGIC; 
  signal ALU_imp_tmp_12_58_172 : STD_LOGIC; 
  signal ALU_imp_tmp_12_76_173 : STD_LOGIC; 
  signal ALU_imp_tmp_13_10_174 : STD_LOGIC; 
  signal ALU_imp_tmp_13_102_175 : STD_LOGIC; 
  signal ALU_imp_tmp_13_111_176 : STD_LOGIC; 
  signal ALU_imp_tmp_13_20_177 : STD_LOGIC; 
  signal ALU_imp_tmp_13_62_178 : STD_LOGIC; 
  signal ALU_imp_tmp_13_74_179 : STD_LOGIC; 
  signal ALU_imp_tmp_13_80_180 : STD_LOGIC; 
  signal ALU_imp_tmp_14_102_181 : STD_LOGIC; 
  signal ALU_imp_tmp_14_111_182 : STD_LOGIC; 
  signal ALU_imp_tmp_14_20_183 : STD_LOGIC; 
  signal ALU_imp_tmp_14_62_184 : STD_LOGIC; 
  signal ALU_imp_tmp_14_80_185 : STD_LOGIC; 
  signal ALU_imp_tmp_15_101_186 : STD_LOGIC; 
  signal ALU_imp_tmp_15_12_187 : STD_LOGIC; 
  signal ALU_imp_tmp_15_48_188 : STD_LOGIC; 
  signal ALU_imp_tmp_15_63_189 : STD_LOGIC; 
  signal ALU_imp_tmp_15_72_190 : STD_LOGIC; 
  signal ALU_imp_tmp_15_90_191 : STD_LOGIC; 
  signal ALU_imp_tmp_1_104_192 : STD_LOGIC; 
  signal ALU_imp_tmp_1_12_193 : STD_LOGIC; 
  signal ALU_imp_tmp_1_136_194 : STD_LOGIC; 
  signal ALU_imp_tmp_1_179_195 : STD_LOGIC; 
  signal ALU_imp_tmp_1_251_196 : STD_LOGIC; 
  signal ALU_imp_tmp_1_34_197 : STD_LOGIC; 
  signal ALU_imp_tmp_1_43_198 : STD_LOGIC; 
  signal ALU_imp_tmp_1_49_199 : STD_LOGIC; 
  signal ALU_imp_tmp_1_58_200 : STD_LOGIC; 
  signal ALU_imp_tmp_1_89_201 : STD_LOGIC; 
  signal ALU_imp_tmp_2_102_202 : STD_LOGIC; 
  signal ALU_imp_tmp_2_12_203 : STD_LOGIC; 
  signal ALU_imp_tmp_2_137_204 : STD_LOGIC; 
  signal ALU_imp_tmp_2_49_205 : STD_LOGIC; 
  signal ALU_imp_tmp_3_109_206 : STD_LOGIC; 
  signal ALU_imp_tmp_3_117_207 : STD_LOGIC; 
  signal ALU_imp_tmp_3_220_208 : STD_LOGIC; 
  signal ALU_imp_tmp_3_23_209 : STD_LOGIC; 
  signal ALU_imp_tmp_3_247_210 : STD_LOGIC; 
  signal ALU_imp_tmp_3_27_211 : STD_LOGIC; 
  signal ALU_imp_tmp_3_48_212 : STD_LOGIC; 
  signal ALU_imp_tmp_3_75_213 : STD_LOGIC; 
  signal ALU_imp_tmp_3_9_214 : STD_LOGIC; 
  signal ALU_imp_tmp_4_10_215 : STD_LOGIC; 
  signal ALU_imp_tmp_4_115_216 : STD_LOGIC; 
  signal ALU_imp_tmp_4_127_217 : STD_LOGIC; 
  signal ALU_imp_tmp_4_134_218 : STD_LOGIC; 
  signal ALU_imp_tmp_4_160_219 : STD_LOGIC; 
  signal ALU_imp_tmp_4_167_220 : STD_LOGIC; 
  signal ALU_imp_tmp_4_177_221 : STD_LOGIC; 
  signal ALU_imp_tmp_4_25_222 : STD_LOGIC; 
  signal ALU_imp_tmp_4_38_223 : STD_LOGIC; 
  signal ALU_imp_tmp_4_72_224 : STD_LOGIC; 
  signal ALU_imp_tmp_4_80_225 : STD_LOGIC; 
  signal ALU_imp_tmp_4_89_226 : STD_LOGIC; 
  signal ALU_imp_tmp_4_95_227 : STD_LOGIC; 
  signal ALU_imp_tmp_5_110_228 : STD_LOGIC; 
  signal ALU_imp_tmp_5_118_229 : STD_LOGIC; 
  signal ALU_imp_tmp_5_12_230 : STD_LOGIC; 
  signal ALU_imp_tmp_5_121_231 : STD_LOGIC; 
  signal ALU_imp_tmp_5_46_232 : STD_LOGIC; 
  signal ALU_imp_tmp_5_69_233 : STD_LOGIC; 
  signal ALU_imp_tmp_5_74 : STD_LOGIC; 
  signal ALU_imp_tmp_5_79_235 : STD_LOGIC; 
  signal ALU_imp_tmp_5_98 : STD_LOGIC; 
  signal ALU_imp_tmp_6_111_237 : STD_LOGIC; 
  signal ALU_imp_tmp_6_119_238 : STD_LOGIC; 
  signal ALU_imp_tmp_6_12_239 : STD_LOGIC; 
  signal ALU_imp_tmp_6_122_240 : STD_LOGIC; 
  signal ALU_imp_tmp_6_34_241 : STD_LOGIC; 
  signal ALU_imp_tmp_6_41_242 : STD_LOGIC; 
  signal ALU_imp_tmp_6_46_243 : STD_LOGIC; 
  signal ALU_imp_tmp_6_69_244 : STD_LOGIC; 
  signal ALU_imp_tmp_6_79_245 : STD_LOGIC; 
  signal ALU_imp_tmp_7_111_246 : STD_LOGIC; 
  signal ALU_imp_tmp_7_12_247 : STD_LOGIC; 
  signal ALU_imp_tmp_7_26_248 : STD_LOGIC; 
  signal ALU_imp_tmp_7_57_249 : STD_LOGIC; 
  signal ALU_imp_tmp_7_64_250 : STD_LOGIC; 
  signal ALU_imp_tmp_7_74_251 : STD_LOGIC; 
  signal ALU_imp_tmp_8_113_252 : STD_LOGIC; 
  signal ALU_imp_tmp_8_12_253 : STD_LOGIC; 
  signal ALU_imp_tmp_8_25_254 : STD_LOGIC; 
  signal ALU_imp_tmp_8_57_255 : STD_LOGIC; 
  signal ALU_imp_tmp_8_64_256 : STD_LOGIC; 
  signal ALU_imp_tmp_8_79_257 : STD_LOGIC; 
  signal ALU_imp_tmp_9_110_258 : STD_LOGIC; 
  signal ALU_imp_tmp_9_12_259 : STD_LOGIC; 
  signal ALU_imp_tmp_9_122_260 : STD_LOGIC; 
  signal ALU_imp_tmp_9_155_261 : STD_LOGIC; 
  signal ALU_imp_tmp_9_165_262 : STD_LOGIC; 
  signal ALU_imp_tmp_9_37_263 : STD_LOGIC; 
  signal ALU_imp_tmp_9_78_264 : STD_LOGIC; 
  signal ALU_imp_tmp_cmp_eq0000 : STD_LOGIC; 
  signal ALU_imp_tmp_cmp_eq0003 : STD_LOGIC; 
  signal ALU_imp_tmp_cmp_eq0004 : STD_LOGIC; 
  signal ALU_imp_tmp_cmp_eq0005 : STD_LOGIC; 
  signal ALU_imp_tmp_cmp_eq0006 : STD_LOGIC; 
  signal ALU_imp_tmp_cmp_eq0010 : STD_LOGIC; 
  signal ALU_imp_tmp_or0000_302 : STD_LOGIC; 
  signal ALU_imp_tmp_or0003 : STD_LOGIC; 
  signal ALU_imp_tmp_or0004 : STD_LOGIC; 
  signal ALU_imp_tmp_or000414_305 : STD_LOGIC; 
  signal ALU_imp_tmp_or00044_306 : STD_LOGIC; 
  signal ALU_imp_tmp_or00049_307 : STD_LOGIC; 
  signal DM_imp_DataOut_0_0_not0001 : STD_LOGIC; 
  signal DM_imp_DataOut_0_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_10_and0000 : STD_LOGIC; 
  signal DM_imp_DataOut_10_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_11_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_12_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_13_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_14_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_15_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_1_mux0005_326 : STD_LOGIC; 
  signal DM_imp_DataOut_2_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_3_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_4_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_5_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_6_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_7_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_8_mux0005 : STD_LOGIC; 
  signal DM_imp_DataOut_9_mux0005 : STD_LOGIC; 
  signal DM_imp_Mcompar_judge_cmp_gt0001_cy_5_rt_349 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_0_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_10_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_11_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_12_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_13_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_14_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_15_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_1_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_2_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_3_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_4_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_5_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_6_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_7_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_8_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtridata_Ram1Data_9_mux0000 : STD_LOGIC; 
  signal DM_imp_Mtrien_Ram1Data_0_mux0000_388 : STD_LOGIC; 
  signal DM_imp_Mtrien_Ram1Data_0_not0001_389 : STD_LOGIC; 
  signal DM_imp_Mtrien_Ram1Data_10_cmp_eq0000112_391 : STD_LOGIC; 
  signal DM_imp_Mtrien_Ram1Data_10_cmp_eq0000129_392 : STD_LOGIC; 
  signal DM_imp_Mtrien_Ram1Data_10_cmp_eq000017_393 : STD_LOGIC; 
  signal DM_imp_Mtrien_Ram1Data_10_not0001_394 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_0_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_0_not0001 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_10_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_11_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_12_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_13_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_14_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_15_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_1_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_2_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_3_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_4_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_5_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_6_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_7_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_8_mux0006 : STD_LOGIC; 
  signal DM_imp_Ram1Addr_9_mux0006 : STD_LOGIC; 
  signal DM_imp_judge : STD_LOGIC; 
  signal DM_imp_judge_and000039_443 : STD_LOGIC; 
  signal DM_imp_judge_and000039_SW0 : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_0_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_1_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_15_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_2_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_3_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_4_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_5_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_6_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_7_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_8_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_immediate_out_9_Q : STD_LOGIC; 
  signal ID_ALU_regs_imp_mem_enable_out_467 : STD_LOGIC; 
  signal ID_ALU_regs_imp_mem_enable_out_mux0001 : STD_LOGIC; 
  signal ID_ALU_regs_imp_mem_read_out_469 : STD_LOGIC; 
  signal ID_ALU_regs_imp_mem_read_out_mux0001 : STD_LOGIC; 
  signal ID_ALU_regs_imp_mem_write_out_471 : STD_LOGIC; 
  signal ID_ALU_regs_imp_mem_write_out_mux0001 : STD_LOGIC; 
  signal ID_ALU_regs_imp_op_code_out_1_1_475 : STD_LOGIC; 
  signal ID_ALU_regs_imp_op_code_out_2_1_477 : STD_LOGIC; 
  signal ID_ALU_regs_imp_op_code_out_3_1_479 : STD_LOGIC; 
  signal ID_ALU_regs_imp_op_code_out_mux0001_1_10_482 : STD_LOGIC; 
  signal ID_ALU_regs_imp_op_code_out_mux0001_2_12_484 : STD_LOGIC; 
  signal ID_ALU_regs_imp_op_code_out_mux0001_3_17_486 : STD_LOGIC; 
  signal ID_ALU_regs_imp_op_code_out_mux0001_3_5_487 : STD_LOGIC; 
  signal ID_ALU_regs_imp_reg_write_enable_out_568 : STD_LOGIC; 
  signal ID_ALU_regs_imp_reg_write_enable_out_mux0001 : STD_LOGIC; 
  signal ID_ALU_regs_imp_reg_write_enable_out_mux000110_570 : STD_LOGIC; 
  signal ID_ALU_regs_imp_reg_write_enable_out_mux000116_571 : STD_LOGIC; 
  signal ID_ALU_regs_imp_reg_write_enable_out_mux000139_572 : STD_LOGIC; 
  signal ID_ALU_regs_imp_reg_write_enable_out_mux000165_573 : STD_LOGIC; 
  signal ID_ALU_regs_imp_reg_write_enable_out_mux000177_574 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_0_23_611 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_0_59 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_0_591_613 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_0_592_614 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_0_8_615 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_1_18_617 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_1_5_618 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_2_13_620 : STD_LOGIC; 
  signal ID_ALU_regs_imp_wb_src_out_mux0001_2_27_621 : STD_LOGIC; 
  signal ID_ALU_regs_imp_write_back_reg_out_mux0001_2_21_629 : STD_LOGIC; 
  signal ID_ALU_regs_imp_write_back_reg_out_mux0001_2_9_630 : STD_LOGIC; 
  signal ID_ALU_regs_imp_write_back_reg_out_mux0001_3_0_632 : STD_LOGIC; 
  signal ID_ALU_regs_imp_write_back_reg_out_mux0001_3_6_633 : STD_LOGIC; 
  signal ID_forward_IF_regs_imp_branch_type_out_666 : STD_LOGIC; 
  signal ID_forward_IF_regs_imp_is_branch_out_667 : STD_LOGIC; 
  signal ID_forward_IF_regs_imp_is_jump_out_668 : STD_LOGIC; 
  signal ID_forward_IF_regs_imp_stall_inv : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_11_1_690 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_11_2_691 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_12_1_693 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_12_2_694 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_13_1_696 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_13_2_697 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_14_1_699 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_15_1_701 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_15_2_702 : STD_LOGIC; 
  signal IF_ID_regs_imp_instruction_out_3_1_705 : STD_LOGIC; 
  signal IF_ID_regs_imp_stall_inv : STD_LOGIC; 
  signal MEM_WB_regs_imp_write_enable_out_765 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_10_rt_768 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_11_rt_770 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_12_rt_772 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_13_rt_774 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_14_rt_776 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_2_rt_779 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_3_rt_781 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_4_rt_783 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_5_rt_785 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_6_rt_787 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_7_rt_789 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_8_rt_791 : STD_LOGIC; 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy_9_rt_793 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N1005 : STD_LOGIC; 
  signal N1007 : STD_LOGIC; 
  signal N1009 : STD_LOGIC; 
  signal N1011 : STD_LOGIC; 
  signal N10111 : STD_LOGIC; 
  signal N1013 : STD_LOGIC; 
  signal N1015 : STD_LOGIC; 
  signal N1017 : STD_LOGIC; 
  signal N1019 : STD_LOGIC; 
  signal N1020 : STD_LOGIC; 
  signal N1022 : STD_LOGIC; 
  signal N1023 : STD_LOGIC; 
  signal N1025 : STD_LOGIC; 
  signal N1027 : STD_LOGIC; 
  signal N1044 : STD_LOGIC; 
  signal N1050 : STD_LOGIC; 
  signal N1052 : STD_LOGIC; 
  signal N1053 : STD_LOGIC; 
  signal N1055 : STD_LOGIC; 
  signal N1057 : STD_LOGIC; 
  signal N1059 : STD_LOGIC; 
  signal N1061 : STD_LOGIC; 
  signal N1063 : STD_LOGIC; 
  signal N1065 : STD_LOGIC; 
  signal N1067 : STD_LOGIC; 
  signal N1071 : STD_LOGIC; 
  signal N1073 : STD_LOGIC; 
  signal N1075 : STD_LOGIC; 
  signal N1077 : STD_LOGIC; 
  signal N1081 : STD_LOGIC; 
  signal N1083 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N1091 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N1101 : STD_LOGIC; 
  signal N1103 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N1114 : STD_LOGIC; 
  signal N1116 : STD_LOGIC; 
  signal N1118 : STD_LOGIC; 
  signal N1120 : STD_LOGIC; 
  signal N1122 : STD_LOGIC; 
  signal N1124 : STD_LOGIC; 
  signal N1126 : STD_LOGIC; 
  signal N1128 : STD_LOGIC; 
  signal N1132 : STD_LOGIC; 
  signal N1134 : STD_LOGIC; 
  signal N1136 : STD_LOGIC; 
  signal N1137 : STD_LOGIC; 
  signal N1139 : STD_LOGIC; 
  signal N1141 : STD_LOGIC; 
  signal N1143 : STD_LOGIC; 
  signal N1147 : STD_LOGIC; 
  signal N1149 : STD_LOGIC; 
  signal N1151 : STD_LOGIC; 
  signal N1161 : STD_LOGIC; 
  signal N1163 : STD_LOGIC; 
  signal N1165 : STD_LOGIC; 
  signal N1167 : STD_LOGIC; 
  signal N1169 : STD_LOGIC; 
  signal N1170 : STD_LOGIC; 
  signal N1171 : STD_LOGIC; 
  signal N1172 : STD_LOGIC; 
  signal N1173 : STD_LOGIC; 
  signal N1174 : STD_LOGIC; 
  signal N1175 : STD_LOGIC; 
  signal N1176 : STD_LOGIC; 
  signal N1177 : STD_LOGIC; 
  signal N1178 : STD_LOGIC; 
  signal N1179 : STD_LOGIC; 
  signal N1180 : STD_LOGIC; 
  signal N1181 : STD_LOGIC; 
  signal N1182 : STD_LOGIC; 
  signal N1183 : STD_LOGIC; 
  signal N1184 : STD_LOGIC; 
  signal N1185 : STD_LOGIC; 
  signal N1186 : STD_LOGIC; 
  signal N1187 : STD_LOGIC; 
  signal N1188 : STD_LOGIC; 
  signal N1189 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N1190 : STD_LOGIC; 
  signal N1191 : STD_LOGIC; 
  signal N1192 : STD_LOGIC; 
  signal N1193 : STD_LOGIC; 
  signal N1194 : STD_LOGIC; 
  signal N1195 : STD_LOGIC; 
  signal N1196 : STD_LOGIC; 
  signal N1197 : STD_LOGIC; 
  signal N1198 : STD_LOGIC; 
  signal N1199 : STD_LOGIC; 
  signal N1200 : STD_LOGIC; 
  signal N1201 : STD_LOGIC; 
  signal N1202 : STD_LOGIC; 
  signal N1203 : STD_LOGIC; 
  signal N1204 : STD_LOGIC; 
  signal N1205 : STD_LOGIC; 
  signal N1206 : STD_LOGIC; 
  signal N1207 : STD_LOGIC; 
  signal N1208 : STD_LOGIC; 
  signal N1209 : STD_LOGIC; 
  signal N1210 : STD_LOGIC; 
  signal N1211 : STD_LOGIC; 
  signal N1212 : STD_LOGIC; 
  signal N1213 : STD_LOGIC; 
  signal N1214 : STD_LOGIC; 
  signal N1215 : STD_LOGIC; 
  signal N1216 : STD_LOGIC; 
  signal N1217 : STD_LOGIC; 
  signal N1218 : STD_LOGIC; 
  signal N1219 : STD_LOGIC; 
  signal N1220 : STD_LOGIC; 
  signal N1221 : STD_LOGIC; 
  signal N1222 : STD_LOGIC; 
  signal N1223 : STD_LOGIC; 
  signal N1224 : STD_LOGIC; 
  signal N1225 : STD_LOGIC; 
  signal N1226 : STD_LOGIC; 
  signal N1227 : STD_LOGIC; 
  signal N1228 : STD_LOGIC; 
  signal N1229 : STD_LOGIC; 
  signal N1230 : STD_LOGIC; 
  signal N1231 : STD_LOGIC; 
  signal N1232 : STD_LOGIC; 
  signal N1237 : STD_LOGIC; 
  signal N1238 : STD_LOGIC; 
  signal N1239 : STD_LOGIC; 
  signal N1240 : STD_LOGIC; 
  signal N1241 : STD_LOGIC; 
  signal N1242 : STD_LOGIC; 
  signal N1243 : STD_LOGIC; 
  signal N1244 : STD_LOGIC; 
  signal N1245 : STD_LOGIC; 
  signal N1246 : STD_LOGIC; 
  signal N1247 : STD_LOGIC; 
  signal N1248 : STD_LOGIC; 
  signal N1249 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N1250 : STD_LOGIC; 
  signal N1251 : STD_LOGIC; 
  signal N1252 : STD_LOGIC; 
  signal N1253 : STD_LOGIC; 
  signal N1254 : STD_LOGIC; 
  signal N1255 : STD_LOGIC; 
  signal N1256 : STD_LOGIC; 
  signal N1257 : STD_LOGIC; 
  signal N1258 : STD_LOGIC; 
  signal N1259 : STD_LOGIC; 
  signal N1260 : STD_LOGIC; 
  signal N1261 : STD_LOGIC; 
  signal N1262 : STD_LOGIC; 
  signal N1263 : STD_LOGIC; 
  signal N1264 : STD_LOGIC; 
  signal N1265 : STD_LOGIC; 
  signal N1266 : STD_LOGIC; 
  signal N1267 : STD_LOGIC; 
  signal N1268 : STD_LOGIC; 
  signal N1269 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N1270 : STD_LOGIC; 
  signal N1271 : STD_LOGIC; 
  signal N1272 : STD_LOGIC; 
  signal N1273 : STD_LOGIC; 
  signal N1274 : STD_LOGIC; 
  signal N1275 : STD_LOGIC; 
  signal N1276 : STD_LOGIC; 
  signal N1277 : STD_LOGIC; 
  signal N1278 : STD_LOGIC; 
  signal N1279 : STD_LOGIC; 
  signal N1280 : STD_LOGIC; 
  signal N1281 : STD_LOGIC; 
  signal N1282 : STD_LOGIC; 
  signal N1283 : STD_LOGIC; 
  signal N1284 : STD_LOGIC; 
  signal N1285 : STD_LOGIC; 
  signal N1286 : STD_LOGIC; 
  signal N1287 : STD_LOGIC; 
  signal N1288 : STD_LOGIC; 
  signal N1289 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N1290 : STD_LOGIC; 
  signal N1291 : STD_LOGIC; 
  signal N1292 : STD_LOGIC; 
  signal N1293 : STD_LOGIC; 
  signal N1294 : STD_LOGIC; 
  signal N1295 : STD_LOGIC; 
  signal N1296 : STD_LOGIC; 
  signal N1297 : STD_LOGIC; 
  signal N1298 : STD_LOGIC; 
  signal N1299 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N1311 : STD_LOGIC; 
  signal N1313 : STD_LOGIC; 
  signal N1315 : STD_LOGIC; 
  signal N1317 : STD_LOGIC; 
  signal N1319 : STD_LOGIC; 
  signal N1321 : STD_LOGIC; 
  signal N1323 : STD_LOGIC; 
  signal N1325 : STD_LOGIC; 
  signal N1327 : STD_LOGIC; 
  signal N1331 : STD_LOGIC; 
  signal N1333 : STD_LOGIC; 
  signal N1335 : STD_LOGIC; 
  signal N1337 : STD_LOGIC; 
  signal N1339 : STD_LOGIC; 
  signal N1341 : STD_LOGIC; 
  signal N1343 : STD_LOGIC; 
  signal N1345 : STD_LOGIC; 
  signal N1347 : STD_LOGIC; 
  signal N1349 : STD_LOGIC; 
  signal N1351 : STD_LOGIC; 
  signal N1353 : STD_LOGIC; 
  signal N1355 : STD_LOGIC; 
  signal N1357 : STD_LOGIC; 
  signal N1359 : STD_LOGIC; 
  signal N1361 : STD_LOGIC; 
  signal N1363 : STD_LOGIC; 
  signal N1367 : STD_LOGIC; 
  signal N1373 : STD_LOGIC; 
  signal N1375 : STD_LOGIC; 
  signal N1377 : STD_LOGIC; 
  signal N1379 : STD_LOGIC; 
  signal N1381 : STD_LOGIC; 
  signal N1383 : STD_LOGIC; 
  signal N1385 : STD_LOGIC; 
  signal N1387 : STD_LOGIC; 
  signal N1389 : STD_LOGIC; 
  signal N1391 : STD_LOGIC; 
  signal N1393 : STD_LOGIC; 
  signal N1399 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N1401 : STD_LOGIC; 
  signal N1403 : STD_LOGIC; 
  signal N1407 : STD_LOGIC; 
  signal N1409 : STD_LOGIC; 
  signal N1411 : STD_LOGIC; 
  signal N1413 : STD_LOGIC; 
  signal N1415 : STD_LOGIC; 
  signal N1417 : STD_LOGIC; 
  signal N1419 : STD_LOGIC; 
  signal N1420 : STD_LOGIC; 
  signal N1421 : STD_LOGIC; 
  signal N1422 : STD_LOGIC; 
  signal N1423 : STD_LOGIC; 
  signal N1424 : STD_LOGIC; 
  signal N1425 : STD_LOGIC; 
  signal N1426 : STD_LOGIC; 
  signal N1427 : STD_LOGIC; 
  signal N1429 : STD_LOGIC; 
  signal N1430 : STD_LOGIC; 
  signal N1431 : STD_LOGIC; 
  signal N1432 : STD_LOGIC; 
  signal N1433 : STD_LOGIC; 
  signal N1434 : STD_LOGIC; 
  signal N1435 : STD_LOGIC; 
  signal N1436 : STD_LOGIC; 
  signal N1437 : STD_LOGIC; 
  signal N1438 : STD_LOGIC; 
  signal N1439 : STD_LOGIC; 
  signal N1440 : STD_LOGIC; 
  signal N1441 : STD_LOGIC; 
  signal N1442 : STD_LOGIC; 
  signal N1443 : STD_LOGIC; 
  signal N1444 : STD_LOGIC; 
  signal N1445 : STD_LOGIC; 
  signal N1446 : STD_LOGIC; 
  signal N1447 : STD_LOGIC; 
  signal N1448 : STD_LOGIC; 
  signal N1449 : STD_LOGIC; 
  signal N1450 : STD_LOGIC; 
  signal N1451 : STD_LOGIC; 
  signal N1452 : STD_LOGIC; 
  signal N1453 : STD_LOGIC; 
  signal N1454 : STD_LOGIC; 
  signal N1455 : STD_LOGIC; 
  signal N1456 : STD_LOGIC; 
  signal N1457 : STD_LOGIC; 
  signal N1458 : STD_LOGIC; 
  signal N1459 : STD_LOGIC; 
  signal N1460 : STD_LOGIC; 
  signal N1461 : STD_LOGIC; 
  signal N1462 : STD_LOGIC; 
  signal N1463 : STD_LOGIC; 
  signal N1464 : STD_LOGIC; 
  signal N1465 : STD_LOGIC; 
  signal N1466 : STD_LOGIC; 
  signal N1467 : STD_LOGIC; 
  signal N1468 : STD_LOGIC; 
  signal N1469 : STD_LOGIC; 
  signal N1470 : STD_LOGIC; 
  signal N1471 : STD_LOGIC; 
  signal N1472 : STD_LOGIC; 
  signal N1473 : STD_LOGIC; 
  signal N1474 : STD_LOGIC; 
  signal N1475 : STD_LOGIC; 
  signal N1476 : STD_LOGIC; 
  signal N1477 : STD_LOGIC; 
  signal N1478 : STD_LOGIC; 
  signal N1479 : STD_LOGIC; 
  signal N1480 : STD_LOGIC; 
  signal N1481 : STD_LOGIC; 
  signal N1482 : STD_LOGIC; 
  signal N1483 : STD_LOGIC; 
  signal N1484 : STD_LOGIC; 
  signal N1485 : STD_LOGIC; 
  signal N1486 : STD_LOGIC; 
  signal N1487 : STD_LOGIC; 
  signal N1488 : STD_LOGIC; 
  signal N1489 : STD_LOGIC; 
  signal N1490 : STD_LOGIC; 
  signal N1491 : STD_LOGIC; 
  signal N1492 : STD_LOGIC; 
  signal N1493 : STD_LOGIC; 
  signal N1494 : STD_LOGIC; 
  signal N1495 : STD_LOGIC; 
  signal N1496 : STD_LOGIC; 
  signal N1497 : STD_LOGIC; 
  signal N1498 : STD_LOGIC; 
  signal N1499 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N1500 : STD_LOGIC; 
  signal N1503 : STD_LOGIC; 
  signal N1504 : STD_LOGIC; 
  signal N1505 : STD_LOGIC; 
  signal N1506 : STD_LOGIC; 
  signal N1507 : STD_LOGIC; 
  signal N1508 : STD_LOGIC; 
  signal N1509 : STD_LOGIC; 
  signal N1510 : STD_LOGIC; 
  signal N1511 : STD_LOGIC; 
  signal N1512 : STD_LOGIC; 
  signal N1513 : STD_LOGIC; 
  signal N1514 : STD_LOGIC; 
  signal N1515 : STD_LOGIC; 
  signal N1516 : STD_LOGIC; 
  signal N1517 : STD_LOGIC; 
  signal N1518 : STD_LOGIC; 
  signal N1519 : STD_LOGIC; 
  signal N1520 : STD_LOGIC; 
  signal N1521 : STD_LOGIC; 
  signal N1522 : STD_LOGIC; 
  signal N1523 : STD_LOGIC; 
  signal N1524 : STD_LOGIC; 
  signal N1525 : STD_LOGIC; 
  signal N1526 : STD_LOGIC; 
  signal N1527 : STD_LOGIC; 
  signal N1528 : STD_LOGIC; 
  signal N1529 : STD_LOGIC; 
  signal N1530 : STD_LOGIC; 
  signal N1531 : STD_LOGIC; 
  signal N1532 : STD_LOGIC; 
  signal N1533 : STD_LOGIC; 
  signal N1534 : STD_LOGIC; 
  signal N1535 : STD_LOGIC; 
  signal N1536 : STD_LOGIC; 
  signal N1537 : STD_LOGIC; 
  signal N1538 : STD_LOGIC; 
  signal N1539 : STD_LOGIC; 
  signal N1540 : STD_LOGIC; 
  signal N1541 : STD_LOGIC; 
  signal N1542 : STD_LOGIC; 
  signal N1543 : STD_LOGIC; 
  signal N1544 : STD_LOGIC; 
  signal N1545 : STD_LOGIC; 
  signal N1546 : STD_LOGIC; 
  signal N1547 : STD_LOGIC; 
  signal N1548 : STD_LOGIC; 
  signal N1549 : STD_LOGIC; 
  signal N1550 : STD_LOGIC; 
  signal N1551 : STD_LOGIC; 
  signal N1552 : STD_LOGIC; 
  signal N1553 : STD_LOGIC; 
  signal N1554 : STD_LOGIC; 
  signal N1555 : STD_LOGIC; 
  signal N1556 : STD_LOGIC; 
  signal N1557 : STD_LOGIC; 
  signal N1558 : STD_LOGIC; 
  signal N1559 : STD_LOGIC; 
  signal N1560 : STD_LOGIC; 
  signal N1561 : STD_LOGIC; 
  signal N1562 : STD_LOGIC; 
  signal N1563 : STD_LOGIC; 
  signal N1564 : STD_LOGIC; 
  signal N1565 : STD_LOGIC; 
  signal N1566 : STD_LOGIC; 
  signal N1567 : STD_LOGIC; 
  signal N1568 : STD_LOGIC; 
  signal N1569 : STD_LOGIC; 
  signal N1570 : STD_LOGIC; 
  signal N1571 : STD_LOGIC; 
  signal N1572 : STD_LOGIC; 
  signal N1573 : STD_LOGIC; 
  signal N1574 : STD_LOGIC; 
  signal N1575 : STD_LOGIC; 
  signal N1576 : STD_LOGIC; 
  signal N1577 : STD_LOGIC; 
  signal N1578 : STD_LOGIC; 
  signal N1579 : STD_LOGIC; 
  signal N1580 : STD_LOGIC; 
  signal N1581 : STD_LOGIC; 
  signal N1582 : STD_LOGIC; 
  signal N1583 : STD_LOGIC; 
  signal N1584 : STD_LOGIC; 
  signal N1585 : STD_LOGIC; 
  signal N1586 : STD_LOGIC; 
  signal N1587 : STD_LOGIC; 
  signal N1588 : STD_LOGIC; 
  signal N1589 : STD_LOGIC; 
  signal N1590 : STD_LOGIC; 
  signal N1591 : STD_LOGIC; 
  signal N1592 : STD_LOGIC; 
  signal N1593 : STD_LOGIC; 
  signal N1595 : STD_LOGIC; 
  signal N1596 : STD_LOGIC; 
  signal N1597 : STD_LOGIC; 
  signal N1598 : STD_LOGIC; 
  signal N1599 : STD_LOGIC; 
  signal N1600 : STD_LOGIC; 
  signal N1601 : STD_LOGIC; 
  signal N1602 : STD_LOGIC; 
  signal N1603 : STD_LOGIC; 
  signal N1604 : STD_LOGIC; 
  signal N1605 : STD_LOGIC; 
  signal N1606 : STD_LOGIC; 
  signal N1607 : STD_LOGIC; 
  signal N1608 : STD_LOGIC; 
  signal N1609 : STD_LOGIC; 
  signal N1610 : STD_LOGIC; 
  signal N1611 : STD_LOGIC; 
  signal N1612 : STD_LOGIC; 
  signal N1613 : STD_LOGIC; 
  signal N1614 : STD_LOGIC; 
  signal N1615 : STD_LOGIC; 
  signal N1616 : STD_LOGIC; 
  signal N1617 : STD_LOGIC; 
  signal N1618 : STD_LOGIC; 
  signal N1619 : STD_LOGIC; 
  signal N1620 : STD_LOGIC; 
  signal N1621 : STD_LOGIC; 
  signal N1622 : STD_LOGIC; 
  signal N1623 : STD_LOGIC; 
  signal N1624 : STD_LOGIC; 
  signal N1625 : STD_LOGIC; 
  signal N1626 : STD_LOGIC; 
  signal N1627 : STD_LOGIC; 
  signal N1628 : STD_LOGIC; 
  signal N1629 : STD_LOGIC; 
  signal N1630 : STD_LOGIC; 
  signal N1631 : STD_LOGIC; 
  signal N1632 : STD_LOGIC; 
  signal N1633 : STD_LOGIC; 
  signal N1634 : STD_LOGIC; 
  signal N1635 : STD_LOGIC; 
  signal N1636 : STD_LOGIC; 
  signal N1637 : STD_LOGIC; 
  signal N1638 : STD_LOGIC; 
  signal N1639 : STD_LOGIC; 
  signal N1640 : STD_LOGIC; 
  signal N1641 : STD_LOGIC; 
  signal N1642 : STD_LOGIC; 
  signal N1643 : STD_LOGIC; 
  signal N1644 : STD_LOGIC; 
  signal N1645 : STD_LOGIC; 
  signal N1646 : STD_LOGIC; 
  signal N1647 : STD_LOGIC; 
  signal N1648 : STD_LOGIC; 
  signal N1649 : STD_LOGIC; 
  signal N1650 : STD_LOGIC; 
  signal N1651 : STD_LOGIC; 
  signal N1652 : STD_LOGIC; 
  signal N1653 : STD_LOGIC; 
  signal N1654 : STD_LOGIC; 
  signal N1655 : STD_LOGIC; 
  signal N1656 : STD_LOGIC; 
  signal N1657 : STD_LOGIC; 
  signal N1658 : STD_LOGIC; 
  signal N1659 : STD_LOGIC; 
  signal N1660 : STD_LOGIC; 
  signal N1661 : STD_LOGIC; 
  signal N1662 : STD_LOGIC; 
  signal N1663 : STD_LOGIC; 
  signal N1664 : STD_LOGIC; 
  signal N1665 : STD_LOGIC; 
  signal N1666 : STD_LOGIC; 
  signal N1667 : STD_LOGIC; 
  signal N1668 : STD_LOGIC; 
  signal N1669 : STD_LOGIC; 
  signal N1670 : STD_LOGIC; 
  signal N1671 : STD_LOGIC; 
  signal N1672 : STD_LOGIC; 
  signal N1673 : STD_LOGIC; 
  signal N1674 : STD_LOGIC; 
  signal N1675 : STD_LOGIC; 
  signal N1676 : STD_LOGIC; 
  signal N1677 : STD_LOGIC; 
  signal N1678 : STD_LOGIC; 
  signal N1679 : STD_LOGIC; 
  signal N1680 : STD_LOGIC; 
  signal N1681 : STD_LOGIC; 
  signal N1682 : STD_LOGIC; 
  signal N1683 : STD_LOGIC; 
  signal N1684 : STD_LOGIC; 
  signal N1685 : STD_LOGIC; 
  signal N1686 : STD_LOGIC; 
  signal N1687 : STD_LOGIC; 
  signal N1688 : STD_LOGIC; 
  signal N1689 : STD_LOGIC; 
  signal N1690 : STD_LOGIC; 
  signal N1691 : STD_LOGIC; 
  signal N1692 : STD_LOGIC; 
  signal N1693 : STD_LOGIC; 
  signal N1694 : STD_LOGIC; 
  signal N1695 : STD_LOGIC; 
  signal N1696 : STD_LOGIC; 
  signal N1697 : STD_LOGIC; 
  signal N1698 : STD_LOGIC; 
  signal N1699 : STD_LOGIC; 
  signal N1700 : STD_LOGIC; 
  signal N1701 : STD_LOGIC; 
  signal N1702 : STD_LOGIC; 
  signal N1703 : STD_LOGIC; 
  signal N1704 : STD_LOGIC; 
  signal N1705 : STD_LOGIC; 
  signal N1706 : STD_LOGIC; 
  signal N1707 : STD_LOGIC; 
  signal N1708 : STD_LOGIC; 
  signal N1709 : STD_LOGIC; 
  signal N1710 : STD_LOGIC; 
  signal N1711 : STD_LOGIC; 
  signal N1712 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N441 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal N445 : STD_LOGIC; 
  signal N447 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal N451 : STD_LOGIC; 
  signal N453 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal N507 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N540 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal N544 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal N564 : STD_LOGIC; 
  signal N566 : STD_LOGIC; 
  signal N568 : STD_LOGIC; 
  signal N570 : STD_LOGIC; 
  signal N572 : STD_LOGIC; 
  signal N574 : STD_LOGIC; 
  signal N576 : STD_LOGIC; 
  signal N578 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N588 : STD_LOGIC; 
  signal N590 : STD_LOGIC; 
  signal N594 : STD_LOGIC; 
  signal N596 : STD_LOGIC; 
  signal N598 : STD_LOGIC; 
  signal N599 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N603 : STD_LOGIC; 
  signal N607 : STD_LOGIC; 
  signal N609 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal N615 : STD_LOGIC; 
  signal N616 : STD_LOGIC; 
  signal N618 : STD_LOGIC; 
  signal N619 : STD_LOGIC; 
  signal N621 : STD_LOGIC; 
  signal N633 : STD_LOGIC; 
  signal N635 : STD_LOGIC; 
  signal N637 : STD_LOGIC; 
  signal N641 : STD_LOGIC; 
  signal N643 : STD_LOGIC; 
  signal N651 : STD_LOGIC; 
  signal N653 : STD_LOGIC; 
  signal N655 : STD_LOGIC; 
  signal N657 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N661 : STD_LOGIC; 
  signal N665 : STD_LOGIC; 
  signal N667 : STD_LOGIC; 
  signal N669 : STD_LOGIC; 
  signal N670 : STD_LOGIC; 
  signal N672 : STD_LOGIC; 
  signal N673 : STD_LOGIC; 
  signal N675 : STD_LOGIC; 
  signal N676 : STD_LOGIC; 
  signal N690 : STD_LOGIC; 
  signal N695 : STD_LOGIC; 
  signal N699 : STD_LOGIC; 
  signal N701 : STD_LOGIC; 
  signal N703 : STD_LOGIC; 
  signal N705 : STD_LOGIC; 
  signal N707 : STD_LOGIC; 
  signal N711 : STD_LOGIC; 
  signal N713 : STD_LOGIC; 
  signal N715 : STD_LOGIC; 
  signal N717 : STD_LOGIC; 
  signal N719 : STD_LOGIC; 
  signal N723 : STD_LOGIC; 
  signal N729 : STD_LOGIC; 
  signal N735 : STD_LOGIC; 
  signal N737 : STD_LOGIC; 
  signal N739 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N741 : STD_LOGIC; 
  signal N743 : STD_LOGIC; 
  signal N747 : STD_LOGIC; 
  signal N748 : STD_LOGIC; 
  signal N750 : STD_LOGIC; 
  signal N753 : STD_LOGIC; 
  signal N756 : STD_LOGIC; 
  signal N759 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N762 : STD_LOGIC; 
  signal N765 : STD_LOGIC; 
  signal N766 : STD_LOGIC; 
  signal N768 : STD_LOGIC; 
  signal N769 : STD_LOGIC; 
  signal N771 : STD_LOGIC; 
  signal N772 : STD_LOGIC; 
  signal N774 : STD_LOGIC; 
  signal N775 : STD_LOGIC; 
  signal N777 : STD_LOGIC; 
  signal N778 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N780 : STD_LOGIC; 
  signal N781 : STD_LOGIC; 
  signal N785 : STD_LOGIC; 
  signal N787 : STD_LOGIC; 
  signal N801 : STD_LOGIC; 
  signal N803 : STD_LOGIC; 
  signal N805 : STD_LOGIC; 
  signal N807 : STD_LOGIC; 
  signal N809 : STD_LOGIC; 
  signal N811 : STD_LOGIC; 
  signal N813 : STD_LOGIC; 
  signal N815 : STD_LOGIC; 
  signal N817 : STD_LOGIC; 
  signal N819 : STD_LOGIC; 
  signal N823 : STD_LOGIC; 
  signal N825 : STD_LOGIC; 
  signal N826 : STD_LOGIC; 
  signal N828 : STD_LOGIC; 
  signal N829 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N831 : STD_LOGIC; 
  signal N833 : STD_LOGIC; 
  signal N835 : STD_LOGIC; 
  signal N837 : STD_LOGIC; 
  signal N839 : STD_LOGIC; 
  signal N848 : STD_LOGIC; 
  signal N849 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N851 : STD_LOGIC; 
  signal N857 : STD_LOGIC; 
  signal N858 : STD_LOGIC; 
  signal N860 : STD_LOGIC; 
  signal N861 : STD_LOGIC; 
  signal N863 : STD_LOGIC; 
  signal N864 : STD_LOGIC; 
  signal N866 : STD_LOGIC; 
  signal N867 : STD_LOGIC; 
  signal N869 : STD_LOGIC; 
  signal N870 : STD_LOGIC; 
  signal N872 : STD_LOGIC; 
  signal N873 : STD_LOGIC; 
  signal N875 : STD_LOGIC; 
  signal N876 : STD_LOGIC; 
  signal N878 : STD_LOGIC; 
  signal N879 : STD_LOGIC; 
  signal N881 : STD_LOGIC; 
  signal N882 : STD_LOGIC; 
  signal N884 : STD_LOGIC; 
  signal N886 : STD_LOGIC; 
  signal N888 : STD_LOGIC; 
  signal N890 : STD_LOGIC; 
  signal N892 : STD_LOGIC; 
  signal N894 : STD_LOGIC; 
  signal N896 : STD_LOGIC; 
  signal N898 : STD_LOGIC; 
  signal N900 : STD_LOGIC; 
  signal N904 : STD_LOGIC; 
  signal N906 : STD_LOGIC; 
  signal N908 : STD_LOGIC; 
  signal N910 : STD_LOGIC; 
  signal N912 : STD_LOGIC; 
  signal N914 : STD_LOGIC; 
  signal N919 : STD_LOGIC; 
  signal N920 : STD_LOGIC; 
  signal N922 : STD_LOGIC; 
  signal N923 : STD_LOGIC; 
  signal N925 : STD_LOGIC; 
  signal N926 : STD_LOGIC; 
  signal N928 : STD_LOGIC; 
  signal N933 : STD_LOGIC; 
  signal N934 : STD_LOGIC; 
  signal N950 : STD_LOGIC; 
  signal N952 : STD_LOGIC; 
  signal N954 : STD_LOGIC; 
  signal N958 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N973 : STD_LOGIC; 
  signal N975 : STD_LOGIC; 
  signal N976 : STD_LOGIC; 
  signal N982 : STD_LOGIC; 
  signal N984 : STD_LOGIC; 
  signal N985 : STD_LOGIC; 
  signal N987 : STD_LOGIC; 
  signal N988 : STD_LOGIC; 
  signal N993 : STD_LOGIC; 
  signal N994 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000044_1667 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000044_1670 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000055_1671 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000044_1674 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000055_1675 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000044_1678 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000055_1679 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000044_1681 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000055_1682 : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb : STD_LOGIC; 
  signal RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb_and000049_1684 : STD_LOGIC; 
  signal UAL_hazard_detector_imp_stall120_1685 : STD_LOGIC; 
  signal UAL_hazard_detector_imp_stall150_1686 : STD_LOGIC; 
  signal UAL_hazard_detector_imp_stall26_1687 : STD_LOGIC; 
  signal UAL_hazard_detector_imp_stall53_1688 : STD_LOGIC; 
  signal UAL_hazard_detector_imp_stall93_1689 : STD_LOGIC; 
  signal VGA_CLK_2_1690 : STD_LOGIC; 
  signal VGA_CLK_21 : STD_LOGIC; 
  signal VGA_Madd_romAddr_add0001_cy_0_rt_1693 : STD_LOGIC; 
  signal VGA_Madd_romAddr_add0001_cy_6_rt_1700 : STD_LOGIC; 
  signal VGA_Madd_romAddr_not0000_1_Q : STD_LOGIC; 
  signal VGA_Madd_romAddr_not0000_2_Q : STD_LOGIC; 
  signal VGA_Madd_romAddr_not0000_3_Q : STD_LOGIC; 
  signal VGA_Madd_romAddr_not0000_4_Q : STD_LOGIC; 
  signal VGA_Madd_romAddr_not0000_5_Q : STD_LOGIC; 
  signal VGA_Madd_romAddr_not0000_7_Q : STD_LOGIC; 
  signal VGA_Madd_romAddr_not0000_8_Q : STD_LOGIC; 
  signal VGA_Mcount_x_cy_1_rt_1716 : STD_LOGIC; 
  signal VGA_Mcount_x_cy_2_rt_1718 : STD_LOGIC; 
  signal VGA_Mcount_x_cy_3_rt_1720 : STD_LOGIC; 
  signal VGA_Mcount_x_cy_4_rt_1722 : STD_LOGIC; 
  signal VGA_Mcount_x_cy_5_rt_1724 : STD_LOGIC; 
  signal VGA_Mcount_x_cy_6_rt_1726 : STD_LOGIC; 
  signal VGA_Mcount_x_cy_7_rt_1728 : STD_LOGIC; 
  signal VGA_Mcount_x_cy_8_rt_1730 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_0 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_1 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_2 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_3 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_4 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_5 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_6 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_7 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_8 : STD_LOGIC; 
  signal VGA_Mcount_x_eqn_9 : STD_LOGIC; 
  signal VGA_Mcount_x_xor_9_rt_1742 : STD_LOGIC; 
  signal VGA_Mcount_y_cy_1_rt_1745 : STD_LOGIC; 
  signal VGA_Mcount_y_cy_2_rt_1747 : STD_LOGIC; 
  signal VGA_Mcount_y_cy_3_rt_1749 : STD_LOGIC; 
  signal VGA_Mcount_y_cy_4_rt_1751 : STD_LOGIC; 
  signal VGA_Mcount_y_cy_5_rt_1753 : STD_LOGIC; 
  signal VGA_Mcount_y_cy_6_rt_1755 : STD_LOGIC; 
  signal VGA_Mcount_y_cy_7_rt_1757 : STD_LOGIC; 
  signal VGA_Mcount_y_lut_0_1 : STD_LOGIC; 
  signal VGA_Mcount_y_xor_8_rt_1759 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_3_f5_1760 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_3_f51_1761 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_3_f52_1762 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_4 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_4_f5_1764 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_4_f51_1765 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_4_f52_1766 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_5 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_51 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0000_6 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0001_3_f5_1770 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0001_3_f51_1771 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0001_3_f52_1772 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0001_4_f5_1773 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0001_4_f51_1774 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0001_4_f52_1775 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0002_3_f5_1776 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0002_4_f5_1777 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0003_3_f5_1778 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0003_3_f51_1779 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0003_3_f52_1780 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0003_4_f5_1781 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0003_4_f51_1782 : STD_LOGIC; 
  signal VGA_Mmux_romData_mux0003_4_f52_1783 : STD_LOGIC; 
  signal VGA_Msub_romAddr_sub0000_cy_8_11_1785 : STD_LOGIC; 
  signal VGA_N02 : STD_LOGIC; 
  signal VGA_N10 : STD_LOGIC; 
  signal VGA_N101 : STD_LOGIC; 
  signal VGA_N1011 : STD_LOGIC; 
  signal VGA_N110 : STD_LOGIC; 
  signal VGA_N12 : STD_LOGIC; 
  signal VGA_N191 : STD_LOGIC; 
  signal VGA_N210 : STD_LOGIC; 
  signal VGA_N25 : STD_LOGIC; 
  signal VGA_N35 : STD_LOGIC; 
  signal VGA_N37 : STD_LOGIC; 
  signal VGA_N38 : STD_LOGIC; 
  signal VGA_N4 : STD_LOGIC; 
  signal VGA_N41 : STD_LOGIC; 
  signal VGA_N43 : STD_LOGIC; 
  signal VGA_N441 : STD_LOGIC; 
  signal VGA_N45 : STD_LOGIC; 
  signal VGA_N46 : STD_LOGIC; 
  signal VGA_N48 : STD_LOGIC; 
  signal VGA_N49 : STD_LOGIC; 
  signal VGA_N62 : STD_LOGIC; 
  signal VGA_N64 : STD_LOGIC; 
  signal VGA_N72 : STD_LOGIC; 
  signal VGA_N79 : STD_LOGIC; 
  signal VGA_N83 : STD_LOGIC; 
  signal VGA_N84 : STD_LOGIC; 
  signal VGA_N87 : STD_LOGIC; 
  signal VGA_N88 : STD_LOGIC; 
  signal VGA_N89 : STD_LOGIC; 
  signal VGA_N911 : STD_LOGIC; 
  signal VGA_N92 : STD_LOGIC; 
  signal VGA_N93 : STD_LOGIC; 
  signal VGA_N94 : STD_LOGIC; 
  signal VGA_N95 : STD_LOGIC; 
  signal VGA_Result_0_1 : STD_LOGIC; 
  signal VGA_Result_1_1 : STD_LOGIC; 
  signal VGA_Result_2_1 : STD_LOGIC; 
  signal VGA_Result_3_1 : STD_LOGIC; 
  signal VGA_Result_4_1 : STD_LOGIC; 
  signal VGA_Result_5_1 : STD_LOGIC; 
  signal VGA_Result_6_1 : STD_LOGIC; 
  signal VGA_Result_7_1 : STD_LOGIC; 
  signal VGA_Result_8_1 : STD_LOGIC; 
  signal VGA_SF22110_1839 : STD_LOGIC; 
  signal VGA_SF27212_1840 : STD_LOGIC; 
  signal VGA_SF27233_1841 : STD_LOGIC; 
  signal VGA_SF27243_1842 : STD_LOGIC; 
  signal VGA_SF2727_1843 : STD_LOGIC; 
  signal VGA_SF57116 : STD_LOGIC; 
  signal VGA_bt_and0133 : STD_LOGIC; 
  signal VGA_bt_and0134 : STD_LOGIC; 
  signal VGA_bt_and013418_1848 : STD_LOGIC; 
  signal VGA_bt_and0135_1849 : STD_LOGIC; 
  signal VGA_bt_and0137 : STD_LOGIC; 
  signal VGA_bt_and0138_1851 : STD_LOGIC; 
  signal VGA_bt_and0139 : STD_LOGIC; 
  signal VGA_bt_and0140 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0000 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0001 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0002 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0003 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0004_1858 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0005_1859 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0006 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0007 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0008 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0009 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0010 : STD_LOGIC; 
  signal VGA_bt_cmp_eq0011 : STD_LOGIC; 
  signal VGA_bt_cmp_ge0002 : STD_LOGIC; 
  signal VGA_bt_cmp_ge0008 : STD_LOGIC; 
  signal VGA_bt_cmp_ge00081_1868 : STD_LOGIC; 
  signal VGA_bt_cmp_ge0009 : STD_LOGIC; 
  signal VGA_bt_cmp_ge00091_1870 : STD_LOGIC; 
  signal VGA_bt_cmp_ge00101_1871 : STD_LOGIC; 
  signal VGA_bt_cmp_ge0011 : STD_LOGIC; 
  signal VGA_bt_cmp_ge0011214_1873 : STD_LOGIC; 
  signal VGA_bt_cmp_ge00131_1874 : STD_LOGIC; 
  signal VGA_bt_cmp_ge0015 : STD_LOGIC; 
  signal VGA_bt_cmp_ge0016 : STD_LOGIC; 
  signal VGA_bt_cmp_ge0019 : STD_LOGIC; 
  signal VGA_bt_cmp_le00021_1878 : STD_LOGIC; 
  signal VGA_bt_cmp_le00041_1879 : STD_LOGIC; 
  signal VGA_bt_cmp_le00081_1880 : STD_LOGIC; 
  signal VGA_bt_cmp_le0009 : STD_LOGIC; 
  signal VGA_bt_cmp_le0015 : STD_LOGIC; 
  signal VGA_bt_cmp_le0016 : STD_LOGIC; 
  signal VGA_bt_cmp_le0019 : STD_LOGIC; 
  signal VGA_bt_mux0000_0_1312_1885 : STD_LOGIC; 
  signal VGA_bt_mux0000_0_1313_1886 : STD_LOGIC; 
  signal VGA_bt_mux0000_0_1324_1887 : STD_LOGIC; 
  signal VGA_bt_mux0000_0_1333_1888 : STD_LOGIC; 
  signal VGA_bt_mux0000_0_1339_1889 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_100_1891 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_140_1892 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_173_1893 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_174 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_178_1895 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_18_1896 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_190_1897 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_2_1898 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_213_1899 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_224_1900 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_234_1901 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_25_1902 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_257_1903 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_314_1904 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_352_1905 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_42_1906 : STD_LOGIC; 
  signal VGA_bt_mux0000_1_73_1907 : STD_LOGIC; 
  signal VGA_bt_not0001 : STD_LOGIC; 
  signal VGA_bt_not0001107_1909 : STD_LOGIC; 
  signal VGA_bt_not0001123_1910 : STD_LOGIC; 
  signal VGA_bt_not0001136_1911 : STD_LOGIC; 
  signal VGA_bt_not000115_1912 : STD_LOGIC; 
  signal VGA_bt_not0001155_1913 : STD_LOGIC; 
  signal VGA_bt_not000118_1914 : STD_LOGIC; 
  signal VGA_bt_not0001205_SW0 : STD_LOGIC; 
  signal VGA_bt_not0001205_SW01_1916 : STD_LOGIC; 
  signal VGA_bt_not0001240_1917 : STD_LOGIC; 
  signal VGA_bt_not0001253_1918 : STD_LOGIC; 
  signal VGA_bt_not0001273_1919 : STD_LOGIC; 
  signal VGA_bt_not0001329_1920 : STD_LOGIC; 
  signal VGA_bt_not0001377_1921 : STD_LOGIC; 
  signal VGA_bt_not0001416_1922 : STD_LOGIC; 
  signal VGA_bt_not0001483_1923 : STD_LOGIC; 
  signal VGA_bt_not000151_1924 : STD_LOGIC; 
  signal VGA_bt_not0001536_1925 : STD_LOGIC; 
  signal VGA_bt_not0001590_1926 : STD_LOGIC; 
  signal VGA_bt_not000184 : STD_LOGIC; 
  signal VGA_bt_not0001841_1928 : STD_LOGIC; 
  signal VGA_bt_not0001842_1929 : STD_LOGIC; 
  signal VGA_bt_not000199_1930 : STD_LOGIC; 
  signal VGA_bt_or0000 : STD_LOGIC; 
  signal VGA_bt_or000015_1932 : STD_LOGIC; 
  signal VGA_bt_or000028_1933 : STD_LOGIC; 
  signal VGA_bt_or0002_1934 : STD_LOGIC; 
  signal VGA_bt_or0004 : STD_LOGIC; 
  signal VGA_bt_or0006 : STD_LOGIC; 
  signal VGA_bt_or0008 : STD_LOGIC; 
  signal VGA_bt_or0010 : STD_LOGIC; 
  signal VGA_bt_or0012_1939 : STD_LOGIC; 
  signal VGA_hs_1940 : STD_LOGIC; 
  signal VGA_hst_1941 : STD_LOGIC; 
  signal VGA_hst_mux0001 : STD_LOGIC; 
  signal VGA_romAddr_and0000 : STD_LOGIC; 
  signal VGA_romAddr_and0000107_1960 : STD_LOGIC; 
  signal VGA_romAddr_and00001212_1961 : STD_LOGIC; 
  signal VGA_romAddr_and00001248_1962 : STD_LOGIC; 
  signal VGA_romAddr_and0000125_1963 : STD_LOGIC; 
  signal VGA_romAddr_and0000127_1964 : STD_LOGIC; 
  signal VGA_romAddr_and00001281_1965 : STD_LOGIC; 
  signal VGA_romAddr_and0000165_1966 : STD_LOGIC; 
  signal VGA_romAddr_and0000198_1967 : STD_LOGIC; 
  signal VGA_romAddr_and0000200_1968 : STD_LOGIC; 
  signal VGA_romAddr_and0000274_1969 : STD_LOGIC; 
  signal VGA_romAddr_and0000311_1970 : STD_LOGIC; 
  signal VGA_romAddr_and0000338_1971 : STD_LOGIC; 
  signal VGA_romAddr_and0000389_1972 : STD_LOGIC; 
  signal VGA_romAddr_and0000428_1973 : STD_LOGIC; 
  signal VGA_romAddr_and0000440_1974 : STD_LOGIC; 
  signal VGA_romAddr_and0000463_1975 : STD_LOGIC; 
  signal VGA_romAddr_and000050_1976 : STD_LOGIC; 
  signal VGA_romAddr_and000068_1977 : STD_LOGIC; 
  signal VGA_romAddr_and000091_1978 : STD_LOGIC; 
  signal VGA_romAddr_and0001_1979 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_3_26_1983 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_3_48_1984 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_4_28_1986 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_4_42_1987 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_4_67_1988 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_5_70_1990 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_5_85_1991 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_6_111_1993 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_6_131_1994 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_6_43_1995 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_6_97_1996 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_7_18_1998 : STD_LOGIC; 
  signal VGA_romAddr_mux0053_7_29_1999 : STD_LOGIC; 
  signal VGA_romAddr_or0000_2002 : STD_LOGIC; 
  signal VGA_romData_mux0000 : STD_LOGIC; 
  signal VGA_romData_mux0001 : STD_LOGIC; 
  signal VGA_romData_mux0002 : STD_LOGIC; 
  signal VGA_romData_mux0003 : STD_LOGIC; 
  signal VGA_vs_2007 : STD_LOGIC; 
  signal VGA_vst_2008 : STD_LOGIC; 
  signal VGA_vst_mux0001 : STD_LOGIC; 
  signal VGA_vst_mux000111_2010 : STD_LOGIC; 
  signal VGA_vst_mux000123_2011 : STD_LOGIC; 
  signal VGA_x_cmp_eq0000_2022 : STD_LOGIC; 
  signal branch_type_from_id_tmp : STD_LOGIC; 
  signal bubble_to_id_alu_tmp : STD_LOGIC; 
  signal clk_IBUF_2083 : STD_LOGIC; 
  signal clk_IBUF1 : STD_LOGIC; 
  signal clk_manual_BUFGP_2086 : STD_LOGIC; 
  signal data_ready_IBUF_2088 : STD_LOGIC; 
  signal disp0_0_OBUF_2096 : STD_LOGIC; 
  signal disp0_1_OBUF_2097 : STD_LOGIC; 
  signal disp0_2_OBUF_2098 : STD_LOGIC; 
  signal disp0_3_OBUF_2099 : STD_LOGIC; 
  signal disp0_4_OBUF_2100 : STD_LOGIC; 
  signal disp0_5_OBUF_2101 : STD_LOGIC; 
  signal disp0_6_OBUF_2102 : STD_LOGIC; 
  signal disp1_0_OBUF_2110 : STD_LOGIC; 
  signal disp1_1_OBUF_2111 : STD_LOGIC; 
  signal disp1_2_OBUF_2112 : STD_LOGIC; 
  signal disp1_3_OBUF_2113 : STD_LOGIC; 
  signal disp1_4_OBUF_2114 : STD_LOGIC; 
  signal disp1_5_OBUF_2115 : STD_LOGIC; 
  signal disp1_6_OBUF_2116 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_10_rt_2139 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_11_rt_2141 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_12_rt_2143 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_13_rt_2145 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_14_rt_2147 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_1_rt_2149 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_2_rt_2151 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_3_rt_2153 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_4_rt_2155 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_5_rt_2157 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_6_rt_2159 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_7_rt_2161 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_8_rt_2163 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy_9_rt_2165 : STD_LOGIC; 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_xor_15_rt_2167 : STD_LOGIC; 
  signal instruction_fetch_module_imp_pc_in_cmp_eq0000112_2184 : STD_LOGIC; 
  signal instruction_fetch_module_imp_pc_in_cmp_eq0000125_2185 : STD_LOGIC; 
  signal instruction_fetch_module_imp_pc_in_cmp_eq0000149_2186 : STD_LOGIC; 
  signal instruction_fetch_module_imp_pc_in_cmp_eq0000158_2187 : STD_LOGIC; 
  signal instruction_fetch_module_imp_pc_in_mux0004_0_3 : STD_LOGIC; 
  signal instruction_fetch_module_imp_pc_in_mux0004_0_4 : STD_LOGIC; 
  signal instruction_fetch_module_imp_pc_in_mux0004_0_41_2191 : STD_LOGIC; 
  signal is_branch_from_id_tmp : STD_LOGIC; 
  signal is_hazard_1_to_id_tmp : STD_LOGIC; 
  signal is_hazard_2_to_id_tmp : STD_LOGIC; 
  signal is_jump_from_id_tmp : STD_LOGIC; 
  signal mem_write_from_id_tmp : STD_LOGIC; 
  signal oBlue_0_OBUF_2263 : STD_LOGIC; 
  signal ram1_en_OBUF_2305 : STD_LOGIC; 
  signal ram1_oe_OBUF_2307 : STD_LOGIC; 
  signal ram1_we_OBUF_2309 : STD_LOGIC; 
  signal ram2_addr_0_OBUF_2328 : STD_LOGIC; 
  signal ram2_addr_10_OBUF_2329 : STD_LOGIC; 
  signal ram2_addr_11_OBUF_2330 : STD_LOGIC; 
  signal ram2_addr_12_OBUF_2331 : STD_LOGIC; 
  signal ram2_addr_13_OBUF_2332 : STD_LOGIC; 
  signal ram2_addr_14_OBUF_2333 : STD_LOGIC; 
  signal ram2_addr_15_OBUF_2334 : STD_LOGIC; 
  signal ram2_addr_1_OBUF_2335 : STD_LOGIC; 
  signal ram2_addr_2_OBUF_2336 : STD_LOGIC; 
  signal ram2_addr_3_OBUF_2337 : STD_LOGIC; 
  signal ram2_addr_4_OBUF_2338 : STD_LOGIC; 
  signal ram2_addr_5_OBUF_2339 : STD_LOGIC; 
  signal ram2_addr_6_OBUF_2340 : STD_LOGIC; 
  signal ram2_addr_7_OBUF_2341 : STD_LOGIC; 
  signal ram2_addr_8_OBUF_2342 : STD_LOGIC; 
  signal ram2_addr_9_OBUF_2343 : STD_LOGIC; 
  signal ram2_oe_OBUF_2362 : STD_LOGIC; 
  signal ram2_we_OBUF_2364 : STD_LOGIC; 
  signal rdn_OBUF_2366 : STD_LOGIC; 
  signal register_module_imp_N0 : STD_LOGIC; 
  signal register_module_imp_N12 : STD_LOGIC; 
  signal register_module_imp_N13 : STD_LOGIC; 
  signal register_module_imp_N14 : STD_LOGIC; 
  signal register_module_imp_N15 : STD_LOGIC; 
  signal register_module_imp_N17 : STD_LOGIC; 
  signal register_module_imp_N2 : STD_LOGIC; 
  signal register_module_imp_N20 : STD_LOGIC; 
  signal register_module_imp_N22 : STD_LOGIC; 
  signal register_module_imp_N23 : STD_LOGIC; 
  signal register_module_imp_N26 : STD_LOGIC; 
  signal register_module_imp_N47 : STD_LOGIC; 
  signal register_module_imp_N57 : STD_LOGIC; 
  signal register_module_imp_N58 : STD_LOGIC; 
  signal register_module_imp_N6 : STD_LOGIC; 
  signal register_module_imp_N61 : STD_LOGIC; 
  signal register_module_imp_N63 : STD_LOGIC; 
  signal register_module_imp_N64 : STD_LOGIC; 
  signal register_module_imp_controller_imp_is_jump_cmp_eq0000 : STD_LOGIC; 
  signal register_module_imp_controller_imp_mem_write_cmp_eq0000 : STD_LOGIC; 
  signal register_module_imp_controller_imp_mem_write_cmp_eq0001 : STD_LOGIC; 
  signal register_module_imp_controller_imp_op_code_cmp_eq0004 : STD_LOGIC; 
  signal register_module_imp_controller_imp_op_code_cmp_eq0007 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand1_src116 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand1_src1161_2430 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand1_src_cmp_eq0000 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand1_src_cmp_eq0001 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand1_src_cmp_eq0002 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand1_src_cmp_eq0005 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand1_src_cmp_eq0006 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand1_src_cmp_eq0007 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand2_src_0_24_2437 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand2_src_0_60_2438 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand2_src_0_65_2439 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand2_src_0_76_2440 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand2_src_cmp_eq0001 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand2_src_cmp_eq0002 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand2_src_cmp_eq0003 : STD_LOGIC; 
  signal register_module_imp_controller_imp_operand2_src_or000014_2444 : STD_LOGIC; 
  signal register_module_imp_controller_imp_reg_write_enable_cmp_eq0001 : STD_LOGIC; 
  signal register_module_imp_controller_imp_wb_src_and0001 : STD_LOGIC; 
  signal register_module_imp_controller_imp_wb_src_cmp_eq0009 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_immediate_4_18_2448 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_immediate_4_6_2449 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_immediate_or0000 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_immediate_or0002_2451 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_1_0_2 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_1_0_20_2453 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_1_1_12_2454 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_1_1_39_2455 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_1_1_391 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_1_3_16_2457 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_1_3_5_2458 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_1_or0004 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_read_reg_2_1_1_2460 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_write_back_reg_1_1119 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_write_back_reg_1_11191_2462 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_write_back_reg_1_149_2463 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_write_back_reg_1_190 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_write_back_reg_1_1901_2465 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_write_back_reg_1_229_2466 : STD_LOGIC; 
  signal register_module_imp_decoder_imp_write_back_reg_1_26_2467 : STD_LOGIC; 
  signal register_module_imp_operand1_src_tmp : STD_LOGIC; 
  signal register_module_imp_registers_imp_N34 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N35 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N36 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N37 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N38 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N39 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N40 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N41 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N42 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N43 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N44 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N45 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N46 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N47 : STD_LOGIC; 
  signal register_module_imp_registers_imp_N48 : STD_LOGIC; 
  signal register_module_imp_registers_imp_ih_not0001 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux10_3_f5_2551 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux10_4_2552 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux10_4_f5_2553 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux10_5_2554 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux10_51_2555 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux10_6_2556 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux11_3_f5_2557 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux11_4_2558 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux11_4_f5_2559 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux11_5_2560 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux11_51_2561 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux11_6_2562 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux12_3_f5_2563 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux12_4_2564 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux12_4_f5_2565 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux12_5_2566 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux12_51_2567 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux12_6_2568 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux13_3_f5_2569 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux13_4_2570 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux13_4_f5_2571 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux13_5_2572 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux13_51_2573 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux13_6_2574 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux14_3_f5_2575 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux14_4_2576 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux14_4_f5_2577 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux14_5_2578 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux14_51_2579 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux14_6_2580 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux15_3_f5_2581 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux15_4_2582 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux15_4_f5_2583 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux15_5_2584 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux15_51_2585 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux15_6_2586 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux16_3_f5_2587 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux16_4_2588 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux16_4_f5_2589 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux16_5_2590 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux16_51_2591 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux16_6_2592 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux17_3_f5_2593 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux17_4_2594 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux17_4_f5_2595 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux17_5_2596 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux17_51_2597 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux17_6_2598 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux18_3_f5_2599 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux18_4_2600 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux18_4_f5_2601 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux18_5_2602 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux18_51_2603 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux18_6_2604 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux19_3_f5_2605 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux19_4_2606 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux19_4_f5_2607 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux19_5_2608 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux19_51_2609 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux19_6_2610 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux1_3_f5_2611 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux1_4_2612 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux1_4_f5_2613 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux1_5_2614 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux1_51_2615 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux1_6_2616 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux20_3_f5_2617 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux20_4_2618 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux20_4_f5_2619 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux20_5_2620 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux20_51_2621 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux20_6_2622 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux21_3_f5_2623 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux21_4_2624 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux21_4_f5_2625 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux21_5_2626 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux21_51_2627 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux21_6_2628 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux22_3_f5_2629 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux22_4_2630 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux22_4_f5_2631 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux22_5_2632 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux22_51_2633 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux22_6_2634 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux23_3_f5_2635 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux23_4_2636 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux23_4_f5_2637 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux23_5_2638 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux23_51_2639 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux23_6_2640 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux24_3_f5_2641 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux24_4_2642 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux24_4_f5_2643 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux24_5_2644 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux24_51_2645 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux24_6_2646 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux25_3_f5_2647 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux25_4_2648 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux25_4_f5_2649 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux25_5_2650 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux25_51_2651 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux25_6_2652 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux26_3_f5_2653 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux26_4_2654 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux26_4_f5_2655 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux26_5_2656 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux26_51_2657 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux26_6_2658 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux27_3_f5_2659 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux27_4_2660 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux27_4_f5_2661 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux27_5_2662 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux27_51_2663 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux27_6_2664 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux28_3_f5_2665 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux28_4_2666 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux28_4_f5_2667 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux28_5_2668 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux28_51_2669 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux28_6_2670 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux29_3_f5_2671 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux29_4_2672 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux29_4_f5_2673 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux29_5_2674 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux29_51_2675 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux29_6_2676 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux2_3_f5_2677 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux2_4_2678 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux2_4_f5_2679 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux2_5_2680 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux2_51_2681 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux2_6_2682 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux30_3_f5_2683 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux30_4_2684 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux30_4_f5_2685 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux30_5_2686 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux30_51_2687 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux30_6_2688 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux31_3_f5_2689 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux31_4_2690 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux31_4_f5_2691 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux31_5_2692 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux31_51_2693 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux31_6_2694 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux3_3_f5_2695 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux3_4_2696 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux3_4_f5_2697 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux3_5_2698 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux3_51_2699 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux3_6_2700 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux4_3_f5_2701 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux4_4_2702 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux4_4_f5_2703 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux4_5_2704 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux4_51_2705 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux4_6_2706 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux5_3_f5_2707 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux5_4_2708 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux5_4_f5_2709 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux5_5_2710 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux5_51_2711 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux5_6_2712 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux6_3_f5_2713 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux6_4_2714 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux6_4_f5_2715 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux6_5_2716 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux6_51_2717 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux6_6_2718 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux7_3_f5_2719 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux7_4_2720 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux7_4_f5_2721 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux7_5_2722 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux7_51_2723 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux7_6_2724 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux8_3_f5_2725 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux8_4_2726 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux8_4_f5_2727 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux8_5_2728 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux8_51_2729 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux8_6_2730 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux9_3_f5_2731 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux9_4_2732 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux9_4_f5_2733 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux9_5_2734 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux9_51_2735 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux9_6_2736 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux_3_f5_2737 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux_4_2738 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux_4_f5_2739 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux_5_2740 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux_51_2741 : STD_LOGIC; 
  signal register_module_imp_registers_imp_mux_6_2742 : STD_LOGIC; 
  signal register_module_imp_registers_imp_ra_not0001 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_1_2760 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_17_2761 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_24_2762 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_32_2763 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_37_2764 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_46_2765 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_51_2766 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_60_SW41 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_0_9_2768 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_10_1_2769 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_10_17_2770 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_10_24_2771 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_10_46_2772 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_10_9_2773 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_11_1_2774 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_11_17_2775 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_11_24_2776 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_11_46_2777 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_11_9_2778 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_12_1_2779 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_12_17_2780 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_12_24_2781 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_12_46_2782 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_12_9_2783 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_13_1_2784 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_13_17_2785 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_13_24_2786 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_13_46_2787 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_13_9_2788 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_14_1_2789 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_14_17_2790 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_14_24_2791 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_14_46_2792 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_14_9_2793 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_15_1_2794 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_15_17_2795 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_15_24_2796 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_15_32_2797 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_15_37_2798 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_15_46_2799 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_15_9_2800 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_1_17_2801 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_1_3_2802 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_1_46_2803 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_1_9_2804 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_2_17_2805 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_2_3_2806 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_2_46_2807 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_2_9_2808 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_3_17_2809 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_3_3_2810 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_3_32_2811 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_3_37_2812 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_3_46_2813 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_3_9_2814 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_4_17_2815 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_4_3_2816 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_4_46_2817 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_4_9_2818 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_5_17_2819 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_5_3_2820 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_5_46_2821 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_5_9_2822 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_6_17_2823 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_6_3_2824 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_6_46_2825 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_6_9_2826 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_7_17_2827 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_7_3_2828 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_7_46_2829 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_7_9_2830 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_8_17_2831 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_8_3_2832 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_8_46_2833 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_8_9_2834 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_9_17_2835 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_9_3_2836 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_9_46_2837 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data1_9_9_2838 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_0_1_2839 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_0_17_2840 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_0_24_2841 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_0_4_2842 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_0_9_2843 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_10_53_2844 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_10_9_2845 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_11_53_2846 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_11_9_2847 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_12_53_2848 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_12_9_2849 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_13_53_2850 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_13_9_2851 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_14_53_2852 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_14_9_2853 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_15_53_2854 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_15_9_2855 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_1_17_2856 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_1_53_2857 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_2_17_2858 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_2_33_2859 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_2_9_2860 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_3_17_2861 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_3_53_2862 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_4_17_2863 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_4_53_2864 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_5_17_2865 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_6_17_2866 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_6_53_2867 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_7_17_2868 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_8_17_2869 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_9_17_2870 : STD_LOGIC; 
  signal register_module_imp_registers_imp_read_data2_9_53_2871 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_0_2872 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_1_2873 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_10_2874 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_11_2875 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_12_2876 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_13_2877 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_14_2878 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_15_2879 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_2_2880 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_3_2881 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_4_2882 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_5_2883 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_6_2884 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_7_2885 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_8_2886 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_9_2887 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_0_and0000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_0_2889 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_1_2890 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_10_2891 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_11_2892 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_12_2893 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_13_2894 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_14_2895 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_15_2896 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_2_2897 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_3_2898 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_4_2899 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_5_2900 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_6_2901 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_7_2902 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_8_2903 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_9_2904 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_1_and0000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_0_2906 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_1_2907 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_10_2908 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_11_2909 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_12_2910 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_13_2911 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_14_2912 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_15_2913 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_2_2914 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_3_2915 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_4_2916 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_5_2917 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_6_2918 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_7_2919 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_8_2920 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_9_2921 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_2_and0000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_0_2923 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_1_2924 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_10_2925 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_11_2926 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_12_2927 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_13_2928 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_14_2929 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_15_2930 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_2_2931 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_3_2932 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_4_2933 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_5_2934 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_6_2935 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_7_2936 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_8_2937 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_9_2938 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_3_and0000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_0_2940 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_1_2941 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_10_2942 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_11_2943 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_12_2944 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_13_2945 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_14_2946 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_15_2947 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_2_2948 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_3_2949 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_4_2950 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_5_2951 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_6_2952 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_7_2953 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_8_2954 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_9_2955 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_4_and0000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_0_2957 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_1_2958 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_10_2959 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_11_2960 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_12_2961 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_13_2962 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_14_2963 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_15_2964 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_2_2965 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_3_2966 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_4_2967 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_5_2968 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_6_2969 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_7_2970 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_8_2971 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_9_2972 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_5_and0000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_0_2974 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_1_2975 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_10_2976 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_11_2977 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_12_2978 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_13_2979 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_14_2980 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_15_2981 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_2_2982 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_3_2983 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_4_2984 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_5_2985 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_6_2986 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_7_2987 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_8_2988 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_9_2989 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_6_and0000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_0_2991 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_1_2992 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_10_2993 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_11_2994 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_12_2995 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_13_2996 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_14_2997 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_15_2998 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_2_2999 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_3_3000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_4_3001 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_5_3002 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_6_3003 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_7_3004 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_8_3005 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_9_3006 : STD_LOGIC; 
  signal register_module_imp_registers_imp_regs_7_and0000 : STD_LOGIC; 
  signal register_module_imp_registers_imp_sp_not0001 : STD_LOGIC; 
  signal register_module_imp_registers_imp_t_not0001 : STD_LOGIC; 
  signal rst_IBUF_3043 : STD_LOGIC; 
  signal rst_IBUF1 : STD_LOGIC; 
  signal tbre_IBUF_3046 : STD_LOGIC; 
  signal tsre_IBUF_3048 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_103_3051 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_111_3052 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_12_3053 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_132_3054 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_27_3055 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_47_3056 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_5_3057 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_78_3058 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_83_3059 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_9_3060 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_0_92_3061 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_10_111_3063 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_10_26_3064 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_10_5_3065 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_11_26_3067 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_11_5_3068 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_12_26_3070 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_12_5_3071 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_13_26_3073 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_13_5_3074 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_14_26_3076 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_14_5_3077 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_15_26_3079 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_15_5_3080 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_1_111_3082 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_1_26_3083 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_1_5_3084 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_2_5_3086 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_3_111_3088 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_3_26_3089 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_3_5_3090 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_4_111_3092 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_4_26_3093 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_4_5_3094 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_5_111_3096 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_5_26_3097 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_5_5_3098 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_6_111_3100 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_6_26_3101 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_6_5_3102 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_7_111_3104 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_7_26_3105 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_7_5_3106 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_8_111_3108 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_8_26_3109 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_8_5_3110 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_9_111_3112 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_9_26_3113 : STD_LOGIC; 
  signal write_back_data_from_alu_tmp_9_5_3114 : STD_LOGIC; 
  signal wrn_OBUF_3148 : STD_LOGIC; 
  signal NLW_ALU_imp_tmp_shift0006_15_1_LO_UNCONNECTED : STD_LOGIC; 
  signal ALU_MEM_regs_imp_mem_address_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALU_MEM_regs_imp_mem_data_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALU_MEM_regs_imp_write_back_data_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALU_MEM_regs_imp_write_back_reg_out : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ALU_imp_Maddsub_tmp_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal ALU_imp_Maddsub_tmp_addsub0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALU_imp_tmp_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALU_imp_tmp_mux0000 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal ALU_imp_tmp_shift0006 : STD_LOGIC_VECTOR ( 15 downto 15 ); 
  signal DM_imp_DataOut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal DM_imp_Mcompar_judge_cmp_gt0001_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal DM_imp_Mcompar_judge_cmp_gt0001_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal DM_imp_Mtridata_Ram1Data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal DM_imp_Mtrien_Ram1Data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal DM_imp_Ram1Addr : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_ALU_regs_imp_immediate_out_mux0001 : STD_LOGIC_VECTOR ( 15 downto 5 ); 
  signal ID_ALU_regs_imp_op_code_out : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ID_ALU_regs_imp_op_code_out_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ID_ALU_regs_imp_operand1_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_ALU_regs_imp_operand1_out_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_ALU_regs_imp_operand2_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_ALU_regs_imp_operand2_out_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_ALU_regs_imp_pc_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_ALU_regs_imp_wb_data_from_reg_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_ALU_regs_imp_wb_data_from_reg_out_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_ALU_regs_imp_wb_src_out : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ID_ALU_regs_imp_wb_src_out_mux0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ID_ALU_regs_imp_write_back_reg_out : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ID_ALU_regs_imp_write_back_reg_out_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ID_forward_IF_regs_imp_branch_relative_reg_data_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_forward_IF_regs_imp_branch_target_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ID_forward_IF_regs_imp_jump_target_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal IF_ID_regs_imp_instruction_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal IF_ID_regs_imp_instruction_out_mux0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal IF_ID_regs_imp_pc_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal MEM_WB_regs_imp_write_back_data_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal MEM_WB_regs_imp_write_back_reg_out : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Madd_write_back_data_from_alu_tmp_addsub0000_lut : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal VGA_Madd_romAddr_add0001_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal VGA_Madd_romAddr_add0002_Madd_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal VGA_Madd_romAddr_add0002_Madd_lut : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal VGA_Madd_romAddr_addsub0000_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal VGA_Madd_romAddr_addsub0000_Madd_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal VGA_Mcount_x_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal VGA_Mcount_x_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal VGA_Mcount_y_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal VGA_Msub_romAddr_sub0000_cy : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal VGA_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal VGA_bt : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal VGA_bt_mux0000 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal VGA_romAddr : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal VGA_romAddr_add0001 : STD_LOGIC_VECTOR ( 9 downto 5 ); 
  signal VGA_romAddr_mux0000 : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal VGA_romAddr_mux0053 : STD_LOGIC_VECTOR ( 10 downto 3 ); 
  signal VGA_x : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal VGA_y : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal alu_result_from_alu_tmp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal branch_relative_reg_data_from_id_tmp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal branch_target_from_id_tmp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal fontData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal immediate_from_id_tmp : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal instruction_fetch_module_imp_Madd_pc_in_share0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instruction_fetch_module_imp_pc_in : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal instruction_fetch_module_imp_pc_in_mux0004 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal instruction_fetch_module_imp_pc_in_share0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal jump_target_from_id_tmp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal read_reg_1_from_id : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal read_reg_2_from_id : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal register_module_imp_Madd_branch_target_out_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal register_module_imp_Madd_branch_target_out_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal register_module_imp_operand2_src_tmp : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal register_module_imp_read_data2_tmp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal register_module_imp_registers_imp_varindex0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal register_module_imp_registers_imp_varindex0001 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal register_module_imp_registers_imp_ih : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal register_module_imp_registers_imp_ra : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal register_module_imp_registers_imp_sp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal register_module_imp_registers_imp_t : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal write_back_data_from_alu_tmp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal write_back_data_from_alu_tmp_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal write_back_data_from_mem_tmp : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => ram2_oe_OBUF_2362
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => ram2_oe_OBUF_2362,
      DI => ID_ALU_regs_imp_pc_out(0),
      S => Madd_write_back_data_from_alu_tmp_addsub0000_lut(0),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(0)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_0_Q : XORCY
    port map (
      CI => ram2_oe_OBUF_2362,
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_lut(0),
      O => write_back_data_from_alu_tmp_addsub0000(0)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(0),
      DI => ID_ALU_regs_imp_pc_out(1),
      S => Madd_write_back_data_from_alu_tmp_addsub0000_lut(1),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(1)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(0),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_lut(1),
      O => write_back_data_from_alu_tmp_addsub0000(1)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(1),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_2_rt_779,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(2)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(1),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_2_rt_779,
      O => write_back_data_from_alu_tmp_addsub0000(2)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(2),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_3_rt_781,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(3)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(2),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_3_rt_781,
      O => write_back_data_from_alu_tmp_addsub0000(3)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(3),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_4_rt_783,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(4)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(3),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_4_rt_783,
      O => write_back_data_from_alu_tmp_addsub0000(4)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(4),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_5_rt_785,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(5)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(4),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_5_rt_785,
      O => write_back_data_from_alu_tmp_addsub0000(5)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(5),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_6_rt_787,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(6)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(5),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_6_rt_787,
      O => write_back_data_from_alu_tmp_addsub0000(6)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(6),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_7_rt_789,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(7)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(6),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_7_rt_789,
      O => write_back_data_from_alu_tmp_addsub0000(7)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(7),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_8_rt_791,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(8)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(7),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_8_rt_791,
      O => write_back_data_from_alu_tmp_addsub0000(8)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(8),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_9_rt_793,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(9)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(8),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_9_rt_793,
      O => write_back_data_from_alu_tmp_addsub0000(9)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(9),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_10_rt_768,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(10)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(9),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_10_rt_768,
      O => write_back_data_from_alu_tmp_addsub0000(10)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(10),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_11_rt_770,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(11)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(10),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_11_rt_770,
      O => write_back_data_from_alu_tmp_addsub0000(11)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(11),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_12_rt_772,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(12)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_12_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(11),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_12_rt_772,
      O => write_back_data_from_alu_tmp_addsub0000(12)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(12),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_13_rt_774,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(13)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_13_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(12),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_13_rt_774,
      O => write_back_data_from_alu_tmp_addsub0000(13)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(13),
      DI => ram2_oe_OBUF_2362,
      S => Madd_write_back_data_from_alu_tmp_addsub0000_cy_14_rt_776,
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy(14)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_14_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(13),
      LI => Madd_write_back_data_from_alu_tmp_addsub0000_cy_14_rt_776,
      O => write_back_data_from_alu_tmp_addsub0000(14)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_xor_15_Q : XORCY
    port map (
      CI => Madd_write_back_data_from_alu_tmp_addsub0000_cy(14),
      LI => ID_ALU_regs_imp_pc_out(15),
      O => write_back_data_from_alu_tmp_addsub0000(15)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_cy_5_Q : MUXCY
    port map (
      CI => DM_imp_Mcompar_judge_cmp_gt0001_cy(4),
      DI => N1,
      S => DM_imp_Mcompar_judge_cmp_gt0001_cy_5_rt_349,
      O => DM_imp_Mcompar_judge_cmp_gt0001_cy(5)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_cy_4_Q : MUXCY
    port map (
      CI => DM_imp_Mcompar_judge_cmp_gt0001_cy(3),
      DI => ram2_oe_OBUF_2362,
      S => DM_imp_Mcompar_judge_cmp_gt0001_lut(4),
      O => DM_imp_Mcompar_judge_cmp_gt0001_cy(4)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_cy_3_Q : MUXCY
    port map (
      CI => DM_imp_Mcompar_judge_cmp_gt0001_cy(2),
      DI => N1,
      S => DM_imp_Mcompar_judge_cmp_gt0001_lut(3),
      O => DM_imp_Mcompar_judge_cmp_gt0001_cy(3)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_lut_3_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(12),
      I1 => ALU_MEM_regs_imp_mem_address_out(13),
      O => DM_imp_Mcompar_judge_cmp_gt0001_lut(3)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_cy_2_Q : MUXCY
    port map (
      CI => DM_imp_Mcompar_judge_cmp_gt0001_cy(1),
      DI => N1,
      S => DM_imp_Mcompar_judge_cmp_gt0001_lut(2),
      O => DM_imp_Mcompar_judge_cmp_gt0001_cy(2)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(8),
      I1 => ALU_MEM_regs_imp_mem_address_out(9),
      I2 => ALU_MEM_regs_imp_mem_address_out(10),
      I3 => ALU_MEM_regs_imp_mem_address_out(11),
      O => DM_imp_Mcompar_judge_cmp_gt0001_lut(2)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_cy_1_Q : MUXCY
    port map (
      CI => DM_imp_Mcompar_judge_cmp_gt0001_cy(0),
      DI => ram2_oe_OBUF_2362,
      S => DM_imp_Mcompar_judge_cmp_gt0001_lut(1),
      O => DM_imp_Mcompar_judge_cmp_gt0001_cy(1)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(6),
      I1 => ALU_MEM_regs_imp_mem_address_out(7),
      O => DM_imp_Mcompar_judge_cmp_gt0001_lut(1)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => ram2_oe_OBUF_2362,
      S => DM_imp_Mcompar_judge_cmp_gt0001_lut(0),
      O => DM_imp_Mcompar_judge_cmp_gt0001_cy(0)
    );
  DM_imp_Mcompar_judge_cmp_gt0001_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(2),
      I1 => ALU_MEM_regs_imp_mem_address_out(3),
      I2 => ALU_MEM_regs_imp_mem_address_out(4),
      I3 => ALU_MEM_regs_imp_mem_address_out(5),
      O => DM_imp_Mcompar_judge_cmp_gt0001_lut(0)
    );
  DM_imp_DataOut_10 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_10_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(10)
    );
  DM_imp_DataOut_11 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_11_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(11)
    );
  DM_imp_DataOut_12 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_12_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(12)
    );
  DM_imp_DataOut_13 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_13_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(13)
    );
  DM_imp_DataOut_14 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_14_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(14)
    );
  DM_imp_DataOut_15 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_15_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(15)
    );
  DM_imp_DataOut_0 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_0_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(0)
    );
  DM_imp_DataOut_1 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_1_mux0005_326,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(1)
    );
  DM_imp_DataOut_2 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_2_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(2)
    );
  DM_imp_DataOut_3 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_3_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(3)
    );
  DM_imp_DataOut_4 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_4_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(4)
    );
  DM_imp_DataOut_5 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_5_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(5)
    );
  DM_imp_DataOut_6 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_6_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(6)
    );
  DM_imp_DataOut_7 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_7_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(7)
    );
  DM_imp_DataOut_8 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_8_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(8)
    );
  DM_imp_DataOut_9 : LDCE
    port map (
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => DM_imp_DataOut_9_mux0005,
      G => ALU_MEM_regs_imp_mem_read_out_33,
      GE => DM_imp_DataOut_0_0_not0001,
      Q => DM_imp_DataOut(9)
    );
  DM_imp_Mtridata_Ram1Data_10_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_10_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(10)
    );
  DM_imp_Mtridata_Ram1Data_11_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_11_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(11)
    );
  DM_imp_Mtridata_Ram1Data_12_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_12_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(12)
    );
  DM_imp_Mtridata_Ram1Data_13_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_13_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(13)
    );
  DM_imp_Mtridata_Ram1Data_14_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_14_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(14)
    );
  DM_imp_Mtridata_Ram1Data_15_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_15_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(15)
    );
  DM_imp_Mtridata_Ram1Data_0_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_0_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(0)
    );
  DM_imp_Mtridata_Ram1Data_1_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_1_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(1)
    );
  DM_imp_Mtridata_Ram1Data_2_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_2_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(2)
    );
  DM_imp_Mtridata_Ram1Data_3_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_3_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(3)
    );
  DM_imp_Mtridata_Ram1Data_4_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_4_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(4)
    );
  DM_imp_Mtridata_Ram1Data_5_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_5_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(5)
    );
  DM_imp_Mtridata_Ram1Data_6_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_6_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(6)
    );
  DM_imp_Mtridata_Ram1Data_7_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_7_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(7)
    );
  DM_imp_Mtridata_Ram1Data_8_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_8_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(8)
    );
  DM_imp_Mtridata_Ram1Data_9_Q : LD
    port map (
      D => DM_imp_Mtridata_Ram1Data_9_mux0000,
      G => rst_IBUF_3043,
      Q => DM_imp_Mtridata_Ram1Data(9)
    );
  DM_imp_Mtrien_Ram1Data_10_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_10_not0001_394,
      Q => DM_imp_Mtrien_Ram1Data(10)
    );
  DM_imp_Mtrien_Ram1Data_11_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_10_not0001_394,
      Q => DM_imp_Mtrien_Ram1Data(11)
    );
  DM_imp_Mtrien_Ram1Data_12_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_10_not0001_394,
      Q => DM_imp_Mtrien_Ram1Data(12)
    );
  DM_imp_Mtrien_Ram1Data_13_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_10_not0001_394,
      Q => DM_imp_Mtrien_Ram1Data(13)
    );
  DM_imp_Mtrien_Ram1Data_14_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_10_not0001_394,
      Q => DM_imp_Mtrien_Ram1Data(14)
    );
  DM_imp_Mtrien_Ram1Data_15_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_10_not0001_394,
      Q => DM_imp_Mtrien_Ram1Data(15)
    );
  DM_imp_Ram1Addr_0 : LD
    port map (
      D => DM_imp_Ram1Addr_0_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(0)
    );
  DM_imp_Ram1Addr_1 : LD
    port map (
      D => DM_imp_Ram1Addr_1_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(1)
    );
  DM_imp_Ram1Addr_2 : LD
    port map (
      D => DM_imp_Ram1Addr_2_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(2)
    );
  DM_imp_Ram1Addr_3 : LD
    port map (
      D => DM_imp_Ram1Addr_3_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(3)
    );
  DM_imp_Ram1Addr_4 : LD
    port map (
      D => DM_imp_Ram1Addr_4_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(4)
    );
  DM_imp_Mtrien_Ram1Data_0_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_0_not0001_389,
      Q => DM_imp_Mtrien_Ram1Data(0)
    );
  DM_imp_Ram1Addr_5 : LD
    port map (
      D => DM_imp_Ram1Addr_5_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(5)
    );
  DM_imp_Mtrien_Ram1Data_1_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_0_not0001_389,
      Q => DM_imp_Mtrien_Ram1Data(1)
    );
  DM_imp_Ram1Addr_6 : LD
    port map (
      D => DM_imp_Ram1Addr_6_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(6)
    );
  DM_imp_Mtrien_Ram1Data_2_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_0_not0001_389,
      Q => DM_imp_Mtrien_Ram1Data(2)
    );
  DM_imp_Ram1Addr_7 : LD
    port map (
      D => DM_imp_Ram1Addr_7_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(7)
    );
  DM_imp_Mtrien_Ram1Data_3_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_0_not0001_389,
      Q => DM_imp_Mtrien_Ram1Data(3)
    );
  DM_imp_Ram1Addr_8 : LD
    port map (
      D => DM_imp_Ram1Addr_8_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(8)
    );
  DM_imp_Mtrien_Ram1Data_4_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_0_not0001_389,
      Q => DM_imp_Mtrien_Ram1Data(4)
    );
  DM_imp_Ram1Addr_9 : LD
    port map (
      D => DM_imp_Ram1Addr_9_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(9)
    );
  DM_imp_Mtrien_Ram1Data_5_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_0_not0001_389,
      Q => DM_imp_Mtrien_Ram1Data(5)
    );
  DM_imp_Ram1Addr_10 : LD
    port map (
      D => DM_imp_Ram1Addr_10_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(10)
    );
  DM_imp_Mtrien_Ram1Data_6_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_0_not0001_389,
      Q => DM_imp_Mtrien_Ram1Data(6)
    );
  DM_imp_Ram1Addr_11 : LD
    port map (
      D => DM_imp_Ram1Addr_11_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(11)
    );
  DM_imp_Mtrien_Ram1Data_7_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_0_not0001_389,
      Q => DM_imp_Mtrien_Ram1Data(7)
    );
  DM_imp_Ram1Addr_12 : LD
    port map (
      D => DM_imp_Ram1Addr_12_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(12)
    );
  DM_imp_Mtrien_Ram1Data_8_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_10_not0001_394,
      Q => DM_imp_Mtrien_Ram1Data(8)
    );
  DM_imp_Ram1Addr_13 : LD
    port map (
      D => DM_imp_Ram1Addr_13_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(13)
    );
  DM_imp_Mtrien_Ram1Data_9_Q : LD
    port map (
      D => DM_imp_Mtrien_Ram1Data_0_mux0000_388,
      G => DM_imp_Mtrien_Ram1Data_10_not0001_394,
      Q => DM_imp_Mtrien_Ram1Data(9)
    );
  DM_imp_Ram1Addr_14 : LD
    port map (
      D => DM_imp_Ram1Addr_14_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(14)
    );
  DM_imp_Ram1Addr_15 : LD
    port map (
      D => DM_imp_Ram1Addr_15_mux0006,
      G => DM_imp_Ram1Addr_0_not0001,
      Q => DM_imp_Ram1Addr(15)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_15_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(14),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_xor_15_rt_2167,
      O => instruction_fetch_module_imp_pc_in_share0000(15)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_14_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(13),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_14_rt_2147,
      O => instruction_fetch_module_imp_pc_in_share0000(14)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_14_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(13),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_14_rt_2147,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(14)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_13_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(12),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_13_rt_2145,
      O => instruction_fetch_module_imp_pc_in_share0000(13)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_13_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(12),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_13_rt_2145,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(13)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_12_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(11),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_12_rt_2143,
      O => instruction_fetch_module_imp_pc_in_share0000(12)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_12_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(11),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_12_rt_2143,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(12)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_11_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(10),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_11_rt_2141,
      O => instruction_fetch_module_imp_pc_in_share0000(11)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_11_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(10),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_11_rt_2141,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(11)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_10_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(9),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_10_rt_2139,
      O => instruction_fetch_module_imp_pc_in_share0000(10)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_10_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(9),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_10_rt_2139,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(10)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_9_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(8),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_9_rt_2165,
      O => instruction_fetch_module_imp_pc_in_share0000(9)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_9_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(8),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_9_rt_2165,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(9)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_8_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(7),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_8_rt_2163,
      O => instruction_fetch_module_imp_pc_in_share0000(8)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_8_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(7),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_8_rt_2163,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(8)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_7_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(6),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_7_rt_2161,
      O => instruction_fetch_module_imp_pc_in_share0000(7)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_7_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(6),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_7_rt_2161,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(7)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_6_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(5),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_6_rt_2159,
      O => instruction_fetch_module_imp_pc_in_share0000(6)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_6_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(5),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_6_rt_2159,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(6)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_5_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(4),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_5_rt_2157,
      O => instruction_fetch_module_imp_pc_in_share0000(5)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_5_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(4),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_5_rt_2157,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(5)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_4_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(3),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_4_rt_2155,
      O => instruction_fetch_module_imp_pc_in_share0000(4)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_4_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(3),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_4_rt_2155,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(4)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_3_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(2),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_3_rt_2153,
      O => instruction_fetch_module_imp_pc_in_share0000(3)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_3_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(2),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_3_rt_2153,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(3)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_2_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(1),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_2_rt_2151,
      O => instruction_fetch_module_imp_pc_in_share0000(2)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_2_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(1),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_2_rt_2151,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(2)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_1_Q : XORCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(0),
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_1_rt_2149,
      O => instruction_fetch_module_imp_pc_in_share0000(1)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_1_Q : MUXCY
    port map (
      CI => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(0),
      DI => ram2_oe_OBUF_2362,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_1_rt_2149,
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(1)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_0_Q : XORCY
    port map (
      CI => ram2_oe_OBUF_2362,
      LI => instruction_fetch_module_imp_Madd_pc_in_share0000_lut(0),
      O => instruction_fetch_module_imp_pc_in_share0000(0)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_0_Q : MUXCY
    port map (
      CI => ram2_oe_OBUF_2362,
      DI => N1,
      S => instruction_fetch_module_imp_Madd_pc_in_share0000_lut(0),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy(0)
    );
  instruction_fetch_module_imp_pc_in_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(15),
      Q => instruction_fetch_module_imp_pc_in(15)
    );
  instruction_fetch_module_imp_pc_in_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(14),
      Q => instruction_fetch_module_imp_pc_in(14)
    );
  instruction_fetch_module_imp_pc_in_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(13),
      Q => instruction_fetch_module_imp_pc_in(13)
    );
  instruction_fetch_module_imp_pc_in_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(12),
      Q => instruction_fetch_module_imp_pc_in(12)
    );
  instruction_fetch_module_imp_pc_in_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(11),
      Q => instruction_fetch_module_imp_pc_in(11)
    );
  instruction_fetch_module_imp_pc_in_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(10),
      Q => instruction_fetch_module_imp_pc_in(10)
    );
  instruction_fetch_module_imp_pc_in_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(9),
      Q => instruction_fetch_module_imp_pc_in(9)
    );
  instruction_fetch_module_imp_pc_in_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(8),
      Q => instruction_fetch_module_imp_pc_in(8)
    );
  instruction_fetch_module_imp_pc_in_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(7),
      Q => instruction_fetch_module_imp_pc_in(7)
    );
  instruction_fetch_module_imp_pc_in_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(6),
      Q => instruction_fetch_module_imp_pc_in(6)
    );
  instruction_fetch_module_imp_pc_in_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(5),
      Q => instruction_fetch_module_imp_pc_in(5)
    );
  instruction_fetch_module_imp_pc_in_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(4),
      Q => instruction_fetch_module_imp_pc_in(4)
    );
  instruction_fetch_module_imp_pc_in_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(3),
      Q => instruction_fetch_module_imp_pc_in(3)
    );
  instruction_fetch_module_imp_pc_in_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(2),
      Q => instruction_fetch_module_imp_pc_in(2)
    );
  instruction_fetch_module_imp_pc_in_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(1),
      Q => instruction_fetch_module_imp_pc_in(1)
    );
  instruction_fetch_module_imp_pc_in_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in_mux0004(0),
      Q => instruction_fetch_module_imp_pc_in(0)
    );
  VGA_Mcount_y_xor_8_Q : XORCY
    port map (
      CI => VGA_Mcount_y_cy(7),
      LI => VGA_Mcount_y_xor_8_rt_1759,
      O => VGA_Result_8_1
    );
  VGA_Mcount_y_xor_7_Q : XORCY
    port map (
      CI => VGA_Mcount_y_cy(6),
      LI => VGA_Mcount_y_cy_7_rt_1757,
      O => VGA_Result_7_1
    );
  VGA_Mcount_y_cy_7_Q : MUXCY
    port map (
      CI => VGA_Mcount_y_cy(6),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_y_cy_7_rt_1757,
      O => VGA_Mcount_y_cy(7)
    );
  VGA_Mcount_y_xor_6_Q : XORCY
    port map (
      CI => VGA_Mcount_y_cy(5),
      LI => VGA_Mcount_y_cy_6_rt_1755,
      O => VGA_Result_6_1
    );
  VGA_Mcount_y_cy_6_Q : MUXCY
    port map (
      CI => VGA_Mcount_y_cy(5),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_y_cy_6_rt_1755,
      O => VGA_Mcount_y_cy(6)
    );
  VGA_Mcount_y_xor_5_Q : XORCY
    port map (
      CI => VGA_Mcount_y_cy(4),
      LI => VGA_Mcount_y_cy_5_rt_1753,
      O => VGA_Result_5_1
    );
  VGA_Mcount_y_cy_5_Q : MUXCY
    port map (
      CI => VGA_Mcount_y_cy(4),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_y_cy_5_rt_1753,
      O => VGA_Mcount_y_cy(5)
    );
  VGA_Mcount_y_xor_4_Q : XORCY
    port map (
      CI => VGA_Mcount_y_cy(3),
      LI => VGA_Mcount_y_cy_4_rt_1751,
      O => VGA_Result_4_1
    );
  VGA_Mcount_y_cy_4_Q : MUXCY
    port map (
      CI => VGA_Mcount_y_cy(3),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_y_cy_4_rt_1751,
      O => VGA_Mcount_y_cy(4)
    );
  VGA_Mcount_y_xor_3_Q : XORCY
    port map (
      CI => VGA_Mcount_y_cy(2),
      LI => VGA_Mcount_y_cy_3_rt_1749,
      O => VGA_Result_3_1
    );
  VGA_Mcount_y_cy_3_Q : MUXCY
    port map (
      CI => VGA_Mcount_y_cy(2),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_y_cy_3_rt_1749,
      O => VGA_Mcount_y_cy(3)
    );
  VGA_Mcount_y_xor_2_Q : XORCY
    port map (
      CI => VGA_Mcount_y_cy(1),
      LI => VGA_Mcount_y_cy_2_rt_1747,
      O => VGA_Result_2_1
    );
  VGA_Mcount_y_cy_2_Q : MUXCY
    port map (
      CI => VGA_Mcount_y_cy(1),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_y_cy_2_rt_1747,
      O => VGA_Mcount_y_cy(2)
    );
  VGA_Mcount_y_xor_1_Q : XORCY
    port map (
      CI => VGA_Mcount_y_cy(0),
      LI => VGA_Mcount_y_cy_1_rt_1745,
      O => VGA_Result_1_1
    );
  VGA_Mcount_y_cy_1_Q : MUXCY
    port map (
      CI => VGA_Mcount_y_cy(0),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_y_cy_1_rt_1745,
      O => VGA_Mcount_y_cy(1)
    );
  VGA_Mcount_y_xor_0_Q : XORCY
    port map (
      CI => ram2_oe_OBUF_2362,
      LI => VGA_Mcount_y_lut_0_1,
      O => VGA_Result_0_1
    );
  VGA_Mcount_y_cy_0_Q : MUXCY
    port map (
      CI => ram2_oe_OBUF_2362,
      DI => N1,
      S => VGA_Mcount_y_lut_0_1,
      O => VGA_Mcount_y_cy(0)
    );
  VGA_Mcount_x_xor_9_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(8),
      LI => VGA_Mcount_x_xor_9_rt_1742,
      O => VGA_Result(9)
    );
  VGA_Mcount_x_xor_8_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(7),
      LI => VGA_Mcount_x_cy_8_rt_1730,
      O => VGA_Result(8)
    );
  VGA_Mcount_x_cy_8_Q : MUXCY
    port map (
      CI => VGA_Mcount_x_cy(7),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_x_cy_8_rt_1730,
      O => VGA_Mcount_x_cy(8)
    );
  VGA_Mcount_x_xor_7_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(6),
      LI => VGA_Mcount_x_cy_7_rt_1728,
      O => VGA_Result(7)
    );
  VGA_Mcount_x_cy_7_Q : MUXCY
    port map (
      CI => VGA_Mcount_x_cy(6),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_x_cy_7_rt_1728,
      O => VGA_Mcount_x_cy(7)
    );
  VGA_Mcount_x_xor_6_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(5),
      LI => VGA_Mcount_x_cy_6_rt_1726,
      O => VGA_Result(6)
    );
  VGA_Mcount_x_cy_6_Q : MUXCY
    port map (
      CI => VGA_Mcount_x_cy(5),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_x_cy_6_rt_1726,
      O => VGA_Mcount_x_cy(6)
    );
  VGA_Mcount_x_xor_5_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(4),
      LI => VGA_Mcount_x_cy_5_rt_1724,
      O => VGA_Result(5)
    );
  VGA_Mcount_x_cy_5_Q : MUXCY
    port map (
      CI => VGA_Mcount_x_cy(4),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_x_cy_5_rt_1724,
      O => VGA_Mcount_x_cy(5)
    );
  VGA_Mcount_x_xor_4_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(3),
      LI => VGA_Mcount_x_cy_4_rt_1722,
      O => VGA_Result(4)
    );
  VGA_Mcount_x_cy_4_Q : MUXCY
    port map (
      CI => VGA_Mcount_x_cy(3),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_x_cy_4_rt_1722,
      O => VGA_Mcount_x_cy(4)
    );
  VGA_Mcount_x_xor_3_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(2),
      LI => VGA_Mcount_x_cy_3_rt_1720,
      O => VGA_Result(3)
    );
  VGA_Mcount_x_cy_3_Q : MUXCY
    port map (
      CI => VGA_Mcount_x_cy(2),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_x_cy_3_rt_1720,
      O => VGA_Mcount_x_cy(3)
    );
  VGA_Mcount_x_xor_2_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(1),
      LI => VGA_Mcount_x_cy_2_rt_1718,
      O => VGA_Result(2)
    );
  VGA_Mcount_x_cy_2_Q : MUXCY
    port map (
      CI => VGA_Mcount_x_cy(1),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_x_cy_2_rt_1718,
      O => VGA_Mcount_x_cy(2)
    );
  VGA_Mcount_x_xor_1_Q : XORCY
    port map (
      CI => VGA_Mcount_x_cy(0),
      LI => VGA_Mcount_x_cy_1_rt_1716,
      O => VGA_Result(1)
    );
  VGA_Mcount_x_cy_1_Q : MUXCY
    port map (
      CI => VGA_Mcount_x_cy(0),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Mcount_x_cy_1_rt_1716,
      O => VGA_Mcount_x_cy(1)
    );
  VGA_Mcount_x_xor_0_Q : XORCY
    port map (
      CI => ram2_oe_OBUF_2362,
      LI => VGA_Mcount_x_lut(0),
      O => VGA_Result(0)
    );
  VGA_Mcount_x_cy_0_Q : MUXCY
    port map (
      CI => ram2_oe_OBUF_2362,
      DI => N1,
      S => VGA_Mcount_x_lut(0),
      O => VGA_Mcount_x_cy(0)
    );
  VGA_Mmux_romData_mux0003_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(5),
      I2 => fontData(4),
      O => VGA_Mmux_romData_mux0000_51
    );
  VGA_Mmux_romData_mux0003_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(7),
      I2 => fontData(6),
      O => VGA_Mmux_romData_mux0000_6
    );
  VGA_Mmux_romData_mux0003_3_f5 : MUXF5
    port map (
      I0 => VGA_Mmux_romData_mux0003_3_f51_1779,
      I1 => VGA_Mmux_romData_mux0003_3_f52_1780,
      S => VGA_x(1),
      O => VGA_Mmux_romData_mux0003_3_f5_1778
    );
  VGA_Mmux_romData_mux0003_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(1),
      I2 => fontData(0),
      O => VGA_Mmux_romData_mux0000_4
    );
  VGA_Mmux_romData_mux0003_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(3),
      I2 => fontData(2),
      O => VGA_Mmux_romData_mux0000_5
    );
  VGA_Mmux_romData_mux0003_4_f5 : MUXF5
    port map (
      I0 => VGA_Mmux_romData_mux0003_4_f51_1782,
      I1 => VGA_Mmux_romData_mux0003_4_f52_1783,
      S => VGA_x(1),
      O => VGA_Mmux_romData_mux0003_4_f5_1781
    );
  VGA_Mmux_romData_mux0003_2_f6 : MUXF6
    port map (
      I0 => VGA_Mmux_romData_mux0003_4_f5_1781,
      I1 => VGA_Mmux_romData_mux0003_3_f5_1778,
      S => VGA_x(2),
      O => VGA_romData_mux0003
    );
  VGA_Mmux_romData_mux0001_3_f5 : MUXF5
    port map (
      I0 => VGA_Mmux_romData_mux0001_3_f51_1771,
      I1 => VGA_Mmux_romData_mux0001_3_f52_1772,
      S => VGA_x(1),
      O => VGA_Mmux_romData_mux0001_3_f5_1770
    );
  VGA_Mmux_romData_mux0001_4_f5 : MUXF5
    port map (
      I0 => VGA_Mmux_romData_mux0001_4_f51_1774,
      I1 => VGA_Mmux_romData_mux0001_4_f52_1775,
      S => VGA_x(1),
      O => VGA_Mmux_romData_mux0001_4_f5_1773
    );
  VGA_Mmux_romData_mux0001_2_f6 : MUXF6
    port map (
      I0 => VGA_Mmux_romData_mux0001_4_f5_1773,
      I1 => VGA_Mmux_romData_mux0001_3_f5_1770,
      S => VGA_x(2),
      O => VGA_romData_mux0001
    );
  VGA_Mmux_romData_mux0000_3_f5 : MUXF5
    port map (
      I0 => VGA_Mmux_romData_mux0000_3_f51_1761,
      I1 => VGA_Mmux_romData_mux0000_3_f52_1762,
      S => VGA_x(1),
      O => VGA_Mmux_romData_mux0000_3_f5_1760
    );
  VGA_Mmux_romData_mux0000_4_f5 : MUXF5
    port map (
      I0 => VGA_Mmux_romData_mux0000_4_f51_1765,
      I1 => VGA_Mmux_romData_mux0000_4_f52_1766,
      S => VGA_x(1),
      O => VGA_Mmux_romData_mux0000_4_f5_1764
    );
  VGA_Mmux_romData_mux0000_2_f6 : MUXF6
    port map (
      I0 => VGA_Mmux_romData_mux0000_4_f5_1764,
      I1 => VGA_Mmux_romData_mux0000_3_f5_1760,
      S => VGA_x(2),
      O => VGA_romData_mux0000
    );
  VGA_Mmux_romData_mux0002_3_f5 : MUXF5
    port map (
      I0 => VGA_Mmux_romData_mux0000_4,
      I1 => VGA_Mmux_romData_mux0000_6,
      S => VGA_x(1),
      O => VGA_Mmux_romData_mux0002_3_f5_1776
    );
  VGA_Mmux_romData_mux0002_4_f5 : MUXF5
    port map (
      I0 => VGA_Mmux_romData_mux0000_51,
      I1 => VGA_Mmux_romData_mux0000_5,
      S => VGA_x(1),
      O => VGA_Mmux_romData_mux0002_4_f5_1777
    );
  VGA_Mmux_romData_mux0002_2_f6 : MUXF6
    port map (
      I0 => VGA_Mmux_romData_mux0002_4_f5_1777,
      I1 => VGA_Mmux_romData_mux0002_3_f5_1776,
      S => VGA_x(2),
      O => VGA_romData_mux0002
    );
  VGA_Madd_romAddr_add0001_xor_9_Q : XORCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(8),
      LI => VGA_Msub_romAddr_sub0000_cy_8_11_1785,
      O => VGA_romAddr_add0001(9)
    );
  VGA_Madd_romAddr_add0001_xor_8_Q : XORCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(7),
      LI => VGA_Madd_romAddr_not0000_8_Q,
      O => VGA_romAddr_add0001(8)
    );
  VGA_Madd_romAddr_add0001_cy_8_Q : MUXCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(7),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Madd_romAddr_not0000_8_Q,
      O => VGA_Madd_romAddr_add0001_cy(8)
    );
  VGA_Madd_romAddr_add0001_xor_7_Q : XORCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(6),
      LI => VGA_Madd_romAddr_not0000_7_Q,
      O => VGA_romAddr_add0001(7)
    );
  VGA_Madd_romAddr_add0001_cy_7_Q : MUXCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(6),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Madd_romAddr_not0000_7_Q,
      O => VGA_Madd_romAddr_add0001_cy(7)
    );
  VGA_Madd_romAddr_add0001_xor_6_Q : XORCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(5),
      LI => VGA_Madd_romAddr_add0001_cy_6_rt_1700,
      O => VGA_romAddr_add0001(6)
    );
  VGA_Madd_romAddr_add0001_cy_6_Q : MUXCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(5),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Madd_romAddr_add0001_cy_6_rt_1700,
      O => VGA_Madd_romAddr_add0001_cy(6)
    );
  VGA_Madd_romAddr_add0001_xor_5_Q : XORCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(4),
      LI => VGA_Madd_romAddr_not0000_5_Q,
      O => VGA_romAddr_add0001(5)
    );
  VGA_Madd_romAddr_add0001_cy_5_Q : MUXCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(4),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Madd_romAddr_not0000_5_Q,
      O => VGA_Madd_romAddr_add0001_cy(5)
    );
  VGA_Madd_romAddr_add0001_xor_4_Q : XORCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(3),
      LI => VGA_Madd_romAddr_not0000_4_Q,
      O => VGA_Madd_romAddr_addsub0000_Madd_lut(0)
    );
  VGA_Madd_romAddr_add0001_cy_4_Q : MUXCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(3),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Madd_romAddr_not0000_4_Q,
      O => VGA_Madd_romAddr_add0001_cy(4)
    );
  VGA_Madd_romAddr_add0001_cy_3_Q : MUXCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(2),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Madd_romAddr_not0000_3_Q,
      O => VGA_Madd_romAddr_add0001_cy(3)
    );
  VGA_Madd_romAddr_add0001_cy_2_Q : MUXCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(1),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Madd_romAddr_not0000_2_Q,
      O => VGA_Madd_romAddr_add0001_cy(2)
    );
  VGA_Madd_romAddr_add0001_cy_1_Q : MUXCY
    port map (
      CI => VGA_Madd_romAddr_add0001_cy(0),
      DI => ram2_oe_OBUF_2362,
      S => VGA_Madd_romAddr_not0000_1_Q,
      O => VGA_Madd_romAddr_add0001_cy(1)
    );
  VGA_Madd_romAddr_add0001_cy_0_Q : MUXCY
    port map (
      CI => ram2_oe_OBUF_2362,
      DI => N1,
      S => VGA_Madd_romAddr_add0001_cy_0_rt_1693,
      O => VGA_Madd_romAddr_add0001_cy(0)
    );
  VGA_y_8 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_8_1,
      Q => VGA_y(8)
    );
  VGA_y_7 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_7_1,
      Q => VGA_y(7)
    );
  VGA_y_6 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_6_1,
      Q => VGA_y(6)
    );
  VGA_y_5 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_5_1,
      Q => VGA_y(5)
    );
  VGA_y_4 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_4_1,
      Q => VGA_y(4)
    );
  VGA_y_3 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_3_1,
      Q => VGA_y(3)
    );
  VGA_y_2 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_2_1,
      Q => VGA_y(2)
    );
  VGA_y_1 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_1_1,
      Q => VGA_y(1)
    );
  VGA_y_0 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_x_cmp_eq0000_2022,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Result_0_1,
      Q => VGA_y(0)
    );
  VGA_x_9 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_9,
      Q => VGA_x(9)
    );
  VGA_x_8 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_8,
      Q => VGA_x(8)
    );
  VGA_x_7 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_7,
      Q => VGA_x(7)
    );
  VGA_x_6 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_6,
      Q => VGA_x(6)
    );
  VGA_x_5 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_5,
      Q => VGA_x(5)
    );
  VGA_x_4 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_4,
      Q => VGA_x(4)
    );
  VGA_x_3 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_3,
      Q => VGA_x(3)
    );
  VGA_x_2 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_2,
      Q => VGA_x(2)
    );
  VGA_x_1 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_1,
      Q => VGA_x(1)
    );
  VGA_x_0 : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_Mcount_x_eqn_0,
      Q => VGA_x(0)
    );
  VGA_vs : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_vst_2008,
      Q => VGA_vs_2007
    );
  VGA_hs : FDC
    port map (
      C => VGA_CLK_2_1690,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_hst_1941,
      Q => VGA_hs_1940
    );
  VGA_bt_0 : FDCE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_bt_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => VGA_bt_mux0000(1),
      Q => VGA_bt(0)
    );
  VGA_romAddr_10 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_romAddr_mux0053(10),
      Q => VGA_romAddr(10)
    );
  VGA_romAddr_9 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_romAddr_mux0053(9),
      Q => VGA_romAddr(9)
    );
  VGA_romAddr_8 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_romAddr_mux0053(8),
      Q => VGA_romAddr(8)
    );
  VGA_romAddr_7 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_romAddr_mux0053(7),
      Q => VGA_romAddr(7)
    );
  VGA_romAddr_6 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_romAddr_mux0053(6),
      Q => VGA_romAddr(6)
    );
  VGA_romAddr_5 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_romAddr_mux0053(5),
      Q => VGA_romAddr(5)
    );
  VGA_romAddr_4 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_romAddr_mux0053(4),
      Q => VGA_romAddr(4)
    );
  VGA_romAddr_3 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_romAddr_mux0053(3),
      Q => VGA_romAddr(3)
    );
  VGA_romAddr_2 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_y(2),
      Q => VGA_romAddr(2)
    );
  VGA_romAddr_1 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_y(1),
      Q => VGA_romAddr(1)
    );
  VGA_romAddr_0 : FDE
    port map (
      C => VGA_CLK_2_1690,
      CE => VGA_romAddr_and0000,
      D => VGA_y(0),
      Q => VGA_romAddr(0)
    );
  VGA_hst : FDP
    port map (
      C => VGA_CLK_2_1690,
      D => VGA_hst_mux0001,
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => VGA_hst_1941
    );
  VGA_vst : FDP
    port map (
      C => VGA_CLK_2_1690,
      D => VGA_vst_mux0001,
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => VGA_vst_2008
    );
  VGA_CLK_2 : FDR
    port map (
      C => clk_manual_BUFGP_2086,
      D => N1,
      R => VGA_CLK_21,
      Q => VGA_CLK_21
    );
  IF_ID_regs_imp_pc_out_15 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(15),
      Q => IF_ID_regs_imp_pc_out(15)
    );
  IF_ID_regs_imp_pc_out_14 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(14),
      Q => IF_ID_regs_imp_pc_out(14)
    );
  IF_ID_regs_imp_pc_out_13 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(13),
      Q => IF_ID_regs_imp_pc_out(13)
    );
  IF_ID_regs_imp_pc_out_12 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(12),
      Q => IF_ID_regs_imp_pc_out(12)
    );
  IF_ID_regs_imp_pc_out_11 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(11),
      Q => IF_ID_regs_imp_pc_out(11)
    );
  IF_ID_regs_imp_pc_out_10 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(10),
      Q => IF_ID_regs_imp_pc_out(10)
    );
  IF_ID_regs_imp_pc_out_9 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(9),
      Q => IF_ID_regs_imp_pc_out(9)
    );
  IF_ID_regs_imp_pc_out_8 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(8),
      Q => IF_ID_regs_imp_pc_out(8)
    );
  IF_ID_regs_imp_pc_out_7 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(7),
      Q => IF_ID_regs_imp_pc_out(7)
    );
  IF_ID_regs_imp_pc_out_6 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(6),
      Q => IF_ID_regs_imp_pc_out(6)
    );
  IF_ID_regs_imp_pc_out_5 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(5),
      Q => IF_ID_regs_imp_pc_out(5)
    );
  IF_ID_regs_imp_pc_out_4 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(4),
      Q => IF_ID_regs_imp_pc_out(4)
    );
  IF_ID_regs_imp_pc_out_3 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(3),
      Q => IF_ID_regs_imp_pc_out(3)
    );
  IF_ID_regs_imp_pc_out_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(2),
      Q => IF_ID_regs_imp_pc_out(2)
    );
  IF_ID_regs_imp_pc_out_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(1),
      Q => IF_ID_regs_imp_pc_out(1)
    );
  IF_ID_regs_imp_pc_out_0 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => instruction_fetch_module_imp_pc_in(0),
      Q => IF_ID_regs_imp_pc_out(0)
    );
  IF_ID_regs_imp_instruction_out_15 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(0),
      Q => IF_ID_regs_imp_instruction_out(15)
    );
  IF_ID_regs_imp_instruction_out_14 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(1),
      Q => IF_ID_regs_imp_instruction_out(14)
    );
  IF_ID_regs_imp_instruction_out_13 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(2),
      Q => IF_ID_regs_imp_instruction_out(13)
    );
  IF_ID_regs_imp_instruction_out_12 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(3),
      Q => IF_ID_regs_imp_instruction_out(12)
    );
  IF_ID_regs_imp_instruction_out_11 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(4),
      Q => IF_ID_regs_imp_instruction_out(11)
    );
  IF_ID_regs_imp_instruction_out_10 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(5),
      Q => IF_ID_regs_imp_instruction_out(10)
    );
  IF_ID_regs_imp_instruction_out_9 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(6),
      Q => IF_ID_regs_imp_instruction_out(9)
    );
  IF_ID_regs_imp_instruction_out_8 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(7),
      Q => IF_ID_regs_imp_instruction_out(8)
    );
  IF_ID_regs_imp_instruction_out_7 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(8),
      Q => IF_ID_regs_imp_instruction_out(7)
    );
  IF_ID_regs_imp_instruction_out_6 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(9),
      Q => IF_ID_regs_imp_instruction_out(6)
    );
  IF_ID_regs_imp_instruction_out_5 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(10),
      Q => IF_ID_regs_imp_instruction_out(5)
    );
  IF_ID_regs_imp_instruction_out_4 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(11),
      Q => IF_ID_regs_imp_instruction_out(4)
    );
  IF_ID_regs_imp_instruction_out_3 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(12),
      Q => IF_ID_regs_imp_instruction_out(3)
    );
  IF_ID_regs_imp_instruction_out_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(13),
      Q => IF_ID_regs_imp_instruction_out(2)
    );
  IF_ID_regs_imp_instruction_out_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(14),
      Q => IF_ID_regs_imp_instruction_out(1)
    );
  IF_ID_regs_imp_instruction_out_0 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(15),
      Q => IF_ID_regs_imp_instruction_out(0)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_15 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(15),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(15)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_14 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(14),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(14)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_13 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(13),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(13)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_12 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(12),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(12)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_11 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(11),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(11)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_10 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(10),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(10)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_9 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(9),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(9)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_8 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(8),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(8)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_7 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(7),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(7)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_6 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(6),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(6)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_5 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(5),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(5)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_4 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(4),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(4)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_3 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(3),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(3)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(2),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(2)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(1),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(1)
    );
  ID_forward_IF_regs_imp_branch_relative_reg_data_out_0 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_relative_reg_data_from_id_tmp(0),
      Q => ID_forward_IF_regs_imp_branch_relative_reg_data_out(0)
    );
  ID_forward_IF_regs_imp_branch_target_out_15 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(15),
      Q => ID_forward_IF_regs_imp_branch_target_out(15)
    );
  ID_forward_IF_regs_imp_branch_target_out_14 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(14),
      Q => ID_forward_IF_regs_imp_branch_target_out(14)
    );
  ID_forward_IF_regs_imp_branch_target_out_13 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(13),
      Q => ID_forward_IF_regs_imp_branch_target_out(13)
    );
  ID_forward_IF_regs_imp_branch_target_out_12 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(12),
      Q => ID_forward_IF_regs_imp_branch_target_out(12)
    );
  ID_forward_IF_regs_imp_branch_target_out_11 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(11),
      Q => ID_forward_IF_regs_imp_branch_target_out(11)
    );
  ID_forward_IF_regs_imp_branch_target_out_10 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(10),
      Q => ID_forward_IF_regs_imp_branch_target_out(10)
    );
  ID_forward_IF_regs_imp_branch_target_out_9 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(9),
      Q => ID_forward_IF_regs_imp_branch_target_out(9)
    );
  ID_forward_IF_regs_imp_branch_target_out_8 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(8),
      Q => ID_forward_IF_regs_imp_branch_target_out(8)
    );
  ID_forward_IF_regs_imp_branch_target_out_7 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(7),
      Q => ID_forward_IF_regs_imp_branch_target_out(7)
    );
  ID_forward_IF_regs_imp_branch_target_out_6 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(6),
      Q => ID_forward_IF_regs_imp_branch_target_out(6)
    );
  ID_forward_IF_regs_imp_branch_target_out_5 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(5),
      Q => ID_forward_IF_regs_imp_branch_target_out(5)
    );
  ID_forward_IF_regs_imp_branch_target_out_4 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(4),
      Q => ID_forward_IF_regs_imp_branch_target_out(4)
    );
  ID_forward_IF_regs_imp_branch_target_out_3 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(3),
      Q => ID_forward_IF_regs_imp_branch_target_out(3)
    );
  ID_forward_IF_regs_imp_branch_target_out_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(2),
      Q => ID_forward_IF_regs_imp_branch_target_out(2)
    );
  ID_forward_IF_regs_imp_branch_target_out_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(1),
      Q => ID_forward_IF_regs_imp_branch_target_out(1)
    );
  ID_forward_IF_regs_imp_branch_target_out_0 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_target_from_id_tmp(0),
      Q => ID_forward_IF_regs_imp_branch_target_out(0)
    );
  ID_forward_IF_regs_imp_is_jump_out : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => is_jump_from_id_tmp,
      Q => ID_forward_IF_regs_imp_is_jump_out_668
    );
  ID_forward_IF_regs_imp_jump_target_out_15 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(15),
      Q => ID_forward_IF_regs_imp_jump_target_out(15)
    );
  ID_forward_IF_regs_imp_jump_target_out_14 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(14),
      Q => ID_forward_IF_regs_imp_jump_target_out(14)
    );
  ID_forward_IF_regs_imp_jump_target_out_13 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(13),
      Q => ID_forward_IF_regs_imp_jump_target_out(13)
    );
  ID_forward_IF_regs_imp_jump_target_out_12 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(12),
      Q => ID_forward_IF_regs_imp_jump_target_out(12)
    );
  ID_forward_IF_regs_imp_jump_target_out_11 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(11),
      Q => ID_forward_IF_regs_imp_jump_target_out(11)
    );
  ID_forward_IF_regs_imp_jump_target_out_10 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(10),
      Q => ID_forward_IF_regs_imp_jump_target_out(10)
    );
  ID_forward_IF_regs_imp_jump_target_out_9 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(9),
      Q => ID_forward_IF_regs_imp_jump_target_out(9)
    );
  ID_forward_IF_regs_imp_jump_target_out_8 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(8),
      Q => ID_forward_IF_regs_imp_jump_target_out(8)
    );
  ID_forward_IF_regs_imp_jump_target_out_7 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(7),
      Q => ID_forward_IF_regs_imp_jump_target_out(7)
    );
  ID_forward_IF_regs_imp_jump_target_out_6 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(6),
      Q => ID_forward_IF_regs_imp_jump_target_out(6)
    );
  ID_forward_IF_regs_imp_jump_target_out_5 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(5),
      Q => ID_forward_IF_regs_imp_jump_target_out(5)
    );
  ID_forward_IF_regs_imp_jump_target_out_4 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(4),
      Q => ID_forward_IF_regs_imp_jump_target_out(4)
    );
  ID_forward_IF_regs_imp_jump_target_out_3 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(3),
      Q => ID_forward_IF_regs_imp_jump_target_out(3)
    );
  ID_forward_IF_regs_imp_jump_target_out_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(2),
      Q => ID_forward_IF_regs_imp_jump_target_out(2)
    );
  ID_forward_IF_regs_imp_jump_target_out_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(1),
      Q => ID_forward_IF_regs_imp_jump_target_out(1)
    );
  ID_forward_IF_regs_imp_jump_target_out_0 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => jump_target_from_id_tmp(0),
      Q => ID_forward_IF_regs_imp_jump_target_out(0)
    );
  ID_forward_IF_regs_imp_is_branch_out : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => is_branch_from_id_tmp,
      Q => ID_forward_IF_regs_imp_is_branch_out_667
    );
  ID_forward_IF_regs_imp_branch_type_out : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => ID_forward_IF_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => branch_type_from_id_tmp,
      Q => ID_forward_IF_regs_imp_branch_type_out_666
    );
  ID_ALU_regs_imp_operand1_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(0),
      Q => ID_ALU_regs_imp_operand1_out(15)
    );
  ID_ALU_regs_imp_operand1_out_14 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(1),
      Q => ID_ALU_regs_imp_operand1_out(14)
    );
  ID_ALU_regs_imp_operand1_out_13 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(2),
      Q => ID_ALU_regs_imp_operand1_out(13)
    );
  ID_ALU_regs_imp_operand1_out_12 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(3),
      Q => ID_ALU_regs_imp_operand1_out(12)
    );
  ID_ALU_regs_imp_operand1_out_11 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(4),
      Q => ID_ALU_regs_imp_operand1_out(11)
    );
  ID_ALU_regs_imp_operand1_out_10 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(5),
      Q => ID_ALU_regs_imp_operand1_out(10)
    );
  ID_ALU_regs_imp_operand1_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(6),
      Q => ID_ALU_regs_imp_operand1_out(9)
    );
  ID_ALU_regs_imp_operand1_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(7),
      Q => ID_ALU_regs_imp_operand1_out(8)
    );
  ID_ALU_regs_imp_operand1_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(8),
      Q => ID_ALU_regs_imp_operand1_out(7)
    );
  ID_ALU_regs_imp_operand1_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(9),
      Q => ID_ALU_regs_imp_operand1_out(6)
    );
  ID_ALU_regs_imp_operand1_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(10),
      Q => ID_ALU_regs_imp_operand1_out(5)
    );
  ID_ALU_regs_imp_operand1_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(11),
      Q => ID_ALU_regs_imp_operand1_out(4)
    );
  ID_ALU_regs_imp_operand1_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(12),
      Q => ID_ALU_regs_imp_operand1_out(3)
    );
  ID_ALU_regs_imp_operand1_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(13),
      Q => ID_ALU_regs_imp_operand1_out(2)
    );
  ID_ALU_regs_imp_operand1_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(14),
      Q => ID_ALU_regs_imp_operand1_out(1)
    );
  ID_ALU_regs_imp_operand1_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand1_out_mux0001(15),
      Q => ID_ALU_regs_imp_operand1_out(0)
    );
  ID_ALU_regs_imp_mem_write_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_mem_write_out_mux0001,
      Q => ID_ALU_regs_imp_mem_write_out_471
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(0),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(15)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_14 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(1),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(14)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_13 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(2),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(13)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_12 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(3),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(12)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_11 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(4),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(11)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_10 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(5),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(10)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(6),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(9)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(7),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(8)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(8),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(7)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(9),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(6)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(10),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(5)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(11),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(4)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(12),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(3)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(13),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(2)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(14),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(1)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(15),
      Q => ID_ALU_regs_imp_wb_data_from_reg_out(0)
    );
  ID_ALU_regs_imp_mem_read_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_mem_read_out_mux0001,
      Q => ID_ALU_regs_imp_mem_read_out_469
    );
  ID_ALU_regs_imp_pc_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(15),
      Q => ID_ALU_regs_imp_pc_out(15)
    );
  ID_ALU_regs_imp_pc_out_14 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(14),
      Q => ID_ALU_regs_imp_pc_out(14)
    );
  ID_ALU_regs_imp_pc_out_13 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(13),
      Q => ID_ALU_regs_imp_pc_out(13)
    );
  ID_ALU_regs_imp_pc_out_12 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(12),
      Q => ID_ALU_regs_imp_pc_out(12)
    );
  ID_ALU_regs_imp_pc_out_11 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(11),
      Q => ID_ALU_regs_imp_pc_out(11)
    );
  ID_ALU_regs_imp_pc_out_10 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(10),
      Q => ID_ALU_regs_imp_pc_out(10)
    );
  ID_ALU_regs_imp_pc_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(9),
      Q => ID_ALU_regs_imp_pc_out(9)
    );
  ID_ALU_regs_imp_pc_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(8),
      Q => ID_ALU_regs_imp_pc_out(8)
    );
  ID_ALU_regs_imp_pc_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(7),
      Q => ID_ALU_regs_imp_pc_out(7)
    );
  ID_ALU_regs_imp_pc_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(6),
      Q => ID_ALU_regs_imp_pc_out(6)
    );
  ID_ALU_regs_imp_pc_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(5),
      Q => ID_ALU_regs_imp_pc_out(5)
    );
  ID_ALU_regs_imp_pc_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(4),
      Q => ID_ALU_regs_imp_pc_out(4)
    );
  ID_ALU_regs_imp_pc_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(3),
      Q => ID_ALU_regs_imp_pc_out(3)
    );
  ID_ALU_regs_imp_pc_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(2),
      Q => ID_ALU_regs_imp_pc_out(2)
    );
  ID_ALU_regs_imp_pc_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(1),
      Q => ID_ALU_regs_imp_pc_out(1)
    );
  ID_ALU_regs_imp_pc_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_pc_out(0),
      Q => ID_ALU_regs_imp_pc_out(0)
    );
  ID_ALU_regs_imp_mem_enable_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_mem_enable_out_mux0001,
      Q => ID_ALU_regs_imp_mem_enable_out_467
    );
  ID_ALU_regs_imp_wb_src_out_2 : FDP
    port map (
      C => clk_IBUF_2083,
      D => ID_ALU_regs_imp_wb_src_out_mux0001(0),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => ID_ALU_regs_imp_wb_src_out(2)
    );
  ID_ALU_regs_imp_wb_src_out_1 : FDP
    port map (
      C => clk_IBUF_2083,
      D => ID_ALU_regs_imp_wb_src_out_mux0001(1),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => ID_ALU_regs_imp_wb_src_out(1)
    );
  ID_ALU_regs_imp_wb_src_out_0 : FDP
    port map (
      C => clk_IBUF_2083,
      D => ID_ALU_regs_imp_wb_src_out_mux0001(2),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => ID_ALU_regs_imp_wb_src_out(0)
    );
  ID_ALU_regs_imp_reg_write_enable_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_reg_write_enable_out_mux0001,
      Q => ID_ALU_regs_imp_reg_write_enable_out_568
    );
  ID_ALU_regs_imp_op_code_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_op_code_out_mux0001(0),
      Q => ID_ALU_regs_imp_op_code_out(3)
    );
  ID_ALU_regs_imp_op_code_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_op_code_out_mux0001(1),
      Q => ID_ALU_regs_imp_op_code_out(2)
    );
  ID_ALU_regs_imp_op_code_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_op_code_out_mux0001(2),
      Q => ID_ALU_regs_imp_op_code_out(1)
    );
  ID_ALU_regs_imp_op_code_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_op_code_out_mux0001(3),
      Q => ID_ALU_regs_imp_op_code_out(0)
    );
  ID_ALU_regs_imp_operand2_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(0),
      Q => ID_ALU_regs_imp_operand2_out(15)
    );
  ID_ALU_regs_imp_operand2_out_14 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(1),
      Q => ID_ALU_regs_imp_operand2_out(14)
    );
  ID_ALU_regs_imp_operand2_out_13 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(2),
      Q => ID_ALU_regs_imp_operand2_out(13)
    );
  ID_ALU_regs_imp_operand2_out_12 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(3),
      Q => ID_ALU_regs_imp_operand2_out(12)
    );
  ID_ALU_regs_imp_operand2_out_11 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(4),
      Q => ID_ALU_regs_imp_operand2_out(11)
    );
  ID_ALU_regs_imp_operand2_out_10 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(5),
      Q => ID_ALU_regs_imp_operand2_out(10)
    );
  ID_ALU_regs_imp_operand2_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(6),
      Q => ID_ALU_regs_imp_operand2_out(9)
    );
  ID_ALU_regs_imp_operand2_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(7),
      Q => ID_ALU_regs_imp_operand2_out(8)
    );
  ID_ALU_regs_imp_operand2_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(8),
      Q => ID_ALU_regs_imp_operand2_out(7)
    );
  ID_ALU_regs_imp_operand2_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(9),
      Q => ID_ALU_regs_imp_operand2_out(6)
    );
  ID_ALU_regs_imp_operand2_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(10),
      Q => ID_ALU_regs_imp_operand2_out(5)
    );
  ID_ALU_regs_imp_operand2_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(11),
      Q => ID_ALU_regs_imp_operand2_out(4)
    );
  ID_ALU_regs_imp_operand2_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(12),
      Q => ID_ALU_regs_imp_operand2_out(3)
    );
  ID_ALU_regs_imp_operand2_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(13),
      Q => ID_ALU_regs_imp_operand2_out(2)
    );
  ID_ALU_regs_imp_operand2_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(14),
      Q => ID_ALU_regs_imp_operand2_out(1)
    );
  ID_ALU_regs_imp_operand2_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_operand2_out_mux0001(15),
      Q => ID_ALU_regs_imp_operand2_out(0)
    );
  ID_ALU_regs_imp_write_back_reg_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_write_back_reg_out_mux0001(0),
      Q => ID_ALU_regs_imp_write_back_reg_out(3)
    );
  ID_ALU_regs_imp_write_back_reg_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_write_back_reg_out_mux0001(1),
      Q => ID_ALU_regs_imp_write_back_reg_out(2)
    );
  ID_ALU_regs_imp_write_back_reg_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_write_back_reg_out_mux0001(2),
      Q => ID_ALU_regs_imp_write_back_reg_out(1)
    );
  ID_ALU_regs_imp_write_back_reg_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_write_back_reg_out_mux0001(3),
      Q => ID_ALU_regs_imp_write_back_reg_out(0)
    );
  ID_ALU_regs_imp_immediate_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(5),
      Q => ID_ALU_regs_imp_immediate_out_15_Q
    );
  ID_ALU_regs_imp_immediate_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(6),
      Q => ID_ALU_regs_imp_immediate_out_9_Q
    );
  ID_ALU_regs_imp_immediate_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(7),
      Q => ID_ALU_regs_imp_immediate_out_8_Q
    );
  ID_ALU_regs_imp_immediate_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(8),
      Q => ID_ALU_regs_imp_immediate_out_7_Q
    );
  ID_ALU_regs_imp_immediate_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(9),
      Q => ID_ALU_regs_imp_immediate_out_6_Q
    );
  ID_ALU_regs_imp_immediate_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(10),
      Q => ID_ALU_regs_imp_immediate_out_5_Q
    );
  ID_ALU_regs_imp_immediate_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(11),
      Q => ID_ALU_regs_imp_immediate_out_4_Q
    );
  ID_ALU_regs_imp_immediate_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(12),
      Q => ID_ALU_regs_imp_immediate_out_3_Q
    );
  ID_ALU_regs_imp_immediate_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(13),
      Q => ID_ALU_regs_imp_immediate_out_2_Q
    );
  ID_ALU_regs_imp_immediate_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(14),
      Q => ID_ALU_regs_imp_immediate_out_1_Q
    );
  ID_ALU_regs_imp_immediate_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_immediate_out_mux0001(15),
      Q => ID_ALU_regs_imp_immediate_out_0_Q
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_15_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(14),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(15),
      O => ALU_imp_tmp_addsub0000(15)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_14_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(13),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(14),
      O => ALU_imp_tmp_addsub0000(14)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(13),
      DI => ALU_imp_tmp_mux0000(14),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(14),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(14)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_13_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(12),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(13),
      O => ALU_imp_tmp_addsub0000(13)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(12),
      DI => ALU_imp_tmp_mux0000(13),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(13),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(13)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_12_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(11),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(12),
      O => ALU_imp_tmp_addsub0000(12)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(11),
      DI => ALU_imp_tmp_mux0000(12),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(12),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(12)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_11_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(10),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(11),
      O => ALU_imp_tmp_addsub0000(11)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(10),
      DI => ALU_imp_tmp_mux0000(11),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(11),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(11)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_10_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(9),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(10),
      O => ALU_imp_tmp_addsub0000(10)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(9),
      DI => ALU_imp_tmp_mux0000(10),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(10),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(10)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_9_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(8),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(9),
      O => ALU_imp_tmp_addsub0000(9)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(8),
      DI => ALU_imp_tmp_mux0000(9),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(9),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(9)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_8_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(7),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(8),
      O => ALU_imp_tmp_addsub0000(8)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(7),
      DI => ALU_imp_tmp_mux0000(8),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(8),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(8)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_7_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(6),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(7),
      O => ALU_imp_tmp_addsub0000(7)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(6),
      DI => ALU_imp_tmp_mux0000(7),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(7),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(7)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_6_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(5),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(6),
      O => ALU_imp_tmp_addsub0000(6)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(5),
      DI => ALU_imp_tmp_mux0000(6),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(6),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(6)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_5_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(4),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(5),
      O => ALU_imp_tmp_addsub0000(5)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(4),
      DI => ALU_imp_tmp_mux0000(5),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(5),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(5)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_4_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(3),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(4),
      O => ALU_imp_tmp_addsub0000(4)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(3),
      DI => ALU_imp_tmp_mux0000(4),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(4),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(4)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_3_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(2),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(3),
      O => ALU_imp_tmp_addsub0000(3)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(2),
      DI => ALU_imp_tmp_mux0000(3),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(3),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(3)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_2_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(1),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(2),
      O => ALU_imp_tmp_addsub0000(2)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(1),
      DI => ALU_imp_tmp_mux0000(2),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(2),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(2)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_1_Q : XORCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(0),
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(1),
      O => ALU_imp_tmp_addsub0000(1)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => ALU_imp_Maddsub_tmp_addsub0000_cy(0),
      DI => ALU_imp_tmp_mux0000(1),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(1),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(1)
    );
  ALU_imp_Maddsub_tmp_addsub0000_xor_0_Q : XORCY
    port map (
      CI => ALU_imp_tmp_cmp_eq0000,
      LI => ALU_imp_Maddsub_tmp_addsub0000_lut(0),
      O => ALU_imp_tmp_addsub0000(0)
    );
  ALU_imp_Maddsub_tmp_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => ALU_imp_tmp_cmp_eq0000,
      DI => ALU_imp_tmp_mux0000(0),
      S => ALU_imp_Maddsub_tmp_addsub0000_lut(0),
      O => ALU_imp_Maddsub_tmp_addsub0000_cy(0)
    );
  ALU_MEM_regs_imp_mem_write_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_mem_write_out_471,
      Q => ALU_MEM_regs_imp_mem_write_out_34
    );
  ALU_MEM_regs_imp_mem_read_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_mem_read_out_469,
      Q => ALU_MEM_regs_imp_mem_read_out_33
    );
  ALU_MEM_regs_imp_mem_enable_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_mem_enable_out_467,
      Q => ALU_MEM_regs_imp_mem_enable_out_32
    );
  ALU_MEM_regs_imp_reg_write_enable_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_reg_write_enable_out_568,
      Q => ALU_MEM_regs_imp_reg_write_enable_out_35
    );
  ALU_MEM_regs_imp_write_back_data_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(15),
      Q => ALU_MEM_regs_imp_write_back_data_out(15)
    );
  ALU_MEM_regs_imp_write_back_data_out_14 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(14),
      Q => ALU_MEM_regs_imp_write_back_data_out(14)
    );
  ALU_MEM_regs_imp_write_back_data_out_13 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(13),
      Q => ALU_MEM_regs_imp_write_back_data_out(13)
    );
  ALU_MEM_regs_imp_write_back_data_out_12 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(12),
      Q => ALU_MEM_regs_imp_write_back_data_out(12)
    );
  ALU_MEM_regs_imp_write_back_data_out_11 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(11),
      Q => ALU_MEM_regs_imp_write_back_data_out(11)
    );
  ALU_MEM_regs_imp_write_back_data_out_10 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(10),
      Q => ALU_MEM_regs_imp_write_back_data_out(10)
    );
  ALU_MEM_regs_imp_write_back_data_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(9),
      Q => ALU_MEM_regs_imp_write_back_data_out(9)
    );
  ALU_MEM_regs_imp_write_back_data_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(8),
      Q => ALU_MEM_regs_imp_write_back_data_out(8)
    );
  ALU_MEM_regs_imp_write_back_data_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(7),
      Q => ALU_MEM_regs_imp_write_back_data_out(7)
    );
  ALU_MEM_regs_imp_write_back_data_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(6),
      Q => ALU_MEM_regs_imp_write_back_data_out(6)
    );
  ALU_MEM_regs_imp_write_back_data_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(5),
      Q => ALU_MEM_regs_imp_write_back_data_out(5)
    );
  ALU_MEM_regs_imp_write_back_data_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(4),
      Q => ALU_MEM_regs_imp_write_back_data_out(4)
    );
  ALU_MEM_regs_imp_write_back_data_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(3),
      Q => ALU_MEM_regs_imp_write_back_data_out(3)
    );
  ALU_MEM_regs_imp_write_back_data_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(2),
      Q => ALU_MEM_regs_imp_write_back_data_out(2)
    );
  ALU_MEM_regs_imp_write_back_data_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(1),
      Q => ALU_MEM_regs_imp_write_back_data_out(1)
    );
  ALU_MEM_regs_imp_write_back_data_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_alu_tmp(0),
      Q => ALU_MEM_regs_imp_write_back_data_out(0)
    );
  ALU_MEM_regs_imp_write_back_reg_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_write_back_reg_out(3),
      Q => ALU_MEM_regs_imp_write_back_reg_out(3)
    );
  ALU_MEM_regs_imp_write_back_reg_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_write_back_reg_out(2),
      Q => ALU_MEM_regs_imp_write_back_reg_out(2)
    );
  ALU_MEM_regs_imp_write_back_reg_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_write_back_reg_out(1),
      Q => ALU_MEM_regs_imp_write_back_reg_out(1)
    );
  ALU_MEM_regs_imp_write_back_reg_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_write_back_reg_out(0),
      Q => ALU_MEM_regs_imp_write_back_reg_out(0)
    );
  ALU_MEM_regs_imp_mem_address_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(15),
      Q => ALU_MEM_regs_imp_mem_address_out(15)
    );
  ALU_MEM_regs_imp_mem_address_out_14 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(14),
      Q => ALU_MEM_regs_imp_mem_address_out(14)
    );
  ALU_MEM_regs_imp_mem_address_out_13 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(13),
      Q => ALU_MEM_regs_imp_mem_address_out(13)
    );
  ALU_MEM_regs_imp_mem_address_out_12 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(12),
      Q => ALU_MEM_regs_imp_mem_address_out(12)
    );
  ALU_MEM_regs_imp_mem_address_out_11 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(11),
      Q => ALU_MEM_regs_imp_mem_address_out(11)
    );
  ALU_MEM_regs_imp_mem_address_out_10 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(10),
      Q => ALU_MEM_regs_imp_mem_address_out(10)
    );
  ALU_MEM_regs_imp_mem_address_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(9),
      Q => ALU_MEM_regs_imp_mem_address_out(9)
    );
  ALU_MEM_regs_imp_mem_address_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(8),
      Q => ALU_MEM_regs_imp_mem_address_out(8)
    );
  ALU_MEM_regs_imp_mem_address_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(7),
      Q => ALU_MEM_regs_imp_mem_address_out(7)
    );
  ALU_MEM_regs_imp_mem_address_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(6),
      Q => ALU_MEM_regs_imp_mem_address_out(6)
    );
  ALU_MEM_regs_imp_mem_address_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(5),
      Q => ALU_MEM_regs_imp_mem_address_out(5)
    );
  ALU_MEM_regs_imp_mem_address_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(4),
      Q => ALU_MEM_regs_imp_mem_address_out(4)
    );
  ALU_MEM_regs_imp_mem_address_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(3),
      Q => ALU_MEM_regs_imp_mem_address_out(3)
    );
  ALU_MEM_regs_imp_mem_address_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(2),
      Q => ALU_MEM_regs_imp_mem_address_out(2)
    );
  ALU_MEM_regs_imp_mem_address_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(1),
      Q => ALU_MEM_regs_imp_mem_address_out(1)
    );
  ALU_MEM_regs_imp_mem_address_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => alu_result_from_alu_tmp(0),
      Q => ALU_MEM_regs_imp_mem_address_out(0)
    );
  MEM_WB_regs_imp_write_back_data_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(15),
      Q => MEM_WB_regs_imp_write_back_data_out(15)
    );
  MEM_WB_regs_imp_write_back_data_out_14 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(14),
      Q => MEM_WB_regs_imp_write_back_data_out(14)
    );
  MEM_WB_regs_imp_write_back_data_out_13 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(13),
      Q => MEM_WB_regs_imp_write_back_data_out(13)
    );
  MEM_WB_regs_imp_write_back_data_out_12 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(12),
      Q => MEM_WB_regs_imp_write_back_data_out(12)
    );
  MEM_WB_regs_imp_write_back_data_out_11 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(11),
      Q => MEM_WB_regs_imp_write_back_data_out(11)
    );
  MEM_WB_regs_imp_write_back_data_out_10 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(10),
      Q => MEM_WB_regs_imp_write_back_data_out(10)
    );
  MEM_WB_regs_imp_write_back_data_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(9),
      Q => MEM_WB_regs_imp_write_back_data_out(9)
    );
  MEM_WB_regs_imp_write_back_data_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(8),
      Q => MEM_WB_regs_imp_write_back_data_out(8)
    );
  MEM_WB_regs_imp_write_back_data_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(7),
      Q => MEM_WB_regs_imp_write_back_data_out(7)
    );
  MEM_WB_regs_imp_write_back_data_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(6),
      Q => MEM_WB_regs_imp_write_back_data_out(6)
    );
  MEM_WB_regs_imp_write_back_data_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(5),
      Q => MEM_WB_regs_imp_write_back_data_out(5)
    );
  MEM_WB_regs_imp_write_back_data_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(4),
      Q => MEM_WB_regs_imp_write_back_data_out(4)
    );
  MEM_WB_regs_imp_write_back_data_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(3),
      Q => MEM_WB_regs_imp_write_back_data_out(3)
    );
  MEM_WB_regs_imp_write_back_data_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(2),
      Q => MEM_WB_regs_imp_write_back_data_out(2)
    );
  MEM_WB_regs_imp_write_back_data_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(1),
      Q => MEM_WB_regs_imp_write_back_data_out(1)
    );
  MEM_WB_regs_imp_write_back_data_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => write_back_data_from_mem_tmp(0),
      Q => MEM_WB_regs_imp_write_back_data_out(0)
    );
  MEM_WB_regs_imp_write_back_reg_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ALU_MEM_regs_imp_write_back_reg_out(3),
      Q => MEM_WB_regs_imp_write_back_reg_out(3)
    );
  MEM_WB_regs_imp_write_back_reg_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ALU_MEM_regs_imp_write_back_reg_out(2),
      Q => MEM_WB_regs_imp_write_back_reg_out(2)
    );
  MEM_WB_regs_imp_write_back_reg_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ALU_MEM_regs_imp_write_back_reg_out(1),
      Q => MEM_WB_regs_imp_write_back_reg_out(1)
    );
  MEM_WB_regs_imp_write_back_reg_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ALU_MEM_regs_imp_write_back_reg_out(0),
      Q => MEM_WB_regs_imp_write_back_reg_out(0)
    );
  MEM_WB_regs_imp_write_enable_out : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ALU_MEM_regs_imp_reg_write_enable_out_35,
      Q => MEM_WB_regs_imp_write_enable_out_765
    );
  register_module_imp_registers_imp_regs_3_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_regs_3_0_2923
    );
  register_module_imp_registers_imp_regs_3_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_regs_3_1_2924
    );
  register_module_imp_registers_imp_regs_3_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_regs_3_2_2931
    );
  register_module_imp_registers_imp_regs_3_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_regs_3_3_2932
    );
  register_module_imp_registers_imp_regs_3_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_regs_3_4_2933
    );
  register_module_imp_registers_imp_regs_3_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_regs_3_5_2934
    );
  register_module_imp_registers_imp_regs_3_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_regs_3_6_2935
    );
  register_module_imp_registers_imp_regs_3_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_regs_3_7_2936
    );
  register_module_imp_registers_imp_regs_3_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_regs_3_8_2937
    );
  register_module_imp_registers_imp_regs_3_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_regs_3_9_2938
    );
  register_module_imp_registers_imp_regs_3_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_regs_3_10_2925
    );
  register_module_imp_registers_imp_regs_3_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_regs_3_11_2926
    );
  register_module_imp_registers_imp_regs_3_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_regs_3_12_2927
    );
  register_module_imp_registers_imp_regs_3_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_regs_3_13_2928
    );
  register_module_imp_registers_imp_regs_3_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_regs_3_14_2929
    );
  register_module_imp_registers_imp_regs_3_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_3_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_regs_3_15_2930
    );
  register_module_imp_registers_imp_regs_6_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_regs_6_0_2974
    );
  register_module_imp_registers_imp_regs_6_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_regs_6_1_2975
    );
  register_module_imp_registers_imp_regs_6_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_regs_6_2_2982
    );
  register_module_imp_registers_imp_regs_6_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_regs_6_3_2983
    );
  register_module_imp_registers_imp_regs_6_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_regs_6_4_2984
    );
  register_module_imp_registers_imp_regs_6_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_regs_6_5_2985
    );
  register_module_imp_registers_imp_regs_6_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_regs_6_6_2986
    );
  register_module_imp_registers_imp_regs_6_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_regs_6_7_2987
    );
  register_module_imp_registers_imp_regs_6_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_regs_6_8_2988
    );
  register_module_imp_registers_imp_regs_6_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_regs_6_9_2989
    );
  register_module_imp_registers_imp_regs_6_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_regs_6_10_2976
    );
  register_module_imp_registers_imp_regs_6_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_regs_6_11_2977
    );
  register_module_imp_registers_imp_regs_6_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_regs_6_12_2978
    );
  register_module_imp_registers_imp_regs_6_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_regs_6_13_2979
    );
  register_module_imp_registers_imp_regs_6_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_regs_6_14_2980
    );
  register_module_imp_registers_imp_regs_6_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_6_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_regs_6_15_2981
    );
  register_module_imp_registers_imp_regs_4_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_regs_4_0_2940
    );
  register_module_imp_registers_imp_regs_4_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_regs_4_1_2941
    );
  register_module_imp_registers_imp_regs_4_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_regs_4_2_2948
    );
  register_module_imp_registers_imp_regs_4_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_regs_4_3_2949
    );
  register_module_imp_registers_imp_regs_4_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_regs_4_4_2950
    );
  register_module_imp_registers_imp_regs_4_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_regs_4_5_2951
    );
  register_module_imp_registers_imp_regs_4_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_regs_4_6_2952
    );
  register_module_imp_registers_imp_regs_4_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_regs_4_7_2953
    );
  register_module_imp_registers_imp_regs_4_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_regs_4_8_2954
    );
  register_module_imp_registers_imp_regs_4_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_regs_4_9_2955
    );
  register_module_imp_registers_imp_regs_4_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_regs_4_10_2942
    );
  register_module_imp_registers_imp_regs_4_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_regs_4_11_2943
    );
  register_module_imp_registers_imp_regs_4_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_regs_4_12_2944
    );
  register_module_imp_registers_imp_regs_4_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_regs_4_13_2945
    );
  register_module_imp_registers_imp_regs_4_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_regs_4_14_2946
    );
  register_module_imp_registers_imp_regs_4_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_4_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_regs_4_15_2947
    );
  register_module_imp_registers_imp_regs_5_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_regs_5_0_2957
    );
  register_module_imp_registers_imp_regs_5_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_regs_5_1_2958
    );
  register_module_imp_registers_imp_regs_5_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_regs_5_2_2965
    );
  register_module_imp_registers_imp_regs_5_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_regs_5_3_2966
    );
  register_module_imp_registers_imp_regs_5_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_regs_5_4_2967
    );
  register_module_imp_registers_imp_regs_5_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_regs_5_5_2968
    );
  register_module_imp_registers_imp_regs_5_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_regs_5_6_2969
    );
  register_module_imp_registers_imp_regs_5_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_regs_5_7_2970
    );
  register_module_imp_registers_imp_regs_5_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_regs_5_8_2971
    );
  register_module_imp_registers_imp_regs_5_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_regs_5_9_2972
    );
  register_module_imp_registers_imp_regs_5_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_regs_5_10_2959
    );
  register_module_imp_registers_imp_regs_5_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_regs_5_11_2960
    );
  register_module_imp_registers_imp_regs_5_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_regs_5_12_2961
    );
  register_module_imp_registers_imp_regs_5_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_regs_5_13_2962
    );
  register_module_imp_registers_imp_regs_5_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_regs_5_14_2963
    );
  register_module_imp_registers_imp_regs_5_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_5_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_regs_5_15_2964
    );
  register_module_imp_registers_imp_regs_7_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_regs_7_0_2991
    );
  register_module_imp_registers_imp_regs_7_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_regs_7_1_2992
    );
  register_module_imp_registers_imp_regs_7_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_regs_7_2_2999
    );
  register_module_imp_registers_imp_regs_7_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_regs_7_3_3000
    );
  register_module_imp_registers_imp_regs_7_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_regs_7_4_3001
    );
  register_module_imp_registers_imp_regs_7_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_regs_7_5_3002
    );
  register_module_imp_registers_imp_regs_7_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_regs_7_6_3003
    );
  register_module_imp_registers_imp_regs_7_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_regs_7_7_3004
    );
  register_module_imp_registers_imp_regs_7_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_regs_7_8_3005
    );
  register_module_imp_registers_imp_regs_7_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_regs_7_9_3006
    );
  register_module_imp_registers_imp_regs_7_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_regs_7_10_2993
    );
  register_module_imp_registers_imp_regs_7_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_regs_7_11_2994
    );
  register_module_imp_registers_imp_regs_7_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_regs_7_12_2995
    );
  register_module_imp_registers_imp_regs_7_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_regs_7_13_2996
    );
  register_module_imp_registers_imp_regs_7_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_regs_7_14_2997
    );
  register_module_imp_registers_imp_regs_7_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_7_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_regs_7_15_2998
    );
  register_module_imp_registers_imp_ih_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_ih(0)
    );
  register_module_imp_registers_imp_ih_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_ih(1)
    );
  register_module_imp_registers_imp_ih_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_ih(2)
    );
  register_module_imp_registers_imp_ih_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_ih(3)
    );
  register_module_imp_registers_imp_ih_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_ih(4)
    );
  register_module_imp_registers_imp_ih_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_ih(5)
    );
  register_module_imp_registers_imp_ih_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_ih(6)
    );
  register_module_imp_registers_imp_ih_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_ih(7)
    );
  register_module_imp_registers_imp_ih_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_ih(8)
    );
  register_module_imp_registers_imp_ih_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_ih(9)
    );
  register_module_imp_registers_imp_ih_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_ih(10)
    );
  register_module_imp_registers_imp_ih_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_ih(11)
    );
  register_module_imp_registers_imp_ih_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_ih(12)
    );
  register_module_imp_registers_imp_ih_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_ih(13)
    );
  register_module_imp_registers_imp_ih_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_ih(14)
    );
  register_module_imp_registers_imp_ih_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ih_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_ih(15)
    );
  register_module_imp_registers_imp_ra_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_ra(0)
    );
  register_module_imp_registers_imp_ra_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_ra(1)
    );
  register_module_imp_registers_imp_ra_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_ra(2)
    );
  register_module_imp_registers_imp_ra_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_ra(3)
    );
  register_module_imp_registers_imp_ra_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_ra(4)
    );
  register_module_imp_registers_imp_ra_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_ra(5)
    );
  register_module_imp_registers_imp_ra_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_ra(6)
    );
  register_module_imp_registers_imp_ra_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_ra(7)
    );
  register_module_imp_registers_imp_ra_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_ra(8)
    );
  register_module_imp_registers_imp_ra_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_ra(9)
    );
  register_module_imp_registers_imp_ra_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_ra(10)
    );
  register_module_imp_registers_imp_ra_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_ra(11)
    );
  register_module_imp_registers_imp_ra_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_ra(12)
    );
  register_module_imp_registers_imp_ra_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_ra(13)
    );
  register_module_imp_registers_imp_ra_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_ra(14)
    );
  register_module_imp_registers_imp_ra_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_ra_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_ra(15)
    );
  register_module_imp_registers_imp_sp_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_sp(0)
    );
  register_module_imp_registers_imp_sp_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_sp(1)
    );
  register_module_imp_registers_imp_sp_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_sp(2)
    );
  register_module_imp_registers_imp_sp_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_sp(3)
    );
  register_module_imp_registers_imp_sp_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_sp(4)
    );
  register_module_imp_registers_imp_sp_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_sp(5)
    );
  register_module_imp_registers_imp_sp_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_sp(6)
    );
  register_module_imp_registers_imp_sp_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_sp(7)
    );
  register_module_imp_registers_imp_sp_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_sp(8)
    );
  register_module_imp_registers_imp_sp_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_sp(9)
    );
  register_module_imp_registers_imp_sp_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_sp(10)
    );
  register_module_imp_registers_imp_sp_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_sp(11)
    );
  register_module_imp_registers_imp_sp_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_sp(12)
    );
  register_module_imp_registers_imp_sp_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_sp(13)
    );
  register_module_imp_registers_imp_sp_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_sp(14)
    );
  register_module_imp_registers_imp_sp_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_sp_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_sp(15)
    );
  register_module_imp_registers_imp_t_0 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      Q => register_module_imp_registers_imp_t(0)
    );
  register_module_imp_registers_imp_t_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_t(1)
    );
  register_module_imp_registers_imp_t_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_t(2)
    );
  register_module_imp_registers_imp_t_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_t(3)
    );
  register_module_imp_registers_imp_t_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_t(4)
    );
  register_module_imp_registers_imp_t_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_t(5)
    );
  register_module_imp_registers_imp_t_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_t(6)
    );
  register_module_imp_registers_imp_t_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_t(7)
    );
  register_module_imp_registers_imp_t_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_t(8)
    );
  register_module_imp_registers_imp_t_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_t(9)
    );
  register_module_imp_registers_imp_t_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_t(10)
    );
  register_module_imp_registers_imp_t_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_t(11)
    );
  register_module_imp_registers_imp_t_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_t(12)
    );
  register_module_imp_registers_imp_t_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_t(13)
    );
  register_module_imp_registers_imp_t_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_t(14)
    );
  register_module_imp_registers_imp_t_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_t_not0001,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_t(15)
    );
  register_module_imp_registers_imp_mux_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux_4_f5_2739,
      I1 => register_module_imp_registers_imp_mux_3_f5_2737,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(0)
    );
  register_module_imp_registers_imp_mux_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux_6_2742,
      I1 => register_module_imp_registers_imp_mux_51_2741,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux_4_f5_2739
    );
  register_module_imp_registers_imp_mux_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_0_2889,
      I1 => register_module_imp_registers_imp_regs_0_0_2872,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux_6_2742
    );
  register_module_imp_registers_imp_mux_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_0_2923,
      I1 => register_module_imp_registers_imp_regs_2_0_2906,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux_51_2741
    );
  register_module_imp_registers_imp_mux_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux_5_2740,
      I1 => register_module_imp_registers_imp_mux_4_2738,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux_3_f5_2737
    );
  register_module_imp_registers_imp_mux_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_0_2957,
      I1 => register_module_imp_registers_imp_regs_4_0_2940,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux_5_2740
    );
  register_module_imp_registers_imp_mux_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_0_2991,
      I1 => register_module_imp_registers_imp_regs_6_0_2974,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux_4_2738
    );
  register_module_imp_registers_imp_mux1_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux1_4_f5_2613,
      I1 => register_module_imp_registers_imp_mux1_3_f5_2611,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(10)
    );
  register_module_imp_registers_imp_mux1_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux1_6_2616,
      I1 => register_module_imp_registers_imp_mux1_51_2615,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux1_4_f5_2613
    );
  register_module_imp_registers_imp_mux1_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_10_2891,
      I1 => register_module_imp_registers_imp_regs_0_10_2874,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux1_6_2616
    );
  register_module_imp_registers_imp_mux1_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_10_2925,
      I1 => register_module_imp_registers_imp_regs_2_10_2908,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux1_51_2615
    );
  register_module_imp_registers_imp_mux1_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux1_5_2614,
      I1 => register_module_imp_registers_imp_mux1_4_2612,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux1_3_f5_2611
    );
  register_module_imp_registers_imp_mux1_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_10_2959,
      I1 => register_module_imp_registers_imp_regs_4_10_2942,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux1_5_2614
    );
  register_module_imp_registers_imp_mux1_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_10_2993,
      I1 => register_module_imp_registers_imp_regs_6_10_2976,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux1_4_2612
    );
  register_module_imp_registers_imp_mux2_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux2_4_f5_2679,
      I1 => register_module_imp_registers_imp_mux2_3_f5_2677,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(11)
    );
  register_module_imp_registers_imp_mux2_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux2_6_2682,
      I1 => register_module_imp_registers_imp_mux2_51_2681,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux2_4_f5_2679
    );
  register_module_imp_registers_imp_mux2_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_11_2892,
      I1 => register_module_imp_registers_imp_regs_0_11_2875,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux2_6_2682
    );
  register_module_imp_registers_imp_mux2_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_11_2926,
      I1 => register_module_imp_registers_imp_regs_2_11_2909,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux2_51_2681
    );
  register_module_imp_registers_imp_mux2_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux2_5_2680,
      I1 => register_module_imp_registers_imp_mux2_4_2678,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux2_3_f5_2677
    );
  register_module_imp_registers_imp_mux2_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_11_2960,
      I1 => register_module_imp_registers_imp_regs_4_11_2943,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux2_5_2680
    );
  register_module_imp_registers_imp_mux2_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_11_2994,
      I1 => register_module_imp_registers_imp_regs_6_11_2977,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux2_4_2678
    );
  register_module_imp_registers_imp_mux3_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux3_4_f5_2697,
      I1 => register_module_imp_registers_imp_mux3_3_f5_2695,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(12)
    );
  register_module_imp_registers_imp_mux3_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux3_6_2700,
      I1 => register_module_imp_registers_imp_mux3_51_2699,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux3_4_f5_2697
    );
  register_module_imp_registers_imp_mux3_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_12_2893,
      I1 => register_module_imp_registers_imp_regs_0_12_2876,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux3_6_2700
    );
  register_module_imp_registers_imp_mux3_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_12_2927,
      I1 => register_module_imp_registers_imp_regs_2_12_2910,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux3_51_2699
    );
  register_module_imp_registers_imp_mux3_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux3_5_2698,
      I1 => register_module_imp_registers_imp_mux3_4_2696,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux3_3_f5_2695
    );
  register_module_imp_registers_imp_mux3_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_12_2961,
      I1 => register_module_imp_registers_imp_regs_4_12_2944,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux3_5_2698
    );
  register_module_imp_registers_imp_mux3_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_12_2995,
      I1 => register_module_imp_registers_imp_regs_6_12_2978,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux3_4_2696
    );
  register_module_imp_registers_imp_mux4_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux4_4_f5_2703,
      I1 => register_module_imp_registers_imp_mux4_3_f5_2701,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(13)
    );
  register_module_imp_registers_imp_mux4_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux4_6_2706,
      I1 => register_module_imp_registers_imp_mux4_51_2705,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux4_4_f5_2703
    );
  register_module_imp_registers_imp_mux4_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_13_2894,
      I1 => register_module_imp_registers_imp_regs_0_13_2877,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux4_6_2706
    );
  register_module_imp_registers_imp_mux4_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_13_2928,
      I1 => register_module_imp_registers_imp_regs_2_13_2911,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux4_51_2705
    );
  register_module_imp_registers_imp_mux4_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux4_5_2704,
      I1 => register_module_imp_registers_imp_mux4_4_2702,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux4_3_f5_2701
    );
  register_module_imp_registers_imp_mux4_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_13_2962,
      I1 => register_module_imp_registers_imp_regs_4_13_2945,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux4_5_2704
    );
  register_module_imp_registers_imp_mux4_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_13_2996,
      I1 => register_module_imp_registers_imp_regs_6_13_2979,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux4_4_2702
    );
  register_module_imp_registers_imp_mux5_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux5_4_f5_2709,
      I1 => register_module_imp_registers_imp_mux5_3_f5_2707,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(14)
    );
  register_module_imp_registers_imp_mux5_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux5_6_2712,
      I1 => register_module_imp_registers_imp_mux5_51_2711,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux5_4_f5_2709
    );
  register_module_imp_registers_imp_mux5_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_14_2895,
      I1 => register_module_imp_registers_imp_regs_0_14_2878,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux5_6_2712
    );
  register_module_imp_registers_imp_mux5_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_14_2929,
      I1 => register_module_imp_registers_imp_regs_2_14_2912,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux5_51_2711
    );
  register_module_imp_registers_imp_mux5_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux5_5_2710,
      I1 => register_module_imp_registers_imp_mux5_4_2708,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux5_3_f5_2707
    );
  register_module_imp_registers_imp_mux5_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_14_2963,
      I1 => register_module_imp_registers_imp_regs_4_14_2946,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux5_5_2710
    );
  register_module_imp_registers_imp_mux5_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_14_2997,
      I1 => register_module_imp_registers_imp_regs_6_14_2980,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux5_4_2708
    );
  register_module_imp_registers_imp_mux8_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux8_4_f5_2727,
      I1 => register_module_imp_registers_imp_mux8_3_f5_2725,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(2)
    );
  register_module_imp_registers_imp_mux8_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux8_6_2730,
      I1 => register_module_imp_registers_imp_mux8_51_2729,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux8_4_f5_2727
    );
  register_module_imp_registers_imp_mux8_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_2_2897,
      I1 => register_module_imp_registers_imp_regs_0_2_2880,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux8_6_2730
    );
  register_module_imp_registers_imp_mux8_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_2_2931,
      I1 => register_module_imp_registers_imp_regs_2_2_2914,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux8_51_2729
    );
  register_module_imp_registers_imp_mux8_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux8_5_2728,
      I1 => register_module_imp_registers_imp_mux8_4_2726,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux8_3_f5_2725
    );
  register_module_imp_registers_imp_mux8_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_2_2965,
      I1 => register_module_imp_registers_imp_regs_4_2_2948,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux8_5_2728
    );
  register_module_imp_registers_imp_mux8_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_2_2999,
      I1 => register_module_imp_registers_imp_regs_6_2_2982,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux8_4_2726
    );
  register_module_imp_registers_imp_mux6_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux6_4_f5_2715,
      I1 => register_module_imp_registers_imp_mux6_3_f5_2713,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(15)
    );
  register_module_imp_registers_imp_mux6_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux6_6_2718,
      I1 => register_module_imp_registers_imp_mux6_51_2717,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux6_4_f5_2715
    );
  register_module_imp_registers_imp_mux6_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_15_2896,
      I1 => register_module_imp_registers_imp_regs_0_15_2879,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux6_6_2718
    );
  register_module_imp_registers_imp_mux6_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_15_2930,
      I1 => register_module_imp_registers_imp_regs_2_15_2913,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux6_51_2717
    );
  register_module_imp_registers_imp_mux6_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux6_5_2716,
      I1 => register_module_imp_registers_imp_mux6_4_2714,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux6_3_f5_2713
    );
  register_module_imp_registers_imp_mux6_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_15_2964,
      I1 => register_module_imp_registers_imp_regs_4_15_2947,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux6_5_2716
    );
  register_module_imp_registers_imp_mux6_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_15_2998,
      I1 => register_module_imp_registers_imp_regs_6_15_2981,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux6_4_2714
    );
  register_module_imp_registers_imp_mux7_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux7_4_f5_2721,
      I1 => register_module_imp_registers_imp_mux7_3_f5_2719,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(1)
    );
  register_module_imp_registers_imp_mux7_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux7_6_2724,
      I1 => register_module_imp_registers_imp_mux7_51_2723,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux7_4_f5_2721
    );
  register_module_imp_registers_imp_mux7_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_1_2890,
      I1 => register_module_imp_registers_imp_regs_0_1_2873,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux7_6_2724
    );
  register_module_imp_registers_imp_mux7_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_1_2924,
      I1 => register_module_imp_registers_imp_regs_2_1_2907,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux7_51_2723
    );
  register_module_imp_registers_imp_mux7_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux7_5_2722,
      I1 => register_module_imp_registers_imp_mux7_4_2720,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux7_3_f5_2719
    );
  register_module_imp_registers_imp_mux7_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_1_2958,
      I1 => register_module_imp_registers_imp_regs_4_1_2941,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux7_5_2722
    );
  register_module_imp_registers_imp_mux7_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_1_2992,
      I1 => register_module_imp_registers_imp_regs_6_1_2975,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux7_4_2720
    );
  register_module_imp_registers_imp_mux9_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux9_4_f5_2733,
      I1 => register_module_imp_registers_imp_mux9_3_f5_2731,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(3)
    );
  register_module_imp_registers_imp_mux9_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux9_6_2736,
      I1 => register_module_imp_registers_imp_mux9_51_2735,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux9_4_f5_2733
    );
  register_module_imp_registers_imp_mux9_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_3_2898,
      I1 => register_module_imp_registers_imp_regs_0_3_2881,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux9_6_2736
    );
  register_module_imp_registers_imp_mux9_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_3_2932,
      I1 => register_module_imp_registers_imp_regs_2_3_2915,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux9_51_2735
    );
  register_module_imp_registers_imp_mux9_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux9_5_2734,
      I1 => register_module_imp_registers_imp_mux9_4_2732,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux9_3_f5_2731
    );
  register_module_imp_registers_imp_mux9_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_3_2966,
      I1 => register_module_imp_registers_imp_regs_4_3_2949,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux9_5_2734
    );
  register_module_imp_registers_imp_mux9_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_3_3000,
      I1 => register_module_imp_registers_imp_regs_6_3_2983,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux9_4_2732
    );
  register_module_imp_registers_imp_mux10_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux10_4_f5_2553,
      I1 => register_module_imp_registers_imp_mux10_3_f5_2551,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(4)
    );
  register_module_imp_registers_imp_mux10_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux10_6_2556,
      I1 => register_module_imp_registers_imp_mux10_51_2555,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux10_4_f5_2553
    );
  register_module_imp_registers_imp_mux10_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_4_2899,
      I1 => register_module_imp_registers_imp_regs_0_4_2882,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux10_6_2556
    );
  register_module_imp_registers_imp_mux10_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_4_2933,
      I1 => register_module_imp_registers_imp_regs_2_4_2916,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux10_51_2555
    );
  register_module_imp_registers_imp_mux10_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux10_5_2554,
      I1 => register_module_imp_registers_imp_mux10_4_2552,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux10_3_f5_2551
    );
  register_module_imp_registers_imp_mux10_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_4_2967,
      I1 => register_module_imp_registers_imp_regs_4_4_2950,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux10_5_2554
    );
  register_module_imp_registers_imp_mux10_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_4_3001,
      I1 => register_module_imp_registers_imp_regs_6_4_2984,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux10_4_2552
    );
  register_module_imp_registers_imp_mux11_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux11_4_f5_2559,
      I1 => register_module_imp_registers_imp_mux11_3_f5_2557,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(5)
    );
  register_module_imp_registers_imp_mux11_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux11_6_2562,
      I1 => register_module_imp_registers_imp_mux11_51_2561,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux11_4_f5_2559
    );
  register_module_imp_registers_imp_mux11_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_5_2900,
      I1 => register_module_imp_registers_imp_regs_0_5_2883,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux11_6_2562
    );
  register_module_imp_registers_imp_mux11_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_5_2934,
      I1 => register_module_imp_registers_imp_regs_2_5_2917,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux11_51_2561
    );
  register_module_imp_registers_imp_mux11_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux11_5_2560,
      I1 => register_module_imp_registers_imp_mux11_4_2558,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux11_3_f5_2557
    );
  register_module_imp_registers_imp_mux11_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_5_2968,
      I1 => register_module_imp_registers_imp_regs_4_5_2951,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux11_5_2560
    );
  register_module_imp_registers_imp_mux11_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_5_3002,
      I1 => register_module_imp_registers_imp_regs_6_5_2985,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux11_4_2558
    );
  register_module_imp_registers_imp_mux12_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux12_4_f5_2565,
      I1 => register_module_imp_registers_imp_mux12_3_f5_2563,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(6)
    );
  register_module_imp_registers_imp_mux12_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux12_6_2568,
      I1 => register_module_imp_registers_imp_mux12_51_2567,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux12_4_f5_2565
    );
  register_module_imp_registers_imp_mux12_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_6_2901,
      I1 => register_module_imp_registers_imp_regs_0_6_2884,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux12_6_2568
    );
  register_module_imp_registers_imp_mux12_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_6_2935,
      I1 => register_module_imp_registers_imp_regs_2_6_2918,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux12_51_2567
    );
  register_module_imp_registers_imp_mux12_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux12_5_2566,
      I1 => register_module_imp_registers_imp_mux12_4_2564,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux12_3_f5_2563
    );
  register_module_imp_registers_imp_mux12_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_6_2969,
      I1 => register_module_imp_registers_imp_regs_4_6_2952,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux12_5_2566
    );
  register_module_imp_registers_imp_mux12_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_6_3003,
      I1 => register_module_imp_registers_imp_regs_6_6_2986,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux12_4_2564
    );
  register_module_imp_registers_imp_mux13_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux13_4_f5_2571,
      I1 => register_module_imp_registers_imp_mux13_3_f5_2569,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(7)
    );
  register_module_imp_registers_imp_mux13_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux13_6_2574,
      I1 => register_module_imp_registers_imp_mux13_51_2573,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux13_4_f5_2571
    );
  register_module_imp_registers_imp_mux13_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_7_2902,
      I1 => register_module_imp_registers_imp_regs_0_7_2885,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux13_6_2574
    );
  register_module_imp_registers_imp_mux13_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_7_2936,
      I1 => register_module_imp_registers_imp_regs_2_7_2919,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux13_51_2573
    );
  register_module_imp_registers_imp_mux13_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux13_5_2572,
      I1 => register_module_imp_registers_imp_mux13_4_2570,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux13_3_f5_2569
    );
  register_module_imp_registers_imp_mux13_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_7_2970,
      I1 => register_module_imp_registers_imp_regs_4_7_2953,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux13_5_2572
    );
  register_module_imp_registers_imp_mux13_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_7_3004,
      I1 => register_module_imp_registers_imp_regs_6_7_2987,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux13_4_2570
    );
  register_module_imp_registers_imp_mux14_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux14_4_f5_2577,
      I1 => register_module_imp_registers_imp_mux14_3_f5_2575,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(8)
    );
  register_module_imp_registers_imp_mux14_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux14_6_2580,
      I1 => register_module_imp_registers_imp_mux14_51_2579,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux14_4_f5_2577
    );
  register_module_imp_registers_imp_mux14_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_8_2903,
      I1 => register_module_imp_registers_imp_regs_0_8_2886,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux14_6_2580
    );
  register_module_imp_registers_imp_mux14_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_8_2937,
      I1 => register_module_imp_registers_imp_regs_2_8_2920,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux14_51_2579
    );
  register_module_imp_registers_imp_mux14_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux14_5_2578,
      I1 => register_module_imp_registers_imp_mux14_4_2576,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux14_3_f5_2575
    );
  register_module_imp_registers_imp_mux14_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_8_2971,
      I1 => register_module_imp_registers_imp_regs_4_8_2954,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux14_5_2578
    );
  register_module_imp_registers_imp_mux14_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_8_3005,
      I1 => register_module_imp_registers_imp_regs_6_8_2988,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux14_4_2576
    );
  register_module_imp_registers_imp_mux17_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux17_4_f5_2595,
      I1 => register_module_imp_registers_imp_mux17_3_f5_2593,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(10)
    );
  register_module_imp_registers_imp_mux17_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux17_6_2598,
      I1 => register_module_imp_registers_imp_mux17_51_2597,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux17_4_f5_2595
    );
  register_module_imp_registers_imp_mux17_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_10_2874,
      I2 => register_module_imp_registers_imp_regs_1_10_2891,
      O => register_module_imp_registers_imp_mux17_6_2598
    );
  register_module_imp_registers_imp_mux17_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_10_2908,
      I2 => register_module_imp_registers_imp_regs_3_10_2925,
      O => register_module_imp_registers_imp_mux17_51_2597
    );
  register_module_imp_registers_imp_mux17_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux17_5_2596,
      I1 => register_module_imp_registers_imp_mux17_4_2594,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux17_3_f5_2593
    );
  register_module_imp_registers_imp_mux17_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_10_2942,
      I2 => register_module_imp_registers_imp_regs_5_10_2959,
      O => register_module_imp_registers_imp_mux17_5_2596
    );
  register_module_imp_registers_imp_mux17_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_10_2976,
      I2 => register_module_imp_registers_imp_regs_7_10_2993,
      O => register_module_imp_registers_imp_mux17_4_2594
    );
  register_module_imp_registers_imp_mux15_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux15_4_f5_2583,
      I1 => register_module_imp_registers_imp_mux15_3_f5_2581,
      S => read_reg_1_from_id(2),
      O => register_module_imp_registers_imp_varindex0000(9)
    );
  register_module_imp_registers_imp_mux15_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux15_6_2586,
      I1 => register_module_imp_registers_imp_mux15_51_2585,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux15_4_f5_2583
    );
  register_module_imp_registers_imp_mux15_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_1_9_2904,
      I1 => register_module_imp_registers_imp_regs_0_9_2887,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux15_6_2586
    );
  register_module_imp_registers_imp_mux15_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_3_9_2938,
      I1 => register_module_imp_registers_imp_regs_2_9_2921,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux15_51_2585
    );
  register_module_imp_registers_imp_mux15_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux15_5_2584,
      I1 => register_module_imp_registers_imp_mux15_4_2582,
      S => read_reg_1_from_id(1),
      O => register_module_imp_registers_imp_mux15_3_f5_2581
    );
  register_module_imp_registers_imp_mux15_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_5_9_2972,
      I1 => register_module_imp_registers_imp_regs_4_9_2955,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux15_5_2584
    );
  register_module_imp_registers_imp_mux15_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => register_module_imp_registers_imp_regs_7_9_3006,
      I1 => register_module_imp_registers_imp_regs_6_9_2989,
      I2 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_mux15_4_2582
    );
  register_module_imp_registers_imp_mux16_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux16_4_f5_2589,
      I1 => register_module_imp_registers_imp_mux16_3_f5_2587,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(0)
    );
  register_module_imp_registers_imp_mux16_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux16_6_2592,
      I1 => register_module_imp_registers_imp_mux16_51_2591,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux16_4_f5_2589
    );
  register_module_imp_registers_imp_mux16_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_0_2872,
      I2 => register_module_imp_registers_imp_regs_1_0_2889,
      O => register_module_imp_registers_imp_mux16_6_2592
    );
  register_module_imp_registers_imp_mux16_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_0_2906,
      I2 => register_module_imp_registers_imp_regs_3_0_2923,
      O => register_module_imp_registers_imp_mux16_51_2591
    );
  register_module_imp_registers_imp_mux16_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux16_5_2590,
      I1 => register_module_imp_registers_imp_mux16_4_2588,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux16_3_f5_2587
    );
  register_module_imp_registers_imp_mux16_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_0_2940,
      I2 => register_module_imp_registers_imp_regs_5_0_2957,
      O => register_module_imp_registers_imp_mux16_5_2590
    );
  register_module_imp_registers_imp_mux16_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_0_2974,
      I2 => register_module_imp_registers_imp_regs_7_0_2991,
      O => register_module_imp_registers_imp_mux16_4_2588
    );
  register_module_imp_registers_imp_mux18_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux18_4_f5_2601,
      I1 => register_module_imp_registers_imp_mux18_3_f5_2599,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(11)
    );
  register_module_imp_registers_imp_mux18_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux18_6_2604,
      I1 => register_module_imp_registers_imp_mux18_51_2603,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux18_4_f5_2601
    );
  register_module_imp_registers_imp_mux18_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_11_2875,
      I2 => register_module_imp_registers_imp_regs_1_11_2892,
      O => register_module_imp_registers_imp_mux18_6_2604
    );
  register_module_imp_registers_imp_mux18_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_11_2909,
      I2 => register_module_imp_registers_imp_regs_3_11_2926,
      O => register_module_imp_registers_imp_mux18_51_2603
    );
  register_module_imp_registers_imp_mux18_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux18_5_2602,
      I1 => register_module_imp_registers_imp_mux18_4_2600,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux18_3_f5_2599
    );
  register_module_imp_registers_imp_mux18_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_11_2943,
      I2 => register_module_imp_registers_imp_regs_5_11_2960,
      O => register_module_imp_registers_imp_mux18_5_2602
    );
  register_module_imp_registers_imp_mux18_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_11_2977,
      I2 => register_module_imp_registers_imp_regs_7_11_2994,
      O => register_module_imp_registers_imp_mux18_4_2600
    );
  register_module_imp_registers_imp_mux19_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux19_4_f5_2607,
      I1 => register_module_imp_registers_imp_mux19_3_f5_2605,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(12)
    );
  register_module_imp_registers_imp_mux19_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux19_6_2610,
      I1 => register_module_imp_registers_imp_mux19_51_2609,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux19_4_f5_2607
    );
  register_module_imp_registers_imp_mux19_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_12_2876,
      I2 => register_module_imp_registers_imp_regs_1_12_2893,
      O => register_module_imp_registers_imp_mux19_6_2610
    );
  register_module_imp_registers_imp_mux19_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_12_2910,
      I2 => register_module_imp_registers_imp_regs_3_12_2927,
      O => register_module_imp_registers_imp_mux19_51_2609
    );
  register_module_imp_registers_imp_mux19_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux19_5_2608,
      I1 => register_module_imp_registers_imp_mux19_4_2606,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux19_3_f5_2605
    );
  register_module_imp_registers_imp_mux19_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_12_2944,
      I2 => register_module_imp_registers_imp_regs_5_12_2961,
      O => register_module_imp_registers_imp_mux19_5_2608
    );
  register_module_imp_registers_imp_mux19_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_12_2978,
      I2 => register_module_imp_registers_imp_regs_7_12_2995,
      O => register_module_imp_registers_imp_mux19_4_2606
    );
  register_module_imp_registers_imp_mux20_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux20_4_f5_2619,
      I1 => register_module_imp_registers_imp_mux20_3_f5_2617,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(13)
    );
  register_module_imp_registers_imp_mux20_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux20_6_2622,
      I1 => register_module_imp_registers_imp_mux20_51_2621,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux20_4_f5_2619
    );
  register_module_imp_registers_imp_mux20_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_13_2877,
      I2 => register_module_imp_registers_imp_regs_1_13_2894,
      O => register_module_imp_registers_imp_mux20_6_2622
    );
  register_module_imp_registers_imp_mux20_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_13_2911,
      I2 => register_module_imp_registers_imp_regs_3_13_2928,
      O => register_module_imp_registers_imp_mux20_51_2621
    );
  register_module_imp_registers_imp_mux20_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux20_5_2620,
      I1 => register_module_imp_registers_imp_mux20_4_2618,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux20_3_f5_2617
    );
  register_module_imp_registers_imp_mux20_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_13_2945,
      I2 => register_module_imp_registers_imp_regs_5_13_2962,
      O => register_module_imp_registers_imp_mux20_5_2620
    );
  register_module_imp_registers_imp_mux20_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_13_2979,
      I2 => register_module_imp_registers_imp_regs_7_13_2996,
      O => register_module_imp_registers_imp_mux20_4_2618
    );
  register_module_imp_registers_imp_mux21_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux21_4_f5_2625,
      I1 => register_module_imp_registers_imp_mux21_3_f5_2623,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(14)
    );
  register_module_imp_registers_imp_mux21_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux21_6_2628,
      I1 => register_module_imp_registers_imp_mux21_51_2627,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux21_4_f5_2625
    );
  register_module_imp_registers_imp_mux21_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_14_2878,
      I2 => register_module_imp_registers_imp_regs_1_14_2895,
      O => register_module_imp_registers_imp_mux21_6_2628
    );
  register_module_imp_registers_imp_mux21_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_14_2912,
      I2 => register_module_imp_registers_imp_regs_3_14_2929,
      O => register_module_imp_registers_imp_mux21_51_2627
    );
  register_module_imp_registers_imp_mux21_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux21_5_2626,
      I1 => register_module_imp_registers_imp_mux21_4_2624,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux21_3_f5_2623
    );
  register_module_imp_registers_imp_mux21_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_14_2946,
      I2 => register_module_imp_registers_imp_regs_5_14_2963,
      O => register_module_imp_registers_imp_mux21_5_2626
    );
  register_module_imp_registers_imp_mux21_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_14_2980,
      I2 => register_module_imp_registers_imp_regs_7_14_2997,
      O => register_module_imp_registers_imp_mux21_4_2624
    );
  register_module_imp_registers_imp_mux22_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux22_4_f5_2631,
      I1 => register_module_imp_registers_imp_mux22_3_f5_2629,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(15)
    );
  register_module_imp_registers_imp_mux22_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux22_6_2634,
      I1 => register_module_imp_registers_imp_mux22_51_2633,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux22_4_f5_2631
    );
  register_module_imp_registers_imp_mux22_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_15_2879,
      I2 => register_module_imp_registers_imp_regs_1_15_2896,
      O => register_module_imp_registers_imp_mux22_6_2634
    );
  register_module_imp_registers_imp_mux22_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_15_2913,
      I2 => register_module_imp_registers_imp_regs_3_15_2930,
      O => register_module_imp_registers_imp_mux22_51_2633
    );
  register_module_imp_registers_imp_mux22_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux22_5_2632,
      I1 => register_module_imp_registers_imp_mux22_4_2630,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux22_3_f5_2629
    );
  register_module_imp_registers_imp_mux22_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_15_2947,
      I2 => register_module_imp_registers_imp_regs_5_15_2964,
      O => register_module_imp_registers_imp_mux22_5_2632
    );
  register_module_imp_registers_imp_mux22_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_15_2981,
      I2 => register_module_imp_registers_imp_regs_7_15_2998,
      O => register_module_imp_registers_imp_mux22_4_2630
    );
  register_module_imp_registers_imp_mux23_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux23_4_f5_2637,
      I1 => register_module_imp_registers_imp_mux23_3_f5_2635,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(1)
    );
  register_module_imp_registers_imp_mux23_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux23_6_2640,
      I1 => register_module_imp_registers_imp_mux23_51_2639,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux23_4_f5_2637
    );
  register_module_imp_registers_imp_mux23_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_1_2873,
      I2 => register_module_imp_registers_imp_regs_1_1_2890,
      O => register_module_imp_registers_imp_mux23_6_2640
    );
  register_module_imp_registers_imp_mux23_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_1_2907,
      I2 => register_module_imp_registers_imp_regs_3_1_2924,
      O => register_module_imp_registers_imp_mux23_51_2639
    );
  register_module_imp_registers_imp_mux23_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux23_5_2638,
      I1 => register_module_imp_registers_imp_mux23_4_2636,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux23_3_f5_2635
    );
  register_module_imp_registers_imp_mux23_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_1_2941,
      I2 => register_module_imp_registers_imp_regs_5_1_2958,
      O => register_module_imp_registers_imp_mux23_5_2638
    );
  register_module_imp_registers_imp_mux23_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_1_2975,
      I2 => register_module_imp_registers_imp_regs_7_1_2992,
      O => register_module_imp_registers_imp_mux23_4_2636
    );
  register_module_imp_registers_imp_mux24_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux24_4_f5_2643,
      I1 => register_module_imp_registers_imp_mux24_3_f5_2641,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(2)
    );
  register_module_imp_registers_imp_mux24_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux24_6_2646,
      I1 => register_module_imp_registers_imp_mux24_51_2645,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux24_4_f5_2643
    );
  register_module_imp_registers_imp_mux24_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_2_2880,
      I2 => register_module_imp_registers_imp_regs_1_2_2897,
      O => register_module_imp_registers_imp_mux24_6_2646
    );
  register_module_imp_registers_imp_mux24_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_2_2914,
      I2 => register_module_imp_registers_imp_regs_3_2_2931,
      O => register_module_imp_registers_imp_mux24_51_2645
    );
  register_module_imp_registers_imp_mux24_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux24_5_2644,
      I1 => register_module_imp_registers_imp_mux24_4_2642,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux24_3_f5_2641
    );
  register_module_imp_registers_imp_mux24_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_2_2948,
      I2 => register_module_imp_registers_imp_regs_5_2_2965,
      O => register_module_imp_registers_imp_mux24_5_2644
    );
  register_module_imp_registers_imp_mux24_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_2_2982,
      I2 => register_module_imp_registers_imp_regs_7_2_2999,
      O => register_module_imp_registers_imp_mux24_4_2642
    );
  register_module_imp_registers_imp_mux25_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux25_4_f5_2649,
      I1 => register_module_imp_registers_imp_mux25_3_f5_2647,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(3)
    );
  register_module_imp_registers_imp_mux25_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux25_6_2652,
      I1 => register_module_imp_registers_imp_mux25_51_2651,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux25_4_f5_2649
    );
  register_module_imp_registers_imp_mux25_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_3_2881,
      I2 => register_module_imp_registers_imp_regs_1_3_2898,
      O => register_module_imp_registers_imp_mux25_6_2652
    );
  register_module_imp_registers_imp_mux25_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_3_2915,
      I2 => register_module_imp_registers_imp_regs_3_3_2932,
      O => register_module_imp_registers_imp_mux25_51_2651
    );
  register_module_imp_registers_imp_mux25_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux25_5_2650,
      I1 => register_module_imp_registers_imp_mux25_4_2648,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux25_3_f5_2647
    );
  register_module_imp_registers_imp_mux25_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_3_2949,
      I2 => register_module_imp_registers_imp_regs_5_3_2966,
      O => register_module_imp_registers_imp_mux25_5_2650
    );
  register_module_imp_registers_imp_mux25_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_3_2983,
      I2 => register_module_imp_registers_imp_regs_7_3_3000,
      O => register_module_imp_registers_imp_mux25_4_2648
    );
  register_module_imp_registers_imp_mux26_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux26_4_f5_2655,
      I1 => register_module_imp_registers_imp_mux26_3_f5_2653,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(4)
    );
  register_module_imp_registers_imp_mux26_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux26_6_2658,
      I1 => register_module_imp_registers_imp_mux26_51_2657,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux26_4_f5_2655
    );
  register_module_imp_registers_imp_mux26_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_4_2882,
      I2 => register_module_imp_registers_imp_regs_1_4_2899,
      O => register_module_imp_registers_imp_mux26_6_2658
    );
  register_module_imp_registers_imp_mux26_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_4_2916,
      I2 => register_module_imp_registers_imp_regs_3_4_2933,
      O => register_module_imp_registers_imp_mux26_51_2657
    );
  register_module_imp_registers_imp_mux26_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux26_5_2656,
      I1 => register_module_imp_registers_imp_mux26_4_2654,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux26_3_f5_2653
    );
  register_module_imp_registers_imp_mux26_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_4_2950,
      I2 => register_module_imp_registers_imp_regs_5_4_2967,
      O => register_module_imp_registers_imp_mux26_5_2656
    );
  register_module_imp_registers_imp_mux26_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_4_2984,
      I2 => register_module_imp_registers_imp_regs_7_4_3001,
      O => register_module_imp_registers_imp_mux26_4_2654
    );
  register_module_imp_registers_imp_mux27_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux27_4_f5_2661,
      I1 => register_module_imp_registers_imp_mux27_3_f5_2659,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(5)
    );
  register_module_imp_registers_imp_mux27_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux27_6_2664,
      I1 => register_module_imp_registers_imp_mux27_51_2663,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux27_4_f5_2661
    );
  register_module_imp_registers_imp_mux27_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_5_2883,
      I2 => register_module_imp_registers_imp_regs_1_5_2900,
      O => register_module_imp_registers_imp_mux27_6_2664
    );
  register_module_imp_registers_imp_mux27_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_5_2917,
      I2 => register_module_imp_registers_imp_regs_3_5_2934,
      O => register_module_imp_registers_imp_mux27_51_2663
    );
  register_module_imp_registers_imp_mux27_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux27_5_2662,
      I1 => register_module_imp_registers_imp_mux27_4_2660,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux27_3_f5_2659
    );
  register_module_imp_registers_imp_mux27_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_5_2951,
      I2 => register_module_imp_registers_imp_regs_5_5_2968,
      O => register_module_imp_registers_imp_mux27_5_2662
    );
  register_module_imp_registers_imp_mux27_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_5_2985,
      I2 => register_module_imp_registers_imp_regs_7_5_3002,
      O => register_module_imp_registers_imp_mux27_4_2660
    );
  register_module_imp_registers_imp_mux28_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux28_4_f5_2667,
      I1 => register_module_imp_registers_imp_mux28_3_f5_2665,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(6)
    );
  register_module_imp_registers_imp_mux28_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux28_6_2670,
      I1 => register_module_imp_registers_imp_mux28_51_2669,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux28_4_f5_2667
    );
  register_module_imp_registers_imp_mux28_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_6_2884,
      I2 => register_module_imp_registers_imp_regs_1_6_2901,
      O => register_module_imp_registers_imp_mux28_6_2670
    );
  register_module_imp_registers_imp_mux28_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_6_2918,
      I2 => register_module_imp_registers_imp_regs_3_6_2935,
      O => register_module_imp_registers_imp_mux28_51_2669
    );
  register_module_imp_registers_imp_mux28_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux28_5_2668,
      I1 => register_module_imp_registers_imp_mux28_4_2666,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux28_3_f5_2665
    );
  register_module_imp_registers_imp_mux28_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_6_2952,
      I2 => register_module_imp_registers_imp_regs_5_6_2969,
      O => register_module_imp_registers_imp_mux28_5_2668
    );
  register_module_imp_registers_imp_mux28_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_6_2986,
      I2 => register_module_imp_registers_imp_regs_7_6_3003,
      O => register_module_imp_registers_imp_mux28_4_2666
    );
  register_module_imp_registers_imp_mux29_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux29_4_f5_2673,
      I1 => register_module_imp_registers_imp_mux29_3_f5_2671,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(7)
    );
  register_module_imp_registers_imp_mux29_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux29_6_2676,
      I1 => register_module_imp_registers_imp_mux29_51_2675,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux29_4_f5_2673
    );
  register_module_imp_registers_imp_mux29_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_7_2885,
      I2 => register_module_imp_registers_imp_regs_1_7_2902,
      O => register_module_imp_registers_imp_mux29_6_2676
    );
  register_module_imp_registers_imp_mux29_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_7_2919,
      I2 => register_module_imp_registers_imp_regs_3_7_2936,
      O => register_module_imp_registers_imp_mux29_51_2675
    );
  register_module_imp_registers_imp_mux29_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux29_5_2674,
      I1 => register_module_imp_registers_imp_mux29_4_2672,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux29_3_f5_2671
    );
  register_module_imp_registers_imp_mux29_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_7_2953,
      I2 => register_module_imp_registers_imp_regs_5_7_2970,
      O => register_module_imp_registers_imp_mux29_5_2674
    );
  register_module_imp_registers_imp_mux29_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_7_2987,
      I2 => register_module_imp_registers_imp_regs_7_7_3004,
      O => register_module_imp_registers_imp_mux29_4_2672
    );
  register_module_imp_registers_imp_mux30_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux30_4_f5_2685,
      I1 => register_module_imp_registers_imp_mux30_3_f5_2683,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(8)
    );
  register_module_imp_registers_imp_mux30_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux30_6_2688,
      I1 => register_module_imp_registers_imp_mux30_51_2687,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux30_4_f5_2685
    );
  register_module_imp_registers_imp_mux30_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_8_2886,
      I2 => register_module_imp_registers_imp_regs_1_8_2903,
      O => register_module_imp_registers_imp_mux30_6_2688
    );
  register_module_imp_registers_imp_mux30_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_8_2920,
      I2 => register_module_imp_registers_imp_regs_3_8_2937,
      O => register_module_imp_registers_imp_mux30_51_2687
    );
  register_module_imp_registers_imp_mux30_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux30_5_2686,
      I1 => register_module_imp_registers_imp_mux30_4_2684,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux30_3_f5_2683
    );
  register_module_imp_registers_imp_mux30_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_8_2954,
      I2 => register_module_imp_registers_imp_regs_5_8_2971,
      O => register_module_imp_registers_imp_mux30_5_2686
    );
  register_module_imp_registers_imp_mux30_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_8_2988,
      I2 => register_module_imp_registers_imp_regs_7_8_3005,
      O => register_module_imp_registers_imp_mux30_4_2684
    );
  register_module_imp_registers_imp_mux31_2_f6 : MUXF6
    port map (
      I0 => register_module_imp_registers_imp_mux31_4_f5_2691,
      I1 => register_module_imp_registers_imp_mux31_3_f5_2689,
      S => read_reg_2_from_id(2),
      O => register_module_imp_registers_imp_varindex0001(9)
    );
  register_module_imp_registers_imp_mux31_4_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux31_6_2694,
      I1 => register_module_imp_registers_imp_mux31_51_2693,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux31_4_f5_2691
    );
  register_module_imp_registers_imp_mux31_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_0_9_2887,
      I2 => register_module_imp_registers_imp_regs_1_9_2904,
      O => register_module_imp_registers_imp_mux31_6_2694
    );
  register_module_imp_registers_imp_mux31_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_2_9_2921,
      I2 => register_module_imp_registers_imp_regs_3_9_2938,
      O => register_module_imp_registers_imp_mux31_51_2693
    );
  register_module_imp_registers_imp_mux31_3_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_mux31_5_2692,
      I1 => register_module_imp_registers_imp_mux31_4_2690,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_mux31_3_f5_2689
    );
  register_module_imp_registers_imp_mux31_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_4_9_2955,
      I2 => register_module_imp_registers_imp_regs_5_9_2972,
      O => register_module_imp_registers_imp_mux31_5_2692
    );
  register_module_imp_registers_imp_mux31_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => register_module_imp_registers_imp_regs_6_9_2989,
      I2 => register_module_imp_registers_imp_regs_7_9_3006,
      O => register_module_imp_registers_imp_mux31_4_2690
    );
  register_module_imp_registers_imp_regs_2_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_regs_2_15_2913
    );
  register_module_imp_registers_imp_regs_2_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_regs_2_14_2912
    );
  register_module_imp_registers_imp_regs_2_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_regs_2_13_2911
    );
  register_module_imp_registers_imp_regs_2_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_regs_2_12_2910
    );
  register_module_imp_registers_imp_regs_2_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_regs_2_11_2909
    );
  register_module_imp_registers_imp_regs_2_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_regs_2_10_2908
    );
  register_module_imp_registers_imp_regs_2_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_regs_2_9_2921
    );
  register_module_imp_registers_imp_regs_2_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_regs_2_8_2920
    );
  register_module_imp_registers_imp_regs_2_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_regs_2_7_2919
    );
  register_module_imp_registers_imp_regs_2_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_regs_2_6_2918
    );
  register_module_imp_registers_imp_regs_2_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_regs_2_5_2917
    );
  register_module_imp_registers_imp_regs_2_4 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      Q => register_module_imp_registers_imp_regs_2_4_2916
    );
  register_module_imp_registers_imp_regs_2_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_regs_2_3_2915
    );
  register_module_imp_registers_imp_regs_2_2 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_2_2_2914
    );
  register_module_imp_registers_imp_regs_2_1 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_2_1_2907
    );
  register_module_imp_registers_imp_regs_2_0 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_2_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_2_0_2906
    );
  register_module_imp_registers_imp_regs_1_15 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_1_15_2896
    );
  register_module_imp_registers_imp_regs_1_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_regs_1_14_2895
    );
  register_module_imp_registers_imp_regs_1_13 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_1_13_2894
    );
  register_module_imp_registers_imp_regs_1_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_regs_1_12_2893
    );
  register_module_imp_registers_imp_regs_1_11 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_1_11_2892
    );
  register_module_imp_registers_imp_regs_1_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_regs_1_10_2891
    );
  register_module_imp_registers_imp_regs_1_9 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_1_9_2904
    );
  register_module_imp_registers_imp_regs_1_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_regs_1_8_2903
    );
  register_module_imp_registers_imp_regs_1_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_regs_1_7_2902
    );
  register_module_imp_registers_imp_regs_1_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_regs_1_6_2901
    );
  register_module_imp_registers_imp_regs_1_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_regs_1_5_2900
    );
  register_module_imp_registers_imp_regs_1_4 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_1_4_2899
    );
  register_module_imp_registers_imp_regs_1_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_regs_1_3_2898
    );
  register_module_imp_registers_imp_regs_1_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_regs_1_2_2897
    );
  register_module_imp_registers_imp_regs_1_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_regs_1_1_2890
    );
  register_module_imp_registers_imp_regs_1_0 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_1_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_1_0_2889
    );
  register_module_imp_registers_imp_regs_0_15 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(15),
      Q => register_module_imp_registers_imp_regs_0_15_2879
    );
  register_module_imp_registers_imp_regs_0_14 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(14),
      Q => register_module_imp_registers_imp_regs_0_14_2878
    );
  register_module_imp_registers_imp_regs_0_13 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(13),
      Q => register_module_imp_registers_imp_regs_0_13_2877
    );
  register_module_imp_registers_imp_regs_0_12 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(12),
      Q => register_module_imp_registers_imp_regs_0_12_2876
    );
  register_module_imp_registers_imp_regs_0_11 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(11),
      Q => register_module_imp_registers_imp_regs_0_11_2875
    );
  register_module_imp_registers_imp_regs_0_10 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(10),
      Q => register_module_imp_registers_imp_regs_0_10_2874
    );
  register_module_imp_registers_imp_regs_0_9 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(9),
      Q => register_module_imp_registers_imp_regs_0_9_2887
    );
  register_module_imp_registers_imp_regs_0_8 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(8),
      Q => register_module_imp_registers_imp_regs_0_8_2886
    );
  register_module_imp_registers_imp_regs_0_7 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(7),
      Q => register_module_imp_registers_imp_regs_0_7_2885
    );
  register_module_imp_registers_imp_regs_0_6 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(6),
      Q => register_module_imp_registers_imp_regs_0_6_2884
    );
  register_module_imp_registers_imp_regs_0_5 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(5),
      Q => register_module_imp_registers_imp_regs_0_5_2883
    );
  register_module_imp_registers_imp_regs_0_4 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(4),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_0_4_2882
    );
  register_module_imp_registers_imp_regs_0_3 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(3),
      Q => register_module_imp_registers_imp_regs_0_3_2881
    );
  register_module_imp_registers_imp_regs_0_2 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(2),
      Q => register_module_imp_registers_imp_regs_0_2_2880
    );
  register_module_imp_registers_imp_regs_0_1 : FDCE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => MEM_WB_regs_imp_write_back_data_out(1),
      Q => register_module_imp_registers_imp_regs_0_1_2873
    );
  register_module_imp_registers_imp_regs_0_0 : FDPE_1
    port map (
      C => clk_IBUF_2083,
      CE => register_module_imp_registers_imp_regs_0_and0000,
      D => MEM_WB_regs_imp_write_back_data_out(0),
      PRE => ALU_MEM_regs_imp_rst_inv,
      Q => register_module_imp_registers_imp_regs_0_0_2872
    );
  register_module_imp_Madd_branch_target_out_xor_15_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(14),
      LI => register_module_imp_Madd_branch_target_out_lut(15),
      O => branch_target_from_id_tmp(15)
    );
  register_module_imp_Madd_branch_target_out_xor_14_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(13),
      LI => register_module_imp_Madd_branch_target_out_lut(14),
      O => branch_target_from_id_tmp(14)
    );
  register_module_imp_Madd_branch_target_out_cy_14_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(13),
      DI => IF_ID_regs_imp_pc_out(14),
      S => register_module_imp_Madd_branch_target_out_lut(14),
      O => register_module_imp_Madd_branch_target_out_cy(14)
    );
  register_module_imp_Madd_branch_target_out_xor_13_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(12),
      LI => register_module_imp_Madd_branch_target_out_lut(13),
      O => branch_target_from_id_tmp(13)
    );
  register_module_imp_Madd_branch_target_out_cy_13_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(12),
      DI => IF_ID_regs_imp_pc_out(13),
      S => register_module_imp_Madd_branch_target_out_lut(13),
      O => register_module_imp_Madd_branch_target_out_cy(13)
    );
  register_module_imp_Madd_branch_target_out_xor_12_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(11),
      LI => register_module_imp_Madd_branch_target_out_lut(12),
      O => branch_target_from_id_tmp(12)
    );
  register_module_imp_Madd_branch_target_out_cy_12_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(11),
      DI => IF_ID_regs_imp_pc_out(12),
      S => register_module_imp_Madd_branch_target_out_lut(12),
      O => register_module_imp_Madd_branch_target_out_cy(12)
    );
  register_module_imp_Madd_branch_target_out_xor_11_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(10),
      LI => register_module_imp_Madd_branch_target_out_lut(11),
      O => branch_target_from_id_tmp(11)
    );
  register_module_imp_Madd_branch_target_out_cy_11_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(10),
      DI => IF_ID_regs_imp_pc_out(11),
      S => register_module_imp_Madd_branch_target_out_lut(11),
      O => register_module_imp_Madd_branch_target_out_cy(11)
    );
  register_module_imp_Madd_branch_target_out_xor_10_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(9),
      LI => register_module_imp_Madd_branch_target_out_lut(10),
      O => branch_target_from_id_tmp(10)
    );
  register_module_imp_Madd_branch_target_out_cy_10_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(9),
      DI => IF_ID_regs_imp_pc_out(10),
      S => register_module_imp_Madd_branch_target_out_lut(10),
      O => register_module_imp_Madd_branch_target_out_cy(10)
    );
  register_module_imp_Madd_branch_target_out_xor_9_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(8),
      LI => register_module_imp_Madd_branch_target_out_lut(9),
      O => branch_target_from_id_tmp(9)
    );
  register_module_imp_Madd_branch_target_out_cy_9_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(8),
      DI => IF_ID_regs_imp_pc_out(9),
      S => register_module_imp_Madd_branch_target_out_lut(9),
      O => register_module_imp_Madd_branch_target_out_cy(9)
    );
  register_module_imp_Madd_branch_target_out_xor_8_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(7),
      LI => register_module_imp_Madd_branch_target_out_lut(8),
      O => branch_target_from_id_tmp(8)
    );
  register_module_imp_Madd_branch_target_out_cy_8_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(7),
      DI => IF_ID_regs_imp_pc_out(8),
      S => register_module_imp_Madd_branch_target_out_lut(8),
      O => register_module_imp_Madd_branch_target_out_cy(8)
    );
  register_module_imp_Madd_branch_target_out_xor_7_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(6),
      LI => register_module_imp_Madd_branch_target_out_lut(7),
      O => branch_target_from_id_tmp(7)
    );
  register_module_imp_Madd_branch_target_out_cy_7_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(6),
      DI => IF_ID_regs_imp_pc_out(7),
      S => register_module_imp_Madd_branch_target_out_lut(7),
      O => register_module_imp_Madd_branch_target_out_cy(7)
    );
  register_module_imp_Madd_branch_target_out_xor_6_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(5),
      LI => register_module_imp_Madd_branch_target_out_lut(6),
      O => branch_target_from_id_tmp(6)
    );
  register_module_imp_Madd_branch_target_out_cy_6_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(5),
      DI => IF_ID_regs_imp_pc_out(6),
      S => register_module_imp_Madd_branch_target_out_lut(6),
      O => register_module_imp_Madd_branch_target_out_cy(6)
    );
  register_module_imp_Madd_branch_target_out_xor_5_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(4),
      LI => register_module_imp_Madd_branch_target_out_lut(5),
      O => branch_target_from_id_tmp(5)
    );
  register_module_imp_Madd_branch_target_out_cy_5_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(4),
      DI => IF_ID_regs_imp_pc_out(5),
      S => register_module_imp_Madd_branch_target_out_lut(5),
      O => register_module_imp_Madd_branch_target_out_cy(5)
    );
  register_module_imp_Madd_branch_target_out_xor_4_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(3),
      LI => register_module_imp_Madd_branch_target_out_lut(4),
      O => branch_target_from_id_tmp(4)
    );
  register_module_imp_Madd_branch_target_out_cy_4_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(3),
      DI => IF_ID_regs_imp_pc_out(4),
      S => register_module_imp_Madd_branch_target_out_lut(4),
      O => register_module_imp_Madd_branch_target_out_cy(4)
    );
  register_module_imp_Madd_branch_target_out_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(4),
      I1 => immediate_from_id_tmp(4),
      O => register_module_imp_Madd_branch_target_out_lut(4)
    );
  register_module_imp_Madd_branch_target_out_xor_3_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(2),
      LI => register_module_imp_Madd_branch_target_out_lut(3),
      O => branch_target_from_id_tmp(3)
    );
  register_module_imp_Madd_branch_target_out_cy_3_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(2),
      DI => IF_ID_regs_imp_pc_out(3),
      S => register_module_imp_Madd_branch_target_out_lut(3),
      O => register_module_imp_Madd_branch_target_out_cy(3)
    );
  register_module_imp_Madd_branch_target_out_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(3),
      I1 => immediate_from_id_tmp(3),
      O => register_module_imp_Madd_branch_target_out_lut(3)
    );
  register_module_imp_Madd_branch_target_out_xor_2_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(1),
      LI => register_module_imp_Madd_branch_target_out_lut(2),
      O => branch_target_from_id_tmp(2)
    );
  register_module_imp_Madd_branch_target_out_cy_2_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(1),
      DI => IF_ID_regs_imp_pc_out(2),
      S => register_module_imp_Madd_branch_target_out_lut(2),
      O => register_module_imp_Madd_branch_target_out_cy(2)
    );
  register_module_imp_Madd_branch_target_out_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(2),
      I1 => immediate_from_id_tmp(2),
      O => register_module_imp_Madd_branch_target_out_lut(2)
    );
  register_module_imp_Madd_branch_target_out_xor_1_Q : XORCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(0),
      LI => register_module_imp_Madd_branch_target_out_lut(1),
      O => branch_target_from_id_tmp(1)
    );
  register_module_imp_Madd_branch_target_out_cy_1_Q : MUXCY
    port map (
      CI => register_module_imp_Madd_branch_target_out_cy(0),
      DI => IF_ID_regs_imp_pc_out(1),
      S => register_module_imp_Madd_branch_target_out_lut(1),
      O => register_module_imp_Madd_branch_target_out_cy(1)
    );
  register_module_imp_Madd_branch_target_out_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(1),
      I1 => immediate_from_id_tmp(1),
      O => register_module_imp_Madd_branch_target_out_lut(1)
    );
  register_module_imp_Madd_branch_target_out_xor_0_Q : XORCY
    port map (
      CI => ram2_oe_OBUF_2362,
      LI => register_module_imp_Madd_branch_target_out_lut(0),
      O => branch_target_from_id_tmp(0)
    );
  register_module_imp_Madd_branch_target_out_cy_0_Q : MUXCY
    port map (
      CI => ram2_oe_OBUF_2362,
      DI => IF_ID_regs_imp_pc_out(0),
      S => register_module_imp_Madd_branch_target_out_lut(0),
      O => register_module_imp_Madd_branch_target_out_cy(0)
    );
  register_module_imp_Madd_branch_target_out_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(0),
      I1 => immediate_from_id_tmp(0),
      O => register_module_imp_Madd_branch_target_out_lut(0)
    );
  DM_imp_Ram1Addr_0_not00012 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => N55,
      I2 => N14,
      O => DM_imp_Ram1Addr_0_not0001
    );
  DM_imp_Ram1Addr_0_mux0006211 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => DM_imp_DataOut_10_and0000,
      I2 => ALU_MEM_regs_imp_mem_write_out_34,
      O => N55
    );
  DM_imp_Ram1Addr_0_not000111 : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => DM_imp_judge,
      I2 => DM_imp_DataOut_10_and0000,
      I3 => ALU_MEM_regs_imp_mem_address_out(0),
      O => N14
    );
  DM_imp_Mtridata_Ram1Data_0_mux000021 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => DM_imp_judge,
      I2 => DM_imp_DataOut_10_and0000,
      I3 => ALU_MEM_regs_imp_mem_address_out(0),
      O => N20
    );
  instruction_fetch_module_imp_u_Ram2Addr_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(9),
      O => ram2_addr_9_OBUF_2343
    );
  instruction_fetch_module_imp_u_Ram2Addr_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(8),
      O => ram2_addr_8_OBUF_2342
    );
  instruction_fetch_module_imp_u_Ram2Addr_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(7),
      O => ram2_addr_7_OBUF_2341
    );
  instruction_fetch_module_imp_u_Ram2Addr_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(6),
      O => ram2_addr_6_OBUF_2340
    );
  instruction_fetch_module_imp_u_Ram2Addr_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(5),
      O => ram2_addr_5_OBUF_2339
    );
  instruction_fetch_module_imp_u_Ram2Addr_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(4),
      O => ram2_addr_4_OBUF_2338
    );
  instruction_fetch_module_imp_u_Ram2Addr_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(3),
      O => ram2_addr_3_OBUF_2337
    );
  instruction_fetch_module_imp_u_Ram2Addr_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(2),
      O => ram2_addr_2_OBUF_2336
    );
  instruction_fetch_module_imp_u_Ram2Addr_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(1),
      O => ram2_addr_1_OBUF_2335
    );
  instruction_fetch_module_imp_u_Ram2Addr_15_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(15),
      O => ram2_addr_15_OBUF_2334
    );
  instruction_fetch_module_imp_u_Ram2Addr_14_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(14),
      O => ram2_addr_14_OBUF_2333
    );
  instruction_fetch_module_imp_u_Ram2Addr_13_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(13),
      O => ram2_addr_13_OBUF_2332
    );
  instruction_fetch_module_imp_u_Ram2Addr_12_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(12),
      O => ram2_addr_12_OBUF_2331
    );
  instruction_fetch_module_imp_u_Ram2Addr_11_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(11),
      O => ram2_addr_11_OBUF_2330
    );
  instruction_fetch_module_imp_u_Ram2Addr_10_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(10),
      O => ram2_addr_10_OBUF_2329
    );
  instruction_fetch_module_imp_u_Ram2Addr_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => instruction_fetch_module_imp_pc_in(0),
      O => ram2_addr_0_OBUF_2328
    );
  VGA_oGreen_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => VGA_vst_2008,
      I1 => VGA_hst_1941,
      I2 => VGA_bt(0),
      O => oBlue_0_OBUF_2263
    );
  Mrom_disp121 : LUT4
    generic map(
      INIT => X"FD51"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(0),
      I1 => instruction_fetch_module_imp_pc_in(2),
      I2 => instruction_fetch_module_imp_pc_in(1),
      I3 => instruction_fetch_module_imp_pc_in(3),
      O => disp1_2_OBUF_2112
    );
  Mrom_disp021 : LUT4
    generic map(
      INIT => X"FD51"
    )
    port map (
      I0 => N305,
      I1 => N303,
      I2 => N304,
      I3 => N302,
      O => disp0_2_OBUF_2098
    );
  Mrom_disp141 : LUT4
    generic map(
      INIT => X"76F7"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(3),
      I1 => instruction_fetch_module_imp_pc_in(2),
      I2 => instruction_fetch_module_imp_pc_in(0),
      I3 => instruction_fetch_module_imp_pc_in(1),
      O => disp1_4_OBUF_2114
    );
  Mrom_disp041 : LUT4
    generic map(
      INIT => X"76F7"
    )
    port map (
      I0 => N302,
      I1 => N303,
      I2 => N305,
      I3 => N304,
      O => disp0_4_OBUF_2100
    );
  Mrom_disp1111 : LUT4
    generic map(
      INIT => X"A6EF"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(3),
      I1 => instruction_fetch_module_imp_pc_in(2),
      I2 => instruction_fetch_module_imp_pc_in(1),
      I3 => instruction_fetch_module_imp_pc_in(0),
      O => disp1_1_OBUF_2111
    );
  Mrom_disp0111 : LUT4
    generic map(
      INIT => X"A6EF"
    )
    port map (
      I0 => N302,
      I1 => N303,
      I2 => N304,
      I3 => N305,
      O => disp0_1_OBUF_2097
    );
  Mrom_disp111 : LUT4
    generic map(
      INIT => X"BDEE"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(3),
      I1 => instruction_fetch_module_imp_pc_in(1),
      I2 => instruction_fetch_module_imp_pc_in(0),
      I3 => instruction_fetch_module_imp_pc_in(2),
      O => disp1_0_OBUF_2110
    );
  Mrom_disp011 : LUT4
    generic map(
      INIT => X"BDEE"
    )
    port map (
      I0 => N302,
      I1 => N304,
      I2 => N305,
      I3 => N303,
      O => disp0_0_OBUF_2096
    );
  Mrom_disp151 : LUT4
    generic map(
      INIT => X"497F"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(3),
      I1 => instruction_fetch_module_imp_pc_in(0),
      I2 => instruction_fetch_module_imp_pc_in(1),
      I3 => instruction_fetch_module_imp_pc_in(2),
      O => disp1_5_OBUF_2115
    );
  Mrom_disp051 : LUT4
    generic map(
      INIT => X"497F"
    )
    port map (
      I0 => N302,
      I1 => N305,
      I2 => N304,
      I3 => N303,
      O => disp0_5_OBUF_2101
    );
  Mrom_disp161 : LUT4
    generic map(
      INIT => X"B6DD"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(2),
      I1 => instruction_fetch_module_imp_pc_in(3),
      I2 => instruction_fetch_module_imp_pc_in(1),
      I3 => instruction_fetch_module_imp_pc_in(0),
      O => disp1_6_OBUF_2116
    );
  Mrom_disp061 : LUT4
    generic map(
      INIT => X"B6DD"
    )
    port map (
      I0 => N303,
      I1 => N302,
      I2 => N304,
      I3 => N305,
      O => disp0_6_OBUF_2102
    );
  Mrom_disp131 : LUT4
    generic map(
      INIT => X"67D9"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(0),
      I1 => instruction_fetch_module_imp_pc_in(2),
      I2 => instruction_fetch_module_imp_pc_in(3),
      I3 => instruction_fetch_module_imp_pc_in(1),
      O => disp1_3_OBUF_2113
    );
  Mrom_disp031 : LUT4
    generic map(
      INIT => X"67D9"
    )
    port map (
      I0 => N305,
      I1 => N303,
      I2 => N302,
      I3 => N304,
      O => disp0_3_OBUF_2099
    );
  DM_imp_Mtridata_Ram1Data_9_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(9),
      I1 => N11,
      I2 => ALU_MEM_regs_imp_mem_data_out(9),
      I3 => N14,
      O => DM_imp_Mtridata_Ram1Data_9_mux0000
    );
  DM_imp_Mtridata_Ram1Data_8_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(8),
      I1 => N11,
      I2 => ALU_MEM_regs_imp_mem_data_out(8),
      I3 => N14,
      O => DM_imp_Mtridata_Ram1Data_8_mux0000
    );
  DM_imp_Mtridata_Ram1Data_7_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(7),
      I1 => N2,
      I2 => ALU_MEM_regs_imp_mem_data_out(7),
      I3 => N20,
      O => DM_imp_Mtridata_Ram1Data_7_mux0000
    );
  DM_imp_Mtridata_Ram1Data_6_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(6),
      I1 => N2,
      I2 => ALU_MEM_regs_imp_mem_data_out(6),
      I3 => N20,
      O => DM_imp_Mtridata_Ram1Data_6_mux0000
    );
  DM_imp_Mtridata_Ram1Data_5_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(5),
      I1 => N2,
      I2 => ALU_MEM_regs_imp_mem_data_out(5),
      I3 => N20,
      O => DM_imp_Mtridata_Ram1Data_5_mux0000
    );
  DM_imp_Mtridata_Ram1Data_4_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(4),
      I1 => N2,
      I2 => ALU_MEM_regs_imp_mem_data_out(4),
      I3 => N20,
      O => DM_imp_Mtridata_Ram1Data_4_mux0000
    );
  DM_imp_Mtridata_Ram1Data_3_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(3),
      I1 => N2,
      I2 => ALU_MEM_regs_imp_mem_data_out(3),
      I3 => N20,
      O => DM_imp_Mtridata_Ram1Data_3_mux0000
    );
  DM_imp_Mtridata_Ram1Data_2_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(2),
      I1 => N2,
      I2 => ALU_MEM_regs_imp_mem_data_out(2),
      I3 => N20,
      O => DM_imp_Mtridata_Ram1Data_2_mux0000
    );
  DM_imp_Mtridata_Ram1Data_1_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(1),
      I1 => N2,
      I2 => ALU_MEM_regs_imp_mem_data_out(1),
      I3 => N20,
      O => DM_imp_Mtridata_Ram1Data_1_mux0000
    );
  DM_imp_Mtridata_Ram1Data_15_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(15),
      I1 => N11,
      I2 => ALU_MEM_regs_imp_mem_data_out(15),
      I3 => N14,
      O => DM_imp_Mtridata_Ram1Data_15_mux0000
    );
  DM_imp_Mtridata_Ram1Data_14_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(14),
      I1 => N11,
      I2 => ALU_MEM_regs_imp_mem_data_out(14),
      I3 => N14,
      O => DM_imp_Mtridata_Ram1Data_14_mux0000
    );
  DM_imp_Mtridata_Ram1Data_13_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(13),
      I1 => N11,
      I2 => ALU_MEM_regs_imp_mem_data_out(13),
      I3 => N14,
      O => DM_imp_Mtridata_Ram1Data_13_mux0000
    );
  DM_imp_Mtridata_Ram1Data_12_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(12),
      I1 => N11,
      I2 => ALU_MEM_regs_imp_mem_data_out(12),
      I3 => N14,
      O => DM_imp_Mtridata_Ram1Data_12_mux0000
    );
  DM_imp_Mtridata_Ram1Data_11_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(11),
      I1 => N11,
      I2 => ALU_MEM_regs_imp_mem_data_out(11),
      I3 => N14,
      O => DM_imp_Mtridata_Ram1Data_11_mux0000
    );
  DM_imp_Mtridata_Ram1Data_10_mux00002 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(10),
      I1 => N11,
      I2 => ALU_MEM_regs_imp_mem_data_out(10),
      I3 => N14,
      O => DM_imp_Mtridata_Ram1Data_10_mux0000
    );
  DM_imp_Mtridata_Ram1Data_0_mux00002 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => DM_imp_Mtridata_Ram1Data(0),
      I1 => N2,
      I2 => ALU_MEM_regs_imp_mem_data_out(0),
      I3 => N20,
      O => DM_imp_Mtridata_Ram1Data_0_mux0000
    );
  DM_imp_DataOut_7_mux00051 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N5,
      I1 => N282,
      I2 => DM_imp_DataOut(7),
      I3 => N18,
      O => DM_imp_DataOut_7_mux0005
    );
  DM_imp_DataOut_6_mux00051 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N5,
      I1 => N283,
      I2 => DM_imp_DataOut(6),
      I3 => N18,
      O => DM_imp_DataOut_6_mux0005
    );
  DM_imp_DataOut_5_mux00051 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N5,
      I1 => N284,
      I2 => DM_imp_DataOut(5),
      I3 => N18,
      O => DM_imp_DataOut_5_mux0005
    );
  DM_imp_DataOut_4_mux00051 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N5,
      I1 => N285,
      I2 => DM_imp_DataOut(4),
      I3 => N18,
      O => DM_imp_DataOut_4_mux0005
    );
  DM_imp_DataOut_3_mux00051 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N5,
      I1 => N286,
      I2 => DM_imp_DataOut(3),
      I3 => N18,
      O => DM_imp_DataOut_3_mux0005
    );
  DM_imp_DataOut_2_mux00051 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N5,
      I1 => N287,
      I2 => DM_imp_DataOut(2),
      I3 => N18,
      O => DM_imp_DataOut_2_mux0005
    );
  DM_imp_DataOut_9_mux00051 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => DM_imp_DataOut(9),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => N280,
      O => DM_imp_DataOut_9_mux0005
    );
  DM_imp_DataOut_8_mux00051 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => DM_imp_DataOut(8),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => N281,
      O => DM_imp_DataOut_8_mux0005
    );
  DM_imp_DataOut_15_mux00051 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => DM_imp_DataOut(15),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => N274,
      O => DM_imp_DataOut_15_mux0005
    );
  DM_imp_DataOut_14_mux00051 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => DM_imp_DataOut(14),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => N275,
      O => DM_imp_DataOut_14_mux0005
    );
  DM_imp_DataOut_13_mux00051 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => DM_imp_DataOut(13),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => N276,
      O => DM_imp_DataOut_13_mux0005
    );
  DM_imp_DataOut_12_mux00051 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => DM_imp_DataOut(12),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => N277,
      O => DM_imp_DataOut_12_mux0005
    );
  DM_imp_DataOut_11_mux00051 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => DM_imp_DataOut(11),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => N278,
      O => DM_imp_DataOut_11_mux0005
    );
  DM_imp_DataOut_10_mux00051 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => DM_imp_DataOut(10),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => N279,
      O => DM_imp_DataOut_10_mux0005
    );
  DM_imp_DataOut_1_mux0005_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N5,
      I1 => N288,
      I2 => N18,
      I3 => DM_imp_DataOut(1),
      O => N181
    );
  DM_imp_DataOut_1_mux0005 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => N181,
      I1 => DM_imp_DataOut_10_and0000,
      I2 => ALU_MEM_regs_imp_mem_address_out(0),
      I3 => data_ready_IBUF_2088,
      O => DM_imp_DataOut_1_mux0005_326
    );
  DM_imp_Ram1Addr_9_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(9),
      I2 => ALU_MEM_regs_imp_mem_address_out(9),
      I3 => N26,
      O => DM_imp_Ram1Addr_9_mux0006
    );
  DM_imp_Ram1Addr_8_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(8),
      I2 => ALU_MEM_regs_imp_mem_address_out(8),
      I3 => N26,
      O => DM_imp_Ram1Addr_8_mux0006
    );
  DM_imp_Ram1Addr_7_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(7),
      I2 => ALU_MEM_regs_imp_mem_address_out(7),
      I3 => N25,
      O => DM_imp_Ram1Addr_7_mux0006
    );
  DM_imp_Ram1Addr_6_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(6),
      I2 => ALU_MEM_regs_imp_mem_address_out(6),
      I3 => N25,
      O => DM_imp_Ram1Addr_6_mux0006
    );
  DM_imp_Ram1Addr_5_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(5),
      I2 => ALU_MEM_regs_imp_mem_address_out(5),
      I3 => N25,
      O => DM_imp_Ram1Addr_5_mux0006
    );
  DM_imp_Ram1Addr_4_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(4),
      I2 => ALU_MEM_regs_imp_mem_address_out(4),
      I3 => N25,
      O => DM_imp_Ram1Addr_4_mux0006
    );
  DM_imp_Ram1Addr_3_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(3),
      I2 => ALU_MEM_regs_imp_mem_address_out(3),
      I3 => N25,
      O => DM_imp_Ram1Addr_3_mux0006
    );
  DM_imp_Ram1Addr_2_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(2),
      I2 => ALU_MEM_regs_imp_mem_address_out(2),
      I3 => N25,
      O => DM_imp_Ram1Addr_2_mux0006
    );
  DM_imp_Ram1Addr_1_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(1),
      I2 => ALU_MEM_regs_imp_mem_address_out(1),
      I3 => N25,
      O => DM_imp_Ram1Addr_1_mux0006
    );
  DM_imp_Ram1Addr_15_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(15),
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      I3 => N26,
      O => DM_imp_Ram1Addr_15_mux0006
    );
  DM_imp_Ram1Addr_14_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(14),
      I2 => ALU_MEM_regs_imp_mem_address_out(14),
      I3 => N25,
      O => DM_imp_Ram1Addr_14_mux0006
    );
  DM_imp_Ram1Addr_13_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(13),
      I2 => ALU_MEM_regs_imp_mem_address_out(13),
      I3 => N26,
      O => DM_imp_Ram1Addr_13_mux0006
    );
  DM_imp_Ram1Addr_12_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(12),
      I2 => ALU_MEM_regs_imp_mem_address_out(12),
      I3 => N26,
      O => DM_imp_Ram1Addr_12_mux0006
    );
  DM_imp_Ram1Addr_11_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(11),
      I2 => ALU_MEM_regs_imp_mem_address_out(11),
      I3 => N26,
      O => DM_imp_Ram1Addr_11_mux0006
    );
  DM_imp_Ram1Addr_10_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(10),
      I2 => ALU_MEM_regs_imp_mem_address_out(10),
      I3 => N26,
      O => DM_imp_Ram1Addr_10_mux0006
    );
  DM_imp_Ram1Addr_0_mux00061 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N10,
      I1 => DM_imp_Ram1Addr(0),
      I2 => ALU_MEM_regs_imp_mem_address_out(0),
      I3 => N25,
      O => DM_imp_Ram1Addr_0_mux0006
    );
  VGA_vst_mux000111 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(7),
      I2 => VGA_y(1),
      I3 => VGA_y(2),
      O => VGA_vst_mux000111_2010
    );
  VGA_vst_mux000123 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => VGA_y(5),
      I1 => VGA_y(6),
      I2 => VGA_y(8),
      I3 => VGA_y(4),
      O => VGA_vst_mux000123_2011
    );
  VGA_vst_mux000124 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => VGA_vst_mux000111_2010,
      I1 => VGA_vst_mux000123_2011,
      O => VGA_vst_mux0001
    );
  DM_imp_wrn1 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => clk_IBUF1,
      I2 => DM_imp_DataOut_10_and0000,
      I3 => ALU_MEM_regs_imp_mem_address_out(0),
      O => wrn_OBUF_3148
    );
  DM_imp_rdn1 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => clk_IBUF1,
      I2 => DM_imp_DataOut_10_and0000,
      I3 => ALU_MEM_regs_imp_mem_address_out(0),
      O => rdn_OBUF_2366
    );
  DM_imp_Mtrien_Ram1Data_10_cmp_eq000017 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(11),
      I1 => ALU_MEM_regs_imp_mem_address_out(14),
      I2 => ALU_MEM_regs_imp_mem_address_out(12),
      I3 => ALU_MEM_regs_imp_mem_address_out(10),
      O => DM_imp_Mtrien_Ram1Data_10_cmp_eq000017_393
    );
  DM_imp_Mtrien_Ram1Data_10_cmp_eq0000112 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(13),
      I1 => ALU_MEM_regs_imp_mem_address_out(15),
      I2 => ALU_MEM_regs_imp_mem_address_out(1),
      O => DM_imp_Mtrien_Ram1Data_10_cmp_eq0000112_391
    );
  DM_imp_Mtrien_Ram1Data_10_cmp_eq0000129 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(6),
      I1 => ALU_MEM_regs_imp_mem_address_out(7),
      I2 => ALU_MEM_regs_imp_mem_address_out(9),
      I3 => ALU_MEM_regs_imp_mem_address_out(8),
      O => DM_imp_Mtrien_Ram1Data_10_cmp_eq0000129_392
    );
  DM_imp_Mtrien_Ram1Data_10_cmp_eq0000155 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => DM_imp_Mtrien_Ram1Data_10_cmp_eq000017_393,
      I1 => DM_imp_Mtrien_Ram1Data_10_cmp_eq0000112_391,
      I2 => DM_imp_Mtrien_Ram1Data_10_cmp_eq0000129_392,
      I3 => DM_imp_Mcompar_judge_cmp_gt0001_lut(0),
      O => DM_imp_DataOut_10_and0000
    );
  register_module_imp_controller_imp_branch_type1 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => register_module_imp_controller_imp_mem_write_cmp_eq0000,
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(14),
      O => branch_type_from_id_tmp
    );
  VGA_Mcount_x_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(1),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_1
    );
  VGA_Mcount_x_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(0),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_0
    );
  register_module_imp_controller_imp_wb_src_and00011 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(2),
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => IF_ID_regs_imp_instruction_out(4),
      O => register_module_imp_controller_imp_wb_src_and0001
    );
  VGA_x_cmp_eq0000_SW0 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => VGA_x(8),
      I1 => VGA_x(4),
      I2 => VGA_x(0),
      I3 => VGA_x(7),
      O => N22
    );
  VGA_x_cmp_eq0000 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_N41,
      I1 => N22,
      I2 => VGA_x(9),
      I3 => VGA_N48,
      O => VGA_x_cmp_eq0000_2022
    );
  VGA_Mcount_x_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(2),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_2
    );
  VGA_Mcount_x_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(3),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_3
    );
  VGA_Mcount_x_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(4),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_4
    );
  VGA_Mcount_x_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(5),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_5
    );
  VGA_Mcount_x_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(6),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_6
    );
  VGA_Mcount_x_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(7),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_7
    );
  VGA_Mcount_x_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(8),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_8
    );
  VGA_Mcount_x_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_Result(9),
      I1 => VGA_x_cmp_eq0000_2022,
      O => VGA_Mcount_x_eqn_9
    );
  register_module_imp_decoder_imp_write_back_reg_or000011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(2),
      I1 => IF_ID_regs_imp_instruction_out(3),
      I2 => IF_ID_regs_imp_instruction_out(1),
      O => register_module_imp_N64
    );
  register_module_imp_controller_imp_op_code_0_411 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(4),
      I2 => register_module_imp_N58,
      I3 => IF_ID_regs_imp_instruction_out(15),
      O => register_module_imp_N61
    );
  register_module_imp_controller_imp_mem_write2 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => register_module_imp_N23,
      I2 => register_module_imp_controller_imp_mem_write_cmp_eq0001,
      I3 => register_module_imp_controller_imp_mem_write_cmp_eq0000,
      O => mem_write_from_id_tmp
    );
  register_module_imp_controller_imp_is_jump1 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0007,
      I1 => register_module_imp_N22,
      I2 => IF_ID_regs_imp_instruction_out(0),
      I3 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      O => is_jump_from_id_tmp
    );
  VGA_bt_cmp_le00081 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => VGA_x(4),
      I1 => VGA_x(7),
      I2 => VGA_x(6),
      I3 => VGA_x(5),
      O => VGA_bt_cmp_le00081_1880
    );
  register_module_imp_controller_imp_op_code_cmp_eq00041 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(2),
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => IF_ID_regs_imp_instruction_out(3),
      I3 => IF_ID_regs_imp_instruction_out(1),
      O => register_module_imp_controller_imp_op_code_cmp_eq0004
    );
  register_module_imp_decoder_imp_write_back_reg_1_26 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(4),
      I1 => IF_ID_regs_imp_instruction_out(1),
      I2 => IF_ID_regs_imp_instruction_out(3),
      O => register_module_imp_decoder_imp_write_back_reg_1_26_2467
    );
  register_module_imp_decoder_imp_write_back_reg_1_229 : LUT4
    generic map(
      INIT => X"AFDC"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(1),
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => IF_ID_regs_imp_instruction_out(3),
      I3 => IF_ID_regs_imp_instruction_out(2),
      O => register_module_imp_decoder_imp_write_back_reg_1_229_2466
    );
  DM_imp_judge_and000047 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(15),
      I1 => DM_imp_judge_and000039_443,
      O => DM_imp_judge
    );
  instruction_fetch_module_imp_pc_in_mux0004_9_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(9),
      I2 => ID_forward_IF_regs_imp_branch_target_out(9),
      I3 => N111,
      O => N28
    );
  instruction_fetch_module_imp_pc_in_mux0004_9_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N28,
      I1 => instruction_fetch_module_imp_pc_in_share0000(9),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(9)
    );
  instruction_fetch_module_imp_pc_in_mux0004_8_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(8),
      I2 => ID_forward_IF_regs_imp_branch_target_out(8),
      I3 => N111,
      O => N30
    );
  instruction_fetch_module_imp_pc_in_mux0004_8_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N30,
      I1 => instruction_fetch_module_imp_pc_in_share0000(8),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(8)
    );
  instruction_fetch_module_imp_pc_in_mux0004_7_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(7),
      I2 => ID_forward_IF_regs_imp_branch_target_out(7),
      I3 => N111,
      O => N32
    );
  instruction_fetch_module_imp_pc_in_mux0004_7_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N32,
      I1 => instruction_fetch_module_imp_pc_in_share0000(7),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(7)
    );
  instruction_fetch_module_imp_pc_in_mux0004_6_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(6),
      I2 => ID_forward_IF_regs_imp_branch_target_out(6),
      I3 => N111,
      O => N34
    );
  instruction_fetch_module_imp_pc_in_mux0004_6_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N34,
      I1 => instruction_fetch_module_imp_pc_in_share0000(6),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(6)
    );
  instruction_fetch_module_imp_pc_in_mux0004_5_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(5),
      I2 => ID_forward_IF_regs_imp_branch_target_out(5),
      I3 => N111,
      O => N36
    );
  instruction_fetch_module_imp_pc_in_mux0004_5_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N36,
      I1 => instruction_fetch_module_imp_pc_in_share0000(5),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(5)
    );
  instruction_fetch_module_imp_pc_in_mux0004_4_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(4),
      I2 => ID_forward_IF_regs_imp_branch_target_out(4),
      I3 => N111,
      O => N38
    );
  instruction_fetch_module_imp_pc_in_mux0004_4_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N38,
      I1 => instruction_fetch_module_imp_pc_in_share0000(4),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(4)
    );
  instruction_fetch_module_imp_pc_in_mux0004_3_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(3),
      I2 => ID_forward_IF_regs_imp_branch_target_out(3),
      I3 => N111,
      O => N40
    );
  instruction_fetch_module_imp_pc_in_mux0004_3_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N40,
      I1 => instruction_fetch_module_imp_pc_in_share0000(3),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(3)
    );
  instruction_fetch_module_imp_pc_in_mux0004_2_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(2),
      I2 => ID_forward_IF_regs_imp_branch_target_out(2),
      I3 => N111,
      O => N42
    );
  instruction_fetch_module_imp_pc_in_mux0004_2_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N42,
      I1 => instruction_fetch_module_imp_pc_in_share0000(2),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(2)
    );
  instruction_fetch_module_imp_pc_in_mux0004_1_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(1),
      I2 => ID_forward_IF_regs_imp_branch_target_out(1),
      I3 => N111,
      O => N44
    );
  instruction_fetch_module_imp_pc_in_mux0004_1_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N44,
      I1 => instruction_fetch_module_imp_pc_in_share0000(1),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(1)
    );
  instruction_fetch_module_imp_pc_in_mux0004_15_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(15),
      I2 => ID_forward_IF_regs_imp_branch_target_out(15),
      I3 => N111,
      O => N46
    );
  instruction_fetch_module_imp_pc_in_mux0004_15_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N46,
      I1 => instruction_fetch_module_imp_pc_in_share0000(15),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(15)
    );
  instruction_fetch_module_imp_pc_in_mux0004_14_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(14),
      I2 => ID_forward_IF_regs_imp_branch_target_out(14),
      I3 => N111,
      O => N48
    );
  instruction_fetch_module_imp_pc_in_mux0004_14_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N48,
      I1 => instruction_fetch_module_imp_pc_in_share0000(14),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(14)
    );
  instruction_fetch_module_imp_pc_in_mux0004_13_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(13),
      I2 => ID_forward_IF_regs_imp_branch_target_out(13),
      I3 => N111,
      O => N50
    );
  instruction_fetch_module_imp_pc_in_mux0004_13_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N50,
      I1 => instruction_fetch_module_imp_pc_in_share0000(13),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(13)
    );
  instruction_fetch_module_imp_pc_in_mux0004_12_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(12),
      I2 => ID_forward_IF_regs_imp_branch_target_out(12),
      I3 => N111,
      O => N52
    );
  instruction_fetch_module_imp_pc_in_mux0004_12_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N52,
      I1 => instruction_fetch_module_imp_pc_in_share0000(12),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(12)
    );
  instruction_fetch_module_imp_pc_in_mux0004_11_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(11),
      I2 => ID_forward_IF_regs_imp_branch_target_out(11),
      I3 => N111,
      O => N54
    );
  instruction_fetch_module_imp_pc_in_mux0004_11_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N54,
      I1 => instruction_fetch_module_imp_pc_in_share0000(11),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(11)
    );
  instruction_fetch_module_imp_pc_in_mux0004_10_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(10),
      I2 => ID_forward_IF_regs_imp_branch_target_out(10),
      I3 => N111,
      O => N56
    );
  instruction_fetch_module_imp_pc_in_mux0004_10_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N56,
      I1 => instruction_fetch_module_imp_pc_in_share0000(10),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(10)
    );
  instruction_fetch_module_imp_pc_in_mux0004_0_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_jump_target_out(0),
      I2 => ID_forward_IF_regs_imp_branch_target_out(0),
      I3 => N111,
      O => N58
    );
  instruction_fetch_module_imp_pc_in_mux0004_0_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N58,
      I1 => instruction_fetch_module_imp_pc_in_share0000(0),
      I2 => N19,
      O => instruction_fetch_module_imp_pc_in_mux0004(0)
    );
  VGA_bt_cmp_ge00092 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => N1509,
      I1 => VGA_bt_cmp_ge00091_1870,
      I2 => VGA_x(4),
      I3 => VGA_x(5),
      O => VGA_bt_cmp_ge0009
    );
  register_module_imp_controller_imp_operand2_src_or000020 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I1 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I2 => N1708,
      O => register_module_imp_operand2_src_tmp(1)
    );
  register_module_imp_controller_imp_operand2_src_0_24 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => register_module_imp_controller_imp_operand2_src_0_24_2437
    );
  register_module_imp_controller_imp_operand2_src_0_65 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(2),
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => IF_ID_regs_imp_instruction_out(1),
      O => register_module_imp_controller_imp_operand2_src_0_65_2439
    );
  instruction_fetch_module_imp_pc_in_cmp_eq0000112 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(2),
      I1 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(3),
      I2 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(5),
      I3 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(4),
      O => instruction_fetch_module_imp_pc_in_cmp_eq0000112_2184
    );
  instruction_fetch_module_imp_pc_in_cmp_eq0000125 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(6),
      I1 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(7),
      I2 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(8),
      I3 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(10),
      O => instruction_fetch_module_imp_pc_in_cmp_eq0000125_2185
    );
  instruction_fetch_module_imp_pc_in_cmp_eq0000149 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(9),
      I1 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(11),
      I2 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(12),
      I3 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(13),
      O => instruction_fetch_module_imp_pc_in_cmp_eq0000149_2186
    );
  instruction_fetch_module_imp_pc_in_cmp_eq0000158 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(15),
      I1 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(14),
      I2 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(1),
      O => instruction_fetch_module_imp_pc_in_cmp_eq0000158_2187
    );
  instruction_fetch_module_imp_pc_in_cmp_eq0000171 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in_cmp_eq0000112_2184,
      I1 => instruction_fetch_module_imp_pc_in_cmp_eq0000125_2185,
      I2 => instruction_fetch_module_imp_pc_in_cmp_eq0000149_2186,
      I3 => instruction_fetch_module_imp_pc_in_cmp_eq0000158_2187,
      O => N15
    );
  register_module_imp_registers_imp_t_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N36,
      I1 => MEM_WB_regs_imp_write_back_reg_out(1),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_t_not0001
    );
  register_module_imp_registers_imp_sp_not00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N1512,
      I1 => MEM_WB_regs_imp_write_back_reg_out(1),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_sp_not0001
    );
  register_module_imp_registers_imp_regs_7_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N1510,
      I1 => MEM_WB_regs_imp_write_back_reg_out(2),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_regs_7_and0000
    );
  register_module_imp_registers_imp_regs_6_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N37,
      I1 => MEM_WB_regs_imp_write_back_reg_out(2),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_regs_6_and0000
    );
  register_module_imp_registers_imp_regs_5_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N1511,
      I1 => MEM_WB_regs_imp_write_back_reg_out(2),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_regs_5_and0000
    );
  register_module_imp_registers_imp_regs_4_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N38,
      I1 => MEM_WB_regs_imp_write_back_reg_out(2),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_regs_4_and0000
    );
  register_module_imp_registers_imp_regs_3_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_reg_out(0),
      I1 => register_module_imp_registers_imp_N37,
      I2 => MEM_WB_regs_imp_write_back_reg_out(2),
      O => register_module_imp_registers_imp_regs_3_and0000
    );
  register_module_imp_registers_imp_regs_2_and00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => register_module_imp_registers_imp_N37,
      I1 => MEM_WB_regs_imp_write_back_reg_out(2),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_regs_2_and0000
    );
  register_module_imp_registers_imp_regs_1_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_reg_out(0),
      I1 => register_module_imp_registers_imp_N38,
      I2 => MEM_WB_regs_imp_write_back_reg_out(2),
      O => register_module_imp_registers_imp_regs_1_and0000
    );
  register_module_imp_registers_imp_regs_0_and00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => register_module_imp_registers_imp_N38,
      I1 => MEM_WB_regs_imp_write_back_reg_out(2),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_regs_0_and0000
    );
  register_module_imp_registers_imp_ra_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_reg_out(0),
      I1 => register_module_imp_registers_imp_N36,
      I2 => MEM_WB_regs_imp_write_back_reg_out(1),
      O => register_module_imp_registers_imp_ra_not0001
    );
  register_module_imp_registers_imp_ih_not00011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => register_module_imp_registers_imp_N36,
      I1 => MEM_WB_regs_imp_write_back_reg_out(1),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      O => register_module_imp_registers_imp_ih_not0001
    );
  VGA_bt_not0001411 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_bt_cmp_ge0009,
      I1 => VGA_bt_cmp_le0009,
      O => VGA_bt_and0133
    );
  VGA_bt_cmp_le00092 : LUT4
    generic map(
      INIT => X"3233"
    )
    port map (
      I0 => N1579,
      I1 => N60,
      I2 => VGA_N441,
      I3 => VGA_x(5),
      O => VGA_bt_cmp_le0009
    );
  VGA_bt_or000015 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => VGA_romAddr_or0000_2002,
      I1 => VGA_bt_or0002_1934,
      I2 => VGA_bt_or0006,
      I3 => N1539,
      O => VGA_bt_or000015_1932
    );
  VGA_bt_or000029 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => VGA_bt_or000015_1932,
      I1 => N1514,
      O => VGA_bt_or0000
    );
  write_back_data_from_mem_tmp_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(9),
      I2 => DM_imp_DataOut(9),
      O => write_back_data_from_mem_tmp(9)
    );
  write_back_data_from_mem_tmp_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(8),
      I2 => DM_imp_DataOut(8),
      O => write_back_data_from_mem_tmp(8)
    );
  write_back_data_from_mem_tmp_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(7),
      I2 => DM_imp_DataOut(7),
      O => write_back_data_from_mem_tmp(7)
    );
  write_back_data_from_mem_tmp_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(6),
      I2 => DM_imp_DataOut(6),
      O => write_back_data_from_mem_tmp(6)
    );
  write_back_data_from_mem_tmp_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(5),
      I2 => DM_imp_DataOut(5),
      O => write_back_data_from_mem_tmp(5)
    );
  write_back_data_from_mem_tmp_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(4),
      I2 => DM_imp_DataOut(4),
      O => write_back_data_from_mem_tmp(4)
    );
  write_back_data_from_mem_tmp_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(3),
      I2 => DM_imp_DataOut(3),
      O => write_back_data_from_mem_tmp(3)
    );
  write_back_data_from_mem_tmp_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(2),
      I2 => DM_imp_DataOut(2),
      O => write_back_data_from_mem_tmp(2)
    );
  write_back_data_from_mem_tmp_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(1),
      I2 => DM_imp_DataOut(1),
      O => write_back_data_from_mem_tmp(1)
    );
  write_back_data_from_mem_tmp_15_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(15),
      I2 => DM_imp_DataOut(15),
      O => write_back_data_from_mem_tmp(15)
    );
  write_back_data_from_mem_tmp_14_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(14),
      I2 => DM_imp_DataOut(14),
      O => write_back_data_from_mem_tmp(14)
    );
  write_back_data_from_mem_tmp_13_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(13),
      I2 => DM_imp_DataOut(13),
      O => write_back_data_from_mem_tmp(13)
    );
  write_back_data_from_mem_tmp_12_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(12),
      I2 => DM_imp_DataOut(12),
      O => write_back_data_from_mem_tmp(12)
    );
  write_back_data_from_mem_tmp_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(11),
      I2 => DM_imp_DataOut(11),
      O => write_back_data_from_mem_tmp(11)
    );
  write_back_data_from_mem_tmp_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(10),
      I2 => DM_imp_DataOut(10),
      O => write_back_data_from_mem_tmp(10)
    );
  write_back_data_from_mem_tmp_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_write_back_data_out(0),
      I2 => DM_imp_DataOut(0),
      O => write_back_data_from_mem_tmp(0)
    );
  VGA_romAddr_and000041 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => VGA_bt_cmp_le00081_1880,
      I1 => VGA_x(9),
      I2 => N1515,
      I3 => VGA_x(8),
      O => VGA_N101
    );
  VGA_Madd_romAddr_not0000_7_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => VGA_y(7),
      I1 => VGA_y(6),
      O => VGA_Madd_romAddr_not0000_7_Q
    );
  VGA_Msub_romAddr_sub0000_cy_8_11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => VGA_y(8),
      I1 => VGA_y(6),
      I2 => VGA_y(7),
      O => VGA_Msub_romAddr_sub0000_cy(8)
    );
  VGA_bt_cmp_eq00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => VGA_N46,
      I1 => VGA_x(6),
      I2 => VGA_N93,
      I3 => VGA_x(4),
      O => VGA_bt_cmp_eq0001
    );
  VGA_romAddr_and0001_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => VGA_bt_or0004,
      I1 => VGA_bt_or0008,
      I2 => VGA_romAddr_or0000_2002,
      I3 => N1537,
      O => N66
    );
  VGA_romAddr_and0001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => VGA_N25,
      I1 => N1531,
      I2 => VGA_bt_or0006,
      I3 => N66,
      O => VGA_romAddr_and0001_1979
    );
  VGA_romAddr_mux0053_4_28 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => VGA_Msub_romAddr_sub0000_cy(8),
      I1 => VGA_Madd_romAddr_addsub0000_Madd_lut(0),
      I2 => VGA_romAddr_add0001(5),
      I3 => VGA_y(5),
      O => VGA_romAddr_mux0053_4_28_1986
    );
  VGA_romAddr_mux0053_4_67 : LUT4
    generic map(
      INIT => X"9810"
    )
    port map (
      I0 => VGA_bt_and0138_1851,
      I1 => VGA_bt_or0012_1939,
      I2 => VGA_bt_and0139,
      I3 => VGA_N191,
      O => VGA_romAddr_mux0053_4_67_1988
    );
  VGA_romAddr_mux0053_4_76 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => VGA_romAddr_mux0053_4_42_1987,
      I1 => N1516,
      I2 => VGA_romAddr_mux0053_4_67_1988,
      O => VGA_romAddr_mux0053(4)
    );
  VGA_romAddr_mux0053_7_18 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => VGA_bt_or0006,
      I1 => VGA_N02,
      I2 => VGA_bt_or0008,
      I3 => VGA_bt_and0138_1851,
      O => VGA_romAddr_mux0053_7_18_1998
    );
  VGA_romAddr_mux0053_7_75 : LUT4
    generic map(
      INIT => X"7F5D"
    )
    port map (
      I0 => VGA_N101,
      I1 => VGA_bt_and0133,
      I2 => VGA_Madd_romAddr_add0002_Madd_cy(4),
      I3 => VGA_romAddr_mux0053_7_29_1999,
      O => VGA_romAddr_mux0053(7)
    );
  VGA_romAddr_mux0053_3_26 : LUT4
    generic map(
      INIT => X"AA4C"
    )
    port map (
      I0 => VGA_bt_or0012_1939,
      I1 => VGA_bt_and0139,
      I2 => VGA_bt_or0010,
      I3 => VGA_bt_and0138_1851,
      O => VGA_romAddr_mux0053_3_26_1983
    );
  VGA_romAddr_mux0053_3_48 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => VGA_bt_and0133,
      I1 => VGA_Msub_romAddr_sub0000_cy(8),
      I2 => VGA_y(4),
      I3 => VGA_Madd_romAddr_addsub0000_Madd_lut(0),
      O => VGA_romAddr_mux0053_3_48_1984
    );
  VGA_romAddr_mux0053_3_65 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => VGA_N101,
      I1 => VGA_romAddr_mux0053_3_48_1984,
      I2 => VGA_N38,
      I3 => VGA_romAddr_mux0053_3_26_1983,
      O => VGA_romAddr_mux0053(3)
    );
  VGA_romAddr_mux0053_5_97 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_N101,
      I1 => VGA_romAddr_mux0053_5_85_1991,
      O => VGA_romAddr_mux0053(5)
    );
  VGA_romAddr_mux0053_6_43 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => VGA_romAddr_add0001(5),
      I1 => VGA_romAddr_add0001(7),
      I2 => VGA_Madd_romAddr_addsub0000_Madd_lut(0),
      I3 => VGA_romAddr_add0001(6),
      O => VGA_romAddr_mux0053_6_43_1995
    );
  VGA_romAddr_mux0053_6_97 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_bt_or0010,
      I1 => VGA_bt_or0006,
      O => VGA_romAddr_mux0053_6_97_1996
    );
  VGA_romAddr_mux0053_6_142 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_N101,
      I1 => VGA_romAddr_mux0053_6_131_1994,
      O => VGA_romAddr_mux0053(6)
    );
  VGA_Madd_romAddr_add0002_Madd_lut_6_1 : LUT4
    generic map(
      INIT => X"3233"
    )
    port map (
      I0 => VGA_romAddr_add0001(8),
      I1 => VGA_Msub_romAddr_sub0000_cy(8),
      I2 => VGA_romAddr_add0001(9),
      I3 => VGA_Madd_romAddr_addsub0000_Madd_cy(3),
      O => VGA_Madd_romAddr_add0002_Madd_lut(6)
    );
  VGA_romAddr_mux0000_5_1 : LUT4
    generic map(
      INIT => X"0541"
    )
    port map (
      I0 => VGA_Msub_romAddr_sub0000_cy(8),
      I1 => VGA_Madd_romAddr_addsub0000_Madd_cy(3),
      I2 => VGA_romAddr_add0001(9),
      I3 => VGA_romAddr_add0001(8),
      O => VGA_romAddr_mux0000(5)
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_1_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_N13,
      I1 => IF_ID_regs_imp_instruction_out(7),
      I2 => register_module_imp_controller_imp_operand1_src_cmp_eq0002,
      I3 => IF_ID_regs_imp_instruction_out(4),
      O => N74
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_1_Q : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(10),
      I1 => register_module_imp_N2,
      I2 => N74,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_write_back_reg_out_mux0001(1)
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_0_SW0 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => register_module_imp_controller_imp_op_code_cmp_eq0004,
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0007,
      I2 => IF_ID_regs_imp_instruction_out(4),
      I3 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      O => N76
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_0_Q : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(0),
      I1 => register_module_imp_controller_imp_reg_write_enable_cmp_eq0001,
      I2 => N76,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_write_back_reg_out_mux0001(0)
    );
  ID_ALU_regs_imp_op_code_out_mux0001_1_22 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => ID_ALU_regs_imp_op_code_out_mux0001_1_10_482,
      I2 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_op_code_out_mux0001(1)
    );
  VGA_bt_and013418 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_x(6),
      I2 => VGA_x(9),
      I3 => VGA_x(8),
      O => VGA_bt_and013418_1848
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_3_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0002,
      I1 => IF_ID_regs_imp_instruction_out(2),
      O => ID_ALU_regs_imp_write_back_reg_out_mux0001_3_0_632
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_3_6 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I1 => ID_ALU_regs_imp_write_back_reg_out_mux0001_3_0_632,
      I2 => IF_ID_regs_imp_instruction_out(5),
      I3 => register_module_imp_N13,
      O => ID_ALU_regs_imp_write_back_reg_out_mux0001_3_6_633
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_3_19 : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(8),
      I1 => register_module_imp_N2,
      I2 => ID_ALU_regs_imp_write_back_reg_out_mux0001_3_6_633,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_write_back_reg_out_mux0001(3)
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_1_18 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(1),
      I2 => register_module_imp_controller_imp_wb_src_and0001,
      I3 => IF_ID_regs_imp_instruction_out(11),
      O => ID_ALU_regs_imp_wb_src_out_mux0001_1_18_617
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_1_29 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out_mux0001_1_5_618,
      I1 => ID_ALU_regs_imp_wb_src_out_mux0001_1_18_617,
      I2 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_wb_src_out_mux0001(1)
    );
  ID_ALU_regs_imp_op_code_out_mux0001_2_26 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => ID_ALU_regs_imp_op_code_out_mux0001_2_12_484,
      I2 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_op_code_out_mux0001(2)
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_2_13 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => register_module_imp_controller_imp_wb_src_and0001,
      I1 => IF_ID_regs_imp_instruction_out(1),
      I2 => IF_ID_regs_imp_instruction_out(3),
      O => ID_ALU_regs_imp_wb_src_out_mux0001_2_13_620
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_2_42 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out_mux0001_2_27_621,
      I1 => ID_ALU_regs_imp_wb_src_out_mux0001_2_13_620,
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_wb_src_out_mux0001(2)
    );
  ID_ALU_regs_imp_op_code_out_mux0001_3_5 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_N61,
      I1 => register_module_imp_controller_imp_op_code_cmp_eq0004,
      I2 => IF_ID_regs_imp_instruction_out(0),
      I3 => register_module_imp_N64,
      O => ID_ALU_regs_imp_op_code_out_mux0001_3_5_487
    );
  ID_ALU_regs_imp_op_code_out_mux0001_3_48 : LUT4
    generic map(
      INIT => X"00A8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => ID_ALU_regs_imp_op_code_out_mux0001_3_17_486,
      I2 => ID_ALU_regs_imp_op_code_out_mux0001_3_5_487,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_op_code_out_mux0001(3)
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_0_78 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out_mux0001_0_8_615,
      I1 => ID_ALU_regs_imp_wb_src_out_mux0001_0_59,
      I2 => ID_ALU_regs_imp_wb_src_out_mux0001_0_23_611,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_wb_src_out_mux0001(0)
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_2_21 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I1 => ID_ALU_regs_imp_write_back_reg_out_mux0001_2_9_630,
      I2 => IF_ID_regs_imp_instruction_out(6),
      I3 => register_module_imp_N13,
      O => ID_ALU_regs_imp_write_back_reg_out_mux0001_2_21_629
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_2_42 : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => register_module_imp_N2,
      I2 => ID_ALU_regs_imp_write_back_reg_out_mux0001_2_21_629,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_write_back_reg_out_mux0001(2)
    );
  ID_ALU_regs_imp_reg_write_enable_out_mux000110 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => register_module_imp_N23,
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => N1524,
      O => ID_ALU_regs_imp_reg_write_enable_out_mux000110_570
    );
  ID_ALU_regs_imp_reg_write_enable_out_mux000116 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => register_module_imp_N22,
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0007,
      I2 => IF_ID_regs_imp_instruction_out(0),
      O => ID_ALU_regs_imp_reg_write_enable_out_mux000116_571
    );
  ID_ALU_regs_imp_reg_write_enable_out_mux000165 : LUT3
    generic map(
      INIT => X"18"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(10),
      O => ID_ALU_regs_imp_reg_write_enable_out_mux000165_573
    );
  ID_ALU_regs_imp_reg_write_enable_out_mux000177 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_mux000139_572,
      I2 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I3 => ID_ALU_regs_imp_reg_write_enable_out_mux000165_573,
      O => ID_ALU_regs_imp_reg_write_enable_out_mux000177_574
    );
  register_module_imp_decoder_imp_immediate_3_21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I1 => register_module_imp_decoder_imp_immediate_or0002_2451,
      O => register_module_imp_N14
    );
  register_module_imp_decoder_imp_immediate_0_1 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(2),
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => register_module_imp_N14,
      I3 => N1525,
      O => immediate_from_id_tmp(0)
    );
  VGA_SF282 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => VGA_bt_cmp_ge0011,
      I1 => VGA_x(9),
      I2 => VGA_x(8),
      I3 => N1519,
      O => VGA_N83
    );
  VGA_Madd_romAddr_addsub0000_Madd_cy_3_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => VGA_romAddr_add0001(6),
      I1 => VGA_romAddr_add0001(7),
      I2 => VGA_Madd_romAddr_addsub0000_Madd_lut(0),
      I3 => VGA_romAddr_add0001(5),
      O => VGA_Madd_romAddr_addsub0000_Madd_cy(3)
    );
  VGA_romAddr_mux0000_4_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => VGA_y(8),
      I1 => VGA_y(7),
      I2 => VGA_y(6),
      O => N83
    );
  VGA_romAddr_mux0000_4_Q : LUT4
    generic map(
      INIT => X"FF21"
    )
    port map (
      I0 => VGA_romAddr_add0001(8),
      I1 => VGA_Msub_romAddr_sub0000_cy(8),
      I2 => VGA_Madd_romAddr_addsub0000_Madd_cy(3),
      I3 => N83,
      O => VGA_Madd_romAddr_add0002_Madd_cy(4)
    );
  VGA_romAddr_mux0053_9_SW0 : LUT4
    generic map(
      INIT => X"C9FF"
    )
    port map (
      I0 => VGA_Madd_romAddr_add0002_Madd_cy(4),
      I1 => VGA_Madd_romAddr_add0002_Madd_lut(6),
      I2 => VGA_romAddr_mux0000(5),
      I3 => VGA_bt_and0133,
      O => N85
    );
  VGA_romAddr_mux0053_9_Q : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => VGA_N101,
      I1 => N85,
      I2 => VGA_N12,
      I3 => VGA_N38,
      O => VGA_romAddr_mux0053(9)
    );
  register_module_imp_decoder_imp_immediate_6_1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => register_module_imp_N12,
      I1 => IF_ID_regs_imp_instruction_out(6),
      I2 => N1522,
      O => immediate_from_id_tmp(6)
    );
  ID_ALU_regs_imp_mem_read_out_mux00011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => register_module_imp_N23,
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_mem_read_out_mux0001
    );
  ID_ALU_regs_imp_mem_enable_out_mux00011 : LUT4
    generic map(
      INIT => X"00F4"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => register_module_imp_N23,
      I2 => mem_write_from_id_tmp,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_mem_enable_out_mux0001
    );
  VGA_SF2727 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(7),
      I2 => VGA_x(9),
      I3 => VGA_x(8),
      O => VGA_SF2727_1843
    );
  VGA_SF27212 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => VGA_x(2),
      I1 => VGA_x(1),
      I2 => VGA_x(4),
      I3 => VGA_x(3),
      O => VGA_SF27212_1840
    );
  VGA_SF27243 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => VGA_x(4),
      I1 => VGA_SF27233_1841,
      I2 => VGA_x(2),
      I3 => VGA_x(3),
      O => VGA_SF27243_1842
    );
  register_module_imp_decoder_imp_immediate_4_6 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N1548,
      I1 => register_module_imp_N58,
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => register_module_imp_N23,
      O => register_module_imp_decoder_imp_immediate_4_6_2449
    );
  VGA_bt_cmp_eq00022 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_x(3),
      I1 => N1591,
      I2 => VGA_x(1),
      I3 => VGA_x(7),
      O => VGA_bt_cmp_eq0002
    );
  UAL_hazard_detector_imp_stall26 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(3),
      I1 => ID_ALU_regs_imp_write_back_reg_out(2),
      I2 => read_reg_1_from_id(3),
      I3 => read_reg_1_from_id(2),
      O => UAL_hazard_detector_imp_stall26_1687
    );
  UAL_hazard_detector_imp_stall93 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(0),
      I1 => ID_ALU_regs_imp_write_back_reg_out(3),
      I2 => read_reg_2_from_id(3),
      I3 => read_reg_2_from_id(0),
      O => UAL_hazard_detector_imp_stall93_1689
    );
  UAL_hazard_detector_imp_stall120 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(1),
      I1 => ID_ALU_regs_imp_write_back_reg_out(2),
      I2 => read_reg_2_from_id(2),
      I3 => read_reg_2_from_id(1),
      O => UAL_hazard_detector_imp_stall120_1685
    );
  register_module_imp_immediate_tmp_10_1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(10),
      I1 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I2 => N1529,
      O => immediate_from_id_tmp(10)
    );
  register_module_imp_decoder_imp_immediate_5_2_SW0 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => register_module_imp_N23,
      I2 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I3 => N1704,
      O => N97
    );
  register_module_imp_decoder_imp_immediate_5_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N1639,
      I1 => IF_ID_regs_imp_instruction_out(3),
      I2 => IF_ID_regs_imp_instruction_out(4),
      I3 => N97,
      O => register_module_imp_N12
    );
  VGA_bt_cmp_le0014111 : LUT4
    generic map(
      INIT => X"F5D5"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_N49,
      I2 => VGA_N48,
      I3 => N1578,
      O => VGA_N62
    );
  VGA_romAddr_or0000 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => VGA_y(7),
      I1 => VGA_y(4),
      I2 => VGA_y(5),
      I3 => N1536,
      O => VGA_romAddr_or0000_2002
    );
  register_module_imp_registers_imp_read_data2_0_221 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => read_reg_2_from_id(1),
      I1 => read_reg_2_from_id(0),
      O => register_module_imp_registers_imp_N44
    );
  VGA_bt_mux0000_0_1131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_N1011,
      I1 => VGA_bt_and0135_1849,
      O => VGA_N95
    );
  VGA_bt_cmp_eq000021 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_x(3),
      I2 => N1655,
      I3 => VGA_x(5),
      O => VGA_N46
    );
  VGA_SF5822 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N109,
      I1 => VGA_bt_or0006,
      I2 => VGA_N25,
      I3 => VGA_bt_or0008,
      O => VGA_N911
    );
  register_module_imp_decoder_imp_read_reg_2_or000011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => IF_ID_regs_imp_instruction_out(10),
      I2 => IF_ID_regs_imp_instruction_out(8),
      O => register_module_imp_controller_imp_mem_write_cmp_eq0001
    );
  VGA_bt_and0135 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_x(9),
      I1 => N1684,
      I2 => VGA_x(8),
      I3 => N78,
      O => VGA_bt_and0135_1849
    );
  VGA_bt_mux0000_0_1312 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => VGA_N210,
      I1 => VGA_N94,
      I2 => VGA_bt_and0140,
      I3 => N1543,
      O => VGA_bt_mux0000_0_1312_1885
    );
  VGA_bt_mux0000_0_1313 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N1523,
      I1 => VGA_romData_mux0000,
      O => VGA_bt_mux0000_0_1313_1886
    );
  VGA_bt_mux0000_0_1333 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => VGA_N210,
      I1 => VGA_bt_and0135_1849,
      I2 => VGA_bt_mux0000_0_1324_1887,
      I3 => VGA_bt_cmp_ge0019,
      O => VGA_bt_mux0000_0_1333_1888
    );
  VGA_bt_mux0000_1_18 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => VGA_bt_or0002_1934,
      I1 => VGA_romAddr_or0000_2002,
      I2 => VGA_bt_or0008,
      I3 => VGA_N25,
      O => VGA_bt_mux0000_1_18_1896
    );
  VGA_bt_mux0000_1_19 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_bt_and0134,
      I1 => VGA_romData_mux0002,
      O => VGA_bt_mux0000_1_174
    );
  VGA_bt_mux0000_1_25 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => N1534,
      I1 => VGA_N95,
      I2 => VGA_bt_and0137,
      I3 => VGA_romData_mux0003,
      O => VGA_bt_mux0000_1_25_1902
    );
  VGA_bt_mux0000_1_73 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_bt_and0137,
      I1 => VGA_romData_mux0002,
      I2 => VGA_N210,
      I3 => N1673,
      O => VGA_bt_mux0000_1_73_1907
    );
  VGA_bt_mux0000_1_178 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => N1527,
      I1 => VGA_bt_and0137,
      O => VGA_bt_mux0000_1_178_1895
    );
  VGA_bt_mux0000_1_190 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => VGA_N64,
      I1 => VGA_bt_and0134,
      I2 => VGA_bt_mux0000_1_178_1895,
      I3 => N1540,
      O => VGA_bt_mux0000_1_190_1897
    );
  VGA_bt_mux0000_1_355 : LUT4
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => VGA_bt_mux0000_1_352_1905,
      I1 => VGA_N101,
      I2 => VGA_bt_mux0000_1_2_1898,
      I3 => VGA_bt_mux0000_1_314_1904,
      O => VGA_bt_mux0000(1)
    );
  VGA_bt_cmp_eq00062 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_x(1),
      I1 => VGA_x(3),
      I2 => N1701,
      I3 => VGA_x(2),
      O => VGA_bt_cmp_eq0006
    );
  register_module_imp_registers_imp_read_data1_0_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => read_reg_1_from_id(1),
      I1 => read_reg_1_from_id(0),
      O => register_module_imp_registers_imp_N41
    );
  register_module_imp_controller_imp_wb_src_cmp_eq00091 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_controller_imp_wb_src_cmp_eq0009
    );
  register_module_imp_registers_imp_read_data1_0_221 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => register_module_imp_decoder_imp_read_reg_1_1_391,
      I1 => N1660,
      O => register_module_imp_registers_imp_N45
    );
  VGA_bt_cmp_ge00152_SW0 : LUT4
    generic map(
      INIT => X"EEFE"
    )
    port map (
      I0 => VGA_x(9),
      I1 => VGA_x(8),
      I2 => VGA_x(7),
      I3 => N1541,
      O => N119
    );
  register_module_imp_controller_imp_operand2_src_cmp_eq00021 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_11_2_691,
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => N1556,
      O => register_module_imp_controller_imp_operand2_src_cmp_eq0002
    );
  register_module_imp_jump_target_out_1_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(1),
      I2 => branch_relative_reg_data_from_id_tmp(1),
      O => jump_target_from_id_tmp(1)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_14_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => N1664,
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(1),
      O => ID_ALU_regs_imp_operand1_out_mux0001(14)
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb_and000049 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_enable_out_765,
      I1 => MEM_WB_regs_imp_write_back_reg_out(3),
      I2 => N1662,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb_and000049_1684
    );
  register_module_imp_jump_target_out_2_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(2),
      I2 => branch_relative_reg_data_from_id_tmp(2),
      O => jump_target_from_id_tmp(2)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_13_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(2),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(2),
      O => ID_ALU_regs_imp_operand1_out_mux0001(13)
    );
  register_module_imp_jump_target_out_3_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(3),
      I2 => branch_relative_reg_data_from_id_tmp(3),
      O => jump_target_from_id_tmp(3)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_12_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => N1665,
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(3),
      O => ID_ALU_regs_imp_operand1_out_mux0001(12)
    );
  register_module_imp_jump_target_out_4_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(4),
      I2 => branch_relative_reg_data_from_id_tmp(4),
      O => jump_target_from_id_tmp(4)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_11_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => N1666,
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(4),
      O => ID_ALU_regs_imp_operand1_out_mux0001(11)
    );
  register_module_imp_jump_target_out_5_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(5),
      I2 => branch_relative_reg_data_from_id_tmp(5),
      O => jump_target_from_id_tmp(5)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_10_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(5),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(5),
      O => ID_ALU_regs_imp_operand1_out_mux0001(10)
    );
  register_module_imp_jump_target_out_6_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(6),
      I2 => branch_relative_reg_data_from_id_tmp(6),
      O => jump_target_from_id_tmp(6)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_9_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => N1667,
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(6),
      O => ID_ALU_regs_imp_operand1_out_mux0001(9)
    );
  register_module_imp_jump_target_out_7_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(7),
      I2 => branch_relative_reg_data_from_id_tmp(7),
      O => jump_target_from_id_tmp(7)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_8_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(7),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(7),
      O => ID_ALU_regs_imp_operand1_out_mux0001(8)
    );
  register_module_imp_jump_target_out_8_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(8),
      I2 => branch_relative_reg_data_from_id_tmp(8),
      O => jump_target_from_id_tmp(8)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_7_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => N1695,
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(8),
      O => ID_ALU_regs_imp_operand1_out_mux0001(7)
    );
  register_module_imp_jump_target_out_9_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(9),
      I2 => branch_relative_reg_data_from_id_tmp(9),
      O => jump_target_from_id_tmp(9)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_6_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(9),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(9),
      O => ID_ALU_regs_imp_operand1_out_mux0001(6)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_5_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(10),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(10),
      O => ID_ALU_regs_imp_operand1_out_mux0001(5)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_4_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(11),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(11),
      O => ID_ALU_regs_imp_operand1_out_mux0001(4)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_3_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(12),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(12),
      O => ID_ALU_regs_imp_operand1_out_mux0001(3)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_2_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(13),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(13),
      O => ID_ALU_regs_imp_operand1_out_mux0001(2)
    );
  VGA_bt_cmp_eq000711 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => VGA_x(1),
      I1 => VGA_x(2),
      O => VGA_N49
    );
  ID_ALU_regs_imp_operand1_out_mux0001_1_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => register_module_imp_read_data2_tmp(14),
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(14),
      O => ID_ALU_regs_imp_operand1_out_mux0001(1)
    );
  register_module_imp_controller_imp_operand2_src_cmp_eq00031 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_N23,
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => IF_ID_regs_imp_instruction_out(11),
      O => register_module_imp_controller_imp_operand2_src_cmp_eq0003
    );
  register_module_imp_decoder_imp_read_reg_1_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(7),
      I1 => register_module_imp_N6,
      I2 => IF_ID_regs_imp_instruction_out(10),
      I3 => register_module_imp_N15,
      O => read_reg_1_from_id(2)
    );
  register_module_imp_controller_imp_operand1_src_cmp_eq00071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => register_module_imp_N58,
      O => register_module_imp_controller_imp_operand1_src_cmp_eq0007
    );
  register_module_imp_decoder_imp_read_reg_1_0_1 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand2_src_cmp_eq0002,
      I1 => N125,
      I2 => register_module_imp_controller_imp_wb_src_cmp_eq0009,
      I3 => N1636,
      O => register_module_imp_N6
    );
  register_module_imp_controller_imp_is_jump_cmp_eq00011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(1),
      I1 => IF_ID_regs_imp_instruction_out(7),
      I2 => IF_ID_regs_imp_instruction_out(6),
      I3 => N127,
      O => register_module_imp_N22
    );
  register_module_imp_decoder_imp_read_reg_1_3_5 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(10),
      I1 => IF_ID_regs_imp_instruction_out(9),
      I2 => IF_ID_regs_imp_instruction_out(8),
      O => register_module_imp_decoder_imp_read_reg_1_3_5_2458
    );
  register_module_imp_decoder_imp_read_reg_1_3_16 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(0),
      I1 => N1549,
      I2 => register_module_imp_N22,
      O => register_module_imp_decoder_imp_read_reg_1_3_16_2457
    );
  VGA_bt_cmp_ge0018111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_x(4),
      O => VGA_N43
    );
  VGA_bt_cmp_le00161 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => N1590,
      I1 => N129,
      I2 => VGA_x(6),
      I3 => VGA_x(7),
      O => VGA_bt_cmp_le0016
    );
  VGA_bt_cmp_ge00162_SW0 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(4),
      I2 => VGA_x(5),
      I3 => VGA_bt_cmp_ge00131_1874,
      O => N131
    );
  VGA_romAddr_and0000125 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_x(9),
      I2 => VGA_x(8),
      O => VGA_romAddr_and0000125_1963
    );
  VGA_romAddr_and00001212 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_x(4),
      I2 => VGA_x(5),
      I3 => VGA_romAddr_and0000127_1964,
      O => VGA_romAddr_and00001212_1961
    );
  VGA_romAddr_and00001268 : LUT4
    generic map(
      INIT => X"FEDC"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_romAddr_and0000125_1963,
      I2 => VGA_romAddr_and00001248_1962,
      I3 => VGA_romAddr_and00001212_1961,
      O => VGA_N210
    );
  write_back_data_from_alu_tmp_1_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_1_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_1_111_3082
    );
  write_back_data_from_alu_tmp_1_26 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(1),
      O => write_back_data_from_alu_tmp_1_26_3083
    );
  write_back_data_from_alu_tmp_1_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_1_111_3082,
      I2 => N1553,
      I3 => write_back_data_from_alu_tmp_1_26_3083,
      O => write_back_data_from_alu_tmp(1)
    );
  register_module_imp_controller_imp_operand1_src_cmp_eq00051 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(15),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => N1554,
      O => register_module_imp_controller_imp_operand1_src_cmp_eq0005
    );
  register_module_imp_controller_imp_operand1_src_cmp_eq00021 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => register_module_imp_N58,
      O => register_module_imp_controller_imp_operand1_src_cmp_eq0002
    );
  ALU_imp_Sh141 : LUT4
    generic map(
      INIT => X"CCCA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(14),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh14
    );
  register_module_imp_decoder_imp_read_reg_1_0_21 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_decoder_imp_read_reg_1_0_2
    );
  register_module_imp_decoder_imp_read_reg_1_1_12 : LUT3
    generic map(
      INIT => X"ED"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_decoder_imp_read_reg_1_1_12_2454
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000060 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => N1709,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu
    );
  register_module_imp_registers_imp_read_data1_1_61 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_1_46_2803,
      I2 => register_module_imp_registers_imp_read_data1_1_17_2801,
      I3 => register_module_imp_registers_imp_read_data1_1_3_2802,
      O => branch_relative_reg_data_from_id_tmp(1)
    );
  write_back_data_from_alu_tmp_2_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(2),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_2_5_3086
    );
  register_module_imp_registers_imp_read_data2_2_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N44,
      I1 => register_module_imp_registers_imp_t(2),
      I2 => register_module_imp_registers_imp_ih(2),
      I3 => register_module_imp_registers_imp_N47,
      O => register_module_imp_registers_imp_read_data2_2_9_2860
    );
  register_module_imp_registers_imp_read_data1_2_61 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_2_46_2807,
      I2 => register_module_imp_registers_imp_read_data1_2_17_2805,
      I3 => register_module_imp_registers_imp_read_data1_2_3_2806,
      O => branch_relative_reg_data_from_id_tmp(2)
    );
  write_back_data_from_alu_tmp_3_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(3),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_3_5_3090
    );
  write_back_data_from_alu_tmp_3_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_3_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_3_111_3088
    );
  write_back_data_from_alu_tmp_3_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_3_111_3088,
      I2 => write_back_data_from_alu_tmp_3_5_3090,
      I3 => N1678,
      O => write_back_data_from_alu_tmp(3)
    );
  register_module_imp_registers_imp_read_data1_3_46 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => write_back_data_from_alu_tmp(3),
      I1 => register_module_imp_registers_imp_read_data1_3_37_2812,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      I3 => register_module_imp_registers_imp_read_data1_3_32_2811,
      O => register_module_imp_registers_imp_read_data1_3_46_2813
    );
  register_module_imp_registers_imp_read_data1_3_61 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_3_17_2809,
      I2 => register_module_imp_registers_imp_read_data1_3_46_2813,
      I3 => register_module_imp_registers_imp_read_data1_3_3_2810,
      O => branch_relative_reg_data_from_id_tmp(3)
    );
  write_back_data_from_alu_tmp_4_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(4),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_4_5_3094
    );
  write_back_data_from_alu_tmp_4_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_4_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_4_111_3092
    );
  write_back_data_from_alu_tmp_4_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_4_111_3092,
      I2 => write_back_data_from_alu_tmp_4_5_3094,
      I3 => N1676,
      O => write_back_data_from_alu_tmp(4)
    );
  register_module_imp_registers_imp_read_data1_4_61 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_4_46_2817,
      I2 => register_module_imp_registers_imp_read_data1_4_17_2815,
      I3 => register_module_imp_registers_imp_read_data1_4_3_2816,
      O => branch_relative_reg_data_from_id_tmp(4)
    );
  write_back_data_from_alu_tmp_5_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_5_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_5_111_3096
    );
  write_back_data_from_alu_tmp_5_26 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(5),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(5),
      O => write_back_data_from_alu_tmp_5_26_3097
    );
  write_back_data_from_alu_tmp_5_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_5_111_3096,
      I2 => N1558,
      I3 => write_back_data_from_alu_tmp_5_26_3097,
      O => write_back_data_from_alu_tmp(5)
    );
  register_module_imp_registers_imp_read_data1_5_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(5),
      I1 => register_module_imp_registers_imp_t(5),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_5_9_2822
    );
  register_module_imp_registers_imp_read_data1_5_61 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_5_46_2821,
      I2 => register_module_imp_registers_imp_read_data1_5_17_2819,
      I3 => register_module_imp_registers_imp_read_data1_5_3_2820,
      O => branch_relative_reg_data_from_id_tmp(5)
    );
  write_back_data_from_alu_tmp_6_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_6_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_6_111_3100
    );
  write_back_data_from_alu_tmp_6_26 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(6),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(6),
      O => write_back_data_from_alu_tmp_6_26_3101
    );
  write_back_data_from_alu_tmp_6_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_6_111_3100,
      I2 => N1559,
      I3 => write_back_data_from_alu_tmp_6_26_3101,
      O => write_back_data_from_alu_tmp(6)
    );
  register_module_imp_registers_imp_read_data1_6_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(6),
      I1 => register_module_imp_registers_imp_t(6),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_6_9_2826
    );
  register_module_imp_registers_imp_read_data1_6_61 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_6_46_2825,
      I2 => register_module_imp_registers_imp_read_data1_6_17_2823,
      I3 => register_module_imp_registers_imp_read_data1_6_3_2824,
      O => branch_relative_reg_data_from_id_tmp(6)
    );
  write_back_data_from_alu_tmp_7_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(7),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_7_5_3106
    );
  write_back_data_from_alu_tmp_7_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_7_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_7_111_3104
    );
  write_back_data_from_alu_tmp_7_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_7_111_3104,
      I2 => write_back_data_from_alu_tmp_7_5_3106,
      I3 => N1560,
      O => write_back_data_from_alu_tmp(7)
    );
  register_module_imp_registers_imp_read_data1_7_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(7),
      I1 => register_module_imp_registers_imp_t(7),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_7_9_2830
    );
  register_module_imp_registers_imp_read_data1_7_61 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_7_46_2829,
      I2 => register_module_imp_registers_imp_read_data1_7_17_2827,
      I3 => register_module_imp_registers_imp_read_data1_7_3_2828,
      O => branch_relative_reg_data_from_id_tmp(7)
    );
  write_back_data_from_alu_tmp_8_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_8_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_8_111_3108
    );
  write_back_data_from_alu_tmp_8_26 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(8),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(8),
      O => write_back_data_from_alu_tmp_8_26_3109
    );
  write_back_data_from_alu_tmp_8_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_8_111_3108,
      I2 => N1561,
      I3 => write_back_data_from_alu_tmp_8_26_3109,
      O => write_back_data_from_alu_tmp(8)
    );
  register_module_imp_registers_imp_read_data1_8_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(8),
      I1 => register_module_imp_registers_imp_t(8),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_8_9_2834
    );
  register_module_imp_registers_imp_read_data1_8_61 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_8_46_2833,
      I2 => register_module_imp_registers_imp_read_data1_8_17_2831,
      I3 => register_module_imp_registers_imp_read_data1_8_3_2832,
      O => branch_relative_reg_data_from_id_tmp(8)
    );
  write_back_data_from_alu_tmp_9_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(9),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_9_5_3114
    );
  write_back_data_from_alu_tmp_9_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_9_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_9_111_3112
    );
  write_back_data_from_alu_tmp_9_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_9_111_3112,
      I2 => write_back_data_from_alu_tmp_9_5_3114,
      I3 => N1677,
      O => write_back_data_from_alu_tmp(9)
    );
  register_module_imp_registers_imp_read_data1_9_61 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_9_46_2837,
      I2 => register_module_imp_registers_imp_read_data1_9_17_2835,
      I3 => register_module_imp_registers_imp_read_data1_9_3_2836,
      O => branch_relative_reg_data_from_id_tmp(9)
    );
  write_back_data_from_alu_tmp_10_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(10),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_10_5_3065
    );
  write_back_data_from_alu_tmp_10_111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_15_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_10_111_3063
    );
  write_back_data_from_alu_tmp_10_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_10_111_3063,
      I2 => write_back_data_from_alu_tmp_10_5_3065,
      I3 => N1563,
      O => write_back_data_from_alu_tmp(10)
    );
  register_module_imp_registers_imp_read_data2_10_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N44,
      I1 => register_module_imp_registers_imp_t(10),
      I2 => register_module_imp_registers_imp_ih(10),
      I3 => N1533,
      O => register_module_imp_registers_imp_read_data2_10_9_2845
    );
  register_module_imp_registers_imp_read_data1_10_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(10),
      I1 => register_module_imp_registers_imp_t(10),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_10_9_2773
    );
  register_module_imp_registers_imp_read_data1_10_24 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(10),
      I1 => register_module_imp_registers_imp_read_data1_10_1_2769,
      I2 => register_module_imp_registers_imp_N46,
      I3 => N1624,
      O => register_module_imp_registers_imp_read_data1_10_24_2771
    );
  write_back_data_from_alu_tmp_11_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(11),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_11_5_3068
    );
  write_back_data_from_alu_tmp_11_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_10_111_3063,
      I2 => write_back_data_from_alu_tmp_11_5_3068,
      I3 => N1564,
      O => write_back_data_from_alu_tmp(11)
    );
  register_module_imp_registers_imp_read_data2_11_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N44,
      I1 => register_module_imp_registers_imp_t(11),
      I2 => register_module_imp_registers_imp_ih(11),
      I3 => register_module_imp_registers_imp_N47,
      O => register_module_imp_registers_imp_read_data2_11_9_2847
    );
  register_module_imp_registers_imp_read_data1_11_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(11),
      I1 => register_module_imp_registers_imp_t(11),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_11_9_2778
    );
  register_module_imp_registers_imp_read_data1_11_24 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(11),
      I1 => register_module_imp_registers_imp_read_data1_11_1_2774,
      I2 => register_module_imp_registers_imp_N46,
      I3 => N1625,
      O => register_module_imp_registers_imp_read_data1_11_24_2776
    );
  write_back_data_from_alu_tmp_12_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(12),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_12_5_3071
    );
  write_back_data_from_alu_tmp_12_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_10_111_3063,
      I2 => write_back_data_from_alu_tmp_12_5_3071,
      I3 => N1565,
      O => write_back_data_from_alu_tmp(12)
    );
  register_module_imp_registers_imp_read_data2_12_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N44,
      I1 => register_module_imp_registers_imp_t(12),
      I2 => register_module_imp_registers_imp_ih(12),
      I3 => register_module_imp_registers_imp_N47,
      O => register_module_imp_registers_imp_read_data2_12_9_2849
    );
  register_module_imp_registers_imp_read_data1_12_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(12),
      I1 => register_module_imp_registers_imp_t(12),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_12_9_2783
    );
  register_module_imp_registers_imp_read_data1_12_24 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(12),
      I1 => register_module_imp_registers_imp_read_data1_12_1_2779,
      I2 => register_module_imp_registers_imp_N46,
      I3 => N1626,
      O => register_module_imp_registers_imp_read_data1_12_24_2781
    );
  write_back_data_from_alu_tmp_13_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(13),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_13_5_3074
    );
  write_back_data_from_alu_tmp_13_26 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(13),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(13),
      O => write_back_data_from_alu_tmp_13_26_3073
    );
  write_back_data_from_alu_tmp_13_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_10_111_3063,
      I2 => write_back_data_from_alu_tmp_13_5_3074,
      I3 => write_back_data_from_alu_tmp_13_26_3073,
      O => write_back_data_from_alu_tmp(13)
    );
  register_module_imp_registers_imp_read_data2_13_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N44,
      I1 => register_module_imp_registers_imp_t(13),
      I2 => register_module_imp_registers_imp_ih(13),
      I3 => register_module_imp_registers_imp_N47,
      O => register_module_imp_registers_imp_read_data2_13_9_2851
    );
  register_module_imp_registers_imp_read_data1_13_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(13),
      I1 => register_module_imp_registers_imp_t(13),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_13_9_2788
    );
  register_module_imp_registers_imp_read_data1_13_24 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(13),
      I1 => register_module_imp_registers_imp_read_data1_13_1_2784,
      I2 => register_module_imp_registers_imp_N46,
      I3 => N1627,
      O => register_module_imp_registers_imp_read_data1_13_24_2786
    );
  VGA_bt_or00041 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => VGA_y(8),
      I1 => VGA_y(7),
      I2 => N1566,
      O => VGA_bt_or0004
    );
  VGA_bt_cmp_eq00091 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_x(2),
      I2 => VGA_x(1),
      I3 => N1568,
      O => VGA_bt_cmp_eq0009
    );
  VGA_SF533 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => VGA_bt_or0010,
      I1 => VGA_bt_or0006,
      I2 => VGA_bt_or0012_1939,
      I3 => N174,
      O => VGA_N79
    );
  VGA_bt_or0012 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => VGA_y(7),
      I1 => VGA_y(5),
      I2 => VGA_y(4),
      I3 => N176,
      O => VGA_bt_or0012_1939
    );
  VGA_romAddr_and00001111_SW0 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => VGA_y(6),
      I1 => VGA_y(3),
      I2 => VGA_y(4),
      I3 => VGA_y(8),
      O => N178
    );
  write_back_data_from_alu_tmp_14_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(14),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_14_5_3077
    );
  write_back_data_from_alu_tmp_14_26 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(14),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(14),
      O => write_back_data_from_alu_tmp_14_26_3076
    );
  write_back_data_from_alu_tmp_14_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_10_111_3063,
      I2 => write_back_data_from_alu_tmp_14_5_3077,
      I3 => write_back_data_from_alu_tmp_14_26_3076,
      O => write_back_data_from_alu_tmp(14)
    );
  register_module_imp_registers_imp_read_data2_14_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N44,
      I1 => register_module_imp_registers_imp_t(14),
      I2 => register_module_imp_registers_imp_ih(14),
      I3 => register_module_imp_registers_imp_N47,
      O => register_module_imp_registers_imp_read_data2_14_9_2853
    );
  register_module_imp_registers_imp_read_data1_14_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(14),
      I1 => register_module_imp_registers_imp_t(14),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_14_9_2793
    );
  register_module_imp_registers_imp_read_data1_14_24 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(14),
      I1 => register_module_imp_registers_imp_read_data1_14_1_2789,
      I2 => register_module_imp_registers_imp_N46,
      I3 => N1628,
      O => register_module_imp_registers_imp_read_data1_14_24_2791
    );
  write_back_data_from_alu_tmp_15_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(15),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_15_5_3080
    );
  write_back_data_from_alu_tmp_15_53 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_10_111_3063,
      I2 => write_back_data_from_alu_tmp_15_5_3080,
      I3 => N1570,
      O => write_back_data_from_alu_tmp(15)
    );
  register_module_imp_registers_imp_read_data2_15_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N44,
      I1 => register_module_imp_registers_imp_t(15),
      I2 => register_module_imp_registers_imp_ih(15),
      I3 => register_module_imp_registers_imp_N47,
      O => register_module_imp_registers_imp_read_data2_15_9_2855
    );
  register_module_imp_registers_imp_read_data1_15_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(15),
      I1 => register_module_imp_registers_imp_t(15),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      O => register_module_imp_registers_imp_read_data1_15_9_2800
    );
  register_module_imp_registers_imp_read_data1_15_24 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(15),
      I1 => register_module_imp_registers_imp_read_data1_15_1_2794,
      I2 => register_module_imp_registers_imp_N46,
      I3 => N1629,
      O => register_module_imp_registers_imp_read_data1_15_24_2796
    );
  register_module_imp_registers_imp_read_data1_15_46 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => write_back_data_from_alu_tmp(15),
      I1 => register_module_imp_registers_imp_read_data1_15_37_2798,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      I3 => register_module_imp_registers_imp_read_data1_15_32_2797,
      O => register_module_imp_registers_imp_read_data1_15_46_2799
    );
  ALU_imp_Sh2121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_N28
    );
  ALU_imp_Sh11931 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_N24
    );
  ALU_imp_Sh791 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(0),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh79
    );
  ALU_imp_tmp_cmp_eq00041 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out_2_1_477,
      I1 => ID_ALU_regs_imp_op_code_out_1_1_475,
      I2 => ID_ALU_regs_imp_op_code_out_3_1_479,
      I3 => ID_ALU_regs_imp_op_code_out(0),
      O => ALU_imp_tmp_cmp_eq0004
    );
  ALU_imp_Sh7_SW1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(9),
      I1 => ID_ALU_regs_imp_operand1_out(10),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N187
    );
  ALU_imp_Sh7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N1574,
      I2 => N187,
      O => ALU_imp_Sh7_127
    );
  ALU_imp_Sh35_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N193
    );
  ALU_imp_Sh111 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N196,
      I2 => N1576,
      O => ALU_imp_Sh111_114
    );
  ID_ALU_regs_imp_operand1_out_mux0001_15_1 : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => N1705,
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(0),
      O => ID_ALU_regs_imp_operand1_out_mux0001(15)
    );
  VGA_romAddr_mux0053_4_111 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => VGA_bt_or0006,
      I1 => N1653,
      O => VGA_N191
    );
  VGA_bt_cmp_eq00111 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_N93,
      I2 => VGA_N43,
      I3 => N1647,
      O => VGA_bt_cmp_eq0011
    );
  VGA_bt_cmp_le00192 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_x(9),
      I2 => VGA_x(8),
      I3 => N1674,
      O => VGA_bt_cmp_le0019
    );
  VGA_bt_cmp_ge00192_SW0 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(5),
      I2 => VGA_x(4),
      I3 => N1581,
      O => N200
    );
  VGA_SF22110 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_y(8),
      I1 => VGA_y(7),
      I2 => VGA_bt_cmp_le00021_1878,
      I3 => N1567,
      O => VGA_SF22110_1839
    );
  VGA_bt_not000115 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => VGA_bt_cmp_le00081_1880,
      I1 => VGA_N92,
      I2 => VGA_bt_cmp_ge0008,
      I3 => N1513,
      O => VGA_bt_not000115_1912
    );
  VGA_bt_not000199 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => VGA_bt_or0004,
      I1 => VGA_bt_or0012_1939,
      I2 => VGA_bt_or0006,
      I3 => VGA_bt_or0010,
      O => VGA_bt_not000199_1930
    );
  VGA_bt_not0001107 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => VGA_bt_cmp_eq0006,
      I1 => VGA_bt_not000199_1930,
      I2 => N1698,
      O => VGA_bt_not0001107_1909
    );
  VGA_bt_not0001123 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => VGA_bt_cmp_ge0016,
      I1 => VGA_bt_cmp_le0016,
      I2 => N1551,
      I3 => VGA_N79,
      O => VGA_bt_not0001123_1910
    );
  VGA_bt_not0001253 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => VGA_N210,
      I1 => VGA_bt_not0001240_1917,
      I2 => VGA_bt_cmp_eq0011,
      I3 => VGA_N79,
      O => VGA_bt_not0001253_1918
    );
  VGA_bt_not0001329 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => N1544,
      I1 => VGA_bt_cmp_le0015,
      I2 => VGA_bt_cmp_eq0007,
      I3 => VGA_N79,
      O => VGA_bt_not0001329_1920
    );
  ALU_imp_Sh131 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N1595,
      O => ALU_imp_Sh13
    );
  ALU_imp_Sh34 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(0),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => N204,
      O => ALU_imp_Sh34_124
    );
  ALU_imp_Sh98_SW1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N207
    );
  ALU_imp_Sh110_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(14),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N215
    );
  ALU_imp_Sh110 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N215,
      I2 => N1588,
      O => ALU_imp_Sh110_113
    );
  ALU_imp_Sh109_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(10),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N219
    );
  VGA_romAddr_and000091 : LUT4
    generic map(
      INIT => X"40FF"
    )
    port map (
      I0 => VGA_y(8),
      I1 => VGA_y(7),
      I2 => VGA_bt_cmp_le00041_1879,
      I3 => VGA_bt_or0008,
      O => VGA_romAddr_and000091_1978
    );
  VGA_romAddr_and0000107 : LUT4
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => VGA_N94,
      I1 => VGA_bt_cmp_eq0010,
      I2 => VGA_romAddr_and000091_1978,
      I3 => N1569,
      O => VGA_romAddr_and0000107_1960
    );
  VGA_romAddr_and0000165 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => N1552,
      I1 => VGA_bt_cmp_le0016,
      I2 => VGA_bt_cmp_eq0008,
      I3 => VGA_N4,
      O => VGA_romAddr_and0000165_1966
    );
  VGA_romAddr_and0000198 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => VGA_bt_cmp_ge0015,
      I1 => VGA_bt_cmp_le0015,
      I2 => N1703,
      I3 => VGA_N4,
      O => VGA_romAddr_and0000198_1967
    );
  VGA_romAddr_and0000440 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => VGA_N101,
      I1 => VGA_romAddr_and0000428_1973,
      I2 => VGA_bt_cmp_eq0001,
      I3 => VGA_romAddr_and0001_1979,
      O => VGA_romAddr_and0000440_1974
    );
  ALU_imp_Sh108_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(9),
      I1 => ID_ALU_regs_imp_operand1_out(10),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N240
    );
  ALU_imp_Sh106_SW1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(7),
      I1 => ID_ALU_regs_imp_operand1_out(8),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N243
    );
  ALU_imp_Sh103 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N1597,
      I2 => N249,
      O => ALU_imp_Sh103_108
    );
  ALU_imp_Sh102 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N1599,
      I2 => N252,
      O => ALU_imp_Sh102_107
    );
  ALU_imp_Sh101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N1598,
      I2 => N192,
      O => ALU_imp_Sh101_106
    );
  ALU_imp_tmp_13_10 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ALU_imp_Sh13,
      I1 => N1586,
      I2 => ALU_imp_N72,
      I3 => ALU_imp_N27,
      O => ALU_imp_tmp_13_10_174
    );
  ALU_imp_tmp_13_20 : LUT4
    generic map(
      INIT => X"FFF4"
    )
    port map (
      I0 => ALU_imp_N12,
      I1 => ALU_imp_tmp_13_10_174,
      I2 => ALU_imp_tmp_11_2,
      I3 => ALU_imp_N13,
      O => ALU_imp_tmp_13_20_177
    );
  ALU_imp_tmp_13_80 : LUT4
    generic map(
      INIT => X"CC80"
    )
    port map (
      I0 => ALU_imp_Sh33,
      I1 => ALU_imp_N24,
      I2 => ALU_imp_N25,
      I3 => ALU_imp_tmp_13_74_179,
      O => ALU_imp_tmp_13_80_180
    );
  ALU_imp_tmp_13_111 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_tmp_13_102_175,
      I1 => ALU_imp_tmp_13_80_180,
      I2 => ALU_imp_tmp_13_62_178,
      I3 => ALU_imp_tmp_10_22,
      O => ALU_imp_tmp_13_111_176
    );
  ALU_imp_tmp_13_136 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(13),
      I2 => ALU_imp_tmp_13_111_176,
      I3 => ALU_imp_tmp_13_20_177,
      O => alu_result_from_alu_tmp(13)
    );
  ALU_imp_tmp_6_34 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(6),
      I1 => ALU_imp_tmp_cmp_eq0003,
      I2 => N1612,
      I3 => ALU_imp_tmp_cmp_eq0005,
      O => ALU_imp_tmp_6_34_241
    );
  ALU_imp_tmp_6_74 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => N1613,
      O => ALU_imp_tmp_5_74
    );
  ALU_imp_tmp_6_79 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => ALU_imp_tmp_6_69_244,
      I1 => ALU_imp_N111,
      I2 => ALU_imp_N27,
      I3 => ALU_imp_tmp_5_74,
      O => ALU_imp_tmp_6_79_245
    );
  ALU_imp_tmp_6_99 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => ALU_imp_Sh34_124,
      I1 => ALU_imp_N25,
      I2 => N1645,
      O => ALU_imp_tmp_10_63
    );
  ALU_imp_tmp_6_122 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_Sh102_107,
      I2 => ALU_imp_N25,
      O => ALU_imp_tmp_6_122_240
    );
  ALU_imp_tmp_14_20 : LUT4
    generic map(
      INIT => X"FFF4"
    )
    port map (
      I0 => ALU_imp_N12,
      I1 => ALU_imp_tmp_10_148,
      I2 => ALU_imp_tmp_11_2,
      I3 => ALU_imp_N13,
      O => ALU_imp_tmp_14_20_183
    );
  ALU_imp_tmp_14_111 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_tmp_14_102_181,
      I1 => ALU_imp_tmp_14_62_184,
      I2 => ALU_imp_tmp_14_80_185,
      I3 => ALU_imp_tmp_10_22,
      O => ALU_imp_tmp_14_111_182
    );
  ALU_imp_tmp_14_136 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(14),
      I2 => ALU_imp_tmp_14_111_182,
      I3 => ALU_imp_tmp_14_20_183,
      O => alu_result_from_alu_tmp(14)
    );
  ALU_imp_tmp_7_74 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      O => ALU_imp_tmp_7_74_251
    );
  ALU_imp_tmp_7_111 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ALU_imp_Sh11_112,
      I2 => ALU_imp_Sh7_127,
      O => ALU_imp_tmp_7_111_246
    );
  ALU_imp_tmp_15_101 : LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_N4,
      I2 => ALU_imp_tmp_15_90_191,
      I3 => N1602,
      O => ALU_imp_tmp_15_101_186
    );
  ALU_imp_tmp_15_121 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(15),
      I2 => ALU_imp_tmp_15_72_190,
      I3 => ALU_imp_tmp_15_101_186,
      O => alu_result_from_alu_tmp(15)
    );
  ALU_imp_tmp_1_49 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(1),
      I1 => ALU_imp_tmp_1_43_198,
      I2 => ALU_imp_N25,
      I3 => ALU_imp_tmp_1_34_197,
      O => ALU_imp_tmp_1_49_199
    );
  ALU_imp_tmp_1_104 : LUT4
    generic map(
      INIT => X"0A0C"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(3),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_tmp_1_104_192
    );
  ALU_imp_tmp_1_136 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_tmp_1_89_201,
      I2 => ALU_imp_tmp_1_104_192,
      I3 => ALU_imp_Sh73_129,
      O => ALU_imp_tmp_1_136_194
    );
  ALU_imp_tmp_9_122 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(9),
      I1 => ALU_imp_tmp_9_110_258,
      I2 => ALU_imp_Sh109_111,
      I3 => N1661,
      O => ALU_imp_tmp_9_122_260
    );
  ALU_imp_tmp_9_155 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_N22,
      I1 => N1604,
      I2 => ALU_imp_tmp_9_122_260,
      I3 => ALU_imp_tmp_13_10_174,
      O => ALU_imp_tmp_9_155_261
    );
  ALU_imp_tmp_9_177 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(9),
      I2 => N1615,
      O => alu_result_from_alu_tmp(9)
    );
  ALU_imp_Sh12_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(12),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N259
    );
  ALU_imp_Sh100 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N1587,
      I2 => N252,
      O => ALU_imp_Sh100_105
    );
  ALU_imp_Sh10 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N1596,
      I2 => N259,
      O => ALU_imp_Sh10_104
    );
  ALU_imp_Sh16113 : LUT4
    generic map(
      INIT => X"C0A0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_operand1_out(7),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh16113_118
    );
  ALU_imp_Sh16128 : LUT4
    generic map(
      INIT => X"0A0C"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(6),
      I1 => ID_ALU_regs_imp_operand1_out(4),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh16128_119
    );
  ALU_imp_Sh18114 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_operand1_out(3),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh18114_120
    );
  ALU_imp_Sh18127 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(4),
      I1 => ID_ALU_regs_imp_operand1_out(2),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh18127_121
    );
  ALU_imp_tmp_0_171 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => ALU_imp_tmp_0_91,
      I1 => ALU_imp_tmp_0_144_138,
      I2 => ID_ALU_regs_imp_operand2_out(2),
      I3 => N1605,
      O => ALU_imp_tmp_0_171_139
    );
  ALU_imp_tmp_10_110 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(10),
      I1 => ALU_imp_tmp_cmp_eq0003,
      I2 => ALU_imp_N46,
      I3 => N1584,
      O => ALU_imp_tmp_10_110_144
    );
  ALU_imp_tmp_10_122 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(10),
      I1 => ALU_imp_tmp_10_110_144,
      I2 => ALU_imp_Sh110_113,
      I3 => ALU_imp_tmp_10_117,
      O => ALU_imp_tmp_10_122_147
    );
  ALU_imp_tmp_10_155 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_N22,
      I1 => ALU_imp_tmp_10_131,
      I2 => ALU_imp_tmp_10_122_147,
      I3 => N1603,
      O => ALU_imp_tmp_10_155_150
    );
  ALU_imp_tmp_10_177 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(10),
      I2 => ALU_imp_tmp_10_165_151,
      O => alu_result_from_alu_tmp(10)
    );
  ALU_imp_tmp_3_9 : LUT4
    generic map(
      INIT => X"A2A0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      I2 => ALU_imp_N46,
      I3 => ALU_imp_tmp_cmp_eq0005,
      O => ALU_imp_tmp_3_9_214
    );
  ALU_imp_tmp_3_48 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(3),
      I1 => ALU_imp_tmp_cmp_eq0003,
      I2 => ALU_imp_tmp_cmp_eq0004,
      I3 => ALU_imp_tmp_cmp_eq0005,
      O => ALU_imp_tmp_3_48_212
    );
  ALU_imp_tmp_11_13 : LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => ALU_imp_N12,
      I1 => ALU_imp_Sh11_112,
      I2 => ALU_imp_N72,
      I3 => ALU_imp_N27,
      O => ALU_imp_tmp_11_13_159
    );
  ALU_imp_tmp_11_22 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(11),
      I1 => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_11_22_162
    );
  ALU_imp_tmp_11_42 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_tmp_11_37_164,
      I1 => ALU_imp_tmp_11_22_162,
      I2 => ALU_imp_tmp_11_30_163,
      I3 => ALU_imp_N72,
      O => ALU_imp_tmp_11_42_165
    );
  ALU_imp_tmp_11_61 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(11),
      I1 => ALU_imp_tmp_cmp_eq0003,
      I2 => ALU_imp_N46,
      I3 => ALU_imp_tmp_cmp_eq0005,
      O => ALU_imp_tmp_11_61_166
    );
  ALU_imp_tmp_11_129 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_tmp_11_109_157,
      I1 => ALU_imp_tmp_11_42_165,
      I2 => ALU_imp_tmp_11_73_167,
      I3 => ALU_imp_tmp_10_22,
      O => ALU_imp_tmp_11_129_158
    );
  ALU_imp_tmp_11_154 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(11),
      I2 => ALU_imp_tmp_11_129_158,
      I3 => ALU_imp_tmp_11_15_160,
      O => alu_result_from_alu_tmp(11)
    );
  ALU_imp_tmp_4_72 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(4),
      I1 => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_4_72_224
    );
  ALU_imp_tmp_4_95 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_tmp_4_89_226,
      I1 => ALU_imp_tmp_4_80_225,
      I2 => ALU_imp_tmp_4_72_224,
      I3 => ALU_imp_N25,
      O => ALU_imp_tmp_4_95_227
    );
  ALU_imp_tmp_4_160 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N1593,
      I1 => ALU_imp_Sh72_128,
      I2 => ALU_imp_N25,
      I3 => ALU_imp_N27,
      O => ALU_imp_tmp_4_160_219
    );
  ALU_imp_tmp_4_167 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_N22,
      I1 => ALU_imp_tmp_4_95_227,
      I2 => ALU_imp_tmp_4_134_218,
      I3 => ALU_imp_tmp_4_160_219,
      O => ALU_imp_tmp_4_167_220
    );
  ALU_imp_tmp_4_189 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => ALU_imp_tmp_4_177_221,
      I1 => ALU_imp_tmp_addsub0000(4),
      I2 => ALU_imp_tmp_or0000_302,
      O => alu_result_from_alu_tmp(4)
    );
  ALU_imp_tmp_12_13 : LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => N1571,
      I1 => ALU_imp_Sh12_115,
      I2 => ALU_imp_N72,
      I3 => ALU_imp_N27,
      O => ALU_imp_tmp_12_13_170
    );
  ALU_imp_tmp_12_127 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => ALU_imp_tmp_12_109_168,
      I1 => ALU_imp_tmp_12_58_172,
      I2 => ALU_imp_tmp_10_22,
      I3 => ALU_imp_tmp_12_76_173,
      O => ALU_imp_tmp_12_127_169
    );
  ALU_imp_tmp_12_151 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(12),
      I2 => ALU_imp_tmp_12_127_169,
      I3 => ALU_imp_tmp_12_15_171,
      O => alu_result_from_alu_tmp(12)
    );
  ALU_imp_tmp_or000011 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      O => ALU_imp_N17
    );
  ID_ALU_regs_imp_operand2_out_mux0001_15_Q : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(0),
      I1 => bubble_to_id_alu_tmp,
      I2 => N272,
      I3 => N271,
      O => ID_ALU_regs_imp_operand2_out_mux0001(15)
    );
  register_module_imp_registers_imp_read_data2_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(0),
      I1 => register_module_imp_registers_imp_N39,
      O => register_module_imp_registers_imp_read_data2_0_1_2839
    );
  register_module_imp_registers_imp_read_data2_0_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N44,
      I1 => register_module_imp_registers_imp_t(0),
      I2 => register_module_imp_registers_imp_ih(0),
      I3 => register_module_imp_registers_imp_N47,
      O => register_module_imp_registers_imp_read_data2_0_9_2843
    );
  register_module_imp_registers_imp_read_data2_0_24 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(0),
      I1 => register_module_imp_registers_imp_N43,
      I2 => register_module_imp_registers_imp_read_data2_0_1_2839,
      I3 => register_module_imp_registers_imp_read_data2_0_17_2840,
      O => register_module_imp_registers_imp_read_data2_0_24_2841
    );
  register_module_imp_registers_imp_read_data1_0_9 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(0),
      I1 => register_module_imp_registers_imp_t(0),
      I2 => register_module_imp_registers_imp_N45,
      I3 => N1542,
      O => register_module_imp_registers_imp_read_data1_0_9_2768
    );
  register_module_imp_registers_imp_read_data1_0_46 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      I1 => register_module_imp_registers_imp_read_data1_0_37_2764,
      I2 => register_module_imp_registers_imp_read_data1_0_32_2763,
      I3 => write_back_data_from_alu_tmp(0),
      O => register_module_imp_registers_imp_read_data1_0_46_2765
    );
  ALU_imp_tmp_5_79 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => ALU_imp_tmp_5_69_233,
      I1 => ALU_imp_N10,
      I2 => ALU_imp_N27,
      I3 => ALU_imp_tmp_5_74,
      O => ALU_imp_tmp_5_79_235
    );
  ALU_imp_tmp_5_121 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_Sh101_106,
      I2 => ALU_imp_N25,
      O => ALU_imp_tmp_5_121_231
    );
  write_back_data_from_alu_tmp_0_5 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(0),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      O => write_back_data_from_alu_tmp_0_5_3057
    );
  write_back_data_from_alu_tmp_0_12 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => alu_result_from_alu_tmp(15),
      I1 => alu_result_from_alu_tmp(6),
      I2 => alu_result_from_alu_tmp(7),
      O => write_back_data_from_alu_tmp_0_12_3053
    );
  write_back_data_from_alu_tmp_0_83 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_operand1_out(4),
      I2 => ID_ALU_regs_imp_operand1_out(3),
      I3 => ID_ALU_regs_imp_operand1_out(2),
      O => write_back_data_from_alu_tmp_0_83_3059
    );
  write_back_data_from_alu_tmp_0_103 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(9),
      I1 => ID_ALU_regs_imp_operand1_out(10),
      I2 => ID_ALU_regs_imp_operand1_out(11),
      I3 => ID_ALU_regs_imp_operand1_out(12),
      O => write_back_data_from_alu_tmp_0_103_3051
    );
  write_back_data_from_alu_tmp_0_111 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(3),
      I1 => ID_ALU_regs_imp_operand1_out(0),
      I2 => ID_ALU_regs_imp_operand1_out(1),
      I3 => ID_ALU_regs_imp_operand1_out(13),
      O => write_back_data_from_alu_tmp_0_111_3052
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF1
    );
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => clk_IBUF1
    );
  data_ready_IBUF : IBUF
    port map (
      I => data_ready,
      O => data_ready_IBUF_2088
    );
  tbre_IBUF : IBUF
    port map (
      I => tbre,
      O => tbre_IBUF_3046
    );
  tsre_IBUF : IBUF
    port map (
      I => tsre,
      O => tsre_IBUF_3048
    );
  ram1_data_15_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(15),
      T => DM_imp_Mtrien_Ram1Data(15),
      O => N274,
      IO => ram1_data(15)
    );
  ram1_data_14_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(14),
      T => DM_imp_Mtrien_Ram1Data(14),
      O => N275,
      IO => ram1_data(14)
    );
  ram1_data_13_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(13),
      T => DM_imp_Mtrien_Ram1Data(13),
      O => N276,
      IO => ram1_data(13)
    );
  ram1_data_12_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(12),
      T => DM_imp_Mtrien_Ram1Data(12),
      O => N277,
      IO => ram1_data(12)
    );
  ram1_data_11_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(11),
      T => DM_imp_Mtrien_Ram1Data(11),
      O => N278,
      IO => ram1_data(11)
    );
  ram1_data_10_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(10),
      T => DM_imp_Mtrien_Ram1Data(10),
      O => N279,
      IO => ram1_data(10)
    );
  ram1_data_9_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(9),
      T => DM_imp_Mtrien_Ram1Data(9),
      O => N280,
      IO => ram1_data(9)
    );
  ram1_data_8_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(8),
      T => DM_imp_Mtrien_Ram1Data(8),
      O => N281,
      IO => ram1_data(8)
    );
  ram1_data_7_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(7),
      T => DM_imp_Mtrien_Ram1Data(7),
      O => N282,
      IO => ram1_data(7)
    );
  ram1_data_6_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(6),
      T => DM_imp_Mtrien_Ram1Data(6),
      O => N283,
      IO => ram1_data(6)
    );
  ram1_data_5_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(5),
      T => DM_imp_Mtrien_Ram1Data(5),
      O => N284,
      IO => ram1_data(5)
    );
  ram1_data_4_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(4),
      T => DM_imp_Mtrien_Ram1Data(4),
      O => N285,
      IO => ram1_data(4)
    );
  ram1_data_3_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(3),
      T => DM_imp_Mtrien_Ram1Data(3),
      O => N286,
      IO => ram1_data(3)
    );
  ram1_data_2_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(2),
      T => DM_imp_Mtrien_Ram1Data(2),
      O => N287,
      IO => ram1_data(2)
    );
  ram1_data_1_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(1),
      T => DM_imp_Mtrien_Ram1Data(1),
      O => N288,
      IO => ram1_data(1)
    );
  ram1_data_0_IOBUF : IOBUF
    port map (
      I => DM_imp_Mtridata_Ram1Data(0),
      T => DM_imp_Mtrien_Ram1Data(0),
      O => N289,
      IO => ram1_data(0)
    );
  ram1_we_OBUF : OBUF
    port map (
      I => ram1_we_OBUF_2309,
      O => ram1_we
    );
  ram2_en_OBUF : OBUF
    port map (
      I => ram2_oe_OBUF_2362,
      O => ram2_en
    );
  hs_OBUF : OBUF
    port map (
      I => VGA_hs_1940,
      O => hs
    );
  ram2_oe_OBUF : OBUF
    port map (
      I => ram2_oe_OBUF_2362,
      O => ram2_oe
    );
  ram1_en_OBUF : OBUF
    port map (
      I => ram1_en_OBUF_2305,
      O => ram1_en
    );
  vs_OBUF : OBUF
    port map (
      I => VGA_vs_2007,
      O => vs
    );
  ram2_we_OBUF : OBUF
    port map (
      I => ram2_we_OBUF_2364,
      O => ram2_we
    );
  rdn_OBUF : OBUF
    port map (
      I => rdn_OBUF_2366,
      O => rdn
    );
  wrn_OBUF : OBUF
    port map (
      I => wrn_OBUF_3148,
      O => wrn
    );
  ram1_oe_OBUF : OBUF
    port map (
      I => ram1_oe_OBUF_2307,
      O => ram1_oe
    );
  oGreen_2_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oGreen(2)
    );
  oGreen_1_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oGreen(1)
    );
  oGreen_0_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oGreen(0)
    );
  ram1_addr_17_OBUF : OBUF
    port map (
      I => ram2_oe_OBUF_2362,
      O => ram1_addr(17)
    );
  ram1_addr_16_OBUF : OBUF
    port map (
      I => ram2_oe_OBUF_2362,
      O => ram1_addr(16)
    );
  ram1_addr_15_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(15),
      O => ram1_addr(15)
    );
  ram1_addr_14_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(14),
      O => ram1_addr(14)
    );
  ram1_addr_13_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(13),
      O => ram1_addr(13)
    );
  ram1_addr_12_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(12),
      O => ram1_addr(12)
    );
  ram1_addr_11_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(11),
      O => ram1_addr(11)
    );
  ram1_addr_10_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(10),
      O => ram1_addr(10)
    );
  ram1_addr_9_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(9),
      O => ram1_addr(9)
    );
  ram1_addr_8_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(8),
      O => ram1_addr(8)
    );
  ram1_addr_7_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(7),
      O => ram1_addr(7)
    );
  ram1_addr_6_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(6),
      O => ram1_addr(6)
    );
  ram1_addr_5_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(5),
      O => ram1_addr(5)
    );
  ram1_addr_4_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(4),
      O => ram1_addr(4)
    );
  ram1_addr_3_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(3),
      O => ram1_addr(3)
    );
  ram1_addr_2_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(2),
      O => ram1_addr(2)
    );
  ram1_addr_1_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(1),
      O => ram1_addr(1)
    );
  ram1_addr_0_OBUF : OBUF
    port map (
      I => DM_imp_Ram1Addr(0),
      O => ram1_addr(0)
    );
  disp0_6_OBUF : OBUF
    port map (
      I => disp0_6_OBUF_2102,
      O => disp0(6)
    );
  disp0_5_OBUF : OBUF
    port map (
      I => disp0_5_OBUF_2101,
      O => disp0(5)
    );
  disp0_4_OBUF : OBUF
    port map (
      I => disp0_4_OBUF_2100,
      O => disp0(4)
    );
  disp0_3_OBUF : OBUF
    port map (
      I => disp0_3_OBUF_2099,
      O => disp0(3)
    );
  disp0_2_OBUF : OBUF
    port map (
      I => disp0_2_OBUF_2098,
      O => disp0(2)
    );
  disp0_1_OBUF : OBUF
    port map (
      I => disp0_1_OBUF_2097,
      O => disp0(1)
    );
  disp0_0_OBUF : OBUF
    port map (
      I => disp0_0_OBUF_2096,
      O => disp0(0)
    );
  disp1_6_OBUF : OBUF
    port map (
      I => disp1_6_OBUF_2116,
      O => disp1(6)
    );
  disp1_5_OBUF : OBUF
    port map (
      I => disp1_5_OBUF_2115,
      O => disp1(5)
    );
  disp1_4_OBUF : OBUF
    port map (
      I => disp1_4_OBUF_2114,
      O => disp1(4)
    );
  disp1_3_OBUF : OBUF
    port map (
      I => disp1_3_OBUF_2113,
      O => disp1(3)
    );
  disp1_2_OBUF : OBUF
    port map (
      I => disp1_2_OBUF_2112,
      O => disp1(2)
    );
  disp1_1_OBUF : OBUF
    port map (
      I => disp1_1_OBUF_2111,
      O => disp1(1)
    );
  disp1_0_OBUF : OBUF
    port map (
      I => disp1_0_OBUF_2110,
      O => disp1(0)
    );
  ram2_addr_17_OBUF : OBUF
    port map (
      I => ram2_oe_OBUF_2362,
      O => ram2_addr(17)
    );
  ram2_addr_16_OBUF : OBUF
    port map (
      I => ram2_oe_OBUF_2362,
      O => ram2_addr(16)
    );
  ram2_addr_15_OBUF : OBUF
    port map (
      I => ram2_addr_15_OBUF_2334,
      O => ram2_addr(15)
    );
  ram2_addr_14_OBUF : OBUF
    port map (
      I => ram2_addr_14_OBUF_2333,
      O => ram2_addr(14)
    );
  ram2_addr_13_OBUF : OBUF
    port map (
      I => ram2_addr_13_OBUF_2332,
      O => ram2_addr(13)
    );
  ram2_addr_12_OBUF : OBUF
    port map (
      I => ram2_addr_12_OBUF_2331,
      O => ram2_addr(12)
    );
  ram2_addr_11_OBUF : OBUF
    port map (
      I => ram2_addr_11_OBUF_2330,
      O => ram2_addr(11)
    );
  ram2_addr_10_OBUF : OBUF
    port map (
      I => ram2_addr_10_OBUF_2329,
      O => ram2_addr(10)
    );
  ram2_addr_9_OBUF : OBUF
    port map (
      I => ram2_addr_9_OBUF_2343,
      O => ram2_addr(9)
    );
  ram2_addr_8_OBUF : OBUF
    port map (
      I => ram2_addr_8_OBUF_2342,
      O => ram2_addr(8)
    );
  ram2_addr_7_OBUF : OBUF
    port map (
      I => ram2_addr_7_OBUF_2341,
      O => ram2_addr(7)
    );
  ram2_addr_6_OBUF : OBUF
    port map (
      I => ram2_addr_6_OBUF_2340,
      O => ram2_addr(6)
    );
  ram2_addr_5_OBUF : OBUF
    port map (
      I => ram2_addr_5_OBUF_2339,
      O => ram2_addr(5)
    );
  ram2_addr_4_OBUF : OBUF
    port map (
      I => ram2_addr_4_OBUF_2338,
      O => ram2_addr(4)
    );
  ram2_addr_3_OBUF : OBUF
    port map (
      I => ram2_addr_3_OBUF_2337,
      O => ram2_addr(3)
    );
  ram2_addr_2_OBUF : OBUF
    port map (
      I => ram2_addr_2_OBUF_2336,
      O => ram2_addr(2)
    );
  ram2_addr_1_OBUF : OBUF
    port map (
      I => ram2_addr_1_OBUF_2335,
      O => ram2_addr(1)
    );
  ram2_addr_0_OBUF : OBUF
    port map (
      I => ram2_addr_0_OBUF_2328,
      O => ram2_addr(0)
    );
  oRed_2_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oRed(2)
    );
  oRed_1_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oRed(1)
    );
  oRed_0_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oRed(0)
    );
  oBlue_2_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oBlue(2)
    );
  oBlue_1_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oBlue(1)
    );
  oBlue_0_OBUF : OBUF
    port map (
      I => oBlue_0_OBUF_2263,
      O => oBlue(0)
    );
  led_15_OBUF : OBUF
    port map (
      I => IF_ID_regs_imp_instruction_out(7),
      O => led(15)
    );
  led_14_OBUF : OBUF
    port map (
      I => IF_ID_regs_imp_instruction_out(6),
      O => led(14)
    );
  led_13_OBUF : OBUF
    port map (
      I => IF_ID_regs_imp_instruction_out(5),
      O => led(13)
    );
  led_12_OBUF : OBUF
    port map (
      I => IF_ID_regs_imp_instruction_out(4),
      O => led(12)
    );
  led_11_OBUF : OBUF
    port map (
      I => IF_ID_regs_imp_instruction_out(3),
      O => led(11)
    );
  led_10_OBUF : OBUF
    port map (
      I => IF_ID_regs_imp_instruction_out(2),
      O => led(10)
    );
  led_9_OBUF : OBUF
    port map (
      I => IF_ID_regs_imp_instruction_out(1),
      O => led(9)
    );
  led_8_OBUF : OBUF
    port map (
      I => IF_ID_regs_imp_instruction_out(0),
      O => led(8)
    );
  led_7_OBUF : OBUF
    port map (
      I => register_module_imp_registers_imp_regs_0_7_2885,
      O => led(7)
    );
  led_6_OBUF : OBUF
    port map (
      I => register_module_imp_registers_imp_regs_0_6_2884,
      O => led(6)
    );
  led_5_OBUF : OBUF
    port map (
      I => register_module_imp_registers_imp_regs_0_5_2883,
      O => led(5)
    );
  led_4_OBUF : OBUF
    port map (
      I => register_module_imp_registers_imp_regs_0_4_2882,
      O => led(4)
    );
  led_3_OBUF : OBUF
    port map (
      I => register_module_imp_registers_imp_regs_0_3_2881,
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => register_module_imp_registers_imp_regs_0_2_2880,
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => register_module_imp_registers_imp_regs_0_1_2873,
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => register_module_imp_registers_imp_regs_0_0_2872,
      O => led(0)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(2),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_2_rt_779
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(3),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_3_rt_781
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(4),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_4_rt_783
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(5),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_5_rt_785
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(6),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_6_rt_787
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(7),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_7_rt_789
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(8),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_8_rt_791
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(9),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_9_rt_793
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(10),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_10_rt_768
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(11),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_11_rt_770
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(12),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_12_rt_772
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(13),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_13_rt_774
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(14),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_cy_14_rt_776
    );
  DM_imp_Mcompar_judge_cmp_gt0001_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(15),
      O => DM_imp_Mcompar_judge_cmp_gt0001_cy_5_rt_349
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(14),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_14_rt_2147
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(13),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_13_rt_2145
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(12),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_12_rt_2143
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(11),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_11_rt_2141
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(10),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_10_rt_2139
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(9),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_9_rt_2165
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(8),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_8_rt_2163
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(7),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_7_rt_2161
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(6),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_6_rt_2159
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(5),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_5_rt_2157
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(4),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_4_rt_2155
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(3),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_3_rt_2153
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(2),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_2_rt_2151
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(1),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_cy_1_rt_2149
    );
  VGA_Mcount_y_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(7),
      O => VGA_Mcount_y_cy_7_rt_1757
    );
  VGA_Mcount_y_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(6),
      O => VGA_Mcount_y_cy_6_rt_1755
    );
  VGA_Mcount_y_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(5),
      O => VGA_Mcount_y_cy_5_rt_1753
    );
  VGA_Mcount_y_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(4),
      O => VGA_Mcount_y_cy_4_rt_1751
    );
  VGA_Mcount_y_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(3),
      O => VGA_Mcount_y_cy_3_rt_1749
    );
  VGA_Mcount_y_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(2),
      O => VGA_Mcount_y_cy_2_rt_1747
    );
  VGA_Mcount_y_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(1),
      O => VGA_Mcount_y_cy_1_rt_1745
    );
  VGA_Mcount_x_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(8),
      O => VGA_Mcount_x_cy_8_rt_1730
    );
  VGA_Mcount_x_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(7),
      O => VGA_Mcount_x_cy_7_rt_1728
    );
  VGA_Mcount_x_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(6),
      O => VGA_Mcount_x_cy_6_rt_1726
    );
  VGA_Mcount_x_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(5),
      O => VGA_Mcount_x_cy_5_rt_1724
    );
  VGA_Mcount_x_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(4),
      O => VGA_Mcount_x_cy_4_rt_1722
    );
  VGA_Mcount_x_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(3),
      O => VGA_Mcount_x_cy_3_rt_1720
    );
  VGA_Mcount_x_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(2),
      O => VGA_Mcount_x_cy_2_rt_1718
    );
  VGA_Mcount_x_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(1),
      O => VGA_Mcount_x_cy_1_rt_1716
    );
  VGA_Madd_romAddr_add0001_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(6),
      O => VGA_Madd_romAddr_add0001_cy_6_rt_1700
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => instruction_fetch_module_imp_pc_in(15),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_xor_15_rt_2167
    );
  VGA_Mcount_y_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(8),
      O => VGA_Mcount_y_xor_8_rt_1759
    );
  VGA_Mcount_x_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_x(9),
      O => VGA_Mcount_x_xor_9_rt_1742
    );
  VGA_Msub_romAddr_sub0000_cy_8_111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => VGA_y(8),
      I1 => VGA_y(6),
      I2 => VGA_y(7),
      O => VGA_Msub_romAddr_sub0000_cy_8_11_1785
    );
  VGA_Mmux_romData_mux0003_3_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(7),
      I2 => fontData(6),
      O => VGA_Mmux_romData_mux0003_3_f51_1779
    );
  VGA_Mmux_romData_mux0003_3_f52 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(5),
      I2 => fontData(4),
      O => VGA_Mmux_romData_mux0003_3_f52_1780
    );
  VGA_Mmux_romData_mux0003_4_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(3),
      I2 => fontData(2),
      O => VGA_Mmux_romData_mux0003_4_f51_1782
    );
  VGA_Mmux_romData_mux0003_4_f52 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(1),
      I2 => fontData(0),
      O => VGA_Mmux_romData_mux0003_4_f52_1783
    );
  VGA_Mmux_romData_mux0001_3_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(5),
      I2 => fontData(4),
      O => VGA_Mmux_romData_mux0001_3_f51_1771
    );
  VGA_Mmux_romData_mux0001_3_f52 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(3),
      I2 => fontData(2),
      O => VGA_Mmux_romData_mux0001_3_f52_1772
    );
  VGA_Mmux_romData_mux0001_4_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(1),
      I2 => fontData(0),
      O => VGA_Mmux_romData_mux0001_4_f51_1774
    );
  VGA_Mmux_romData_mux0001_4_f52 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(7),
      I2 => fontData(6),
      O => VGA_Mmux_romData_mux0001_4_f52_1775
    );
  VGA_Mmux_romData_mux0000_3_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(3),
      I2 => fontData(2),
      O => VGA_Mmux_romData_mux0000_3_f51_1761
    );
  VGA_Mmux_romData_mux0000_3_f52 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(1),
      I2 => fontData(0),
      O => VGA_Mmux_romData_mux0000_3_f52_1762
    );
  VGA_Mmux_romData_mux0000_4_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(7),
      I2 => fontData(6),
      O => VGA_Mmux_romData_mux0000_4_f51_1765
    );
  VGA_Mmux_romData_mux0000_4_f52 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => VGA_x(0),
      I1 => fontData(5),
      I2 => fontData(4),
      O => VGA_Mmux_romData_mux0000_4_f52_1766
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_1_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(1),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(1)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(2)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(3)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(4),
      I1 => ID_ALU_regs_imp_operand2_out(4),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(4)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_operand2_out(5),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(5)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(6),
      I1 => ID_ALU_regs_imp_operand2_out(6),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(6)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_7_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(7),
      I1 => ID_ALU_regs_imp_operand2_out(7),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(7)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_8_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(8),
      I1 => ID_ALU_regs_imp_operand2_out(8),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(8)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_9_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(9),
      I1 => ID_ALU_regs_imp_operand2_out(9),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(9)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_10_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(10),
      I1 => ID_ALU_regs_imp_operand2_out(10),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(10)
    );
  ALU_imp_tmp_0_207_SW0 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_0_12_137,
      I2 => ALU_imp_tmp_addsub0000(0),
      I3 => ALU_imp_tmp_0_49_141,
      O => N340
    );
  ALU_imp_tmp_0_207 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_tmp_0_171_139,
      I1 => ALU_imp_tmp_0_86_142,
      I2 => N340,
      I3 => ALU_imp_N13,
      O => alu_result_from_alu_tmp(0)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_15_1 : LUT4
    generic map(
      INIT => X"3320"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => N1700,
      I2 => register_module_imp_registers_imp_read_data1_0_46_2765,
      I3 => register_module_imp_registers_imp_read_data1_0_24_2762,
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(15)
    );
  ALU_imp_tmp_2_1_SW1 : LUT4
    generic map(
      INIT => X"AAAB"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(0),
      I1 => ALU_imp_tmp_or000414_305,
      I2 => ALU_imp_tmp_or00044_306,
      I3 => N1607,
      O => N346
    );
  ALU_imp_tmp_3_260_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_tmp_3_75_213,
      I2 => N1610,
      O => N350
    );
  ALU_imp_tmp_2_137_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => N1649,
      I1 => ALU_imp_N27,
      O => N363
    );
  register_module_imp_registers_imp_read_data1_0_60_SW1 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => N1697,
      I2 => immediate_from_id_tmp(0),
      O => N369
    );
  ID_ALU_regs_imp_operand2_out_mux0001_15_SW0 : LUT4
    generic map(
      INIT => X"407F"
    )
    port map (
      I0 => N369,
      I1 => is_hazard_1_to_id_tmp,
      I2 => register_module_imp_registers_imp_read_data1_0_46_2765,
      I3 => N368,
      O => N271
    );
  ID_ALU_regs_imp_operand2_out_mux0001_15_SW1 : LUT4
    generic map(
      INIT => X"407F"
    )
    port map (
      I0 => N442,
      I1 => is_hazard_1_to_id_tmp,
      I2 => register_module_imp_registers_imp_read_data1_0_46_2765,
      I3 => N371,
      O => N272
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_11_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(11),
      I1 => ID_ALU_regs_imp_operand2_out(11),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(11)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_12_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(12),
      I1 => ID_ALU_regs_imp_operand2_out(12),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(12)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_13_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand2_out(13),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(13)
    );
  register_module_imp_registers_imp_read_data1_2_3 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N1638,
      I1 => register_module_imp_registers_imp_sp(2),
      I2 => register_module_imp_registers_imp_varindex0000(2),
      I3 => register_module_imp_registers_imp_N46,
      O => register_module_imp_registers_imp_read_data1_2_3_2806
    );
  register_module_imp_registers_imp_read_data1_3_3 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N40,
      I1 => register_module_imp_registers_imp_sp(3),
      I2 => register_module_imp_registers_imp_varindex0000(3),
      I3 => N1637,
      O => register_module_imp_registers_imp_read_data1_3_3_2810
    );
  register_module_imp_registers_imp_read_data1_0_17 : LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(0),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_0_9_2768,
      I3 => N1679,
      O => register_module_imp_registers_imp_read_data1_0_17_2761
    );
  register_module_imp_registers_imp_read_data1_1_17 : LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(1),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_1_9_2804,
      I3 => register_module_imp_registers_imp_N34,
      O => register_module_imp_registers_imp_read_data1_1_17_2801
    );
  register_module_imp_registers_imp_read_data1_2_17 : LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(2),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_2_9_2808,
      I3 => register_module_imp_registers_imp_N34,
      O => register_module_imp_registers_imp_read_data1_2_17_2805
    );
  register_module_imp_registers_imp_read_data1_3_17 : LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(3),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_3_9_2814,
      I3 => register_module_imp_registers_imp_N34,
      O => register_module_imp_registers_imp_read_data1_3_17_2809
    );
  register_module_imp_registers_imp_read_data1_4_17 : LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(4),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_4_9_2818,
      I3 => register_module_imp_registers_imp_N34,
      O => register_module_imp_registers_imp_read_data1_4_17_2815
    );
  register_module_imp_registers_imp_read_data1_9_17 : LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(9),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_9_9_2838,
      I3 => register_module_imp_registers_imp_N34,
      O => register_module_imp_registers_imp_read_data1_9_17_2835
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_5_1 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => N1689,
      I1 => register_module_imp_registers_imp_read_data1_10_46_2772,
      I2 => bubble_to_id_alu_tmp,
      I3 => register_module_imp_registers_imp_read_data1_10_24_2771,
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(5)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_4_1 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_11_46_2777,
      I2 => bubble_to_id_alu_tmp,
      I3 => register_module_imp_registers_imp_read_data1_11_24_2776,
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(4)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_3_1 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_12_46_2782,
      I2 => bubble_to_id_alu_tmp,
      I3 => register_module_imp_registers_imp_read_data1_12_24_2781,
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(3)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_2_1 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_13_46_2787,
      I2 => bubble_to_id_alu_tmp,
      I3 => register_module_imp_registers_imp_read_data1_13_24_2786,
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(2)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_1_1 : LUT4
    generic map(
      INIT => X"0F08"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_14_46_2792,
      I2 => bubble_to_id_alu_tmp,
      I3 => register_module_imp_registers_imp_read_data1_14_24_2791,
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(1)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_0_1 : LUT4
    generic map(
      INIT => X"3320"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => bubble_to_id_alu_tmp,
      I2 => register_module_imp_registers_imp_read_data1_15_46_2799,
      I3 => register_module_imp_registers_imp_read_data1_15_24_2796,
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(0)
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"9655"
    )
    port map (
      I0 => ALU_imp_tmp_mux0000(0),
      I1 => ID_ALU_regs_imp_operand2_out(0),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(0)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_5_Q : LUT4
    generic map(
      INIT => X"0311"
    )
    port map (
      I0 => N384,
      I1 => bubble_to_id_alu_tmp,
      I2 => N385,
      I3 => branch_relative_reg_data_from_id_tmp(10),
      O => ID_ALU_regs_imp_operand2_out_mux0001(5)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_4_Q : LUT4
    generic map(
      INIT => X"0311"
    )
    port map (
      I0 => N387,
      I1 => bubble_to_id_alu_tmp,
      I2 => N388,
      I3 => branch_relative_reg_data_from_id_tmp(11),
      O => ID_ALU_regs_imp_operand2_out_mux0001(4)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_3_Q : LUT4
    generic map(
      INIT => X"0311"
    )
    port map (
      I0 => N390,
      I1 => bubble_to_id_alu_tmp,
      I2 => N391,
      I3 => branch_relative_reg_data_from_id_tmp(12),
      O => ID_ALU_regs_imp_operand2_out_mux0001(3)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_2_Q : LUT4
    generic map(
      INIT => X"0311"
    )
    port map (
      I0 => N393,
      I1 => bubble_to_id_alu_tmp,
      I2 => N394,
      I3 => branch_relative_reg_data_from_id_tmp(13),
      O => ID_ALU_regs_imp_operand2_out_mux0001(2)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_1_Q : LUT4
    generic map(
      INIT => X"0311"
    )
    port map (
      I0 => N396,
      I1 => bubble_to_id_alu_tmp,
      I2 => N397,
      I3 => branch_relative_reg_data_from_id_tmp(14),
      O => ID_ALU_regs_imp_operand2_out_mux0001(1)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_0_Q : LUT4
    generic map(
      INIT => X"0503"
    )
    port map (
      I0 => N400,
      I1 => N399,
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(15),
      O => ID_ALU_regs_imp_operand2_out_mux0001(0)
    );
  write_back_data_from_alu_tmp_0_9 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(13),
      I2 => ALU_imp_tmp_addsub0000(14),
      I3 => N429,
      O => write_back_data_from_alu_tmp_0_9_3060
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000055 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => register_module_imp_N15,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000044_1674,
      I2 => N444,
      I3 => N445,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000055_1675
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000055 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => register_module_imp_N15,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000044_1670,
      I2 => N447,
      I3 => N448,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000055_1671
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => register_module_imp_N15,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000044_1667,
      I2 => N450,
      I3 => N451,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668
    );
  register_module_imp_decoder_imp_read_reg_1_0_1_SW0 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_13_2_697,
      I1 => IF_ID_regs_imp_instruction_out_15_2_702,
      I2 => IF_ID_regs_imp_instruction_out_11_2_691,
      I3 => N1547,
      O => N125
    );
  write_back_data_from_alu_tmp_0_47 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => alu_result_from_alu_tmp(12),
      I1 => alu_result_from_alu_tmp(11),
      I2 => alu_result_from_alu_tmp(5),
      I3 => N453,
      O => write_back_data_from_alu_tmp_0_47_3056
    );
  write_back_data_from_alu_tmp_0_35_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => alu_result_from_alu_tmp(8),
      I1 => alu_result_from_alu_tmp(9),
      I2 => write_back_data_from_alu_tmp_0_9_3060,
      I3 => alu_result_from_alu_tmp(10),
      O => N455
    );
  register_module_imp_jump_target_out_0_1 : LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      I0 => N458,
      I1 => is_hazard_1_to_id_tmp,
      I2 => register_module_imp_registers_imp_read_data1_0_46_2765,
      I3 => N457,
      O => jump_target_from_id_tmp(0)
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060 : LUT4
    generic map(
      INIT => X"0804"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_reg_out(1),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000055_1675,
      I2 => N462,
      I3 => read_reg_1_from_id(1),
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb
    );
  register_module_imp_decoder_imp_read_reg_1_or000428_SW0 : LUT4
    generic map(
      INIT => X"AF2F"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_11_2_691,
      I1 => IF_ID_regs_imp_instruction_out_13_2_697,
      I2 => IF_ID_regs_imp_instruction_out_12_2_694,
      I3 => IF_ID_regs_imp_instruction_out(14),
      O => N466
    );
  register_module_imp_registers_imp_read_data1_0_32 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(0),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      O => register_module_imp_registers_imp_read_data1_0_32_2763
    );
  ALU_imp_tmp_mux0000_0_1 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(2),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_mux0000(0)
    );
  ALU_imp_tmp_9_48_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_tmp_9_37_263,
      I2 => ALU_imp_N25,
      I3 => ALU_imp_tmp_9_12_259,
      O => N358
    );
  ALU_imp_tmp_10_48_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_tmp_10_37_153,
      I2 => ALU_imp_N25,
      I3 => ALU_imp_tmp_10_12_146,
      O => N360
    );
  ALU_imp_tmp_or000021 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out_2_1_477,
      I1 => ID_ALU_regs_imp_op_code_out_1_1_475,
      I2 => ID_ALU_regs_imp_op_code_out_3_1_479,
      O => ALU_imp_tmp_or0003
    );
  ALU_imp_tmp_2_2_SW1 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out_2_1_477,
      I1 => ID_ALU_regs_imp_op_code_out_3_1_479,
      I2 => ID_ALU_regs_imp_op_code_out_1_1_475,
      I3 => ID_ALU_regs_imp_op_code_out(0),
      O => N471
    );
  ALU_imp_tmp_2_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N1608,
      I1 => ALU_imp_tmp_or00044_306,
      I2 => ALU_imp_tmp_or00049_307,
      I3 => N471,
      O => ALU_imp_N25
    );
  write_back_data_from_alu_tmp_0_47_SW0_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_addsub0000(3),
      I2 => ALU_imp_tmp_addsub0000(4),
      I3 => N1675,
      O => N475
    );
  ALU_imp_tmp_2_31 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALU_imp_tmp_or00049_307,
      I1 => ALU_imp_tmp_or00044_306,
      I2 => ALU_imp_tmp_or000414_305,
      I3 => N1650,
      O => ALU_imp_N27
    );
  VGA_bt_cmp_eq00101 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_x(4),
      I2 => N481,
      I3 => VGA_N87,
      O => VGA_bt_cmp_eq0010
    );
  VGA_romAddr_and0000413_SW0 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => N1592,
      I2 => VGA_romAddr_and0000440_1974,
      I3 => VGA_bt_and0133,
      O => N496
    );
  VGA_romAddr_and0000479 : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => VGA_bt_and0134,
      I1 => N496,
      I2 => N497,
      I3 => VGA_romAddr_and0000338_1971,
      O => VGA_romAddr_and0000
    );
  register_module_imp_decoder_imp_read_reg_1_0_229 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_module_imp_N47,
      I1 => N460,
      I2 => N1694,
      O => register_module_imp_N15
    );
  ALU_imp_tmp_1_277 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_tmp_1_179_195,
      I1 => N503,
      I2 => ALU_imp_tmp_1_58_200,
      I3 => ALU_imp_tmp_1_251_196,
      O => alu_result_from_alu_tmp(1)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_14_Q : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(1),
      I1 => bubble_to_id_alu_tmp,
      I2 => N508,
      I3 => N507,
      O => ID_ALU_regs_imp_operand2_out_mux0001(14)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_13_Q : LUT4
    generic map(
      INIT => X"0305"
    )
    port map (
      I0 => N510,
      I1 => N511,
      I2 => bubble_to_id_alu_tmp,
      I3 => branch_relative_reg_data_from_id_tmp(2),
      O => ID_ALU_regs_imp_operand2_out_mux0001(13)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_12_Q : LUT4
    generic map(
      INIT => X"0123"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(3),
      I1 => bubble_to_id_alu_tmp,
      I2 => N513,
      I3 => N514,
      O => ID_ALU_regs_imp_operand2_out_mux0001(12)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_11_Q : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(4),
      I1 => bubble_to_id_alu_tmp,
      I2 => N517,
      I3 => N516,
      O => ID_ALU_regs_imp_operand2_out_mux0001(11)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_10_Q : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(5),
      I1 => N519,
      I2 => bubble_to_id_alu_tmp,
      I3 => N520,
      O => ID_ALU_regs_imp_operand2_out_mux0001(10)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_9_Q : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(6),
      I1 => N522,
      I2 => bubble_to_id_alu_tmp,
      I3 => N523,
      O => ID_ALU_regs_imp_operand2_out_mux0001(9)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_8_Q : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(7),
      I1 => N525,
      I2 => bubble_to_id_alu_tmp,
      I3 => N526,
      O => ID_ALU_regs_imp_operand2_out_mux0001(8)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_7_Q : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(8),
      I1 => N528,
      I2 => bubble_to_id_alu_tmp,
      I3 => N529,
      O => ID_ALU_regs_imp_operand2_out_mux0001(7)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_6_Q : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => register_module_imp_read_data2_tmp(9),
      I1 => bubble_to_id_alu_tmp,
      I2 => N532,
      I3 => N531,
      O => ID_ALU_regs_imp_operand2_out_mux0001(6)
    );
  VGA_romAddr_and0000239_SW1 : LUT4
    generic map(
      INIT => X"F3B3"
    )
    port map (
      I0 => VGA_bt_and0137,
      I1 => VGA_N1011,
      I2 => VGA_romAddr_and0000274_1969,
      I3 => N1696,
      O => N535
    );
  VGA_romAddr_and0000311 : LUT4
    generic map(
      INIT => X"88A0"
    )
    port map (
      I0 => VGA_romAddr_and000050_1976,
      I1 => N535,
      I2 => N534,
      I3 => VGA_romAddr_and0000200_1968,
      O => VGA_romAddr_and0000311_1970
    );
  ALU_imp_tmp_7_140_SW0 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ALU_imp_N28,
      I1 => ALU_imp_tmp_or0000_302,
      I2 => ALU_imp_tmp_addsub0000(7),
      I3 => ALU_imp_tmp_7_26_248,
      O => N540
    );
  ALU_imp_tmp_8_140_SW0 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => ALU_imp_N28,
      I1 => ALU_imp_tmp_or0000_302,
      I2 => ALU_imp_tmp_8_25_254,
      I3 => ALU_imp_tmp_addsub0000(8),
      O => N542
    );
  ALU_imp_tmp_6_111 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ALU_imp_N22,
      I1 => ALU_imp_Sh34_124,
      I2 => ALU_imp_N25,
      I3 => N544,
      O => ALU_imp_tmp_6_111_237
    );
  register_module_imp_registers_imp_read_data2_15_59 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(15),
      I1 => register_module_imp_registers_imp_read_data2_15_53_2854,
      I2 => register_module_imp_registers_imp_N43,
      I3 => N572,
      O => register_module_imp_read_data2_tmp(15)
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000060 : LUT4
    generic map(
      INIT => X"0900"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(1),
      I1 => read_reg_2_from_id(1),
      I2 => N576,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000055_1679,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu
    );
  ALU_imp_tmp_10_78 : LUT4
    generic map(
      INIT => X"A0EC"
    )
    port map (
      I0 => ALU_imp_N28,
      I1 => ALU_imp_Sh10_104,
      I2 => ALU_imp_tmp_10_63,
      I3 => N588,
      O => ALU_imp_tmp_10_78_156
    );
  VGA_bt_or00101_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(4),
      I2 => VGA_y(5),
      O => N594
    );
  VGA_bt_or00061 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => VGA_y(6),
      I1 => VGA_y(7),
      I2 => VGA_y(8),
      I3 => N596,
      O => VGA_bt_or0006
    );
  ALU_imp_tmp_3_75 : LUT4
    generic map(
      INIT => X"FEDC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ALU_imp_tmp_3_48_212,
      I2 => N598,
      I3 => N599,
      O => ALU_imp_tmp_3_75_213
    );
  ALU_imp_tmp_13_62_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(13),
      I1 => ALU_imp_tmp_cmp_eq0004,
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => N1573,
      O => N615
    );
  ALU_imp_tmp_13_62_SW1 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(13),
      I1 => N1585,
      I2 => ALU_imp_tmp_cmp_eq0004,
      I3 => ALU_imp_tmp_cmp_eq0005,
      O => N616
    );
  ALU_imp_tmp_14_62_SW1 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(14),
      I1 => ALU_imp_tmp_cmp_eq0003,
      I2 => ALU_imp_tmp_cmp_eq0004,
      I3 => ALU_imp_tmp_cmp_eq0005,
      O => N619
    );
  ALU_imp_tmp_14_62 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(14),
      I1 => ALU_imp_N46,
      I2 => N619,
      I3 => N618,
      O => ALU_imp_tmp_14_62_184
    );
  register_module_imp_registers_imp_read_data2_15_59_SW0 : LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_registers_imp_varindex0001(15),
      I2 => register_module_imp_registers_imp_N43,
      I3 => register_module_imp_registers_imp_read_data2_15_53_2854,
      O => N633
    );
  ALU_imp_tmp_mux0000_6_1 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(6),
      I1 => ID_ALU_regs_imp_op_code_out(2),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_mux0000(6)
    );
  ALU_imp_tmp_mux0000_7_1 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(7),
      I1 => ID_ALU_regs_imp_op_code_out(2),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_mux0000(7)
    );
  ALU_imp_tmp_cmp_eq00002 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(0),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_cmp_eq0000
    );
  ALU_imp_tmp_mux0000_1_1 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(1),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(2),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_mux0000(1)
    );
  ALU_imp_tmp_mux0000_2_1 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(2),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_mux0000(2)
    );
  ALU_imp_tmp_mux0000_3_1 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(3),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(2),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_mux0000(3)
    );
  ALU_imp_tmp_mux0000_4_1 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(4),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(2),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_mux0000(4)
    );
  VGA_bt_cmp_le00161_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => VGA_x(5),
      I1 => VGA_x(2),
      I2 => VGA_x(3),
      I3 => VGA_x(4),
      O => N129
    );
  ALU_imp_tmp_mux0000_5_1 : LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(2),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => ALU_imp_tmp_mux0000(5)
    );
  VGA_SF212_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_x(4),
      I2 => VGA_x(6),
      I3 => VGA_x(5),
      O => N637
    );
  VGA_SF212 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => N1654,
      I1 => VGA_x(9),
      I2 => VGA_x(8),
      I3 => N637,
      O => VGA_N94
    );
  register_module_imp_registers_imp_read_data2_2_59_SW0 : LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_registers_imp_varindex0001(2),
      I2 => register_module_imp_registers_imp_N43,
      I3 => N1643,
      O => N641
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000026_SW0 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => ALU_MEM_regs_imp_write_back_reg_out(0),
      I1 => N643,
      I2 => read_reg_2_from_id(3),
      O => N574
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000026_SW0 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(0),
      I1 => N1657,
      I2 => read_reg_2_from_id(3),
      O => N576
    );
  register_module_imp_registers_imp_read_data1_5_61_SW0 : LUT4
    generic map(
      INIT => X"0015"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => is_hazard_1_to_id_tmp,
      I2 => register_module_imp_registers_imp_read_data1_5_46_2821,
      I3 => N1630,
      O => N651
    );
  register_module_imp_registers_imp_read_data1_6_61_SW0 : LUT4
    generic map(
      INIT => X"0015"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => is_hazard_1_to_id_tmp,
      I2 => register_module_imp_registers_imp_read_data1_6_46_2825,
      I3 => N1631,
      O => N653
    );
  register_module_imp_registers_imp_read_data1_7_61_SW0 : LUT4
    generic map(
      INIT => X"0015"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => is_hazard_1_to_id_tmp,
      I2 => register_module_imp_registers_imp_read_data1_7_46_2829,
      I3 => N1632,
      O => N655
    );
  register_module_imp_registers_imp_read_data1_8_61_SW0 : LUT4
    generic map(
      INIT => X"0015"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => is_hazard_1_to_id_tmp,
      I2 => register_module_imp_registers_imp_read_data1_8_46_2833,
      I3 => N1633,
      O => N657
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000026_SW0 : LUT4
    generic map(
      INIT => X"5565"
    )
    port map (
      I0 => ALU_MEM_regs_imp_write_back_reg_out(0),
      I1 => register_module_imp_decoder_imp_read_reg_1_or0004,
      I2 => N1658,
      I3 => N380,
      O => N464
    );
  ALU_imp_tmp_3_260_SW0_SW0 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => N1683,
      I2 => ALU_imp_tmp_addsub0000(3),
      I3 => ALU_imp_tmp_3_75_213,
      O => N665
    );
  ALU_imp_tmp_3_271 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ALU_imp_tmp_3_247_210,
      I1 => ALU_imp_tmp_3_27_211,
      I2 => N665,
      O => alu_result_from_alu_tmp(3)
    );
  register_module_imp_registers_imp_read_data1_3_37 : LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      I0 => write_back_data_from_mem_tmp(3),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I2 => N1526,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      O => register_module_imp_registers_imp_read_data1_3_37_2812
    );
  ALU_imp_tmp_4_177_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_tmp_4_38_223,
      I2 => ALU_imp_tmp_4_25_222,
      I3 => N1651,
      O => N667
    );
  ALU_imp_tmp_4_177 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_tmp_4_10_215,
      I1 => N667,
      I2 => ALU_imp_tmp_4_167_220,
      I3 => ALU_imp_N13,
      O => ALU_imp_tmp_4_177_221
    );
  write_back_data_from_alu_tmp_0_217 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => N455,
      I1 => N670,
      I2 => write_back_data_from_alu_tmp_0_47_3056,
      I3 => N669,
      O => write_back_data_from_alu_tmp(0)
    );
  register_module_imp_decoder_imp_read_reg_1_0_229_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(8),
      I1 => register_module_imp_N47,
      I2 => N460,
      I3 => register_module_imp_decoder_imp_read_reg_1_or0004,
      O => N672
    );
  register_module_imp_decoder_imp_read_reg_1_0_229_SW2 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => register_module_imp_N47,
      I2 => N460,
      I3 => N1671,
      O => N675
    );
  register_module_imp_decoder_imp_read_reg_1_1_39 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => N501,
      I1 => N676,
      I2 => N675,
      I3 => N382,
      O => read_reg_1_from_id(1)
    );
  ALU_imp_tmp_5_110 : LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => N699,
      I3 => ALU_imp_tmp_5_98,
      O => ALU_imp_tmp_5_110_228
    );
  VGA_bt_not0001273 : LUT4
    generic map(
      INIT => X"FDF0"
    )
    port map (
      I0 => VGA_bt_cmp_eq0010,
      I1 => N701,
      I2 => VGA_bt_not0001136_1911,
      I3 => VGA_bt_not0001253_1918,
      O => VGA_bt_not0001273_1919
    );
  register_module_imp_decoder_imp_read_reg_2_or00001_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(10),
      I3 => N1646,
      O => N707
    );
  write_back_data_from_alu_tmp_0_9_SW0_SW0 : LUT4
    generic map(
      INIT => X"FF54"
    )
    port map (
      I0 => ALU_imp_N12,
      I1 => ALU_imp_tmp_13_10_174,
      I2 => ALU_imp_tmp_10_148,
      I3 => N1601,
      O => N711
    );
  register_module_imp_registers_imp_read_data2_0_31 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => read_reg_2_from_id(3),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => N1652,
      O => register_module_imp_registers_imp_N35
    );
  ALU_imp_tmp_3_75_SW0 : LUT4
    generic map(
      INIT => X"E400"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N219,
      I2 => N1589,
      I3 => ALU_imp_tmp_cmp_eq0010,
      O => N598
    );
  register_module_imp_registers_imp_read_data2_1_24_SW0_SW0 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(1),
      I1 => register_module_imp_registers_imp_varindex0001(1),
      I2 => register_module_imp_registers_imp_N39,
      I3 => N1688,
      O => N715
    );
  register_module_imp_registers_imp_read_data2_3_24_SW0_SW0 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(3),
      I1 => register_module_imp_registers_imp_varindex0001(3),
      I2 => register_module_imp_registers_imp_N39,
      I3 => register_module_imp_registers_imp_N43,
      O => N717
    );
  register_module_imp_registers_imp_read_data2_4_24_SW0_SW0 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(4),
      I1 => register_module_imp_registers_imp_varindex0001(4),
      I2 => register_module_imp_registers_imp_N39,
      I3 => register_module_imp_registers_imp_N43,
      O => N719
    );
  register_module_imp_registers_imp_read_data2_6_24_SW0_SW0 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(6),
      I1 => register_module_imp_registers_imp_varindex0001(6),
      I2 => register_module_imp_registers_imp_N39,
      I3 => register_module_imp_registers_imp_N43,
      O => N723
    );
  register_module_imp_registers_imp_read_data2_9_59 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_9_53_2871,
      I1 => N729,
      I2 => register_module_imp_registers_imp_read_data2_9_17_2870,
      O => register_module_imp_read_data2_tmp(9)
    );
  ALU_imp_tmp_1_58 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => N1691,
      I1 => ALU_imp_tmp_1_12_193,
      I2 => ALU_imp_tmp_shift0006(15),
      I3 => ALU_imp_tmp_1_49_199,
      O => ALU_imp_tmp_1_58_200
    );
  ALU_imp_tmp_1_277_SW0 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(3),
      I1 => ALU_imp_N17,
      I2 => ALU_imp_tmp_1_179_195,
      I3 => N1680,
      O => N735
    );
  write_back_data_from_alu_tmp_0_27 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N503,
      I1 => ALU_imp_tmp_1_58_200,
      I2 => N735,
      I3 => alu_result_from_alu_tmp(0),
      O => write_back_data_from_alu_tmp_0_27_3055
    );
  register_module_imp_decoder_imp_read_reg_2_2_1 : LUT4
    generic map(
      INIT => X"E222"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(7),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => N707,
      I3 => N737,
      O => read_reg_2_from_id(2)
    );
  register_module_imp_decoder_imp_read_reg_2_1_1 : LUT4
    generic map(
      INIT => X"EE2E"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(6),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => N707,
      I3 => N739,
      O => read_reg_2_from_id(1)
    );
  ID_ALU_regs_imp_operand2_out_mux0001_12_SW1 : LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(3),
      I2 => register_module_imp_registers_imp_read_data1_3_3_2810,
      I3 => N741,
      O => N514
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000044 : LUT4
    generic map(
      INIT => X"9599"
    )
    port map (
      I0 => ALU_MEM_regs_imp_write_back_reg_out(3),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => N743,
      I3 => N707,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000044_1681
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000044 : LUT4
    generic map(
      INIT => X"9599"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(3),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => N1672,
      I3 => N707,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000044_1678
    );
  ID_ALU_regs_imp_operand2_out_mux0001_5_SW2 : LUT4
    generic map(
      INIT => X"5553"
    )
    port map (
      I0 => N1669,
      I1 => N747,
      I2 => register_module_imp_registers_imp_read_data2_10_53_2844,
      I3 => N562,
      O => N384
    );
  ID_ALU_regs_imp_operand2_out_mux0001_4_SW2 : LUT4
    generic map(
      INIT => X"5553"
    )
    port map (
      I0 => N748,
      I1 => N750,
      I2 => register_module_imp_registers_imp_read_data2_11_53_2846,
      I3 => N564,
      O => N387
    );
  ID_ALU_regs_imp_operand2_out_mux0001_3_SW2 : LUT4
    generic map(
      INIT => X"5553"
    )
    port map (
      I0 => N748,
      I1 => N753,
      I2 => register_module_imp_registers_imp_read_data2_12_53_2848,
      I3 => N566,
      O => N390
    );
  ID_ALU_regs_imp_operand2_out_mux0001_2_SW2 : LUT4
    generic map(
      INIT => X"5553"
    )
    port map (
      I0 => N748,
      I1 => N756,
      I2 => register_module_imp_registers_imp_read_data2_13_53_2850,
      I3 => N568,
      O => N393
    );
  ID_ALU_regs_imp_operand2_out_mux0001_1_SW2 : LUT4
    generic map(
      INIT => X"5553"
    )
    port map (
      I0 => N748,
      I1 => N759,
      I2 => register_module_imp_registers_imp_read_data2_14_53_2852,
      I3 => N570,
      O => N396
    );
  ID_ALU_regs_imp_operand2_out_mux0001_0_SW2 : LUT4
    generic map(
      INIT => X"3327"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_15_53_2854,
      I1 => N748,
      I2 => N762,
      I3 => N572,
      O => N399
    );
  write_back_data_from_alu_tmp_0_64_SW0_SW1 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(0),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      I3 => N366,
      O => N670
    );
  register_module_imp_registers_imp_read_data2_10_17_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(10),
      I1 => N1712,
      O => N765
    );
  register_module_imp_registers_imp_read_data2_10_17_SW1 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(10),
      I1 => register_module_imp_registers_imp_sp(10),
      I2 => N1538,
      I3 => register_module_imp_registers_imp_read_data2_0_4_2842,
      O => N766
    );
  register_module_imp_registers_imp_read_data2_11_17_SW1 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(11),
      I1 => register_module_imp_registers_imp_sp(11),
      I2 => register_module_imp_registers_imp_N42,
      I3 => register_module_imp_registers_imp_read_data2_0_4_2842,
      O => N769
    );
  register_module_imp_registers_imp_read_data2_11_24_SW0 : LUT4
    generic map(
      INIT => X"FBC8"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_11_9_2847,
      I1 => register_module_imp_registers_imp_N35,
      I2 => N769,
      I3 => N768,
      O => N564
    );
  register_module_imp_registers_imp_read_data2_12_17_SW1 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(12),
      I1 => register_module_imp_registers_imp_sp(12),
      I2 => register_module_imp_registers_imp_N42,
      I3 => register_module_imp_registers_imp_read_data2_0_4_2842,
      O => N772
    );
  register_module_imp_registers_imp_read_data2_12_24_SW0 : LUT4
    generic map(
      INIT => X"FBC8"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_12_9_2849,
      I1 => register_module_imp_registers_imp_N35,
      I2 => N772,
      I3 => N771,
      O => N566
    );
  register_module_imp_registers_imp_read_data2_13_17_SW1 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(13),
      I1 => register_module_imp_registers_imp_sp(13),
      I2 => register_module_imp_registers_imp_N42,
      I3 => register_module_imp_registers_imp_read_data2_0_4_2842,
      O => N775
    );
  register_module_imp_registers_imp_read_data2_13_24_SW0 : LUT4
    generic map(
      INIT => X"FBC8"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_13_9_2851,
      I1 => register_module_imp_registers_imp_N35,
      I2 => N775,
      I3 => N774,
      O => N568
    );
  register_module_imp_registers_imp_read_data2_14_17_SW1 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(14),
      I1 => register_module_imp_registers_imp_sp(14),
      I2 => register_module_imp_registers_imp_N42,
      I3 => register_module_imp_registers_imp_read_data2_0_4_2842,
      O => N778
    );
  register_module_imp_registers_imp_read_data2_14_24_SW0 : LUT4
    generic map(
      INIT => X"FBC8"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_14_9_2853,
      I1 => register_module_imp_registers_imp_N35,
      I2 => N778,
      I3 => N777,
      O => N570
    );
  register_module_imp_registers_imp_read_data2_15_17_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(15),
      I1 => N1692,
      O => N780
    );
  register_module_imp_registers_imp_read_data2_15_24_SW0 : LUT4
    generic map(
      INIT => X"FBC8"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_15_9_2855,
      I1 => register_module_imp_registers_imp_N35,
      I2 => N781,
      I3 => N780,
      O => N572
    );
  ALU_imp_tmp_2_77_SW1 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => N705,
      I2 => ALU_imp_Sh98_135,
      O => N787
    );
  ALU_imp_tmp_12_76_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_operand2_out(0),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      I3 => ALU_imp_N25,
      O => N801
    );
  register_module_imp_registers_imp_read_data2_2_33 : LUT4
    generic map(
      INIT => X"0082"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000055_1682,
      I1 => read_reg_2_from_id(1),
      I2 => ALU_MEM_regs_imp_write_back_reg_out(1),
      I3 => N803,
      O => register_module_imp_registers_imp_read_data2_2_33_2859
    );
  ALU_imp_tmp_1_266_SW0_SW0 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_cmp_eq0010,
      I2 => ALU_imp_tmp_addsub0000(1),
      I3 => N805,
      O => N503
    );
  ALU_imp_tmp_2_49 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ALU_imp_N46,
      I2 => N690,
      I3 => N807,
      O => ALU_imp_tmp_2_49_205
    );
  ALU_imp_tmp_7_153 : LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => N809,
      I2 => N540,
      I3 => N354,
      O => alu_result_from_alu_tmp(7)
    );
  ALU_imp_tmp_8_153 : LUT4
    generic map(
      INIT => X"FFCD"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => N542,
      I2 => N811,
      I3 => N356,
      O => alu_result_from_alu_tmp(8)
    );
  ALU_imp_tmp_6_86_SW0 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_6_12_239,
      I2 => ALU_imp_tmp_addsub0000(6),
      I3 => ALU_imp_tmp_6_46_243,
      O => N813
    );
  register_module_imp_decoder_imp_read_reg_1_or000428_SW2 : LUT3
    generic map(
      INIT => X"83"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_11_2_691,
      I1 => IF_ID_regs_imp_instruction_out_13_2_697,
      I2 => N1656,
      O => N815
    );
  ALU_imp_tmp_2_34_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(3),
      I1 => ID_ALU_regs_imp_op_code_out(0),
      I2 => N817,
      O => N690
    );
  ALU_imp_tmp_8_130_SW0 : LUT4
    generic map(
      INIT => X"001F"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_N25,
      I2 => ALU_imp_N5,
      I3 => ALU_imp_tmp_8_113_252,
      O => N811
    );
  ALU_imp_tmp_0_43_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => ID_ALU_regs_imp_operand2_out(1),
      O => N785
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb_and000060 : LUT4
    generic map(
      INIT => X"0082"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb_and000049_1684,
      I1 => read_reg_2_from_id(0),
      I2 => MEM_WB_regs_imp_write_back_reg_out(0),
      I3 => N819,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb
    );
  register_module_imp_decoder_imp_read_reg_2_0_1 : LUT4
    generic map(
      INIT => X"EE2E"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(5),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => N707,
      I3 => N823,
      O => read_reg_2_from_id(0)
    );
  register_module_imp_registers_imp_read_data2_2_59_SW2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => N1517,
      O => N826
    );
  ID_ALU_regs_imp_operand2_out_mux0001_13_SW0 : LUT4
    generic map(
      INIT => X"3237"
    )
    port map (
      I0 => N1663,
      I1 => N826,
      I2 => register_module_imp_registers_imp_read_data2_2_17_2858,
      I3 => N825,
      O => N510
    );
  write_back_data_from_alu_tmp_2_53 : LUT4
    generic map(
      INIT => X"FCFA"
    )
    port map (
      I0 => N828,
      I1 => N829,
      I2 => write_back_data_from_alu_tmp_2_5_3086,
      I3 => alu_result_from_alu_tmp(2),
      O => write_back_data_from_alu_tmp(2)
    );
  ALU_imp_tmp_2_112_SW0 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_2_12_203,
      I2 => ALU_imp_tmp_addsub0000(2),
      I3 => ALU_imp_tmp_2_102_202,
      O => N831
    );
  ALU_imp_tmp_2_156 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_tmp_2_49_205,
      I1 => ALU_imp_N13,
      I2 => N831,
      I3 => ALU_imp_tmp_2_137_204,
      O => alu_result_from_alu_tmp(2)
    );
  ALU_imp_tmp_6_136_SW0 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ALU_imp_N12,
      I1 => ALU_imp_tmp_6_122_240,
      I2 => ALU_imp_tmp_6_79_245,
      I3 => ALU_imp_tmp_6_119_238,
      O => N833
    );
  ALU_imp_tmp_6_163 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_tmp_6_111_237,
      I1 => N813,
      I2 => N833,
      I3 => ALU_imp_N13,
      O => alu_result_from_alu_tmp(6)
    );
  register_module_imp_registers_imp_read_data1_1_46 : LUT4
    generic map(
      INIT => X"80DF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => write_back_data_from_alu_tmp(1),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => N835,
      O => register_module_imp_registers_imp_read_data1_1_46_2803
    );
  VGA_bt_not0001240_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => VGA_x(8),
      I1 => VGA_x(7),
      O => N837
    );
  VGA_bt_cmp_ge00162_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => VGA_x(9),
      I1 => VGA_x(8),
      O => N839
    );
  VGA_bt_not0001563_SW1 : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => N1583,
      I1 => VGA_bt_not0001536_1925,
      I2 => VGA_N101,
      I3 => VGA_bt_and0133,
      O => N849
    );
  VGA_bt_not0001622 : LUT4
    generic map(
      INIT => X"88A0"
    )
    port map (
      I0 => VGA_bt_not000118_1914,
      I1 => N849,
      I2 => N848,
      I3 => VGA_bt_not0001483_1923,
      O => VGA_bt_not0001
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000044 : LUT4
    generic map(
      INIT => X"A9AA"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_reg_out(3),
      I1 => register_module_imp_decoder_imp_read_reg_1_or0004,
      I2 => register_module_imp_decoder_imp_read_reg_1_3_16_2457,
      I3 => N851,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000044_1674
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000044 : LUT4
    generic map(
      INIT => X"A9AA"
    )
    port map (
      I0 => ALU_MEM_regs_imp_write_back_reg_out(3),
      I1 => register_module_imp_decoder_imp_read_reg_1_or0004,
      I2 => register_module_imp_decoder_imp_read_reg_1_3_16_2457,
      I3 => N851,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000044_1670
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000044 : LUT4
    generic map(
      INIT => X"A9AA"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(3),
      I1 => register_module_imp_decoder_imp_read_reg_1_or0004,
      I2 => register_module_imp_decoder_imp_read_reg_1_3_16_2457,
      I3 => N1690,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000044_1667
    );
  VGA_bt_not0001377 : LUT4
    generic map(
      INIT => X"DF80"
    )
    port map (
      I0 => VGA_bt_not0001123_1910,
      I1 => N858,
      I2 => VGA_bt_not0001273_1919,
      I3 => N857,
      O => VGA_bt_not0001377_1921
    );
  register_module_imp_registers_imp_read_data1_1_61_SW2 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => N1518,
      O => N861
    );
  ID_ALU_regs_imp_operand2_out_mux0001_14_SW0 : LUT4
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N861,
      I1 => register_module_imp_registers_imp_read_data1_1_17_2801,
      I2 => N860,
      I3 => N1617,
      O => N507
    );
  register_module_imp_registers_imp_read_data1_3_61_SW2 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => immediate_from_id_tmp(3),
      O => N864
    );
  register_module_imp_registers_imp_read_data1_4_61_SW2 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => immediate_from_id_tmp(4),
      O => N867
    );
  ID_ALU_regs_imp_operand2_out_mux0001_11_SW0 : LUT4
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N867,
      I1 => register_module_imp_registers_imp_read_data1_4_17_2815,
      I2 => N866,
      I3 => N1618,
      O => N516
    );
  register_module_imp_registers_imp_read_data1_5_61_SW2 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => N1521,
      O => N870
    );
  ID_ALU_regs_imp_operand2_out_mux0001_10_SW0 : LUT4
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N870,
      I1 => register_module_imp_registers_imp_read_data1_5_17_2819,
      I2 => N869,
      I3 => N1619,
      O => N519
    );
  register_module_imp_registers_imp_read_data1_6_61_SW2 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => immediate_from_id_tmp(6),
      O => N873
    );
  ID_ALU_regs_imp_operand2_out_mux0001_9_SW0 : LUT4
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N873,
      I1 => register_module_imp_registers_imp_read_data1_6_17_2823,
      I2 => N872,
      I3 => N1620,
      O => N522
    );
  register_module_imp_registers_imp_read_data1_7_61_SW2 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => N1520,
      O => N876
    );
  ID_ALU_regs_imp_operand2_out_mux0001_8_SW0 : LUT4
    generic map(
      INIT => X"5457"
    )
    port map (
      I0 => N876,
      I1 => register_module_imp_registers_imp_read_data1_7_17_2827,
      I2 => N1621,
      I3 => N875,
      O => N525
    );
  register_module_imp_registers_imp_read_data1_8_61_SW2 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => N1530,
      O => N879
    );
  ID_ALU_regs_imp_operand2_out_mux0001_7_SW0 : LUT4
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N879,
      I1 => register_module_imp_registers_imp_read_data1_8_17_2831,
      I2 => N878,
      I3 => N1622,
      O => N528
    );
  register_module_imp_registers_imp_read_data1_9_61_SW2 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => N1528,
      O => N882
    );
  ID_ALU_regs_imp_operand2_out_mux0001_6_SW0 : LUT4
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N882,
      I1 => register_module_imp_registers_imp_read_data1_9_17_2835,
      I2 => N881,
      I3 => N1623,
      O => N531
    );
  register_module_imp_registers_imp_read_data2_10_59_SW0_SW0 : LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_registers_imp_varindex0001(10),
      I2 => register_module_imp_registers_imp_N43,
      I3 => N1670,
      O => N884
    );
  register_module_imp_registers_imp_read_data2_11_59_SW0_SW0 : LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_registers_imp_varindex0001(11),
      I2 => register_module_imp_registers_imp_N43,
      I3 => N564,
      O => N886
    );
  register_module_imp_registers_imp_read_data2_12_59_SW0_SW0 : LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_registers_imp_varindex0001(12),
      I2 => register_module_imp_registers_imp_N43,
      I3 => N566,
      O => N888
    );
  register_module_imp_registers_imp_read_data2_13_59_SW0_SW0 : LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_registers_imp_varindex0001(13),
      I2 => register_module_imp_registers_imp_N43,
      I3 => N568,
      O => N890
    );
  register_module_imp_registers_imp_read_data2_14_59_SW0_SW0 : LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_registers_imp_varindex0001(14),
      I2 => register_module_imp_registers_imp_N43,
      I3 => N570,
      O => N892
    );
  register_module_imp_registers_imp_read_data1_6_46 : LUT4
    generic map(
      INIT => X"80DF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => write_back_data_from_alu_tmp(6),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => N894,
      O => register_module_imp_registers_imp_read_data1_6_46_2825
    );
  VGA_bt_or00081 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => VGA_y(6),
      I1 => VGA_y(7),
      I2 => VGA_y(8),
      I3 => N898,
      O => VGA_bt_or0008
    );
  VGA_bt_cmp_le00192_SW0_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_x(2),
      I2 => VGA_x(1),
      O => N900
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_14_Q : LUT4
    generic map(
      INIT => X"9C63"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(14),
      I1 => ID_ALU_regs_imp_operand1_out(14),
      I2 => ALU_imp_tmp_or0003,
      I3 => ALU_imp_tmp_cmp_eq0000,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(14)
    );
  ALU_imp_tmp_mux0000_8_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(8),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      O => ALU_imp_tmp_mux0000(8)
    );
  ALU_imp_tmp_mux0000_9_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(9),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      O => ALU_imp_tmp_mux0000(9)
    );
  register_module_imp_jump_target_out_10_1 : LUT4
    generic map(
      INIT => X"DD8D"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(10),
      I2 => N904,
      I3 => register_module_imp_registers_imp_read_data1_10_24_2771,
      O => jump_target_from_id_tmp(10)
    );
  register_module_imp_jump_target_out_11_1 : LUT4
    generic map(
      INIT => X"DD8D"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(11),
      I2 => N906,
      I3 => register_module_imp_registers_imp_read_data1_11_24_2776,
      O => jump_target_from_id_tmp(11)
    );
  register_module_imp_jump_target_out_12_1 : LUT4
    generic map(
      INIT => X"DD8D"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(12),
      I2 => N908,
      I3 => register_module_imp_registers_imp_read_data1_12_24_2781,
      O => jump_target_from_id_tmp(12)
    );
  register_module_imp_jump_target_out_13_1 : LUT4
    generic map(
      INIT => X"DD8D"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(13),
      I2 => N910,
      I3 => register_module_imp_registers_imp_read_data1_13_24_2786,
      O => jump_target_from_id_tmp(13)
    );
  register_module_imp_jump_target_out_14_1 : LUT4
    generic map(
      INIT => X"DD8D"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(14),
      I2 => N912,
      I3 => register_module_imp_registers_imp_read_data1_14_24_2791,
      O => jump_target_from_id_tmp(14)
    );
  ALU_imp_tmp_4_189_SW0 : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_data_from_reg_out(4),
      I1 => ID_ALU_regs_imp_wb_src_out(2),
      I2 => ALU_imp_tmp_or0000_302,
      I3 => ALU_imp_tmp_addsub0000(4),
      O => N919
    );
  ALU_imp_tmp_4_189_SW1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(4),
      O => N920
    );
  ALU_imp_tmp_9_177_SW0 : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_data_from_reg_out(9),
      I1 => ID_ALU_regs_imp_wb_src_out(2),
      I2 => ALU_imp_tmp_or0000_302,
      I3 => ALU_imp_tmp_addsub0000(9),
      O => N922
    );
  ALU_imp_tmp_9_177_SW1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(9),
      O => N923
    );
  write_back_data_from_alu_tmp_0_166_SW0 : LUT4
    generic map(
      INIT => X"0511"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => N925,
      I2 => N926,
      I3 => alu_result_from_alu_tmp(0),
      O => N365
    );
  register_module_imp_jump_target_out_15_1 : LUT4
    generic map(
      INIT => X"D8DD"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => branch_target_from_id_tmp(15),
      I2 => register_module_imp_registers_imp_read_data1_15_24_2796,
      I3 => N928,
      O => jump_target_from_id_tmp(15)
    );
  ALU_imp_tmp_3_271_SW0 : LUT4
    generic map(
      INIT => X"CDFD"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_data_from_reg_out(3),
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      I3 => ALU_imp_tmp_3_27_211,
      O => N933
    );
  ALU_imp_tmp_3_271_SW1 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(3),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      O => N934
    );
  register_module_imp_registers_imp_read_data1_5_46 : LUT4
    generic map(
      INIT => X"80DF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => write_back_data_from_alu_tmp(5),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => N603,
      O => register_module_imp_registers_imp_read_data1_5_46_2821
    );
  register_module_imp_registers_imp_read_data1_9_46 : LUT4
    generic map(
      INIT => X"80DF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => write_back_data_from_alu_tmp(9),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => N607,
      O => register_module_imp_registers_imp_read_data1_9_46_2837
    );
  register_module_imp_registers_imp_read_data1_7_46 : LUT4
    generic map(
      INIT => X"8F07"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => N609,
      I3 => write_back_data_from_alu_tmp(7),
      O => register_module_imp_registers_imp_read_data1_7_46_2829
    );
  register_module_imp_registers_imp_read_data1_8_46 : LUT4
    generic map(
      INIT => X"80DF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => write_back_data_from_alu_tmp(8),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => N611,
      O => register_module_imp_registers_imp_read_data1_8_46_2833
    );
  register_module_imp_registers_imp_read_data1_4_46 : LUT4
    generic map(
      INIT => X"80DF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => write_back_data_from_alu_tmp(4),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => N621,
      O => register_module_imp_registers_imp_read_data1_4_46_2817
    );
  register_module_imp_registers_imp_read_data1_0_31_SW0 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => N1550,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I2 => UAL_hazard_detector_imp_stall53_1688,
      O => N950
    );
  ALU_imp_tmp_1_251_SW0 : LUT4
    generic map(
      INIT => X"B800"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => ALU_imp_N01,
      I3 => ALU_imp_N27,
      O => N952
    );
  ALU_imp_tmp_1_179 : LUT4
    generic map(
      INIT => X"2A08"
    )
    port map (
      I0 => ALU_imp_tmp_0_91,
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => N954,
      I3 => ALU_imp_tmp_1_136_194,
      O => ALU_imp_tmp_1_179_195
    );
  ALU_imp_tmp_9_76_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ALU_imp_tmp_or000414_305,
      I3 => N1606,
      O => N958
    );
  ALU_imp_tmp_4_80_SW0 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(3),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      O => N973
    );
  ALU_imp_tmp_4_127_SW0 : LUT4
    generic map(
      INIT => X"3F5F"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(8),
      I1 => ID_ALU_regs_imp_operand1_out(9),
      I2 => ID_ALU_regs_imp_operand2_out(2),
      I3 => ID_ALU_regs_imp_operand2_out(0),
      O => N975
    );
  ALU_imp_tmp_4_127 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N976,
      I3 => N975,
      O => ALU_imp_tmp_4_127_217
    );
  ALU_imp_tmp_7_130_SW0_SW0 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => ALU_imp_tmp_or00044_306,
      I1 => ALU_imp_tmp_or000414_305,
      I2 => N477,
      I3 => N473,
      O => N982
    );
  ALU_imp_tmp_7_130_SW0 : LUT4
    generic map(
      INIT => X"00EF"
    )
    port map (
      I0 => ALU_imp_tmp_or00049_307,
      I1 => N982,
      I2 => ALU_imp_tmp_7_111_246,
      I3 => N896,
      O => N809
    );
  ALU_imp_tmp_4_89_SW0 : LUT4
    generic map(
      INIT => X"F3F5"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(4),
      I1 => ID_ALU_regs_imp_operand1_out(3),
      I2 => ID_ALU_regs_imp_operand2_out(2),
      I3 => ID_ALU_regs_imp_operand2_out(0),
      O => N987
    );
  ALU_imp_tmp_4_89 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N988,
      I3 => N987,
      O => ALU_imp_tmp_4_89_226
    );
  ALU_imp_tmp_9_110 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(9),
      I1 => N1681,
      I2 => N994,
      O => ALU_imp_tmp_9_110_258
    );
  ALU_imp_tmp_4_115 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(4),
      I1 => N993,
      I2 => N1682,
      O => ALU_imp_tmp_4_115_216
    );
  register_module_imp_registers_imp_read_data1_10_60 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_10_46_2772,
      I2 => register_module_imp_registers_imp_read_data1_10_17_2770,
      I3 => N1005,
      O => branch_relative_reg_data_from_id_tmp(10)
    );
  register_module_imp_registers_imp_read_data1_11_60 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_11_46_2777,
      I2 => register_module_imp_registers_imp_read_data1_11_17_2775,
      I3 => N1007,
      O => branch_relative_reg_data_from_id_tmp(11)
    );
  register_module_imp_registers_imp_read_data1_12_60 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_12_46_2782,
      I2 => register_module_imp_registers_imp_read_data1_12_17_2780,
      I3 => N1009,
      O => branch_relative_reg_data_from_id_tmp(12)
    );
  register_module_imp_registers_imp_read_data1_13_60 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_13_46_2787,
      I2 => register_module_imp_registers_imp_read_data1_13_17_2785,
      I3 => N10111,
      O => branch_relative_reg_data_from_id_tmp(13)
    );
  register_module_imp_registers_imp_read_data1_14_60 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_14_46_2792,
      I2 => register_module_imp_registers_imp_read_data1_14_17_2790,
      I3 => N1013,
      O => branch_relative_reg_data_from_id_tmp(14)
    );
  register_module_imp_registers_imp_read_data1_15_60 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_15_17_2795,
      I2 => register_module_imp_registers_imp_read_data1_15_46_2799,
      I3 => N1015,
      O => branch_relative_reg_data_from_id_tmp(15)
    );
  ALU_imp_tmp_7_79_SW0 : LUT3
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => ALU_imp_tmp_7_74_251,
      I1 => ALU_imp_tmp_7_57_249,
      I2 => ALU_imp_N27,
      O => N1025
    );
  ALU_imp_tmp_7_33_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_tmp_7_64_250,
      I1 => N1025,
      I2 => ALU_imp_tmp_7_12_247,
      I3 => N1614,
      O => N354
    );
  register_module_imp_registers_imp_read_data1_10_1_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => N1642,
      O => N1027
    );
  register_module_imp_registers_imp_read_data1_10_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I1 => register_module_imp_registers_imp_sp(10),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => N1027,
      O => register_module_imp_registers_imp_read_data1_10_1_2769
    );
  register_module_imp_registers_imp_read_data1_11_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I1 => register_module_imp_registers_imp_sp(11),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => N1027,
      O => register_module_imp_registers_imp_read_data1_11_1_2774
    );
  register_module_imp_registers_imp_read_data1_12_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I1 => register_module_imp_registers_imp_sp(12),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => N1027,
      O => register_module_imp_registers_imp_read_data1_12_1_2779
    );
  register_module_imp_registers_imp_read_data1_13_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I1 => register_module_imp_registers_imp_sp(13),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => N1027,
      O => register_module_imp_registers_imp_read_data1_13_1_2784
    );
  register_module_imp_registers_imp_read_data1_14_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I1 => register_module_imp_registers_imp_sp(14),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => N1027,
      O => register_module_imp_registers_imp_read_data1_14_1_2789
    );
  register_module_imp_registers_imp_read_data1_15_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I1 => register_module_imp_registers_imp_sp(15),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => N1027,
      O => register_module_imp_registers_imp_read_data1_15_1_2794
    );
  register_module_imp_registers_imp_read_data1_0_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I1 => register_module_imp_registers_imp_sp(0),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => N1027,
      O => register_module_imp_registers_imp_read_data1_0_1_2760
    );
  VGA_romAddr_and0000274 : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => VGA_bt_cmp_eq0005_1859,
      I1 => VGA_N110,
      I2 => VGA_bt_and0137,
      I3 => N1044,
      O => VGA_romAddr_and0000274_1969
    );
  ALU_imp_Maddsub_tmp_addsub0000_lut_15_Q : LUT4
    generic map(
      INIT => X"96C3"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(15),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ALU_imp_tmp_cmp_eq0000,
      I3 => ALU_imp_tmp_or0003,
      O => ALU_imp_Maddsub_tmp_addsub0000_lut(15)
    );
  VGA_bt_mux0000_1_234 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => VGA_romData_mux0002,
      I1 => VGA_bt_and0138_1851,
      I2 => VGA_bt_and0137,
      I3 => VGA_bt_mux0000_1_224_1900,
      O => VGA_bt_mux0000_1_234_1901
    );
  register_module_imp_decoder_imp_immediate_4_32 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0000,
      I1 => IF_ID_regs_imp_instruction_out(3),
      I2 => IF_ID_regs_imp_instruction_out(4),
      I3 => register_module_imp_decoder_imp_immediate_4_18_2448,
      O => immediate_from_id_tmp(4)
    );
  register_module_imp_registers_imp_read_data2_1_40_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(1),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      O => N1050
    );
  ALU_imp_tmp_12_58_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(12),
      I1 => ALU_imp_tmp_cmp_eq0004,
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ALU_imp_tmp_cmp_eq0006,
      O => N1052
    );
  ALU_imp_tmp_12_58 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(12),
      I1 => ALU_imp_N46,
      I2 => N1053,
      I3 => N1052,
      O => ALU_imp_tmp_12_58_172
    );
  VGA_bt_mux0000_1_314_SW0 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => VGA_bt_mux0000_1_173_1893,
      I1 => VGA_bt_mux0000_1_174,
      I2 => VGA_bt_mux0000_1_257_1903,
      I3 => VGA_bt_mux0000_1_190_1897,
      O => N1055
    );
  register_module_imp_decoder_imp_read_reg_1_0_223_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => N1057,
      O => N460
    );
  register_module_imp_registers_imp_read_data1_13_46_SW0 : LUT4
    generic map(
      INIT => X"353F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(13),
      I1 => write_back_data_from_mem_tmp(13),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      O => N1065
    );
  register_module_imp_registers_imp_read_data1_14_46_SW0 : LUT4
    generic map(
      INIT => X"353F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(14),
      I1 => write_back_data_from_mem_tmp(14),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      O => N1067
    );
  register_module_imp_registers_imp_read_data1_9_61_SW0_SW1 : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => IF_ID_regs_imp_instruction_out(9),
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => register_module_imp_N63,
      O => N1023
    );
  register_module_imp_Madd_branch_target_out_lut_5_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(5),
      I1 => register_module_imp_N12,
      I2 => IF_ID_regs_imp_instruction_out(5),
      I3 => register_module_imp_N17,
      O => register_module_imp_Madd_branch_target_out_lut(5)
    );
  register_module_imp_Madd_branch_target_out_lut_6_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(6),
      I1 => register_module_imp_N12,
      I2 => IF_ID_regs_imp_instruction_out(6),
      I3 => register_module_imp_N17,
      O => register_module_imp_Madd_branch_target_out_lut(6)
    );
  register_module_imp_Madd_branch_target_out_lut_7_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(7),
      I1 => register_module_imp_N12,
      I2 => IF_ID_regs_imp_instruction_out(7),
      I3 => register_module_imp_N17,
      O => register_module_imp_Madd_branch_target_out_lut(7)
    );
  register_module_imp_Madd_branch_target_out_lut_8_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(8),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(8),
      O => register_module_imp_Madd_branch_target_out_lut(8)
    );
  register_module_imp_Madd_branch_target_out_lut_9_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(9),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(9),
      O => register_module_imp_Madd_branch_target_out_lut(9)
    );
  register_module_imp_Madd_branch_target_out_lut_10_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(10),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_Madd_branch_target_out_lut(10)
    );
  register_module_imp_Madd_branch_target_out_lut_11_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(11),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_Madd_branch_target_out_lut(11)
    );
  register_module_imp_Madd_branch_target_out_lut_12_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(12),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_Madd_branch_target_out_lut(12)
    );
  register_module_imp_Madd_branch_target_out_lut_13_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(13),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_Madd_branch_target_out_lut(13)
    );
  register_module_imp_Madd_branch_target_out_lut_14_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(14),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_Madd_branch_target_out_lut(14)
    );
  ALU_imp_tmp_mux0000_10_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(10),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      O => ALU_imp_tmp_mux0000(10)
    );
  ALU_imp_tmp_mux0000_11_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      O => ALU_imp_tmp_mux0000(11)
    );
  ALU_imp_tmp_mux0000_12_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(12),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      O => ALU_imp_tmp_mux0000(12)
    );
  ALU_imp_tmp_mux0000_13_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(13),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      O => ALU_imp_tmp_mux0000(13)
    );
  ALU_imp_tmp_mux0000_14_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(14),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      O => ALU_imp_tmp_mux0000(14)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"3633"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(0),
      I1 => ID_ALU_regs_imp_pc_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      I3 => ID_ALU_regs_imp_wb_src_out(1),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_lut(0)
    );
  Madd_write_back_data_from_alu_tmp_addsub0000_lut_1_Q : LUT4
    generic map(
      INIT => X"A9AA"
    )
    port map (
      I0 => ID_ALU_regs_imp_pc_out(1),
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      I3 => ID_ALU_regs_imp_wb_src_out(1),
      O => Madd_write_back_data_from_alu_tmp_addsub0000_lut(1)
    );
  register_module_imp_controller_imp_operand2_src_cmp_eq00011 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => IF_ID_regs_imp_instruction_out(14),
      I3 => N1555,
      O => register_module_imp_controller_imp_operand2_src_cmp_eq0001
    );
  VGA_x_cmp_eq000011 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => VGA_x(1),
      I1 => VGA_x(2),
      I2 => VGA_x(3),
      O => VGA_N41
    );
  ALU_imp_tmp_15_24_SW0 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(3),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => ID_ALU_regs_imp_op_code_out(0),
      O => N635
    );
  ALU_imp_tmp_1_69 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALU_imp_tmp_or00049_307,
      I1 => ALU_imp_tmp_or00044_306,
      I2 => ALU_imp_tmp_or000414_305,
      I3 => N1071,
      O => ALU_imp_tmp_0_91
    );
  VGA_romAddr_mux0053_9_11 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => VGA_bt_and0138_1851,
      I1 => VGA_bt_cmp_ge0015,
      I2 => VGA_bt_cmp_le0015,
      O => VGA_N12
    );
  VGA_bt_mux0000_0_1339 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => VGA_bt_cmp_ge0015,
      I1 => VGA_bt_and0140,
      I2 => VGA_bt_cmp_le0015,
      O => VGA_bt_mux0000_0_1339_1889
    );
  VGA_bt_cmp_eq0005 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_x(2),
      I1 => N1073,
      I2 => VGA_x(1),
      I3 => VGA_N46,
      O => VGA_bt_cmp_eq0005_1859
    );
  VGA_romAddr_and0000115_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => VGA_bt_cmp_le0019,
      I1 => N1582,
      I2 => VGA_bt_cmp_eq0011,
      O => N1075
    );
  VGA_romAddr_and00001281 : LUT4
    generic map(
      INIT => X"C444"
    )
    port map (
      I0 => VGA_N94,
      I1 => VGA_N210,
      I2 => N1075,
      I3 => N1644,
      O => VGA_romAddr_and00001281_1965
    );
  ALU_imp_tmp_5_69_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      O => N1077
    );
  register_module_imp_registers_imp_read_data1_15_37 : LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      I0 => write_back_data_from_mem_tmp(15),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      O => register_module_imp_registers_imp_read_data1_15_37_2798
    );
  register_module_imp_registers_imp_read_data1_0_37 : LUT4
    generic map(
      INIT => X"2A00"
    )
    port map (
      I0 => write_back_data_from_mem_tmp(0),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => N1640,
      O => register_module_imp_registers_imp_read_data1_0_37_2764
    );
  ALU_imp_tmp_8_33_SW0 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => N914,
      I1 => ALU_imp_tmp_8_12_253,
      I2 => ALU_imp_tmp_shift0006(15),
      I3 => ALU_imp_tmp_8_79_257,
      O => N356
    );
  register_module_imp_registers_imp_read_data1_0_24_SW3 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I1 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I2 => register_module_imp_controller_imp_operand2_src_or000014_2444,
      I3 => immediate_from_id_tmp(0),
      O => N442
    );
  VGA_bt_mux0000_1_42 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => VGA_bt_mux0000_1_18_1896,
      I1 => VGA_bt_and0134,
      I2 => VGA_romData_mux0002,
      I3 => VGA_bt_mux0000_1_25_1902,
      O => VGA_bt_mux0000_1_42_1906
    );
  ALU_imp_tmp_11_37 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(0),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      I3 => ALU_imp_N22,
      O => ALU_imp_tmp_11_37_164
    );
  ALU_imp_tmp_6_41 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => N1557,
      O => ALU_imp_tmp_6_41_242
    );
  ALU_imp_tmp_1_43 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => N1562,
      O => ALU_imp_tmp_1_43_198
    );
  register_module_imp_decoder_imp_read_reg_1_0_229_SW1 : LUT4
    generic map(
      INIT => X"FF91"
    )
    port map (
      I0 => N378,
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => N1081,
      O => N673
    );
  register_module_imp_decoder_imp_read_reg_1_0_229_SW3_SW0 : LUT4
    generic map(
      INIT => X"AEBF"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => IF_ID_regs_imp_instruction_out(15),
      I2 => N1641,
      I3 => N466,
      O => N1083
    );
  register_module_imp_decoder_imp_read_reg_1_0_229_SW3 : LUT4
    generic map(
      INIT => X"FF91"
    )
    port map (
      I0 => N378,
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => N1083,
      O => N676
    );
  register_module_imp_registers_imp_read_data2_6_41_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(6),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      O => N1091
    );
  ALU_imp_tmp_4_25_SW1 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N206,
      I2 => N1600,
      O => N1101
    );
  ALU_imp_tmp_4_25 : LUT4
    generic map(
      INIT => X"2031"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      I2 => ALU_imp_Sh96_133,
      I3 => N1101,
      O => ALU_imp_tmp_4_25_222
    );
  ALU_imp_tmp_8_57 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(8),
      I1 => ID_ALU_regs_imp_operand2_out(8),
      I2 => N994,
      I3 => N993,
      O => ALU_imp_tmp_8_57_255
    );
  ALU_imp_tmp_5_41_SW0 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_operand2_out(5),
      I2 => N994,
      I3 => N993,
      O => N703
    );
  VGA_romAddr_and00001248_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => VGA_x(5),
      I1 => VGA_x(4),
      I2 => VGA_x(3),
      O => N1114
    );
  register_module_imp_registers_imp_read_data2_0_4_SW1 : LUT4
    generic map(
      INIT => X"C4CC"
    )
    port map (
      I0 => ALU_MEM_regs_imp_write_back_reg_out(1),
      I1 => read_reg_2_from_id(1),
      I2 => N574,
      I3 => N1546,
      O => N1116
    );
  ALU_imp_tmp_3_23_SW0 : LUT4
    generic map(
      INIT => X"E400"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N195,
      I2 => N196,
      I3 => N1572,
      O => N1118
    );
  ALU_imp_tmp_3_23 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(3),
      I2 => ALU_imp_tmp_cmp_eq0010,
      I3 => N1118,
      O => ALU_imp_tmp_3_23_209
    );
  ALU_imp_tmp_5_86_SW0 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => ALU_imp_tmp_or0000_302,
      I1 => ALU_imp_tmp_5_12_230,
      I2 => ALU_imp_tmp_addsub0000(5),
      I3 => ALU_imp_tmp_5_46_232,
      O => N1126
    );
  ALU_imp_tmp_9_76_SW0_SW1 : LUT4
    generic map(
      INIT => X"EAFF"
    )
    port map (
      I0 => ALU_imp_tmp_or00049_307,
      I1 => N1648,
      I2 => N477,
      I3 => ALU_imp_Sh73_129,
      O => N1128
    );
  ALU_imp_tmp_9_78 : LUT4
    generic map(
      INIT => X"F111"
    )
    port map (
      I0 => N958,
      I1 => N1128,
      I2 => ALU_imp_N28,
      I3 => N1616,
      O => ALU_imp_tmp_9_78_264
    );
  VGA_romAddr_and0000200 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => VGA_romAddr_and0000198_1967,
      I1 => VGA_bt_and0139,
      I2 => VGA_romAddr_and0000165_1966,
      I3 => N1132,
      O => VGA_romAddr_and0000200_1968
    );
  register_module_imp_decoder_imp_read_reg_1_0_223_SW1_SW0 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => IF_ID_regs_imp_instruction_out(12),
      O => N1136
    );
  register_module_imp_decoder_imp_read_reg_1_0_223_SW1_SW1 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(0),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(13),
      I3 => register_module_imp_N57,
      O => N1137
    );
  ALU_imp_tmp_5_135_SW0 : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ALU_imp_N12,
      I1 => ALU_imp_tmp_5_121_231,
      I2 => ALU_imp_tmp_5_79_235,
      I3 => ALU_imp_tmp_5_118_229,
      O => N1139
    );
  ALU_imp_tmp_5_162 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_tmp_5_110_228,
      I1 => N1126,
      I2 => N1139,
      I3 => ALU_imp_N13,
      O => alu_result_from_alu_tmp(5)
    );
  register_module_imp_registers_imp_read_data1_2_46 : LUT4
    generic map(
      INIT => X"80DF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => write_back_data_from_alu_tmp(2),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I3 => N1141,
      O => register_module_imp_registers_imp_read_data1_2_46_2807
    );
  ALU_imp_tmp_0_86 : LUT4
    generic map(
      INIT => X"8C04"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_tmp_cmp_eq0010,
      I2 => N1143,
      I3 => ALU_imp_N5,
      O => ALU_imp_tmp_0_86_142
    );
  ALU_imp_tmp_15_63 : LUT4
    generic map(
      INIT => X"A2A0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => N785,
      I2 => ALU_imp_tmp_15_48_188,
      I3 => ALU_imp_N72,
      O => ALU_imp_tmp_15_63_189
    );
  ALU_imp_tmp_3_117_SW0 : LUT4
    generic map(
      INIT => X"AEBF"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N193,
      I3 => N1575,
      O => N1147
    );
  ALU_imp_tmp_3_117 : LUT4
    generic map(
      INIT => X"0504"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ALU_imp_tmp_cmp_eq0010,
      I2 => N1147,
      I3 => ALU_imp_N25,
      O => ALU_imp_tmp_3_117_207
    );
  VGA_bt_cmp_ge0011214 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(5),
      I2 => VGA_x(4),
      I3 => N1149,
      O => VGA_bt_cmp_ge0011214_1873
    );
  ALU_imp_tmp_1_208_SW0 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ALU_imp_Sh109_111,
      I2 => ALU_imp_Sh97_134,
      O => N1151
    );
  register_module_imp_registers_imp_read_data2_5_59 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(5),
      I1 => register_module_imp_registers_imp_N43,
      I2 => register_module_imp_registers_imp_read_data2_5_17_2865,
      I3 => N1161,
      O => register_module_imp_read_data2_tmp(5)
    );
  register_module_imp_registers_imp_read_data2_8_24_SW0_SW0_SW0 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(8),
      I1 => N1545,
      I2 => register_module_imp_registers_imp_N39,
      I3 => N1124,
      O => N1163
    );
  register_module_imp_registers_imp_read_data2_7_59 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(7),
      I1 => register_module_imp_registers_imp_N43,
      I2 => register_module_imp_registers_imp_read_data2_7_17_2868,
      I3 => N1165,
      O => register_module_imp_read_data2_tmp(7)
    );
  register_module_imp_registers_imp_read_data1_10_46 : LUT4
    generic map(
      INIT => X"8F07"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => N1685,
      I3 => write_back_data_from_alu_tmp(10),
      O => register_module_imp_registers_imp_read_data1_10_46_2772
    );
  register_module_imp_registers_imp_read_data1_11_46 : LUT4
    generic map(
      INIT => X"8F07"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => N1686,
      I3 => write_back_data_from_alu_tmp(11),
      O => register_module_imp_registers_imp_read_data1_11_46_2777
    );
  register_module_imp_registers_imp_read_data1_12_46 : LUT4
    generic map(
      INIT => X"8F07"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => N1687,
      I3 => write_back_data_from_alu_tmp(12),
      O => register_module_imp_registers_imp_read_data1_12_46_2782
    );
  register_module_imp_registers_imp_read_data1_13_46 : LUT4
    generic map(
      INIT => X"8F07"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => N1065,
      I3 => write_back_data_from_alu_tmp(13),
      O => register_module_imp_registers_imp_read_data1_13_46_2787
    );
  register_module_imp_registers_imp_read_data1_14_46 : LUT4
    generic map(
      INIT => X"8F07"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => N1067,
      I3 => write_back_data_from_alu_tmp(14),
      O => register_module_imp_registers_imp_read_data1_14_46_2792
    );
  ALU_imp_tmp_0_144 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_tmp_0_118_136,
      I2 => ID_ALU_regs_imp_operand2_out(2),
      I3 => ALU_imp_Sh72_128,
      O => ALU_imp_tmp_0_144_138
    );
  VGA_romAddr_and000078_SW0 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => VGA_bt_cmp_eq0009,
      I1 => VGA_N210,
      I2 => VGA_N4,
      O => N1167
    );
  register_module_imp_registers_imp_read_data1_0_24_SW0 : MUXF5
    port map (
      I0 => N1169,
      I1 => N1170,
      S => register_module_imp_registers_imp_varindex0000(0),
      O => N438
    );
  register_module_imp_registers_imp_read_data1_0_24_SW0_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(0),
      I3 => register_module_imp_registers_imp_read_data1_0_51_2766,
      O => N1170
    );
  register_module_imp_registers_imp_read_data1_0_24_SW2 : MUXF5
    port map (
      I0 => N1171,
      I1 => N1172,
      S => register_module_imp_registers_imp_varindex0000(0),
      O => N441
    );
  register_module_imp_registers_imp_read_data1_0_24_SW2_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => immediate_from_id_tmp(0),
      O => N1171
    );
  register_module_imp_registers_imp_read_data1_0_24_SW2_G : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(0),
      I3 => register_module_imp_registers_imp_read_data1_0_51_2766,
      O => N1172
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW1 : MUXF5
    port map (
      I0 => N1173,
      I1 => N1174,
      S => register_module_imp_N6,
      O => N445
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW1_F : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_enable_out_765,
      I1 => IF_ID_regs_imp_instruction_out(10),
      I2 => MEM_WB_regs_imp_write_back_reg_out(2),
      O => N1173
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW1_G : LUT4
    generic map(
      INIT => X"8882"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_enable_out_765,
      I1 => MEM_WB_regs_imp_write_back_reg_out(2),
      I2 => IF_ID_regs_imp_instruction_out(7),
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1174
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW3 : MUXF5
    port map (
      I0 => N1175,
      I1 => N1176,
      S => register_module_imp_N6,
      O => N448
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW3_F : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => ALU_MEM_regs_imp_reg_write_enable_out_35,
      I1 => IF_ID_regs_imp_instruction_out(10),
      I2 => ALU_MEM_regs_imp_write_back_reg_out(2),
      O => N1175
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW3_G : LUT4
    generic map(
      INIT => X"8882"
    )
    port map (
      I0 => ALU_MEM_regs_imp_reg_write_enable_out_35,
      I1 => ALU_MEM_regs_imp_write_back_reg_out(2),
      I2 => IF_ID_regs_imp_instruction_out(7),
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1176
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW5 : MUXF5
    port map (
      I0 => N1177,
      I1 => N1178,
      S => register_module_imp_N6,
      O => N451
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW5_F : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I1 => IF_ID_regs_imp_instruction_out(10),
      I2 => ID_ALU_regs_imp_write_back_reg_out(2),
      O => N1177
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW5_G : LUT4
    generic map(
      INIT => X"8882"
    )
    port map (
      I0 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I1 => ID_ALU_regs_imp_write_back_reg_out(2),
      I2 => IF_ID_regs_imp_instruction_out(7),
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1178
    );
  VGA_romAddr_and0000413_SW1 : MUXF5
    port map (
      I0 => N1179,
      I1 => N1180,
      S => VGA_romAddr_and0000389_1972,
      O => N497
    );
  VGA_romAddr_and0000413_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => VGA_romAddr_and0000463_1975,
      I2 => VGA_romAddr_and0000440_1974,
      I3 => VGA_bt_and0133,
      O => N1179
    );
  VGA_romAddr_and0000413_SW1_G : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => VGA_romAddr_and0000463_1975,
      I2 => VGA_romAddr_and0000440_1974,
      O => N1180
    );
  ALU_imp_Sh12 : MUXF5
    port map (
      I0 => N1181,
      I1 => N1182,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh12_115
    );
  ALU_imp_Sh12_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(12),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1181
    );
  ALU_imp_Sh12_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(14),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1182
    );
  ALU_imp_Sh11 : MUXF5
    port map (
      I0 => N1183,
      I1 => N1184,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh11_112
    );
  ALU_imp_Sh11_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(12),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1183
    );
  ALU_imp_Sh11_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(14),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1184
    );
  VGA_romAddr_and0000239_SW0 : MUXF5
    port map (
      I0 => N1185,
      I1 => N1186,
      S => VGA_romAddr_and0000274_1969,
      O => N534
    );
  ALU_imp_Sh18195_SW0 : MUXF5
    port map (
      I0 => N1187,
      I1 => N1188,
      S => ID_ALU_regs_imp_operand2_out(3),
      O => N342
    );
  ALU_imp_Sh18195_SW0_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(0),
      I1 => ALU_imp_Sh18114_120,
      I2 => ALU_imp_Sh18127_121,
      O => N1187
    );
  ALU_imp_Sh18195_SW0_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N259,
      I2 => N237,
      O => N1188
    );
  ALU_imp_tmp_3_220 : MUXF5
    port map (
      I0 => N1189,
      I1 => N1190,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_tmp_3_220_208
    );
  ALU_imp_tmp_3_220_F : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => N578,
      I2 => ALU_imp_Sh11_112,
      O => N1189
    );
  ALU_imp_tmp_3_220_G : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N187,
      I3 => N186,
      O => N1190
    );
  ALU_imp_Sh11811 : MUXF5
    port map (
      I0 => N1191,
      I1 => N1192,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_N111
    );
  ALU_imp_Sh11811_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N215,
      I2 => N216,
      O => N1191
    );
  ALU_imp_Sh11811_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N240,
      I2 => N243,
      O => N1192
    );
  ALU_imp_Sh11711 : MUXF5
    port map (
      I0 => N1193,
      I1 => N1194,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_N10
    );
  ALU_imp_Sh11711_F : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N219,
      I2 => N196,
      O => N1193
    );
  ALU_imp_Sh11711_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N222,
      I2 => N246,
      O => N1194
    );
  ALU_imp_tmp_2_90_SW0 : MUXF5
    port map (
      I0 => N1195,
      I1 => N1196,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => N590
    );
  ALU_imp_tmp_2_90_SW0_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N240,
      I2 => N243,
      O => N1195
    );
  ALU_imp_tmp_2_90_SW0_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N251,
      I2 => N252,
      O => N1196
    );
  ALU_imp_Sh6 : MUXF5
    port map (
      I0 => N1197,
      I1 => N1198,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh6_126
    );
  ALU_imp_Sh6_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(7),
      I1 => ID_ALU_regs_imp_operand1_out(6),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1197
    );
  ALU_imp_Sh6_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(8),
      I1 => ID_ALU_regs_imp_operand1_out(9),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1198
    );
  ALU_imp_Sh98 : MUXF5
    port map (
      I0 => N1199,
      I1 => N1200,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh98_135
    );
  ALU_imp_Sh98_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1199
    );
  ALU_imp_Sh98_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1200
    );
  write_back_data_from_alu_tmp_0_64_SW0_SW0 : MUXF5
    port map (
      I0 => N1201,
      I1 => N1202,
      S => write_back_data_from_alu_tmp_0_12_3053,
      O => N669
    );
  write_back_data_from_alu_tmp_0_64_SW0_SW0_F : LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_0_5_3057,
      I1 => write_back_data_from_alu_tmp_0_27_3055,
      I2 => N365,
      I3 => N366,
      O => N1201
    );
  ALU_imp_tmp_0_118 : MUXF5
    port map (
      I0 => N1203,
      I1 => N1204,
      S => ID_ALU_regs_imp_operand2_out(0),
      O => ALU_imp_tmp_0_118_136
    );
  ALU_imp_tmp_0_118_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ID_ALU_regs_imp_operand1_out(0),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      O => N1203
    );
  ALU_imp_tmp_0_118_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(3),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      O => N1204
    );
  ALU_imp_tmp_10_37 : MUXF5
    port map (
      I0 => N1205,
      I1 => N1206,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_tmp_10_37_153
    );
  ALU_imp_tmp_10_37_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N240,
      I2 => ID_ALU_regs_imp_operand2_out(3),
      I3 => N243,
      O => N1205
    );
  ALU_imp_tmp_10_37_G : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N252,
      I3 => N251,
      O => N1206
    );
  register_module_imp_registers_imp_read_data2_10_59_SW1 : MUXF5
    port map (
      I0 => N1207,
      I1 => N1208,
      S => register_module_imp_registers_imp_varindex0001(10),
      O => N747
    );
  register_module_imp_registers_imp_read_data2_10_59_SW1_G : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => register_module_imp_registers_imp_N43,
      I3 => immediate_from_id_tmp(10),
      O => N1208
    );
  register_module_imp_registers_imp_read_data2_11_59_SW1 : MUXF5
    port map (
      I0 => N1209,
      I1 => N1210,
      S => register_module_imp_registers_imp_varindex0001(11),
      O => N750
    );
  register_module_imp_registers_imp_read_data2_11_59_SW1_G : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => register_module_imp_registers_imp_N43,
      I3 => immediate_from_id_tmp(10),
      O => N1210
    );
  register_module_imp_registers_imp_read_data2_12_59_SW1 : MUXF5
    port map (
      I0 => N1211,
      I1 => N1212,
      S => register_module_imp_registers_imp_varindex0001(12),
      O => N753
    );
  register_module_imp_registers_imp_read_data2_12_59_SW1_G : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => register_module_imp_registers_imp_N43,
      I3 => immediate_from_id_tmp(10),
      O => N1212
    );
  register_module_imp_registers_imp_read_data2_13_59_SW1 : MUXF5
    port map (
      I0 => N1213,
      I1 => N1214,
      S => register_module_imp_registers_imp_varindex0001(13),
      O => N756
    );
  register_module_imp_registers_imp_read_data2_13_59_SW1_G : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => register_module_imp_registers_imp_N43,
      I3 => immediate_from_id_tmp(10),
      O => N1214
    );
  register_module_imp_registers_imp_read_data2_14_59_SW1 : MUXF5
    port map (
      I0 => N1215,
      I1 => N1216,
      S => register_module_imp_registers_imp_varindex0001(14),
      O => N759
    );
  register_module_imp_registers_imp_read_data2_14_59_SW1_G : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => register_module_imp_registers_imp_N43,
      I3 => immediate_from_id_tmp(10),
      O => N1216
    );
  register_module_imp_registers_imp_read_data2_15_59_SW1 : MUXF5
    port map (
      I0 => N1217,
      I1 => N1218,
      S => register_module_imp_registers_imp_varindex0001(15),
      O => N762
    );
  register_module_imp_registers_imp_read_data2_15_59_SW1_G : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => register_module_imp_registers_imp_N43,
      I3 => immediate_from_id_tmp(10),
      O => N1218
    );
  ALU_imp_tmp_1_222_SW0 : MUXF5
    port map (
      I0 => N1219,
      I1 => N1220,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => N695
    );
  ALU_imp_tmp_1_222_SW0_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N222,
      I2 => N246,
      O => N1219
    );
  ALU_imp_tmp_1_222_SW0_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N249,
      I2 => N192,
      O => N1220
    );
  ALU_imp_Sh73 : MUXF5
    port map (
      I0 => N1221,
      I1 => N1222,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh73_129
    );
  ALU_imp_Sh73_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(9),
      I1 => ID_ALU_regs_imp_operand1_out(10),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1221
    );
  ALU_imp_Sh73_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(12),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1222
    );
  ALU_imp_tmp_2_77_SW0 : MUXF5
    port map (
      I0 => N1223,
      I1 => N1224,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => N705
    );
  ALU_imp_tmp_2_77_SW0_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(14),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1223
    );
  ALU_imp_tmp_2_77_SW0_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(12),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1224
    );
  ALU_imp_Sh97 : MUXF5
    port map (
      I0 => N1225,
      I1 => N1226,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh97_134
    );
  ALU_imp_Sh97_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1225
    );
  ALU_imp_Sh97_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(14),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1226
    );
  ALU_imp_Sh109 : MUXF5
    port map (
      I0 => N1227,
      I1 => N1228,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh109_111
    );
  ALU_imp_Sh109_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(12),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1227
    );
  ALU_imp_Sh109_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(10),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1228
    );
  ALU_imp_tmp_9_37 : MUXF5
    port map (
      I0 => N1229,
      I1 => N1230,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_tmp_9_37_263
    );
  ALU_imp_tmp_9_37_F : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N222,
      I3 => N246,
      O => N1229
    );
  ALU_imp_tmp_9_37_G : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N249,
      I3 => N192,
      O => N1230
    );
  register_module_imp_registers_imp_read_data2_2_59_SW1 : MUXF5
    port map (
      I0 => N1231,
      I1 => N1232,
      S => register_module_imp_registers_imp_varindex0001(2),
      O => N825
    );
  register_module_imp_registers_imp_read_data2_2_59_SW1_G : LUT4
    generic map(
      INIT => X"E2C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(2),
      I3 => register_module_imp_registers_imp_N43,
      O => N1232
    );
  VGA_bt_not0001563_SW0 : MUXF5
    port map (
      I0 => N1237,
      I1 => N1238,
      S => VGA_bt_not0001536_1925,
      O => N848
    );
  VGA_bt_not0001563_SW0_G : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => VGA_bt_not0001590_1926,
      I1 => VGA_bt_and0134,
      I2 => VGA_N101,
      I3 => VGA_bt_and0133,
      O => N1238
    );
  VGA_bt_not0001332_SW0 : MUXF5
    port map (
      I0 => N1239,
      I1 => N1240,
      S => VGA_bt_not0001329_1920,
      O => N857
    );
  register_module_imp_registers_imp_read_data1_1_61_SW1 : MUXF5
    port map (
      I0 => N1241,
      I1 => N1242,
      S => register_module_imp_registers_imp_read_data1_1_46_2803,
      O => N860
    );
  register_module_imp_registers_imp_read_data1_1_61_SW1_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(1),
      I3 => is_hazard_1_to_id_tmp,
      O => N1242
    );
  register_module_imp_registers_imp_read_data1_3_61_SW1 : MUXF5
    port map (
      I0 => N1243,
      I1 => N1244,
      S => register_module_imp_registers_imp_read_data1_3_46_2813,
      O => N863
    );
  register_module_imp_registers_imp_read_data1_3_61_SW1_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(3),
      I3 => is_hazard_1_to_id_tmp,
      O => N1244
    );
  register_module_imp_registers_imp_read_data1_4_61_SW1 : MUXF5
    port map (
      I0 => N1245,
      I1 => N1246,
      S => register_module_imp_registers_imp_read_data1_4_46_2817,
      O => N866
    );
  register_module_imp_registers_imp_read_data1_4_61_SW1_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(4),
      I3 => is_hazard_1_to_id_tmp,
      O => N1246
    );
  register_module_imp_registers_imp_read_data1_5_61_SW1 : MUXF5
    port map (
      I0 => N1247,
      I1 => N1248,
      S => register_module_imp_registers_imp_read_data1_5_46_2821,
      O => N869
    );
  register_module_imp_registers_imp_read_data1_5_61_SW1_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(5),
      I3 => is_hazard_1_to_id_tmp,
      O => N1248
    );
  register_module_imp_registers_imp_read_data1_6_61_SW1 : MUXF5
    port map (
      I0 => N1249,
      I1 => N1250,
      S => register_module_imp_registers_imp_read_data1_6_46_2825,
      O => N872
    );
  register_module_imp_registers_imp_read_data1_6_61_SW1_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(6),
      I3 => is_hazard_1_to_id_tmp,
      O => N1250
    );
  register_module_imp_registers_imp_read_data1_7_61_SW1 : MUXF5
    port map (
      I0 => N1251,
      I1 => N1252,
      S => register_module_imp_registers_imp_read_data1_7_46_2829,
      O => N875
    );
  register_module_imp_registers_imp_read_data1_7_61_SW1_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(7),
      I3 => is_hazard_1_to_id_tmp,
      O => N1252
    );
  register_module_imp_registers_imp_read_data1_8_61_SW1 : MUXF5
    port map (
      I0 => N1253,
      I1 => N1254,
      S => register_module_imp_registers_imp_read_data1_8_46_2833,
      O => N878
    );
  register_module_imp_registers_imp_read_data1_8_61_SW1_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(8),
      I3 => is_hazard_1_to_id_tmp,
      O => N1254
    );
  register_module_imp_registers_imp_read_data1_9_61_SW1 : MUXF5
    port map (
      I0 => N1255,
      I1 => N1256,
      S => register_module_imp_registers_imp_read_data1_9_46_2837,
      O => N881
    );
  register_module_imp_registers_imp_read_data1_9_61_SW1_G : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(9),
      I3 => is_hazard_1_to_id_tmp,
      O => N1256
    );
  ALU_imp_tmp_4_38 : MUXF5
    port map (
      I0 => N1257,
      I1 => N1258,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_tmp_4_38_223
    );
  ALU_imp_tmp_4_38_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N216,
      I3 => N240,
      O => N1257
    );
  ALU_imp_tmp_4_38_G : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(1),
      I2 => N251,
      I3 => N243,
      O => N1258
    );
  ALU_imp_Sh11211 : MUXF5
    port map (
      I0 => N1259,
      I1 => N1260,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_N5
    );
  ALU_imp_Sh11211_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N243,
      I2 => N251,
      O => N1259
    );
  ALU_imp_Sh11211_G : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N206,
      I2 => N252,
      O => N1260
    );
  ALU_imp_Sh11911 : MUXF5
    port map (
      I0 => N1261,
      I1 => N1262,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_N4
    );
  ALU_imp_Sh11911_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N246,
      I2 => N249,
      O => N1261
    );
  ALU_imp_Sh11911_G : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N193,
      I2 => N192,
      O => N1262
    );
  ALU_imp_Sh5 : MUXF5
    port map (
      I0 => N1263,
      I1 => N1264,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh5_125
    );
  ALU_imp_Sh5_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(6),
      I1 => ID_ALU_regs_imp_operand1_out(5),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1263
    );
  ALU_imp_Sh5_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(7),
      I1 => ID_ALU_regs_imp_operand1_out(8),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1264
    );
  ALU_imp_Sh72 : MUXF5
    port map (
      I0 => N1265,
      I1 => N1266,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh72_128
    );
  ALU_imp_Sh72_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(8),
      I1 => ID_ALU_regs_imp_operand1_out(9),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1265
    );
  ALU_imp_Sh72_G : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(10),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1266
    );
  ALU_imp_Sh107 : MUXF5
    port map (
      I0 => N1267,
      I1 => N1268,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh107_109
    );
  ALU_imp_Sh107_F : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(10),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1267
    );
  ALU_imp_Sh107_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(8),
      I1 => ID_ALU_regs_imp_operand1_out(9),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1268
    );
  register_module_imp_registers_imp_read_data1_1_61_SW0_SW0 : MUXF5
    port map (
      I0 => N1269,
      I1 => N1270,
      S => register_module_imp_registers_imp_read_data1_1_46_2803,
      O => N984
    );
  register_module_imp_registers_imp_read_data1_1_61_SW0_SW0_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => immediate_from_id_tmp(1),
      O => N1269
    );
  register_module_imp_registers_imp_read_data1_1_61_SW0_SW0_G : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(1),
      I3 => is_hazard_1_to_id_tmp,
      O => N1270
    );
  ALU_imp_Sh96 : MUXF5
    port map (
      I0 => N1271,
      I1 => N1272,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh96_133
    );
  ALU_imp_Sh96_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1271
    );
  ALU_imp_Sh96_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(14),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1272
    );
  ALU_imp_Sh108 : MUXF5
    port map (
      I0 => N1273,
      I1 => N1274,
      S => ID_ALU_regs_imp_operand2_out(1),
      O => ALU_imp_Sh108_110
    );
  ALU_imp_Sh108_F : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(12),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1273
    );
  ALU_imp_Sh108_G : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(9),
      I1 => ID_ALU_regs_imp_operand1_out(10),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      O => N1274
    );
  ALU_imp_tmp_8_111_SW0_SW1 : MUXF5
    port map (
      I0 => N1275,
      I1 => N1276,
      S => ALU_imp_Sh72_128,
      O => N1017
    );
  ALU_imp_tmp_8_111_SW0_SW1_F : LUT4
    generic map(
      INIT => X"D5FF"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => N477,
      I2 => N473,
      I3 => ALU_imp_Sh12_115,
      O => N1275
    );
  ALU_imp_tmp_8_111_SW0_SW1_G : LUT4
    generic map(
      INIT => X"C0EA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => N477,
      I2 => N473,
      I3 => ALU_imp_Sh12_115,
      O => N1276
    );
  register_module_imp_registers_imp_read_data1_4_61_SW0_SW0 : MUXF5
    port map (
      I0 => N1277,
      I1 => N1278,
      S => register_module_imp_registers_imp_read_data1_4_46_2817,
      O => N1019
    );
  register_module_imp_registers_imp_read_data1_4_61_SW0_SW0_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => immediate_from_id_tmp(4),
      O => N1277
    );
  register_module_imp_registers_imp_read_data1_4_61_SW0_SW0_G : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(4),
      I3 => is_hazard_1_to_id_tmp,
      O => N1278
    );
  register_module_imp_registers_imp_read_data1_9_61_SW0_SW0 : MUXF5
    port map (
      I0 => N1279,
      I1 => N1280,
      S => register_module_imp_registers_imp_read_data1_9_46_2837,
      O => N1022
    );
  register_module_imp_registers_imp_read_data1_9_61_SW0_SW0_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => immediate_from_id_tmp(9),
      O => N1279
    );
  register_module_imp_registers_imp_read_data1_9_61_SW0_SW0_G : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => register_module_imp_operand2_src_tmp(1),
      I2 => immediate_from_id_tmp(9),
      I3 => is_hazard_1_to_id_tmp,
      O => N1280
    );
  register_module_imp_registers_imp_read_data2_2_24_SW0_SW0 : MUXF5
    port map (
      I0 => N1281,
      I1 => N1282,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => N713
    );
  register_module_imp_registers_imp_read_data2_2_24_SW0_SW0_G : LUT4
    generic map(
      INIT => X"FCFA"
    )
    port map (
      I0 => N828,
      I1 => N829,
      I2 => write_back_data_from_alu_tmp_2_5_3086,
      I3 => alu_result_from_alu_tmp(2),
      O => N1282
    );
  ALU_imp_tmp_11_109 : MUXF5
    port map (
      I0 => N1283,
      I1 => N1284,
      S => ID_ALU_regs_imp_operand2_out(3),
      O => ALU_imp_tmp_11_109_157
    );
  ALU_imp_tmp_11_109_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ALU_imp_Sh107_109,
      I2 => ALU_imp_Sh103_108,
      O => N1283
    );
  ALU_imp_tmp_11_109_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N192,
      I2 => ID_ALU_regs_imp_operand2_out(2),
      I3 => N193,
      O => N1284
    );
  ALU_imp_tmp_3_178_SW0 : MUXF5
    port map (
      I0 => N1285,
      I1 => N1286,
      S => ID_ALU_regs_imp_operand2_out(0),
      O => N578
    );
  ALU_imp_tmp_3_178_SW0_F : LUT3
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_operand1_out(3),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      O => N1285
    );
  ALU_imp_tmp_3_178_SW0_G : LUT3
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(6),
      I1 => ID_ALU_regs_imp_operand1_out(4),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      O => N1286
    );
  ALU_imp_tmp_12_109 : MUXF5
    port map (
      I0 => N1287,
      I1 => N1288,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_tmp_12_109_168
    );
  ALU_imp_tmp_12_109_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_Sh108_110,
      I2 => ALU_imp_Sh100_105,
      O => N1287
    );
  ALU_imp_tmp_12_109_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N243,
      I2 => ID_ALU_regs_imp_operand2_out(3),
      I3 => N251,
      O => N1288
    );
  write_back_data_from_alu_tmp_0_166_SW1 : MUXF5
    port map (
      I0 => N1289,
      I1 => N1290,
      S => ID_ALU_regs_imp_wb_src_out(0),
      O => N366
    );
  write_back_data_from_alu_tmp_0_166_SW1_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(0),
      I2 => ID_ALU_regs_imp_wb_src_out(1),
      I3 => alu_result_from_alu_tmp(0),
      O => N1289
    );
  register_module_imp_registers_imp_read_data2_7_53_SW0 : MUXF5
    port map (
      I0 => N1291,
      I1 => N1292,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => N1122
    );
  register_module_imp_registers_imp_read_data2_7_53_SW0_G : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_7_111_3104,
      I2 => write_back_data_from_alu_tmp_7_5_3106,
      I3 => write_back_data_from_alu_tmp_7_26_3105,
      O => N1292
    );
  register_module_imp_registers_imp_read_data2_8_53_SW0 : MUXF5
    port map (
      I0 => N1293,
      I1 => N1294,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => N1124
    );
  register_module_imp_registers_imp_read_data2_8_53_SW0_G : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_8_111_3108,
      I2 => write_back_data_from_alu_tmp_8_5_3110,
      I3 => write_back_data_from_alu_tmp_8_26_3109,
      O => N1294
    );
  register_module_imp_registers_imp_read_data2_5_53_SW0 : MUXF5
    port map (
      I0 => N1295,
      I1 => N1296,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => N1120
    );
  register_module_imp_registers_imp_read_data2_5_53_SW0_G : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_5_111_3096,
      I2 => write_back_data_from_alu_tmp_5_5_3098,
      I3 => write_back_data_from_alu_tmp_5_26_3097,
      O => N1296
    );
  register_module_imp_registers_imp_read_data2_15_53 : MUXF5
    port map (
      I0 => N1297,
      I1 => N1298,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_15_53_2854
    );
  register_module_imp_registers_imp_read_data2_15_53_F : LUT4
    generic map(
      INIT => X"CCA0"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(15),
      I1 => write_back_data_from_mem_tmp(15),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      O => N1297
    );
  register_module_imp_registers_imp_read_data2_15_53_G : LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(1),
      I1 => write_back_data_from_alu_tmp_10_111_3063,
      I2 => write_back_data_from_alu_tmp_15_5_3080,
      I3 => write_back_data_from_alu_tmp_15_26_3079,
      O => N1298
    );
  VGA_bt_not0001155 : LUT4
    generic map(
      INIT => X"8A0F"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(5),
      I2 => VGA_y(7),
      I3 => N1299,
      O => VGA_bt_not0001155_1913
    );
  register_module_imp_registers_imp_read_data2_2_24_SW0_SW0_F : LUT4
    generic map(
      INIT => X"CCEC"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(2),
      I1 => register_module_imp_registers_imp_read_data2_2_33_2859,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      O => N1281
    );
  register_module_imp_registers_imp_read_data2_7_53_SW0_F : LUT4
    generic map(
      INIT => X"CCA0"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(7),
      I1 => write_back_data_from_mem_tmp(7),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      O => N1291
    );
  register_module_imp_registers_imp_read_data2_8_53_SW0_F : LUT4
    generic map(
      INIT => X"CCA0"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(8),
      I1 => write_back_data_from_mem_tmp(8),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      O => N1293
    );
  register_module_imp_registers_imp_read_data2_5_53_SW0_F : LUT4
    generic map(
      INIT => X"CCA0"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(5),
      I1 => write_back_data_from_mem_tmp(5),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      O => N1295
    );
  register_module_imp_controller_imp_operand2_src_0_76 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => register_module_imp_controller_imp_operand2_src_0_60_2438,
      I3 => register_module_imp_controller_imp_operand2_src_0_65_2439,
      O => register_module_imp_controller_imp_operand2_src_0_76_2440
    );
  write_back_data_from_alu_tmp_0_132 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => write_back_data_from_alu_tmp_0_103_3051,
      I2 => write_back_data_from_alu_tmp_0_111_3052,
      I3 => write_back_data_from_alu_tmp_0_92_3061,
      O => write_back_data_from_alu_tmp_0_132_3054
    );
  VGA_romAddr_mux0053_5_32_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => VGA_Madd_romAddr_addsub0000_Madd_lut(0),
      I1 => VGA_romAddr_add0001(5),
      O => N1311
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_0_23_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(3),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => register_module_imp_controller_imp_wb_src_and0001,
      O => N1313
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_0_23 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => IF_ID_regs_imp_instruction_out(1),
      I2 => IF_ID_regs_imp_instruction_out(12),
      I3 => N1313,
      O => ID_ALU_regs_imp_wb_src_out_mux0001_0_23_611
    );
  register_module_imp_decoder_imp_write_back_reg_1_256_SW0 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => register_module_imp_N23,
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(14),
      I3 => register_module_imp_controller_imp_operand1_src_cmp_eq0000,
      O => N1315
    );
  register_module_imp_decoder_imp_write_back_reg_1_256 : LUT4
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => N1315,
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0007,
      I2 => register_module_imp_decoder_imp_write_back_reg_1_229_2466,
      I3 => register_module_imp_decoder_imp_write_back_reg_1_26_2467,
      O => register_module_imp_N13
    );
  register_module_imp_registers_imp_read_data1_0_60 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => N1317,
      I2 => register_module_imp_registers_imp_read_data1_0_32_2763,
      I3 => N1611,
      O => branch_relative_reg_data_from_id_tmp(0)
    );
  VGA_hst_mux000124_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => VGA_x(8),
      I1 => VGA_x(7),
      I2 => VGA_x(9),
      O => N1319
    );
  VGA_hst_mux000124 : LUT4
    generic map(
      INIT => X"EAAB"
    )
    port map (
      I0 => N1319,
      I1 => VGA_x(4),
      I2 => VGA_x(5),
      I3 => VGA_x(6),
      O => VGA_hst_mux0001
    );
  VGA_romAddr_mux0053_6_111 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => VGA_bt_or0012_1939,
      I1 => VGA_bt_and0138_1851,
      I2 => VGA_romAddr_mux0053_6_97_1996,
      I3 => N1321,
      O => VGA_romAddr_mux0053_6_111_1993
    );
  register_module_imp_controller_imp_operand2_src_0_102_SW0 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => IF_ID_regs_imp_instruction_out(15),
      O => N1323
    );
  register_module_imp_controller_imp_operand1_src92_SW0 : LUT4
    generic map(
      INIT => X"FAFD"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(1),
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => IF_ID_regs_imp_instruction_out(4),
      I3 => IF_ID_regs_imp_instruction_out(2),
      O => N1325
    );
  DM_imp_judge_and000039 : LUT4
    generic map(
      INIT => X"51FF"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(14),
      I1 => ALU_MEM_regs_imp_mem_address_out(8),
      I2 => N1327,
      I3 => DM_imp_Mcompar_judge_cmp_gt0001_cy(5),
      O => DM_imp_judge_and000039_443
    );
  VGA_bt_not0001483_SW0 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => VGA_N1011,
      I1 => VGA_bt_not0001416_1922,
      I2 => VGA_bt_not0001377_1921,
      O => N1331
    );
  VGA_bt_not0001177_SW0 : LUT3
    generic map(
      INIT => X"70"
    )
    port map (
      I0 => N1580,
      I1 => VGA_bt_cmp_ge0002,
      I2 => VGA_bt_not0001155_1913,
      O => N1333
    );
  VGA_bt_mux0000_1_140 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => VGA_bt_mux0000_1_100_1891,
      I1 => VGA_bt_and0138_1851,
      I2 => VGA_bt_or0008,
      I3 => N1335,
      O => VGA_bt_mux0000_1_140_1892
    );
  register_module_imp_Madd_branch_target_out_lut_15_Q : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => IF_ID_regs_imp_pc_out(15),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => register_module_imp_Madd_branch_target_out_lut(15)
    );
  VGA_romAddr_and0000239_SW0_F : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => VGA_x(5),
      I1 => VGA_SF27243_1842,
      I2 => VGA_SF2727_1843,
      I3 => VGA_SF27212_1840,
      O => N1185
    );
  VGA_bt_mux0000_1_352 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => VGA_romData_mux0000,
      I1 => VGA_bt_or000028_1933,
      I2 => VGA_N101,
      I3 => VGA_bt_or000015_1932,
      O => VGA_bt_mux0000_1_352_1905
    );
  IF_ID_regs_imp_instruction_out_mux0001_4_1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => N294,
      I1 => ALU_MEM_regs_imp_mem_write_out_34,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(4)
    );
  VGA_bt_not0001332_SW0_F : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => VGA_bt_not000199_1930,
      I1 => VGA_N84,
      I2 => VGA_bt_cmp_eq0006,
      I3 => VGA_bt_and0137,
      O => N1239
    );
  VGA_romAddr_mux0053_5_70_SW0 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => VGA_bt_cmp_le0015,
      I1 => VGA_bt_or0008,
      I2 => VGA_bt_or0010,
      O => N1339
    );
  VGA_romAddr_mux0053_5_70 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_bt_and0138_1851,
      I1 => N1339,
      I2 => VGA_bt_cmp_ge0015,
      I3 => VGA_bt_or0012_1939,
      O => VGA_romAddr_mux0053_5_70_1990
    );
  register_module_imp_controller_imp_is_jump_cmp_eq00002 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => register_module_imp_N26,
      I1 => IF_ID_regs_imp_instruction_out(12),
      I2 => IF_ID_regs_imp_instruction_out(14),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => register_module_imp_controller_imp_is_jump_cmp_eq0000
    );
  register_module_imp_registers_imp_read_data2_10_59_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1207
    );
  register_module_imp_registers_imp_read_data2_11_59_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1209
    );
  register_module_imp_registers_imp_read_data2_12_59_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1211
    );
  register_module_imp_registers_imp_read_data2_13_59_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1213
    );
  register_module_imp_registers_imp_read_data2_14_59_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1215
    );
  register_module_imp_registers_imp_read_data2_15_59_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(10),
      O => N1217
    );
  register_module_imp_registers_imp_read_data1_8_61_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(8),
      O => N1253
    );
  register_module_imp_registers_imp_read_data1_9_61_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N63,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => IF_ID_regs_imp_instruction_out(9),
      O => N1255
    );
  write_back_data_from_alu_tmp_0_189_SW0 : LUT4
    generic map(
      INIT => X"FF1D"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_data_from_reg_out(0),
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_immediate_out_0_Q,
      I3 => ID_ALU_regs_imp_wb_src_out(2),
      O => N925
    );
  VGA_bt_mux0000_1_173 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => VGA_bt_or0006,
      I1 => VGA_bt_or0010,
      I2 => VGA_bt_or0004,
      I3 => VGA_bt_or0012_1939,
      O => VGA_bt_mux0000_1_173_1893
    );
  VGA_Madd_romAddr_not0000_8_1 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => VGA_y(8),
      I1 => VGA_y(6),
      I2 => VGA_y(7),
      O => VGA_Madd_romAddr_not0000_8_Q
    );
  VGA_bt_mux0000_1_2 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => VGA_bt_and0133,
      I1 => VGA_romData_mux0001,
      I2 => VGA_bt_or000015_1932,
      I3 => VGA_bt_or000028_1933,
      O => VGA_bt_mux0000_1_2_1898
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_0_8 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(15),
      O => ID_ALU_regs_imp_wb_src_out_mux0001_0_8_615
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_1_5 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(3),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => IF_ID_regs_imp_instruction_out(14),
      O => ID_ALU_regs_imp_wb_src_out_mux0001_1_5_618
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_2_27 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(12),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => IF_ID_regs_imp_instruction_out(14),
      O => ID_ALU_regs_imp_wb_src_out_mux0001_2_27_621
    );
  IF_ID_regs_imp_instruction_out_mux0001_9_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N299,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(9)
    );
  IF_ID_regs_imp_instruction_out_mux0001_8_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N298,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(8)
    );
  IF_ID_regs_imp_instruction_out_mux0001_7_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N297,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(7)
    );
  IF_ID_regs_imp_instruction_out_mux0001_6_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N296,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(6)
    );
  IF_ID_regs_imp_instruction_out_mux0001_5_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N295,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(5)
    );
  IF_ID_regs_imp_instruction_out_mux0001_3_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N293,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(3)
    );
  IF_ID_regs_imp_instruction_out_mux0001_2_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N292,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(2)
    );
  IF_ID_regs_imp_instruction_out_mux0001_1_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N291,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(1)
    );
  IF_ID_regs_imp_instruction_out_mux0001_15_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N305,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(15)
    );
  IF_ID_regs_imp_instruction_out_mux0001_14_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N304,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(14)
    );
  IF_ID_regs_imp_instruction_out_mux0001_13_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N303,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(13)
    );
  IF_ID_regs_imp_instruction_out_mux0001_12_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N302,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(12)
    );
  IF_ID_regs_imp_instruction_out_mux0001_11_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N301,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(11)
    );
  IF_ID_regs_imp_instruction_out_mux0001_10_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N300,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(10)
    );
  IF_ID_regs_imp_instruction_out_mux0001_0_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N290,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => IF_ID_regs_imp_instruction_out_mux0001(0)
    );
  VGA_romAddr_mux0053_10_SW1 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => VGA_romAddr_add0001(9),
      I1 => VGA_N101,
      I2 => VGA_bt_and0133,
      I3 => N83,
      O => N1341
    );
  VGA_romAddr_mux0053_10_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_Msub_romAddr_sub0000_cy(8),
      I1 => VGA_romAddr_add0001(8),
      I2 => VGA_Madd_romAddr_addsub0000_Madd_cy(3),
      I3 => N1341,
      O => VGA_romAddr_mux0053(10)
    );
  write_back_data_from_alu_tmp_0_64_SW0_SW0_G : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(0),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      I3 => N366,
      O => N1202
    );
  register_module_imp_registers_imp_read_data1_1_61_SW0_SW1 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I1 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I2 => register_module_imp_controller_imp_operand2_src_or000014_2444,
      I3 => immediate_from_id_tmp(1),
      O => N985
    );
  register_module_imp_registers_imp_read_data1_4_61_SW0_SW1 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I1 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I2 => register_module_imp_controller_imp_operand2_src_or000014_2444,
      I3 => immediate_from_id_tmp(4),
      O => N1020
    );
  VGA_bt_not000118 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => VGA_bt_or000015_1932,
      I1 => VGA_bt_or000028_1933,
      I2 => VGA_bt_not000115_1912,
      O => VGA_bt_not000118_1914
    );
  ALU_imp_tmp_13_102 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ALU_imp_Sh101_106,
      I3 => ALU_imp_N10,
      O => ALU_imp_tmp_13_102_175
    );
  ALU_imp_tmp_14_102 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ALU_imp_Sh102_107,
      I3 => ALU_imp_N111,
      O => ALU_imp_tmp_14_102_181
    );
  VGA_romAddr_and0000239_SW0_G : LUT4
    generic map(
      INIT => X"BFBB"
    )
    port map (
      I0 => VGA_bt_and0137,
      I1 => VGA_N1011,
      I2 => VGA_N84,
      I3 => VGA_romAddr_and000068_1977,
      O => N1186
    );
  instruction_fetch_module_imp_pc_in_or0000_inv1 : LUT3
    generic map(
      INIT => X"0D"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => ALU_MEM_regs_imp_mem_address_out(15),
      I2 => N1711,
      O => ID_forward_IF_regs_imp_stall_inv
    );
  ID_ALU_regs_imp_immediate_out_mux0001_9_1 : LUT4
    generic map(
      INIT => X"00EC"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(6),
      I1 => register_module_imp_N12,
      I2 => register_module_imp_N17,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_immediate_out_mux0001(9)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_8_1 : LUT4
    generic map(
      INIT => X"00EC"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(7),
      I1 => register_module_imp_N12,
      I2 => register_module_imp_N17,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_immediate_out_mux0001(8)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_7_1 : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(8),
      I1 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I2 => register_module_imp_N63,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_immediate_out_mux0001(7)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_6_1 : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I2 => register_module_imp_N63,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_immediate_out_mux0001(6)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_5_1 : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(10),
      I1 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I2 => register_module_imp_N63,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_immediate_out_mux0001(5)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_10_1 : LUT4
    generic map(
      INIT => X"00EC"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(5),
      I1 => register_module_imp_N12,
      I2 => register_module_imp_N17,
      I3 => bubble_to_id_alu_tmp,
      O => ID_ALU_regs_imp_immediate_out_mux0001(10)
    );
  VGA_bt_not0001563_SW0_F : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => VGA_bt_cmp_le0009,
      I1 => VGA_bt_not0001590_1926,
      I2 => VGA_bt_cmp_ge0009,
      I3 => VGA_N101,
      O => N1237
    );
  VGA_romAddr_mux0053_4_42 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => VGA_bt_cmp_le0009,
      I1 => VGA_romAddr_mux0053_4_28_1986,
      I2 => VGA_bt_cmp_ge0009,
      I3 => VGA_N101,
      O => VGA_romAddr_mux0053_4_42_1987
    );
  ALU_imp_tmp_15_90_SW0 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N1577,
      I2 => N195,
      O => N1343
    );
  ALU_imp_tmp_15_90 : LUT4
    generic map(
      INIT => X"2031"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      I2 => ALU_imp_Sh107_109,
      I3 => N1343,
      O => ALU_imp_tmp_15_90_191
    );
  VGA_bt_and013731 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_x(4),
      I1 => N1345,
      I2 => VGA_bt_and013418_1848,
      I3 => VGA_x(5),
      O => VGA_bt_and0137
    );
  ID_ALU_regs_imp_op_code_out_mux0001_3_17_SW0 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => IF_ID_regs_imp_instruction_out(1),
      O => N1347
    );
  ID_ALU_regs_imp_op_code_out_mux0001_3_17 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(15),
      I2 => IF_ID_regs_imp_instruction_out(12),
      I3 => N1347,
      O => ID_ALU_regs_imp_op_code_out_mux0001_3_17_486
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_2_9_SW0 : LUT4
    generic map(
      INIT => X"A2F7"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => register_module_imp_controller_imp_op_code_cmp_eq0004,
      I2 => IF_ID_regs_imp_instruction_out(4),
      I3 => IF_ID_regs_imp_instruction_out(3),
      O => N1349
    );
  ID_ALU_regs_imp_write_back_reg_out_mux0001_2_9 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => N1349,
      I2 => register_module_imp_N58,
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => ID_ALU_regs_imp_write_back_reg_out_mux0001_2_9_630
    );
  VGA_bt_cmp_le00151 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_x(8),
      I2 => VGA_x(9),
      I3 => N1351,
      O => VGA_bt_cmp_le0015
    );
  VGA_bt_mux0000_1_100 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_bt_and0135_1849,
      I1 => VGA_N1011,
      I2 => VGA_bt_and0139,
      I3 => N1353,
      O => VGA_bt_mux0000_1_100_1891
    );
  VGA_bt_and013430 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_x(4),
      I1 => N1355,
      I2 => VGA_bt_and013418_1848,
      I3 => VGA_bt_cmp_ge00101_1871,
      O => VGA_bt_and0134
    );
  VGA_bt_cmp_eq0004_SW1 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => VGA_x(7),
      I1 => VGA_x(3),
      I2 => VGA_x(4),
      O => N1357
    );
  VGA_bt_mux0000_1_213 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => VGA_romData_mux0003,
      I1 => VGA_bt_and0137,
      I2 => VGA_bt_and0134,
      I3 => N1359,
      O => VGA_bt_mux0000_1_213_1899
    );
  VGA_romAddr_mux0053_8_1 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => VGA_N1011,
      I1 => VGA_bt_and0134,
      I2 => VGA_bt_and0135_1849,
      I3 => N1361,
      O => VGA_N10
    );
  ID_ALU_regs_imp_reg_write_enable_out_mux000139 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => register_module_imp_controller_imp_reg_write_enable_cmp_eq0001,
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => register_module_imp_N20,
      O => ID_ALU_regs_imp_reg_write_enable_out_mux000139_572
    );
  register_module_imp_controller_imp_is_branch_SW1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(10),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => IF_ID_regs_imp_instruction_out(9),
      O => N1363
    );
  register_module_imp_controller_imp_is_branch : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => N1363,
      O => is_branch_from_id_tmp
    );
  ALU_imp_tmp_8_64 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ALU_imp_Sh108_110,
      I3 => ALU_imp_tmp_cmp_eq0010,
      O => ALU_imp_tmp_8_64_256
    );
  ALU_imp_tmp_7_64 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ALU_imp_Sh107_109,
      I3 => ALU_imp_tmp_cmp_eq0010,
      O => ALU_imp_tmp_7_64_250
    );
  write_back_data_from_alu_tmp_0_166_SW1_G : LUT4
    generic map(
      INIT => X"3302"
    )
    port map (
      I0 => ID_ALU_regs_imp_immediate_out_0_Q,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      I3 => write_back_data_from_alu_tmp_0_132_3054,
      O => N1290
    );
  register_module_imp_registers_imp_read_data1_0_24_SW0_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => immediate_from_id_tmp(0),
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I2 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I3 => register_module_imp_controller_imp_operand2_src_or000014_2444,
      O => N1169
    );
  VGA_bt_and0138_SW0 : LUT4
    generic map(
      INIT => X"2AFF"
    )
    port map (
      I0 => VGA_N48,
      I1 => N1532,
      I2 => VGA_x(4),
      I3 => VGA_x(7),
      O => VGA_SF57116
    );
  VGA_bt_not0001332_SW0_G : LUT4
    generic map(
      INIT => X"FABA"
    )
    port map (
      I0 => VGA_bt_and0137,
      I1 => VGA_N84,
      I2 => VGA_bt_not0001107_1909,
      I3 => VGA_bt_and0139,
      O => N1240
    );
  register_module_imp_registers_imp_read_data2_2_59_SW1_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => immediate_from_id_tmp(2),
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I2 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I3 => register_module_imp_controller_imp_operand2_src_or000014_2444,
      O => N1231
    );
  register_module_imp_registers_imp_read_data1_1_61_SW1_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => immediate_from_id_tmp(1),
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I2 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I3 => register_module_imp_controller_imp_operand2_src_or000014_2444,
      O => N1241
    );
  register_module_imp_registers_imp_read_data1_3_61_SW1_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => immediate_from_id_tmp(3),
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I2 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I3 => register_module_imp_controller_imp_operand2_src_or000014_2444,
      O => N1243
    );
  register_module_imp_registers_imp_read_data1_4_61_SW1_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => immediate_from_id_tmp(4),
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I2 => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      I3 => register_module_imp_controller_imp_operand2_src_or000014_2444,
      O => N1245
    );
  register_module_imp_registers_imp_read_data1_5_61_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N12,
      I2 => IF_ID_regs_imp_instruction_out(5),
      I3 => register_module_imp_N17,
      O => N1247
    );
  register_module_imp_registers_imp_read_data1_6_61_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N12,
      I2 => IF_ID_regs_imp_instruction_out(6),
      I3 => register_module_imp_N17,
      O => N1249
    );
  register_module_imp_registers_imp_read_data1_7_61_SW1_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_N12,
      I2 => IF_ID_regs_imp_instruction_out(7),
      I3 => register_module_imp_N17,
      O => N1251
    );
  DM_imp_Ram1Addr_10_mux00062_SW1 : LUT4
    generic map(
      INIT => X"8F8A"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => ALU_MEM_regs_imp_mem_address_out(0),
      I2 => DM_imp_DataOut_10_and0000,
      I3 => ALU_MEM_regs_imp_mem_read_out_33,
      O => N1367
    );
  DM_imp_Ram1Addr_10_mux00062 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(15),
      I1 => DM_imp_judge_and000039_443,
      I2 => rst_IBUF1,
      I3 => N1367,
      O => N26
    );
  DM_imp_DataOut_0_mux000511 : LUT4
    generic map(
      INIT => X"20EC"
    )
    port map (
      I0 => DM_imp_judge_and000039_443,
      I1 => DM_imp_DataOut_10_and0000,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      I3 => ALU_MEM_regs_imp_mem_address_out(0),
      O => N5
    );
  DM_imp_Mtrien_Ram1Data_0_mux0000_SW1 : LUT4
    generic map(
      INIT => X"BF15"
    )
    port map (
      I0 => DM_imp_DataOut_10_and0000,
      I1 => ALU_MEM_regs_imp_mem_address_out(15),
      I2 => DM_imp_judge_and000039_443,
      I3 => ALU_MEM_regs_imp_mem_address_out(0),
      O => N1373
    );
  DM_imp_Mtrien_Ram1Data_0_mux0000 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => N1373,
      I2 => rst_IBUF1,
      I3 => ALU_MEM_regs_imp_mem_read_out_33,
      O => DM_imp_Mtrien_Ram1Data_0_mux0000_388
    );
  DM_imp_Ram1Addr_0_mux00063_SW1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => ALU_MEM_regs_imp_mem_read_out_33,
      I2 => DM_imp_DataOut_10_and0000,
      O => N1375
    );
  DM_imp_Ram1Addr_0_mux00063 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(15),
      I1 => DM_imp_judge_and000039_443,
      I2 => rst_IBUF1,
      I3 => N1375,
      O => N25
    );
  DM_imp_Ram1Addr_0_mux000621 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(15),
      I1 => rst_IBUF1,
      I2 => N55,
      I3 => DM_imp_judge_and000039_443,
      O => N10
    );
  instruction_fetch_module_imp_u_Ram2WE1 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => clk_IBUF1,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => ram2_we_OBUF_2364
    );
  DM_imp_Ram1WE1 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_write_out_34,
      I1 => ALU_MEM_regs_imp_mem_address_out(15),
      I2 => DM_imp_judge_and000039_443,
      I3 => clk_IBUF1,
      O => ram1_we_OBUF_2309
    );
  DM_imp_Ram1OE1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_read_out_33,
      I1 => ALU_MEM_regs_imp_mem_address_out(15),
      I2 => DM_imp_judge_and000039_443,
      I3 => clk_IBUF1,
      O => ram1_oe_OBUF_2307
    );
  write_back_data_from_alu_tmp_2_26_SW0_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      O => N1377
    );
  write_back_data_from_alu_tmp_2_26_SW0 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(0),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(2),
      I2 => N1377,
      I3 => ID_ALU_regs_imp_immediate_out_2_Q,
      O => N828
    );
  write_back_data_from_alu_tmp_2_26_SW1_SW0 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(0),
      I1 => ID_ALU_regs_imp_immediate_out_2_Q,
      I2 => ID_ALU_regs_imp_wb_data_from_reg_out(2),
      O => N1379
    );
  write_back_data_from_alu_tmp_2_26_SW1 : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => N1379,
      I2 => ID_ALU_regs_imp_wb_src_out(1),
      I3 => ID_ALU_regs_imp_wb_src_out(0),
      O => N829
    );
  write_back_data_from_alu_tmp_0_92_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(8),
      I1 => write_back_data_from_alu_tmp_0_83_3059,
      I2 => write_back_data_from_alu_tmp_0_78_3058,
      O => N1381
    );
  ID_ALU_regs_imp_op_code_out_mux0001_0_Q : LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(1),
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => IF_ID_regs_imp_instruction_out(12),
      I3 => N1385,
      O => ID_ALU_regs_imp_op_code_out_mux0001(0)
    );
  register_module_imp_decoder_imp_immediate_or0002_SW2 : LUT4
    generic map(
      INIT => X"C8CA"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(12),
      I2 => IF_ID_regs_imp_instruction_out(14),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => N1383
    );
  ID_ALU_regs_imp_operand1_out_mux0001_0_1 : LUT4
    generic map(
      INIT => X"2031"
    )
    port map (
      I0 => register_module_imp_operand1_src_tmp,
      I1 => bubble_to_id_alu_tmp,
      I2 => register_module_imp_read_data2_tmp(15),
      I3 => N1389,
      O => ID_ALU_regs_imp_operand1_out_mux0001(0)
    );
  ID_ALU_regs_imp_mem_write_out_mux00011 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => mem_write_from_id_tmp,
      I1 => ID_ALU_regs_imp_mem_read_out_469,
      I2 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I3 => N1337,
      O => ID_ALU_regs_imp_mem_write_out_mux0001
    );
  ID_ALU_regs_imp_immediate_out_mux0001_15_1 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => immediate_from_id_tmp(0),
      I1 => ID_ALU_regs_imp_mem_read_out_469,
      I2 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I3 => N1337,
      O => ID_ALU_regs_imp_immediate_out_mux0001(15)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_14_1 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => immediate_from_id_tmp(1),
      I1 => ID_ALU_regs_imp_mem_read_out_469,
      I2 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I3 => N1337,
      O => ID_ALU_regs_imp_immediate_out_mux0001(14)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_13_1 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => immediate_from_id_tmp(2),
      I1 => ID_ALU_regs_imp_mem_read_out_469,
      I2 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I3 => N1337,
      O => ID_ALU_regs_imp_immediate_out_mux0001(13)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_12_1 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => immediate_from_id_tmp(3),
      I1 => ID_ALU_regs_imp_mem_read_out_469,
      I2 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I3 => N1337,
      O => ID_ALU_regs_imp_immediate_out_mux0001(12)
    );
  ID_ALU_regs_imp_immediate_out_mux0001_11_1 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => immediate_from_id_tmp(4),
      I1 => ID_ALU_regs_imp_mem_read_out_469,
      I2 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I3 => N1337,
      O => ID_ALU_regs_imp_immediate_out_mux0001(11)
    );
  IF_ID_regs_imp_stall_inv1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1699,
      O => IF_ID_regs_imp_stall_inv
    );
  VGA_bt_not0001536 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => VGA_bt_and0134,
      I1 => VGA_bt_cmp_eq0002,
      I2 => VGA_N911,
      I3 => N1393,
      O => VGA_bt_not0001536_1925
    );
  VGA_bt_not000151 : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => N1535,
      I1 => VGA_N911,
      I2 => N1393,
      I3 => VGA_N83,
      O => VGA_bt_not000151_1924
    );
  ID_ALU_regs_imp_reg_write_enable_out_mux0001104_SW0 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ID_ALU_regs_imp_reg_write_enable_out_mux000110_570,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_mux000116_571,
      I2 => ID_ALU_regs_imp_reg_write_enable_out_mux000177_574,
      I3 => register_module_imp_N47,
      O => N1399
    );
  ID_ALU_regs_imp_reg_write_enable_out_mux0001104 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => N1399,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => ID_ALU_regs_imp_mem_read_out_469,
      O => ID_ALU_regs_imp_reg_write_enable_out_mux0001
    );
  register_module_imp_controller_imp_is_jump_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(12),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => IF_ID_regs_imp_instruction_out(14),
      O => register_module_imp_controller_imp_op_code_cmp_eq0007
    );
  ALU_imp_tmp_0_12 : LUT4
    generic map(
      INIT => X"EAC8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(0),
      I1 => N1401,
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_0_12_137
    );
  VGA_SF2621_SW0 : LUT4
    generic map(
      INIT => X"A7BF"
    )
    port map (
      I0 => VGA_y(6),
      I1 => VGA_y(4),
      I2 => VGA_y(7),
      I3 => VGA_y(5),
      O => N1403
    );
  VGA_romAddr_and0000389 : LUT4
    generic map(
      INIT => X"AF2F"
    )
    port map (
      I0 => VGA_bt_cmp_eq0002,
      I1 => N1706,
      I2 => VGA_bt_and0134,
      I3 => VGA_N110,
      O => VGA_romAddr_and0000389_1972
    );
  register_module_imp_registers_imp_read_data1_0_60_SW6 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => register_module_imp_registers_imp_read_data1_0_37_2764,
      I3 => write_back_data_from_alu_tmp(0),
      O => N1317
    );
  VGA_romAddr_and000050_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => N1707,
      I1 => VGA_bt_or0012_1939,
      I2 => VGA_bt_or0008,
      O => N1407
    );
  VGA_romAddr_and000050 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => N1702,
      I1 => N1407,
      I2 => VGA_bt_or0010,
      I3 => VGA_N1011,
      O => VGA_romAddr_and000050_1976
    );
  register_module_imp_decoder_imp_immediate_4_18_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_module_imp_decoder_imp_immediate_or0002_2451,
      I1 => register_module_imp_decoder_imp_immediate_4_6_2449,
      I2 => N1693,
      O => N1409
    );
  register_module_imp_controller_imp_operand1_src19_SW1 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => IF_ID_regs_imp_instruction_out(13),
      O => N1411
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_14_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(1),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(14)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_13_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(2),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(13)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_12_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(3),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(12)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_11_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(4),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(11)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_10_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(5),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(10)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_9_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(6),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(9)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_8_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(7),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(8)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_7_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(8),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(7)
    );
  ID_ALU_regs_imp_wb_data_from_reg_out_mux0001_6_1 : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      I3 => branch_relative_reg_data_from_id_tmp(9),
      O => ID_ALU_regs_imp_wb_data_from_reg_out_mux0001(6)
    );
  DM_imp_DataOut_0_mux000521 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => DM_imp_judge_and000039_443,
      I1 => DM_imp_DataOut_10_and0000,
      I2 => ALU_MEM_regs_imp_mem_address_out(15),
      O => N18
    );
  VGA_romAddr_mux0053_8_Q : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => VGA_N101,
      I1 => VGA_bt_cmp_ge0009,
      I2 => N1413,
      I3 => VGA_N10,
      O => VGA_romAddr_mux0053(8)
    );
  register_module_imp_registers_imp_read_data2_0_59_SW1 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I2 => MEM_WB_regs_imp_write_back_data_out(0),
      I3 => write_back_data_from_mem_tmp(0),
      O => N1387
    );
  ID_ALU_regs_imp_op_code_out_mux0001_1_10_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_N61,
      I1 => IF_ID_regs_imp_instruction_out(2),
      I2 => IF_ID_regs_imp_instruction_out(3),
      O => N1415
    );
  ID_ALU_regs_imp_op_code_out_mux0001_1_10 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => register_module_imp_controller_imp_op_code_cmp_eq0007,
      I1 => IF_ID_regs_imp_instruction_out(0),
      I2 => IF_ID_regs_imp_instruction_out(1),
      I3 => N1415,
      O => ID_ALU_regs_imp_op_code_out_mux0001_1_10_482
    );
  register_module_imp_controller_imp_operand2_src_or000014_SW0 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(12),
      I2 => IF_ID_regs_imp_instruction_out(14),
      O => N1417
    );
  VGA_Madd_romAddr_add0001_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => VGA_y(0),
      O => VGA_Madd_romAddr_add0001_cy_0_rt_1693
    );
  IF_ID_regs_imp_instruction_out_11_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(4),
      Q => IF_ID_regs_imp_instruction_out_11_1_690
    );
  IF_ID_regs_imp_instruction_out_13_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(2),
      Q => IF_ID_regs_imp_instruction_out_13_1_696
    );
  register_module_imp_registers_imp_read_data1_0_51_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => read_reg_1_from_id(3),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      O => register_module_imp_registers_imp_read_data1_0_51_2766
    );
  IF_ID_regs_imp_instruction_out_14_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(1),
      Q => IF_ID_regs_imp_instruction_out_14_1_699
    );
  register_module_imp_decoder_imp_read_reg_1_1_39_1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => N501,
      I1 => N676,
      I2 => N675,
      I3 => N1635,
      O => register_module_imp_decoder_imp_read_reg_1_1_39_2455
    );
  IF_ID_regs_imp_instruction_out_15_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(0),
      Q => IF_ID_regs_imp_instruction_out_15_1_701
    );
  IF_ID_regs_imp_instruction_out_12_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(3),
      Q => IF_ID_regs_imp_instruction_out_12_1_693
    );
  register_module_imp_decoder_imp_read_reg_1_0_20_1 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => N501,
      I1 => N673,
      I2 => N672,
      I3 => N1634,
      O => register_module_imp_decoder_imp_read_reg_1_0_20_2453
    );
  IF_ID_regs_imp_instruction_out_15_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(0),
      Q => IF_ID_regs_imp_instruction_out_15_2_702
    );
  IF_ID_regs_imp_instruction_out_12_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(3),
      Q => IF_ID_regs_imp_instruction_out_12_2_694
    );
  register_module_imp_decoder_imp_read_reg_2_1_1_1 : LUT4
    generic map(
      INIT => X"EE2E"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(6),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => N707,
      I3 => N1668,
      O => register_module_imp_decoder_imp_read_reg_2_1_1_2460
    );
  IF_ID_regs_imp_instruction_out_13_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(2),
      Q => IF_ID_regs_imp_instruction_out_13_2_697
    );
  IF_ID_regs_imp_instruction_out_11_2 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(4),
      Q => IF_ID_regs_imp_instruction_out_11_2_691
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1 : LUT4
    generic map(
      INIT => X"0804"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_reg_out(1),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000055_1675,
      I2 => N1659,
      I3 => register_module_imp_decoder_imp_read_reg_1_1_391,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676
    );
  IF_ID_regs_imp_instruction_out_3_1 : FDCE
    port map (
      C => clk_IBUF_2083,
      CE => IF_ID_regs_imp_stall_inv,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => IF_ID_regs_imp_instruction_out_mux0001(12),
      Q => IF_ID_regs_imp_instruction_out_3_1_705
    );
  ID_ALU_regs_imp_op_code_out_2_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_op_code_out_mux0001(1),
      Q => ID_ALU_regs_imp_op_code_out_2_1_477
    );
  ID_ALU_regs_imp_op_code_out_3_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_op_code_out_mux0001(0),
      Q => ID_ALU_regs_imp_op_code_out_3_1_479
    );
  ID_ALU_regs_imp_op_code_out_1_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_op_code_out_mux0001(2),
      Q => ID_ALU_regs_imp_op_code_out_1_1_475
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1 : LUT4
    generic map(
      INIT => X"0804"
    )
    port map (
      I0 => ALU_MEM_regs_imp_write_back_reg_out(1),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000055_1671,
      I2 => N464,
      I3 => N1710,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672
    );
  clk_IBUF_BUFG : BUFG
    port map (
      I => clk_IBUF1,
      O => clk_IBUF_2083
    );
  VGA_CLK_2_BUFG : BUFG
    port map (
      I => VGA_CLK_21,
      O => VGA_CLK_2_1690
    );
  rst_IBUF_BUFG : BUFG
    port map (
      I => rst_IBUF1,
      O => rst_IBUF_3043
    );
  clk_manual_BUFGP : BUFGP
    port map (
      I => clk_manual,
      O => clk_manual_BUFGP_2086
    );
  DM_imp_Mcompar_judge_cmp_gt0001_lut_4_INV_0 : INV
    port map (
      I => ALU_MEM_regs_imp_mem_address_out(14),
      O => DM_imp_Mcompar_judge_cmp_gt0001_lut(4)
    );
  instruction_fetch_module_imp_Madd_pc_in_share0000_lut_0_INV_0 : INV
    port map (
      I => instruction_fetch_module_imp_pc_in(0),
      O => instruction_fetch_module_imp_Madd_pc_in_share0000_lut(0)
    );
  VGA_Mcount_x_lut_0_INV_0 : INV
    port map (
      I => VGA_x(0),
      O => VGA_Mcount_x_lut(0)
    );
  register_module_imp_registers_imp_regs_0_Acst_inv1_INV_0 : INV
    port map (
      I => rst_IBUF1,
      O => ALU_MEM_regs_imp_rst_inv
    );
  DM_imp_DataOut_0_0_not00011_INV_0 : INV
    port map (
      I => ALU_MEM_regs_imp_mem_write_out_34,
      O => DM_imp_DataOut_0_0_not0001
    );
  DM_imp_Ram1EN1_INV_0 : INV
    port map (
      I => ALU_MEM_regs_imp_mem_enable_out_32,
      O => ram1_en_OBUF_2305
    );
  VGA_Madd_romAddr_not0000_5_1_INV_0 : INV
    port map (
      I => VGA_y(5),
      O => VGA_Madd_romAddr_not0000_5_Q
    );
  VGA_Madd_romAddr_not0000_4_1_INV_0 : INV
    port map (
      I => VGA_y(4),
      O => VGA_Madd_romAddr_not0000_4_Q
    );
  VGA_Madd_romAddr_not0000_3_1_INV_0 : INV
    port map (
      I => VGA_y(3),
      O => VGA_Madd_romAddr_not0000_3_Q
    );
  VGA_Madd_romAddr_not0000_2_1_INV_0 : INV
    port map (
      I => VGA_y(2),
      O => VGA_Madd_romAddr_not0000_2_Q
    );
  VGA_Madd_romAddr_not0000_1_1_INV_0 : INV
    port map (
      I => VGA_y(1),
      O => VGA_Madd_romAddr_not0000_1_Q
    );
  VGA_Mcount_y_lut_0_1_INV_0 : INV
    port map (
      I => VGA_y(0),
      O => VGA_Mcount_y_lut_0_1
    );
  ALU_imp_tmp_0_76_SW0_SW2 : MUXF5
    port map (
      I0 => N1419,
      I1 => N1420,
      S => ID_ALU_regs_imp_operand2_out(0),
      O => N1103
    );
  ALU_imp_tmp_0_76_SW0_SW2_F : LUT4
    generic map(
      INIT => X"1BFF"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(12),
      I2 => ID_ALU_regs_imp_operand1_out(10),
      I3 => ID_ALU_regs_imp_operand2_out(2),
      O => N1419
    );
  ALU_imp_tmp_0_76_SW0_SW2_G : LUT4
    generic map(
      INIT => X"1BFF"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand1_out(9),
      I3 => ID_ALU_regs_imp_operand2_out(2),
      O => N1420
    );
  ALU_imp_tmp_0_34 : MUXF5
    port map (
      I0 => N1421,
      I1 => N1422,
      S => ID_ALU_regs_imp_op_code_out(1),
      O => ALU_imp_tmp_0_34_140
    );
  ALU_imp_tmp_0_34_F : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_operand2_out(0),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      O => N1421
    );
  ALU_imp_tmp_0_34_G : LUT4
    generic map(
      INIT => X"E3E2"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(0),
      I1 => ID_ALU_regs_imp_op_code_out(2),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_operand2_out(0),
      O => N1422
    );
  DM_imp_Mtrien_Ram1Data_0_not0001 : MUXF5
    port map (
      I0 => N1423,
      I1 => N1424,
      S => ALU_MEM_regs_imp_mem_write_out_34,
      O => DM_imp_Mtrien_Ram1Data_0_not0001_389
    );
  DM_imp_Mtrien_Ram1Data_0_not0001_F : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => ALU_MEM_regs_imp_mem_read_out_33,
      I2 => DM_imp_judge,
      I3 => DM_imp_DataOut_10_and0000,
      O => N1423
    );
  DM_imp_Mtrien_Ram1Data_0_not0001_G : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => DM_imp_judge,
      I2 => DM_imp_DataOut_10_and0000,
      I3 => ALU_MEM_regs_imp_mem_address_out(0),
      O => N1424
    );
  register_module_imp_decoder_imp_immediate_3_Q : MUXF5
    port map (
      I0 => N1425,
      I1 => N1426,
      S => register_module_imp_controller_imp_operand2_src_cmp_eq0001,
      O => immediate_from_id_tmp(3)
    );
  register_module_imp_decoder_imp_immediate_3_F : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(3),
      I1 => register_module_imp_N0,
      I2 => IF_ID_regs_imp_instruction_out(4),
      I3 => register_module_imp_decoder_imp_immediate_or0002_2451,
      O => N1425
    );
  register_module_imp_decoder_imp_immediate_3_G : LUT4
    generic map(
      INIT => X"FFD1"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(2),
      I1 => IF_ID_regs_imp_instruction_out(3),
      I2 => register_module_imp_N0,
      I3 => IF_ID_regs_imp_instruction_out(4),
      O => N1426
    );
  VGA_romAddr_and0000338 : MUXF5
    port map (
      I0 => N1427,
      I1 => VGA_romAddr_and0000311_1970,
      S => VGA_N83,
      O => VGA_romAddr_and0000338_1971
    );
  VGA_romAddr_and0000338_F : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => VGA_bt_cmp_eq0003,
      I1 => VGA_N02,
      I2 => VGA_bt_or0008,
      I3 => VGA_N110,
      O => N1427
    );
  register_module_imp_controller_imp_reg_write_enable21 : MUXF5
    port map (
      I0 => N1429,
      I1 => N1430,
      S => IF_ID_regs_imp_instruction_out(15),
      O => register_module_imp_N47
    );
  register_module_imp_controller_imp_reg_write_enable21_F : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(12),
      I2 => IF_ID_regs_imp_instruction_out(13),
      O => N1429
    );
  register_module_imp_controller_imp_reg_write_enable21_G : LUT4
    generic map(
      INIT => X"0420"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => IF_ID_regs_imp_instruction_out(12),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => N1430
    );
  register_module_imp_decoder_imp_immediate_or000032_SW0_SW0 : MUXF5
    port map (
      I0 => N1431,
      I1 => N1432,
      S => IF_ID_regs_imp_instruction_out(11),
      O => N1134
    );
  register_module_imp_decoder_imp_immediate_or000032_SW0_SW0_F : LUT4
    generic map(
      INIT => X"0424"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => IF_ID_regs_imp_instruction_out(14),
      O => N1431
    );
  register_module_imp_decoder_imp_immediate_or000032_SW0_SW0_G : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => IF_ID_regs_imp_instruction_out(12),
      I3 => IF_ID_regs_imp_instruction_out(14),
      O => N1432
    );
  ALU_imp_tmp_2_137 : MUXF5
    port map (
      I0 => N1433,
      I1 => N1434,
      S => ID_ALU_regs_imp_operand2_out(2),
      O => ALU_imp_tmp_2_137_204
    );
  ALU_imp_tmp_2_137_F : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N363,
      I1 => N342,
      O => N1433
    );
  ALU_imp_tmp_2_137_G : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => N363,
      I2 => ALU_imp_Sh6_126,
      I3 => ALU_imp_tmp_10_148,
      O => N1434
    );
  DM_imp_Mtrien_Ram1Data_10_not0001 : MUXF5
    port map (
      I0 => N1435,
      I1 => N1436,
      S => ALU_MEM_regs_imp_mem_write_out_34,
      O => DM_imp_Mtrien_Ram1Data_10_not0001_394
    );
  DM_imp_Mtrien_Ram1Data_10_not0001_F : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => ALU_MEM_regs_imp_mem_read_out_33,
      I2 => DM_imp_judge,
      I3 => DM_imp_DataOut_10_and0000,
      O => N1435
    );
  DM_imp_Mtrien_Ram1Data_10_not0001_G : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => DM_imp_judge,
      I1 => rst_IBUF1,
      I2 => DM_imp_DataOut_10_and0000,
      I3 => ALU_MEM_regs_imp_mem_address_out(0),
      O => N1436
    );
  register_module_imp_decoder_imp_write_back_reg_1_149 : MUXF5
    port map (
      I0 => N1437,
      I1 => N1438,
      S => IF_ID_regs_imp_instruction_out(14),
      O => register_module_imp_decoder_imp_write_back_reg_1_149_2463
    );
  register_module_imp_decoder_imp_write_back_reg_1_149_F : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(15),
      I2 => IF_ID_regs_imp_instruction_out(12),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => N1437
    );
  register_module_imp_decoder_imp_write_back_reg_1_149_G : LUT4
    generic map(
      INIT => X"8EFE"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => N1438
    );
  DM_imp_Mtridata_Ram1Data_10_mux00001 : MUXF5
    port map (
      I0 => N1439,
      I1 => N1440,
      S => ALU_MEM_regs_imp_mem_write_out_34,
      O => N11
    );
  DM_imp_Mtridata_Ram1Data_10_mux00001_F : LUT4
    generic map(
      INIT => X"15FF"
    )
    port map (
      I0 => DM_imp_DataOut_10_and0000,
      I1 => ALU_MEM_regs_imp_mem_address_out(15),
      I2 => DM_imp_judge_and000039_443,
      I3 => ALU_MEM_regs_imp_mem_read_out_33,
      O => N1439
    );
  DM_imp_Mtridata_Ram1Data_10_mux00001_G : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => DM_imp_judge_and000039_443,
      I1 => DM_imp_DataOut_10_and0000,
      I2 => ALU_MEM_regs_imp_mem_address_out(0),
      I3 => ALU_MEM_regs_imp_mem_address_out(15),
      O => N1440
    );
  DM_imp_Mtridata_Ram1Data_0_mux00001 : MUXF5
    port map (
      I0 => N1441,
      I1 => N1442,
      S => ALU_MEM_regs_imp_mem_write_out_34,
      O => N2
    );
  DM_imp_Mtridata_Ram1Data_0_mux00001_F : LUT4
    generic map(
      INIT => X"15FF"
    )
    port map (
      I0 => DM_imp_DataOut_10_and0000,
      I1 => ALU_MEM_regs_imp_mem_address_out(15),
      I2 => DM_imp_judge_and000039_443,
      I3 => ALU_MEM_regs_imp_mem_read_out_33,
      O => N1441
    );
  DM_imp_Mtridata_Ram1Data_0_mux00001_G : LUT4
    generic map(
      INIT => X"51F3"
    )
    port map (
      I0 => DM_imp_judge_and000039_443,
      I1 => DM_imp_DataOut_10_and0000,
      I2 => ALU_MEM_regs_imp_mem_address_out(0),
      I3 => ALU_MEM_regs_imp_mem_address_out(15),
      O => N1442
    );
  register_module_imp_registers_imp_read_data2_1_17 : MUXF5
    port map (
      I0 => N1443,
      I1 => N1444,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_read_data2_1_17_2856
    );
  register_module_imp_registers_imp_read_data2_1_17_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => read_reg_2_from_id(0),
      I2 => register_module_imp_registers_imp_ra(1),
      I3 => register_module_imp_registers_imp_ih(1),
      O => N1443
    );
  register_module_imp_registers_imp_read_data2_1_17_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => register_module_imp_registers_imp_t(1),
      I2 => read_reg_2_from_id(0),
      O => N1444
    );
  register_module_imp_registers_imp_read_data2_3_17 : MUXF5
    port map (
      I0 => N1445,
      I1 => N1446,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_read_data2_3_17_2861
    );
  register_module_imp_registers_imp_read_data2_3_17_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => read_reg_2_from_id(0),
      I2 => register_module_imp_registers_imp_ra(3),
      I3 => register_module_imp_registers_imp_ih(3),
      O => N1445
    );
  register_module_imp_registers_imp_read_data2_3_17_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => register_module_imp_registers_imp_t(3),
      I2 => read_reg_2_from_id(0),
      O => N1446
    );
  register_module_imp_registers_imp_read_data2_4_17 : MUXF5
    port map (
      I0 => N1447,
      I1 => N1448,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_read_data2_4_17_2863
    );
  register_module_imp_registers_imp_read_data2_4_17_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => read_reg_2_from_id(0),
      I2 => register_module_imp_registers_imp_ra(4),
      I3 => register_module_imp_registers_imp_ih(4),
      O => N1447
    );
  register_module_imp_registers_imp_read_data2_4_17_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => register_module_imp_registers_imp_t(4),
      I2 => read_reg_2_from_id(0),
      O => N1448
    );
  register_module_imp_registers_imp_read_data2_5_17 : MUXF5
    port map (
      I0 => N1449,
      I1 => N1450,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_read_data2_5_17_2865
    );
  register_module_imp_registers_imp_read_data2_5_17_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => read_reg_2_from_id(0),
      I2 => register_module_imp_registers_imp_ra(5),
      I3 => register_module_imp_registers_imp_ih(5),
      O => N1449
    );
  register_module_imp_registers_imp_read_data2_5_17_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => register_module_imp_registers_imp_t(5),
      I2 => read_reg_2_from_id(0),
      O => N1450
    );
  register_module_imp_registers_imp_read_data2_6_17 : MUXF5
    port map (
      I0 => N1451,
      I1 => N1452,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_read_data2_6_17_2866
    );
  register_module_imp_registers_imp_read_data2_6_17_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => read_reg_2_from_id(0),
      I2 => register_module_imp_registers_imp_ra(6),
      I3 => register_module_imp_registers_imp_ih(6),
      O => N1451
    );
  register_module_imp_registers_imp_read_data2_6_17_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => register_module_imp_registers_imp_t(6),
      I2 => read_reg_2_from_id(0),
      O => N1452
    );
  register_module_imp_registers_imp_read_data2_7_17 : MUXF5
    port map (
      I0 => N1453,
      I1 => N1454,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_read_data2_7_17_2868
    );
  register_module_imp_registers_imp_read_data2_7_17_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => read_reg_2_from_id(0),
      I2 => register_module_imp_registers_imp_ra(7),
      I3 => register_module_imp_registers_imp_ih(7),
      O => N1453
    );
  register_module_imp_registers_imp_read_data2_7_17_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => register_module_imp_registers_imp_t(7),
      I2 => read_reg_2_from_id(0),
      O => N1454
    );
  register_module_imp_registers_imp_read_data2_8_17 : MUXF5
    port map (
      I0 => N1455,
      I1 => N1456,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_read_data2_8_17_2869
    );
  register_module_imp_registers_imp_read_data2_8_17_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => read_reg_2_from_id(0),
      I2 => register_module_imp_registers_imp_ra(8),
      I3 => register_module_imp_registers_imp_ih(8),
      O => N1455
    );
  register_module_imp_registers_imp_read_data2_8_17_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => register_module_imp_registers_imp_t(8),
      I2 => read_reg_2_from_id(0),
      O => N1456
    );
  register_module_imp_registers_imp_read_data2_9_17 : MUXF5
    port map (
      I0 => N1457,
      I1 => N1458,
      S => read_reg_2_from_id(1),
      O => register_module_imp_registers_imp_read_data2_9_17_2870
    );
  register_module_imp_registers_imp_read_data2_9_17_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => read_reg_2_from_id(0),
      I2 => register_module_imp_registers_imp_ra(9),
      I3 => register_module_imp_registers_imp_ih(9),
      O => N1457
    );
  register_module_imp_registers_imp_read_data2_9_17_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => register_module_imp_registers_imp_N35,
      I1 => register_module_imp_registers_imp_t(9),
      I2 => read_reg_2_from_id(0),
      O => N1458
    );
  VGA_romAddr_mux0053_5_85 : MUXF5
    port map (
      I0 => N1459,
      I1 => N1460,
      S => VGA_bt_and0133,
      O => VGA_romAddr_mux0053_5_85_1991
    );
  VGA_romAddr_mux0053_5_85_F : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_bt_and0134,
      I1 => VGA_bt_and0137,
      I2 => VGA_N95,
      I3 => VGA_romAddr_mux0053_5_70_1990,
      O => N1459
    );
  VGA_romAddr_mux0053_5_85_G : LUT4
    generic map(
      INIT => X"41EB"
    )
    port map (
      I0 => VGA_Msub_romAddr_sub0000_cy(8),
      I1 => N1311,
      I2 => VGA_romAddr_add0001(6),
      I3 => VGA_y(6),
      O => N1460
    );
  ID_ALU_regs_imp_op_code_out_mux0001_2_12 : MUXF5
    port map (
      I0 => N1461,
      I1 => N1462,
      S => IF_ID_regs_imp_instruction_out(0),
      O => ID_ALU_regs_imp_op_code_out_mux0001_2_12_484
    );
  ID_ALU_regs_imp_op_code_out_mux0001_2_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => register_module_imp_controller_imp_op_code_cmp_eq0007,
      I1 => IF_ID_regs_imp_instruction_out(1),
      I2 => IF_ID_regs_imp_instruction_out(2),
      I3 => register_module_imp_N61,
      O => N1461
    );
  ID_ALU_regs_imp_op_code_out_mux0001_2_12_G : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(3),
      I1 => IF_ID_regs_imp_instruction_out(1),
      I2 => IF_ID_regs_imp_instruction_out(2),
      I3 => register_module_imp_N61,
      O => N1462
    );
  DM_imp_DataOut_0_mux000513 : MUXF5
    port map (
      I0 => N1463,
      I1 => N1464,
      S => DM_imp_DataOut_10_and0000,
      O => DM_imp_DataOut_0_mux0005
    );
  DM_imp_DataOut_0_mux000513_F : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(15),
      I1 => DM_imp_DataOut(0),
      I2 => DM_imp_judge_and000039_443,
      I3 => N289,
      O => N1463
    );
  DM_imp_DataOut_0_mux000513_G : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(0),
      I1 => N289,
      I2 => tbre_IBUF_3046,
      I3 => tsre_IBUF_3048,
      O => N1464
    );
  register_module_imp_controller_imp_operand1_src116_SW0 : MUXF5
    port map (
      I0 => N1465,
      I1 => N1466,
      S => IF_ID_regs_imp_instruction_out(15),
      O => N1391
    );
  register_module_imp_controller_imp_operand1_src116_SW0_F : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(10),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(9),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => N1465
    );
  register_module_imp_controller_imp_operand1_src116_SW0_G : LUT4
    generic map(
      INIT => X"AF2F"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(3),
      I2 => IF_ID_regs_imp_instruction_out(13),
      I3 => N1325,
      O => N1466
    );
  VGA_romAddr_mux0053_6_131 : MUXF5
    port map (
      I0 => N1467,
      I1 => N1468,
      S => VGA_bt_and0133,
      O => VGA_romAddr_mux0053_6_131_1994
    );
  VGA_romAddr_mux0053_6_131_F : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_bt_and0134,
      I1 => VGA_bt_and0137,
      I2 => VGA_N95,
      I3 => VGA_romAddr_mux0053_6_111_1993,
      O => N1467
    );
  VGA_romAddr_mux0053_6_131_G : LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      I0 => VGA_y(7),
      I1 => VGA_y(6),
      I2 => VGA_romAddr_mux0053_6_43_1995,
      I3 => VGA_y(8),
      O => N1468
    );
  ALU_imp_tmp_2_12 : MUXF5
    port map (
      I0 => N1469,
      I1 => N1470,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_2_12_203
    );
  ALU_imp_tmp_2_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(2),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(2),
      O => N1469
    );
  ALU_imp_tmp_2_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(2),
      O => N1470
    );
  ALU_imp_tmp_8_12 : MUXF5
    port map (
      I0 => N1471,
      I1 => N1472,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_8_12_253
    );
  ALU_imp_tmp_8_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(8),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(8),
      O => N1471
    );
  ALU_imp_tmp_8_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(8),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(8),
      O => N1472
    );
  ALU_imp_tmp_7_12 : MUXF5
    port map (
      I0 => N1473,
      I1 => N1474,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_7_12_247
    );
  ALU_imp_tmp_7_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(7),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(7),
      O => N1473
    );
  ALU_imp_tmp_7_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(7),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(7),
      O => N1474
    );
  ALU_imp_tmp_1_12 : MUXF5
    port map (
      I0 => N1475,
      I1 => N1476,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_1_12_193
    );
  ALU_imp_tmp_1_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(1),
      O => N1475
    );
  ALU_imp_tmp_1_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(1),
      O => N1476
    );
  ALU_imp_tmp_15_12 : MUXF5
    port map (
      I0 => N1477,
      I1 => N1478,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_15_12_187
    );
  ALU_imp_tmp_15_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(15),
      O => N1477
    );
  ALU_imp_tmp_15_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(15),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(15),
      O => N1478
    );
  ALU_imp_tmp_10_12 : MUXF5
    port map (
      I0 => N1479,
      I1 => N1480,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_10_12_146
    );
  ALU_imp_tmp_10_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(10),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(10),
      O => N1479
    );
  ALU_imp_tmp_10_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(10),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(10),
      O => N1480
    );
  ALU_imp_tmp_9_12 : MUXF5
    port map (
      I0 => N1481,
      I1 => N1482,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_9_12_259
    );
  ALU_imp_tmp_9_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(9),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(9),
      O => N1481
    );
  ALU_imp_tmp_9_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(9),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(9),
      O => N1482
    );
  ALU_imp_tmp_6_12 : MUXF5
    port map (
      I0 => N1483,
      I1 => N1484,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_6_12_239
    );
  ALU_imp_tmp_6_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(6),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(6),
      O => N1483
    );
  ALU_imp_tmp_6_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(6),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(6),
      O => N1484
    );
  ALU_imp_tmp_5_12 : MUXF5
    port map (
      I0 => N1485,
      I1 => N1486,
      S => ALU_imp_tmp_cmp_eq0004,
      O => ALU_imp_tmp_5_12_230
    );
  ALU_imp_tmp_5_12_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0006,
      I1 => ID_ALU_regs_imp_operand1_out(5),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ID_ALU_regs_imp_operand2_out(5),
      O => N1485
    );
  ALU_imp_tmp_5_12_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(5),
      I1 => ALU_imp_tmp_cmp_eq0006,
      I2 => ID_ALU_regs_imp_operand1_out(5),
      O => N1486
    );
  register_module_imp_registers_imp_read_data2_1_53 : MUXF5
    port map (
      I0 => N1487,
      I1 => N1488,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_1_53_2857
    );
  register_module_imp_registers_imp_read_data2_1_53_F : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I2 => N1050,
      I3 => write_back_data_from_mem_tmp(1),
      O => N1487
    );
  register_module_imp_registers_imp_read_data2_1_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_1_26_3083,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_1_5_3084,
      I3 => write_back_data_from_alu_tmp_1_111_3082,
      O => N1488
    );
  register_module_imp_registers_imp_read_data2_6_53 : MUXF5
    port map (
      I0 => N1489,
      I1 => N1490,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_6_53_2867
    );
  register_module_imp_registers_imp_read_data2_6_53_F : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I2 => N1091,
      I3 => write_back_data_from_mem_tmp(6),
      O => N1489
    );
  register_module_imp_registers_imp_read_data2_6_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_6_26_3101,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_6_5_3102,
      I3 => write_back_data_from_alu_tmp_6_111_3100,
      O => N1490
    );
  register_module_imp_registers_imp_read_data2_10_53 : MUXF5
    port map (
      I0 => N1491,
      I1 => N1492,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_10_53_2844
    );
  register_module_imp_registers_imp_read_data2_10_53_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => MEM_WB_regs_imp_write_back_data_out(10),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => write_back_data_from_mem_tmp(10),
      O => N1491
    );
  register_module_imp_registers_imp_read_data2_10_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_10_26_3064,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_10_5_3065,
      I3 => write_back_data_from_alu_tmp_10_111_3063,
      O => N1492
    );
  register_module_imp_registers_imp_read_data2_12_53 : MUXF5
    port map (
      I0 => N1493,
      I1 => N1494,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_12_53_2848
    );
  register_module_imp_registers_imp_read_data2_12_53_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => MEM_WB_regs_imp_write_back_data_out(12),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => write_back_data_from_mem_tmp(12),
      O => N1493
    );
  register_module_imp_registers_imp_read_data2_12_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_12_26_3070,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_12_5_3071,
      I3 => write_back_data_from_alu_tmp_10_111_3063,
      O => N1494
    );
  register_module_imp_registers_imp_read_data2_11_53 : MUXF5
    port map (
      I0 => N1495,
      I1 => N1496,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_11_53_2846
    );
  register_module_imp_registers_imp_read_data2_11_53_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => MEM_WB_regs_imp_write_back_data_out(11),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => write_back_data_from_mem_tmp(11),
      O => N1495
    );
  register_module_imp_registers_imp_read_data2_11_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_11_26_3067,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_11_5_3068,
      I3 => write_back_data_from_alu_tmp_10_111_3063,
      O => N1496
    );
  register_module_imp_registers_imp_read_data2_13_53 : MUXF5
    port map (
      I0 => N1497,
      I1 => N1498,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_13_53_2850
    );
  register_module_imp_registers_imp_read_data2_13_53_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => MEM_WB_regs_imp_write_back_data_out(13),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => write_back_data_from_mem_tmp(13),
      O => N1497
    );
  register_module_imp_registers_imp_read_data2_13_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_13_26_3073,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_13_5_3074,
      I3 => write_back_data_from_alu_tmp_10_111_3063,
      O => N1498
    );
  register_module_imp_registers_imp_read_data2_14_53 : MUXF5
    port map (
      I0 => N1499,
      I1 => N1500,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_14_53_2852
    );
  register_module_imp_registers_imp_read_data2_14_53_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => MEM_WB_regs_imp_write_back_data_out(14),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => write_back_data_from_mem_tmp(14),
      O => N1499
    );
  register_module_imp_registers_imp_read_data2_14_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_14_26_3076,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_14_5_3077,
      I3 => write_back_data_from_alu_tmp_10_111_3063,
      O => N1500
    );
  register_module_imp_registers_imp_read_data2_3_53 : MUXF5
    port map (
      I0 => N1503,
      I1 => N1504,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_3_53_2862
    );
  register_module_imp_registers_imp_read_data2_3_53_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I2 => MEM_WB_regs_imp_write_back_data_out(3),
      I3 => write_back_data_from_mem_tmp(3),
      O => N1503
    );
  register_module_imp_registers_imp_read_data2_3_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_3_26_3089,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_3_5_3090,
      I3 => write_back_data_from_alu_tmp_3_111_3088,
      O => N1504
    );
  register_module_imp_registers_imp_read_data2_4_53 : MUXF5
    port map (
      I0 => N1505,
      I1 => N1506,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_4_53_2864
    );
  register_module_imp_registers_imp_read_data2_4_53_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I2 => MEM_WB_regs_imp_write_back_data_out(4),
      I3 => write_back_data_from_mem_tmp(4),
      O => N1505
    );
  register_module_imp_registers_imp_read_data2_4_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_4_26_3093,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_4_5_3094,
      I3 => write_back_data_from_alu_tmp_4_111_3092,
      O => N1506
    );
  register_module_imp_registers_imp_read_data2_9_53 : MUXF5
    port map (
      I0 => N1507,
      I1 => N1508,
      S => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      O => register_module_imp_registers_imp_read_data2_9_53_2871
    );
  register_module_imp_registers_imp_read_data2_9_53_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I2 => MEM_WB_regs_imp_write_back_data_out(9),
      I3 => write_back_data_from_mem_tmp(9),
      O => N1507
    );
  register_module_imp_registers_imp_read_data2_9_53_G : LUT4
    generic map(
      INIT => X"F3F2"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_9_26_3113,
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => write_back_data_from_alu_tmp_9_5_3114,
      I3 => write_back_data_from_alu_tmp_9_111_3112,
      O => N1508
    );
  ram2_data_15_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(15),
      T => N1,
      O => N290,
      IO => ram2_data(15)
    );
  ALU_MEM_regs_imp_mem_data_out_15 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(15),
      Q => ALU_MEM_regs_imp_mem_data_out(15)
    );
  ram2_data_14_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(14),
      T => N1,
      O => N291,
      IO => ram2_data(14)
    );
  ALU_MEM_regs_imp_mem_data_out_14 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(14),
      Q => ALU_MEM_regs_imp_mem_data_out(14)
    );
  ram2_data_13_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(13),
      T => N1,
      O => N292,
      IO => ram2_data(13)
    );
  ALU_MEM_regs_imp_mem_data_out_13 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(13),
      Q => ALU_MEM_regs_imp_mem_data_out(13)
    );
  ram2_data_12_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(12),
      T => N1,
      O => N293,
      IO => ram2_data(12)
    );
  ALU_MEM_regs_imp_mem_data_out_12 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(12),
      Q => ALU_MEM_regs_imp_mem_data_out(12)
    );
  ram2_data_11_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(11),
      T => N1,
      O => N294,
      IO => ram2_data(11)
    );
  ALU_MEM_regs_imp_mem_data_out_11 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(11),
      Q => ALU_MEM_regs_imp_mem_data_out(11)
    );
  ram2_data_10_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(10),
      T => N1,
      O => N295,
      IO => ram2_data(10)
    );
  ALU_MEM_regs_imp_mem_data_out_10 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(10),
      Q => ALU_MEM_regs_imp_mem_data_out(10)
    );
  ram2_data_9_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(9),
      T => N1,
      O => N296,
      IO => ram2_data(9)
    );
  ALU_MEM_regs_imp_mem_data_out_9 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(9),
      Q => ALU_MEM_regs_imp_mem_data_out(9)
    );
  ram2_data_8_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(8),
      T => N1,
      O => N297,
      IO => ram2_data(8)
    );
  ALU_MEM_regs_imp_mem_data_out_8 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(8),
      Q => ALU_MEM_regs_imp_mem_data_out(8)
    );
  ram2_data_7_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(7),
      T => N1,
      O => N298,
      IO => ram2_data(7)
    );
  ALU_MEM_regs_imp_mem_data_out_7 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(7),
      Q => ALU_MEM_regs_imp_mem_data_out(7)
    );
  ram2_data_6_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(6),
      T => N1,
      O => N299,
      IO => ram2_data(6)
    );
  ALU_MEM_regs_imp_mem_data_out_6 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(6),
      Q => ALU_MEM_regs_imp_mem_data_out(6)
    );
  ram2_data_5_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(5),
      T => N1,
      O => N300,
      IO => ram2_data(5)
    );
  ALU_MEM_regs_imp_mem_data_out_5 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(5),
      Q => ALU_MEM_regs_imp_mem_data_out(5)
    );
  ram2_data_4_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(4),
      T => N1,
      O => N301,
      IO => ram2_data(4)
    );
  ALU_MEM_regs_imp_mem_data_out_4 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(4),
      Q => ALU_MEM_regs_imp_mem_data_out(4)
    );
  ram2_data_3_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(3),
      T => N1,
      O => N302,
      IO => ram2_data(3)
    );
  ALU_MEM_regs_imp_mem_data_out_3 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(3),
      Q => ALU_MEM_regs_imp_mem_data_out(3)
    );
  ram2_data_2_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(2),
      T => N1,
      O => N303,
      IO => ram2_data(2)
    );
  ALU_MEM_regs_imp_mem_data_out_2 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(2),
      Q => ALU_MEM_regs_imp_mem_data_out(2)
    );
  ram2_data_1_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(1),
      T => N1,
      O => N304,
      IO => ram2_data(1)
    );
  ALU_MEM_regs_imp_mem_data_out_1 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(1),
      Q => ALU_MEM_regs_imp_mem_data_out(1)
    );
  ram2_data_0_IOBUF : IOBUF
    port map (
      I => ALU_MEM_regs_imp_mem_data_out(0),
      T => N1,
      O => N305,
      IO => ram2_data(0)
    );
  ALU_MEM_regs_imp_mem_data_out_0 : FDC
    port map (
      C => clk_IBUF_2083,
      CLR => ALU_MEM_regs_imp_rst_inv,
      D => ID_ALU_regs_imp_wb_data_from_reg_out(0),
      Q => ALU_MEM_regs_imp_mem_data_out(0)
    );
  instruction_fetch_module_imp_pc_in_mux0004_0_31 : LUT4
    generic map(
      INIT => X"0082"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_branch_out_667,
      I1 => ID_forward_IF_regs_imp_branch_type_out_666,
      I2 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(0),
      I3 => ID_forward_IF_regs_imp_is_jump_out_668,
      O => instruction_fetch_module_imp_pc_in_mux0004_0_3
    );
  instruction_fetch_module_imp_pc_in_mux0004_0_3_f5 : MUXF5
    port map (
      I0 => ram2_oe_OBUF_2362,
      I1 => instruction_fetch_module_imp_pc_in_mux0004_0_3,
      S => N15,
      O => N111
    );
  register_module_imp_decoder_imp_write_back_reg_1_1901 : LUT4
    generic map(
      INIT => X"0809"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(2),
      I1 => IF_ID_regs_imp_instruction_out(3),
      I2 => IF_ID_regs_imp_instruction_out(1),
      I3 => IF_ID_regs_imp_instruction_out(0),
      O => register_module_imp_decoder_imp_write_back_reg_1_1901_2465
    );
  register_module_imp_decoder_imp_write_back_reg_1_190_f5 : MUXF5
    port map (
      I0 => register_module_imp_decoder_imp_write_back_reg_1_1901_2465,
      I1 => ram2_oe_OBUF_2362,
      S => IF_ID_regs_imp_instruction_out(4),
      O => register_module_imp_decoder_imp_write_back_reg_1_190
    );
  register_module_imp_decoder_imp_write_back_reg_1_11191 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => register_module_imp_decoder_imp_write_back_reg_1_149_2463,
      I1 => register_module_imp_controller_imp_reg_write_enable_cmp_eq0001,
      I2 => IF_ID_regs_imp_instruction_out(0),
      I3 => register_module_imp_controller_imp_operand1_src_cmp_eq0007,
      O => register_module_imp_decoder_imp_write_back_reg_1_1119
    );
  register_module_imp_decoder_imp_write_back_reg_1_11192 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => register_module_imp_decoder_imp_write_back_reg_1_149_2463,
      I1 => register_module_imp_controller_imp_reg_write_enable_cmp_eq0001,
      I2 => IF_ID_regs_imp_instruction_out(0),
      O => register_module_imp_decoder_imp_write_back_reg_1_11191_2462
    );
  register_module_imp_decoder_imp_write_back_reg_1_1119_f5 : MUXF5
    port map (
      I0 => register_module_imp_decoder_imp_write_back_reg_1_11191_2462,
      I1 => register_module_imp_decoder_imp_write_back_reg_1_1119,
      S => register_module_imp_decoder_imp_write_back_reg_1_190,
      O => register_module_imp_N2
    );
  instruction_fetch_module_imp_pc_in_mux0004_0_41 : LUT4
    generic map(
      INIT => X"1455"
    )
    port map (
      I0 => ID_forward_IF_regs_imp_is_jump_out_668,
      I1 => ID_forward_IF_regs_imp_branch_relative_reg_data_out(0),
      I2 => ID_forward_IF_regs_imp_branch_type_out_666,
      I3 => ID_forward_IF_regs_imp_is_branch_out_667,
      O => instruction_fetch_module_imp_pc_in_mux0004_0_4
    );
  instruction_fetch_module_imp_pc_in_mux0004_0_4_f5 : MUXF5
    port map (
      I0 => instruction_fetch_module_imp_pc_in_mux0004_0_41_2191,
      I1 => instruction_fetch_module_imp_pc_in_mux0004_0_4,
      S => N15,
      O => N19
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_0_591 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(13),
      O => ID_ALU_regs_imp_wb_src_out_mux0001_0_591_613
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_0_592 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(15),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => ID_ALU_regs_imp_wb_src_out_mux0001_0_592_614
    );
  ID_ALU_regs_imp_wb_src_out_mux0001_0_59_f5 : MUXF5
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out_mux0001_0_592_614,
      I1 => ID_ALU_regs_imp_wb_src_out_mux0001_0_591_613,
      S => register_module_imp_controller_imp_wb_src_cmp_eq0009,
      O => ID_ALU_regs_imp_wb_src_out_mux0001_0_59
    );
  VGA_bt_not0001205_SW01 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => VGA_bt_or0012_1939,
      I1 => VGA_y(8),
      I2 => VGA_bt_cmp_le00041_1879,
      I3 => VGA_N94,
      O => VGA_bt_not0001205_SW0
    );
  VGA_bt_not0001205_SW02 : LUT4
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => VGA_N94,
      I1 => VGA_bt_or0012_1939,
      I2 => VGA_y(8),
      I3 => N1333,
      O => VGA_bt_not0001205_SW01_1916
    );
  VGA_bt_not0001205_SW0_f5 : MUXF5
    port map (
      I0 => VGA_bt_not0001205_SW01_1916,
      I1 => VGA_bt_not0001205_SW0,
      S => VGA_y(7),
      O => N701
    );
  VGA_bt_not0001841 : LUT4
    generic map(
      INIT => X"FF5D"
    )
    port map (
      I0 => VGA_bt_cmp_eq0004_1858,
      I1 => VGA_bt_or0008,
      I2 => VGA_N02,
      I3 => VGA_N1011,
      O => VGA_bt_not0001841_1928
    );
  VGA_bt_not0001842 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => VGA_N1011,
      I1 => VGA_bt_cmp_eq0004_1858,
      O => VGA_bt_not0001842_1929
    );
  VGA_bt_not000184_f5 : MUXF5
    port map (
      I0 => VGA_bt_not0001842_1929,
      I1 => VGA_bt_not0001841_1928,
      S => VGA_N911,
      O => VGA_bt_not000184
    );
  DM_imp_judge_and000039_SW01 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => ALU_MEM_regs_imp_mem_address_out(11),
      I1 => ALU_MEM_regs_imp_mem_address_out(10),
      I2 => ALU_MEM_regs_imp_mem_address_out(13),
      I3 => ALU_MEM_regs_imp_mem_address_out(12),
      O => DM_imp_judge_and000039_SW0
    );
  DM_imp_judge_and000039_SW0_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => DM_imp_judge_and000039_SW0,
      S => ALU_MEM_regs_imp_mem_address_out(9),
      O => N1327
    );
  register_module_imp_controller_imp_operand1_src1161 : LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => N1411,
      I2 => N1391,
      I3 => IF_ID_regs_imp_instruction_out(12),
      O => register_module_imp_controller_imp_operand1_src116
    );
  register_module_imp_controller_imp_operand1_src1162 : LUT4
    generic map(
      INIT => X"FF5B"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => N1411,
      I2 => IF_ID_regs_imp_instruction_out(12),
      I3 => IF_ID_regs_imp_instruction_out(13),
      O => register_module_imp_controller_imp_operand1_src1161_2430
    );
  register_module_imp_controller_imp_operand1_src116_f5 : MUXF5
    port map (
      I0 => register_module_imp_controller_imp_operand1_src1161_2430,
      I1 => register_module_imp_controller_imp_operand1_src116,
      S => IF_ID_regs_imp_instruction_out(14),
      O => register_module_imp_operand1_src_tmp
    );
  register_module_imp_registers_imp_read_data1_0_60_SW411 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data1_0_17_2761,
      I1 => register_module_imp_registers_imp_read_data1_0_1_2760,
      I2 => register_module_imp_registers_imp_varindex0000(0),
      I3 => register_module_imp_registers_imp_N46,
      O => register_module_imp_registers_imp_read_data1_0_60_SW41
    );
  register_module_imp_registers_imp_read_data1_0_60_SW41_f5 : MUXF5
    port map (
      I0 => register_module_imp_registers_imp_read_data1_0_60_SW41,
      I1 => branch_target_from_id_tmp(0),
      S => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      O => N457
    );
  VGA_bt_cmp_ge00092_SW0 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => VGA_x(9),
      I1 => VGA_x(8),
      I2 => VGA_x(7),
      I3 => VGA_x(6),
      LO => N1509,
      O => N60
    );
  register_module_imp_controller_imp_operand2_src_0_60 : LUT4_L
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(4),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => IF_ID_regs_imp_instruction_out(3),
      LO => register_module_imp_controller_imp_operand2_src_0_60_2438
    );
  register_module_imp_registers_imp_regs_2_and000011 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_enable_out_765,
      I1 => MEM_WB_regs_imp_write_back_reg_out(1),
      I2 => MEM_WB_regs_imp_write_back_reg_out(3),
      LO => N1510,
      O => register_module_imp_registers_imp_N37
    );
  register_module_imp_registers_imp_regs_0_and000011 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_enable_out_765,
      I1 => MEM_WB_regs_imp_write_back_reg_out(1),
      I2 => MEM_WB_regs_imp_write_back_reg_out(3),
      LO => N1511,
      O => register_module_imp_registers_imp_N38
    );
  register_module_imp_registers_imp_ih_not000111 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_enable_out_765,
      I1 => MEM_WB_regs_imp_write_back_reg_out(3),
      I2 => MEM_WB_regs_imp_write_back_reg_out(2),
      LO => N1512,
      O => register_module_imp_registers_imp_N36
    );
  VGA_bt_cmp_eq00003 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_x(4),
      I1 => VGA_N46,
      I2 => VGA_N49,
      I3 => VGA_x(6),
      LO => N1513,
      O => VGA_bt_cmp_eq0000
    );
  VGA_bt_or000028 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => VGA_bt_or0008,
      I1 => VGA_bt_or0010,
      I2 => VGA_bt_or0004,
      I3 => VGA_bt_or0012_1939,
      LO => N1514,
      O => VGA_bt_or000028_1933
    );
  VGA_bt_cmp_ge00082 : LUT4_D
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => N60,
      I1 => VGA_x(5),
      I2 => VGA_bt_cmp_ge00081_1868,
      I3 => VGA_x(4),
      LO => N1515,
      O => VGA_bt_cmp_ge0008
    );
  VGA_romAddr_mux0053_5_21 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_bt_and0134,
      I1 => VGA_N95,
      I2 => VGA_bt_and0133,
      I3 => VGA_bt_and0137,
      LO => N1516,
      O => VGA_N38
    );
  register_module_imp_decoder_imp_immediate_2_1 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(2),
      I1 => register_module_imp_N0,
      I2 => IF_ID_regs_imp_instruction_out(4),
      I3 => register_module_imp_N14,
      LO => N1517,
      O => immediate_from_id_tmp(2)
    );
  register_module_imp_decoder_imp_immediate_1_1 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(1),
      I1 => register_module_imp_N0,
      I2 => IF_ID_regs_imp_instruction_out(3),
      I3 => register_module_imp_N14,
      LO => N1518,
      O => immediate_from_id_tmp(1)
    );
  VGA_SF282_SW0 : LUT4_D
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(5),
      I2 => VGA_N441,
      I3 => VGA_x(7),
      LO => N1519,
      O => N78
    );
  register_module_imp_decoder_imp_immediate_7_1 : LUT3_D
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => register_module_imp_N12,
      I1 => IF_ID_regs_imp_instruction_out(7),
      I2 => register_module_imp_N17,
      LO => N1520,
      O => immediate_from_id_tmp(7)
    );
  register_module_imp_decoder_imp_immediate_5_1 : LUT3_D
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => register_module_imp_N12,
      I1 => IF_ID_regs_imp_instruction_out(5),
      I2 => register_module_imp_N17,
      LO => N1521,
      O => immediate_from_id_tmp(5)
    );
  register_module_imp_decoder_imp_immediate_5_31 : LUT4_D
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I1 => register_module_imp_decoder_imp_immediate_or0000,
      I2 => register_module_imp_N20,
      I3 => register_module_imp_N58,
      LO => N1522,
      O => register_module_imp_N17
    );
  VGA_SF27233 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => VGA_x(1),
      I1 => VGA_x(0),
      LO => VGA_SF27233_1841
    );
  VGA_SF27260 : LUT4_D
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => VGA_x(5),
      I1 => VGA_SF27212_1840,
      I2 => VGA_SF27243_1842,
      I3 => VGA_SF2727_1843,
      LO => N1523,
      O => VGA_N1011
    );
  register_module_imp_controller_imp_operand1_src_cmp_eq00011 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => register_module_imp_N26,
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => IF_ID_regs_imp_instruction_out(12),
      I3 => IF_ID_regs_imp_instruction_out(14),
      LO => N1524,
      O => register_module_imp_controller_imp_operand1_src_cmp_eq0001
    );
  register_module_imp_decoder_imp_immediate_3_1 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand1_src_cmp_eq0000,
      I1 => register_module_imp_decoder_imp_immediate_4_6_2449,
      I2 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I3 => register_module_imp_decoder_imp_immediate_or0000,
      LO => N1525,
      O => register_module_imp_N0
    );
  UAL_hazard_detector_imp_stall53 : LUT4_D
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(0),
      I1 => ID_ALU_regs_imp_write_back_reg_out(1),
      I2 => register_module_imp_decoder_imp_read_reg_1_1_39_2455,
      I3 => register_module_imp_decoder_imp_read_reg_1_0_20_2453,
      LO => N1526,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026
    );
  VGA_bt_and0138 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_x(9),
      I1 => VGA_N62,
      I2 => VGA_x(8),
      I3 => VGA_SF57116,
      LO => N1527,
      O => VGA_bt_and0138_1851
    );
  register_module_imp_decoder_imp_immediate_9_1 : LUT3_D
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(9),
      I1 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I2 => register_module_imp_N63,
      LO => N1528,
      O => immediate_from_id_tmp(9)
    );
  register_module_imp_decoder_imp_immediate_8_21 : LUT3_D
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(7),
      I1 => register_module_imp_decoder_imp_immediate_or0000,
      I2 => register_module_imp_N12,
      LO => N1529,
      O => register_module_imp_N63
    );
  register_module_imp_decoder_imp_immediate_8_1 : LUT3_D
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(8),
      I1 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      I2 => register_module_imp_N63,
      LO => N1530,
      O => immediate_from_id_tmp(8)
    );
  VGA_SF2631 : LUT2_D
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => VGA_bt_or0010,
      I1 => VGA_bt_or0012_1939,
      LO => N1531,
      O => VGA_N02
    );
  VGA_bt_cmp_ge00101 : LUT4_D
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_x(2),
      I2 => VGA_x(0),
      I3 => VGA_x(1),
      LO => N1532,
      O => VGA_bt_cmp_ge00101_1871
    );
  register_module_imp_registers_imp_read_data2_0_231 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => read_reg_2_from_id(1),
      LO => N1533,
      O => register_module_imp_registers_imp_N47
    );
  VGA_bt_mux0000_0_1511 : LUT4_D
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => VGA_bt_and0135_1849,
      I1 => VGA_romData_mux0001,
      I2 => VGA_N1011,
      I3 => VGA_romData_mux0000,
      LO => N1534,
      O => VGA_N64
    );
  VGA_bt_cmp_eq00031 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => VGA_x(1),
      I1 => VGA_x(7),
      I2 => VGA_N45,
      I3 => VGA_x(3),
      LO => N1535,
      O => VGA_bt_cmp_eq0003
    );
  VGA_romAddr_or0000_SW0 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(6),
      I2 => VGA_y(8),
      LO => N1536,
      O => N1011
    );
  VGA_bt_or0002 : LUT4_D
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => VGA_y(7),
      I1 => VGA_y(5),
      I2 => VGA_y(4),
      I3 => N1011,
      LO => N1537,
      O => VGA_bt_or0002_1934
    );
  register_module_imp_registers_imp_read_data2_0_211 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => read_reg_2_from_id(0),
      I1 => read_reg_2_from_id(1),
      LO => N1538,
      O => register_module_imp_registers_imp_N42
    );
  VGA_SF5822_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => VGA_bt_or0004,
      I1 => VGA_romAddr_or0000_2002,
      I2 => VGA_bt_or0002_1934,
      LO => N109
    );
  VGA_SF5811 : LUT4_D
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => VGA_y(7),
      I1 => VGA_y(5),
      I2 => VGA_y(4),
      I3 => N1011,
      LO => N1539,
      O => VGA_N25
    );
  VGA_bt_mux0000_0_1324 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => VGA_bt_cmp_le0019,
      I1 => VGA_N94,
      I2 => VGA_romData_mux0001,
      LO => VGA_bt_mux0000_0_1324_1887
    );
  VGA_bt_mux0000_0_1351 : LUT4_D
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => VGA_bt_mux0000_0_1313_1886,
      I1 => VGA_bt_mux0000_0_1339_1889,
      I2 => VGA_bt_mux0000_0_1333_1888,
      I3 => VGA_bt_mux0000_0_1312_1885,
      LO => N1540,
      O => VGA_N35
    );
  VGA_x_cmp_eq000021 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(5),
      LO => N1541,
      O => VGA_N48
    );
  register_module_imp_registers_imp_read_data1_0_231 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => register_module_imp_decoder_imp_read_reg_1_1_391,
      I1 => read_reg_1_from_id(0),
      LO => N1542,
      O => register_module_imp_registers_imp_N48
    );
  VGA_bt_not00012211 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_bt_cmp_le0015,
      I1 => VGA_bt_cmp_ge0015,
      LO => N1543,
      O => VGA_bt_and0139
    );
  VGA_bt_cmp_ge00152 : LUT4_D
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => VGA_N43,
      I1 => VGA_x(0),
      I2 => VGA_N41,
      I3 => N119,
      LO => N1544,
      O => VGA_bt_cmp_ge0015
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_or00001 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      LO => N1545,
      O => is_hazard_2_to_id_tmp
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000055 : LUT4_D
    generic map(
      INIT => X"8020"
    )
    port map (
      I0 => ALU_MEM_regs_imp_reg_write_enable_out_35,
      I1 => ALU_MEM_regs_imp_write_back_reg_out(2),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000044_1681,
      I3 => read_reg_2_from_id(2),
      LO => N1546,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000055_1682
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000055 : LUT4_L
    generic map(
      INIT => X"8040"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(2),
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000044_1678,
      I3 => read_reg_2_from_id(2),
      LO => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu_and000055_1679
    );
  register_module_imp_decoder_imp_immediate_or000231 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_14_1_699,
      I1 => IF_ID_regs_imp_instruction_out_12_1_693,
      LO => N1547,
      O => register_module_imp_N57
    );
  register_module_imp_controller_imp_operand2_src_0_21 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(15),
      LO => N1548,
      O => register_module_imp_N20
    );
  register_module_imp_controller_imp_reg_write_enable_cmp_eq00011 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => register_module_imp_N57,
      LO => N1549,
      O => register_module_imp_controller_imp_reg_write_enable_cmp_eq0001
    );
  register_module_imp_controller_imp_is_jump_cmp_eq00011_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_3_1_705,
      I1 => IF_ID_regs_imp_instruction_out(5),
      I2 => IF_ID_regs_imp_instruction_out(2),
      I3 => IF_ID_regs_imp_instruction_out(4),
      LO => N127
    );
  register_module_imp_decoder_imp_read_reg_1_3_27 : LUT4_D
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_decoder_imp_read_reg_1_3_5_2458,
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I2 => register_module_imp_decoder_imp_read_reg_1_or0004,
      I3 => register_module_imp_decoder_imp_read_reg_1_3_16_2457,
      LO => N1550,
      O => read_reg_1_from_id(3)
    );
  VGA_bt_cmp_ge00131 : LUT4_L
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => VGA_x(2),
      I1 => VGA_x(3),
      I2 => VGA_x(1),
      I3 => VGA_x(0),
      LO => VGA_bt_cmp_ge00131_1874
    );
  VGA_bt_cmp_eq00082 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_x(2),
      I1 => VGA_x(3),
      I2 => VGA_x(1),
      I3 => VGA_N88,
      LO => N1551,
      O => VGA_bt_cmp_eq0008
    );
  VGA_bt_cmp_ge00162 : LUT4_D
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => VGA_x(9),
      I1 => VGA_x(8),
      I2 => VGA_x(7),
      I3 => N131,
      LO => N1552,
      O => VGA_bt_cmp_ge0016
    );
  VGA_romAddr_and0000127 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_x(1),
      I1 => VGA_x(2),
      LO => VGA_romAddr_and0000127_1964
    );
  write_back_data_from_alu_tmp_1_5 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(1),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      LO => N1553,
      O => write_back_data_from_alu_tmp_1_5_3084
    );
  register_module_imp_decoder_imp_read_reg_1_or0004112 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(12),
      LO => N1554,
      O => register_module_imp_N58
    );
  register_module_imp_controller_imp_operand1_src31 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_11_1_690,
      I1 => IF_ID_regs_imp_instruction_out_15_1_701,
      LO => N1555,
      O => register_module_imp_N26
    );
  register_module_imp_controller_imp_operand1_src_cmp_eq000311 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_13_1_696,
      I1 => IF_ID_regs_imp_instruction_out_12_1_693,
      I2 => IF_ID_regs_imp_instruction_out_15_1_701,
      LO => N1556,
      O => register_module_imp_N23
    );
  ALU_imp_Sh781 : LUT4_D
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(14),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => ID_ALU_regs_imp_operand2_out(1),
      LO => N1557,
      O => ALU_imp_Sh78
    );
  register_module_imp_registers_imp_read_data1_1_9 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(1),
      I1 => register_module_imp_registers_imp_t(1),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      LO => register_module_imp_registers_imp_read_data1_1_9_2804
    );
  register_module_imp_registers_imp_read_data1_2_9 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(2),
      I1 => register_module_imp_registers_imp_t(2),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      LO => register_module_imp_registers_imp_read_data1_2_9_2808
    );
  register_module_imp_registers_imp_read_data1_3_9 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(3),
      I1 => register_module_imp_registers_imp_t(3),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      LO => register_module_imp_registers_imp_read_data1_3_9_2814
    );
  register_module_imp_registers_imp_read_data1_4_9 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(4),
      I1 => register_module_imp_registers_imp_t(4),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      LO => register_module_imp_registers_imp_read_data1_4_9_2818
    );
  write_back_data_from_alu_tmp_5_5 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(5),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      LO => N1558,
      O => write_back_data_from_alu_tmp_5_5_3098
    );
  write_back_data_from_alu_tmp_6_5 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(6),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      LO => N1559,
      O => write_back_data_from_alu_tmp_6_5_3102
    );
  write_back_data_from_alu_tmp_7_26 : LUT4_D
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(7),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(7),
      LO => N1560,
      O => write_back_data_from_alu_tmp_7_26_3105
    );
  write_back_data_from_alu_tmp_8_5 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => write_back_data_from_alu_tmp_addsub0000(8),
      I1 => ID_ALU_regs_imp_wb_src_out(1),
      I2 => ID_ALU_regs_imp_wb_src_out(2),
      LO => N1561,
      O => write_back_data_from_alu_tmp_8_5_3110
    );
  register_module_imp_registers_imp_read_data1_9_9 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ih(9),
      I1 => register_module_imp_registers_imp_t(9),
      I2 => register_module_imp_registers_imp_N45,
      I3 => register_module_imp_registers_imp_N48,
      LO => register_module_imp_registers_imp_read_data1_9_9_2838
    );
  ALU_imp_Sh331 : LUT4_D
    generic map(
      INIT => X"00AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => ID_ALU_regs_imp_operand2_out(1),
      LO => N1562,
      O => ALU_imp_Sh33
    );
  write_back_data_from_alu_tmp_10_26 : LUT4_D
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(10),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(10),
      LO => N1563,
      O => write_back_data_from_alu_tmp_10_26_3064
    );
  write_back_data_from_alu_tmp_11_26 : LUT4_D
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(11),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(11),
      LO => N1564,
      O => write_back_data_from_alu_tmp_11_26_3067
    );
  write_back_data_from_alu_tmp_12_26 : LUT4_D
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(12),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(12),
      LO => N1565,
      O => write_back_data_from_alu_tmp_12_26_3070
    );
  VGA_bt_cmp_le00041 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(5),
      I2 => VGA_y(6),
      I3 => VGA_y(4),
      LO => N1566,
      O => VGA_bt_cmp_le00041_1879
    );
  VGA_bt_cmp_ge00021 : LUT4_D
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => VGA_y(5),
      I1 => VGA_y(8),
      I2 => VGA_y(6),
      I3 => VGA_y(7),
      LO => N1567,
      O => VGA_bt_cmp_ge0002
    );
  VGA_bt_cmp_eq000811 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => VGA_x(5),
      I1 => VGA_x(6),
      I2 => VGA_N37,
      I3 => VGA_N43,
      LO => N1568,
      O => VGA_N88
    );
  VGA_bt_or0012_SW0 : LUT3_L
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(8),
      I2 => VGA_y(6),
      LO => N176
    );
  VGA_romAddr_and00001111 : LUT4_D
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => VGA_y(7),
      I1 => VGA_y(5),
      I2 => N178,
      I3 => VGA_N191,
      LO => N1569,
      O => VGA_N72
    );
  write_back_data_from_alu_tmp_15_26 : LUT4_D
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_data_from_reg_out(15),
      I2 => ID_ALU_regs_imp_wb_src_out(0),
      I3 => alu_result_from_alu_tmp(15),
      LO => N1570,
      O => write_back_data_from_alu_tmp_15_26_3079
    );
  ALU_imp_Sh2711 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      LO => N1571,
      O => ALU_imp_N12
    );
  ALU_imp_Sh2111 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      LO => N1572,
      O => ALU_imp_N22
    );
  ALU_imp_tmp_cmp_eq00061 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out_1_1_475,
      I1 => ID_ALU_regs_imp_op_code_out_3_1_479,
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      LO => N1573,
      O => ALU_imp_tmp_cmp_eq0006
    );
  ALU_imp_Sh7_SW0 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(7),
      I1 => ID_ALU_regs_imp_operand1_out(8),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1574,
      O => N186
    );
  ALU_imp_Sh35_SW0 : LUT3_D
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ID_ALU_regs_imp_operand1_out(3),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1575,
      O => N192
    );
  ALU_imp_Sh111_SW0 : LUT3_D
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(14),
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1576,
      O => N195
    );
  ALU_imp_Sh111_SW1 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(12),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1577,
      O => N196
    );
  VGA_bt_cmp_le001121 : LUT2_D
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_x(4),
      LO => N1578,
      O => VGA_N441
    );
  VGA_bt_cmp_eq000421 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => VGA_x(1),
      I1 => VGA_x(2),
      LO => N1579,
      O => VGA_N93
    );
  VGA_bt_cmp_le00021 : LUT4_D
    generic map(
      INIT => X"1FFF"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(4),
      I2 => VGA_y(5),
      I3 => VGA_y(6),
      LO => N1580,
      O => VGA_bt_cmp_le00021_1878
    );
  VGA_bt_cmp_ge00091 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => VGA_x(0),
      I1 => VGA_x(1),
      I2 => VGA_x(2),
      I3 => VGA_x(3),
      LO => N1581,
      O => VGA_bt_cmp_ge00091_1870
    );
  VGA_bt_cmp_ge00192 : LUT4_D
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => VGA_x(9),
      I1 => VGA_x(8),
      I2 => VGA_x(7),
      I3 => N200,
      LO => N1582,
      O => VGA_bt_cmp_ge0019
    );
  VGA_bt_not0001136 : LUT4_L
    generic map(
      INIT => X"F3F1"
    )
    port map (
      I0 => VGA_bt_cmp_eq0009,
      I1 => VGA_N210,
      I2 => VGA_bt_and0140,
      I3 => VGA_N79,
      LO => VGA_bt_not0001136_1911
    );
  VGA_bt_not0001590 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => VGA_bt_cmp_ge0009,
      I1 => VGA_bt_cmp_le0009,
      I2 => VGA_bt_cmp_eq0001,
      I3 => VGA_bt_or0000,
      LO => N1583,
      O => VGA_bt_not0001590_1926
    );
  ALU_imp_tmp_cmp_eq00051 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out_1_1_475,
      I1 => ID_ALU_regs_imp_op_code_out_2_1_477,
      I2 => ID_ALU_regs_imp_op_code_out_3_1_479,
      I3 => ID_ALU_regs_imp_op_code_out(0),
      LO => N1584,
      O => ALU_imp_tmp_cmp_eq0005
    );
  ALU_imp_tmp_cmp_eq00031 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(0),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      LO => N1585,
      O => ALU_imp_tmp_cmp_eq0003
    );
  ALU_imp_Sh771 : LUT4_D
    generic map(
      INIT => X"2F20"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(0),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      I3 => ALU_imp_N01,
      LO => N1586,
      O => ALU_imp_Sh77
    );
  ALU_imp_Sh34_SW0 : LUT3_L
    generic map(
      INIT => X"35"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N204
    );
  ALU_imp_Sh98_SW0 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1587,
      O => N206
    );
  ALU_imp_Sh110_SW1 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(12),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1588,
      O => N216
    );
  ALU_imp_Sh107_SW1 : LUT3_D
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(8),
      I1 => ID_ALU_regs_imp_operand1_out(9),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1589,
      O => N222
    );
  VGA_bt_cmp_eq0000111 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => VGA_x(9),
      I1 => VGA_x(8),
      LO => N1590,
      O => VGA_N92
    );
  VGA_bt_cmp_eq000211 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => VGA_N87,
      I1 => VGA_x(2),
      I2 => VGA_x(4),
      LO => N1591,
      O => VGA_N45
    );
  VGA_romAddr_and0000428 : LUT2_L
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => VGA_bt_cmp_ge0009,
      I1 => VGA_bt_cmp_le0009,
      LO => VGA_romAddr_and0000428_1973
    );
  VGA_romAddr_and0000463 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => VGA_bt_cmp_eq0000,
      I1 => VGA_N101,
      I2 => VGA_romAddr_and0001_1979,
      LO => N1592,
      O => VGA_romAddr_and0000463_1975
    );
  ALU_imp_Sh12811 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_operand2_out(0),
      I2 => ID_ALU_regs_imp_operand2_out(1),
      LO => N1593,
      O => ALU_imp_Sh32
    );
  ALU_imp_tmp_shift0006_15_1 : LUT3_D
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => N1609,
      I1 => ID_ALU_regs_imp_operand1_out(15),
      I2 => ALU_imp_tmp_shift0006(15),
      LO => NLW_ALU_imp_tmp_shift0006_15_1_LO_UNCONNECTED,
      O => ALU_imp_tmp_shift0006(15)
    );
  ALU_imp_Sh11101 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ID_ALU_regs_imp_operand1_out(14),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1595,
      O => ALU_imp_N01
    );
  ALU_imp_Sh72_SW1 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(10),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1596,
      O => N237
    );
  ALU_imp_Sh105_SW1 : LUT3_D
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(6),
      I1 => ID_ALU_regs_imp_operand1_out(7),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1597,
      O => N246
    );
  ALU_imp_Sh103_SW1 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_operand1_out(4),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1598,
      O => N249
    );
  ALU_imp_Sh102_SW0 : LUT3_D
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(5),
      I1 => ID_ALU_regs_imp_operand1_out(6),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1599,
      O => N251
    );
  ALU_imp_Sh102_SW1 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(4),
      I1 => ID_ALU_regs_imp_operand1_out(3),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      LO => N1600,
      O => N252
    );
  ALU_imp_tmp_13_2 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ALU_imp_N12,
      I2 => ALU_imp_N27,
      LO => N1601,
      O => ALU_imp_tmp_11_2
    );
  ALU_imp_tmp_13_94 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_N25,
      LO => N1602,
      O => ALU_imp_tmp_10_22
    );
  ALU_imp_tmp_6_46 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(6),
      I1 => ALU_imp_tmp_6_41_242,
      I2 => ALU_imp_tmp_6_34_241,
      I3 => ALU_imp_N72,
      LO => ALU_imp_tmp_6_46_243
    );
  ALU_imp_tmp_6_119 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ALU_imp_Sh6_126,
      I1 => ALU_imp_N27,
      I2 => ALU_imp_N72,
      LO => ALU_imp_tmp_6_119_238
    );
  ALU_imp_tmp_14_10 : LUT4_D
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => ALU_imp_Sh78,
      I1 => ALU_imp_Sh14,
      I2 => ALU_imp_N72,
      I3 => ALU_imp_N27,
      LO => N1603,
      O => ALU_imp_tmp_10_148
    );
  ALU_imp_tmp_14_80 : LUT4_L
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ALU_imp_N24,
      I1 => ALU_imp_Sh34_124,
      I2 => ALU_imp_N25,
      I3 => ALU_imp_tmp_10_61,
      LO => ALU_imp_tmp_14_80_185
    );
  ALU_imp_tmp_7_26 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ALU_imp_Sh79,
      I1 => ALU_imp_tmp_cmp_eq0010,
      I2 => ALU_imp_Sh111_114,
      I3 => ALU_imp_N72,
      LO => ALU_imp_tmp_7_26_248
    );
  ALU_imp_tmp_15_48 : LUT4_L
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(15),
      I1 => ALU_imp_tmp_cmp_eq0003,
      I2 => ALU_imp_N46,
      I3 => ALU_imp_tmp_cmp_eq0005,
      LO => ALU_imp_tmp_15_48_188
    );
  ALU_imp_tmp_8_79 : LUT4_L
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => ALU_imp_tmp_7_74_251,
      I1 => ALU_imp_tmp_8_57_255,
      I2 => ALU_imp_tmp_8_64_256,
      I3 => ALU_imp_N27,
      LO => ALU_imp_tmp_8_79_257
    );
  ALU_imp_tmp_1_34 : LUT4_L
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => ALU_imp_tmp_cmp_eq0003,
      I2 => ALU_imp_N46,
      I3 => ALU_imp_tmp_cmp_eq0005,
      LO => ALU_imp_tmp_1_34_197
    );
  ALU_imp_tmp_1_89 : LUT4_L
    generic map(
      INIT => X"A0C0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(4),
      I1 => ID_ALU_regs_imp_operand1_out(2),
      I2 => ID_ALU_regs_imp_operand2_out(0),
      I3 => ID_ALU_regs_imp_operand2_out(1),
      LO => ALU_imp_tmp_1_89_201
    );
  ALU_imp_tmp_9_131 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      I2 => ALU_imp_N27,
      LO => N1604,
      O => ALU_imp_tmp_10_131
    );
  ALU_imp_Sh16160 : LUT4_D
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_Sh16113_118,
      I2 => ALU_imp_Sh16128_119,
      I3 => ALU_imp_Sh12_115,
      LO => N1605,
      O => ALU_imp_N11
    );
  ALU_imp_tmp_or00044 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(13),
      I1 => ID_ALU_regs_imp_operand2_out(12),
      I2 => ID_ALU_regs_imp_operand2_out(11),
      I3 => ID_ALU_regs_imp_operand2_out(10),
      LO => N1606,
      O => ALU_imp_tmp_or00044_306
    );
  ALU_imp_tmp_or00049 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(9),
      I1 => ID_ALU_regs_imp_operand2_out(8),
      I2 => ID_ALU_regs_imp_operand2_out(7),
      I3 => ID_ALU_regs_imp_operand2_out(6),
      LO => N1607,
      O => ALU_imp_tmp_or00049_307
    );
  ALU_imp_tmp_or000414 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(14),
      I1 => ID_ALU_regs_imp_operand2_out(15),
      I2 => ID_ALU_regs_imp_operand2_out(4),
      I3 => ID_ALU_regs_imp_operand2_out(5),
      LO => N1608,
      O => ALU_imp_tmp_or000414_305
    );
  ALU_imp_tmp_or000423 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ALU_imp_tmp_or00044_306,
      I1 => ALU_imp_tmp_or00049_307,
      I2 => ALU_imp_tmp_or000414_305,
      LO => N1609,
      O => ALU_imp_tmp_or0004
    );
  ALU_imp_tmp_3_247 : LUT4_D
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => ALU_imp_tmp_0_91,
      I1 => ALU_imp_tmp_3_220_208,
      I2 => ALU_imp_tmp_3_117_207,
      I3 => ALU_imp_tmp_3_109_206,
      LO => N1610,
      O => ALU_imp_tmp_3_247_210
    );
  ALU_imp_tmp_11_15 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ALU_imp_tmp_11_13_159,
      I1 => ALU_imp_tmp_11_2,
      I2 => ALU_imp_N13,
      LO => ALU_imp_tmp_11_15_160
    );
  ALU_imp_tmp_11_30 : LUT4_L
    generic map(
      INIT => X"3320"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(11),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ALU_imp_tmp_cmp_eq0006,
      LO => ALU_imp_tmp_11_30_163
    );
  ALU_imp_tmp_11_73 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(11),
      I1 => ALU_imp_tmp_11_61_166,
      I2 => ALU_imp_Sh111_114,
      I3 => ALU_imp_tmp_10_117,
      LO => ALU_imp_tmp_11_73_167
    );
  ALU_imp_tmp_4_10 : LUT4_L
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => ALU_imp_N11,
      I2 => ALU_imp_N72,
      I3 => ALU_imp_N27,
      LO => ALU_imp_tmp_4_10_215
    );
  ALU_imp_tmp_4_134 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(4),
      I1 => ALU_imp_tmp_4_127_217,
      I2 => ALU_imp_tmp_4_115_216,
      I3 => ALU_imp_N72,
      LO => ALU_imp_tmp_4_134_218
    );
  ALU_imp_tmp_12_15 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ALU_imp_tmp_12_13_170,
      I1 => ALU_imp_tmp_11_2,
      I2 => ALU_imp_N13,
      LO => ALU_imp_tmp_12_15_171
    );
  register_module_imp_registers_imp_read_data1_0_24 : LUT4_D
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(0),
      I1 => register_module_imp_registers_imp_read_data1_0_1_2760,
      I2 => register_module_imp_registers_imp_N46,
      I3 => register_module_imp_registers_imp_read_data1_0_17_2761,
      LO => N1611,
      O => register_module_imp_registers_imp_read_data1_0_24_2762
    );
  ALU_imp_tmp_5_118 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ALU_imp_Sh5_125,
      I1 => ALU_imp_N27,
      I2 => ALU_imp_N72,
      LO => ALU_imp_tmp_5_118_229
    );
  write_back_data_from_alu_tmp_0_78 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(6),
      I1 => ID_ALU_regs_imp_operand1_out(14),
      I2 => ID_ALU_regs_imp_operand1_out(15),
      LO => write_back_data_from_alu_tmp_0_78_3058
    );
  ALU_imp_tmp_0_21 : LUT4_D
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      LO => N1612,
      O => ALU_imp_N46
    );
  ALU_imp_tmp_cmp_eq00101 : LUT4_D
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out_2_1_477,
      I1 => ID_ALU_regs_imp_op_code_out_3_1_479,
      I2 => ID_ALU_regs_imp_op_code_out_1_1_475,
      I3 => ID_ALU_regs_imp_op_code_out(0),
      LO => N1613,
      O => ALU_imp_tmp_cmp_eq0010
    );
  ALU_imp_tmp_2_1 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => ALU_imp_N17,
      I1 => N346,
      I2 => ID_ALU_regs_imp_op_code_out(3),
      I3 => ALU_imp_tmp_shift0006(15),
      LO => N1614,
      O => ALU_imp_N13
    );
  ALU_imp_tmp_9_165 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_tmp_9_78_264,
      I1 => N358,
      I2 => ALU_imp_N13,
      I3 => ALU_imp_tmp_9_155_261,
      LO => N1615,
      O => ALU_imp_tmp_9_165_262
    );
  ALU_imp_tmp_10_165 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N360,
      I1 => ALU_imp_tmp_10_78_156,
      I2 => ALU_imp_N13,
      I3 => ALU_imp_tmp_10_155_150,
      LO => ALU_imp_tmp_10_165_151
    );
  ALU_imp_tmp_9_63 : LUT4_D
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ALU_imp_Sh33,
      I1 => ALU_imp_Sh97_134,
      I2 => ALU_imp_tmp_cmp_eq0010,
      I3 => ALU_imp_N25,
      LO => N1616,
      O => ALU_imp_tmp_5_98
    );
  register_module_imp_registers_imp_read_data1_1_3 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N40,
      I1 => register_module_imp_registers_imp_sp(1),
      I2 => register_module_imp_registers_imp_varindex0000(1),
      I3 => register_module_imp_registers_imp_N46,
      LO => N1617,
      O => register_module_imp_registers_imp_read_data1_1_3_2802
    );
  register_module_imp_registers_imp_read_data1_4_3 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N40,
      I1 => register_module_imp_registers_imp_sp(4),
      I2 => register_module_imp_registers_imp_varindex0000(4),
      I3 => register_module_imp_registers_imp_N46,
      LO => N1618,
      O => register_module_imp_registers_imp_read_data1_4_3_2816
    );
  register_module_imp_registers_imp_read_data1_5_3 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N40,
      I1 => register_module_imp_registers_imp_sp(5),
      I2 => register_module_imp_registers_imp_varindex0000(5),
      I3 => register_module_imp_registers_imp_N46,
      LO => N1619,
      O => register_module_imp_registers_imp_read_data1_5_3_2820
    );
  register_module_imp_registers_imp_read_data1_6_3 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N40,
      I1 => register_module_imp_registers_imp_sp(6),
      I2 => register_module_imp_registers_imp_varindex0000(6),
      I3 => register_module_imp_registers_imp_N46,
      LO => N1620,
      O => register_module_imp_registers_imp_read_data1_6_3_2824
    );
  register_module_imp_registers_imp_read_data1_7_3 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N40,
      I1 => register_module_imp_registers_imp_sp(7),
      I2 => register_module_imp_registers_imp_varindex0000(7),
      I3 => register_module_imp_registers_imp_N46,
      LO => N1621,
      O => register_module_imp_registers_imp_read_data1_7_3_2828
    );
  register_module_imp_registers_imp_read_data1_8_3 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N40,
      I1 => register_module_imp_registers_imp_sp(8),
      I2 => register_module_imp_registers_imp_varindex0000(8),
      I3 => register_module_imp_registers_imp_N46,
      LO => N1622,
      O => register_module_imp_registers_imp_read_data1_8_3_2832
    );
  register_module_imp_registers_imp_read_data1_9_3 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N40,
      I1 => register_module_imp_registers_imp_sp(9),
      I2 => register_module_imp_registers_imp_varindex0000(9),
      I3 => register_module_imp_registers_imp_N46,
      LO => N1623,
      O => register_module_imp_registers_imp_read_data1_9_3_2836
    );
  register_module_imp_registers_imp_read_data1_10_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(10),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_10_9_2773,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1624,
      O => register_module_imp_registers_imp_read_data1_10_17_2770
    );
  register_module_imp_registers_imp_read_data1_11_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(11),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_11_9_2778,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1625,
      O => register_module_imp_registers_imp_read_data1_11_17_2775
    );
  register_module_imp_registers_imp_read_data1_12_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(12),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_12_9_2783,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1626,
      O => register_module_imp_registers_imp_read_data1_12_17_2780
    );
  register_module_imp_registers_imp_read_data1_13_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(13),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_13_9_2788,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1627,
      O => register_module_imp_registers_imp_read_data1_13_17_2785
    );
  register_module_imp_registers_imp_read_data1_14_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(14),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_14_9_2793,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1628,
      O => register_module_imp_registers_imp_read_data1_14_17_2790
    );
  register_module_imp_registers_imp_read_data1_15_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(15),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_15_9_2800,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1629,
      O => register_module_imp_registers_imp_read_data1_15_17_2795
    );
  register_module_imp_registers_imp_read_data1_5_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(5),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_5_9_2822,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1630,
      O => register_module_imp_registers_imp_read_data1_5_17_2819
    );
  register_module_imp_registers_imp_read_data1_6_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(6),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_6_9_2826,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1631,
      O => register_module_imp_registers_imp_read_data1_6_17_2823
    );
  register_module_imp_registers_imp_read_data1_7_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(7),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_7_9_2830,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1632,
      O => register_module_imp_registers_imp_read_data1_7_17_2827
    );
  register_module_imp_registers_imp_read_data1_8_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(8),
      I1 => register_module_imp_registers_imp_N41,
      I2 => register_module_imp_registers_imp_read_data1_8_9_2834,
      I3 => register_module_imp_registers_imp_N34,
      LO => N1633,
      O => register_module_imp_registers_imp_read_data1_8_17_2831
    );
  register_module_imp_decoder_imp_read_reg_1_0_20_SW0 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_decoder_imp_read_reg_1_0_2,
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I2 => IF_ID_regs_imp_instruction_out(5),
      I3 => register_module_imp_N6,
      LO => N1634,
      O => N380
    );
  register_module_imp_decoder_imp_read_reg_1_1_39_SW0 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_decoder_imp_read_reg_1_1_12_2454,
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      I2 => IF_ID_regs_imp_instruction_out(6),
      I3 => register_module_imp_N6,
      LO => N1635,
      O => N382
    );
  register_module_imp_controller_imp_operand1_src_cmp_eq00061 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_12_2_694,
      I1 => IF_ID_regs_imp_instruction_out_13_2_697,
      I2 => IF_ID_regs_imp_instruction_out_14_1_699,
      I3 => register_module_imp_N26,
      LO => N1636,
      O => register_module_imp_controller_imp_operand1_src_cmp_eq0006
    );
  register_module_imp_registers_imp_read_data1_0_51 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => read_reg_1_from_id(3),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      LO => N1637,
      O => register_module_imp_registers_imp_N46
    );
  register_module_imp_registers_imp_read_data1_3_32 : LUT4_L
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(3),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      LO => register_module_imp_registers_imp_read_data1_3_32_2811
    );
  register_module_imp_registers_imp_read_data1_15_32 : LUT4_L
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(15),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      LO => register_module_imp_registers_imp_read_data1_15_32_2797
    );
  register_module_imp_registers_imp_read_data1_0_4 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N436,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      LO => N1638,
      O => register_module_imp_registers_imp_N40
    );
  register_module_imp_registers_imp_read_data1_0_60_SW0 : LUT4_L
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => N369,
      I1 => register_module_imp_registers_imp_read_data1_0_1_2760,
      I2 => register_module_imp_registers_imp_read_data1_0_17_2761,
      I3 => N438,
      LO => N368
    );
  register_module_imp_registers_imp_read_data1_0_60_SW2 : LUT4_L
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => N442,
      I1 => register_module_imp_registers_imp_read_data1_0_1_2760,
      I2 => register_module_imp_registers_imp_read_data1_0_17_2761,
      I3 => N441,
      LO => N371
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW0 : LUT4_L
    generic map(
      INIT => X"840C"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(7),
      I1 => MEM_WB_regs_imp_write_enable_out_765,
      I2 => MEM_WB_regs_imp_write_back_reg_out(2),
      I3 => register_module_imp_N6,
      LO => N444
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW2 : LUT4_L
    generic map(
      INIT => X"840C"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(7),
      I1 => ALU_MEM_regs_imp_reg_write_enable_out_35,
      I2 => ALU_MEM_regs_imp_write_back_reg_out(2),
      I3 => register_module_imp_N6,
      LO => N447
    );
  register_module_imp_decoder_imp_read_reg_1_2_1_SW4 : LUT4_L
    generic map(
      INIT => X"840C"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(7),
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => ID_ALU_regs_imp_write_back_reg_out(2),
      I3 => register_module_imp_N6,
      LO => N450
    );
  register_module_imp_controller_imp_operand1_src_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => register_module_imp_N26,
      I3 => IF_ID_regs_imp_instruction_out(13),
      LO => N1639,
      O => register_module_imp_controller_imp_operand1_src_cmp_eq0000
    );
  register_module_imp_registers_imp_read_data1_0_60_SW5 : LUT2_L
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => branch_target_from_id_tmp(0),
      I1 => register_module_imp_controller_imp_is_jump_cmp_eq0000,
      LO => N458
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060 : LUT4_D
    generic map(
      INIT => X"0804"
    )
    port map (
      I0 => ALU_MEM_regs_imp_write_back_reg_out(1),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000055_1671,
      I2 => N464,
      I3 => register_module_imp_decoder_imp_read_reg_1_1_391,
      LO => N1640,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem
    );
  register_module_imp_decoder_imp_read_reg_1_or000428_SW1 : LUT4_D
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_12_2_694,
      I1 => IF_ID_regs_imp_instruction_out_11_2_691,
      I2 => IF_ID_regs_imp_instruction_out_13_2_697,
      I3 => IF_ID_regs_imp_instruction_out(14),
      LO => N1641,
      O => N467
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_or00001_SW1 : LUT4_D
    generic map(
      INIT => X"5777"
    )
    port map (
      I0 => read_reg_1_from_id(3),
      I1 => read_reg_1_from_id(2),
      I2 => read_reg_1_from_id(1),
      I3 => read_reg_1_from_id(0),
      LO => N1642,
      O => N436
    );
  register_module_imp_registers_imp_read_data2_2_17 : LUT4_D
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(2),
      I1 => register_module_imp_registers_imp_N42,
      I2 => register_module_imp_registers_imp_read_data2_2_9_2860,
      I3 => register_module_imp_registers_imp_N35,
      LO => N1643,
      O => register_module_imp_registers_imp_read_data2_2_17_2858
    );
  VGA_SF22130 : LUT4_D
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => VGA_bt_or0004,
      I1 => VGA_SF22110_1839,
      I2 => VGA_bt_or0012_1939,
      I3 => VGA_N191,
      LO => N1644,
      O => VGA_N4
    );
  ALU_imp_tmp_13_74 : LUT4_L
    generic map(
      INIT => X"E400"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N193,
      I2 => N195,
      I3 => ALU_imp_tmp_cmp_eq0010,
      LO => ALU_imp_tmp_13_74_179
    );
  ALU_imp_tmp_6_97 : LUT4_D
    generic map(
      INIT => X"D800"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(1),
      I1 => N207,
      I2 => N206,
      I3 => ALU_imp_tmp_cmp_eq0010,
      LO => N1645,
      O => ALU_imp_tmp_10_61
    );
  register_module_imp_controller_imp_mem_write11 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_15_2_702,
      I1 => IF_ID_regs_imp_instruction_out_12_2_694,
      I2 => IF_ID_regs_imp_instruction_out_13_2_697,
      I3 => IF_ID_regs_imp_instruction_out_11_2_691,
      LO => N1646,
      O => register_module_imp_controller_imp_mem_write_cmp_eq0000
    );
  VGA_bt_cmp_eq000411 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(5),
      I2 => VGA_x(0),
      I3 => VGA_N92,
      LO => N1647,
      O => VGA_N87
    );
  ALU_imp_tmp_2_6_SW1 : LUT4_D
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out_2_1_477,
      I1 => ID_ALU_regs_imp_op_code_out_3_1_479,
      I2 => ID_ALU_regs_imp_op_code_out_1_1_475,
      I3 => ID_ALU_regs_imp_op_code_out(0),
      LO => N1648,
      O => N473
    );
  ALU_imp_tmp_2_6 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALU_imp_tmp_or00049_307,
      I1 => ALU_imp_tmp_or00044_306,
      I2 => ALU_imp_tmp_or000414_305,
      I3 => N473,
      LO => N1649,
      O => ALU_imp_N72
    );
  write_back_data_from_alu_tmp_0_47_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N475,
      I1 => ALU_imp_tmp_4_177_221,
      I2 => N350,
      I3 => alu_result_from_alu_tmp(2),
      LO => N453
    );
  ALU_imp_tmp_2_31_SW0 : LUT4_D
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out_3_1_479,
      I1 => ID_ALU_regs_imp_op_code_out_2_1_477,
      I2 => ID_ALU_regs_imp_op_code_out_1_1_475,
      I3 => ID_ALU_regs_imp_op_code_out(0),
      LO => N1650,
      O => N477
    );
  VGA_bt_cmp_eq000211_SW0 : LUT3_L
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => VGA_x(2),
      I1 => VGA_x(1),
      I2 => VGA_x(7),
      LO => N481
    );
  register_module_imp_registers_imp_read_data2_2_59 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(2),
      I1 => register_module_imp_registers_imp_N43,
      I2 => N505,
      I3 => register_module_imp_registers_imp_read_data2_2_17_2858,
      LO => register_module_imp_read_data2_tmp(2)
    );
  ALU_imp_tmp_3_109 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      I2 => ID_ALU_regs_imp_operand2_out(2),
      I3 => ALU_imp_N27,
      LO => N1651,
      O => ALU_imp_tmp_3_109_206
    );
  ALU_imp_tmp_6_111_SW0 : LUT4_L
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ALU_imp_Sh10_104,
      I1 => ALU_imp_N72,
      I2 => ALU_imp_N27,
      I3 => ALU_imp_tmp_10_61,
      LO => N544
    );
  register_module_imp_registers_imp_read_data2_10_59 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(10),
      I1 => register_module_imp_registers_imp_N43,
      I2 => register_module_imp_registers_imp_read_data2_10_53_2844,
      I3 => N562,
      LO => register_module_imp_read_data2_tmp(10)
    );
  register_module_imp_registers_imp_read_data2_11_59 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(11),
      I1 => register_module_imp_registers_imp_N43,
      I2 => register_module_imp_registers_imp_read_data2_11_53_2846,
      I3 => N564,
      LO => register_module_imp_read_data2_tmp(11)
    );
  register_module_imp_registers_imp_read_data2_12_59 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(12),
      I1 => register_module_imp_registers_imp_N43,
      I2 => register_module_imp_registers_imp_read_data2_12_53_2848,
      I3 => N566,
      LO => register_module_imp_read_data2_tmp(12)
    );
  register_module_imp_registers_imp_read_data2_13_59 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(13),
      I1 => register_module_imp_registers_imp_N43,
      I2 => register_module_imp_registers_imp_read_data2_13_53_2850,
      I3 => N568,
      LO => register_module_imp_read_data2_tmp(13)
    );
  register_module_imp_registers_imp_read_data2_14_59 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(14),
      I1 => register_module_imp_registers_imp_N43,
      I2 => register_module_imp_registers_imp_read_data2_14_53_2852,
      I3 => N570,
      LO => register_module_imp_read_data2_tmp(14)
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000060 : LUT4_D
    generic map(
      INIT => X"0900"
    )
    port map (
      I0 => ALU_MEM_regs_imp_write_back_reg_out(1),
      I1 => read_reg_2_from_id(1),
      I2 => N574,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem_and000055_1682,
      LO => N1652,
      O => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem
    );
  ALU_imp_tmp_10_76_SW0 : LUT3_L
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => ALU_imp_N12,
      I1 => ALU_imp_N72,
      I2 => ALU_imp_N27,
      LO => N588
    );
  VGA_bt_or00101 : LUT4_D
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => VGA_y(6),
      I1 => VGA_y(7),
      I2 => VGA_y(8),
      I3 => N594,
      LO => N1653,
      O => VGA_bt_or0010
    );
  VGA_bt_or00061_SW0 : LUT3_L
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(5),
      I2 => VGA_y(4),
      LO => N596
    );
  ALU_imp_tmp_3_75_SW1 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_Sh103_108,
      I2 => ALU_imp_Sh79,
      I3 => ALU_imp_N72,
      LO => N599
    );
  register_module_imp_registers_imp_read_data1_5_46_SW0 : LUT4_L
    generic map(
      INIT => X"335F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(5),
      I1 => write_back_data_from_mem_tmp(5),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      LO => N603
    );
  register_module_imp_registers_imp_read_data1_9_46_SW0 : LUT4_L
    generic map(
      INIT => X"335F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(9),
      I1 => write_back_data_from_mem_tmp(9),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      LO => N607
    );
  register_module_imp_registers_imp_read_data1_7_46_SW0 : LUT4_L
    generic map(
      INIT => X"335F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(7),
      I1 => write_back_data_from_mem_tmp(7),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      LO => N609
    );
  register_module_imp_registers_imp_read_data1_8_46_SW0 : LUT4_L
    generic map(
      INIT => X"335F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(8),
      I1 => write_back_data_from_mem_tmp(8),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      LO => N611
    );
  register_module_imp_registers_imp_read_data2_0_17 : LUT4_L
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(0),
      I1 => register_module_imp_registers_imp_N42,
      I2 => register_module_imp_registers_imp_read_data2_0_9_2843,
      I3 => register_module_imp_registers_imp_N35,
      LO => register_module_imp_registers_imp_read_data2_0_17_2840
    );
  ALU_imp_tmp_13_62 : LUT4_L
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(13),
      I1 => ALU_imp_N46,
      I2 => N616,
      I3 => N615,
      LO => ALU_imp_tmp_13_62_178
    );
  ALU_imp_tmp_14_62_SW0 : LUT4_L
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(14),
      I1 => ALU_imp_tmp_cmp_eq0004,
      I2 => ALU_imp_tmp_cmp_eq0005,
      I3 => ALU_imp_tmp_cmp_eq0006,
      LO => N618
    );
  register_module_imp_registers_imp_read_data1_4_46_SW0 : LUT4_L
    generic map(
      INIT => X"335F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(4),
      I1 => write_back_data_from_mem_tmp(4),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      LO => N621
    );
  ID_ALU_regs_imp_operand2_out_mux0001_0_SW3 : LUT4_L
    generic map(
      INIT => X"2272"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(10),
      I2 => N633,
      I3 => N572,
      LO => N400
    );
  VGA_bt_cmp_ge00081 : LUT4_D
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_x(0),
      I2 => VGA_x(1),
      I3 => VGA_x(2),
      LO => N1654,
      O => VGA_bt_cmp_ge00081_1868
    );
  ALU_imp_tmp_8_25 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ALU_imp_Sh32,
      I1 => ALU_imp_Sh96_133,
      I2 => ALU_imp_tmp_cmp_eq0010,
      I3 => ALU_imp_N25,
      LO => ALU_imp_tmp_8_25_254
    );
  VGA_bt_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => VGA_x(8),
      I1 => VGA_x(9),
      I2 => VGA_x(0),
      LO => N1655,
      O => VGA_N37
    );
  register_module_imp_decoder_imp_read_reg_1_or000485_SW0 : LUT3_D
    generic map(
      INIT => X"98"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_12_1_693,
      I1 => IF_ID_regs_imp_instruction_out_15_1_701,
      I2 => IF_ID_regs_imp_instruction_out_14_1_699,
      LO => N1656,
      O => N378
    );
  ALU_imp_tmp_15_72 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => N635,
      I1 => ALU_imp_tmp_shift0006(15),
      I2 => ALU_imp_tmp_15_12_187,
      I3 => ALU_imp_tmp_15_63_189,
      LO => ALU_imp_tmp_15_72_190
    );
  ID_ALU_regs_imp_operand2_out_mux0001_13_SW1 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(2),
      I2 => N505,
      I3 => N641,
      LO => N511
    );
  register_module_imp_decoder_imp_read_reg_2_0_1_SW0 : LUT3_D
    generic map(
      INIT => X"35"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(5),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => register_module_imp_controller_imp_operand2_src_cmp_eq0002,
      LO => N1657,
      O => N643
    );
  ID_ALU_regs_imp_operand2_out_mux0001_10_SW1 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(5),
      I2 => register_module_imp_registers_imp_read_data1_5_3_2820,
      I3 => N651,
      LO => N520
    );
  ID_ALU_regs_imp_operand2_out_mux0001_9_SW1 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(6),
      I2 => register_module_imp_registers_imp_read_data1_6_3_2824,
      I3 => N653,
      LO => N523
    );
  ID_ALU_regs_imp_operand2_out_mux0001_8_SW1 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(7),
      I2 => register_module_imp_registers_imp_read_data1_7_3_2828,
      I3 => N655,
      LO => N526
    );
  ID_ALU_regs_imp_operand2_out_mux0001_7_SW1 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(8),
      I2 => register_module_imp_registers_imp_read_data1_8_3_2832,
      I3 => N657,
      LO => N529
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000026_SW0_SW0 : LUT4_D
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(8),
      I1 => register_module_imp_N47,
      I2 => N460,
      I3 => N501,
      LO => N1658,
      O => N661
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000026_SW0 : LUT4_D
    generic map(
      INIT => X"5565"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_reg_out(0),
      I1 => register_module_imp_decoder_imp_read_reg_1_or0004,
      I2 => N661,
      I3 => N380,
      LO => N1659,
      O => N462
    );
  register_module_imp_decoder_imp_read_reg_1_0_20 : LUT4_D
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => N501,
      I1 => N673,
      I2 => N672,
      I3 => N380,
      LO => N1660,
      O => read_reg_1_from_id(0)
    );
  VGA_SF533_SW0 : LUT4_L
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => VGA_y(8),
      I1 => VGA_y(7),
      I2 => VGA_bt_cmp_le00041_1879,
      I3 => VGA_bt_or0008,
      LO => N174
    );
  ALU_imp_tmp_9_117 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ALU_imp_tmp_cmp_eq0010,
      LO => N1661,
      O => ALU_imp_tmp_10_117
    );
  ALU_imp_tmp_5_46 : LUT4_L
    generic map(
      INIT => X"ECCC"
    )
    port map (
      I0 => ALU_imp_N28,
      I1 => N703,
      I2 => ALU_imp_Sh77,
      I3 => ALU_imp_N72,
      LO => ALU_imp_tmp_5_46_232
    );
  register_module_imp_decoder_imp_read_reg_2_or00001 : LUT4_D
    generic map(
      INIT => X"40CC"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(11),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => register_module_imp_N23,
      I3 => N707,
      LO => N1662,
      O => read_reg_2_from_id(3)
    );
  write_back_data_from_alu_tmp_0_9_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALU_imp_N13,
      I1 => ALU_imp_tmp_13_111_176,
      I2 => ALU_imp_tmp_14_111_182,
      I3 => N711,
      LO => N429
    );
  register_module_imp_registers_imp_read_data2_2_24_SW0 : LUT4_D
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(2),
      I1 => is_hazard_2_to_id_tmp,
      I2 => register_module_imp_registers_imp_N39,
      I3 => N713,
      LO => N1663,
      O => N505
    );
  register_module_imp_registers_imp_read_data2_1_59 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_1_53_2857,
      I1 => N715,
      I2 => register_module_imp_registers_imp_read_data2_1_17_2856,
      LO => N1664,
      O => register_module_imp_read_data2_tmp(1)
    );
  register_module_imp_registers_imp_read_data2_3_59 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_3_53_2862,
      I1 => N717,
      I2 => register_module_imp_registers_imp_read_data2_3_17_2861,
      LO => N1665,
      O => register_module_imp_read_data2_tmp(3)
    );
  register_module_imp_registers_imp_read_data2_4_59 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_4_53_2864,
      I1 => N719,
      I2 => register_module_imp_registers_imp_read_data2_4_17_2863,
      LO => N1666,
      O => register_module_imp_read_data2_tmp(4)
    );
  register_module_imp_registers_imp_read_data2_6_59 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_6_53_2867,
      I1 => N723,
      I2 => register_module_imp_registers_imp_read_data2_6_17_2866,
      LO => N1667,
      O => register_module_imp_read_data2_tmp(6)
    );
  register_module_imp_registers_imp_read_data2_9_24_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(9),
      I1 => register_module_imp_registers_imp_varindex0001(9),
      I2 => register_module_imp_registers_imp_N39,
      I3 => register_module_imp_registers_imp_N43,
      LO => N729
    );
  register_module_imp_decoder_imp_read_reg_2_2_1_SW0 : LUT4_L
    generic map(
      INIT => X"C0AA"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(7),
      I1 => IF_ID_regs_imp_instruction_out(10),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => register_module_imp_N23,
      LO => N737
    );
  register_module_imp_decoder_imp_read_reg_2_1_1_SW0 : LUT4_D
    generic map(
      INIT => X"CFAA"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(6),
      I1 => IF_ID_regs_imp_instruction_out(9),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => register_module_imp_N23,
      LO => N1668,
      O => N739
    );
  register_module_imp_registers_imp_read_data1_3_61_SW0 : LUT4_L
    generic map(
      INIT => X"0015"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(0),
      I1 => is_hazard_1_to_id_tmp,
      I2 => register_module_imp_registers_imp_read_data1_3_46_2813,
      I3 => register_module_imp_registers_imp_read_data1_3_17_2809,
      LO => N741
    );
  register_module_imp_registers_imp_read_data2_10_59_SW2 : LUT3_D
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => register_module_imp_operand2_src_tmp(0),
      I2 => immediate_from_id_tmp(10),
      LO => N1669,
      O => N748
    );
  register_module_imp_registers_imp_read_data2_10_24_SW0 : LUT4_D
    generic map(
      INIT => X"FBC8"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data2_10_9_2845,
      I1 => register_module_imp_registers_imp_N35,
      I2 => N766,
      I3 => N765,
      LO => N1670,
      O => N562
    );
  register_module_imp_registers_imp_read_data2_11_17_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(11),
      I1 => register_module_imp_registers_imp_read_data2_0_4_2842,
      LO => N768
    );
  register_module_imp_registers_imp_read_data2_12_17_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(12),
      I1 => register_module_imp_registers_imp_read_data2_0_4_2842,
      LO => N771
    );
  register_module_imp_registers_imp_read_data2_13_17_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(13),
      I1 => register_module_imp_registers_imp_read_data2_0_4_2842,
      LO => N774
    );
  register_module_imp_registers_imp_read_data2_14_17_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(14),
      I1 => register_module_imp_registers_imp_read_data2_0_4_2842,
      LO => N777
    );
  register_module_imp_registers_imp_read_data2_15_17_SW1 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_ra(15),
      I1 => register_module_imp_registers_imp_sp(15),
      I2 => register_module_imp_registers_imp_N42,
      I3 => register_module_imp_registers_imp_N39,
      LO => N781
    );
  ALU_imp_tmp_0_49 : LUT4_L
    generic map(
      INIT => X"A2A0"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => N785,
      I2 => ALU_imp_tmp_0_34_140,
      I3 => ALU_imp_N25,
      LO => ALU_imp_tmp_0_49_141
    );
  ALU_imp_tmp_2_102 : LUT4_L
    generic map(
      INIT => X"8C04"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_tmp_cmp_eq0010,
      I2 => N787,
      I3 => N590,
      LO => ALU_imp_tmp_2_102_202
    );
  ALU_imp_tmp_12_76 : LUT4_L
    generic map(
      INIT => X"80AA"
    )
    port map (
      I0 => ALU_imp_N24,
      I1 => ALU_imp_Sh96_133,
      I2 => ALU_imp_tmp_cmp_eq0010,
      I3 => N801,
      LO => ALU_imp_tmp_12_76_173
    );
  register_module_imp_registers_imp_read_data2_2_33_SW0 : LUT4_L
    generic map(
      INIT => X"7D5F"
    )
    port map (
      I0 => write_back_data_from_mem_tmp(2),
      I1 => read_reg_2_from_id(3),
      I2 => ALU_MEM_regs_imp_write_back_reg_out(0),
      I3 => N643,
      LO => N803
    );
  ALU_imp_tmp_2_49_SW0 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ALU_imp_Sh34_124,
      I3 => ALU_imp_N25,
      LO => N807
    );
  register_module_imp_decoder_imp_read_reg_1_or000485 : LUT4_D
    generic map(
      INIT => X"FF1D"
    )
    port map (
      I0 => N466,
      I1 => IF_ID_regs_imp_instruction_out(15),
      I2 => N467,
      I3 => N815,
      LO => N1671,
      O => register_module_imp_decoder_imp_read_reg_1_or0004
    );
  ALU_imp_tmp_2_34_SW0_SW0 : LUT3_L
    generic map(
      INIT => X"BD"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(2),
      LO => N817
    );
  register_module_imp_decoder_imp_read_reg_2_or00001_SW1 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(13),
      I1 => IF_ID_regs_imp_instruction_out(11),
      I2 => IF_ID_regs_imp_instruction_out(15),
      I3 => IF_ID_regs_imp_instruction_out(12),
      LO => N1672,
      O => N743
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb_and000026_SW0 : LUT4_L
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_reg_out(1),
      I1 => MEM_WB_regs_imp_write_back_reg_out(2),
      I2 => register_module_imp_decoder_imp_read_reg_2_1_1_2460,
      I3 => read_reg_2_from_id(2),
      LO => N819
    );
  register_module_imp_decoder_imp_read_reg_2_0_1_SW2 : LUT4_L
    generic map(
      INIT => X"CFAA"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(5),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(11),
      I3 => register_module_imp_N23,
      LO => N823
    );
  register_module_imp_registers_imp_read_data1_1_46_SW1 : LUT4_L
    generic map(
      INIT => X"335F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(1),
      I1 => write_back_data_from_mem_tmp(1),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      LO => N835
    );
  VGA_bt_not0001240 : LUT4_L
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => N200,
      I1 => N198,
      I2 => VGA_x(9),
      I3 => N837,
      LO => VGA_bt_not0001240_1917
    );
  VGA_romAddr_and00001311 : LUT4_D
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => VGA_bt_cmp_le0016,
      I1 => N839,
      I2 => N131,
      I3 => VGA_x(7),
      LO => N1673,
      O => VGA_bt_and0140
    );
  ID_ALU_regs_imp_operand2_out_mux0001_12_SW0 : LUT4_L
    generic map(
      INIT => X"3237"
    )
    port map (
      I0 => register_module_imp_registers_imp_read_data1_3_3_2810,
      I1 => N864,
      I2 => register_module_imp_registers_imp_read_data1_3_17_2809,
      I3 => N863,
      LO => N513
    );
  ID_ALU_regs_imp_operand2_out_mux0001_5_SW3 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(10),
      I2 => register_module_imp_registers_imp_read_data2_10_53_2844,
      I3 => N884,
      LO => N385
    );
  ID_ALU_regs_imp_operand2_out_mux0001_4_SW3 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(10),
      I2 => register_module_imp_registers_imp_read_data2_11_53_2846,
      I3 => N886,
      LO => N388
    );
  ID_ALU_regs_imp_operand2_out_mux0001_3_SW3 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(10),
      I2 => register_module_imp_registers_imp_read_data2_12_53_2848,
      I3 => N888,
      LO => N391
    );
  ID_ALU_regs_imp_operand2_out_mux0001_2_SW3 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(10),
      I2 => register_module_imp_registers_imp_read_data2_13_53_2850,
      I3 => N890,
      LO => N394
    );
  ID_ALU_regs_imp_operand2_out_mux0001_1_SW3 : LUT4_L
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => register_module_imp_operand2_src_tmp(1),
      I1 => immediate_from_id_tmp(10),
      I2 => register_module_imp_registers_imp_read_data2_14_53_2852,
      I3 => N892,
      LO => N397
    );
  register_module_imp_registers_imp_read_data1_6_46_SW1 : LUT4_L
    generic map(
      INIT => X"335F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(6),
      I1 => write_back_data_from_mem_tmp(6),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      LO => N894
    );
  ALU_imp_tmp_7_113_SW0 : LUT3_L
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => ALU_imp_tmp_cmp_eq0010,
      I1 => ALU_imp_N4,
      I2 => ALU_imp_N25,
      LO => N896
    );
  VGA_bt_or00081_SW0 : LUT3_L
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => VGA_y(3),
      I1 => VGA_y(4),
      I2 => VGA_y(5),
      LO => N898
    );
  VGA_bt_cmp_le00192_SW0 : LUT4_D
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(5),
      I2 => VGA_x(4),
      I3 => N900,
      LO => N1674,
      O => N198
    );
  ALU_imp_tmp_3_27 : LUT4_D
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => ALU_imp_tmp_3_9_214,
      I1 => N914,
      I2 => ALU_imp_tmp_3_23_209,
      I3 => ALU_imp_tmp_shift0006(15),
      LO => N1675,
      O => ALU_imp_tmp_3_27_211
    );
  write_back_data_from_alu_tmp_4_26 : LUT4_D
    generic map(
      INIT => X"1105"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(0),
      I1 => N920,
      I2 => N919,
      I3 => ALU_imp_tmp_4_177_221,
      LO => N1676,
      O => write_back_data_from_alu_tmp_4_26_3093
    );
  write_back_data_from_alu_tmp_9_26 : LUT4_D
    generic map(
      INIT => X"1105"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(0),
      I1 => N923,
      I2 => N922,
      I3 => ALU_imp_tmp_9_165_262,
      LO => N1677,
      O => write_back_data_from_alu_tmp_9_26_3113
    );
  register_module_imp_registers_imp_read_data1_15_60_SW0 : LUT2_L
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_15_46_2799,
      LO => N928
    );
  write_back_data_from_alu_tmp_3_26 : LUT4_D
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N934,
      I1 => ALU_imp_tmp_3_247_210,
      I2 => N933,
      I3 => N665,
      LO => N1678,
      O => write_back_data_from_alu_tmp_3_26_3089
    );
  register_module_imp_registers_imp_read_data1_0_31 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => read_reg_1_from_id(2),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb_and000060_1676,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      I3 => N950,
      LO => N1679,
      O => register_module_imp_registers_imp_N34
    );
  ALU_imp_tmp_1_251 : LUT4_D
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ALU_imp_N24,
      I1 => ALU_imp_Sh77,
      I2 => ALU_imp_N72,
      I3 => N952,
      LO => N1680,
      O => ALU_imp_tmp_1_251_196
    );
  ALU_imp_tmp_1_75_SW0 : LUT2_L
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ALU_imp_Sh5_125,
      LO => N954
    );
  ALU_imp_tmp_5_110_SW0 : LUT4_L
    generic map(
      INIT => X"0070"
    )
    port map (
      I0 => N477,
      I1 => N473,
      I2 => ALU_imp_Sh73_129,
      I3 => ALU_imp_tmp_or0004,
      LO => N699
    );
  ALU_imp_tmp_4_80 : LUT4_L
    generic map(
      INIT => X"0032"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(4),
      I1 => ID_ALU_regs_imp_operand1_out(4),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => N973,
      LO => ALU_imp_tmp_4_80_225
    );
  ALU_imp_tmp_4_127_SW1 : LUT4_L
    generic map(
      INIT => X"3F5F"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(10),
      I1 => ID_ALU_regs_imp_operand1_out(11),
      I2 => ID_ALU_regs_imp_operand2_out(2),
      I3 => ID_ALU_regs_imp_operand2_out(0),
      LO => N976
    );
  ID_ALU_regs_imp_operand2_out_mux0001_14_SW1 : LUT4_L
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N985,
      I1 => register_module_imp_registers_imp_read_data1_1_17_2801,
      I2 => N984,
      I3 => register_module_imp_registers_imp_read_data1_1_3_2802,
      LO => N508
    );
  ALU_imp_tmp_4_89_SW1 : LUT4_L
    generic map(
      INIT => X"F3F5"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(2),
      I1 => ID_ALU_regs_imp_operand1_out(1),
      I2 => ID_ALU_regs_imp_operand2_out(2),
      I3 => ID_ALU_regs_imp_operand2_out(0),
      LO => N988
    );
  ALU_imp_tmp_9_110_SW0 : LUT4_D
    generic map(
      INIT => X"EA42"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      LO => N1681,
      O => N993
    );
  ALU_imp_tmp_9_110_SW1 : LUT4_D
    generic map(
      INIT => X"AAC4"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(3),
      I1 => ID_ALU_regs_imp_op_code_out(1),
      I2 => ID_ALU_regs_imp_op_code_out(0),
      I3 => ID_ALU_regs_imp_op_code_out(2),
      LO => N1682,
      O => N994
    );
  register_module_imp_registers_imp_read_data1_10_24_SW0 : LUT3_L
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(10),
      I1 => register_module_imp_registers_imp_read_data1_10_1_2769,
      I2 => register_module_imp_registers_imp_N46,
      LO => N1005
    );
  register_module_imp_registers_imp_read_data1_11_24_SW0 : LUT3_L
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(11),
      I1 => register_module_imp_registers_imp_read_data1_11_1_2774,
      I2 => register_module_imp_registers_imp_N46,
      LO => N1007
    );
  register_module_imp_registers_imp_read_data1_12_24_SW0 : LUT3_L
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(12),
      I1 => register_module_imp_registers_imp_read_data1_12_1_2779,
      I2 => register_module_imp_registers_imp_N46,
      LO => N1009
    );
  register_module_imp_registers_imp_read_data1_13_24_SW0 : LUT3_L
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(13),
      I1 => register_module_imp_registers_imp_read_data1_13_1_2784,
      I2 => register_module_imp_registers_imp_N46,
      LO => N10111
    );
  register_module_imp_registers_imp_read_data1_14_24_SW0 : LUT3_L
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(14),
      I1 => register_module_imp_registers_imp_read_data1_14_1_2789,
      I2 => register_module_imp_registers_imp_N46,
      LO => N1013
    );
  register_module_imp_registers_imp_read_data1_15_24_SW0 : LUT3_L
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0000(15),
      I1 => register_module_imp_registers_imp_read_data1_15_1_2794,
      I2 => register_module_imp_registers_imp_N46,
      LO => N1015
    );
  ID_ALU_regs_imp_operand2_out_mux0001_11_SW1 : LUT4_L
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N1020,
      I1 => register_module_imp_registers_imp_read_data1_4_17_2815,
      I2 => N1019,
      I3 => register_module_imp_registers_imp_read_data1_4_3_2816,
      LO => N517
    );
  ID_ALU_regs_imp_operand2_out_mux0001_6_SW1 : LUT4_L
    generic map(
      INIT => X"5547"
    )
    port map (
      I0 => N1023,
      I1 => register_module_imp_registers_imp_read_data1_9_17_2835,
      I2 => N1022,
      I3 => register_module_imp_registers_imp_read_data1_9_3_2836,
      LO => N532
    );
  ALU_imp_tmp_or0000 : LUT4_D
    generic map(
      INIT => X"0121"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(3),
      I1 => ID_ALU_regs_imp_op_code_out(2),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => ID_ALU_regs_imp_op_code_out(0),
      LO => N1683,
      O => ALU_imp_tmp_or0000_302
    );
  VGA_bt_cmp_ge0011216 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => VGA_x(9),
      I1 => VGA_x(8),
      I2 => VGA_x(7),
      I3 => VGA_bt_cmp_ge0011214_1873,
      LO => N1684,
      O => VGA_bt_cmp_ge0011
    );
  ALU_imp_tmp_8_113 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALU_imp_tmp_or00044_306,
      I1 => ALU_imp_tmp_or000414_305,
      I2 => ALU_imp_tmp_or00049_307,
      I3 => N1017,
      LO => ALU_imp_tmp_8_113_252
    );
  ALU_imp_tmp_12_58_SW1 : LUT4_L
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(12),
      I1 => ALU_imp_tmp_cmp_eq0003,
      I2 => ALU_imp_tmp_cmp_eq0004,
      I3 => ALU_imp_tmp_cmp_eq0005,
      LO => N1053
    );
  VGA_bt_mux0000_1_314 : LUT4_L
    generic map(
      INIT => X"5545"
    )
    port map (
      I0 => VGA_bt_and0133,
      I1 => VGA_bt_mux0000_1_42_1906,
      I2 => N1055,
      I3 => VGA_bt_mux0000_1_140_1892,
      LO => VGA_bt_mux0000_1_314_1904
    );
  register_module_imp_decoder_imp_read_reg_1_0_223_SW0_SW2 : LUT3_L
    generic map(
      INIT => X"DB"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out_11_2_691,
      I1 => IF_ID_regs_imp_instruction_out(12),
      I2 => IF_ID_regs_imp_instruction_out(13),
      LO => N1057
    );
  register_module_imp_registers_imp_read_data1_10_46_SW0 : LUT4_D
    generic map(
      INIT => X"353F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(10),
      I1 => write_back_data_from_mem_tmp(10),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      LO => N1685,
      O => N1059
    );
  register_module_imp_registers_imp_read_data1_11_46_SW0 : LUT4_D
    generic map(
      INIT => X"353F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(11),
      I1 => write_back_data_from_mem_tmp(11),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      LO => N1686,
      O => N1061
    );
  register_module_imp_registers_imp_read_data1_12_46_SW0 : LUT4_D
    generic map(
      INIT => X"353F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(12),
      I1 => write_back_data_from_mem_tmp(12),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      LO => N1687,
      O => N1063
    );
  register_module_imp_registers_imp_read_data2_0_51 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => read_reg_2_from_id(3),
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_mem,
      LO => N1688,
      O => register_module_imp_registers_imp_N43
    );
  ALU_imp_tmp_1_69_SW1 : LUT4_L
    generic map(
      INIT => X"BFFD"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(3),
      I1 => ID_ALU_regs_imp_op_code_out(2),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => ID_ALU_regs_imp_op_code_out(0),
      LO => N1071
    );
  VGA_bt_mux0000_1_224 : LUT4_L
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => VGA_bt_cmp_ge0015,
      I1 => VGA_N210,
      I2 => VGA_bt_and0140,
      I3 => VGA_bt_cmp_le0015,
      LO => VGA_bt_mux0000_1_224_1900
    );
  VGA_bt_cmp_eq0005_SW0_SW0 : LUT2_L
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => VGA_x(4),
      I1 => VGA_x(6),
      LO => N1073
    );
  ALU_imp_tmp_5_69 : LUT4_L
    generic map(
      INIT => X"8C80"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(15),
      I1 => ID_ALU_regs_imp_operand2_out(3),
      I2 => N1077,
      I3 => ALU_imp_N01,
      LO => ALU_imp_tmp_5_69_233
    );
  RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_or00001 : LUT4_D
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000055_1668,
      I1 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem_and000060_1672,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      LO => N1689,
      O => is_hazard_1_to_id_tmp
    );
  register_module_imp_decoder_imp_read_reg_1_3_27_SW0 : LUT4_D
    generic map(
      INIT => X"02FF"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(10),
      I1 => IF_ID_regs_imp_instruction_out(8),
      I2 => IF_ID_regs_imp_instruction_out(9),
      I3 => register_module_imp_controller_imp_operand1_src_cmp_eq0006,
      LO => N1690,
      O => N851
    );
  ALU_imp_tmp_2_1_SW2 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => ID_ALU_regs_imp_op_code_out(2),
      I1 => ID_ALU_regs_imp_op_code_out(3),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => N346,
      LO => N1691,
      O => N914
    );
  register_module_imp_decoder_imp_read_reg_1_0_229_SW1_SW0 : LUT4_L
    generic map(
      INIT => X"AEBF"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(8),
      I1 => IF_ID_regs_imp_instruction_out(15),
      I2 => N467,
      I3 => N466,
      LO => N1081
    );
  VGA_bt_mux0000_1_257 : LUT4_L
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => VGA_N1011,
      I1 => VGA_bt_mux0000_1_213_1899,
      I2 => VGA_bt_and0135_1849,
      I3 => VGA_bt_mux0000_1_234_1901,
      LO => VGA_bt_mux0000_1_257_1903
    );
  ALU_imp_tmp_7_57 : LUT4_L
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(7),
      I1 => ID_ALU_regs_imp_operand2_out(7),
      I2 => N994,
      I3 => N993,
      LO => ALU_imp_tmp_7_57_249
    );
  VGA_romAddr_and00001248 : LUT4_L
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => VGA_x(2),
      I1 => VGA_x(0),
      I2 => VGA_x(1),
      I3 => N1114,
      LO => VGA_romAddr_and00001248_1962
    );
  register_module_imp_registers_imp_read_data2_0_4 : LUT4_D
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => read_reg_2_from_id(3),
      I1 => N1116,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      LO => N1692,
      O => register_module_imp_registers_imp_N39
    );
  register_module_imp_registers_imp_read_data1_10_60_SW0 : LUT4_L
    generic map(
      INIT => X"4EFF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      I1 => N1059,
      I2 => write_back_data_from_alu_tmp(10),
      I3 => is_hazard_1_to_id_tmp,
      LO => N904
    );
  register_module_imp_registers_imp_read_data1_11_60_SW0 : LUT4_L
    generic map(
      INIT => X"4EFF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      I1 => N1061,
      I2 => write_back_data_from_alu_tmp(11),
      I3 => is_hazard_1_to_id_tmp,
      LO => N906
    );
  register_module_imp_registers_imp_read_data1_12_60_SW0 : LUT4_L
    generic map(
      INIT => X"4EFF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      I1 => N1063,
      I2 => write_back_data_from_alu_tmp(12),
      I3 => is_hazard_1_to_id_tmp,
      LO => N908
    );
  register_module_imp_registers_imp_read_data1_13_60_SW0 : LUT4_L
    generic map(
      INIT => X"72FF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      I1 => write_back_data_from_alu_tmp(13),
      I2 => N1065,
      I3 => is_hazard_1_to_id_tmp,
      LO => N910
    );
  register_module_imp_registers_imp_read_data1_14_60_SW0 : LUT4_L
    generic map(
      INIT => X"72FF"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu,
      I1 => write_back_data_from_alu_tmp(14),
      I2 => N1067,
      I3 => is_hazard_1_to_id_tmp,
      LO => N912
    );
  register_module_imp_decoder_imp_immediate_or000032 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N1134,
      I1 => register_module_imp_controller_imp_operand1_src_cmp_eq0001,
      I2 => register_module_imp_controller_imp_operand2_src_cmp_eq0003,
      I3 => register_module_imp_controller_imp_operand1_src_cmp_eq0005,
      LO => N1693,
      O => register_module_imp_decoder_imp_immediate_or0000
    );
  register_module_imp_decoder_imp_read_reg_1_0_223_SW1 : LUT4_D
    generic map(
      INIT => X"1B11"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => N1136,
      I2 => N1137,
      I3 => register_module_imp_N22,
      LO => N1694,
      O => N501
    );
  register_module_imp_registers_imp_read_data1_2_46_SW1 : LUT4_L
    generic map(
      INIT => X"353F"
    )
    port map (
      I0 => MEM_WB_regs_imp_write_back_data_out(2),
      I1 => write_back_data_from_mem_tmp(2),
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_mem,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_wb,
      LO => N1141
    );
  ALU_imp_tmp_0_76_SW0 : LUT3_L
    generic map(
      INIT => X"8C"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(2),
      I1 => N1103,
      I2 => ALU_imp_Sh96_133,
      LO => N1143
    );
  VGA_bt_cmp_ge0011214_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => VGA_x(3),
      I1 => VGA_x(2),
      I2 => VGA_x(1),
      I3 => VGA_x(0),
      LO => N1149
    );
  ALU_imp_tmp_1_234_SW0 : LUT3_L
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => N1151,
      I2 => N695,
      LO => N805
    );
  register_module_imp_registers_imp_read_data2_5_24_SW0_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => register_module_imp_registers_imp_sp(5),
      I1 => is_hazard_2_to_id_tmp,
      I2 => register_module_imp_registers_imp_N39,
      I3 => N1120,
      LO => N1161
    );
  register_module_imp_registers_imp_read_data2_8_59 : LUT4_D
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => register_module_imp_registers_imp_varindex0001(8),
      I1 => register_module_imp_registers_imp_N43,
      I2 => N1163,
      I3 => register_module_imp_registers_imp_read_data2_8_17_2869,
      LO => N1695,
      O => register_module_imp_read_data2_tmp(8)
    );
  register_module_imp_registers_imp_read_data2_7_24_SW0_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => register_module_imp_registers_imp_N39,
      I1 => register_module_imp_registers_imp_sp(7),
      I2 => is_hazard_2_to_id_tmp,
      I3 => N1122,
      LO => N1165
    );
  VGA_romAddr_and0000200_SW0 : LUT4_L
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => VGA_bt_and0140,
      I1 => VGA_romAddr_and0000107_1960,
      I2 => VGA_romAddr_and00001281_1965,
      I3 => N1167,
      LO => N1132
    );
  VGA_bt_not0001155_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => VGA_y(4),
      I1 => VGA_y(6),
      LO => N1299
    );
  VGA_romAddr_and000068 : LUT4_D
    generic map(
      INIT => X"FCF4"
    )
    port map (
      I0 => VGA_bt_or0004,
      I1 => VGA_bt_cmp_eq0006,
      I2 => VGA_N84,
      I3 => VGA_N72,
      LO => N1696,
      O => VGA_romAddr_and000068_1977
    );
  register_module_imp_controller_imp_operand2_src_0_102 : LUT4_D
    generic map(
      INIT => X"FFBE"
    )
    port map (
      I0 => register_module_imp_controller_imp_operand2_src_0_76_2440,
      I1 => IF_ID_regs_imp_instruction_out(12),
      I2 => N1323,
      I3 => register_module_imp_controller_imp_operand2_src_0_24_2437,
      LO => N1697,
      O => register_module_imp_operand2_src_tmp(0)
    );
  VGA_SF57119 : LUT4_D
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => VGA_x(8),
      I1 => VGA_x(9),
      I2 => VGA_SF57116,
      I3 => VGA_N62,
      LO => N1698,
      O => VGA_N84
    );
  VGA_romAddr_mux0053_7_29 : LUT4_L
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => VGA_N10,
      I1 => VGA_bt_and0138_1851,
      I2 => VGA_bt_or0012_1939,
      I3 => VGA_romAddr_mux0053_7_18_1998,
      LO => VGA_romAddr_mux0053_7_29_1999
    );
  VGA_bt_not0001483 : LUT4_L
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => VGA_bt_not000151_1924,
      I1 => VGA_N83,
      I2 => VGA_bt_not000184,
      I3 => N1331,
      LO => VGA_bt_not0001483_1923
    );
  VGA_bt_mux0000_1_140_SW0 : LUT3_L
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => VGA_bt_and0134,
      I1 => VGA_bt_and0137,
      I2 => VGA_N35,
      LO => N1335
    );
  UAL_hazard_detector_imp_stall150_SW0 : LUT4_D
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => UAL_hazard_detector_imp_stall120_1685,
      I1 => UAL_hazard_detector_imp_stall93_1689,
      I2 => UAL_hazard_detector_imp_stall26_1687,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_1_from_alu_and000026,
      LO => N1699,
      O => N1337
    );
  UAL_hazard_detector_imp_stall150 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      LO => N1700,
      O => bubble_to_id_alu_tmp
    );
  VGA_romAddr_and0000274_SW0 : LUT3_L
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => VGA_bt_or0010,
      I1 => VGA_bt_or0012_1939,
      I2 => VGA_bt_or0008,
      LO => N1044
    );
  write_back_data_from_alu_tmp_0_189_SW1 : LUT4_L
    generic map(
      INIT => X"89CD"
    )
    port map (
      I0 => ID_ALU_regs_imp_wb_src_out(2),
      I1 => ID_ALU_regs_imp_wb_src_out(0),
      I2 => ID_ALU_regs_imp_wb_data_from_reg_out(0),
      I3 => ID_ALU_regs_imp_immediate_out_0_Q,
      LO => N926
    );
  VGA_bt_cmp_eq000611 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => VGA_x(5),
      I1 => VGA_x(6),
      I2 => VGA_N37,
      I3 => VGA_N43,
      LO => N1701,
      O => VGA_N89
    );
  VGA_bt_not0001332_SW1 : LUT4_L
    generic map(
      INIT => X"FABA"
    )
    port map (
      I0 => VGA_bt_and0137,
      I1 => VGA_N84,
      I2 => VGA_bt_not0001107_1909,
      I3 => VGA_bt_not0001329_1920,
      LO => N858
    );
  ALU_imp_tmp_6_69 : LUT4_L
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand2_out(3),
      I1 => ID_ALU_regs_imp_operand2_out(2),
      I2 => ID_ALU_regs_imp_operand1_out(15),
      I3 => ALU_imp_Sh14,
      LO => ALU_imp_tmp_6_69_244
    );
  VGA_bt_and013731_SW0 : LUT4_L
    generic map(
      INIT => X"8999"
    )
    port map (
      I0 => VGA_x(2),
      I1 => VGA_x(3),
      I2 => VGA_x(0),
      I3 => VGA_x(1),
      LO => N1345
    );
  VGA_bt_cmp_le00151_SW1 : LUT4_L
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => VGA_x(6),
      I1 => VGA_x(5),
      I2 => VGA_x(3),
      I3 => VGA_x(4),
      LO => N1351
    );
  VGA_bt_mux0000_1_100_SW0 : LUT4_L
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => VGA_bt_mux0000_1_73_1907,
      I1 => VGA_bt_and0140,
      I2 => VGA_bt_and0134,
      I3 => VGA_romData_mux0003,
      LO => N1353
    );
  VGA_bt_and013430_SW0 : LUT4_L
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => VGA_x(5),
      I1 => VGA_x(1),
      I2 => VGA_x(2),
      I3 => VGA_x(3),
      LO => N1355
    );
  VGA_bt_cmp_eq0004 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => VGA_x(1),
      I1 => VGA_N87,
      I2 => VGA_x(2),
      I3 => N1357,
      LO => N1702,
      O => VGA_bt_cmp_eq0004_1858
    );
  VGA_bt_mux0000_1_213_SW0 : LUT4_L
    generic map(
      INIT => X"020A"
    )
    port map (
      I0 => VGA_bt_and0140,
      I1 => VGA_bt_cmp_ge0015,
      I2 => VGA_bt_and0138_1851,
      I3 => VGA_bt_cmp_le0015,
      LO => N1359
    );
  VGA_romAddr_mux0053_8_1_SW1 : LUT4_L
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => VGA_bt_cmp_ge0015,
      I1 => VGA_bt_and0138_1851,
      I2 => VGA_bt_cmp_le0015,
      I3 => VGA_bt_and0137,
      LO => N1361
    );
  VGA_bt_cmp_eq00072 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => VGA_N89,
      I1 => VGA_x(3),
      I2 => VGA_x(1),
      I3 => VGA_x(2),
      LO => N1703,
      O => VGA_bt_cmp_eq0007
    );
  write_back_data_from_alu_tmp_0_92 : LUT4_L
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(7),
      I1 => ID_ALU_regs_imp_op_code_out(2),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => N1381,
      LO => write_back_data_from_alu_tmp_0_92_3061
    );
  register_module_imp_decoder_imp_immediate_or0002 : LUT4_D
    generic map(
      INIT => X"F7C4"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(15),
      I2 => IF_ID_regs_imp_instruction_out(13),
      I3 => N1383,
      LO => N1704,
      O => register_module_imp_decoder_imp_immediate_or0002_2451
    );
  ID_ALU_regs_imp_op_code_out_mux0001_0_SW1 : LUT4_L
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(14),
      I1 => IF_ID_regs_imp_instruction_out(13),
      I2 => register_module_imp_N26,
      I3 => UAL_hazard_detector_imp_stall150_1686,
      LO => N1385
    );
  register_module_imp_registers_imp_read_data2_0_59 : LUT4_D
    generic map(
      INIT => X"FEF4"
    )
    port map (
      I0 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      I1 => N1387,
      I2 => register_module_imp_registers_imp_read_data2_0_24_2841,
      I3 => write_back_data_from_alu_tmp(0),
      LO => N1705,
      O => register_module_imp_read_data2_tmp(0)
    );
  ID_ALU_regs_imp_operand1_out_mux0001_0_1_SW0 : LUT3_L
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => is_hazard_1_to_id_tmp,
      I1 => register_module_imp_registers_imp_read_data1_15_46_2799,
      I2 => register_module_imp_registers_imp_read_data1_15_24_2796,
      LO => N1389
    );
  VGA_bt_not0001416_SW1 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => VGA_bt_or0008,
      I1 => VGA_bt_or0010,
      I2 => VGA_bt_or0012_1939,
      LO => N1706,
      O => N1393
    );
  VGA_bt_not0001416 : LUT4_L
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => VGA_bt_and0137,
      I1 => VGA_bt_cmp_eq0005_1859,
      I2 => VGA_N911,
      I3 => N1393,
      LO => VGA_bt_not0001416_1922
    );
  ALU_imp_tmp_0_12_SW0 : LUT4_L
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => ID_ALU_regs_imp_operand1_out(0),
      I1 => ID_ALU_regs_imp_op_code_out(2),
      I2 => ID_ALU_regs_imp_op_code_out(1),
      I3 => ID_ALU_regs_imp_op_code_out(3),
      LO => N1401
    );
  VGA_SF2621 : LUT4_D
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => VGA_bt_or0004,
      I1 => VGA_y(3),
      I2 => VGA_y(8),
      I3 => N1403,
      LO => N1707,
      O => VGA_N110
    );
  register_module_imp_decoder_imp_immediate_4_18 : LUT4_L
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(12),
      I1 => IF_ID_regs_imp_instruction_out(14),
      I2 => register_module_imp_N26,
      I3 => N1409,
      LO => register_module_imp_decoder_imp_immediate_4_18_2448
    );
  VGA_romAddr_mux0053_6_111_SW0 : LUT4_L
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => VGA_bt_and0139,
      I1 => VGA_bt_or0010,
      I2 => VGA_bt_or0008,
      I3 => VGA_bt_or0006,
      LO => N1321
    );
  VGA_romAddr_mux0053_8_SW0 : LUT4_L
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => VGA_bt_cmp_le0009,
      I1 => VGA_Madd_romAddr_add0002_Madd_cy(4),
      I2 => VGA_romAddr_mux0000(5),
      I3 => VGA_N10,
      LO => N1413
    );
  register_module_imp_controller_imp_operand2_src_or000014 : LUT4_D
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => IF_ID_regs_imp_instruction_out(15),
      I1 => N1417,
      I2 => IF_ID_regs_imp_instruction_out(13),
      I3 => IF_ID_regs_imp_instruction_out(12),
      LO => N1708,
      O => register_module_imp_controller_imp_operand2_src_or000014_2444
    );
  UAL_hazard_detector_imp_stall53_1 : LUT4_D
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => ID_ALU_regs_imp_write_back_reg_out(0),
      I1 => ID_ALU_regs_imp_write_back_reg_out(1),
      I2 => register_module_imp_decoder_imp_read_reg_1_1_39_2455,
      I3 => register_module_imp_decoder_imp_read_reg_1_0_20_2453,
      LO => N1709,
      O => UAL_hazard_detector_imp_stall53_1688
    );
  register_module_imp_decoder_imp_read_reg_1_1_39_2 : LUT4_D
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => N501,
      I1 => N676,
      I2 => N675,
      I3 => N382,
      LO => N1710,
      O => register_module_imp_decoder_imp_read_reg_1_1_391
    );
  UAL_hazard_detector_imp_stall150_1 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ID_ALU_regs_imp_mem_read_out_469,
      I1 => ID_ALU_regs_imp_reg_write_enable_out_568,
      I2 => N1337,
      LO => N1711,
      O => UAL_hazard_detector_imp_stall150_1686
    );
  register_module_imp_registers_imp_read_data2_0_4_1 : LUT4_D
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => read_reg_2_from_id(3),
      I1 => N1116,
      I2 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_alu,
      I3 => RAW_hazard_detector_and_forward_unit_imp_is_hazard_2_from_wb,
      LO => N1712,
      O => register_module_imp_registers_imp_read_data2_0_4_2842
    );
  instruction_fetch_module_imp_pc_in_mux0004_0_42_INV_0 : INV
    port map (
      I => ID_forward_IF_regs_imp_is_jump_out_668,
      O => instruction_fetch_module_imp_pc_in_mux0004_0_41_2191
    );
  fontMem : font
    port map (
      clka => clk_manual_BUFGP_2086,
      addra(10) => VGA_romAddr(10),
      addra(9) => VGA_romAddr(9),
      addra(8) => VGA_romAddr(8),
      addra(7) => VGA_romAddr(7),
      addra(6) => VGA_romAddr(6),
      addra(5) => VGA_romAddr(5),
      addra(4) => VGA_romAddr(4),
      addra(3) => VGA_romAddr(3),
      addra(2) => VGA_romAddr(2),
      addra(1) => VGA_romAddr(1),
      addra(0) => VGA_romAddr(0),
      douta(7) => fontData(7),
      douta(6) => fontData(6),
      douta(5) => fontData(5),
      douta(4) => fontData(4),
      douta(3) => fontData(3),
      douta(2) => fontData(2),
      douta(1) => fontData(1),
      douta(0) => fontData(0)
    );

end Structure;

-- synthesis translate_on
