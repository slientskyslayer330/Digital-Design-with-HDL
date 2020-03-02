
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity clk_divider is
    Port 
    (   clk_100M : in STD_LOGIC;
        clk_1    : out STD_LOGIC
    );
end clk_divider;

architecture Behavioral of clk_divider is
    signal cnt: integer range 0 to 49999999:= 0;
    signal clk1: STD_LOGIC:='0';
begin
process(clk_100M)
    begin
        if rising_edge (clk_100M) then
            if cnt = 49999999  then
                cnt <=0;
                clk1 <= not clk1;
            else 
                cnt <= cnt +1;
            end if ;
        end if ;
    end process;
clk_1 <= clk1;
end Behavioral;
