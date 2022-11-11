library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbencha is
end testbencha

architecture behavior of testbencha is

	component testbencha
	port(
		SW1:in STD_LOGIC;
		sw2:in std_LOGIC;
		led:out std_LOGIC;
		);
	end component;
signal sw1:std_LOGIC:='0';
signal sw2:std_LOGIC:='0';
signal led:std_LOGIC;

	
begin
utt: testbencha port map(
	sw1=>sw1,
	sw2=>sw2,
	led=>led
	);
	
stim_proc:process
begin
sw1<='0';sw2<='0' ;wait for 10ns;
sw1<='0';sw2<='1' ;wait for 10ns;
sw1<='1';sw2<='0' ;wait for 10ns;
sw1<='1';sw2<='1' ;wait for 10ns;
wait;
end process
end;









 