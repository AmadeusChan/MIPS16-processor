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
           wb_src_in : in  STD_LOGIC_VECTOR (2 downto 0);		--write back源地址，见constant.vhd说明，"111"时没有源
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

	process(clk, rst)
	begin
		
		if (rst = '0') then
			pc_out <= (others => '0');
			wb_src_out <= (others => '1');
			mem_data_from_reg_out <= (others => '0');
			wb_data_from_reg_out <= (others => '0');
			immediate_out <= (others => '0');
			write_back_reg_out <= (others => '0');
			reg_write_enable_out <= '0';
			op_code_out <= (others => '0');
			operand1_out <= (others => '0');
			operand2_out <= (others => '0');
			cin_out <= (others => '0');
			mem_enable_out <= '0';
			mem_read_out <= '0';
			mem_write_out <= '0';
		elsif (clk'event and clk = '1') then
			if (stall = '1') then
				null;
			elsif (bubble = '1') then
				pc_out <= (others => '0');
				wb_src_out <= (others => '1');
				mem_data_from_reg_out <= (others => '0');
				wb_data_from_reg_out <= (others => '0');
				immediate_out <= (others => '0');
				write_back_reg_out <= (others => '0');
				reg_write_enable_out <= '0';
				op_code_out <= (others => '0');
				operand1_out <= (others => '0');
				operand2_out <= (others => '0');
				cin_out <= (others => '0');
				mem_enable_out <= '0';
				mem_read_out <= '0';
				mem_write_out <= '0';
			else
				pc_out <= pc_in;
				wb_src_out <= wb_src_in;
				mem_data_from_reg_out <= mem_data_from_reg_in;
				wb_data_from_reg_out <= wb_data_from_reg_in;
				immediate_out <= immediate_in;
				write_back_reg_out <= write_back_reg_in;
				reg_write_enable_out <= reg_write_enable_in;
				op_code_out <= op_code_in;
				operand1_out <= operand1_in;
				operand2_out <= operand2_in;
				cin_out <= cin_in;
				mem_enable_out <= mem_enable_in;
				mem_read_out <= mem_read_in;
				mem_write_out <= mem_write_in;
			end if;
		end if;
		
	end process;

end Behavioral;

