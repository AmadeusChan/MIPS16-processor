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
		
			instruction_out, pc_out: out STD_LOGIC_VECTOR(15 downto 0);
		);
	end component;

	signal ram2_we_to_if, ram2_oe_to_if, is_structural_hazard_to_if_tmp, is_ual_hazard_to_if_tmp: STD_LOGIC;
	signal branch_type_tmp, is_branch_tmp, is_jump_tmp: STD_LOGIC;
	signal branch_relative_reg_data_tmp, branch_target_tmp, jump_target_tmp, instruction_tmp, pc_from_if_tmp: in STD_LOGIC_VECTOR(15 downto 0);

begin

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

