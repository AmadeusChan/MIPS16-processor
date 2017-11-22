----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:19 11/22/2017 
-- Design Name: 
-- Module Name:    register_module - Behavioral 
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

entity register_module is
    Port ( instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);
           pc_in : in  STD_LOGIC_VECTOR (15 downto 0);
           write_back_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           write_back_reg_in : in  STD_LOGIC_VECTOR (3 downto 0);
           reg_write_enable : in  STD_LOGIC;
           branch_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
           jump_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
           is_branch_out : out  STD_LOGIC;
           branch_type_out : out  STD_LOGIC;
           branch_relative_reg_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
           is_hazard_1 : in  STD_LOGIC;
           is_hazard_2 : in  STD_LOGIC;
           forward_data_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           forward_data_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           pc_out : out  STD_LOGIC_VECTOR (15 downto 0);
           wb_src_out : out  STD_LOGIC_VECTOR (2 downto 0);
           mem_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
           wb_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
           immediate_out : out  STD_LOGIC_VECTOR (15 downto 0);
           write_back_reg_out : out  STD_LOGIC_VECTOR (3 downto 0);
           reg_write_enable_out : out  STD_LOGIC;
           op_code_out : out  STD_LOGIC_VECTOR (3 downto 0);
           operand1_out : out  STD_LOGIC_VECTOR (15 downto 0);
           operand2_out : out  STD_LOGIC_VECTOR (15 downto 0);
           cin_out : out  STD_LOGIC;
           mem_enable_out : out  STD_LOGIC;
           mem_read_out : out  STD_LOGIC;
           mem_write_out : out  STD_LOGIC);
end register_module;

architecture Behavioral of register_module is

	component decoder is 
		Port ( instruction : in  STD_LOGIC_VECTOR (15 downto 0);
           read_reg_1 : out  STD_LOGIC_VECTOR (3 downto 0);
           read_reg_2 : out  STD_LOGIC_VECTOR (3 downto 0);
           immediate : out  STD_LOGIC_VECTOR (15 downto 0);
           write_back_reg : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
	end component;
	
	signal read_reg1, read_reg2 ,write_back_reg: STD_LOGIC_VECTOR(3 downto 0);
	signal immediate: STD_LOGIC_VECTOR(15 downto 0);

begin

	decoder_imp: decoder 
	port map(
		instruction => instruction_in,
		read_reg_1 => read_reg1,
		read_reg_2 => read_reg2,
		immediate => immediate,
		write_back_reg => write_back_reg
	);

end Behavioral;

