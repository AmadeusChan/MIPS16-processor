--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:53:11 11/25/2017
-- Design Name:   
-- Module Name:   D:/yi__c/MIPS16-processor/processor/test/test_DM.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DM
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
 
ENTITY test_DM IS
END test_DM;
 
ARCHITECTURE behavior OF test_DM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DM
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         data_ready : IN  std_logic;
         tbre : IN  std_logic;
         tsre : IN  std_logic;
         rdn : OUT  std_logic;
         wrn : OUT  std_logic;
         Ram1OE : OUT  std_logic;
         Ram1WE : OUT  std_logic;
         Ram1EN : OUT  std_logic;
         Ram1Addr : OUT  std_logic_vector(17 downto 0);
         Ram1Data : INOUT  std_logic_vector(15 downto 0);
         MemEN : IN  std_logic;
         MemRead : IN  std_logic;
         MemWrite : IN  std_logic;
         AddrIn : IN  std_logic_vector(15 downto 0);
         DataIn : IN  std_logic_vector(15 downto 0);
         DataOut : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal data_ready : std_logic := '0';
   signal tbre : std_logic := '0';
   signal tsre : std_logic := '0';
   signal MemEN : std_logic := '0';
   signal MemRead : std_logic := '0';
   signal MemWrite : std_logic := '0';
   signal AddrIn : std_logic_vector(15 downto 0) := (others => '0');
   signal DataIn : std_logic_vector(15 downto 0) := (others => '0');

	--BiDirs
   signal Ram1Data : std_logic_vector(15 downto 0);

 	--Outputs
   signal rdn : std_logic;
   signal wrn : std_logic;
   signal Ram1OE : std_logic;
   signal Ram1WE : std_logic;
   signal Ram1EN : std_logic;
   signal Ram1Addr : std_logic_vector(17 downto 0);
   signal DataOut : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DM PORT MAP (
          clk => clk,
          rst => rst,
          data_ready => data_ready,
          tbre => tbre,
          tsre => tsre,
          rdn => rdn,
          wrn => wrn,
          Ram1OE => Ram1OE,
          Ram1WE => Ram1WE,
          Ram1EN => Ram1EN,
          Ram1Addr => Ram1Addr,
          Ram1Data => Ram1Data,
          MemEN => MemEN,
          MemRead => MemRead,
          MemWrite => MemWrite,
          AddrIn => AddrIn,
          DataIn => DataIn,
          DataOut => DataOut
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
      wait for 100 ns;	
		
		rst <= '1';
      wait for clk_period;
		
		MemEN <= '1';
		MemWrite <= '1';
		MemRead <= '0';
		AddrIn <= x"BF00";
		DataIn <= x"1234";
      wait for clk_period;
		
		AddrIn <= x"0100";
		DataIn <= x"5678";
      wait for clk_period;
		
		MemEN <= '0';
		AddrIn <= x"0010";
		DataIn <= x"4321";
		wait for clk_period;
		
		rst <= '1';
      wait for clk_period;
		
		MemEN <= '1';
		MemWrite <= '0';
		MemRead <= '1';
		data_ready <= '1';
		tsre <= '1';
		tbre <= '1';
		AddrIn <= x"BF01";
		wait for clk_period;
		
		AddrIn <= x"BF00";
		Ram1Data <= x"00FF";
		wait for clk_period;
		
		AddrIn <= x"0100";
		wait for clk_period;
		
		MemEN <= '0';
		AddrIn <= x"0010";
		wait for clk_period;
		
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
