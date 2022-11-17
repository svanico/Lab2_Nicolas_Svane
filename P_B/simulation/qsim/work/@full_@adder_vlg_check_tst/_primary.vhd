library verilog;
use verilog.vl_types.all;
entity Full_Adder_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        f               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Full_Adder_vlg_check_tst;
