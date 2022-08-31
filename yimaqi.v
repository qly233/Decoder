`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:21 11/17/2021 
// Design Name: 
// Module Name:    yimaqi 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module yimaqi(G,GA,GB,A,Y);
	input G,GA,GB;
	input[2:0] A;
	wire G,GA,GB;
	wire[2:0] A;
	output[7:0] Y;
	reg[7:0] Y;
	always@(G or GA or GB or A)
	begin
		if(G==1&GA==0&GB==0)
		begin
			if(A == 3'b000)
				Y = 8'b11111110;
			else if(A == 3'b001)
				Y = 8'b11111101;
			else if(A == 3'b010)
				Y = 8'b11111011;
			else if(A == 3'b011)
				Y = 8'b11110111;
			else if(A == 3'b100)
				Y = 8'b11101111;
			else if(A == 3'b101)
				Y = 8'b11011111;
			else if(A == 3'b110)
				Y = 8'b10111111;
			else
				Y = 8'b01111111;
		end
		else
			Y = 8'b11111111;
	end
endmodule
