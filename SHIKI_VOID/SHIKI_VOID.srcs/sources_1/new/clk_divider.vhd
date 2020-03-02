
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity clk_divider is
    Port 
    (   
        clk_100M : in STD_LOGIC;
        clk_3    : out STD_LOGIC
    );
end clk_divider;

architecture Behavioral of clk_divider is
    signal cnt: integer range 0 to 16666665:= 0;
    signal clk3: STD_LOGIC;
    begin
        process(clk_100M)
            begin
                if rising_edge (clk_100M) then
                    if cnt = 150000  then
                        cnt <= 0;
                        clk3 <= not clk3;
                    else 
                        cnt <= cnt+1;
                    end if ;
                end if ;
        end process;
    clk_3 <= clk3;
end Behavioral;
