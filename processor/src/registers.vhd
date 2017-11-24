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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

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
           forward_data2 : in  STD_LOGIC_VECTOR (15 downto 0);
           is_hazard_1 : in  STD_LOGIC;
           is_hazard_2 : in  STD_LOGIC;
           read_data1 : out  STD_LOGIC_VECTOR (15 downto 0);
           read_data2 : out  STD_LOGIC_VECTOR (15 downto 0);
	   clk, rst: in STD_LOGIC
	);
end registers;

architecture Behavioral of registers is

	type regs_type is array(7 downto 0) of std_logic_vector(15 downto 0);

	signal regs: regs_type;
	signal ih, ra, t, sp: STD_LOGIC_VECTOR(15 downto 0);
	-- signal reg_data1, reg_data2: STD_LOGIC_VECTOR(15 downto 0);

begin

	process (clk, rst) 
	begin
		if rst = '0' then
			regs(0) <= (others => '0');
			regs(1) <= (others => '0');
			regs(2) <= (others => '0');
			regs(3) <= (others => '0');
			regs(4) <= (others => '0');
			regs(5) <= (others => '0');
			regs(6) <= (others => '0');
			regs(7) <= (others => '0');
			ih <= (others => '0');
			ra <= (others => '0');
			t <= (others => '0');
			sp <= (others => '0');
		elsif clk'event and clk = '0' then
			if write_enable = enable then
				case write_reg(3) is 
					when '0' => 
						regs(conv_integer(unsigned(write_reg))) <= write_data;
					when '1' => 
						case write_reg(2 downto 0) is
							when "000" =>
								ih <= write_data;
							when "001" => 
								ra <= write_data;
							when "010" => 
								t <= write_data;
							when "011" => 
								sp <= write_data;
							when others => 
								null;
						end case;
					when others =>
						null;
				end case;
			end if;
		end if;
	end process;

	process (read_reg1, is_hazard_1, regs, ih, ra, t, sp) 
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
							read_data1 <= ih;
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

	process (read_reg2, is_hazard_2, regs, ih, ra, t, sp) 
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
							read_data2 <= ih;
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

