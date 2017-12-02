--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:21:53 12/02/2017
-- Design Name:   
-- Module Name:   C:/Users/cslab/Downloads/MIPS16-processor-master/processor/test_VGA.vhd
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
 
ENTITY test_VGA IS

    PORT(
         Reset : IN  std_logic;
         Clock : IN  std_logic;
         hs : OUT  std_logic;
         vs : OUT  std_logic;
         r : OUT  std_logic_vector(2 downto 0);
         g : OUT  std_logic_vector(2 downto 0);
         b : OUT  std_logic_vector(2 downto 0)
        );

END test_VGA;
 
ARCHITECTURE behavior OF test_VGA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	 
 	 signal writeData : std_logic_vector(7 downto 0) := "00001000";
    signal writeEN : std_logic;
    signal writeAddress : std_logic_vector(11 downto 0):="000000000000";
 
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
    


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGATop PORT MAP (
          Reset => Reset,
          Clock => Clock,
          WriteEN => writeEN,
          WriteAddress => writeAddress,
          WriteData => writeData,
          Hs => hs,
          Vs => vs,
          R => r,
          G => g,
          B => b
        );
		  
	process(Clock, Reset)
	begin
		WriteEN <= '1';
		writeData <= "10000000";
	
	end process;


END;
