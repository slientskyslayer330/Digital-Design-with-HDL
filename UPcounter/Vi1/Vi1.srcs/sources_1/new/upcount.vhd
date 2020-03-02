
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity upcount is
    Port 
    (
           Clock : in STD_LOGIC;
           Resetn : in STD_LOGIC;
           E102 : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0)
     );
end upcount;

architecture Behavioral of upcount is
Signal Count :STD_LOGIC_VECTOR (3 downto 0);
begin
    process ( Clock, Resetn)
    begin
        if Resetn = '0' then
            count <= "0000" ;
        elsif rising_edge (Clock) then
            if E102 = '1' then
                Count  <= Count + 1;
            else
                Count <= Count;
            end if; 
        end if;            
    end process;
    Q <= Count;
end Behavioral;
 