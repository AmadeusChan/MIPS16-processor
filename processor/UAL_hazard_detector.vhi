
-- VHDL Instantiation Created from source file UAL_hazard_detector.vhd -- 16:16:13 11/24/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UAL_hazard_detector
	PORT(
		read_reg1 : IN std_logic_vector(3 downto 0);
		read_reg2 : IN std_logic_vector(3 downto 0);
		write_back_reg : IN std_logic_vector(3 downto 0);
		reg_write_enable : IN std_logic;
		mem_read : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;          
		is_ual_hazard_1 : OUT std_logic;
		is_ual_hazard_2 : OUT std_logic;
		bubble : OUT std_logic;
		stall : OUT std_logic
		);
	END COMPONENT;

	Inst_UAL_hazard_detector: UAL_hazard_detector PORT MAP(
		read_reg1 => ,
		read_reg2 => ,
		write_back_reg => ,
		reg_write_enable => ,
		mem_read => ,
		clk => ,
		rst => ,
		is_ual_hazard_1 => ,
		is_ual_hazard_2 => ,
		bubble => ,
		stall => 
	);


