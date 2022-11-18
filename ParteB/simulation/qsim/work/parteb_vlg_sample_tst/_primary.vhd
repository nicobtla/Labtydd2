library verilog;
use verilog.vl_types.all;
entity parteb_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        d               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end parteb_vlg_sample_tst;
