library verilog;
use verilog.vl_types.all;
entity SM1 is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        x               : in     vl_logic;
        z               : out    vl_logic
    );
end SM1;
