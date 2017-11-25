--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:55:40 11/25/2017
-- Design Name:   
-- Module Name:   Z:/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/test/test_decoder.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY test_decoder IS
END test_decoder;
 
ARCHITECTURE behavior OF test_decoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         instruction : IN  std_logic_vector(15 downto 0);
         read_reg_1 : OUT  std_logic_vector(3 downto 0);
         read_reg_2 : OUT  std_logic_vector(3 downto 0);
         immediate : OUT  std_logic_vector(15 downto 0);
         write_back_reg : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal instruction : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal read_reg_1 : std_logic_vector(3 downto 0);
   signal read_reg_2 : std_logic_vector(3 downto 0);
   signal immediate : std_logic_vector(15 downto 0);
   signal write_back_reg : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          instruction => instruction,
          read_reg_1 => read_reg_1,
          read_reg_2 => read_reg_2,
          immediate => immediate,
          write_back_reg => write_back_reg
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;	
		instruction <= "0100111010101010";

      -- insert stimulus here 

      wait;
   end process;

END;
