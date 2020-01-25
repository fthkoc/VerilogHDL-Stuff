// 1-Bit ALU Implementation based on the document of 2019-Fall, CSE331, Assignment 2.
// Defined OPCODEs: 
//  000		AND
//  001		OR 
//  010		ADD
//  011		SUBSTRACT
//  111		SET ON LESS THAN
module ALU_1bit(
	input a, b,  			// ALU 1-Bit Inputs                 
	input [2:0] ALU_op,	// ALU 3-Bit Operation Control Inputs
	input carry_in,		// Carry Input for Arithmetic Operations
	input less,				// less -> mux[3]
	output carry_out,		// Carry Output from Arithmetic Operations
	output result			// 1-Bit Output
);

	wire w0, w1, w2, w3, w4, w5, w6, w7, w8;

	exclusive_or exc_or(w0, b, ALU_op[2]);		// XOR
	and(w1, a, w0);									// w1 -> mux[0]
	or(w2, a, w0);										// w2 -> mux[1]
	not(w3, w1);
	and(w4, w2, w3);
	and(w5, w4, carry_in);
	or(carry_out, w1, w5);							// carry_out
	not(w6, w5);
	or(w7, w4, carry_in);
	and(w8, w6, w7);									// w8 -> mux[2]
	mux_4to1 mux(w1, w2, w8, less, ALU_op[1:0], result);
endmodule

