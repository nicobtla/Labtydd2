library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo is
port(
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		f : out std_logic;
		cout : out std_logic);
end sumador_completo;

architecture comportamiento of sumador_completo is

begin

f<= a xor b xor cin;
cout <= (a and b) or (cin and (a xor b));

end comportamiento;	


