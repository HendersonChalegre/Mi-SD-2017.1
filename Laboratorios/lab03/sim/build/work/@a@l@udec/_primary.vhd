library verilog;
use verilog.vl_types.all;
entity ALUdec is
    port(
        funct           : in     vl_logic_vector(5 downto 0);
        opcode          : in     vl_logic_vector(5 downto 0);
        ALUop           : out    vl_logic_vector(3 downto 0)
    );
end ALUdec;
