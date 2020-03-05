

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock_divider is
    Port ( 
            clk_100M : in STD_LOGIC;
            clk0_5 : out STD_LOGIC
            
        );
end clock_divider;

architecture Behavioral of clock_divider is


    signal counter: integer range 0 to 99999999:=0;
    signal clk_05:STD_LOGIC:='0';
     
    begin
        process(clk_100M)
        begin
            if rising_edge(clk_100M) then
                if counter = 99999999 then 
                    counter <= 0;
                    clk_05 <= not clk_05;
                    
                else 
                    counter <= counter +1;
                end if;
            end if;
        end process;
    clk0_5 <= clk_05;                    
end Behavioral;
