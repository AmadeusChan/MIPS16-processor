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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.constants.all;

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
           reg_write_enable_in : in  STD_LOGIC;
	   is_hazard_1_in : in  std_logic;
	   is_hazard_2_in : in  std_logic;
	   forward_data_1_in : in  std_logic_vector (15 downto 0);
	   forward_data_2_in : in  std_logic_vector (15 downto 0);

           branch_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
           jump_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
           is_branch_out : out  STD_LOGIC;
			  is_jump_out: out STD_LOGIC;
           branch_type_out : out  STD_LOGIC;
           branch_relative_reg_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
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
           mem_write_out : out  STD_LOGIC;
	   
	   clk, rst: in STD_LOGIC);
end register_module;

architecture Behavioral of register_module is

	component decoder is 
	Port ( 	
		instruction : in  STD_LOGIC_VECTOR (15 downto 0);
		read_reg_1 : out  STD_LOGIC_VECTOR (3 downto 0);
		read_reg_2 : out  STD_LOGIC_VECTOR (3 downto 0);
		immediate : out  STD_LOGIC_VECTOR (15 downto 0);
		write_back_reg : out  STD_LOGIC_VECTOR (3 downto 0)
	);
	end component;

	component registers is 
	    port ( read_reg1 : in  STD_LOGIC_VECTOR (3 downto 0);
	           read_reg2 : in  STD_LOGIC_VECTOR (3 downto 0);
	           write_reg : in  STD_LOGIC_VECTOR (3 downto 0);
	           write_data : in  STD_LOGIC_VECTOR (15 downto 0);
	           write_enable : in  STD_LOGIC;
	           forward_data1 : in  STD_LOGIC_VECTOR (15 downto 0);
	           forward_data2 : in  STD_LOGIC_VECTOR (15 downto 0);
	           is_hazard_1 : in  STD_LOGIC;
	           is_hazard_2 : in  STD_LOGIC;
	           read_data1 : out  STD_LOGIC_VECTOR (15 downto 0);
	           read_data2 : out  STD_LOGIC_VECTOR (15 downto 0);
		   clk, rst: in STD_LOGIC
		);
	end component;

	component controller is
	    Port ( instruction : in  STD_LOGIC_VECTOR (15 downto 0);
	           branch_type : out  STD_LOGIC;
	           is_branch : out  STD_LOGIC;
	           is_jump : out  STD_LOGIC;
	           operand1_src : out  STD_LOGIC;
	           operand2_src : out  STD_LOGIC_VECTOR (1 downto 0);
	           op_code : out  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable : out  STD_LOGIC;
	           out_mem_write : out  STD_LOGIC;
	           out_mem_read : out  STD_LOGIC;
	           mem_enable : out  STD_LOGIC;
	           wb_src : out  STD_LOGIC_VECTOR (2 downto 0)
		 );
	end component;
	
	signal read_reg1_tmp, read_reg2_tmp: STD_LOGIC_VECTOR(3 downto 0);
	signal immediate_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal read_data1_tmp, read_data2_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal operand1_src_tmp: STD_LOGIC;
	signal operand2_src_tmp: STD_LOGIC_VECTOR(1 downto 0);

begin 

	controller_imp: controller
	port map(
		instruction => instruction_in,
		branch_type => branch_type_out,
		is_branch => is_branch_out,
		is_jump => is_jump_out,
		operand1_src => operand1_src_tmp,
		operand2_src => operand2_src_tmp,
		op_code => op_code_out,
		reg_write_enable => reg_write_enable_out,
		out_mem_write => mem_write_out,
		out_mem_read => mem_read_out,
		mem_enable => mem_enable_out,
		wb_src => wb_src_out
	);

	decoder_imp: decoder 
	port map(
		instruction => instruction_in,
		read_reg_1 => read_reg1_tmp,
		read_reg_2 => read_reg2_tmp,
		immediate => immediate_tmp,
		write_back_reg => write_back_reg_out
	);

	registers_imp: registers 
	port map(
		read_reg1 => read_reg1_tmp,
		read_reg2 => read_reg2_tmp,
		write_reg => write_back_reg_in,
		write_data => write_back_data_in,
		write_enable => reg_write_enable_in,
		forward_data1 => forward_data_1_in,
		forward_data2 => forward_data_2_in,
		is_hazard_1 => is_hazard_1_in,
		is_hazard_2 => is_hazard_2_in,
		read_data1 => read_data1_tmp,
		read_data2 => read_data2_tmp,
		clk => clk,
		rst => rst
	);

	cin_out <= '0';

	branch_target_out <= pc_in + immediate_tmp;

	jump_target_out <= pc_in + immediate_tmp when instruction_in(15 downto 11) = ib else read_data1_tmp;

	branch_relative_reg_data_out <= read_data1_tmp;
	
	pc_out <= pc_in;
	
	mem_data_from_reg_out <= read_data1_tmp;
	
	wb_data_from_reg_out <= read_data1_tmp;
	
	immediate_out <= immediate_tmp;

	process (read_data1_tmp, read_data2_tmp, operand1_src_tmp)
	begin
		case operand1_src_tmp is 
			when from_reg_1 => 
				operand1_out <= read_data1_tmp;
			when others =>
				operand1_out <= read_data2_tmp;
		end case;
	end process;

	process (read_data1_tmp, read_data2_tmp, immediate_tmp, operand2_src_tmp)
	begin
		case operand2_src_tmp is 
			when operand2_from_reg_1 => 
				operand2_out <= read_data1_tmp;
			when operand2_from_reg_2 => 
				operand2_out <= read_data2_tmp;
			when others => 
				operand2_out <= immediate_tmp;
		end case;
	end process;

end Behavioral;

