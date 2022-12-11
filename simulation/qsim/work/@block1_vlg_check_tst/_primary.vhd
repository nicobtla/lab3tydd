library verilog;
use verilog.vl_types.all;
entity Block1_vlg_check_tst is
    port(
        c0              : in     vl_logic;
        led1            : in     vl_logic;
        led2            : in     vl_logic;
        led3            : in     vl_logic;
        locked          : in     vl_logic;
        reset           : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        s3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block1_vlg_check_tst;
