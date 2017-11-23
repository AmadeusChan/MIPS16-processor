----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
    Port ( clk : in  STD_LOGIC; -- 50 MHz
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
			  
           dyp0 : out  STD_LOGIC_VECTOR (6 downto 0);
           dyp1 : out  STD_LOGIC_VECTOR (6 downto 0);
			  
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
			  
			  -- flash
			  flash_byte, flash_vpen, flash_ce, flash_oe, flash_we, flash_rp: out STD_LOGIC;
			  flash_addr: out STD_LOGIC_VECTOR(22 downto 0);
			  flash_data: inout STD_LOGIC_VECTOR(15 downto 0)
			  
			  );
end processor;

architecture Behavioral of processor is

begin


end Behavioral;

