
-- VHDL Instantiation Created from source file controller.vhd -- 13:49:41 11/22/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT controller
	PORT(
		instruction : IN std_logic_vector(15 downto 0);          
		branch_type : OUT std_logic;
		is_branch : OUT std_logic;
		is_jump : OUT std_logic;
		operand1_src : OUT std_logic;
		operand2_src : OUT std_logic_vector(1 downto 0);
		op_code : OUT std_logic_vector(3 downto 0);
		reg_write_enable : OUT std_logic;
		out_mem_write : OUT std_logic;
		out_mem_read : OUT std_logic;
		mem_enable : OUT std_logic;
		wb_src : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_controller: controller PORT MAP(
		instruction => ,
		branch_type => ,
		is_branch => ,
		is_jump => ,
		operand1_src => ,
		operand2_src => ,
		op_code => ,
		reg_write_enable => ,
		out_mem_write => ,
		out_mem_read => ,
		mem_enable => ,
		wb_src => 
	);


