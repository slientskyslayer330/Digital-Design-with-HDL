----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2020 03:43:38 PM
-- Design Name: 
-- Module Name: sim - Behavioral
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

entity sim is
--  Port ( );
end sim;

architecture Behavioral of sim is
component cld_div is Port ( clk100M : in STD_LOGIC;
clk10 : out STD_LOGIC);
end component;
signal clk100M:std_logic;
signal clk10:std_logic;
begin
u1:cld_div
port map
(
    clk100M => clk100M,
    clk10 => clk10
);
process
begin
    clk100M <= '0'; wait for 5 ns;
    clk100M <= '1'; wait for 5 ns;
end process;

end Behavioral;
