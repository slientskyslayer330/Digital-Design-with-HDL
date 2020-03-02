
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenseg is
    Port ( p : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0));
end sevenseg;

architecture Behavioral of sevenseg is

begin
with p select 
seg <= "1000000" when '0',
       "1111001"  when '1',
    "1111111"  when others;
    an <= "11110111";
end Behavioral;
