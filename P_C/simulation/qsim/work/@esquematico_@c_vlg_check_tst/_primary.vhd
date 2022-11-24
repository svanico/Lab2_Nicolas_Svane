library verilog;
use verilog.vl_types.all;
entity Esquematico_C_vlg_check_tst is
    port(
        Carry           : in     vl_logic;
        F0              : in     vl_logic;
        F1              : in     vl_logic;
        F2              : in     vl_logic;
        F3              : in     vl_logic;
        Sign            : in     vl_logic;
        V               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Esquematico_C_vlg_check_tst;
