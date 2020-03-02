

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity main is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end main;

architecture Behavioral of main is
    signal p: STD_LOGIC;
component logic is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           p : out STD_LOGIC);
end component;
component  sevenseg is
    Port ( p : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0));
end component;          
begin
u1:logic
port map
(
    a => a, 
    b => b,
    c => c,
    p => p
);
u2:sevenseg
port map
(
    p => p,
    an => an, 
    seg => seg
);

end Behavioral;
