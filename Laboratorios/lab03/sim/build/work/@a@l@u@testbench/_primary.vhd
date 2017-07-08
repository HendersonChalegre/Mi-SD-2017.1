library verilog;
use verilog.vl_types.all;
entity ALUTestbench is
    generic(
        Halfcycle       : integer := 5
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Halfcycle : constant is 1;
end ALUTestbench;
