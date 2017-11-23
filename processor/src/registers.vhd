----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Amadeus Chan
-- 
-- Create Date:    13:54:50 11/22/2017 
-- Design Name: 
-- Module Name:    registers - Behavioral 
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

entity registers is
    Port ( read_reg1 : in  STD_LOGIC_VECTOR (3 downto 0);
           read_reg2 : in  STD_LOGIC_VECTOR (3 downto 0);
           write_reg : in  STD_LOGIC_VECTOR (3 downto 0);
           write_data : in  STD_LOGIC_VECTOR (15 downto 0);
           write_enable : in  STD_LOGIC;
           forward_data1 : in  STD_LOGIC_VECTOR (15 downto 0);
           forward_data2 : in  STD_LOGIC_VECTOR (0 downto 0);
           is_hazard_1 : in  STD_LOGIC;
           is_hazard_2 : in  STD_LOGIC;
           read_data1 : out  STD_LOGIC_VECTOR (15 downto 0);
           read_data2 : out  STD_LOGIC_VECTOR (15 downto 0);
	   clk, rst: in STD_LOGIC
	);
end registers;

architecture Behavioral of registers is

	signal regs: array(7 downto 0) of STD_LOGIC_VECTOR(15 downto 0);
	signal hi, ra, t, sp: STD_LOGIC;
	-- signal reg_data1, reg_data2: STD_LOGIC_VECTOR(15 downto 0);

begin

	process (clk, rst) 
	begin
		if rst = '0' then
			regs(0) <= "000000000000000";
			regs(1) <= "000000000000000";
			regs(2) <= "000000000000000";
			regs(3) <= "000000000000000";
			regs(4) <= "000000000000000";
			regs(5) <= "000000000000000";
			regs(6) <= "000000000000000";
			regs(7) <= "000000000000000";
			hi <= "000000000000000";
			ra <= "000000000000000";
			t <= "000000000000000";
			sp <= "000000000000000";
		elsif clk'event and clk = '0' then
			if write_enable = enable then
				case write_reg(3) is 
					when '0' => 
						regs(conv_integer(unsigned(write_reg))) <= write_data;
					when '1' => 
						case write_reg(2 downto 0) is
							when "000" =>
								hi <= write_data;
							when "001" => 
								ra <= write_data;
							when "010" => 
								t <= write_data;
							when "011" => 
								sp <= write_data;
						end case;
				end case;
			else 
		end if;
	end process;

	process (read_reg1, is_hazard_1) 
	begin
		if is_hazard_1 = '1' then
			read_data1 <= forward_data1;
		else 
			case read_reg1(3) is
				when '0' =>
					read_data1 <= regs(conv_integer(unsigned(read_reg1)));
				when others => 
					case read_reg1(2 downto 0) is
						when "000" => 
							read_data1 <= hi;
						when "001" =>
							read_data1 <= ra;
						when "010" => 
							read_data1 <= t;
						when others => 
							read_data1 <= sp;
					end case;
			end case;
		end if;
	end process;

	process (read_reg2, is_hazard_2) 
	begin
		if is_hazard_2 = '1' then
			read_data2 <= forward_data2;
		else 
			case read_reg2(3) is
				when '0' =>
					read_data2 <= regs(conv_integer(unsigned(read_reg2)));
				when others => 
					case read_reg2(2 downto 0) is
						when "000" => 
							read_data2 <= hi;
						when "001" =>
							read_data2 <= ra;
						when "010" => 
							read_data2 <= t;
						when others => 
							read_data2 <= sp;
					end case;
			end case;
		end if;
	end process;


end Behavioral;

