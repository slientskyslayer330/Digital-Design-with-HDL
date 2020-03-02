

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           p : out STD_LOGIC);
end logic;

architecture Behavioral of logic is

begin
p <= a and b and c;

end Behavioral;
