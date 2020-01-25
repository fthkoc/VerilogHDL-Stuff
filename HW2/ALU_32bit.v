// 32-Bit ALU Implementation based on the document of 2019-Fall, CSE331, Assignment 2.
// It uses 1-Bit ALU for each bit.
// Defined OPCODEs: 
//  000		AND
//  001		OR 
//  010		ADD
//  011		SUBSTRACT
//  111		SET ON LESS THAN
module ALU_32bit(
	input [31:0] a, b,  	// ALU 32-Bit Inputs                 
	input [2:0] ALU_op,	// ALU 3-Bit Operation Control Inputs
	input carry_in,		
	input less,											
	output carry_out,
	output [31:0] result
);
	wire [31:1] carry;
	
	ALU_1bit  alu0 (a[0], b[0], ALU_op, carry_in, less, carry[1], result[0]);
	ALU_1bit  alu1 (a[1], b[1], ALU_op, carry[1], less, carry[2], result[1]);
	ALU_1bit  alu2 (a[2], b[2], ALU_op, carry[2], less, carry[3], result[2]);
	ALU_1bit  alu3 (a[3], b[3], ALU_op, carry[3], less, carry[4], result[3]);
	ALU_1bit  alu4 (a[4], b[4], ALU_op, carry[4], less, carry[5], result[4]);
	ALU_1bit  alu5 (a[5], b[5], ALU_op, carry[5], less, carry[6], result[5]);
	ALU_1bit  alu6 (a[6], b[6], ALU_op, carry[6], less, carry[7], result[6]);
	ALU_1bit  alu7 (a[7], b[7], ALU_op, carry[7], less, carry[8], result[7]);
	ALU_1bit  alu8 (a[8], b[8], ALU_op, carry[8], less, carry[9], result[8]);
	ALU_1bit  alu9 (a[9], b[9], ALU_op, carry[9], less, carry[10], result[9]);
	ALU_1bit  alu10 (a[10], b[10], ALU_op, carry[10], less, carry[11], result[10]);
	ALU_1bit  alu11 (a[11], b[11], ALU_op, carry[11], less, carry[12], result[11]);
	ALU_1bit  alu12 (a[12], b[12], ALU_op, carry[12], less, carry[13], result[12]);
	ALU_1bit  alu13 (a[13], b[13], ALU_op, carry[13], less, carry[14], result[13]);
	ALU_1bit  alu14 (a[14], b[14], ALU_op, carry[14], less, carry[15], result[14]);
	ALU_1bit  alu15 (a[15], b[15], ALU_op, carry[15], less, carry[16], result[15]);
	ALU_1bit  alu16 (a[16], b[16], ALU_op, carry[16], less, carry[17], result[16]);
	ALU_1bit  alu17 (a[17], b[17], ALU_op, carry[17], less, carry[18], result[17]);
	ALU_1bit  alu18 (a[18], b[18], ALU_op, carry[18], less, carry[19], result[18]);
	ALU_1bit  alu19 (a[19], b[19], ALU_op, carry[19], less, carry[20], result[19]);
	ALU_1bit  alu20 (a[20], b[20], ALU_op, carry[20], less, carry[21], result[20]);
	ALU_1bit  alu21 (a[21], b[21], ALU_op, carry[21], less, carry[22], result[21]);
	ALU_1bit  alu22 (a[22], b[22], ALU_op, carry[22], less, carry[23], result[22]);
	ALU_1bit  alu23 (a[23], b[23], ALU_op, carry[23], less, carry[24], result[23]);
	ALU_1bit  alu24 (a[24], b[24], ALU_op, carry[24], less, carry[25], result[24]);
	ALU_1bit  alu25 (a[25], b[25], ALU_op, carry[25], less, carry[26], result[25]);
	ALU_1bit  alu26 (a[26], b[26], ALU_op, carry[26], less, carry[27], result[26]);
	ALU_1bit  alu27 (a[27], b[27], ALU_op, carry[27], less, carry[28], result[27]);
	ALU_1bit  alu28 (a[28], b[28], ALU_op, carry[28], less, carry[29], result[28]);
	ALU_1bit  alu29 (a[29], b[29], ALU_op, carry[29], less, carry[30], result[29]);
	ALU_1bit  alu30 (a[30], b[30], ALU_op, carry[30], less, carry[31], result[30]);
	ALU_1bit  alu31 (a[31], b[31], ALU_op, carry[31], less, carry_out, result[31]);
endmodule

