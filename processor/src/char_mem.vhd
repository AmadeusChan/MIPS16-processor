-- VGA Character Memory
--
-- This memory can store 128x32 characters where each character is
-- 8 bits. The memory is dual ported providing a port
-- to read the characters and a port to write the characters.
--
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity char_mem is
	port(
		clk: in std_logic;
		char_read_addr : in std_logic_vector(11 downto 0);
		char_write_addr: in std_logic_vector(11 downto 0);
		char_we : in std_logic;
		char_write_value : in std_logic_vector(7 downto 0);
		char_read_value : out std_logic_vector(7 downto 0)
	);
end char_mem;

architecture arch of char_mem is

	constant CHAR_RAM_ADDR_WIDTH: integer := 12; -- 2^7 X 2^5
	constant CHAR_RAM_WIDTH: integer := 8;  -- 8 bits per character
	type char_ram_type is array (0 to 2**CHAR_RAM_ADDR_WIDTH-1)
	  of std_logic_vector(CHAR_RAM_WIDTH-1 downto 0);
	signal read_a : std_logic_vector(11 downto 0);

	-- character memory signal
	signal char_ram : char_ram_type := (
		-- Initial Value of character memory

		-- Line 0
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 1
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 2
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 3
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 4
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 5
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 6
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 7
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 8
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 9
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 10
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 11
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 12
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 13
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 14
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 15
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 16
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 17
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 18
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 19
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 20
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 21
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 22
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 23
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 24
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 25
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 26
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 27
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 28
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 29
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 30
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		-- Line 31
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66",
		X"47",X"6F",X"20",X"66",X"75",X"63",X"6B",X"20",X"79",X"6F",X"75",X"72",X"73",X"65",X"6C",X"66"
	);
begin

  -- character memory concurrent statement
  process(clk)
  begin
	 if (clk'event and clk='1') then
		if (char_we = '1') then
		  char_ram(to_integer(unsigned(char_write_addr))) <= char_write_value;
		end if;
		read_a <= char_read_addr;
	 end if;
  end process;
  char_read_value <= char_ram(to_integer(unsigned(read_a)));

end arch;

