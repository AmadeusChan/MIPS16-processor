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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.constants.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_fetch_module is

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
	
		instruction_out: out STD_LOGIC_VECTOR(15 downto 0);
		pc_out: buffer STD_LOGIC_VECTOR(15 downto 0);
		clk, rst: in STD_LOGIC
	);

end instruction_fetch_module;

architecture Behavioral of instruction_fetch_module is

	signal pc_in: STD_LOGIC_VECTOR(15 downto 0);
	signal instruction_in: STD_LOGIC_VECTOR(15 downto 0);

begin

	ram2_en_out <= '1';
	
	process(pc_out, is_structural_hazard_in, is_ual_hazard_in)
	begin
		if (is_structural_hazard_in = '1' or is_ual_hazard_in = '1') then
			pc_in <= pc_out;
		else
			pc_in <= pc_out + '1';
		end if;
	end process;	
	
	process(pc_in, is_structural_hazard_in, is_ual_hazard_in, is_jump_in, is_branch_in, branch_type_in, branch_relative_reg_data_in)
	begin
		if (is_structural_hazard_in = '1' or is_ual_hazard_in = '1') then
			instruction_in <= pc_in;
			ram2_we_out <= '0';
			ram2_oe_out <= '0';
		elsif (is_jump_in = '1') then
			instruction_in <= jump_target_in;
			ram2_we_out <= '0';
			ram2_oe_out <= '0';
		elsif (is_branch_in = '1') then
			case branch_type_in is
				when equal_branch =>
					if (branch_relative_reg_data_in = x"0000") then
						instruction_in <= branch_target_in;
						ram2_we_out <= '0';
						ram2_oe_out <= '0';
					else
						instruction_in <= pc_in;
						ram2_oe_out <= ram2_oe_in;
						ram2_we_out <= ram2_we_in;
					end if;
				when not_equal_branch =>
					if (branch_relative_reg_data_in = x"0001") then
						instruction_in <= branch_target_in;
						ram2_we_out <= '0';
						ram2_oe_out <= '0';
					else
						instruction_in <= pc_in;
						ram2_oe_out <= ram2_oe_in;
						ram2_we_out <= ram2_we_in;
					end if;
				when others =>
					instruction_in <= pc_in;
					ram2_oe_out <= ram2_oe_in;
					ram2_we_out <= ram2_we_in;
			end case;
		else
			instruction_in <= pc_in;
			ram2_oe_out <= ram2_oe_in;
			ram2_we_out <= ram2_we_in;
		end if;
	end process;
	
	process(clk, rst)
	begin
		if (rst = '0') then
			pc_out <= (others => '0');
			instruction_out <= (others => '0');
		elsif (clk'event and clk = '1') then
			pc_out <= pc_in;
			instruction_out <= instruction_in;
		end if;
	end process;

end Behavioral;

