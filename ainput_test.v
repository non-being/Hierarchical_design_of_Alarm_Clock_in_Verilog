`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:25:20 05/04/2024
// Design Name:   alarm_input
// Module Name:   C:/Users/Admin/Documents/Doc/xillinxdesignsuite/projects/testproject1/ainput_test.v
// Project Name:  testproject1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alarm_input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ainput_test;

	// Inputs
	reg reset;
	reg clk;
	reg [1:0] H_in1;
	reg [3:0] H_in0;
	reg [3:0] M_in1;
	reg [3:0] M_in0;
	reg LD_alarm;

	// Outputs
	wire [1:0] a_hour1;
	wire [3:0] a_hour0;
	wire [3:0] a_min1;
	wire [3:0] a_min0;

	// Instantiate the Unit Under Test (UUT)
	alarm_input uut (
		.reset(reset), 
		.clk(clk), 
		.H_in1(H_in1), 
		.H_in0(H_in0), 
		.M_in1(M_in1), 
		.M_in0(M_in0), 
		.LD_alarm(LD_alarm), 
		.a_hour1(a_hour1), 
		.a_hour0(a_hour0), 
		.a_min1(a_min1), 
		.a_min0(a_min0)
	);
	initial begin 
		clk = 1;
		forever clk = #5 ~clk;
		end
		
	initial begin
		// Initialize Inputs
		reset = 1;
		H_in1 = 2;
		H_in0 = 1;
		M_in1 = 4;
		M_in0 = 2;
		LD_alarm = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
		H_in1 = 1;
		H_in0 = 0;
		M_in1 = 2;
		M_in0 = 4;
		LD_alarm = 0;
       
		#100;
		reset = 0;
		H_in1 = 1;
		H_in0 = 0;
		M_in1 = 2;
		M_in0 = 4;
		LD_alarm = 1;
		// Add stimulus here

	end
      
endmodule

