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

	signal rflag : std_logic := '0';		--rflag='1'代表把串口数据线（Ram1Data）置高阻，用于节省状态的控制

begin

	rdn <= '0';
	wrn <= '0';
	DataOut <= (others => '0');
	Ram1OE <= '0';
	Ram1WE <= '0';
	Ram1EN <= '0';
	Ram1Addr <= (others => '0');
	Ram1Data <= (others => 'Z');
	
--	process(clk, rst)
--	begin
--		if (rst = '0') then
--			rdn <= '1';
--			wrn <= '1';
--			rflag <= '0';
--			Ram1EN <= '0';
--			Ram1OE <= '1';
--			Ram1WE <= '1';
--			Ram1Addr <= (others => '0');
--			DataOut <= (others => '0');
--		elsif (MemEN = '1') then
--			if (rising_edge(clk)) then		--准备读/写 串口/内存
--				if (MemWrite = '1') then		--写
--					rflag <= '0';
--					if (AddrIn = x"BF00") then			--准备写串口
--						Ram1Data(7 downto 0) <= DataIn(7 downto 0);
--						wrn <= '0';
--					elsif (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) then	--准备写内存
--						Ram1Addr(15 downto 0) <= AddrIn;
--						Ram1Data <= DataIn;
--						Ram1WE <= '0';
--					end if;
--				elsif (MemRead = '1') then		--读
--					if (AddrIn = x"BF01") then 		--准备读串口状态
--						DataOut(15 downto 2) <= (others => '0');
--						DataOut(1) <= data_ready;
--						DataOut(0) <= tsre and tbre;
--						if (rflag = '0') then				--读串口状态时意味着接下来可能要读/写串口数据
--							Ram1Data <= (others => 'Z');	--故预先把ram1_data置为高阻
--							rflag <= '1';						--如果接下来要读，则可直接把rdn置'0'，省一个状态；要写，则rflag='0'，正常走写串口的流程
--						end if;	
--					elsif (AddrIn = x"BF00") then		--准备读串口数据
--						rflag <= '0';
--						rdn <= '0';
--					elsif (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) then	--准备读内存
--						Ram1Addr(15 downto 0) <= AddrIn;
--						Ram1Data <= (others => 'Z');
--						Ram1OE <= '0';
--					end if;
--				end if;
--			elsif (falling_edge(clk)) then	--读/写 串口/内存
--				if(MemWrite = '1') then			--写
--					if (AddrIn = x"BF00") then			--写串口
--						wrn <= '1';
--					elsif (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) then	--写内存
--						Ram1WE <= '1';
--					end if;
--				elsif(MemRead = '1') then		--读
--					if (AddrIn = x"BF01") then			--读串口状态，已读出
--						null;
--					elsif (AddrIn = x"BF00") then 	--读串口数据
--						rdn <= '1';
--						DataOut(15 downto 8) <= (others => '0');
--						DataOut(7 downto 0) <= Ram1Data(7 downto 0);
--					elsif (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) then	--读内存
--						Ram1OE <= '1';
--						DataOut <= Ram1Data;
--					end if;								
--				end if;
--			end if;
--		end if;
--	
--	end process;

end Behavioral;

