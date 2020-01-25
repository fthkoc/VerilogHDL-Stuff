`define DELAY 20

module ALU_1bit_testbench;
   reg a;
   reg b;
   reg [2:0] ALU_op;
   reg carry_in;
   reg less;
   wire carry_out;
   wire result;
   
	ALU_1bit  alu1 (a, b, ALU_op, carry_in, less, carry_out, result);

	initial begin
		// OPCODE: 000 AND
		a = 1'b0; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b000;
		#`DELAY;
		a = 1'b0; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b000;
		#`DELAY;
		a = 1'b1; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b000;
		#`DELAY;
		a = 1'b1; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b000;
		#`DELAY;
		
		// OPCODE: 001 OR
		a = 1'b0; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b001;
		#`DELAY;
		a = 1'b0; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b001;
		#`DELAY;
		a = 1'b1; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b001;
		#`DELAY;
		a = 1'b1; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b001;
		#`DELAY;
		
		// OPCODE: 010 ADD
		a = 1'b0; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 1'b0; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 1'b1; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 1'b1; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 1'b0; b = 1'b0; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 1'b0; b = 1'b1; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 1'b1; b = 1'b0; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		a = 1'b1; b = 1'b1; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b010;
		#`DELAY;
		
		// OPCODE: 011 SUBSTRACT
		a = 1'b0; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		a = 1'b0; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		a = 1'b1; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		a = 1'b1; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		a = 1'b0; b = 1'b0; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		a = 1'b0; b = 1'b1; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		a = 1'b1; b = 1'b0; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		a = 1'b1; b = 1'b1; carry_in = 1'b1; less = 1'b0; ALU_op = 3'b011;
		#`DELAY;
		
		// OPCODE: 111 SET ON LESS THAN
		a = 1'b0; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b111;
		#`DELAY;
		a = 1'b0; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b111;
		#`DELAY;
		a = 1'b1; b = 1'b0; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b111;
		#`DELAY;
		a = 1'b1; b = 1'b1; carry_in = 1'b0; less = 1'b0; ALU_op = 3'b111;
		#`DELAY;
		a = 1'b0; b = 1'b0; carry_in = 1'b0; less = 1'b1; ALU_op = 3'b111;
		#`DELAY;
		a = 1'b0; b = 1'b1; carry_in = 1'b0; less = 1'b1; ALU_op = 3'b111;
		#`DELAY;
		a = 1'b1; b = 1'b0; carry_in = 1'b0; less = 1'b1; ALU_op = 3'b111;
		#`DELAY
		a = 1'b1; b = 1'b1; carry_in = 1'b0; less = 1'b1; ALU_op = 3'b111;
		#`DELAY;
	end
	 
	initial begin
		$monitor("time = %2d, a =%1b, b=%1b, carry_in =%1b, less=%1b, ALU_op =%3b, carry_out =%1b, result=%1b", $time, a, b, carry_in, less, ALU_op, carry_out, result);
	end
endmodule