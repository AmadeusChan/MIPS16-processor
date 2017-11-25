--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:29:11 11/25/2017
-- Design Name:   
-- Module Name:   D:/yi__c/MIPS16-processor/processor/test/test_IF_ID_regs.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IF_ID_regs
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
 
ENTITY test_IF_ID_regs IS
END test_IF_ID_regs;
 
ARCHITECTURE behavior OF test_IF_ID_regs IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IF_ID_regs
    PORT(
         bubble : IN  std_logic;
         stall : IN  std_logic;
         instruction_in : IN  std_logic_vector(15 downto 0);
         pc_in : IN  std_logic_vector(15 downto 0);
         instruction_out : OUT  std_logic_vector(15 downto 0);
         pc_out : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal bubble : std_logic := '0';
   signal stall : std_logic := '0';
   signal instruction_in : std_logic_vector(15 downto 0) := (others => '0');
   signal pc_in : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal instruction_out : std_logic_vector(15 downto 0);
   signal pc_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IF_ID_regs PORT MAP (
          bubble => bubble,
          stall => stall,
          instruction_in => instruction_in,
          pc_in => pc_in,
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
      
		instruction_in <= (others => '1');
		pc_in <= (others => '1');
      wait for clk_period;
		
		bubble <= '1';
		wait for clk_period;
		
		bubble <= '0';
		stall <= '1';
		wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
