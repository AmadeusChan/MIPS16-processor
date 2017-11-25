--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:24:19 11/25/2017
-- Design Name:   
-- Module Name:   D:/yi__c/MIPS16-processor/processor/test/test_IM.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IM
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
 
ENTITY test_IM IS
END test_IM;
 
ARCHITECTURE behavior OF test_IM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IM
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         Ram2OE : OUT  std_logic;
         Ram2WE : OUT  std_logic;
         Ram2EN : OUT  std_logic;
         Ram2Addr : OUT  std_logic_vector(17 downto 0);
         Ram2Data : INOUT  std_logic_vector(15 downto 0);
         MemEN : IN  std_logic;
         MemRead : IN  std_logic;
         MemWrite : IN  std_logic;
         PCIn : IN  std_logic_vector(15 downto 0);
         AddrIn : IN  std_logic_vector(15 downto 0);
         InstIn : IN  std_logic_vector(15 downto 0);
         InstOut : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal MemEN : std_logic := '0';
   signal MemRead : std_logic := '0';
   signal MemWrite : std_logic := '0';
   signal PCIn : std_logic_vector(15 downto 0) := (others => '0');
   signal AddrIn : std_logic_vector(15 downto 0) := (others => '0');
   signal InstIn : std_logic_vector(15 downto 0) := (others => '0');

	--BiDirs
   signal Ram2Data : std_logic_vector(15 downto 0);

 	--Outputs
   signal Ram2OE : std_logic;
   signal Ram2WE : std_logic;
   signal Ram2EN : std_logic;
   signal Ram2Addr : std_logic_vector(17 downto 0);
   signal InstOut : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IM PORT MAP (
          clk => clk,
          rst => rst,
          Ram2OE => Ram2OE,
          Ram2WE => Ram2WE,
          Ram2EN => Ram2EN,
          Ram2Addr => Ram2Addr,
          Ram2Data => Ram2Data,
          MemEN => MemEN,
          MemRead => MemRead,
          MemWrite => MemWrite,
          PCIn => PCIn,
          AddrIn => AddrIn,
          InstIn => InstIn,
          InstOut => InstOut
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		rst <= '1';
      wait for clk_period;
		
		MemEN <= '1';
		MemWrite <= '1';
		MemRead <= '0';
		AddrIn <= x"1234";
		InstIn <= x"0800";
		wait for clk_period;
		
		MemEN <= '0';
		AddrIn <= x"4321";
		wait for clk_period;
		
		rst <= '1';
      wait for clk_period;
		
		MemEN <= '1';
		MemWrite <= '0';
		MemRead <= '1';
		PCIn <= x"1234";
		wait for clk_period;
		
		MemEN <= '0';
		PCIn <= x"4321";
		wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
