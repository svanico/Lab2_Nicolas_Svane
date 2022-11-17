library verilog;
use verilog.vl_types.all;
entity Full_Adder_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Cin             : in     vl_logic;
        CLK             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Full_Adder_vlg_sample_tst;
