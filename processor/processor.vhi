
-- VHDL Instantiation Created from source file processor.vhd -- 11:48:35 12/06/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT processor
	PORT(
		clk_11 : IN std_logic;
		rst : IN std_logic;
		clk_serial_port : IN std_logic;
		clk_manual : IN std_logic;
		switch : IN std_logic_vector(15 downto 0);
		data_ready : IN std_logic;
		tbre : IN std_logic;
		tsre : IN std_logic;    
		ram1_data : INOUT std_logic_vector(15 downto 0);
		ram2_data : INOUT std_logic_vector(15 downto 0);      
		led : OUT std_logic_vector(15 downto 0);
		ram1_addr : OUT std_logic_vector(17 downto 0);
		ram1_oe : OUT std_logic;
		ram1_we : OUT std_logic;
		ram1_en : OUT std_logic;
		ram2_addr : OUT std_logic_vector(17 downto 0);
		ram2_oe : OUT std_logic;
		ram2_we : OUT std_logic;
		ram2_en : OUT std_logic;
		disp0 : OUT std_logic_vector(6 downto 0);
		disp1 : OUT std_logic_vector(6 downto 0);
		rdn : OUT std_logic;
		wrn : OUT std_logic;
		hs : OUT std_logic;
		vs : OUT std_logic;
		oRed : OUT std_logic_vector(2 downto 0);
		oGreen : OUT std_logic_vector(2 downto 0);
		oBlue : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_processor: processor PORT MAP(
		clk_11 => ,
		rst => ,
		clk_serial_port => ,
		clk_manual => ,
		switch => ,
		led => ,
		ram1_addr => ,
		ram1_data => ,
		ram1_oe => ,
		ram1_we => ,
		ram1_en => ,
		ram2_addr => ,
		ram2_data => ,
		ram2_oe => ,
		ram2_we => ,
		ram2_en => ,
		disp0 => ,
		disp1 => ,
		data_ready => ,
		rdn => ,
		tbre => ,
		tsre => ,
		wrn => ,
		hs => ,
		vs => ,
		oRed => ,
		oGreen => ,
		oBlue => 
	);


