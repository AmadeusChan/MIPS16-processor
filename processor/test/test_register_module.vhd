--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:36:43 11/25/2017
-- Design Name:   
-- Module Name:   Z:/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/test/test_register_module.vhd
-- Project Name:  processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_module
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
 
ENTITY test_register_module IS
END test_register_module;
 
ARCHITECTURE behavior OF test_register_module IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_module
    PORT(
         instruction_in : IN  std_logic_vector(15 downto 0);
         pc_in : IN  std_logic_vector(15 downto 0);
         write_back_data_in : IN  std_logic_vector(15 downto 0);
         write_back_reg_in : IN  std_logic_vector(3 downto 0);
         reg_write_enable_in : IN  std_logic;
         is_hazard_1_in : IN  std_logic;
         is_hazard_2_in : IN  std_logic;
         forward_data_1_in : IN  std_logic_vector(15 downto 0);
         forward_data_2_in : IN  std_logic_vector(15 downto 0);
         branch_target_out : OUT  std_logic_vector(15 downto 0);
         jump_target_out : OUT  std_logic_vector(15 downto 0);
         is_branch_out : OUT  std_logic;
         is_jump_out : OUT  std_logic;
         branch_type_out : OUT  std_logic;
         branch_relative_reg_data_out : OUT  std_logic_vector(15 downto 0);
         pc_out : OUT  std_logic_vector(15 downto 0);
         wb_src_out : OUT  std_logic_vector(2 downto 0);
         mem_data_from_reg_out : OUT  std_logic_vector(15 downto 0);
         wb_data_from_reg_out : OUT  std_logic_vector(15 downto 0);
         immediate_out : OUT  std_logic_vector(15 downto 0);
         write_back_reg_out : OUT  std_logic_vector(3 downto 0);
         reg_write_enable_out : OUT  std_logic;
         op_code_out : OUT  std_logic_vector(3 downto 0);
         operand1_out : OUT  std_logic_vector(15 downto 0);
         operand2_out : OUT  std_logic_vector(15 downto 0);
         cin_out : OUT  std_logic;
         mem_enable_out : OUT  std_logic;
         mem_read_out : OUT  std_logic;
         mem_write_out : OUT  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal instruction : std_logic_vector(15 downto 0) := (others => '0');
   signal pc_in : std_logic_vector(15 downto 0) := (others => '0');
   signal write_back_data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal write_back_reg_in : std_logic_vector(3 downto 0) := (others => '0');
   signal reg_write_enable_in : std_logic := '0';
   signal is_hazard_1_in : std_logic := '0';
   signal is_hazard_2_in : std_logic := '0';
   signal forward_data_1_in : std_logic_vector(15 downto 0) := (others => '0');
   signal forward_data_2_in : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal branch_target_out : std_logic_vector(15 downto 0);
   signal jump_target_out : std_logic_vector(15 downto 0);
   signal is_branch_out : std_logic;
   signal is_jump_out : std_logic;
   signal branch_type_out : std_logic;
   signal branch_relative_reg_data_out : std_logic_vector(15 downto 0);
   signal pc_out : std_logic_vector(15 downto 0);
   signal wb_src_out : std_logic_vector(2 downto 0);
   signal mem_data_from_reg_out : std_logic_vector(15 downto 0);
   signal wb_data_from_reg_out : std_logic_vector(15 downto 0);
   signal immediate_out : std_logic_vector(15 downto 0);
   signal write_back_reg_out : std_logic_vector(3 downto 0);
   signal reg_write_enable_out : std_logic;
   signal op_code_out : std_logic_vector(3 downto 0);
   signal operand1_out : std_logic_vector(15 downto 0);
   signal operand2_out : std_logic_vector(15 downto 0);
   signal cin_out : std_logic;
   signal mem_enable_out : std_logic;
   signal mem_read_out : std_logic;
   signal mem_write_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_module PORT MAP (
          instruction_in => instruction,
          pc_in => pc_in,
          write_back_data_in => write_back_data_in,
          write_back_reg_in => write_back_reg_in,
          reg_write_enable_in => reg_write_enable_in,
          is_hazard_1_in => is_hazard_1_in,
          is_hazard_2_in => is_hazard_2_in,
          forward_data_1_in => forward_data_1_in,
          forward_data_2_in => forward_data_2_in,
          branch_target_out => branch_target_out,
          jump_target_out => jump_target_out,
          is_branch_out => is_branch_out,
          is_jump_out => is_jump_out,
          branch_type_out => branch_type_out,
          branch_relative_reg_data_out => branch_relative_reg_data_out,
          pc_out => pc_out,
          wb_src_out => wb_src_out,
          mem_data_from_reg_out => mem_data_from_reg_out,
          wb_data_from_reg_out => wb_data_from_reg_out,
          immediate_out => immediate_out,
          write_back_reg_out => write_back_reg_out,
          reg_write_enable_out => reg_write_enable_out,
          op_code_out => op_code_out,
          operand1_out => operand1_out,
          operand2_out => operand2_out,
          cin_out => cin_out,
          mem_enable_out => mem_enable_out,
          mem_read_out => mem_read_out,
          mem_write_out => mem_write_out,
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
		
		pc_in <= (others => '0');

      wait for clk_period*2;

      -- insert stimulus here 
				
		-- addiu
		instruction <= "0100101010001000";
		wait for 40ns;
		
		-- addiu3
		instruction <= "0100000101001010";
		wait for 40ns;
		
		-- addsp3
		instruction <= "0000011101010101";
		wait for 40ns;
		
		-- addsp
		instruction <= "0110001110100101";
		wait for 40ns;
		
		-- addu
		instruction <= "1110000101011001";
		wait for 40ns;
		
		-- and
		instruction <= "1110110101001100";
		wait for 40ns;
		
		-- b
		instruction <= "0001001011010101";
		wait for 40ns;
		
		-- beqz
		instruction <= "0010001000000001";
		wait for 40ns;
		
		-- bnez
		instruction <= "0010110010010011";
		wait for 40ns;
		
		-- bteqz
		instruction <= "0110000010101010";
		wait for 40ns;
		
		-- btnez
		instruction <= "0110000110100101";
		wait for 40ns;
		
		-- cmp
		instruction <= "1110101111001010";
		wait for 40ns;
		
		-- jr
		instruction <= "1110111000000000";
		wait for 40ns;
		
		-- li
		instruction <= "0110110111100011";
		wait for 40ns;
		
		-- lw
		instruction <= "1001110110101010";
		wait for 40ns;
		
		-- lw_sp
		instruction <= "1001010010010000";
		wait for 40ns;
		
		-- mfih
		instruction <= "1111011100000000";
		wait for 40ns;
		
		-- mfpc
		instruction <= "1110101101000000";
		wait for 40ns;
		
		-- move
		instruction <= "0111101111000000";
		wait for 40ns;
		
		--mtih
		instruction <= "1111001100000001";
		wait for 40ns;
		
		-- mtsp
		instruction <= "0110010010000000";
		wait for 40ns;
		
		-- nop
		instruction <= "0000100000000000";
		wait for 40ns;

		-- or
		instruction <= "1110101111001101";
		wait for 40ns;
		
		-- sll
		instruction <= "0011011110100000";
		wait for 40ns;
		
		-- sllv
		instruction <= "1110101001100100";
		wait for 40ns;
		
		-- sra
		instruction <= "0011001101100011";
		wait for 40ns;
		
		-- subu
		instruction <= "1110011011011011";
		wait for 40ns;
		
		-- sw
		instruction <= "1101111011100000";
		wait for 40ns;
		
		-- sw_rs
		instruction <= "0110001010101010";
		wait for 40ns;
		
		-- sw_sp
		instruction <= "1101001101101100";
		wait for 40ns;

      wait;
   end process;

END;
