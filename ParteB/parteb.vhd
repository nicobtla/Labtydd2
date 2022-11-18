library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity parteb is
port( d,clock: in std_logic;
q: out std_logic);
end parteb;

architecture behavioral of parteb is
begin
process(clock)
begin
if(clock='1' and clock'EVENT) then
q<=d;
end if;
end process;
end behavioral;