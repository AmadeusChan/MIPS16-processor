--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:45:48 11/24/2017
-- Design Name:   
-- Module Name:   Z:/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/test/test_UAL_hazard_detector.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UAL_hazard_detector
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
 
ENTITY test_UAL_hazard_detector IS
END test_UAL_hazard_detector;
 
ARCHITECTURE behavior OF test_UAL_hazard_detector IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UAL_hazard_detector
    PORT(
         read_reg1 : IN  std_logic_vector(3 downto 0);
         read_reg2 : IN  std_logic_vector(3 downto 0);
         write_back_reg : IN  std_logic_vector(3 downto 0);
         reg_write_enable : IN  std_logic;
         mem_read : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         --is_ual_hazard_1 : OUT  std_logic;
         --is_ual_hazard_2 : OUT  std_logic;
         bubble : OUT  std_logic;
         stall : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal read_reg1 : std_logic_vector(3 downto 0) := (others => '0');
   signal read_reg2 : std_logic_vector(3 downto 0) := (others => '0');
   signal write_back_reg : std_logic_vector(3 downto 0) := (others => '0');
   signal reg_write_enable : std_logic := '0';
   signal mem_read : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal is_ual_hazard_1 : std_logic;
   signal is_ual_hazard_2 : std_logic;
   signal bubble : std_logic;
   signal stall : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UAL_hazard_detector PORT MAP (
          read_reg1 => read_reg1,
          read_reg2 => read_reg2,
          write_back_reg => write_back_reg,
          reg_write_enable => reg_write_enable,
          mem_read => mem_read,
          clk => clk,
          rst => rst,
          --is_ual_hazard_1 => is_ual_hazard_1,
          --is_ual_hazard_2 => is_ual_hazard_2,
          bubble => bubble,
          stall => stall
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
		rst <= '0';
      wait for 100 ns;	
		rst <= '1';

      wait for clk_period*2;
		
		read_reg1 <= "0000";
		read_reg2 <= "0001";
		write_back_reg <= "0001";
		reg_write_enable <= '1';
		mem_read <= '1';
		
		wait for clk_period;
		
		mem_read <= '0';
		wait for 2 * clk_period;
		
		mem_read <= '1';
		write_back_Reg <= "0000";
		
		wait for 2 * clk_period;
		write_back_reg <= "0101";
		wait;
   end process;

END;
