library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        x               : in     vl_logic;
        inclk0          : in     vl_logic;
        areset          : in     vl_logic;
        reset           : in     vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        c0              : out    vl_logic;
        locked          : out    vl_logic;
        r               : out    vl_logic
    );
end Block1;
