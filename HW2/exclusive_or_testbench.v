`define DELAY 20

module exclusive_or_testbench(); 
	reg a, b;
	wire x;

	exclusive_or exc_or (x, a, b);

	initial begin
		a = 1'b0; b = 1'b0;
		#`DELAY;
		a = 1'b1; b = 1'b0;
		#`DELAY;
		a = 1'b0; b = 1'b1;
		#`DELAY;
		a = 1'b1; b = 1'b1;
	end

	initial begin
		$monitor("time = %2d, a =%1b, b=%1b, x=%1b", $time, a, b, x);
	end
endmodule