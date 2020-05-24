`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Robert A. Maxwell
// 
// Create Date:    08:53:01 01/31/2020 
// Design Name: 	Mux Full Adder
// Module Name:    fullAdder_mux 
// Project Name:
// Target Devices: 
// Tool versions: 
// Description: Full adder made only with 4x1 muxes
//
// Dependencies: None
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fullAddSub_mux_4b(out, c_out, c_in, inA, inB, add_sub_sel);

	output 	[3:0] 	out;
	output 			c_out;
	input 			c_in;
	input 	[3:0] 	inA, inB;
	input			add_sub_sel;

	wire cout_0, cout_1, cout_2;

	//sum, c_out, c_in, inA, inB			TODO: prolly don't need add_sub_sel fanout
												// c_in is good enough to select
	fullAddSub_mux 	as0(out[0], cout_0, c_in, inA[0], inB[0], add_sub_sel),
					as1(out[1], cout_1, cout_0, inA[1], inB[1], add_sub_sel),
					as2(out[2], cout_2, cout_1, inA[2], inB[2], add_sub_sel),
					as3(out[3], c_out, cout_2, inA[3], inB[3], add_sub_sel);
	

endmodule
