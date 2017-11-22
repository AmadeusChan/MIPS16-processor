----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:01:29 11/22/2017 
-- Design Name: 
-- Module Name:    ID_forward_IF_regs - Behavioral 
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

entity ID_forward_IF_regs is
    Port ( bubble : in  STD_LOGIC;
           stall : in  STD_LOGIC;
           branch_target_in : in  STD_LOGIC_VECTOR (15 downto 0);
           jump_target_in : in  STD_LOGIC_VECTOR (15 downto 0);
           is_jump_in : in  STD_LOGIC;
           is_branch_in : in  STD_LOGIC;
           branch_type_in : in  STD_LOGIC;
           branch_relative_reg_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           branch_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
           jump_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
           is_jump_out : out  STD_LOGIC;
           is_branch_out : out  STD_LOGIC;
           branch_type_out : out  STD_LOGIC;
           branch_relative_reg_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
			  clk, rst: in STD_LOGIC
			  );
end ID_forward_IF_regs;

architecture Behavioral of ID_forward_IF_regs is

begin


end Behavioral;

