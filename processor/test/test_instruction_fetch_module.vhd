--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:38:31 11/25/2017
-- Design Name:   
-- Module Name:   D:/yi__c/MIPS16-processor/processor/test/test_instruction_fetch_module.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: instruction_fetch_module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
library work;
use work.constants.all; 
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_instruction_fetch_module IS
END test_instruction_fetch_module;
 
ARCHITECTURE behavior OF test_instruction_fetch_module IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT instruction_fetch_module
    PORT(
         ram2_addr_out : OUT  std_logic_vector(17 downto 0);
         ram2_data_out : INOUT  std_logic_vector(15 downto 0);
         ram2_oe_out : OUT  std_logic;
         ram2_we_out : OUT  std_logic;
         ram2_en_out : OUT  std_logic;
         is_structural_hazard_in : IN  std_logic;
         is_ual_hazard_in : IN  std_logic;
         ram2_we_in : IN  std_logic;
         ram2_oe_in : IN  std_logic;
         branch_type_in : IN  std_logic;
         is_branch_in : IN  std_logic;
         is_jump_in : IN  std_logic;
         branch_relative_reg_data_in : IN  std_logic_vector(15 downto 0);
         branch_target_in : IN  std_logic_vector(15 downto 0);
         jump_target_in : IN  std_logic_vector(15 downto 0);
         instruction_out : OUT  std_logic_vector(15 downto 0);
         pc_out : BUFFER  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal is_structural_hazard_in : std_logic := '0';
   signal is_ual_hazard_in : std_logic := '0';
   signal ram2_we_in : std_logic := '0';
   signal ram2_oe_in : std_logic := '0';
   signal branch_type_in : std_logic := '0';
   signal is_branch_in : std_logic := '0';
   signal is_jump_in : std_logic := '0';
   signal branch_relative_reg_data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal branch_target_in : std_logic_vector(15 downto 0) := (others => '0');
   signal jump_target_in : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

	--BiDirs
   signal ram2_data_out : std_logic_vector(15 downto 0);

 	--Outputs
   signal ram2_addr_out : std_logic_vector(17 downto 0);
   signal ram2_oe_out : std_logic;
   signal ram2_we_out : std_logic;
   signal ram2_en_out : std_logic;
   signal instruction_out : std_logic_vector(15 downto 0);
   signal pc_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instruction_fetch_module PORT MAP (
          ram2_addr_out => ram2_addr_out,
          ram2_data_out => ram2_data_out,
          ram2_oe_out => ram2_oe_out,
          ram2_we_out => ram2_we_out,
          ram2_en_out => ram2_en_out,
          is_structural_hazard_in => is_structural_hazard_in,
          is_ual_hazard_in => is_ual_hazard_in,
          ram2_we_in => ram2_we_in,
          ram2_oe_in => ram2_oe_in,
          branch_type_in => branch_type_in,
          is_branch_in => is_branch_in,
          is_jump_in => is_jump_in,
          branch_relative_reg_data_in => branch_relative_reg_data_in,
          branch_target_in => branch_target_in,
          jump_target_in => jump_target_in,
          instruction_out => instruction_out,
          pc_out => pc_out,
          clk => clk,
          rst => rst
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;

		rst <= '1';
      wait for clk_period;

      is_jump_in <= '1';
		jump_target_in <= x"1234";
		wait for clk_period;
		
		is_jump_in <= '0';
		is_branch_in <= '1';
		branch_target_in <= x"4321";
		branch_type_in <= equal_branch;
		branch_relative_reg_data_in <= x"0001";
		wait for clk_period;
		
		branch_relative_reg_data_in <= x"0000";
		wait for clk_period;
		
		branch_target_in <= x"5678";
		branch_type_in <= not_equal_branch;
		branch_relative_reg_data_in <= x"0001";
		wait for clk_period;
		
		branch_target_in <= x"8765";
		is_structural_hazard_in <= '1';
		wait for clk_period;
		
		is_branch_in <= '0';
		is_structural_hazard_in <= '0';
		wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
