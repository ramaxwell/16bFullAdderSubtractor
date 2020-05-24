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

module mux_4x1_cswitch(out, inA, inB, inC, inD, inSel1, inSel2);

	output out;
	input inA, inB, inC, inD;
	input inSel1, inSel2;


	wire inSel1Bar, inSel2_bar;

	wire lev1_to_2_wire1, lev1_to_2_wire2;

	//cmos_inv(out,in)	
	cmos_inv c_inv1(inSel1Bar, inSel1),
			c_inv2(inSel2Bar, inSel2);


	//cswitch(out, in, p_ctrl, n_ctrl)

	// 1st level
	cswitch cs11(lev1_to_2_wire1, inA, inSel2, inSel2Bar),
			cs12(lev1_to_2_wire1, inB, inSel2Bar, inSel2),
			cs13(lev1_to_2_wire2, inC, inSel2, inSel2Bar),
			cs14(lev1_to_2_wire2, inD, inSel2Bar, inSel2);

	// 2nd level
	cswitch cs21(out, lev1_to_2_wire1, inSel1, inSel1Bar),
			cs22(out, lev1_to_2_wire2, inSel1Bar, inSel1);

endmodule

	
