library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity HextoDec is
Port 
(
    bit0 :in STD_LOGIC;
    bit1 :in STD_LOGIC;
    clk_3:in STD_LOGIC;
    s :out STD_LOGIC_VECTOR (6 downto 0);
    an:out STD_LOGIC_VECTOR (7 downto 0)
);
end HextoDec;

architecture Behavioral of HextoDec is
    signal a: STD_LOGIC;
    begin
    with clk_3 select
        a <= bit0 when '0',
             bit1 when others;
             
    with clk_3 select
    an <= "11111110" when '0',
          "11111101" when others;
     
    with a select 
        s <= "1000000" when '0' , 
             "1111001" when '1' ,
             "1111111" when others;
    


end Behavioral;
