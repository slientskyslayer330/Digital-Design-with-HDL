----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2020 03:29:43 PM
-- Design Name: 
-- Module Name: cld_div - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cld_div is
    Port ( clk100M : in STD_LOGIC;
           clk10 : out STD_LOGIC);
end cld_div;

architecture Behavioral of cld_div is
signal count:integer range 0 to 4999999:=0;
signal clk:std_logic:='0';
begin
process (clk100M)
begin
    if rising_edge(clk100M) then
        if count = 4999999 then
            count <= 0;
            clk <= not clk;
        else
            count <= count + 1;
         end if;
    --else count <= count;
    end if;
end process;
clk10 <= clk;


end Behavioral;