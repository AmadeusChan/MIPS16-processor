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
           is_ual_hazard_1 : out  STD_LOGIC;
           is_ual_hazard_2 : out  STD_LOGIC;
           bubble : out  STD_LOGIC;
           stall : out  STD_LOGIC);
end UAL_hazard_detector;

architecture Behavioral of UAL_hazard_detector is

begin


end Behavioral;

