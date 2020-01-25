`define DELAY 20

module mux_4to1_testbench;
   reg a;
   reg b;
   reg c;
   reg d;
   wire out;
   reg [1:0] select;
   
	mux_4to1  mux0 (a, b, c, d, select, out);

	initial begin
		a = 1'b1;
		b = 1'b0;
		c = 1'b0;
		d = 1'b0;
		select = 2'b00;
		#`DELAY;
		a = 1'b1;
		b = 1'b0;
		c = 1'b1;
		d = 1'b1;
		select = 2'b01;
		#`DELAY;
		a = 1'b0;
		b = 1'b0;
		c = 1'b1;
		d = 1'b0;
		select = 2'b10;
		#`DELAY;
		a = 1'b0;
		b = 1'b0;
		c = 1'b0;
		d = 1'b1;
		select = 2'b11;
		#`DELAY;
	end
 
	initial begin
		$monitor("time = %2d, a =%1b, b=%1b, c =%1b, d=%1b, select=%2b, out=%1b", $time, a, b, c, d, select, out);
	end
endmodule