--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:52:33 12/02/2017
-- Design Name:   
-- Module Name:   C:/Users/cslab/Downloads/MIPS16-processor-master/processor/test_vgainstance.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA
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
 
ENTITY test_vgainstance IS
END test_vgainstance;
 
ARCHITECTURE behavior OF test_vgainstance IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA
    PORT(
         Reset : IN  std_logic;
         Clock50 : IN  std_logic;
         Hs : OUT  std_logic;
         Vs : OUT  std_logic;
         R : OUT  std_logic_vector(2 downto 0);
         G : OUT  std_logic_vector(2 downto 0);
         B : OUT  std_logic_vector(2 downto 0);
         PixelX : OUT  std_logic_vector(9 downto 0);
         PixelY : OUT  std_logic_vector(8 downto 0);
         Pixel : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clock50 : std_logic := '0';
   signal Pixel : std_logic := '0';

 	--Outputs
   signal Hs : std_logic;
   signal Vs : std_logic;
   signal R : std_logic_vector(2 downto 0);
   signal G : std_logic_vector(2 downto 0);
   signal B : std_logic_vector(2 downto 0);
   signal PixelX : std_logic_vector(9 downto 0);
   signal PixelY : std_logic_vector(8 downto 0);

   -- Clock period definitions
   constant Clock50_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA PORT MAP (
          Reset => Reset,
          Clock50 => Clock50,
          Hs => Hs,
          Vs => Vs,
          R => R,
          G => G,
          B => B,
          PixelX => PixelX,
          PixelY => PixelY,
          Pixel => Pixel
        );

   -- Clock process definitions
   Clock50_process :process
   begin
		Clock50 <= '0';
		Reset <= '1';
		wait for Clock50_period/2;
		Clock50 <= '1';
		Reset <= '0';
		wait for Clock50_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		Pixel <= '1';

      wait for Clock50_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
