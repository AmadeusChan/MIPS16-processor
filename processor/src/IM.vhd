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
           Ram2EN : out  STD_LOGIC;		--��Զ����'0'
           Ram2Addr : out  STD_LOGIC_VECTOR (17 downto 0);
           Ram2Data : inout  STD_LOGIC_VECTOR (15 downto 0);
			  
           MemEN : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;		--���ƶ�IM���źţ�='1'������Ҫ��
           MemWrite : in  STD_LOGIC;	--����дIM���źţ�='1'������Ҫд
           PCIn : in  STD_LOGIC_VECTOR (15 downto 0);		--��IMʱ����ַ����
           AddrIn : in  STD_LOGIC_VECTOR (15 downto 0);	--дIMʱ����ַ����
           InstIn : in  STD_LOGIC_VECTOR (15 downto 0);	--д�ڴ�ʱ��Ҫд��IM������
           InstOut : out  STD_LOGIC_VECTOR (15 downto 0));	--��IMʱ��������ָ��
end IM;

architecture Behavioral of IM is

begin
	
	process(clk, rst)
	begin
		
		if (rst = '0') then
			Ram2EN <= '0';
			Ram2OE <= '1';
			Ram2WE <= '1';
			Ram2Addr <= (others => '0');
			InstOut <= (others => '0');
		elsif (clk'event and MemEN = '1') then
			if (clk = '1') then		--׼����/дָ��
				if (MemWrite = '1') then		--д
					Ram2Addr <= AddrIn;
					Ram2Data <= InstIn;
					Ram2WE <= '0';
				elsif (MemRead = '1') then		--��
					Ram2Addr <= PCIn;
					Ram2Data <= (others => 'Z');
					Ram2OE <= '0';
				end if;
			elsif (clk = '0') then	--��/дָ��
				if (MemWrite = '1') then		--д
					Ram2WE <= '1';
				elsif (MemRead = '1') then		--��
					Ram2OE <= '1';
					InstOut <= Ram2Data;
				end if;
			end if;
		end if;
		
	end process;

end Behavioral;

