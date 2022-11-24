library verilog;
use verilog.vl_types.all;
entity SM1_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SM1_vlg_sample_tst;
