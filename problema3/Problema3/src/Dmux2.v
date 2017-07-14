module Dmux2 #(parameter SIZE = 32) (
    input Sel,
    input [(SIZE-1):0] In,

    output [(SIZE-1):0] Out0,
    output [(SIZE-1):0] Out1
);

assign Out0 = (!Sel) ? In : 1'b0;
assign Out1 =  (Sel) ? In : 1'b0;

endmodule