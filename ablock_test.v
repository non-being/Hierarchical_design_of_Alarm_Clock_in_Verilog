`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:15:07 05/04/2024
// Design Name:   alarm_block
// Module Name:   C:/Users/Admin/Documents/Doc/xillinxdesignsuite/projects/testproject1/ablock_test.v
// Project Name:  testproject1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alarm_block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ablock_test;

	// Inputs
	reg reset;
	reg [1:0] c_hour1;
	reg [1:0] a_hour1;
	reg [3:0] c_hour0;
	reg [3:0] a_hour0;
	reg [3:0] c_min1;
	reg [3:0] a_min1;
	reg [3:0] c_min0;
	reg [3:0] a_min0;
	reg AL_ON;
	reg STOP_al;

	// Outputs
	wire Alarm;

	// Instantiate the Unit Under Test (UUT)
	alarm_block uut (
		.reset(reset), 
		.c_hour1(c_hour1), 
		.a_hour1(a_hour1), 
		.c_hour0(c_hour0), 
		.a_hour0(a_hour0), 
		.c_min1(c_min1), 
		.a_min1(a_min1), 
		.c_min0(c_min0), 
		.a_min0(a_min0), 
		.AL_ON(AL_ON), 
		.STOP_al(STOP_al), 
		.Alarm(Alarm)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		c_hour1 = 0;
		a_hour1 = 0;
		c_hour0 = 0;
		a_hour0 = 0;
		c_min1 = 0;
		a_min1 = 0;
		c_min0 = 0;
		a_min0 = 0;
		AL_ON = 0;
		STOP_al = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
		c_hour1 = 2;
		a_hour1 = 2;
		c_hour0 = 1;
		a_hour0 = 1;
		AL_ON = 0;
		STOP_al = 0;
      
		#50;
		c_hour1 = 1;
		a_hour1 = 0;
		c_hour0 = 2;
		a_hour0 = 2;
		c_min1 = 3;
		a_min1 = 3;
		c_min0 = 4;
		a_min0 = 4;
		AL_ON = 1;
		STOP_al = 0;
		
		#50;
		a_hour1 = 1;
		
		#50;
		AL_ON = 0;
		STOP_al = 1;
		// Add stimulus here

	end
      
endmodule

