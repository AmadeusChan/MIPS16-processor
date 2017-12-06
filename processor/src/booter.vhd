----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:47 12/06/2017 
-- Design Name: 
-- Module Name:    booter - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity booter is
    Port ( clk_50m : in  STD_LOGIC; 
           rst : in  STD_LOGIC;
	   led: out STD_LOGIC_VECTOR(15 downto 0);
           flash_byte : out  STD_LOGIC;
           flash_vpen : out  STD_LOGIC;
           flash_ce : buffer  STD_LOGIC;
           flash_oe : buffer  STD_LOGIC;
           flash_we : buffer  STD_LOGIC;
           flash_rp : buffer  STD_LOGIC;
           flash_address : buffer  STD_LOGIC_VECTOR (22 downto 0);
           flash_data : inout  STD_LOGIC_VECTOR (15 downto 0);

	   --ram1_data: inout STD_LOGIC_VECTOR(15 downto 0);
           ram2_address : buffer  STD_LOGIC_VECTOR (17 downto 0);
           ram2_data : inout  STD_LOGIC_VECTOR (15 downto 0);
           ram2_oe : buffer  STD_LOGIC;
           ram2_we : buffer  STD_LOGIC;
           ram2_en : buffer  STD_LOGIC;

		clk_11 : in  STD_LOGIC; -- 11M
		clk_manual : in  STD_LOGIC;
		switch : in  STD_LOGIC_VECTOR (15 downto 0);  
		
		-- ram1
		ram1_addr : out  STD_LOGIC_VECTOR (17 downto 0);
		ram1_data : inout  STD_LOGIC_VECTOR (15 downto 0);
		ram1_oe : out  STD_LOGIC;
		ram1_we : out  STD_LOGIC;
		ram1_en : out  STD_LOGIC;
		-- ram2
		disp0 : out  STD_LOGIC_VECTOR (6 downto 0);
		disp1 : out  STD_LOGIC_VECTOR (6 downto 0);
		-- serial port
		data_ready : in  STD_LOGIC;
		rdn : out  STD_LOGIC;
		tbre : in  STD_LOGIC;
		tsre : in  STD_LOGIC;
		wrn : out  STD_LOGIC;
		hs,vs	: out std_logic;
		oRed	: out std_logic_vector (2 downto 0);
		oGreen	: out std_logic_vector (2 downto 0);
		oBlue	: out std_logic_vector (2 downto 0)
		);
   );
end booter;

architecture Behavioral of booter is

	component processor is
	
	    Port ( 
		clk_11 : in  STD_LOGIC; -- 11M
		rst : in  STD_LOGIC;
		clk_50M : in  STD_LOGIC; -- 50M
		clk_manual : in  STD_LOGIC;
		switch : in  STD_LOGIC_VECTOR (15 downto 0);  
		led : out  STD_LOGIC_VECTOR (15 downto 0);
		
		-- ram1
		ram1_addr : out  STD_LOGIC_VECTOR (17 downto 0);
		ram1_data : inout  STD_LOGIC_VECTOR (15 downto 0);
		ram1_oe : out  STD_LOGIC;
		ram1_we : out  STD_LOGIC;
		ram1_en : out  STD_LOGIC;
		
		-- ram2
		ram2_addr : out  STD_LOGIC_VECTOR (17 downto 0);
		ram2_data : inout  STD_LOGIC_VECTOR (15 downto 0);
		ram2_oe : out  STD_LOGIC;
		ram2_we : out  STD_LOGIC;
		ram2_en : out  STD_LOGIC;
		
		disp0 : out  STD_LOGIC_VECTOR (6 downto 0);
		disp1 : out  STD_LOGIC_VECTOR (6 downto 0);
		 
		-- serial port
		data_ready : in  STD_LOGIC;
		rdn : out  STD_LOGIC;
		tbre : in  STD_LOGIC;
		tsre : in  STD_LOGIC;
		wrn : out  STD_LOGIC;
	
		hs,vs	: out std_logic;
		oRed	: out std_logic_vector (2 downto 0);
		oGreen	: out std_logic_vector (2 downto 0);
		oBlue	: out std_logic_vector (2 downto 0)
		);
	end component;
 

	type state_type is (init, flash_read1, flash_read2, flash_read3, flash_read4, mem_write, booted);

	signal state: state_type := init;
	signal now_address: STD_LOGIC_VECTOR(15 downto 0) := x"0000";
	signal now_data: STD_LOGIC_VECTOR(15 downto 0) := x"0000";

	signal cnt_flash: STD_LOGIC_VECTOR(5 downto 0) := "000000";
	signal clk_flash: STD_LOGIC := '0';

begin

	flash_byte <= '1';
	flash_vpen <= '1';
	flash_rp <= '1';
	flash_ce <= '0';

	ram2_oe <= '1';
	ram2_en <= '0';
	ram2_we <= '0' when (state = mem_write and clk_50m = '0') else '1';
	ram2_address <= "00" & now_address;
	ram2_data <= now_data;

	led(7 downto 0) <= now_address(7 downto 0);
	led(15) <= flash_ce;
	led(14) <= flash_we;
	led(13) <= flash_oe;
	led(12) <= ram2_en;
	led(11) <= ram2_oe;
	led(10) <= ram2_we;
	led(9 downto 8) <= "00";
	ram1_data <= flash_data;
	
	process (clk_50m)
	begin
		if clk_50m'event and clk_50m = '1' then
			cnt_flash <= cnt_flash + "000001";
			if (cnt_flash = "000000") then
				clk_flash <= not clk_flash;
			end if;
		end if;
	end process;

	process(rst, clk_flash)
	begin
		if rst = '0' then
			state <= init;
			flash_we <= '1';
			flash_oe <= '1';
			flash_data <= (others => 'Z');
		elsif clk_flash'event and clk_flash = '1' then
			case state is
				when init =>
					state <= flash_read1;
					flash_we <= '0';
				when flash_read1 =>
					state <= flash_read2;
					flash_data <= x"00FF";
				when flash_read2 =>
					state <= flash_read3;
					flash_we <= '1';
				when flash_read3 =>
					state <= flash_read4;
					flash_oe <= '0';
					flash_address <= "000000" & now_address & '0';
					flash_data <= (others => 'Z');
				when flash_read4 =>
					state <= mem_write;
					now_data <= flash_data;
				when mem_write => 
					if now_address < x"0217" then
						now_address <= now_address + x"0001";
						state <= init;
						flash_we <= '1';
						flash_oe <= '1';
						flash_data <= (others => 'Z');
					else 
						state <= booted;
					end if;
				when booted =>
					null;
				when others =>
					state <= init;
					flash_we <= '1';
					flash_oe <= '1';
					flash_data <= (others => 'Z');
			end case;
		end if;
	end process;

end Behavioral;

