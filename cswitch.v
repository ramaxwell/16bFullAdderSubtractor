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

module cswitch(out, in, p_ctrl, n_ctrl);

	output out;
	input in;
	input p_ctrl, n_ctrl;

		//drain, source, gate
	pmos(out, in, p_ctrl);
	nmos(out, in, n_ctrl);

endmodule
