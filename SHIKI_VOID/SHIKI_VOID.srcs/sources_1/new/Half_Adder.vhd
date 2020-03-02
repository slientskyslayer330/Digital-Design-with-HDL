library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Half_Adder is
    Port 
        ( 
            a : in STD_LOGIC;
            b : in STD_LOGIC;
            sum : out STD_LOGIC;
            carry : out STD_LOGIC
        );
end Half_Adder;

architecture Behavioral of Half_Adder is

begin

    carry <= a and b;
    sum <= a xor b;

end Behavioral;
