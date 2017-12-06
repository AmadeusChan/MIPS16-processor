----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:32 12/06/2014 
-- Design Name: 
-- Module Name:    keyboard_drv - Behavioral 
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

entity keyboard_drv is
port(
	clk, rst : in std_logic;
	ps2clk, ps2data : in std_logic;
	key_code : out std_logic_vector(7 downto 0)
);
end keyboard_drv;

architecture Behavioral of keyboard_drv is

signal kclk : std_logic; -- 去毛刺键盘时钟
signal kdata : std_logic; -- 去毛刺键盘数据
signal last_kclk : std_logic;
signal clk1, clk2, check : std_logic; -- 临时时钟，校验位
signal stat : std_logic_vector(3 downto 0);
signal data : std_logic_vector(7 downto 0);
signal paral_data : std_logic_vector(7 downto 0);
signal count : integer range 0 to 1000000;
begin
	clk1 <= ps2clk when rising_edge(clk);
	clk2 <= clk1 when rising_edge(clk);
	kclk <= (not clk1) and clk2;
	kdata <= ps2data when rising_edge(clk);
	key_code <= paral_data;
	process(clk)
	begin
		if rst = '0' then
			stat <= "0000";
			check <= '1';
			paral_data <= (others => '0');
			last_kclk <= kclk;
			count <= 0;
		elsif clk'event and clk = '1' then
			last_kclk <= kclk;
			if count > 0 then
				if count = 1000000 then
					stat <= "0000";
					check <= '1';
					-- paral_data <= (others => '0');
					count <= 0;
				else
					count <= count + 1;
				end if;
			end if;
			
			if last_kclk = '0' and kclk = '1' then
				case stat is
					when "0000" => --数据状态
						if kdata = '0' then
							stat <= "0010";
							check <= '1';
							-- paral_data <= (others => '0');
							count <= 1;
						else
							stat <= "0000";
						end if;
					when "0010" => --数据状态
						if kdata = '1' then
							check <= not check;
						end if;
						data(0) <= kdata;
						stat <= "0011";
					when "0011" => --数据状态
						if kdata = '1' then
							check <= not check;
						end if;
						data(1) <= kdata;
						stat <= "0100";
					when "0100" => --数据状态
						if kdata = '1' then
							check <= not check;
						end if;
						data(2) <= kdata;
						stat <= "0101";
					when "0101" => --数据状态
						if kdata = '1' then
							check <= not check;
						end if;
						data(3) <= kdata;
						stat <= "0110";
					when "0110" => --数据状态
						if kdata = '1' then
							check <= not check;
						end if;
						data(4) <= kdata;
						stat <= "0111";
					when "0111" => --数据状态
						if kdata = '1' then
							check <= not check;
						end if;
						data(5) <= kdata;
						stat <= "1000";
					when "1000" => --数据状态
						if kdata = '1' then
							check <= not check;
						end if;
						data(6) <= kdata;
						stat <= "1001";
					when "1001" => --数据状态
						if kdata = '1' then
							check <= not check;
						end if;
						data(7) <= kdata;
						stat <= "1010";
					when "1010" => --校验状态
						if check = kdata then
							stat <= "1011";
						else
							stat <= "0000";
							count <= 0;
						end if;
					when "1011" => -- 结束状态
						if kdata = '1' then
							paral_data <= data;
							count <= 0;
						end if;
						stat <= "0000";
					when others => 
						stat <= "0000";
				end case;
			end if;
		end if;
	end process;
end Behavioral;

