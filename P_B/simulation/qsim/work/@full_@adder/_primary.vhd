library verilog;
use verilog.vl_types.all;
entity Full_Adder is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Cin             : in     vl_logic;
        CLK             : in     vl_logic;
        f               : out    vl_logic;
        Cout            : out    vl_logic
    );
end Full_Adder;
