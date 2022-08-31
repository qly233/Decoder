`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:36:58 11/17/2021
// Design Name:   yimaqi
// Module Name:   D:/szdl/yimaqi/test.v
// Project Name:  yimaqi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: yimaqi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg G;
	reg GA;
	reg GB;
	reg [2:0] A;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	yimaqi uut (
		.G(G), 
		.GA(GA), 
		.GB(GB), 
		.A(A), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		G = 0;
		GA = 0;
		GB = 0;
		A = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 1;
		GB = 0;
		A = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
      G = 1;
		GA = 0;
		GB = 1;
		A = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 0;
		GB = 0;
		A = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 0;
		GB = 0;
		A = 3'b001;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 0;
		GB = 0;
		A = 3'b010;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 0;
		GB = 0;
		A = 3'b011;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 0;
		GB = 0;
		A = 3'b100;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 0;
		GB = 0;
		A = 3'b101;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 0;
		GB = 0;
		A = 3'b110;

		// Wait 100 ns for global reset to finish
		#100;
		G = 1;
		GA = 0;
		GB = 0;
		A = 3'b111;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

