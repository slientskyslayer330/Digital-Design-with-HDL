library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Main is
    Port 
        ( 
            a : in STD_LOGIC;
            b : in STD_LOGIC;
            c : in STD_LOGIC;
            clk_100M : in STD_LOGIC;
            s : out STD_LOGIC_VECTOR (6 downto 0);
            an : out STD_LOGIC_VECTOR(7 downto 0)
        );
end Main;

architecture Behavioral of Main is

    signal HalfhAdder1Sum  : STD_LOGIC;
    signal HalfhAdder1Carry: STD_LOGIC;
    signal HalfhAdder2Carry: STD_LOGIC;
    signal clk_3           : STD_LOGIC;
    signal bit0            : STD_LOGIC;
    signal bit1            : STD_LOGIC;
    component Half_Adder is
        port
            (
            a       : in STD_LOGIC;
            b       : in STD_LOGIC;
            sum     : out STD_LOGIC;
            carry   : out STD_LOGIC
            );
    end component;
    component clk_divider is
        port
            (
                clk_100M : in STD_LOGIC;
                clk_3    : out STD_LOGIC
            );
    end component;
    component HextoDec is
        port
            (
                bit0 :in STD_LOGIC;
                bit1 :in STD_LOGIC;
                clk_3:in STD_LOGIC;
                s :out STD_LOGIC_VECTOR (6 downto 0);
                an:out STD_LOGIC_VECTOR (7 downto 0)
            );
    end component;        

begin

    HalfAdder1: Half_Adder
        port map
            (
                a     => a,
                b     => b,
                sum   => HalfhAdder1Sum,
                carry => HalfhAdder1Carry
            );
    HalfAdder2: Half_Adder
        port map
            (
                a     => HalfhAdder1Sum,
                b     => c,
                sum   => bit0,
                carry => HalfhAdder2Carry
            );
    bit1 <= HalfhAdder1Carry or HalfhAdder2Carry;
    Clock_Divider: clk_divider
        port map
            (
                clk_100M => clk_100M,
                clk_3    => clk_3
            );
    Display: HextoDec
        port map
            (
                bit0 => bit0,
                bit1 => bit1,
                clk_3 => clk_3,
                s => s,
                an => an
            );        

end Behavioral;