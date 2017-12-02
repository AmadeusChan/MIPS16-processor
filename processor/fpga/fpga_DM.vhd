----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:36:58 12/02/2017 
-- Design Name: 
-- Module Name:    fpga_DM - Behavioral 
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

entity fpga_DM is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  data_ready : in  STD_LOGIC;
           tbre : in  STD_LOGIC;
           tsre : in  STD_LOGIC;
           rdn : out  STD_LOGIC;
           wrn : out  STD_LOGIC;
			  led : out  STD_LOGIC_VECTOR (15 downto 0);
			  dyp : out  STD_LOGIC_VECTOR (6 downto 0);
           ram1addr : out  STD_LOGIC_VECTOR (17 downto 0);
           ram1data : inout  STD_LOGIC_VECTOR (15 downto 0);
           ram1oe : out  STD_LOGIC;
           ram1we : out  STD_LOGIC;
           ram1en : out  STD_LOGIC);
end fpga_DM;

architecture Behavioral of fpga_DM is

	signal addr_in : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal data_in : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal data_out : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal memoe : STD_LOGIC := '0';
	signal memwe : STD_LOGIC := '0';
	signal memen : STD_LOGIC := '1';

	component DM
		port(clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           data_ready : in  STD_LOGIC;
           tbre : in  STD_LOGIC;
           tsre : in  STD_LOGIC;
           rdn : out  STD_LOGIC;
           wrn : out  STD_LOGIC;
           Ram1OE : out  STD_LOGIC;
           Ram1WE : out  STD_LOGIC;
           Ram1EN : out  STD_LOGIC;
           Ram1Addr : out  STD_LOGIC_VECTOR (17 downto 0);
           Ram1Data : inout  STD_LOGIC_VECTOR (15 downto 0);
			  
           MemEN : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;		--控制读DM的信号，='1'代表需要读
           MemWrite : in  STD_LOGIC;	--控制写DM的信号，='1'代表需要写
           AddrIn : in  STD_LOGIC_VECTOR (15 downto 0);	--读DM/写DM时，地址输入
           DataIn : in  STD_LOGIC_VECTOR (15 downto 0);  --写内存时，要写入DM的数据
           DataOut : out  STD_LOGIC_VECTOR (15 downto 0)	--读DM时，读出的数据/读出的串口状态
		);
	end component;

	type state is (s0, s1, s2, s3);
	signal current_state : state := s0;
	
	signal cnt : STD_LOGIC_VECTOR(15 downto 0) := x"0000";


begin
	
	u : DM
	port map(clk => clk,
				rst => rst,
				data_ready => data_ready,
				tbre => tbre,
				tsre => tsre,
				rdn => rdn,
				wrn => wrn,
				Ram1OE => ram1oe,
				Ram1WE => ram1we,
				Ram1EN => ram1en,
				Ram1Addr => ram1addr,
				Ram1Data => ram1data,
				
				MemEN => memen,
				MemRead => memoe,
				MemWrite => memwe,
				AddrIn => addr_in,
				DataIn => data_in,
				DataOut => data_out
	);				

	process(clk, rst, data_out)
	begin
		led <= data_out;
		if (rst = '0') then
			memen <= '1';
			memoe <= '0';
			memwe <= '0';
			addr_in <= (others => '0');
			data_in <= (others => '0');
			current_state <= s0;
			cnt <= x"0000";
		elsif (clk'event and clk = '1') then
			case current_state is
				when s0 =>
					memoe <= '1';
					memwe <= '0';
					addr_in <= x"BF01";
					current_state <= s1;
					cnt <= cnt + x"0001";
				when s1 =>
					if (data_out(0) = '1') then
						memoe <= '0';
						memwe <= '1';
						addr_in <= x"BF00";
						data_in <= cnt;
						current_state <= s2;
					end if;
				when s2 =>
					memoe <= '1';
					memwe <= '0';
					addr_in <= x"BF01";
					current_state <= s3;
				when s3 =>
					if (data_out(1 downto 0) = "11") then
						memoe <= '1';
						memwe <= '0';
						addr_in <= x"BF00";
						current_state <= s0;
					end if;
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

