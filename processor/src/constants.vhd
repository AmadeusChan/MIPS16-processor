--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

package constants is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

-- instructions
	constant iaddsp3: std_logic_vector(4 downto 0) := "00000";

	constant ib: std_logic_vector(4 downto 0) := "00010";

	constant ibeqz: std_logic_vector(4 downto 0) := "00100";
	constant ibnez: std_logic_vector(4 downto 0) := "00101";

	constant iaddiu: std_logic_vector(4 downto 0) := "01001";
	
	constant iaddiu3: std_logic_vector(4 downto 0) := "01000";

	constant iaddsp: std_logic_vector(4 downto 0) := "01100";
	constant isw_rs: std_logic_vector(4 downto 0) := "01100";
	constant ibteqz: std_logic_vector(4 downto 0) := "01100";
	constant ibtnez: std_logic_vector(4 downto 0) := "01100";
	constant imtsp: std_logic_vector(4 downto 0) := "01100";

	constant iaddu: std_logic_vector(4 downto 0) := "11100";
	constant isubu: std_logic_vector(4 downto 0) := "11100";

	constant iand: std_logic_vector(4 downto 0) := "11101";
	constant icmp: std_logic_vector(4 downto 0) := "11101"; 
	constant ior: std_logic_vector(4 downto 0) := "11101";
	constant ijr: std_logic_vector(4 downto 0) := "11101";
	constant isllv: std_logic_vector(4 downto 0) := "11101";
	constant imfpc: std_logic_vector(4 downto 0) := "11101";

	constant ili: std_logic_vector(4 downto 0) := "01101";

	constant ilw: std_logic_vector(4 downto 0) := "10011";

	constant ilw_sp: std_logic_vector(4 downto 0) := "10010";

	constant imfih: std_logic_vector(4 downto 0) := "11110";
	constant imtih: std_logic_vector(4 downto 0) := "11110";

	constant imove: std_logic_vector(4 downto 0) := "01111";

	constant inop: std_logic_vector(4 downto 0) := "00001";

	constant isll: std_logic_vector(4 downto 0) := "00110";
	constant isra: std_logic_vector(4 downto 0) := "00110";

	constant isw: std_logic_vector(4 downto 0) := "11011";
	constant isw_sp: std_logic_vector(4 downto 0) := "11010";

-- branch_type
	constant equal_branch : std_logic := '0';
	constant not_equal_branch : std_logic := '1';

-- operand1_src
-- wb_data_from_reg_src
-- mem_data_from_reg_src
	constant from_reg_1: std_logic := '0';
	constant from_reg_2: std_logic := '1';

-- operand2_src
	constant operand2_from_reg_1: std_logic_vector(1 downto 0) := "00";
	constant operand2_from_reg_2: std_logic_vector(1 downto 0) := "01";
	constant operand2_from_immediate: std_logic_vector(1 downto 0) := "10";

-- op_code
	constant op_add: std_logic_vector(3 downto 0) := "0000";
	constant op_sub: std_logic_vector(3 downto 0) := "0001";
	constant op_and: std_logic_vector(3 downto 0) := "0010";
	constant op_or: std_logic_vector(3 downto 0) := "0011";
	constant op_xor: std_logic_vector(3 downto 0) := "0100";
	constant op_not: std_logic_vector(3 downto 0) := "0101";
	constant op_sll: std_logic_vector(3 downto 0) := "0110";
	constant op_srl: std_logic_vector(3 downto 0) := "0111";
	constant op_sra: std_logic_vector(3 downto 0) := "1000";
	constant op_rol: std_logic_vector(3 downto 0) := "1001";
	constant op_neg: std_logic_vector(3 downto 0) := "1010";

	constant disable: std_logic := '0';
	constant enable: std_logic := '1';

-- wb_src
	constant wb_from_reg: std_logic_vector(2 downto 0) := "000";
	constant wb_from_immediate: std_logic_vector(2 downto 0) := "001";
	constant wb_from_rpc: std_logic_vector(2 downto 0) := "010";
	constant wb_from_pc: std_logic_vector(2 downto 0) := "011";
	constant wb_from_alu_result: std_logic_vector(2 downto 0) := "100";
	constant wb_from_alu_zero: std_logic_vector(2 downto 0) := "101";


end constants;

package body constants is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end constants;
