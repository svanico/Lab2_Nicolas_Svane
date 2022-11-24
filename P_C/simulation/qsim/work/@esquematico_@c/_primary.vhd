library verilog;
use verilog.vl_types.all;
entity Esquematico_C is
    port(
        V               : out    vl_logic;
        A3              : in     vl_logic;
        CLK             : in     vl_logic;
        B3              : in     vl_logic;
        A2              : in     vl_logic;
        B2              : in     vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        A0              : in     vl_logic;
        B0              : in     vl_logic;
        Cin             : in     vl_logic;
        Z               : out    vl_logic;
        Sign            : out    vl_logic;
        Carry           : out    vl_logic;
        F0              : out    vl_logic;
        F1              : out    vl_logic;
        F2              : out    vl_logic;
        F3              : out    vl_logic
    );
end Esquematico_C;
