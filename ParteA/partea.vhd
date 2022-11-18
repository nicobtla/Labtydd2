library ieee;
use ieee.std_logic_1164.all;

entity partea is
	port( sw1 : in std_logic;
			sw2 : in std_logic;
			led : out std_logic);
end partea;

architecture behavioral of partea is 

begin

led <= not (sw1 and sw2);

end behavioral;

