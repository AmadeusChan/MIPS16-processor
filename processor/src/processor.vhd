----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Amadeus Chan
-- 
-- Create Date:    13:37:50 11/22/2017 
-- Design Name: 
-- Module Name:    processor - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL; 
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

entity processor is
    Port ( 
	clk : in  STD_LOGIC; -- 50 MHz
	rst : in  STD_LOGIC;
	clk_serial_port : in  STD_LOGIC; -- 11.0592 MHz
	clk_manual : in  STD_LOGIC;
	switch : in  STD_LOGIC_VECTOR (15 downto 0);  
	led : out  STD_LOGIC_VECTOR (15 downto 0);
	
	-- ram1
	ram1_addr : out  STD_LOGIC_VECTOR (17 downto 0);
	ram1_data : inout  STD_LOGIC_VECTOR (15 downto 0);
	ram1_oe : out  STD_LOGIC;
	ram1_we : out  STD_LOGIC;
	ram1_en : out  STD_LOGIC;
	
	-- ram2
	ram2_addr : out  STD_LOGIC_VECTOR (17 downto 0);
	ram2_data : inout  STD_LOGIC_VECTOR (15 downto 0);
	ram2_oe : out  STD_LOGIC;
	ram2_we : out  STD_LOGIC;
	ram2_en : out  STD_LOGIC;
	
	disp0 : out  STD_LOGIC_VECTOR (6 downto 0);
	disp1 : out  STD_LOGIC_VECTOR (6 downto 0);
	
	-- serial port
	data_ready : in  STD_LOGIC;
	rdn : out  STD_LOGIC;
	tbre : in  STD_LOGIC;
	tsre : in  STD_LOGIC;
	wrn : out  STD_LOGIC
	
	-- VGA monitor
	--rgb: out STD_LOGIC_VECTOR(8 downto 0);
	--hs, vs: out STD_LOGIC; 
	
	-- PS2 keyboard
	--ps2clk, ps2data: in STD_LOGIC;
	
	-- flash
	--flash_byte, flash_vpen, flash_ce, flash_oe, flash_we, flash_rp: out STD_LOGIC;
	--flash_addr: out STD_LOGIC_VECTOR(22 downto 0);
	--flash_data: inout STD_LOGIC_VECTOR(15 downto 0)
	 
	);
end processor;

architecture Behavioral of processor is

	component instruction_fetch_module is  
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

			addr_in: in STD_LOGIC_VECTOR(15 downto 0); 
			data_in: in STD_LOGIC_VECTOR(15 downto 0);
		
			instruction_out: out STD_LOGIC_VECTOR(15 downto 0);
			pc_out: buffer STD_LOGIC_VECTOR(15 downto 0);
			
			pc_debug: out STD_LOGIC_VECTOR(15 downto 0);
			clk, rst: in STD_LOGIC
		);
	end component; 
	
	signal pc_debug_tmp: STD_LOGIC_VECTOR(15 downto 0);

	signal ram2_we_to_if_tmp, ram2_oe_to_if_tmp, is_structural_hazard_to_if_tmp, is_ual_hazard_to_if_tmp: STD_LOGIC;
	signal branch_type_to_if_tmp, is_branch_to_if_tmp, is_jump_to_if_tmp: STD_LOGIC;
	signal branch_relative_reg_data_to_if_tmp, branch_target_to_if_tmp, jump_target_to_if_tmp, instruction_from_if_tmp, pc_from_if_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal address_in_to_if_tmp, data_in_to_if_tmp: STD_LOGIC_VECTOR(15 downto 0);

	component register_module is
	    Port ( instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           pc_in : in  STD_LOGIC_VECTOR (15 downto 0);

	           write_back_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_reg_in : in  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable_in : in  STD_LOGIC;

	           is_hazard_1_in : in  STD_LOGIC;
	           is_hazard_2_in : in  STD_LOGIC;
	           forward_data_1_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           forward_data_2_in : in  STD_LOGIC_VECTOR (15 downto 0);

	           branch_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           jump_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
		   is_branch_out : out STD_LOGIC;
		   is_jump_out : out  STD_LOGIC;
	           branch_type_out : out  STD_LOGIC;
	           branch_relative_reg_data_out : out  STD_LOGIC_VECTOR (15 downto 0);

	           pc_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           wb_src_out : out  STD_LOGIC_VECTOR (2 downto 0);
	           mem_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           wb_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           immediate_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_reg_out : out  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable_out : out  STD_LOGIC;
	           op_code_out : out  STD_LOGIC_VECTOR (3 downto 0);
	           operand1_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           operand2_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           cin_out : out  STD_LOGIC;
	           mem_enable_out : out  STD_LOGIC;
	           mem_read_out : out  STD_LOGIC;
	           mem_write_out : out  STD_LOGIC;
	    		
	     	   read_reg_1_out, read_reg_2_out: out STD_LOGIC_VECTOR(3 downto 0);
				reg_debug: out STD_LOGIC_VECTOR(15 downto 0);

		   clk, rst: in STD_LOGIC);
	end component;

	signal read_reg_1_from_id, read_reg_2_from_id: STD_LOGIC_VECTOR(3 downto 0);

	signal instruction_to_id_tmp, pc_to_id_tmp: STD_LOGIC_VECTOR(15 downto 0);

	signal write_back_data_to_wb_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal write_back_reg_to_wb_tmp: STD_LOGIC_VECTOR(3 downto 0);
	signal write_back_enable_to_wb_tmp: STD_LOGIC;

	signal branch_target_from_id_tmp, jump_target_from_id_tmp, branch_relative_reg_data_from_id_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal is_branch_from_id_tmp, is_jump_from_id_tmp, branch_type_from_id_tmp: STD_LOGIC;

	signal is_hazard_1_to_id_tmp, is_hazard_2_to_id_tmp: STD_LOGIC;
	signal forward_data_1_to_id_tmp, forward_data_2_to_id_tmp: STD_LOGIC_VECTOR(15 downto 0);

	signal pc_from_id_tmp, mem_data_from_reg_from_id_tmp, wb_data_from_reg_from_id_tmp, immediate_from_id_tmp, operand1_from_id_tmp, operand2_from_id_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal wb_src_from_id_tmp: STD_LOGIC_VECTOR(2 downto 0);
	signal write_back_reg_from_id_tmp, op_code_from_id_tmp: STD_LOGIC_VECTOR(3 downto 0);
	signal reg_write_enable_from_id_tmp, cin_from_id_tmp, mem_enable_from_id_tmp, mem_read_from_id_tmp, mem_write_from_id_tmp: STD_LOGIC;

	component IF_ID_regs is
		Port ( 
			bubble : in  STD_LOGIC;
			stall : in  STD_LOGIC;
			instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);
			pc_in : in  STD_LOGIC_VECTOR (15 downto 0);

			instruction_out : out  STD_LOGIC_VECTOR (15 downto 0);
			pc_out : out  STD_LOGIC_VECTOR (15 downto 0);
			
			clk : in  STD_LOGIC;
			rst : in  STD_LOGIC
		);
	end component;

	signal bubble_to_if_id_tmp, stall_to_if_id_tmp: STD_LOGIC;

	component ID_forward_IF_regs is
		Port (  bubble : in  STD_LOGIC;
			stall : in  STD_LOGIC;
			branch_target_in : in  STD_LOGIC_VECTOR (15 downto 0);
			jump_target_in : in  STD_LOGIC_VECTOR (15 downto 0);
			is_jump_in : in  STD_LOGIC;
			is_branch_in : in  STD_LOGIC;
			branch_type_in : in  STD_LOGIC;
			branch_relative_reg_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
			branch_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
			jump_target_out : out  STD_LOGIC_VECTOR (15 downto 0);
			is_jump_out : out  STD_LOGIC;
			is_branch_out : out  STD_LOGIC;
			branch_type_out : out  STD_LOGIC;
			branch_relative_reg_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
			clk, rst: in STD_LOGIC
		);
	end component;

	signal bubble_to_id_if_tmp, stall_to_id_if_tmp: STD_LOGIC;

	component ALU is
		Port(
			A, B : in  STD_LOGIC_VECTOR (15 downto 0);
			Output : out  STD_LOGIC_VECTOR (15 downto 0);
			Zero : out STD_LOGIC;
			ALUop : in  STD_LOGIC_VECTOR (3 downto 0)
		);
	end component;

	signal operand1_to_alu_tmp, operand2_to_alu_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal alu_result_from_alu_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal zero_from_alu_tmp: STD_LOGIC;
	signal op_code_to_alu_tmp: STD_LOGIC_VECTOR(3 downto 0);

	component ID_ALU_regs is
	    Port ( clk : in  STD_LOGIC;
	           rst : in  STD_LOGIC;

	           bubble : in  STD_LOGIC;
	           stall : in  STD_LOGIC;

	           pc_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           pc_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           wb_src_in : in  STD_LOGIC_VECTOR (2 downto 0);	
	           wb_src_out : out  STD_LOGIC_VECTOR (2 downto 0);
	           mem_data_from_reg_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           mem_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           wb_data_from_reg_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           wb_data_from_reg_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           immediate_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           immediate_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_reg_in : in  STD_LOGIC_VECTOR (3 downto 0);
	           write_back_reg_out : out  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable_in : in  STD_LOGIC;
	           reg_write_enable_out : out  STD_LOGIC;
	           op_code_in : in  STD_LOGIC_VECTOR (3 downto 0);
	           op_code_out : out  STD_LOGIC_VECTOR (3 downto 0);
	           operand1_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           operand1_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           operand2_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           operand2_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           cin_in : in  STD_LOGIC;
	           cin_out : out  STD_LOGIC;
	           mem_enable_in : in  STD_LOGIC;
	           mem_enable_out : out  STD_LOGIC;
	           mem_read_in : in  STD_LOGIC;
	           mem_read_out : out  STD_LOGIC;
	           mem_write_in : in  STD_LOGIC;
	           mem_write_out : out  STD_LOGIC);
	end component;

	signal bubble_to_id_alu_tmp, stall_to_id_alu_tmp: STD_LOGIC;
	signal pc_to_alu_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal wb_src_to_alu_tmp : STD_LOGIC_VECTOR (2 downto 0);	
	signal mem_data_from_reg_to_alu_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal wb_data_from_reg_to_alu_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal immediate_to_alu_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal write_back_reg_to_alu_tmp : STD_LOGIC_VECTOR (3 downto 0);
	signal reg_write_enable_to_alu_tmp : STD_LOGIC;
	signal cin_in_to_alu_tmp : STD_LOGIC; -- not employed
	signal mem_enable_to_alu_tmp : STD_LOGIC;
	signal mem_read_to_alu_tmp : STD_LOGIC;
	signal mem_write_to_alu_tmp : STD_LOGIC;

	component ALU_MEM_regs is
	    Port ( clk : in  STD_LOGIC;
	           rst : in  STD_LOGIC;
	           bubble : in  STD_LOGIC;
	           stall : in  STD_LOGIC;

	           write_back_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_reg_in : in  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable_in : in  STD_LOGIC;
	           mem_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           mem_address_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           mem_enable_in : in  STD_LOGIC;
	           mem_read_in : in  STD_LOGIC;
	           mem_write_in : in  STD_LOGIC;

	           write_back_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_reg_out : out  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable_out : out  STD_LOGIC;
	           mem_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           mem_address_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           mem_enable_out : out  STD_LOGIC;
	           mem_read_out : out  STD_LOGIC;
	           mem_write_out : out  STD_LOGIC);
	end component;

	signal bubble_to_alu_mem_tmp, stall_to_alu_mem_tmp: STD_LOGIC;
	signal write_back_data_from_alu_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal write_back_reg_from_alu_tmp : STD_LOGIC_VECTOR (3 downto 0);
	signal reg_write_enable_from_alu_tmp : STD_LOGIC;
	signal mem_data_from_alu_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal mem_address_from_alu_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal mem_enable_from_alu_tmp : STD_LOGIC;
	signal mem_read_from_alu_tmp : STD_LOGIC;
	signal mem_write_from_alu_tmp : STD_LOGIC;

	signal write_back_data_to_mem_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal write_back_reg_to_mem_tmp : STD_LOGIC_VECTOR (3 downto 0);
	signal reg_write_enable_to_mem_tmp : STD_LOGIC;
	signal mem_data_to_mem_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal mem_address_to_mem_tmp : STD_LOGIC_VECTOR (15 downto 0);
	signal mem_enable_to_mem_tmp : STD_LOGIC;
	signal mem_read_to_mem_tmp : STD_LOGIC;
	signal mem_write_to_mem_tmp : STD_LOGIC;

	component DM is
		Port ( 
			clk : in  STD_LOGIC;
			rst : in  STD_LOGIC;
			data_ready : in  STD_LOGIC;
			tbre : in  STD_LOGIC;
			tsre : in  STD_LOGIC;
			rdn : out  STD_LOGIC;
			wrn : out  STD_LOGIC;
			Ram1OE : out  STD_LOGIC;
			Ram1WE : out  STD_LOGIC;
			Ram1EN : out  STD_LOGIC;
			Ram1Addr : out  STD_LOGIC_VECTOR (17 downto 0);
			Ram1Data : inout  STD_LOGIC_VECTOR (15 downto 0);
			
			MemEN : in  STD_LOGIC;
			MemRead : in  STD_LOGIC;		
			MemWrite : in  STD_LOGIC;	
			AddrIn : in  STD_LOGIC_VECTOR (15 downto 0);
			DataIn : in  STD_LOGIC_VECTOR (15 downto 0);
			DataOut : out  STD_LOGIC_VECTOR (15 downto 0)
		);	
	end component;

	signal mem_data_out_from_mem_tmp: STD_LOGIC_VECTOR(15 downto 0);

	component MEM_WB_regs is
	    Port ( clk : in  STD_LOGIC;
	           rst : in  STD_LOGIC;
	           bubble : in  STD_LOGIC;
	           stall : in  STD_LOGIC;
	           write_back_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
	           write_back_reg_in : in  STD_LOGIC_VECTOR (3 downto 0);
	           write_back_reg_out : out  STD_LOGIC_VECTOR (3 downto 0);
	           write_enable_in : in  STD_LOGIC;
	           write_enable_out : out  STD_LOGIC);
	end component;

	signal bubble_to_mem_wb_tmp, stall_to_mem_wb_tmp: STD_LOGIC;
	signal write_back_data_from_mem_tmp: STD_LOGIC_VECTOR(15 downto 0);
	signal write_back_reg_from_mem_tmp: STD_LOGIC_VECTOR(3 downto 0);
	signal write_enable_from_mem_tmp: STD_LOGIC;

	component structural_hazard_detector is
	    Port ( mem_write_in : in  STD_LOGIC;
	           mem_address_in : in  STD_LOGIC_VECTOR (15 downto 0);
	           mem_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
	
		   is_hazard : out  STD_LOGIC;
	           ram2_oe : out  STD_LOGIC;
	           ram2_we : out  STD_LOGIC;
	           ram2_in_data : out  STD_LOGIC_VECTOR (15 downto 0);
	           ram2_in_address : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;

	component UAL_hazard_detector is
	    Port ( read_reg1 : in  STD_LOGIC_VECTOR (3 downto 0);
	           read_reg2 : in  STD_LOGIC_VECTOR (3 downto 0);
	           write_back_reg : in  STD_LOGIC_VECTOR (3 downto 0);
	           reg_write_enable : in  STD_LOGIC;
	           mem_read : in  STD_LOGIC;
	    	   clk, rst: in STD_LOGIC;
	
	           bubble : out  STD_LOGIC;
	           stall : out  STD_LOGIC
	   );
	end component;

	component RAW_hazard_detector_and_forward_unit is
	    Port ( wb_reg_write_enable : in  STD_LOGIC;
	           mem_reg_write_enable : in  STD_LOGIC;
	           alu_reg_write_enable : in  STD_LOGIC;
	
	           wb_write_back_reg : in  STD_LOGIC_VECTOR (3 downto 0);
	           mem_write_back_reg : in  STD_LOGIC_VECTOR (3 downto 0);
	           alu_write_back_reg : in  STD_LOGIC_VECTOR (3 downto 0);
	
	           wb_write_back_data : in  STD_LOGIC_VECTOR (15 downto 0);
	           mem_write_back_data : in  STD_LOGIC_VECTOR (15 downto 0);
	           alu_write_back_data : in  STD_LOGIC_VECTOR (15 downto 0);
	
	           read_reg_1 : in  STD_LOGIC_VECTOR (3 downto 0);
	           read_reg_2 : in  STD_LOGIC_VECTOR (3 downto 0);
	
	           is_hazard_1 : out  STD_LOGIC;
	           is_hazard_2 : out  STD_LOGIC;
	
	           forward_data_1 : out  STD_LOGIC_VECTOR (15 downto 0);
	           forward_data_2 : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	signal reg_debug_tmp: STD_LOGIC_VECTOR(15 downto 0);


begin
	led(7 downto 0) <= reg_debug_tmp(7 downto 0);
	led(15 downto 8) <= instruction_to_id_tmp(7 downto 0);
	
	process(pc_from_if_tmp(3 downto 0)) 
	begin
		case pc_from_if_tmp(3 downto 0) is
			when "0000"=>disp1<="1111110"; --0
			when "0001"=>disp1<="0110000"; --1
			when "0010"=>disp1<="1101101"; --2
			when "0011"=>disp1<="1111001"; --3
			when "0100"=>disp1<="0110011"; --4
			when "0101"=>disp1<="1011011"; --5
			when "0110"=>disp1<="0011111"; --6
			when "0111"=>disp1<="1110000"; --7
			when "1000"=>disp1<="1111111"; --8
			when "1001"=>disp1<="1110011"; --9
			when "1010"=>disp1<="1110111"; --a
			when "1011"=>disp1<="0011111"; --b
			when "1100"=>disp1<="1001110"; --c
			when "1101"=>disp1<="0111101"; --d
			when "1110"=>disp1<="1001111"; --e
			when "1111"=>disp1<="1000111"; --f
			when others=>disp1<="0000000"; --others
		end case;
	end process;
	
	process(instruction_from_if_tmp) 
	begin
		case instruction_from_if_tmp(3 downto 0) is
			when "0000"=>disp0<="1111110"; --0
			when "0001"=>disp0<="0110000"; --1
			when "0010"=>disp0<="1101101"; --2
			when "0011"=>disp0<="1111001"; --3
			when "0100"=>disp0<="0110011"; --4
			when "0101"=>disp0<="1011011"; --5
			when "0110"=>disp0<="0011111"; --6
			when "0111"=>disp0<="1110000"; --7
			when "1000"=>disp0<="1111111"; --8
			when "1001"=>disp0<="1110011"; --9
			when "1010"=>disp0<="1110111"; --a
			when "1011"=>disp0<="0011111"; --b
			when "1100"=>disp0<="1001110"; --c
			when "1101"=>disp0<="0111101"; --d
			when "1110"=>disp0<="1001111"; --e
			when "1111"=>disp0<="1000111"; --f
			when others=>disp0<="0000000"; --others
		end case;
	end process;

	-- bubble and stall signals
	-- IF-ID
	bubble_to_if_id_tmp <= is_structural_hazard_to_if_tmp;

	-- ID-IF
	bubble_to_id_if_tmp <= '0';
	stall_to_id_if_tmp <= is_structural_hazard_to_if_tmp or stall_to_if_id_tmp;

	-- ID-ALU
	stall_to_id_alu_tmp <= '0';

	-- ALU-MEM
	bubble_to_alu_mem_tmp <= '0';
	stall_to_alu_mem_tmp <= '0';

	-- MEM-WB
	bubble_to_mem_wb_tmp <= '0';
	stall_to_mem_wb_tmp <= '0';

	-- read-after-write hazard detector and forward unit
	RAW_hazard_detector_and_forward_unit_imp: RAW_hazard_detector_and_forward_unit
	port map (
		wb_reg_write_enable => write_back_enable_to_wb_tmp,
		mem_reg_write_enable => reg_write_enable_to_mem_tmp,
		alu_reg_write_enable => reg_write_enable_to_alu_tmp,
	
		wb_write_back_reg => write_back_reg_to_wb_tmp,
		mem_write_back_reg => write_back_reg_to_mem_tmp,
		alu_write_back_reg => write_back_reg_to_alu_tmp,
	
		wb_write_back_data => write_back_data_to_wb_tmp,
		mem_write_back_data => write_back_data_from_mem_tmp,
		alu_write_back_data => write_back_data_from_alu_tmp,
	
		read_reg_1 => read_reg_1_from_id, 
		read_reg_2 => read_reg_2_from_id,
	
		is_hazard_1 => is_hazard_1_to_id_tmp,
		is_hazard_2 => is_hazard_2_to_id_tmp,
	
		forward_data_1 => forward_data_1_to_id_tmp,
		forward_data_2 => forward_data_2_to_id_tmp
	);

	-- use-after-load hazard detector
	UAL_hazard_detector_imp: UAL_hazard_detector 
	port map (
		read_reg1 => read_reg_1_from_id, 
		read_reg2 => read_reg_2_from_id,
		write_back_reg => write_back_reg_to_alu_tmp,
		reg_write_enable => reg_write_enable_to_alu_tmp,
		mem_read => mem_read_to_alu_tmp,
	
		clk => clk, 
		rst => rst,
	
		bubble => bubble_to_id_alu_tmp,
		stall => stall_to_if_id_tmp
	);

	is_ual_hazard_to_if_tmp <= stall_to_if_id_tmp;

	-- structural hazard detector
	structural_hazard_detector_imp: structural_hazard_detector 
	port map (
		mem_write_in => mem_write_to_mem_tmp,
		mem_address_in => mem_address_to_mem_tmp,
		mem_data_in => mem_data_to_mem_tmp,
	
		is_hazard => is_structural_hazard_to_if_tmp,
		ram2_oe => ram2_oe_to_if_tmp, 
		ram2_we => ram2_we_to_if_tmp,
	
		ram2_in_data => data_in_to_if_tmp,
		ram2_in_address => address_in_to_if_tmp
	);
	
	-- instruction fetch module
	instruction_fetch_module_imp: instruction_fetch_module 
	port map(
		ram2_addr_out => ram2_addr,
		ram2_data_out => ram2_data,
		ram2_oe_out => ram2_oe,
		ram2_we_out => ram2_we,
		ram2_en_out => ram2_en,

		is_structural_hazard_in => is_structural_hazard_to_if_tmp,
		is_ual_hazard_in => is_ual_hazard_to_if_tmp,
		ram2_we_in => ram2_we_to_if_tmp,
		ram2_oe_in => ram2_oe_to_if_tmp,

		addr_in => address_in_to_if_tmp,
		data_in => data_in_to_if_tmp,

		branch_type_in => branch_type_to_if_tmp,
		is_branch_in => is_branch_to_if_tmp,
		is_jump_in => is_jump_to_if_tmp,
		branch_relative_reg_data_in => branch_relative_reg_data_to_if_tmp,
		branch_target_in => branch_target_to_if_tmp,
		jump_target_in => jump_target_to_if_tmp,

		instruction_out => instruction_from_if_tmp,
		pc_out => pc_from_if_tmp,
		
		pc_debug => pc_debug_tmp,

		clk => clk,
		rst => rst
	);
	
	-- instruction decode and write back module
	register_module_imp: register_module 
	port map(
		instruction_in => instruction_to_id_tmp,
		pc_in => pc_to_id_tmp,

		write_back_data_in => write_back_data_to_wb_tmp,
		write_back_reg_in => write_back_reg_to_wb_tmp,
		reg_write_enable_in => write_back_enable_to_wb_tmp,

		is_hazard_1_in => is_hazard_1_to_id_tmp,
		is_hazard_2_in => is_hazard_2_to_id_tmp,
		forward_data_1_in => forward_data_1_to_id_tmp,
		forward_data_2_in => forward_data_2_to_id_tmp,

		branch_target_out => branch_target_from_id_tmp,
		jump_target_out => jump_target_from_id_tmp,
		is_branch_out => is_branch_from_id_tmp,
		is_jump_out => is_jump_from_id_tmp,
		branch_type_out => branch_type_from_id_tmp,
		branch_relative_reg_data_out => branch_relative_reg_data_from_id_tmp,

		pc_out => pc_from_id_tmp,
		wb_src_out => wb_src_from_id_tmp,
		mem_data_from_reg_out => mem_data_from_reg_from_id_tmp,
		wb_data_from_reg_out => wb_data_from_reg_from_id_tmp,
		immediate_out => immediate_from_id_tmp,
		write_back_reg_out => write_back_reg_from_id_tmp,
		reg_write_enable_out => reg_write_enable_from_id_tmp,
		op_code_out => op_code_from_id_tmp,
		operand1_out => operand1_from_id_tmp,
		operand2_out => operand2_from_id_tmp,
		cin_out => cin_from_id_tmp,
		mem_enable_out => mem_enable_from_id_tmp,
		mem_read_out => mem_read_from_id_tmp,
		mem_write_out => mem_write_from_id_tmp,
		read_reg_1_out => read_reg_1_from_id,
		read_reg_2_out => read_reg_2_from_id,
		
		reg_debug => reg_debug_tmp,

		clk => clk,
		rst => rst
	);

	-- IF-ID registers
	IF_ID_regs_imp: IF_ID_regs 
	port map (
		bubble => bubble_to_if_id_tmp,
		stall => stall_to_if_id_tmp,
	
		instruction_in => instruction_from_if_tmp,
		pc_in => pc_from_if_tmp,
	
		instruction_out => instruction_to_id_tmp,
		pc_out => pc_to_id_tmp,
	
		clk => clk,
		rst => rst
	);

	-- ID_forward_IF registers
	ID_forward_IF_regs_imp: ID_forward_IF_regs 
	port map (
		bubble => bubble_to_id_if_tmp,
		stall => stall_to_id_if_tmp,
	
		branch_target_in => branch_target_from_id_tmp,
		jump_target_in => jump_target_from_id_tmp,
		is_jump_in => is_jump_from_id_tmp,
		is_branch_in => is_branch_from_id_tmp,
		branch_type_in => branch_type_from_id_tmp,
		branch_relative_reg_data_in => branch_relative_reg_data_from_id_tmp,
		
		branch_target_out => branch_target_to_if_tmp,
		jump_target_out => jump_target_to_if_tmp,
		is_jump_out => is_jump_to_if_tmp,
		is_branch_out => is_branch_to_if_tmp,
		branch_type_out => branch_type_to_if_tmp,
		branch_relative_reg_data_out => branch_relative_reg_data_to_if_tmp,
	
		clk => clk,
		rst => rst
	);

	-- ID-ALU registers
	ID_ALU_regs_imp: ID_ALU_regs 
	port map(
		clk => clk,
		rst => rst,
		
		bubble => bubble_to_id_alu_tmp,
		stall => stall_to_id_alu_tmp,
		
		pc_in => pc_from_id_tmp,
		pc_out => pc_to_alu_tmp,
		wb_src_in => wb_src_from_id_tmp,	
		wb_src_out => wb_src_to_alu_tmp,
		mem_data_from_reg_in => mem_data_from_reg_from_id_tmp,
		mem_data_from_reg_out => mem_data_from_reg_to_alu_tmp,
		wb_data_from_reg_in => wb_data_from_reg_from_id_tmp,
		wb_data_from_reg_out => wb_data_from_reg_to_alu_tmp,
		immediate_in => immediate_from_id_tmp,
		immediate_out => immediate_to_alu_tmp,
		write_back_reg_in => write_back_reg_from_id_tmp,
		write_back_reg_out => write_back_reg_to_alu_tmp,
		reg_write_enable_in => reg_write_enable_from_id_tmp,
		reg_write_enable_out => reg_write_enable_to_alu_tmp,
		op_code_in => op_code_from_id_tmp,
		op_code_out => op_code_to_alu_tmp,
		operand1_in => operand1_from_id_tmp,
		operand1_out => operand1_to_alu_tmp,
		operand2_in => operand2_from_id_tmp,
		operand2_out => operand2_to_alu_tmp,
		cin_in => cin_from_id_tmp,
		cin_out => cin_in_to_alu_tmp,
		mem_enable_in => mem_enable_from_id_tmp,
		mem_enable_out => mem_enable_to_alu_tmp,
		mem_read_in => mem_read_from_id_tmp,
		mem_read_out => mem_read_to_alu_tmp,
		mem_write_in => mem_write_from_id_tmp,
		mem_write_out => mem_write_to_alu_tmp
	);

	-- ALU 
	ALU_imp: ALU 
	port map (
		A => operand1_to_alu_tmp, 
		B => operand2_to_alu_tmp,
		ALUop => op_code_to_alu_tmp,
		
		Output => alu_result_from_alu_tmp,
		Zero => zero_from_alu_tmp
	);

	-- ALU-MEM registers
	ALU_MEM_regs_imp: ALU_MEM_regs 
	port map(
		clk => clk,
		rst => rst,
		bubble => bubble_to_alu_mem_tmp,
		stall => stall_to_alu_mem_tmp,
		
		write_back_data_in => write_back_data_from_alu_tmp,
		write_back_reg_in => write_back_reg_from_alu_tmp,
		reg_write_enable_in => reg_write_enable_from_alu_tmp,
		mem_data_in => mem_data_from_alu_tmp,
		mem_address_in => mem_address_from_alu_tmp,
		mem_enable_in => mem_enable_from_alu_tmp,
		mem_read_in => mem_read_from_alu_tmp,
		mem_write_in => mem_write_from_alu_tmp,
		
		write_back_data_out => write_back_data_to_mem_tmp,
		write_back_reg_out => write_back_reg_to_mem_tmp,
		reg_write_enable_out => reg_write_enable_to_mem_tmp,
		mem_data_out => mem_data_to_mem_tmp,
		mem_address_out => mem_address_to_mem_tmp,
		mem_enable_out => mem_enable_to_mem_tmp,
		mem_read_out => mem_read_to_mem_tmp,
		mem_write_out => mem_write_to_mem_tmp
	);

	-- execute module
	write_back_data_from_alu_tmp <= wb_data_from_reg_to_alu_tmp when wb_src_to_alu_tmp = wb_from_reg else 
					immediate_to_alu_tmp when wb_src_to_alu_tmp = wb_from_immediate else
					pc_to_alu_tmp + x"0002" when wb_src_to_alu_tmp = wb_from_rpc else
					alu_result_from_alu_tmp when wb_src_to_alu_tmp = wb_from_alu_result else 
					pc_to_alu_tmp + x"0001" when wb_src_to_alu_tmp = wb_from_pc else
					x"000" & "000" & (not zero_from_alu_tmp) when wb_src_to_alu_tmp = wb_from_alu_zero else
					x"0000";
	write_back_reg_from_alu_tmp <= write_back_reg_to_alu_tmp;
	reg_write_enable_from_alu_tmp <= reg_write_enable_to_alu_tmp;
	mem_data_from_alu_tmp <= mem_data_from_reg_to_alu_tmp;
	mem_address_from_alu_tmp <= alu_result_from_alu_tmp;
	mem_enable_from_alu_tmp <= mem_enable_to_alu_tmp;
	mem_read_from_alu_tmp <= mem_read_to_alu_tmp;
	mem_write_from_alu_tmp <= mem_write_to_alu_tmp;

	-- data memory
	DM_imp: DM 
	port map(
		clk => clk,  
		rst => rst,
		
		data_ready => data_ready, 
		tbre => tbre,
		tsre => tsre,
		rdn => rdn,
		wrn => wrn,
		Ram1OE => ram1_oe,
		Ram1WE => ram1_we,
		Ram1EN => ram1_en, 
		Ram1Addr => ram1_addr,
		Ram1Data => ram1_data,
		
		MemEN => mem_enable_to_mem_tmp,
		MemRead => mem_read_to_mem_tmp,
		MemWrite => mem_write_to_mem_tmp,
		AddrIn => mem_address_to_mem_tmp,
		DataIn => mem_data_to_mem_tmp,
		DataOut => mem_data_out_from_mem_tmp
	);

	-- memory access module
	write_back_data_from_mem_tmp <= mem_data_out_from_mem_tmp when mem_read_to_mem_tmp = enable else
					write_back_data_to_mem_tmp;
	write_back_reg_from_mem_tmp <= write_back_reg_to_mem_tmp;
	write_enable_from_mem_tmp <= reg_write_enable_to_mem_tmp;

	-- memory-write-back registers
	MEM_WB_regs_imp: MEM_WB_regs 
	port map(
		clk => clk,
		rst => rst,
		bubble => bubble_to_mem_wb_tmp, 
		stall => stall_to_mem_wb_tmp,
		write_back_data_in => write_back_data_from_mem_tmp,
		write_back_data_out => write_back_data_to_wb_tmp,
		write_back_reg_in => write_back_reg_from_mem_tmp,
		write_back_reg_out => write_back_reg_to_wb_tmp,
		write_enable_in => write_enable_from_mem_tmp,
		write_enable_out => write_back_enable_to_wb_tmp
	);


end Behavioral;

