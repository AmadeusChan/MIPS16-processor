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
           MemRead : in  STD_LOGIC;		--���ƶ�DM���źţ�='1'������Ҫ��
           MemWrite : in  STD_LOGIC;	--����дDM���źţ�='1'������Ҫд
           AddrIn : in  STD_LOGIC_VECTOR (15 downto 0);	--��DM/дDMʱ����ַ����
           DataIn : in  STD_LOGIC_VECTOR (15 downto 0);  --д�ڴ�ʱ��Ҫд��DM������
           DataOut : out  STD_LOGIC_VECTOR (15 downto 0));	--��DMʱ������������/�����Ĵ���״̬
end DM;

architecture Behavioral of DM is

	signal rflag : std_logic := '0';		--rflag='1'����Ѵ��������ߣ�Ram1Data���ø��裬���ڽ�ʡ״̬�Ŀ���

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
--			if (rising_edge(clk)) then		--׼����/д ����/�ڴ�
--				if (MemWrite = '1') then		--д
--					rflag <= '0';
--					if (AddrIn = x"BF00") then			--׼��д����
--						Ram1Data(7 downto 0) <= DataIn(7 downto 0);
--						wrn <= '0';
--					elsif (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) then	--׼��д�ڴ�
--						Ram1Addr(15 downto 0) <= AddrIn;
--						Ram1Data <= DataIn;
--						Ram1WE <= '0';
--					end if;
--				elsif (MemRead = '1') then		--��
--					if (AddrIn = x"BF01") then 		--׼��������״̬
--						DataOut(15 downto 2) <= (others => '0');
--						DataOut(1) <= data_ready;
--						DataOut(0) <= tsre and tbre;
--						if (rflag = '0') then				--������״̬ʱ��ζ�Ž���������Ҫ��/д��������
--							Ram1Data <= (others => 'Z');	--��Ԥ�Ȱ�ram1_data��Ϊ����
--							rflag <= '1';						--���������Ҫ�������ֱ�Ӱ�rdn��'0'��ʡһ��״̬��Ҫд����rflag='0'��������д���ڵ�����
--						end if;	
--					elsif (AddrIn = x"BF00") then		--׼������������
--						rflag <= '0';
--						rdn <= '0';
--					elsif (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) then	--׼�����ڴ�
--						Ram1Addr(15 downto 0) <= AddrIn;
--						Ram1Data <= (others => 'Z');
--						Ram1OE <= '0';
--					end if;
--				end if;
--			elsif (falling_edge(clk)) then	--��/д ����/�ڴ�
--				if(MemWrite = '1') then			--д
--					if (AddrIn = x"BF00") then			--д����
--						wrn <= '1';
--					elsif (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) then	--д�ڴ�
--						Ram1WE <= '1';
--					end if;
--				elsif(MemRead = '1') then		--��
--					if (AddrIn = x"BF01") then			--������״̬���Ѷ���
--						null;
--					elsif (AddrIn = x"BF00") then 	--����������
--						rdn <= '1';
--						DataOut(15 downto 8) <= (others => '0');
--						DataOut(7 downto 0) <= Ram1Data(7 downto 0);
--					elsif (AddrIn > x"7FFF" and (AddrIn < x"BF00" or AddrIn > x"BF03")) then	--���ڴ�
--						Ram1OE <= '1';
--						DataOut <= Ram1Data;
--					end if;								
--				end if;
--			end if;
--		end if;
--	
--	end process;

end Behavioral;

