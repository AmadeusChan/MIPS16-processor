----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:08 11/23/2017 
-- Design Name: 
-- Module Name:    external_devices - Behavioral 
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

entity external_devices is
    Port ( 
	address : in  STD_LOGIC_VECTOR (15 downto 0);
	in_data : in  STD_LOGIC_VECTOR (15 downto 0);
	out_data : out  STD_LOGIC_VECTOR (15 downto 0);
	mem_en : in  STD_LOGIC;
	mem_read : in  STD_LOGIC;
	mem_write : in  STD_LOGIC
	
	-- serial port
	data_ready : in  STD_LOGIC;
	rdn : out  STD_LOGIC;
	tbre : in  STD_LOGIC;
	tsre : in  STD_LOGIC;
	wrn : out  STD_LOGIC;
	
	-- VGA monitor
	rgb: out STD_LOGIC_VECTOR(8 downto 0);
	hs, vs: out STD_LOGIC;
	
	-- PS2 keyboard
	ps2clk, ps2data: in STD_LOGIC;
   );
end external_devices;

architecture Behavioral of external_devices is

begin


end Behavioral;

