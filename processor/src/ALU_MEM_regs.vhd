----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:29 11/22/2017 
-- Design Name: 
-- Module Name:    ALU_MEM_regs - Behavioral 
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

entity ALU_MEM_regs is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           bubble : in  STD_LOGIC;
           stall : in  STD_LOGIC;
           write_back_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           write_back_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
           write_back_reg_in : in  STD_LOGIC_VECTOR (15 downto 0);
           write_back_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
           reg_write_enable_in : in  STD_LOGIC;
           reg_write_enable_out : out  STD_LOGIC;
           mem_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           mem_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
           mem_address_in : in  STD_LOGIC_VECTOR (15 downto 0);
           mem_address_out : out  STD_LOGIC_VECTOR (15 downto 0);
           mem_enable_in : in  STD_LOGIC;
           mem_enable_out : out  STD_LOGIC;
           mem_read_in : in  STD_LOGIC;
           mem_read_out : out  STD_LOGIC;
           mem_write_in : in  STD_LOGIC;
           mem_write_out : out  STD_LOGIC);
end ALU_MEM_regs;

architecture Behavioral of ALU_MEM_regs is

begin


end Behavioral;

