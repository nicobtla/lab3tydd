library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        areset          : in     vl_logic;
        inclk0          : in     vl_logic;
        reset           : in     vl_logic;
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
