`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:12:10 05/04/2024
// Design Name:   clock_output
// Module Name:   C:/Users/Admin/Documents/Doc/xillinxdesignsuite/projects/testproject1/output_test.v
// Project Name:  testproject1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_output
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module output_test;

	// Inputs
	reg [5:0] tmp_hour;
	reg [5:0] tmp_minute;
	reg [5:0] tmp_second;

	// Outputs
	wire [1:0] c_hour1;
	wire [3:0] c_hour0;
	wire [3:0] c_min1;
	wire [3:0] c_min0;
	wire [1:0] H_out1;
	wire [3:0] H_out0;
	wire [3:0] M_out1;
	wire [3:0] M_out0;
	wire [3:0] S_out1;
	wire [3:0] S_out0;

	// Instantiate the Unit Under Test (UUT)
	clock_output uut (
		.tmp_hour(tmp_hour), 
		.tmp_minute(tmp_minute), 
		.tmp_second(tmp_second), 
		.c_hour1(c_hour1), 
		.c_hour0(c_hour0), 
		.c_min1(c_min1), 
		.c_min0(c_min0), 
		.H_out1(H_out1), 
		.H_out0(H_out0), 
		.M_out1(M_out1), 
		.M_out0(M_out0), 
		.S_out1(S_out1), 
		.S_out0(S_out0)
	);

	initial begin
		// Initialize Inputs
		tmp_hour = 0;
		tmp_minute = 0;
		tmp_second = 0;

		// Wait 100 ns for global reset to finish
		#100;
		tmp_hour = 10;
		tmp_minute = 20;
		tmp_second = 30;
        
		// Add stimulus here

	end
      
endmodule

