library verilog;
use verilog.vl_types.all;
entity parteb is
    port(
        d               : in     vl_logic;
        clock           : in     vl_logic;
        q               : out    vl_logic
    );
end parteb;
