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
operators full name              operations
**        exponentiation,        numeric ** integer,  result numeric
abs       absolute value,        abs numeric,  result numeric
not       complement,            not logic or boolean,  result same

*         multiplication,        numeric * numeric,  result numeric
/         division,              numeric / numeric,  result numeric
mod       modulo,                integer mod integer,  result integer
rem       remainder,             integer rem integer,  result integer

+         unary plus,            + numeric,  result numeric
-         unary minus,           - numeric,  result numeric

+         addition,              numeric + numeric,  result numeric
-         subtraction,           numeric - numeric,  result numeric
&         concatenation,         array or element & array or element,
                                 result array

sll       shift left logical,    logical array sll integer,  result same
srl       shift right logical,   logical array srl integer,  result same
sla       shift left arithmetic, logical array sla integer,  result same
sra       shift right arithmetic,logical array sra integer,  result same
rol       rotate left,           logical array rol integer,  result same
ror       rotate right,          logical array ror integer,  result same

=                                test for equality, result is boolean
/=                               test for inequality, result is boolean
<                                test for less than, result is boolean
<=                               test for less than or equal, result is boolean
>                                test for greater than, result is boolean
>=                               test for greater than or equal, result is boolean

and  logical and,                logical array or boolean,  result is same
or   logical or,                 logical array or boolean,  result is same
nand logical complement of and,  logical array or boolean,  result is same
nor  logical complement of or,   logical array or boolean,  result is same
xor  logical exclusive or,       logical array or boolean,  result is same
xnor logical complement of exclusive or,  logical array or boolean,  result is same

# -- slide 2 end here.--

# --Signed and unsigned difference--

4bit unsigned 
bits  value
0000    0
0001    1
0010    2
0011    3
0100    4
0101    5
0110    6
0111    7
1000    8
1001    9
1010   10
1011   11
1100   12
1101   13
1110   14
1111   15

4bit unsigned
bits  value
0000    0
0001    1
0010    2
0011    3
0100    4
0101    5
0110    6
0111    7
1000   -8
1001   -7
1010   -6
1011   -5
1100   -4
1101   -3
1110   -2
1111   -1

# --Unsigned addition--
4-bit + 4-bit  = maximum 5 bit(higher bit =1)   
 15   +  15    = 30                 (decimal)
1111 + 1111    = 11110              (binary)

# --unsigned multiplication--
4-bit  x  4-bit  =   8-bit (maximum)(higher bit x2)
1111   x  1111   =   11100001       (binary)
  15   x  15     =   225            (decimal)

# --adder logic--
# Half adder(A,B are inputs and sum and carry are outputs)
 sum   <= A XOR B;
 carry <= A AND B;
 
# FULL adder(A,B,C are inputs and sum and carry are outputs) # method 1
sum   <= A XOR B XOR C ;
carry <= (A AND B) OR (B AND C) OR (C AND A) ;

# FULL adder(A,B,C are inputs and sum and carry are outputs) # method 2
 halfadder1sum   <= A XOR B;
 halfadder1carry <= A AND B;
 halfadder2sum   <= halfadder1sum XOR C; (halfadder2sum=fulladdersum)
 halfadder2carry <= halfadder1sum AND C;
 fulladdercarry  <= halfadder1carry OR halfadder2carry;
 
 # --Simple Signal Assignment--
 signal_name <=expression ;
For example,
      a<= ‘1’;
      b<=  a and c;
      b <= ‘1’ & a;
 # s<=(OTHERS=>’0’) ;  is equal to   s <= “0000”;
 
 # --With Select statement--
 
 with DecidingVariable select
 AssignedVariable<= value when DecidingVariableValue,
                    value when anotherDecidingVariableValue,
                    value when others;
For example,
with sel select
f<= '1'  when '1',
    '0'  when others;

# --Conditional Assigning Statement--
Variable<= value WHEN Conditioning_statement ELSE value;

For example,
f <= '1' WHEN  x=y  ELSE '0';

