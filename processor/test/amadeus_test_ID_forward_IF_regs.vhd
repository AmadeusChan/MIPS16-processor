--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:16 12/06/2017
-- Design Name:   
-- Module Name:   Z:/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/test/amadeus_test_ID_forward_IF_regs.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ID_forward_IF_regs
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY amadeus_test_ID_forward_IF_regs IS
END amadeus_test_ID_forward_IF_regs;
 
ARCHITECTURE behavior OF amadeus_test_ID_forward_IF_regs IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ID_forward_IF_regs
    PORT(
         bubble : IN  std_logic;
         stall : IN  std_logic;
         branch_target_in : IN  std_logic_vector(15 downto 0);
         jump_target_in : IN  std_logic_vector(15 downto 0);
         is_jump_in : IN  std_logic;
         is_branch_in : IN  std_logic;
         branch_type_in : IN  std_logic;
         branch_relative_reg_data_in : IN  std_logic_vector(15 downto 0);
         branch_target_out : buffer  std_logic_vector(15 downto 0);
         jump_target_out : buffer  std_logic_vector(15 downto 0);
         is_jump_out :buffer  std_logic;
         is_branch_out : buffer std_logic;
         branch_type_out : buffer  std_logic;
         branch_relative_reg_data_out : buffer std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal bubble : std_logic := '0';
   signal stall : std_logic := '0';
   signal branch_target_in : std_logic_vector(15 downto 0) := (others => '0');
   signal jump_target_in : std_logic_vector(15 downto 0) := (others => '0');
   signal is_jump_in : std_logic := '0';
   signal is_branch_in : std_logic := '0';
   signal branch_type_in : std_logic := '0';
   signal branch_relative_reg_data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '1';

 	--Outputs
   signal branch_target_out : std_logic_vector(15 downto 0);
   signal jump_target_out : std_logic_vector(15 downto 0);
   signal is_jump_out : std_logic;
   signal is_branch_out : std_logic;
   signal branch_type_out : std_logic;
   signal branch_relative_reg_data_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ID_forward_IF_regs PORT MAP (
          bubble => bubble,
          stall => stall,
          branch_target_in => branch_target_in,
          jump_target_in => jump_target_in,
          is_jump_in => is_jump_in,
          is_branch_in => is_branch_in,
          branch_type_in => branch_type_in,
          branch_relative_reg_data_in => branch_relative_reg_data_in,
          branch_target_out => branch_target_out,
          jump_target_out => jump_target_out,
          is_jump_out => is_jump_out,
          is_branch_out => is_branch_out,
          branch_type_out => branch_type_out,
          branch_relative_reg_data_out => branch_relative_reg_data_out,
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

      wait for clk_period*10;
		
		is_jump_in <= '1';
		
		wait for 1ns;
		
		
		stall <= '1';
		wait for 9ns;
		
		is_jump_in <= '0';
		stall <= '0';
		
		
		
      wait;
   end process;

END;
