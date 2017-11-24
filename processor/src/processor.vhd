----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:50 11/22/2017 
-- Design Name: 
-- Module Name:    processor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.constants.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor is
    Port ( 
	clk : in  STD_LOGIC; -- 50 MHz
	rst : in  STD_LOGIC;
	clk_serial_port : in  STD_LOGIC; -- 11.0592 MHz
	clk_manual : in  STD_LOGIC;
	switch : in  STD_LOGIC_VECTOR (15 downto 0);
	led : out  STD_LOGIC_VECTOR (15 downto 0);
	
	-- ram1
	ram1_addr : out  STD_LOGIC_VECTOR (17 downto 0);
	ram1_data : inout  STD_LOGIC_VECTOR (15 downto 0);
	ram1_oe : out  STD_LOGIC;
	ram1_we : out  STD_LOGIC;
	ram1_en : out  STD_LOGIC;
	
	-- ram2
	ram2_addr : out  STD_LOGIC_VECTOR (17 downto 0);
	ram2_data : inout  STD_LOGIC_VECTOR (15 downto 0);
	ram2_oe : out  STD_LOGIC;
	ram2_we : out  STD_LOGIC;
	ram2_en : out  STD_LOGIC;
	
	dyp0 : out  STD_LOGIC_VECTOR (6 downto 0);
	dyp1 : out  STD_LOGIC_VECTOR (6 downto 0);
	
	-- serial port
	data_ready : in  STD_LOGIC;
	rdn : out  STD_LOGIC;
	tbre : in  STD_LOGIC;
	tsre : in  STD_LOGIC;
	wrn : out  STD_LOGIC;
	
	-- VGA monitor
	rgb: out STD_LOGIC_VECTOR(8 downto 0);
	hs, vs: out STD_LOGIC;
	
	-- PS2 keyboard
	ps2clk, ps2data: in STD_LOGIC;
	
	-- flash
	flash_byte, flash_vpen, flash_ce, flash_oe, flash_we, flash_rp: out STD_LOGIC;
	flash_addr: out STD_LOGIC_VECTOR(22 downto 0);
	flash_data: inout STD_LOGIC_VECTOR(15 downto 0)
	
	);
end processor;

architecture Behavioral of processor is

	component instruction_fetch_module is 
		Port (
			-- ram2
			ram2_addr_out : out  STD_LOGIC_VECTOR (17 downto 0);
			ram2_data_out : inout  STD_LOGIC_VECTOR (15 downto 0);
			ram2_oe_out : out  STD_LOGIC;
			ram2_we_out : out  STD_LOGIC;
			ram2_en_out : out  STD_LOGIC;
		
			is_structural_hazard_in, is_ual_hazard_in: in STD_LOGIC;
			ram2_we_in, ram2_oe_in: in STD_LOGIC;
		
			branch_type_in, is_branch_in, is_jump_in: in STD_LOGIC;
			branch_relative_reg_data_in, branch_target_in, jump_target_in: in STD_LOGIC_VECTOR(15 downto 0);
		
			instruction_out, pc_out: out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	signal ram2_we_to_if, ram2_oe_to_if, is_structural_hazard_to_if_tmp, is_ual_hazard_to_if_tmp: STD_LOGIC;
	signal branch_type_tmp, is_branch_tmp, is_jump_tmp: STD_LOGIC;
	signal branch_relative_reg_data_tmp, branch_target_tmp, jump_target_tmp, instruction_tmp, pc_from_if_tmp: STD_LOGIC_VECTOR(15 downto 0);

	component register_module is
	    Port ( instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           pc_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_reg_in : in  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable : in  STD_LOGIC;
	           branch_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           jump_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
	    	   is_branch_out, is_jump_out : out  STD_LOGIC;
	           branch_type_out : out  STD_LOGIC;
	           branch_relative_reg_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           is_hazard_1 : in  STD_LOGIC;
	           is_hazard_2 : in  STD_LOGIC;
	           forward_data_1 : in  STD_LOGIC_VECTOR (15 downto 0);
	           forward_data_2 : in  STD_LOGIC_VECTOR (15 downto 0);
	           pc_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           wb_src_out : out  STD_LOGIC_VECTOR (2 downto 0);
	           mem_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           wb_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           immediate_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_reg_out : out  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable_out : out  STD_LOGIC;
	           op_code_out : out  STD_LOGIC_VECTOR (3 downto 0);
	           operand1_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           operand2_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           cin_out : out  STD_LOGIC;
	           mem_enable_out : out  STD_LOGIC;
	           mem_read_out : out  STD_LOGIC;
	           mem_write_out : out  STD_LOGIC;
		   clk, rst: in STD_LOGIC);
	end component;

	signal write_back_data_to_wb_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal write_back_reg_to_wb_tmp: STD_LOGIC_VECTOR(3 downto 0);
	signal write_back_enable_to_wb_tmp: STD_LOGIC;
	signal branch_target_from_id_tmp, jump_target_from_id_tmp, branch_relative_reg_data_from_id_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal is_branch_from_id_tmp, is_jump_from_id_tmp, branch_type_from_id_tmp: STD_LOGIC;
	signal is_hazard_1_tmp, is_hazard_2_tmp: STD_LOGIC;
	signal forward_data_1_tmp, forward_data_2_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal pc_from_id_tmp, mem_data_from_reg_from_id_tmp, wb_data_from_reg_from_id_tmp, immediate_from_id_tmp, operand1_from_id_tmp, operand2_from_id_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal wb_src_from_id_tmp: STD_LOGIC_VECTOR(2 downto 0);
	signal write_back_reg_from_id_tmp, op_code_from_id_tmp: STD_LOGIC_VECTOR(3 downto 0);
	signal reg_wrrite_enable_from_id_tmp, cin_from_id_tmp, mem_enable_from_id_tmp, mem_read_from_id_tmp, mem_write_from_id_tmp: STD_LOGIC;

	component IF_ID_regs is
	    Port ( bubble : in  STD_LOGIC;
	           stall : in  STD_LOGIC;
	           instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           pc_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           instruction_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           pc_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           clk : in  STD_LOGIC;
	           rst : in  STD_LOGIC);
	end component;

	signal bubble_to_
	
begin

	IF_ID_regs_imp: IF_ID_regs 
	port map(
	bubble => 
	);


	register_module_imp: register_module 
	port map(
		instruction_in => instruction_tmp,
		pc_in => pc_from_if_tmp,
		write_back_data_in => write_back_data_to_wb_tmp,
		write_back_reg_in => write_back_reg_to_wb_tmp,
		reg_write_enable => write_back_enable_to_wb_tmp,
		branch_target_out => branch_target_from_id_tmp,
		jump_target_out => jump_target_from_id_tmp,
		is_branch_out => is_branch_from_id_tmp,
		is_jump_out => is_jump_from_id_tmp,
		branch_type_out => branch_type_from_id_tmp,
		branch_relative_reg_data_out => branch_relative_reg_data_from_id_tmp,
		is_hazard_1 => is_hazard_1_tmp,
		is_hazard_2 => is_hazard_2_tmp,
		forward_data_1 => forward_data_1_tmp,
		forward_data_2 => forward_data_2_tmp,
		pc_out => pc_from_id_tmp,
		wb_src_out => wb_src_from_id_tmp,
		mem_data_from_reg_out => mem_data_from_reg_from_id_tmp,
		wb_data_from_reg_out => wb_data_from_reg_from_id_tmp,
		immediate_out => immediate_from_id_tmp,
		write_back_reg_out => write_back_reg_from_id_tmp,
		reg_write_enable_out => reg_wrrite_enable_from_id_tmp,
		op_code_out => op_code_from_id_tmp,
		operand1_out => operand1_from_id_tmp,
		operand2_out => operand2_from_id_tmp,
		cin_out => cin_from_id_tmp,
		mem_enable_out => mem_enable_from_id_tmp,
		mem_read_out => mem_read_from_id_tmp,
		mem_write_out => mem_write_from_id_tmp,
		clk => clk,
		rst => rst
	);

	instruction_fetch_module_imp: instruction_fetch_module 
	port map(
		ram2_addr_out => ram2_addr,
		ram2_data_out => ram2_data,
		ram2_oe_out => ram2_oe,
		ram2_we_out => ram2_we,
		ram2_en_out => ram2_en,
		is_structural_hazard_in => is_structural_hazard_to_if_tmp,
		is_ual_hazard_in => is_ual_hazard_to_if_tmp,
		ram2_we_in => ram2_we_to_if,
		ram2_oe_in => ram2_oe_to_if,
		branch_type_in => branch_type_tmp,
		is_branch_in => is_branch_tmp,
		is_jump_in => is_jump_tmp,
		branch_relative_reg_data_in => branch_relative_reg_data_tmp,
		branch_target_in => branch_target_tmp,
		jump_target_in => jump_target_tmp,
		instruction_out => instruction_tmp,
		pc_out => pc_from_if_tmp
	);
	
end Behavioral;

