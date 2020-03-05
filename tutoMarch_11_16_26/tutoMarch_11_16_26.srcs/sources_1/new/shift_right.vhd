----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2020 02:02:12 PM
-- Design Name: 
-- Module Name: shift_right - Behavioral
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_right is
 Port 
 (
     a: IN  STD_LOGIC_VECTOR (2 downto 0);
      load: IN  STD_LOGIC;
    clk0_5: IN  STD_LOGIC;
       led: OUT STD_LOGIC_VECTOR (2 downto 0)
  );
end shift_right;

architecture Behavioral of shift_right is
signal w: STD_LOGIC_VECTOR ( 2 downto 0);

begin
    process(clk0_5,load,a)
    begin
        if rising_edge(clk0_5) then 
            if load ='1' then 
                w <= a;
            else 
                w <= '0' & a (2 downto 1);
            end if;
         

        end if; 
     end process;          
    led <= w;
end Behavioral;
