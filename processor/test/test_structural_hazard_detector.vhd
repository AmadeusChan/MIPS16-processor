--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:48:01 11/24/2017
-- Design Name:   
-- Module Name:   Z:/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/test/test_structural_hazard_detector.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: structural_hazard_detector
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
 
ENTITY test_structural_hazard_detector IS
END test_structural_hazard_detector;
 
ARCHITECTURE behavior OF test_structural_hazard_detector IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT structural_hazard_detector
    PORT(
         mem_write_in : IN  std_logic;
         mem_address_in : IN  std_logic_vector(15 downto 0);
         mem_data_in : IN  std_logic_vector(15 downto 0);
         is_hazard : OUT  std_logic;
         ram2_oe : OUT  std_logic;
         ram2_we : OUT  std_logic;
         ram2_in_data : OUT  std_logic_vector(15 downto 0);
         ram2_in_address : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mem_write_in : std_logic := '0';
   signal mem_address_in : std_logic_vector(15 downto 0) := (others => '0');
   signal mem_data_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal is_hazard : std_logic;
   signal ram2_oe : std_logic;
   signal ram2_we : std_logic;
   signal ram2_in_data : std_logic_vector(15 downto 0);
   signal ram2_in_address : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: structural_hazard_detector PORT MAP (
          mem_write_in => mem_write_in,
          mem_address_in => mem_address_in,
          mem_data_in => mem_data_in,
          is_hazard => is_hazard,
          ram2_oe => ram2_oe,
          ram2_we => ram2_we,
          ram2_in_data => ram2_in_data,
          ram2_in_address => ram2_in_address
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		mem_address_in <=	(others => '0');
		mem_data_in <= (others => '1');
		
		wait for 20ns;
		
		mem_write_in <= '1';
		
		wait for 20ns;
		
		mem_address_in <= (others => '1');
		
		wait for 20ns;
		mem_address_in <= "0110110110111111";
		
		wait for 20ns;
		mem_write_in <= '0';
		
		wait for 20ns;
		mem_data_in <= "0101010101010101";

      wait;
   end process;

END;
