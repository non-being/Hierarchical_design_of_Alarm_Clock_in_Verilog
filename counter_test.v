`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:05 05/06/2024
// Design Name:   clock_counter
// Module Name:   C:/Users/Admin/Documents/Doc/xillinxdesignsuite/projects/testproject1/counter_test.v
// Project Name:  testproject1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_test;

	// Inputs
	reg reset;
	reg clk;
	reg [1:0] H_in1;
	reg [3:0] H_in0;
	reg [3:0] M_in1;
	reg [3:0] M_in0;
	reg LD_time;

	// Outputs
	wire [5:0] tmp_hour;
	wire [5:0] tmp_minute;
	wire [5:0] tmp_second;

	// Instantiate the Unit Under Test (UUT)
	clock_counter uut (
		.reset(reset), 
		.clk(clk), 
		.H_in1(H_in1), 
		.H_in0(H_in0), 
		.M_in1(M_in1), 
		.M_in0(M_in0), 
		.LD_time(LD_time), 
		.tmp_hour(tmp_hour), 
		.tmp_minute(tmp_minute), 
		.tmp_second(tmp_second)
	);

	initial begin
	 clk = 0;
  forever #5 clk = ~clk;
 end
  initial begin
		// Initialize Inputs
reset = 1;
H_in1 = 1;
H_in0 = 0;
M_in1 = 1;
M_in0 = 9;
LD_time = 0;
// Wait 100 ns for global reset to finish
#100;
reset = 0;
H_in1 = 0;
H_in0 = 1;
M_in1 = 2;
M_in0 = 0;
LD_time = 1;
#200;
reset = 0;
H_in1 = 0;
H_in0 = 1;
M_in1 = 2;
M_in0 = 0;
LD_time = 0;
end
endmodule


