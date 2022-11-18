library ieee;
use ieee.std_logic_1164.all;

entity testbenchb is
end testbenchb;

architecture behavior of testbenchb is 

	component sumador_completo
	port(
		in_a : in std_logic;
		in_b : in std_logic;
		in_cin : in std_logic;
		clk : in std_logic;
		o_f : out std_logic;
		o_cout : out std_logic);
	end component;
	
	signal in_a : std_logic :='0';
	signal in_b : std_logic :='0';
	signal in_cin : std_logic :='0';
	signal clk : std_logic :='0';
	signal o_f : std_logic;
	signal o_cout : std_logic;
	
	constant clock_period: time :=20ns;
	
	begin
	utt: sumador_completo port map(
		in_a => in_a,
		in_b => in_b,
		in_cin => in_cin,
		clk => clk,
		o_f => o_f,
		o_cout => o_cout);
	
	clock_process: process 
	begin
		clk <='0';
		wait for clock_period/2;
		clk<='1';
		wait for clock_period/2;
	end process;
	
stim_proc: process
begin
	in_a <= '0'; in_b <= '0'; in_cin<= '0'; wait for 30ns;
	in_a <= '0'; in_b <= '0'; in_cin<= '1'; wait for 30ns;
	in_a <= '0'; in_b <= '1'; in_cin<= '0'; wait for 30ns;
	in_a <= '0'; in_b <= '1'; in_cin<= '1'; wait for 30ns;
	in_a <= '1'; in_b <= '0'; in_cin<= '0'; wait for 30ns;
	in_a <= '1'; in_b <= '0'; in_cin<= '1'; wait for 30ns;
	in_a <= '1'; in_b <= '1'; in_cin<= '0'; wait for 30ns;
	in_a <= '1'; in_b <= '1'; in_cin<= '1'; wait for 30ns;
	wait;
	end process;
	end;
	
	
		