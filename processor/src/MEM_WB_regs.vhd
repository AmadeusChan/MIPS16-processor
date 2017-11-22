----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:19:49 11/22/2017 
-- Design Name: 
-- Module Name:    MEM_WB_regs - Behavioral 
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

entity MEM_WB_regs is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           bubble : in  STD_LOGIC;
           stall : in  STD_LOGIC;
           write_back_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           write_back_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
           write_back_reg_in : in  STD_LOGIC_VECTOR (3 downto 0);
           write_back_reg_out : out  STD_LOGIC_VECTOR (3 downto 0);
           write_enable_in : in  STD_LOGIC;
           write_enable_out : out  STD_LOGIC);
end MEM_WB_regs;

architecture Behavioral of MEM_WB_regs is

begin


end Behavioral;

