--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:22 11/25/2017
-- Design Name:   
-- Module Name:   D:/yi__c/MIPS16-processor/processor/test/test_ALU_MEM_regs.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_MEM_regs
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
 
ENTITY test_ALU_MEM_regs IS
END test_ALU_MEM_regs;
 
ARCHITECTURE behavior OF test_ALU_MEM_regs IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_MEM_regs
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         bubble : IN  std_logic;
         stall : IN  std_logic;
         write_back_data_in : IN  std_logic_vector(15 downto 0);
         write_back_data_out : OUT  std_logic_vector(15 downto 0);
         write_back_reg_in : IN  std_logic_vector(15 downto 0);
         write_back_reg_out : OUT  std_logic_vector(15 downto 0);
         reg_write_enable_in : IN  std_logic;
         reg_write_enable_out : OUT  std_logic;
         mem_data_in : IN  std_logic_vector(15 downto 0);
         mem_data_out : OUT  std_logic_vector(15 downto 0);
         mem_address_in : IN  std_logic_vector(15 downto 0);
         mem_address_out : OUT  std_logic_vector(15 downto 0);
         mem_enable_in : IN  std_logic;
         mem_enable_out : OUT  std_logic;
         mem_read_in : IN  std_logic;
         mem_read_out : OUT  std_logic;
         mem_write_in : IN  std_logic;
         mem_write_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal bubble : std_logic := '0';
   signal stall : std_logic := '0';
   signal write_back_data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal write_back_reg_in : std_logic_vector(15 downto 0) := (others => '0');
   signal reg_write_enable_in : std_logic := '0';
   signal mem_data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal mem_address_in : std_logic_vector(15 downto 0) := (others => '0');
   signal mem_enable_in : std_logic := '0';
   signal mem_read_in : std_logic := '0';
   signal mem_write_in : std_logic := '0';

 	--Outputs
   signal write_back_data_out : std_logic_vector(15 downto 0);
   signal write_back_reg_out : std_logic_vector(15 downto 0);
   signal reg_write_enable_out : std_logic;
   signal mem_data_out : std_logic_vector(15 downto 0);
   signal mem_address_out : std_logic_vector(15 downto 0);
   signal mem_enable_out : std_logic;
   signal mem_read_out : std_logic;
   signal mem_write_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_MEM_regs PORT MAP (
          clk => clk,
          rst => rst,
          bubble => bubble,
          stall => stall,
          write_back_data_in => write_back_data_in,
          write_back_data_out => write_back_data_out,
          write_back_reg_in => write_back_reg_in,
          write_back_reg_out => write_back_reg_out,
          reg_write_enable_in => reg_write_enable_in,
          reg_write_enable_out => reg_write_enable_out,
          mem_data_in => mem_data_in,
          mem_data_out => mem_data_out,
          mem_address_in => mem_address_in,
          mem_address_out => mem_address_out,
          mem_enable_in => mem_enable_in,
          mem_enable_out => mem_enable_out,
          mem_read_in => mem_read_in,
          mem_read_out => mem_read_out,
          mem_write_in => mem_write_in,
          mem_write_out => mem_write_out
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
		
		write_back_data_in <= (others => '1');
		write_back_reg_in <= (others => '1');
		reg_write_enable_in <= '1';
		mem_data_in <= (others => '1');
		mem_address_in <= (others => '1');
		mem_enable_in <= '1';
		mem_read_in <= '1';
		mem_write_in <= '1';
      wait for clk_period;
		
		bubble <= '1';
		wait for clk_period;
		
		bubble <= '0';
		stall <= '1';
		wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
