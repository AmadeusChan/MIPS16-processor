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
		
		-- addiu
		instruction <= "0111100001000000";
		wait for 20ns;
		
		-- addiu3
		instruction <= "0100000101001010";
		wait for 20ns;
		
		-- addsp3
		instruction <= "0000011101010101";
		wait for 20ns;
		
		-- addsp
		instruction <= "0110001110100101";
		wait for 20ns;
		
		-- addu
		instruction <= "1110000101011001";
		wait for 20ns;
		
		-- and
		instruction <= "1110110101001100";
		wait for 20ns;
		
		-- b
		instruction <= "0001001011010101";
		wait for 20ns;
		
		-- beqz
		instruction <= "0010001000000001";
		wait for 20ns;
		
		-- bnez
		instruction <= "0010110010010011";
		wait for 20ns;
		
		-- bteqz
		instruction <= "0110000010101010";
		wait for 20ns;
		
		-- btnez
		instruction <= "0110000110100101";
		wait for 20ns;
		
		-- cmp
		instruction <= "1110101111001010";
		wait for 20ns;
		
		-- jr
		instruction <= "1110111000000000";
		wait for 20ns;
		
		-- li
		instruction <= "0110110111100011";
		wait for 20ns;
		
		-- lw
		instruction <= "1001110110101010";
		wait for 20ns;
		
		-- lw_sp
		instruction <= "1001010010010000";
		wait for 20ns;
		
		-- mfih
		instruction <= "1111011100000000";
		wait for 20ns;
		
		-- mfpc
		instruction <= "1110101101000000";
		wait for 20ns;
		
		-- move
		instruction <= "0111101111000000";
		wait for 20ns;
		
		--mtih
		instruction <= "1111001100000001";
		wait for 20ns;
		
		-- mtsp
		instruction <= "0110010010000000";
		wait for 20ns;
		
		-- nop
		instruction <= "0000100000000000";
		wait for 20ns;

		-- or
		instruction <= "1110101111001101";
		wait for 20ns;
		
		-- sll
		instruction <= "0011011110100000";
		wait for 20ns;
		
		-- sllv
		instruction <= "1110101001100100";
		wait for 20ns;
		
		-- sra
		instruction <= "0011001101100011";
		wait for 20ns;
		
		-- subu
		instruction <= "1110011011011011";
		wait for 20ns;
		
		-- sw
		instruction <= "1101111011100000";
		wait for 20ns;
		
		-- sw_rs
		instruction <= "0110001010101010";
		wait for 20ns;
		
		-- sw_sp
		instruction <= "1101001101101100";
		wait for 20ns;

      -- insert stimulus here 

      wait;
   end process;

END;
