//-----------------------------------------------------------------------------
// UEFS TEC 499
// Lab 0, 2016.1
// Module: Adder.v
// Desc: Parametrized structural ripple-carry adder
//-----------------------------------------------------------------------------
module Adder #(
  parameter Width = 8
)
(
  input   [Width-1:0] A,
  input   [Width-1:0] B,
  output  [Width-1:0] Result,
  output              Cout
);

   //Some pre-declarations are already done for you
   
   // Wire used to connect the Cin and Cout of the FA cells
   wire [Width:0]     Carry;
   // Cin of the lowest-bit FA is a 0 for addition
   assign Carry[0] = 1'b0;
   // Cout of the highest-bit FA is assigned to Cout of the adder
   assign Cout = Carry[Width];

   genvar 	      i;

   generate for (i = 0; i < Width; i = i + 1)
    begin:ripple
      FA fullAdder(
        .A(A[i]),
        .B(B[i]),
        .Cin(Carry[i]),
        .Sum(Result[i]),
        .Cout(Carry[i+1])
      );
    end
  endgenerate


  
   /********YOUR CODE HERE********/
   /********END CODE********/

endmodule
