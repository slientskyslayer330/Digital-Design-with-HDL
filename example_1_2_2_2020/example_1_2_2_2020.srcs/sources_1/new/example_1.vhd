library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity example_1 is
    Port 
    (       
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           f : out STD_LOGIC
    );
end example_1;

architecture Behavioral of example_1 is

    begin

        f <= a and b;


end Behavioral;
