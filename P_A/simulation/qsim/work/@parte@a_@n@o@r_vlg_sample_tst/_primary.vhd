library verilog;
use verilog.vl_types.all;
entity ParteA_NOR_vlg_sample_tst is
    port(
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ParteA_NOR_vlg_sample_tst;
