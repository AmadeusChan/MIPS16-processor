----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:17 11/22/2017 
-- Design Name: 
-- Module Name:    ID_ALU_regs - Behavioral 
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

entity ID_ALU_regs is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           bubble : in  STD_LOGIC;
           stall : in  STD_LOGIC;
           pc_in : in  STD_LOGIC_VECTOR (15 downto 0);
           pc_out : out  STD_LOGIC_VECTOR (15 downto 0);
           wb_src_in : in  STD_LOGIC_VECTOR (2 downto 0);
           wb_src_out : out  STD_LOGIC_VECTOR (2 downto 0);
           mem_data_from_reg_in : in  STD_LOGIC_VECTOR (15 downto 0);
           mem_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
           wb_data_from_reg_in : in  STD_LOGIC_VECTOR (15 downto 0);
           wb_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
           immediate_in : in  STD_LOGIC_VECTOR (15 downto 0);
           immediate_out : out  STD_LOGIC_VECTOR (15 downto 0);
           write_back_reg_in : in  STD_LOGIC_VECTOR (3 downto 0);
           write_back_reg_out : out  STD_LOGIC_VECTOR (3 downto 0);
           reg_write_enable_in : in  STD_LOGIC;
           reg_write_enable_out : out  STD_LOGIC;
           op_code_in : in  STD_LOGIC_VECTOR (3 downto 0);
           op_code_out : out  STD_LOGIC_VECTOR (3 downto 0);
           operand1_in : in  STD_LOGIC_VECTOR (15 downto 0);
           operand1_out : out  STD_LOGIC_VECTOR (15 downto 0);
           operand2_in : in  STD_LOGIC_VECTOR (15 downto 0);
           operand2_out : out  STD_LOGIC_VECTOR (15 downto 0);
           cin_in : in  STD_LOGIC;
           cin_out : out  STD_LOGIC;
           mem_enable_in : in  STD_LOGIC;
           mem_enable_out : out  STD_LOGIC;
           mem_read_in : in  STD_LOGIC;
           mem_read_out : out  STD_LOGIC;
           mem_write_in : in  STD_LOGIC;
           mem_write_out : out  STD_LOGIC);
end ID_ALU_regs;

architecture Behavioral of ID_ALU_regs is

begin


end Behavioral;

