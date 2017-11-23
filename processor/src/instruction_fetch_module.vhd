----------------------------------------------------------------------------------
-- Company: 
-- Engineer:  Amadeus Chan
-- 
-- Create Date:    22:02:24 11/23/2017 
-- Design Name: 
-- Module Name:    instruction_fetch_module - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_fetch_module is
end instruction_fetch_module;

architecture Behavioral of instruction_fetch_module is

	Port (
		-- ram2
		ram2_addr_out : out  STD_LOGIC_VECTOR (17 downto 0);
		ram2_data_out : inout  STD_LOGIC_VECTOR (15 downto 0);
		ram2_oe_out : out  STD_LOGIC;
		ram2_we_out : out  STD_LOGIC;
		ram2_en_out : out  STD_LOGIC;
	
		is_structural_hazard_in, is_ual_hazard_in: in STD_LOGIC;
		ram2_we_in, ram2_oe_in: in STD_LOGIC;
	
		branch_type_in, is_branch_in, is_junp_in: in STD_LOGIC;
		branch_relative_reg_data_in, branch_target_in, jump_target_in: in STD_LOGIC_VECTOR(15 downto 0);
	
		instruction_out, pc_out: out STD_LOGIC_VECTOR(15 downto 0);
	);

begin


end Behavioral;

