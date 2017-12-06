----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    10:22:10 12/01/2017
-- Design Name:
-- Module Name:    VGA - Behavioral
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

-- TODO : Use IEEE.NUMERIC_STD instead of non-standard package
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA is
	Port (Reset : in STD_LOGIC;
			Clock50 : in STD_LOGIC; -- 50MHz Clock
			Hs, Vs : out STD_LOGIC;
			R, G, B : out STD_LOGIC_VECTOR(2 downto 0);
			PixelX : out STD_LOGIC_VECTOR(9 downto 0);
			PixelY : out STD_LOGIC_VECTOR(8 downto 0);
			Pixel : in STD_LOGIC);
end VGA;

architecture Behavioral of VGA is

	signal Clock : STD_LOGIC; -- 25MHz Clock
	signal r1, g1, b1 : STD_LOGIC_VECTOR(2 downto 0);
	signal hs1, vs1 : STD_LOGIC;
	signal vector_x : STD_LOGIC_VECTOR(9 downto 0);
	signal vector_y : STD_LOGIC_VECTOR(8 downto 0);

begin

	PixelX <= vector_x;
	PixelY <= vector_y;

	FrequencyDivider : process (Clock50)
	begin
		if (Reset = '0') then
			Clock <= '0';
		elsif (RISING_EDGE(Clock50)) then
			Clock <= not Clock;
		end if;
	end process FrequencyDivider;

	MoveVectorX : process (Reset, Clock)
	begin
		if (Reset = '0') then
			vector_x <= (others => '0');
		elsif (RISING_EDGE(Clock)) then
			if vector_x = 799 then
				vector_x <= (others => '0');
			else
				vector_x <= vector_x + 1;
			end if;
		end if;
	end process MoveVectorX;

	MoveVectorY : process (Reset, Clock)
	begin
		if (Reset = '0') then
			vector_y <= (others => '0');
		elsif (RISING_EDGE(Clock)) then
			if vector_x = 799 then
				if vector_y = 524 then
					vector_y <= (others => '0');
				else
					vector_y <= vector_y + 1;
				end if;
			end if;
		end if;
	end process MoveVectorY;

	HorizontalSync : process (Reset, Clock)
	begin
		if (Reset = '0') then
			hs1 <= '1';
		elsif (RISING_EDGE(Clock)) then
			if (vector_x >= 656 and vector_x < 752) then
				hs1 <= '0';
			else
				hs1 <= '1';
			end if;
		end if;
	end process HorizontalSync;

	VerticalSync : process (Reset, Clock)
	begin
		if (Reset = '0') then
			vs1 <= '1';
		elsif (RISING_EDGE(Clock)) then
			if (vector_y >= 490 and vector_y < 492) then
				vs1 <= '0';
			else
				vs1 <= '1';
			end if;
		end if;
	end process VerticalSync;

	SetHorizontalSync : process (Reset, Clock)
	begin
		if (Reset = '0') then
			Hs <= '0';
		elsif (RISING_EDGE(Clock)) then
			Hs <= hs1;
		end if;
	end process SetHorizontalSync;

	SetVerticalSync : process (Reset, Clock)
	begin
		if (Reset = '0') then
			Vs <= '0';
		elsif (RISING_EDGE(Clock)) then
			Vs <= vs1;
		end if;
	end process SetVerticalSync;

	ColorGenerator : process (Reset, Clock, vector_x, vector_y)
	begin
		if (Reset = '0') then
			r1 <= (others => '0');
			g1 <= (others => '0');
			b1 <= (others => '0');
		elsif (RISING_EDGE(Clock)) then
			if vector_x > 639 or vector_y > 479 then
				r1 <= (others => '0');
				g1 <= (others => '0');
				b1 <= (others => '0');
			else
				r1 <= (others => Pixel);
				g1 <= (others => Pixel);
				b1 <= (others => Pixel);
			end if;
		end if;
	end process ColorGenerator;

	UpdateRGB : process (hs1, vs1, r1, g1, b1)
	begin
		if (hs1 = '1' and vs1 = '1') then
			R <= r1;
			G <= g1;
			B <= b1;
		else
			R <= (others => '0');
			G <= (others => '0');
			B <= (others => '0');
		end if;
	end process UpdateRGB;

end Behavioral;
