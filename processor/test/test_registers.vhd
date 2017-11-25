--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:39:26 11/24/2017
-- Design Name:   
-- Module Name:   Z:/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/test_registers.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registers
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
 
ENTITY test_registers IS
END test_registers;
 
ARCHITECTURE behavior OF test_registers IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registers
    PORT(
         read_reg1 : IN  std_logic_vector(3 downto 0);
         read_reg2 : IN  std_logic_vector(3 downto 0);
         write_reg : IN  std_logic_vector(3 downto 0);
         write_data : IN  std_logic_vector(15 downto 0);
         write_enable : IN  std_logic;
         forward_data1 : IN  std_logic_vector(15 downto 0);
         forward_data2 : IN  std_logic_vector(15 downto 0);
         is_hazard_1 : IN  std_logic;
         is_hazard_2 : IN  std_logic;
         read_data1 : OUT  std_logic_vector(15 downto 0);
         read_data2 : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal read_reg1 : std_logic_vector(3 downto 0) := "0001";
   signal read_reg2 : std_logic_vector(3 downto 0) := (others => '0');
   signal write_reg : std_logic_vector(3 downto 0) := (others => '0');
   signal write_data : std_logic_vector(15 downto 0) := (others => '0');
   signal write_enable : std_logic := '0';
   signal forward_data1 : std_logic_vector(15 downto 0) := (others => '0');
   signal forward_data2 : std_logic_vector(15 downto 0) := (others => '0');
   signal is_hazard_1 : std_logic := '0';
   signal is_hazard_2 : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal read_data1 : std_logic_vector(15 downto 0);
   signal read_data2 : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 30 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registers PORT MAP (
          read_reg1 => read_reg1,
          read_reg2 => read_reg2,
          write_reg => write_reg,
          write_data => write_data,
          write_enable => write_enable,
          forward_data1 => forward_data1,
          forward_data2 => forward_data2,
          is_hazard_1 => is_hazard_1,
          is_hazard_2 => is_hazard_2,
          read_data1 => read_data1,
          read_data2 => read_data2,
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
		
		rst <= '0';
		
      wait for 60 ns;	
		
		rst <= '1';

      wait for clk_period*2;
		
		write_enable <= '0';
		
		-- read reg R1
		read_reg1 <= "0001";
		
		wait for clk_period;
		
		-- read reg R3 with hazard
		read_reg2 <= "0011";
		
		wait for 10ns;
		is_hazard_2 <= '1';
		forward_data2 <= (others => '1');
		
		wait for clk_period;
		
		is_hazard_2 <= '0';
		
		-- write reg R5
		write_enable <= '1';
		read_reg1 <= "0101";
		write_reg <= "0101";
		write_data <= "0101010101010101";
		
		
		wait for clk_period;
		
		write_enable <= '1';
		write_reg <= "0000";
		write_data <= (others => '1');
		
		wait for clk_period;
		
		read_reg1 <= "0000";
		
		wait for clk_period;
		
		write_enable <= '0';
		read_reg2 <= "0000";

      -- insert stimulus here 

      wait;
   end process;

END;
