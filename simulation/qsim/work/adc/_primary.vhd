library verilog;
use verilog.vl_types.all;
entity adc is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        x               : in     vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic
    );
end adc;
