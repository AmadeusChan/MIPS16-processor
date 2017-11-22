----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:03:24 11/22/2017 
-- Design Name: 
-- Module Name:    IF_ID_regs - Behavioral 
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

entity IF_ID_regs is
    Port ( bubble : in  STD_LOGIC;
           stall : in  STD_LOGIC;
           instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);
           pc_in : in  STD_LOGIC_VECTOR (15 downto 0);
           instruction_out : out  STD_LOGIC_VECTOR (15 downto 0);
           pc_out : out  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end IF_ID_regs;

architecture Behavioral of IF_ID_regs is

begin


end Behavioral;

