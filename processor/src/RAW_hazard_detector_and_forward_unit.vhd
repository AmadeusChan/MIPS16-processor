----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:14:30 11/23/2017 
-- Design Name: 
-- Module Name:    RAW_hazard_detector_and_forward_unit - Behavioral 
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

library work;
use work.constants.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAW_hazard_detector_and_forward_unit is
    Port ( wb_reg_write_enable : in  STD_LOGIC;
           mem_reg_write_enable : in  STD_LOGIC;
           alu_reg_write_enable : in  STD_LOGIC;

           wb_write_back_reg : in  STD_LOGIC_VECTOR (3 downto 0);
           mem_write_back_reg : in  STD_LOGIC_VECTOR (3 downto 0);
           alu_write_back_reg : in  STD_LOGIC_VECTOR (3 downto 0);

           wb_write_back_data : in  STD_LOGIC_VECTOR (15 downto 0);
           mem_write_back_data : in  STD_LOGIC_VECTOR (15 downto 0);
           alu_write_back_data : in  STD_LOGIC_VECTOR (15 downto 0);

           read_reg_1 : in  STD_LOGIC_VECTOR (3 downto 0);
           read_reg_2 : in  STD_LOGIC_VECTOR (3 downto 0);

    	   -- useless
           -- is_ual_hazard_1 : in  STD_LOGIC;
           -- is_ual_hazard_2 : in  STD_LOGIC;

           is_hazard_1 : out  STD_LOGIC;
           is_hazard_2 : out  STD_LOGIC;

           forward_data_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           forward_data_2 : out  STD_LOGIC_VECTOR (15 downto 0));
end RAW_hazard_detector_and_forward_unit;

architecture Behavioral of RAW_hazard_detector_and_forward_unit is
	
	signal is_hazard_1_from_alu, is_hazard_1_from_mem, is_hazard_1_from_wb: STD_LOGIC;
	signal is_hazard_2_from_alu, is_hazard_2_from_mem, is_hazard_2_from_wb: STD_LOGIC;

begin

	is_hazard_1_from_alu <= '1' when (alu_reg_write_enable = enable and alu_write_back_reg = read_reg_1) else '0';
	is_hazard_2_from_alu <= '1' when (alu_reg_write_enable = enable and alu_write_back_reg = read_reg_2) else '0';

	is_hazard_1_from_mem <= '1' when (mem_reg_write_enable = enable and mem_write_back_reg = read_reg_1) else '0';
	is_hazard_2_from_mem <= '1' when (mem_reg_write_enable = enable and mem_write_back_reg = read_reg_2) else '0';

	is_hazard_1_from_wb <= '1' when (wb_reg_write_enable = enable and wb_write_back_reg = read_reg_1) else '0';
	is_hazard_2_from_wb <= '1' when (wb_reg_write_enable = enable and wb_write_back_reg = read_reg_2) else '0';

	forward_data_1 <= alu_write_back_data when is_hazard_1_from_alu = '1' else 
			  mem_write_back_data when is_hazard_1_from_mem = '1' else
			  wb_write_back_data when is_hazard_1_from_wb = '1' else 
			  (others => '0');
	forward_data_2 <= alu_write_back_data when is_hazard_2_from_alu = '1' else 
			  mem_write_back_data when is_hazard_2_from_mem = '1' else
			  wb_write_back_data when is_hazard_2_from_wb = '1' else 
			  (others => '0');
	is_hazard_1 <= '1' when (is_hazard_1_from_alu = '1' or is_hazard_1_from_wb = '1' or is_hazard_1_from_mem = '1') else '0';
	is_hazard_2 <= '1' when (is_hazard_2_from_alu = '1' or is_hazard_2_from_wb = '1' or is_hazard_2_from_mem = '1') else '0';

end Behavioral;

