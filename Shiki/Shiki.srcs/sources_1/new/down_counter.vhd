library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity down_counter is
Port 
    ( 
        en   : in STD_LOGIC;
        clk_1: in STD_LOGIC;
        a    : out STD_LOGIC_VECTOR (3 downto 0)
    );
end down_counter;

architecture Behavioral of down_counter is
signal cnt: STD_LOGIC_VECTOR(3 downto 0);
begin
    process(clk_1,en)
    begin
        if rising_edge(clk_1) then
            if en ='1' then
                cnt <= cnt - 1;
            end if;
        end if;        
    end process;
a<=cnt;
end Behavioral;