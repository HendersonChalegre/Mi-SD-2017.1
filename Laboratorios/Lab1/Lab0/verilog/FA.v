//-----------------------------------------------------------------------------
// UEFS TEC 499
// Lab 0, 2016.1
// Module: FA.v
// Desc: 1-bit Full Adder
//       You may only use structural verilog in this module.       
//-----------------------------------------------------------------------------
module FA(
    input A, B, Cin,
    output Sum, Cout
);	
	
	wire a_xor_b, Cin_xor_AB, a_and_b;


	xor ( a_xor_b  , A, B);
	and ( Cin_xor_AB, Cin, a_xor_b);
	and ( a_and_b  , A, B);
	or ( Cout, a_and_b  , Cin_xor_AB);
	xor ( Sum, a_xor_b  , Cin);

   // Structural verilog only!
   /********YOUR CODE HERE********/
   /********END CODE********/
endmodule

