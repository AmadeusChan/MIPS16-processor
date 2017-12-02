--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:53:50 11/25/2017
-- Design Name:   
-- Module Name:   Z:/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/test/test_RAW_hazard_detector_and_forward_unit.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAW_hazard_detector_and_forward_unit
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
 
ENTITY test_RAW_hazard_detector_and_forward_unit IS
END test_RAW_hazard_detector_and_forward_unit;
 
ARCHITECTURE behavior OF test_RAW_hazard_detector_and_forward_unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAW_hazard_detector_and_forward_unit
    PORT(
         wb_reg_write_enable : IN  std_logic;
         mem_reg_write_enable : IN  std_logic;
         alu_reg_write_enable : IN  std_logic;
         wb_write_back_reg : IN  std_logic_vector(3 downto 0);
         mem_write_back_reg : IN  std_logic_vector(3 downto 0);
         alu_write_back_reg : IN  std_logic_vector(3 downto 0);
         wb_write_back_data : IN  std_logic_vector(15 downto 0);
         mem_write_back_data : IN  std_logic_vector(15 downto 0);
         alu_write_back_data : IN  std_logic_vector(15 downto 0);
         read_reg_1 : IN  std_logic_vector(3 downto 0);
         read_reg_2 : IN  std_logic_vector(3 downto 0);
         is_hazard_1 : OUT  std_logic;
         is_hazard_2 : OUT  std_logic;
         forward_data_1 : OUT  std_logic_vector(15 downto 0);
         forward_data_2 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal wb_reg_write_enable : std_logic := '0';
   signal mem_reg_write_enable : std_logic := '0';
   signal alu_reg_write_enable : std_logic := '0';
   signal wb_write_back_reg : std_logic_vector(3 downto 0) := (others => '0');
   signal mem_write_back_reg : std_logic_vector(3 downto 0) := (others => '0');
   signal alu_write_back_reg : std_logic_vector(3 downto 0) := (others => '0');
   signal wb_write_back_data : std_logic_vector(15 downto 0) := (others => '0');
   signal mem_write_back_data : std_logic_vector(15 downto 0) := (others => '0');
   signal alu_write_back_data : std_logic_vector(15 downto 0) := (others => '0');
   signal read_reg_1 : std_logic_vector(3 downto 0) := (others => '0');
   signal read_reg_2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal is_hazard_1 : std_logic;
   signal is_hazard_2 : std_logic;
   signal forward_data_1 : std_logic_vector(15 downto 0);
   signal forward_data_2 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAW_hazard_detector_and_forward_unit PORT MAP (
          wb_reg_write_enable => wb_reg_write_enable,
          mem_reg_write_enable => mem_reg_write_enable,
          alu_reg_write_enable => alu_reg_write_enable,
          wb_write_back_reg => wb_write_back_reg,
          mem_write_back_reg => mem_write_back_reg,
          alu_write_back_reg => alu_write_back_reg,
          wb_write_back_data => wb_write_back_data,
          mem_write_back_data => mem_write_back_data,
          alu_write_back_data => alu_write_back_data,
          read_reg_1 => read_reg_1,
          read_reg_2 => read_reg_2,
          is_hazard_1 => is_hazard_1,
          is_hazard_2 => is_hazard_2,
          forward_data_1 => forward_data_1,
          forward_data_2 => forward_data_2
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;	
		
		alu_write_back_data <= "0000000000000001";
		mem_write_back_data <= "0000000000000010";
		wb_write_back_data <= "0000000000000011";
		
		wb_reg_write_enable <= '1';
		alu_reg_write_enable <= '1';
		mem_reg_write_enable <= '1';
		read_reg_1 <= "0101";
		read_reg_2 <= "0111";
		mem_write_back_reg <= "0111";
		alu_write_back_reg <= "0101";
		wb_write_back_reg <= "0101";
		
		wait for 10ns;
		
		alu_reg_write_enable <= '0';
		
		wait for 10ns;
		
		mem_reg_write_enable <= '0';
		
		wait for 10ns;
		
		wb_write_back_data <= "1000000000000111";
		
      -- insert stimulus here 

      wait;
   end process;

END;
