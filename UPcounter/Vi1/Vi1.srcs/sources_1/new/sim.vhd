
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim is
--  Port ( );
end sim;

architecture Behavioral of sim is
signal Clock,Resetn,E102:STD_LOGIC;
Signal Q :STD_LOGIC_VECTOR (3 downto 0);
component upcount is 
port
(
    Clock  : in  STD_LOGIC;
    Resetn : in  STD_LOGIC;
    E102   : in STD_LOGIC;
    Q      : out STD_LOGIC_VECTOR (3 downto 0)
);
end component;
begin
u: upcount
port map
(
    Clock     => Clock,
    Resetn    => Resetn,
    E102      => E102,
    Q         => Q
);
process
begin
    clock <= '1'; wait for 5 ns;
    clock <= '0'; wait for 5 ns;
end process;
process 
begin
    Resetn <= '0'; wait for 20 ns;
    Resetn <= '1';wait for 100ns;
end process;
process
begin
    E102 <= '1'; wait for 20 ns;
    E102 <= '0'; wait for 20  ns;
end process;

end Behavioral;
