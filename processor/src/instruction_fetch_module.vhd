----------------------------------------------------------------------------------
-- Company: 
-- Engineer:  Amadeus Chan
-- 
-- Create Date:    22:02:24 11/23/2017 
-- Design Name: 
-- Module Name:    instruction_fetch_module - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.constants.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruction_fetch_module is

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
		pc_out: buffer STD_LOGIC_VECTOR(15 downto 0);
		pc_debug: out STD_LOGIC_VECTOR(15 downto 0);
		clk, rst: in STD_LOGIC
	);

end instruction_fetch_module;

architecture Behavioral of instruction_fetch_module is

	signal ram2_en_in: STD_LOGIC := '1';
	signal pc_in: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	
	component IM
		port(clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Ram2OE : out  STD_LOGIC;
           Ram2WE : out  STD_LOGIC;
           Ram2EN : out  STD_LOGIC;		--always set to '0'
           Ram2Addr : out  STD_LOGIC_VECTOR (17 downto 0);
           Ram2Data : inout  STD_LOGIC_VECTOR (15 downto 0);

           MemEN : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;		--read IM signal, '1' for read 
           MemWrite : in  STD_LOGIC;	--write IM signal, '1' for write 
           PCIn : in  STD_LOGIC_VECTOR (15 downto 0);		--address when fetch instruction from IM
           AddrIn : in  STD_LOGIC_VECTOR (15 downto 0);	--address when write IM
           InstIn : in  STD_LOGIC_VECTOR (15 downto 0);	--data when write IM
           InstOut : out  STD_LOGIC_VECTOR (15 downto 0)
		);
	end component;

begin
	pc_debug <= pc_in;

	u : IM
	port map(clk => clk,
				rst => rst,
				Ram2OE => ram2_oe_out,
				Ram2WE => ram2_we_out,
				Ram2EN => ram2_en_out,
				Ram2Addr => ram2_addr_out,
				Ram2Data => ram2_data_out,
				
				MemEN => ram2_en_in,
				MemRead => ram2_oe_in,
				MemWrite => ram2_we_in,
				PCIn => pc_in,
				AddrIn => addr_in,
				InstIn => data_in,
				InstOut => instruction_out
	);	
	
	process(pc_out, is_structural_hazard_in, is_ual_hazard_in, is_jump_in, is_branch_in, branch_type_in, branch_relative_reg_data_in)
	begin
		if (is_structural_hazard_in = '1' or is_ual_hazard_in = '1') then
			pc_in <= pc_out;
		elsif (is_jump_in = '1') then
			pc_in <= jump_target_in;
		elsif (is_branch_in = '1') then
			case branch_type_in is
				when equal_branch =>
					if (branch_relative_reg_data_in = x"0000") then
						pc_in <= branch_target_in;
					else
						pc_in <= pc_out + '1';
					end if;
				when not_equal_branch =>
					if (branch_relative_reg_data_in = x"0001") then
						pc_in <= branch_target_in;
					else
						pc_in <= pc_out + '1';
					end if;
				when others =>
					pc_in <= pc_out + '1';
			end case;
		else
			pc_in <= pc_out + '1';
		end if;
	end process;
	
	process(clk, rst)
	begin
		if (rst = '0') then
			pc_out <= (others => '0');
		elsif (clk'event and clk = '1') then
			pc_out <= pc_in;
		end if;
	end process;

end Behavioral;

