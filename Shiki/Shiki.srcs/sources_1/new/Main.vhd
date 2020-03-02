library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Main is
Port 
    ( 
        clk_100M : in STD_LOGIC;
        en       : in STD_LOGIC;
        s        :out STD_LOGIC_VECTOR (6 downto 0);
        an       :out STD_LOGIC_VECTOR (7 downto 0)
    );
end Main;

architecture Behavioral of Main is
    signal clk_1: STD_LOGIC;
    signal a    : STD_LOGIC_VECTOR (3 downto 0);

    component clk_divider is
        Port 
            (   
                clk_100M : in STD_LOGIC;
                clk_1    : out STD_LOGIC
            );
    end component;    
    component down_counter is
        Port 
            (   
                en   : in STD_LOGIC;
                clk_1: in STD_LOGIC;
                a    : out STD_LOGIC_VECTOR (3 downto 0)
            );
    end component;
    component HextoDec is
        Port 
            (   
                a :in STD_LOGIC_VECTOR  (3 downto 0);
                s :out STD_LOGIC_VECTOR (6 downto 0);
                an:out STD_LOGIC_VECTOR (7 downto 0)
            );
    end component;
      
begin

ClockDivider: clk_divider
port map
    (
        clk_100M => clk_100M,
        clk_1    => clk_1
    );
DownCounter: down_counter
port map
    (
        en    => en,
        clk_1 => clk_1,
        a     => a
    );    
display: HextoDec
port map
    (
        a => a,
        s => s,
        an=> an
    );

end Behavioral;
