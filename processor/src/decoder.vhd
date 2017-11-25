----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:24 11/22/2017 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
    Port ( instruction : in  STD_LOGIC_VECTOR (15 downto 0);
           read_reg_1 : out  STD_LOGIC_VECTOR (3 downto 0);
           read_reg_2 : out  STD_LOGIC_VECTOR (3 downto 0);
           immediate : out  STD_LOGIC_VECTOR (15 downto 0);
           write_back_reg : out  STD_LOGIC_VECTOR (3 downto 0));
end decoder;

architecture Behavioral of decoder is

begin

	-- read_reg_1
	process (instruction)
	begin
		case instruction(15 downto 11) is
			when iaddiu | iaddiu3 | iaddu | iand | ibeqz | ibnez | ilw | isw | isw_sp =>
				read_reg_1 <= '0' & instruction(10 downto 8);
			when imtih =>
				case instruction(7 downto 0) is
					when "00000001" => 
						read_reg_1 <= '0' & instruction(10 downto 8);
					when others => 
						read_reg_1 <= "1000";
				end case;
			when imtsp => 
				case instruction(10 downto 8) is 
					when "100" => 
						read_reg_1 <= '0' & instruction(7 downto 5);
					when "001" | "000" => 
						read_reg_1 <= "1010";
					when "010" =>
						read_reg_1 <= "1001";
					when others => 
						read_reg_1 <= "1011";
				end case;
			when others => 
				read_reg_1 <= "1011";
		end case;
	end process;

	-- read_reg_2
	read_reg_2 <= '0' & instruction(7 downto 5);

	-- immediate
	process (instruction) 
	begin 
		case instruction(15 downto 11) is
			-- 10-bit
			when ib => 
				immediate <= instruction(10) & instruction(10) & instruction(10) & instruction(10) & instruction(10) & instruction(10 downto 0);
			-- 8-bit 
			when iaddsp | iaddiu | iaddsp3 | ibeqz | ibnez | ilw_sp | isw_sp => 
				immediate <= instruction(7) & instruction(7) & instruction(7) & instruction(7) & instruction(7) & instruction(7) & instruction(7) & instruction(7) & instruction(7 downto 0);
			when ili => 
				immediate <= "00000000" & instruction(7 downto 0);
			-- 5-bit
			when ilw | isw =>
				immediate <= instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4 downto 0);
			-- 4-bit
			when iaddiu3 => 
				immediate <= instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3) & instruction(3 downto 0);
			-- 3-bit
			when others =>
				immediate <= instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4) & instruction(4 downto 2);
		end case;
	end process;

	-- write_back_reg
	process (instruction)
	begin 
		case instruction(15 downto 11) is
			-- t
			when icmp =>
				case instruction(4 downto 0) is
					-- cmp
					when "01010" => 
						write_back_reg <= "1010";
					-- and, or
					when "01101" | "01100" | "00000" => 
						write_back_reg <= '0' & instruction(10 downto 8);
					-- sllv
					when others => 
						write_back_reg <= '0' & instruction(7 downto 5);
				end case;
			-- ra
			-- ih
			when imtih =>
				case instruction(0) is
					-- mtih
					when '1' => 
						write_back_reg <= "1000";
					-- mfih
					when others => 
						write_back_reg <= '0' & instruction(10 downto 8);
				end case;
			-- sp
			when iaddsp =>
				-- addsp, mtsp
				write_back_reg <= "1011";
			-- 4-2, addu, subu
			when iaddu =>
				write_back_reg <= '0' & instruction(4 downto 2);
			-- 7-5, addiu3, lw
			when iaddiu3 | ilw =>
				write_back_reg <= '0' & instruction(7 downto 5);
			-- 10-8
			when others => 
				write_back_reg <= '0' & instruction(10 downto 8);
		end case;
	end process;

end Behavioral;

