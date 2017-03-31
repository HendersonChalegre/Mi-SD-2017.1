//-----------------------------------------------------------------------------
// UEFS TEC 499
// Lab 0, 2016.1
// Module: Mux2_1.v
// Desc: OUT = A*(~SEL) + B*(SEL)
//-----------------------------------------------------------------------------
module Mux2_1(
  input A,
  input B,
  input SEL,
  output OUT
);	
	
	wire a, b, notSEL, out;

	not (notSEL, SEL);

	and (a, A, SEL);

	and (b, B, notSEL);

	or (OUT, a, b);

 // You may only use structural verilog! (i.e. wires and gates only)
 /********YOUR CODE HERE********/
 /********END CODE********/
 // assign OUT = 1'b0; //delete this line once you finish writing your logic
   
endmodule
