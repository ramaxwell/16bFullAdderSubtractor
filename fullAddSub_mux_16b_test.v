`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:10:54 10/24/2011
// Design Name:   Adder_32b
// Module Name:   D:/Xilinx_Working/Adder_32b/adder_32b_test.v
// Project Name:  Adder_32b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder_32b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fullAddSub_mux_16b_test;

	//
	reg 	[15:0]	inA, inB;
	reg				c_in, add_sub_sel;
	wire 	[15:0]	out;
	wire 			c_out;
	
	//sum, c_out, c_in, inA, inB)
	// Instantiate the Unit Under Test (UUT)
	fullAddSub_mux_16b uut (
		.inA(inA),
		.inB(inB),
		.c_in(c_in),
		.c_out(c_out),
		.out(out),
		.add_sub_sel(add_sub_sel)
	);
	
	initial begin
		$dumpvars(0,fullAddSub_mux_16b_test);
	end
	

	initial begin
		// Initialize Inputs

	//ADDER
	add_sub_sel = 0;

	inA = 16'h0000;
	inB = 16'h0000;
	c_in = 0;

	#10;
	inA = 16'h7F93;		//32659
	inB = 16'h1234;		//4660		--> 37319

	#10;
	inA = 16'h93F7;		//37879
	inB = 16'h4321;		//17185		--> 55064

	#10;
	inA = 16'h5678;		//22136
	inB = 16'h0001;		//1			--> 22137
	#10;
	inA = 16'h8765;		//34661
	inB = 16'hA001;		//40961		--> 75622
	#10;
	inA = 16'h1234;		//4660
	inB = 16'h1234;		//4660		--> 9320
	#10;
	inA = 16'hFFFF;		//65535
	inB = 16'h0001;		//1			--> 65536
	#10;
	inA = 16'h0001;		//1
	inB = 16'hFFFF;		//65535		--> 65536
	#10;

	//SUBTRACT

	add_sub_sel = 1;

	inA = 16'h0000;
	inB = 16'h0000;
	//c_in = 0;

	#10;
	inA = 16'h7F93;		//32659
	inB = 16'h1234;		//4660		--> 27999

	#10;
	inA = 16'h93F7;		//37879
	inB = 16'h4321;		//17185		--> 20694

	#10;
	inA = 16'h5678;		//22136
	inB = 16'h0001;		//1			--> 22135
	#10;
	inA = 16'h8765;		//34661
	inB = 16'hA001;		//40961		--> -6300
	#10;
	inA = 16'h1234;		//4660
	inB = 16'h1234;		//4660		--> 0
	#10;
	inA = 16'hFFFF;		//65535
	inB = 16'h0001;		//1			--> 65534
	#10;
	inA = 16'h0001;		//1
	inB = 16'hFFFF;		//65535		--> -65534
	#10;

	end
      
endmodule

