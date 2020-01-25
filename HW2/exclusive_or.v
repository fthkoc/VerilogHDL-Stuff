// XOR Gate Implementation
module exclusive_or (
	output x, 	// 1-bit output called x
	input a, 	// 1-bit input called a
	input b		// 1-bit input called b
);
	wire temp_first, temp_second, not_a, not_b;

	not not_b_op(not_b, b);
	and first(temp_first, a, not_b);
	not not_a_op(not_a, a);
	and second(temp_second, not_a, b);
	or result(x, temp_first, temp_second);
endmodule