`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Robert A. Maxwell
// 
// Create Date:    10:33:01 01/31/2020 
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

module mux_2x1_cswitch(out, inA, inB, inSel);

	output out;
	input inA, inB, inSel;

	wire inSelBar;

	cmos_inv c_inv(inSelBar, inSel);

	//(out, in, p_ctrl, n_ctrl)
	cswitch cs1(out, inB, inSelBar, inSel),
			cs2(out, inA, inSel, inSelBar);
	
endmodule
