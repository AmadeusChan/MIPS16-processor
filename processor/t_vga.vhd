--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:08:40 12/02/2017
-- Design Name:   
-- Module Name:   C:/Users/cslab/Downloads/MIPS16-processor-master/processor/t_vga.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGATop
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
 
ENTITY t_vga IS
END t_vga;
 
ARCHITECTURE behavior OF t_vga IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGATop
    PORT(
         Reset : IN  std_logic;
         Clock : IN  std_logic;
         WriteEN : IN  std_logic;
         WriteAddress : IN  std_logic_vector(11 downto 0);
         WriteData : IN  std_logic_vector(7 downto 0);
         Hs : OUT  std_logic;
         Vs : OUT  std_logic;
         R : OUT  std_logic_vector(2 downto 0);
         G : OUT  std_logic_vector(2 downto 0);
         B : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clock : std_logic := '0';
   signal WriteEN : std_logic := '0';
   signal WriteAddress : std_logic_vector(11 downto 0) := (others => '0');
   signal WriteData : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Hs : std_logic;
   signal Vs : std_logic;
   signal R : std_logic_vector(2 downto 0):="111";
   signal G : std_logic_vector(2 downto 0):="111";
   signal B : std_logic_vector(2 downto 0):="111";

   -- Clock period definitions
   constant Clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGATop PORT MAP (
          Reset => Reset,
          Clock => Clock,
          WriteEN => WriteEN,
          WriteAddress => WriteAddress,
          WriteData => WriteData,
          Hs => Hs,
          Vs => Vs,
          R => R,
          G => G,
          B => B
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		--Reset <= '1';
		wait for Clock_period/2;
		Clock <= '1';
		--Reset <= '0';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		
		wait for 100ns;

		Reset <= '1';
		wait for 100 ns;
		Reset <= '0';
		wait for 200 ns;
		Reset <= '1';

      wait for Clock_period;
		
		writeData <= "00000001";
		wait for Clock_period;
		
		WriteEn <= '1';
		writeData <= "00000011";
		wait for Clock_period;

		writeData <= "10000000";
		wait for Clock_period;

      wait for Clock_period;

      -- insert stimulus here 

      wait;
   end process;

END;
