# Digital-Design-with-HDL
# Exam Prepartation for VHDL


 I will list some importnant note here.
# In VHDL, It is *CaSe-InSeNiTiVe*
# -- Standard Format for VHDL files are 

Library IEEE;
USE IEE.STD_LOGIC_1164.ALL;
USE IEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY file_name is 
PORT
  (
    a,b : input  STD_LOGIC;
    c   : input  STD_LOGIC_VECTOR ( 3 DOWNTO 0);
    d   : output STD_LOGIC_VECTOR ( 3 DOWNTO 0);
    e   : output SIGNED (3 DOWNTO 0);
    f   : output UNSIGNED (3 DOWNTO 0)
  );
END file_name;  

ARCHITECTURE BEHAVIORAL of file_name is 
SIGNAL z :STD_LOGIC;
SIGNAL y :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL x :INTEGER ( 3 DOWNTO 0);
SIGNAL w :INTEGER RANGE 0 to 2184415;
SIGNAL v :STD_LOGIC_VECTOR(2 DOWNTO 0):="011";
BEGIN
    --INSERT YOUR FUNCTION HERE--
END BEHAVIORAL;

-- Entiity variable --

in , out, inout , buffer ( the last two dont use).

# --assigning format--

1 bit is assigned by single quoted format: i.e. '0','1'.
multibit is assigned by double quoted format: i.e. "0000", "001".
interger is assigned by without quoted format: i.e. 4,8,315.

# --Signal format and types--

# SIGNAL signal_name : type_name ;  
BIT, (not used)
BIT_VECTOR, (not used)
 STD_LOGIC,
 STD_LOGIC_VECTOR, 
STD_ULOGIC, (not used)
 SIGNED,
 UNSIGNED,
 INTEGER,
ENUMERATION,(not used)
and BOOLEAN.(not used)

# -- VHDL Operators--
