----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:34:32 11/22/2017 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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

entity IM is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Ram2OE : out  STD_LOGIC;
           Ram2WE : out  STD_LOGIC;
           Ram2EN : out  STD_LOGIC;		--永远等于'0'
           Ram2Addr : out  STD_LOGIC_VECTOR (17 downto 0);
           Ram2Data : inout  STD_LOGIC_VECTOR (15 downto 0);

           MemEN : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;		--控制读IM的信号，='1'代表需要读
           MemWrite : in  STD_LOGIC;	--控制写IM的信号，='1'代表需要写
           PCIn : in  STD_LOGIC_VECTOR (15 downto 0);		--读IM时，PC输入
			  InstOut : out  STD_LOGIC_VECTOR (15 downto 0);	--读IM时，PC读出的指令
           AddrIn : in  STD_LOGIC_VECTOR (15 downto 0);	--读/写内存时，地址输入
           DataIn : in  STD_LOGIC_VECTOR (15 downto 0);	--写内存时，要写入IM的数据
			  DataOut: out STD_LOGIC_vECTOR(15 downto 0)
	);
			  
end IM;

architecture Behavioral of IM is
	
	signal judge : std_logic := '0';
	
begin

	judge <= '1' when (AddrIn <= x"7FFF") else '0';
	Ram2EN <= '0' when (MemEn = '1') else '1';
	Ram2WE <= '0' when (MemWrite = '1' and clk = '0') else '1';
	Ram2OE <= '0' when (MemWrite = '0') else '1';    

	Ram2Addr <= (others => '0') when rst = '0' else 
		    "00" & AddrIn when judge = '1' else
		    "00" & PCIn;
	InstOut <= x"0800" when rst = '0' else Ram2Data; --when (AddrIn > x"7FFF");
	Ram2Data <= DataIn when MemWrite = '1' else (others => 'Z');
	DataOut <= (others => '0') when rst = '0' else Ram2Data; -- when (AddrIn <= x"7FFF");
	
--	process(clk, rst, MemWrite, MemRead, Ram2Data)
--	begin
--		
--		if (rst = '0') then
--			Ram2Addr <= (others => '0');
--			InstOut <= (others => '0');
--			DataOut <= (others => '0');
--		else
--			if (MemWrite = '1' and AddrIn <= x"7FFF") then	--write
--				Ram2Addr(15 downto 0) <= AddrIn;
--				Ram2Data <= DataIn;
--			elsif (MemRead = '1') then								--read
--				if (AddrIn <= x"7FFF") then
--					Ram2Addr(15 downto 0) <= AddrIn;
--					Ram2Data <= (others => 'Z');
--					DataOut <= Ram2Data;
--				else
--					Ram2Addr(15 downto 0) <= PCIn;
--					Ram2Data <= (others => 'Z');
--					InstOut <= Ram2Data;				
--				end if;
--			end if;
--		end if;
--
--	end process;

end Behavioral;

