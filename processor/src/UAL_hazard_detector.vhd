----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:59 11/22/2017 
-- Design Name: 
-- Module Name:    UAL_hazard_detector - Behavioral 
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

library work;
use work.constants.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UAL_hazard_detector is
    Port ( read_reg1 : in  STD_LOGIC_VECTOR (3 downto 0);
           read_reg2 : in  STD_LOGIC_VECTOR (3 downto 0);
           write_back_reg : in  STD_LOGIC_VECTOR (3 downto 0);
           reg_write_enable : in  STD_LOGIC;
           mem_read : in  STD_LOGIC;
    	     clk, rst: in STD_LOGIC;

           --is_ual_hazard_1 : out  STD_LOGIC;
           --is_ual_hazard_2 : out  STD_LOGIC;
           bubble : out  STD_LOGIC;
           stall : out  STD_LOGIC
   );
end UAL_hazard_detector;

architecture Behavioral of UAL_hazard_detector is

	type state_type is (detecting, detected);
	signal state: state_type := detecting;

	signal is_ual_hazard_1_tmp, is_ual_hazard_2_tmp: STD_LOGIC;

begin

	process (clk, rst)
	begin
		if rst = '0' then
			state <= detecting;
			--is_ual_hazard_1 <= '0';
			--is_ual_hazard_2 <= '0';
		elsif clk'event and clk = '1' then 
			if state = detecting then
				if is_ual_hazard_1_tmp = '1' or is_ual_hazard_2_tmp = '1' then
					state <= detected;
					--is_ual_hazard_1 <= is_ual_hazard_1_tmp;
					--is_ual_hazard_2 <= is_ual_hazard_2_tmp;
				end if;
			else 
				state <= detecting;
				--is_ual_hazard_1 <= '0';
				--is_ual_hazard_2 <= '0';
			end if;
		end if;
	end process;
--
--	process (is_ual_hazard_1_tmp, state)
--	begin 
--		case state is
--			when detecting => 
--				is_ual_hazard_1 <= '0';
--			when detected => 
--				is_ual_hazard_1 <= is_ual_hazard_1_tmp;
--		end case;
--	end process;
--
--	process (is_ual_hazard_2_tmp, state)
--	begin 
--		case state is
--			when detecting => 
--				is_ual_hazard_2 <= '0';
--			when detected => 
--				is_ual_hazard_2 <= is_ual_hazard_2_tmp;
--		end case;
--	end process;

 
		bubble <= is_ual_hazard_1_tmp or is_ual_hazard_2_tmp;
		stall <= is_ual_hazard_1_tmp or is_ual_hazard_2_tmp;
		
		is_ual_hazard_1_tmp <= '1' when mem_read = enable and reg_write_enable = enable and read_reg1 = write_back_reg else '0';
		is_ual_hazard_2_tmp <= '1' when mem_read = enable and reg_write_enable = enable and read_reg2 = write_back_reg else '0';

--	process (read_reg1, read_reg2, write_back_reg, reg_write_enable, mem_read, state)
--	begin 
--		--if state = detecting then 
--			if mem_read = enable and reg_write_enable = enable then
--					if read_reg1 = write_back_reg then
--							is_ual_hazard_1_tmp <= '1';
--							is_ual_hazard_2_tmp <= '0';
--						elsif read_reg2 = write_back_reg then
--								is_ual_hazard_1_tmp <= '0';
--								is_ual_hazard_2_tmp <= '1';
--							else 
--								is_ual_hazard_1_tmp <= '0';
--								is_ual_hazard_2_tmp <= '0';
--							end if;
--				else 
--					is_ual_hazard_1_tmp <= '0';
--					is_ual_hazard_2_tmp <= '0';
--				end if;
--		--end if;
--	end process;


end Behavioral;

