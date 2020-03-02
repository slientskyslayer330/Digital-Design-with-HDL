----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2020 02:15:19 PM
-- Design Name: 
-- Module Name: decoder24 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder24 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           en : in STD_LOGIC;
           o : out STD_LOGIC_VECTOR (3 downto 0));
end decoder24;

architecture Behavioral of decoder24 is
signal ab:std_logic_vector(1 downto 0);
begin
process (a,b,en)
begin
ab <= a&b;
if en='1' then 
    with ab select
    o <= "0000" when "00",
         "0001" when "01",
         "1111" when others;
else 
        o<="0000";
end if;
end process;

end Behavioral;
