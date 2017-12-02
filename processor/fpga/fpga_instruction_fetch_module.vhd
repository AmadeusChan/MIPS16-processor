----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:13:01 12/02/2017 
-- Design Name: 
-- Module Name:    fpga_instruction_fetch_module - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fpga_instruction_fetch_module is
		Port (clk : in  STD_LOGIC;
				rst : in  STD_LOGIC;
				led : out  STD_LOGIC_VECTOR (15 downto 0);
				dyp : out  STD_LOGIC_VECTOR (6 downto 0);
				ram2_addr_out : out  STD_LOGIC_VECTOR (17 downto 0);
				ram2_data_out : inout  STD_LOGIC_VECTOR (15 downto 0);
				ram2_oe_out : out  STD_LOGIC;
				ram2_we_out : out  STD_LOGIC;
				ram2_en_out : out  STD_LOGIC);
end fpga_instruction_fetch_module;

architecture Behavioral of fpga_instruction_fetch_module is

	type state is (s0, s1, s2, s3);
	signal current_state : state := s0;
	
	signal addr_in, data_in: STD_LOGIC_VECTOR(15 downto 0) := (others => '0'); --write back signals
	signal is_structural_hazard_in, is_ual_hazard_in: STD_LOGIC := '0';
	signal branch_type_in, is_branch_in, is_jump_in: STD_LOGIC := '0';
	signal branch_relative_reg_data_in, branch_target_in, jump_target_in: STD_LOGIC_VECTOR(15 downto 0):= (others => '0');
	signal ram2_we_in, ram2_oe_in: STD_LOGIC := '0';
	signal pc_out: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

	component instruction_fetch_module
	Port (
		-- ram2
		ram2_addr_out : out  STD_LOGIC_VECTOR (17 downto 0);
		ram2_data_out : inout  STD_LOGIC_VECTOR (15 downto 0);
		ram2_oe_out : out  STD_LOGIC;
		ram2_we_out : out  STD_LOGIC;
		ram2_en_out : out  STD_LOGIC;
	
		is_structural_hazard_in, is_ual_hazard_in: in STD_LOGIC;
		ram2_we_in, ram2_oe_in: in STD_LOGIC;
	
		branch_type_in, is_branch_in, is_jump_in: in STD_LOGIC;
		branch_relative_reg_data_in, branch_target_in, jump_target_in: in STD_LOGIC_VECTOR(15 downto 0);
	
		addr_in, data_in: in STD_LOGIC_VECTOR(15 downto 0); --write back signals
	
		instruction_out: out STD_LOGIC_VECTOR(15 downto 0);
		pc_out: out STD_LOGIC_VECTOR(15 downto 0);
		clk, rst: in STD_LOGIC
	);
	end component;

begin

	u : instruction_fetch_module
	port map(ram2_addr_out => ram2_addr_out,
          ram2_data_out => ram2_data_out,
          ram2_oe_out => ram2_oe_out,
          ram2_we_out => ram2_we_out,
          ram2_en_out => ram2_en_out,
          is_structural_hazard_in => is_structural_hazard_in,
          is_ual_hazard_in => is_ual_hazard_in,
          ram2_we_in => ram2_we_in,
          ram2_oe_in => ram2_oe_in,
          branch_type_in => branch_type_in,
          is_branch_in => is_branch_in,
          is_jump_in => is_jump_in,
          branch_relative_reg_data_in => branch_relative_reg_data_in,
          branch_target_in => branch_target_in,
          jump_target_in => jump_target_in,
          addr_in => addr_in,
          data_in => data_in,
          instruction_out => led,
          pc_out => pc_out,
          clk => clk,
          rst => rst
        );

	process(clk, rst)
	begin
		if (rst = '0') then
			ram2_oe_in <= '0';
			ram2_we_in <= '0';
			addr_in <= (others => '0');
			data_in <= (others => '0');
			current_state <= s0;
		elsif (clk'event and clk = '1') then
			case current_state is
				when s0 =>
					ram2_we_in <= '1';
					addr_in <= x"0000";
					data_in <= x"1234";
					current_state <= s1;
				when s1 =>
					ram2_we_in <= '0';
					current_state <= s2;
				when s2 =>
					ram2_oe_in <= '1';
					current_state <= s3;
				when s3 =>
					ram2_oe_in <= '0';
					current_state <= s0;
			end case;
		end if;
	end process;
	
	process(current_state)
	begin
		case current_state is
			when s0 =>
				dyp <= "0111111";
			when s1 =>
				dyp <= "0000110";
			when s2 =>
				dyp <= "1011011";
			when s3 =>
				dyp <= "1001111";
		end case;
	end process;

end Behavioral;

