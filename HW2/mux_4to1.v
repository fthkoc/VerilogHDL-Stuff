// 4:1 Multiplexer Implementation
module mux_4to1 ( 
	input a,       		// 1-bit input called a
	input b,       		// 1-bit input called b
	input c,       		// 1-bit input called c
	input d,       		// 1-bit input called d
   input [1:0] select, 	// 2-bit selection input
   output out				// 1-bit output based on input select
);

	wire w1, w2, w3, w4, not_select0, not_select1;
	
	not(not_select0, select[0]);
	not(not_select1, select[1]);
	and(w1, a, not_select0, not_select1);
	and(w2, b, select[0], not_select1);
	and(w3, c, select[1], not_select0);
	and(w4, d, select[0], select[1]);
	or (out, w1, w2, w3, w4);
endmodule