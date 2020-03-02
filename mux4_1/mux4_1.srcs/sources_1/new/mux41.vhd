----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2020 01:55:01 PM
-- Design Name: 
-- Module Name: mux41 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux41 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           x : out STD_LOGIC);
end mux41;

architecture Behavioral of mux41 is
component mux21 is
    Port (  a : in STD_LOGIC;
            b : in STD_LOGIC;
            m : out STD_LOGIC;
            sel : in STD_LOGIC);
end component;
signal m:std_logic_vector(1 downto 0);
begin
u1:mux21
port map(
    a =>a,
    b=>b,
    sel=>s(0),
    m=>m(0)
);
u2:mux21
port map(
    a =>c,
    b=>d,
    sel=>s(0),
    m=>m(1)
);
u3:mux21
port map(
    a =>m(0),
    b=>m(1),
    sel=>s(1),
    m=>x
);

end Behavioral;
