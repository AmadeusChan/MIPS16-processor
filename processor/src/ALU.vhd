----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:03:40 11/22/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use ieee.numeric_std.all; 
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

entity ALU is
Port(
				A, B : in  STD_LOGIC_VECTOR (15 downto 0);
				Output : out  STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
				Zero : out STD_LOGIC;
				ALUop : in  STD_LOGIC_VECTOR (3 downto 0)
				);
end ALU;

architecture Behavioral of ALU is

signal tmp: std_logic_vector(15 downto 0);

begin

process(ALUop, A, B)

begin
		Zero <= '0';
		Output <= tmp;
		case ALUop is
			when op_add =>
				tmp <= A + B;
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_sub =>
				tmp <= A - B;
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_and =>
				tmp <= A and B;
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_or =>
				tmp <= A or B;
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_xor =>
				tmp <= A xor B;
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_not =>
				tmp <= not A;
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_sll =>
				tmp <= TO_STDLOGICVECTOR(TO_BITVECTOR(A) sll CONV_INTEGER(B));
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_srl =>
				tmp <= TO_STDLOGICVECTOR(TO_BITVECTOR(A) srl CONV_INTEGER(B));
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_sra =>
				tmp <= TO_STDLOGICVECTOR(TO_BITVECTOR(A) sra CONV_INTEGER(B));
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_rol =>
				tmp <= TO_STDLOGICVECTOR(TO_BITVECTOR(A) rol CONV_INTEGER(B));
				if (tmp = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when op_neg =>
				tmp <= 0 - A;
				if (A = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
			when others =>
				tmp <= A;
				if (A = "0000000000000000") then
					Zero <= '1';
				else
					Zero <= '0';
				end if;
		end case;
end process;

end Behavioral;

