----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:37:54 11/22/2017 
-- Design Name: 
-- Module Name:    DM - Behavioral 
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

entity DM is
    Port ( clk : in  STD_LOGIC;
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
           DataOut : out  STD_LOGIC_VECTOR (15 downto 0));	--读DM时，读出的数据/读出的串口状态
end DM;

architecture Behavioral of DM is

	signal judge : std_logic := '0';		--rflag='1'代表把串口数据线（Ram1Data）置高阻，用于节省状态的控制

begin

	judge <= '1' when (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) else '0';
	wrn <= '0' when (AddrIn = x"BF00" and MemWrite = '1' and clk = '0') else '1';
	rdn <= '0' when (AddrIn = x"BF00" and MemRead = '1' and clk = '1') else '1';
	Ram1EN <= '0' when (MemEn = '1') else '1';
	Ram1WE <= '0' when (judge = '1' and MemWrite = '1' and clk = '0') else '1';
	Ram1OE <= '0' when (judge = '1' and MemRead = '1' and clk = '1') else '1';
		
	process(clk, rst, AddrIn)
	begin
		
		if (rst = '0') then
			Ram1Addr <= (others => '0');
			DataOut <= (others => '0');
		else
			if (MemWrite = '1') then
				if (AddrIn = x"BF00") then			--write serial port
					Ram1Data(7 downto 0) <= DataIn(7 downto 0);
				elsif (judge = '1') then			--write memory
					Ram1Addr(15 downto 0) <= AddrIn;
					Ram1Data <= DataIn;
				end if;
			elsif (MemRead = '1') then
				if (AddrIn = x"BF01") then			--read the state of serial port
					DataOut(15 downto 2) <= (others => '0');
					DataOut(1) <= data_ready;		--judge for read
					DataOut(0) <= tsre and tbre;	--judge for write
					Ram1Data <= (others => '0');
				elsif (AddrIn = x"BF00") then		--read serial port
					Ram1Data <= (others => 'Z');
					DataOut(15 downto 8) <= (others => '0');
					DataOut(7 downto 0) <= Ram1Data(7 downto 0);
				elsif (judge = '1') then			--read memory
					Ram1Addr(15 downto 0) <= AddrIn;
					Ram1Data <= (others => 'Z');
					DataOut <= Ram1Data;
				end if;
			end if;
		end if;
	
	end process;

end Behavioral;

