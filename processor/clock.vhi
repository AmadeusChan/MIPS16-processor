
-- VHDL Instantiation Created from source file clock.vhd -- 00:40:39 12/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT clock
	PORT(
		CLKIN_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;

	Inst_clock: clock PORT MAP(
		CLKIN_IN => ,
		CLKFX_OUT => ,
		CLK0_OUT => 
	);


