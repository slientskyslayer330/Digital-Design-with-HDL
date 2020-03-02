

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eg2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           f : out STD_LOGIC
           );
end eg2;

architecture Behavioral of eg2 is

begin
    f <= (a and b) or ((not a) and b);

end Behavioral;
