----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2020 02:33:42 PM
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
           en : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           x : out STD_LOGIC);
end mux41;

architecture Behavioral of mux41 is

begin
process (a,b,c,d,en,sel)
begin
    if en = '1' then
        case sel is
            when "00" => x <= a;
            when "01" => x <= b;
            when "10" => x <= c;
            when "11" => x <= d;
        end case;
    else x <= '0';
    end if;
end process;
end Behavioral;


