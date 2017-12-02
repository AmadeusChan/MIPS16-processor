----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:03:44 11/23/2017 
-- Design Name: 
-- Module Name:    structural_hazard_detector - Behavioral 
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

entity structural_hazard_detector is
    Port ( mem_write_in : in  STD_LOGIC;
           mem_address_in : in  STD_LOGIC_VECTOR (15 downto 0);
           mem_data_in : in  STD_LOGIC_VECTOR (15 downto 0);

	   is_hazard : out  STD_LOGIC;
           ram2_oe : out  STD_LOGIC;
           ram2_we : out  STD_LOGIC;
           ram2_in_data : out  STD_LOGIC_VECTOR (15 downto 0);
           ram2_in_address : out  STD_LOGIC_VECTOR (15 downto 0));
end structural_hazard_detector;

architecture Behavioral of structural_hazard_detector is

begin

	ram2_in_data <= mem_data_in;
	ram2_in_address <= mem_address_in;
	ram2_oe <= enable;
	
	is_hazard <= '1' when (mem_write_in = enable and mem_address_in(15) = '0') else '0';
	ram2_we <= enable when (mem_write_in = enable and mem_address_in(15) = '0') else disable;

end Behavioral;

