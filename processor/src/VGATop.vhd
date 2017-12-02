----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    13:53:20 11/22/2017
-- Design Name:
-- Module Name:    VGATop - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGATop is
	Port (Reset : in STD_LOGIC;
			Clock : in STD_LOGIC;
			WriteEN : in STD_LOGIC;
			WriteAddress : in STD_LOGIC_VECTOR(11 downto 0);
			WriteData : in STD_LOGIC_VECTOR(7 downto 0);
			Hs, Vs : out STD_LOGIC;
			R, G, B : out STD_LOGIC_VECTOR(2 downto 0));
end VGATop;

architecture Behavioral of VGATop is

	component VGA is
		Port (Reset : in STD_LOGIC;
				Clock50 : in STD_LOGIC;
				Hs, Vs : out STD_LOGIC;
				R, G, B : out STD_LOGIC_VECTOR(2 downto 0);
				PixelX : out STD_LOGIC_VECTOR(9 downto 0);
				PixelY : out STD_LOGIC_VECTOR(8 downto 0);
				Pixel : in STD_LOGIC);
	end component;

	signal PixelX : STD_LOGIC_VECTOR(9 downto 0);
	signal PixelY : STD_LOGIC_VECTOR(8 downto 0);
	signal Pixel : STD_LOGIC;

	component char_mem is
		Port (clk: in STD_LOGIC;
				char_read_addr : in STD_LOGIC_VECTOR(11 downto 0);
				char_write_addr: in STD_LOGIC_VECTOR(11 downto 0);
				char_we : in STD_LOGIC;
				char_write_value : in STD_LOGIC_VECTOR(7 downto 0);
				char_read_value : out STD_LOGIC_VECTOR(7 downto 0));
	end component;

	signal CharReadAddress : STD_LOGIC_VECTOR(11 downto 0);
	signal CharReadValue : STD_LOGIC_VECTOR(7 downto 0);

	component FontRom is
		Port (Clock: in STD_LOGIC;
				Address: in STD_LOGIC_VECTOR(10 downto 0);
				Data: out STD_LOGIC_VECTOR(7 downto 0));
	end component;

	signal RomAddress : STD_LOGIC_VECTOR(10 downto 0);
	signal RomData : STD_LOGIC_VECTOR(7 downto 0);

	signal Col : STD_LOGIC_VECTOR(6 downto 0);
	signal Row : STD_LOGIC_VECTOR(4 downto 0);

begin

	VGAInstance : VGA port map (
		Reset => Reset,
		Clock50 => Clock,
		Hs => Hs,
		Vs => Vs,
		R => R,
		G => G,
		B => B,
		PixelX => PixelX,
		PixelY => PixelY,
		Pixel => Pixel
	);

	Col <= PixelX(9 downto 3);
	Row <= PixelY(8 downto 4);
	CharReadAddress <= Row & Col;

	CharRamInstance : char_mem port map (
		clk => Clock,
		char_read_addr => CharReadAddress,
		char_write_addr => WriteAddress,
		char_we => WriteEN,
		char_write_value => WriteData,
		char_read_value => CharReadValue
	);

	RomAddress <= CharReadValue(6 downto 0) & PixelY(3 downto 0);

	FontRomInstance : FontRom port map (
		Clock => Clock,
		Address => RomAddress,
		Data => RomData
	);

	Pixel <= RomData(TO_INTEGER(UNSIGNED(not PixelX(2 downto 0)))); -- TODO: Should I use 'NOT' here?

end Behavioral;
