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
module fullAddSub_mux(out, c_out, c_in, inA, inB, add_sub_sel);

	output out, c_out;
	input c_in;
	input inA, inB;
	input add_sub_sel;

	supply0 GND;
	supply1 VDD;

	wire mux_in_1, mux_in_2, mux_in_3, mux_in_4;

	cmos_inv c_inv(c_in_bar, c_in);

	//(out, inA, inB, inSel)
	mux_2x1_cswitch mux2x1_1(mux_in_1, GND, c_in, add_sub_sel),
					mux2x1_2(mux_in_2, c_in, VDD, add_sub_sel),
					mux2x1_3(mux_in_3, c_in, GND, add_sub_sel),
					mux2x1_4(mux_in_4, VDD, c_in, add_sub_sel);


	//mux_4x1_cswitch(out, inA, inB, inC, inD, inSel1, inSel2)
	mux_4x1_cswitch mux4x1_1(out, c_in, c_in_bar, c_in_bar, c_in, inA, inB),
					mux4x1_2(c_out, mux_in_1, mux_in_2, mux_in_3, mux_in_4, inA, inB);

	

endmodule
