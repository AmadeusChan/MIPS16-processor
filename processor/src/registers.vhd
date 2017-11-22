----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:50 11/22/2017 
-- Design Name: 
-- Module Name:    registers - Behavioral 
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

entity registers is
    Port ( read_reg1 : in  STD_LOGIC_VECTOR (3 downto 0);
           read_reg2 : in  STD_LOGIC_VECTOR (3 downto 0);
           write_reg : in  STD_LOGIC_VECTOR (3 downto 0);
           write_data : in  STD_LOGIC_VECTOR (15 downto 0);
           write_enable : in  STD_LOGIC;
           forward_data1 : in  STD_LOGIC_VECTOR (15 downto 0);
           forward_data2 : in  STD_LOGIC_VECTOR (0 downto 0);
           is_hazard_1 : in  STD_LOGIC;
           is_hazard_2 : in  STD_LOGIC;
           read_data1 : out  STD_LOGIC_VECTOR (15 downto 0);
           read_data2 : out  STD_LOGIC_VECTOR (15 downto 0);
			  clk, rst: in STD_LOGIC
			  );
end registers;

architecture Behavioral of registers is

begin


end Behavioral;

