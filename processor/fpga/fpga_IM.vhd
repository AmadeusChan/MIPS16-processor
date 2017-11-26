----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:03:14 11/26/2017 
-- Design Name: 
-- Module Name:    fpga_IM - Behavioral 
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

entity fpga_IM is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (15 downto 0);
			  dyp : out  STD_LOGIC_VECTOR (6 downto 0);
           ram2addr : out  STD_LOGIC_VECTOR (17 downto 0);
           ram2data : inout  STD_LOGIC_VECTOR (15 downto 0);
           ram2oe : out  STD_LOGIC;
           ram2we : out  STD_LOGIC;
           ram2en : out  STD_LOGIC);
end fpga_IM;

architecture Behavioral of fpga_IM is
	
	signal addr_in : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal instruction_in: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal memoe : STD_LOGIC := '0';
	signal memwe : STD_LOGIC := '0';
	signal memen : STD_LOGIC := '1';

	component IM
		port(clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Ram2OE : out  STD_LOGIC;
           Ram2WE : out  STD_LOGIC;
           Ram2EN : out  STD_LOGIC;		--永远等于'0'
           Ram2Addr : out  STD_LOGIC_VECTOR (17 downto 0);
           Ram2Data : inout  STD_LOGIC_VECTOR (15 downto 0);

           MemEN : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;		--控制读IM的信号，='1'代表需要读
           MemWrite : in  STD_LOGIC;	--控制写IM的信号，='1'代表需要写
           PCIn : in  STD_LOGIC_VECTOR (15 downto 0);		--读IM时，地址输入
           AddrIn : in  STD_LOGIC_VECTOR (15 downto 0);	--写IM时，地址输入
           InstIn : in  STD_LOGIC_VECTOR (15 downto 0);	--写内存时，要写入IM的数据
           InstOut : out  STD_LOGIC_VECTOR (15 downto 0)
		);
	end component;
	
	type state is (s0, s1, s2, s3);
	signal current_state : state := s0;

begin

	u : IM
	port map(clk => clk,
				rst => rst,
				Ram2OE => ram2oe,
				Ram2WE => ram2we,
				Ram2EN => ram2en,
				Ram2Addr => ram2addr,
				Ram2Data => ram2data,
								
				MemEN => memen,
				MemRead => memoe,
				MemWrite => memwe,
				PCIn => addr_in,
				AddrIn => addr_in,
				InstIn => instruction_in,
				InstOut => led
	);
	
	process(clk, rst)
	begin
		if (rst = '0') then
			memen <= '1';
			memoe <= '0';
			memwe <= '0';
			addr_in <= (others => '0');
			instruction_in <= (others => '0');
			current_state <= s0;
		elsif (clk'event and clk = '1') then
			case current_state is
				when s0 =>
					memoe <= '0';
					memwe <= '1';
					addr_in <= x"0012";
					instruction_in <= x"0034";
					current_state <= s1;
				when s1 =>
					memoe <= '0';
					memwe <= '1';
					addr_in <= x"0021";
					instruction_in <= x"0043";
					current_state <= s2;
				when s2 =>
					memoe <= '1';
					memwe <= '0';
					addr_in <= x"0012";
					current_state <= s3;
				when s3 =>
					memoe <= '1';
					memwe <= '0';
					addr_in <= x"0021";
					current_state <= s0;
			end case;
		end if;
	end process;

	process(current_state)
	begin
		case current_state is
			when s0 =>
				dyp <= "0111111";
			when s1 =>
				dyp <= "0000110";
			when s2 =>
				dyp <= "1011011";
			when s3 =>
				dyp <= "1001111";
		end case;
	end process;

end Behavioral;

