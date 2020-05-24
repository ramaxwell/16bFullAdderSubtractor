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

module cmos_inv(inv_out, inv_in);

	output inv_out;
	input inv_in;
	supply0 GND;
	supply1 VDD;
	
	//drain, source, gate || pmos #(1:2:3) pm1(inv_out, VDD, inv_in);
	pmos pm1(inv_out, VDD, inv_in);
	nmos nm1(inv_out, GND, inv_in);

endmodule

