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
           if_id_bubble : out  STD_LOGIC;
           ram2_oe : out  STD_LOGIC;
           ram2_we : out  STD_LOGIC;
           ram2_in_data : out  STD_LOGIC_VECTOR (15 downto 0);
           ram2_in_address : out  STD_LOGIC_VECTOR (15 downto 0));
end structural_hazard_detector;

architecture Behavioral of structural_hazard_detector is

begin


end Behavioral;

