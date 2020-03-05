
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity main is
 Port 
( 
    clk_100M : in  STD_LOGIC;
    load     : IN  STD_LOGIC;
    a        : IN  STD_LOGIC_VECTOR (7 downto 0);
    led      : OUT STD_LOGIC_VECTOR (7 downto 0)
);
end main;

architecture Behavioral of main is
    signal clk0_5 : STD_LOGIC;
    component clock_divider is
        Port 
        ( 
                clk_100M : in STD_LOGIC;
                clk0_5 : out STD_LOGIC
                
        );
    end component;
    component shift_right is
        Port 
        ( 
               a: IN  STD_LOGIC_VECTOR (7 downto 0);
            load: IN  STD_LOGIC;
          clk0_5: IN  STD_LOGIC;
             led: OUT STD_LOGIC_VECTOR (7 downto 0)
        );
      end component;
begin
    u1:clock_divider
    port map
    (
        clk_100M => clk_100M,
        clk0_5   => clk0_5
    );
    u2:shift_right
    port map
    (
        a      => a,
        load   => load,
        clk0_5 => clk0_5,
        led    => led
    );

end Behavioral;
