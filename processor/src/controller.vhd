----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:18:32 11/21/2017 
-- Design Name: 
-- Module Name:    controller - Behavioral 
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

entity controller is
    Port ( instruction : in  STD_LOGIC_VECTOR (15 downto 0);
           branch_type : out  STD_LOGIC;
           is_branch : out  STD_LOGIC;
           is_jump : out  STD_LOGIC;
           operand1_src : out  STD_LOGIC;
           operand2_src : out  STD_LOGIC_VECTOR (1 downto 0);
           op_code : out  STD_LOGIC_VECTOR (3 downto 0);
           reg_write_enable : out  STD_LOGIC;
           load_from_mem : out  STD_LOGIC;
           out_mem_write : out  STD_LOGIC;
           out_mem_read : out  STD_LOGIC;
           mem_enable : out  STD_LOGIC;
           wb_src : out  STD_LOGIC_VECTOR (2 downto 0);
           wb_data_from_reg_src : out  STD_LOGIC;
           mem_data_from_reg_src : out  STD_LOGIC);
end controller;

architecture Behavioral of controller is
	
	signal  mem_write : STD_LOGIC;
	signal mem_read : STD_LOGIC;
	
begin

	-- branch_type
	process (instruction)
	begin
		case instruction(15 downto 11) is
			when ibeqz => branch_type <= equal_branch;
			when ibteqz => 
				if instruction(8) = '0' then
					branch_type <= equal_branch;
				else 
					branch_type <= not_equal_branch;
				end if;
			when others => branch_type <= not_equal_branch;
		end case;
	end process;

	-- is branch
	process (instruction)
	begin
		case instruction(15 downto 11) is
			when ibeqz | ibnez => 
				is_branch <= '1';
			when ibteqz => 
				case instruction(10 downto 8) is
					when "000" | "001" =>
						is_branch <= '1';
					when others =>
						is_branch <= '0';
				end case;
			when others =>
				is_branch <= '0';
		end case;
	end process;

	--- operand1_src
	process (instruction)
	begin
		case instruction(15 downto 11) is
			when iaddiu | iaddiu3 | iaddsp3 | iaddsp | iaddu | ilw | ilw_sp | isw | isw_sp =>
				operand1_src <= from_reg_1;
			when iand =>
				case instruction(4 downto 0) is
					when "01100" | "01010" | "01101" =>
						operand1_src <= from_reg_1;
					when others => 
						operand1_src <= from_reg_2;
				end case;
			when others =>
				operand1_src <= from_reg_2;
		end case;
	end process;

	--- operand2_src
	process (instruction)
	begin
		case instruction(15 downto 11) is
			when isllv =>
				case instruction(4 downto 0) is
					when "00100" => operand2_src <= operand2_from_reg_1;
					when others => operand2_src <= operand2_from_reg_2;
				end case;
			when iaddiu | iaddiu3 | iaddsp | iaddsp3 | ilw | ilw_sp | isll | isw =>
				operand2_src <= operand2_from_immediate;
			when others => 
				operand2_src <= operand2_from_reg_2;
		end case;
	end process;

	-- op code
	process (instruction)
	begin
		
	end process;

	-- reg_write_enable
	process (instruction)
	begin
		case instruction(15 downto 11) is
			when iaddiu | iaddiu3 | iaddsp3 | iaddu | ili | ilw | ilw_sp | imfih | imove |  isll  =>
				reg_write_enable <= enable;
			when ijr => 
				case instruction(7 downto 0) is
					when "00000000" => 
						reg_write_enable <= disable;
					when others =>
						reg_write_enable <= enable;
				end case;
			when iaddsp =>
				case instruction(10 downto 8) is
					when "011" | "100" => 
						reg_write_enable <= enable;
					when others => 
						reg_write_enable <= disable;
				end case;
			when others =>
				reg_write_enable <= disable;
		end case;
	end process;

	-- mem_write
	process (instruction)
	begin
		case instruction(15 downto 11) is 
			when isw_rs =>
				case instruction(10 downto 8) is 
					when "010" => 
						mem_write <= enable;
					when others => 
						mem_write <= disable;
				end case;
			when isw_sp | isw =>
				mem_write <= enable;
			when others => 
				mem_write <= disable;
		end case;
	end process;

	-- mem_read
	process (instruction)
	begin
		case instruction(15 downto 11) is 
			when ilw | ilw_sp => 
				mem_read <= enable;
			when others => 
				mem_read <= disable;
		end case;
	end process;

	-- load_from_mem
	process (mem_read)
	begin
		load_from_mem <= mem_read;
	end process;

	-- mem_enable
	process (mem_read, mem_write)
	begin
		mem_enable <= mem_read or mem_write;
	end process;

	-- wb_src
	process (instruction)
	begin
		case instruction(15 downto 11) is
			when imfpc =>
				case instruction(4 downto 0) is
					when "01010" => 
						wb_src <= wb_from_alu_zero;
					when "00000" => 
						wb_src <= wb_from_pc; 
					when others => 
						wb_src <= wb_from_alu_result;
				end case;
			when ili => 
				wb_src <= wb_from_immediate;
			when imfih | imove =>
				wb_src <= wb_from_reg;
			when imtsp =>
				case instruction(10 downto 8) is
					when "100" =>
						wb_src <= wb_from_reg;
					when others =>
						wb_src <= wb_from_alu_result;
				end case;
			when others => 
				wb_src <= wb_from_alu_result;
		end case;
	end process;

	-- wb_data_from_reg_src
	process (instruction)
	begin
		wb_data_from_reg_src <= from_reg_1;
	end process;

	-- mem_data_from_reg_src
	process (instruction)
	begin
		mem_data_from_reg_src <= from_reg_1;
	end process;
end Behavioral;

