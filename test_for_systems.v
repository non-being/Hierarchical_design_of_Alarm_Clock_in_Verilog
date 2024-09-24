`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:09:01 03/23/2024
// Design Name:   top_module
// Module Name:   C:/Users/Admin/Documents/Doc/xillinxdesignsuite/projects/testproject1/test_for_systems.v
// Project Name:  testproject1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

pppmodule test_for_systems;

	// Inputs
	reg reset;
	reg clk;
	reg [1:0] H_in1;
	reg [3:0] H_in0;
	reg [3:0] M_in1;
	reg [3:0] M_in0;
	reg LD_time;
	reg LD_alarm;
	reg STOP_al;
	reg AL_ON;

	// Outputs
	wire Alarm;
	wire [1:0] H_out1;
	wire [3:0] H_out0;
	wire [3:0] M_out1;
	wire [3:0] M_out0;
	wire [3:0] S_out1;
	wire [3:0] S_out0;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.reset(reset), 
		.clk(clk), 
		.H_in1(H_in1), 
		.H_in0(H_in0), 
		.M_in1(M_in1), 
		.M_in0(M_in0), 
		.LD_time(LD_time), 
		.LD_alarm(LD_alarm), 
		.STOP_al(STOP_al), 
		.AL_ON(AL_ON), 
		.Alarm(Alarm), 
		.H_out1(H_out1), 
		.H_out0(H_out0),
		.M_out1(M_out1), 
		.M_out0(M_out0), 
		.S_out1(S_out1), 
		.S_out0(S_out0)
	);
	initial begin 
		clk = 1;
		forever clk = #5 ~clk;
		end
		
	initial begin
		// Initialize Inputs
		
		//case#1
		reset = 1;
		H_in1 = 0;
		H_in0 = 0;
		M_in1 = 0;
		M_in0 = 0;
		LD_time = 0;
		LD_alarm = 0;
		STOP_al = 0;
		AL_ON = 0;
		#10;
		reset = 0;
		H_in1 = 2;
		H_in0 = 2;
		M_in1 = 2;
		M_in0 = 3;
		LD_time = 1;
		#20;
		LD_time = 0;
		
		//case#2
		#560;
		reset = 0;
		H_in1 = 2;
		H_in0 = 2;
		M_in1 = 2;
		M_in0 = 4;
		LD_time = 0;
		LD_alarm = 1;
		STOP_al = 0;
		AL_ON = 1;
		#10;
		LD_alarm = 0;
		
		//case#3
		#80;
		STOP_al = 1;
		#20;
		STOP_al = 0;
		AL_ON = 0;
        
		// Add stimulus here

	end
      
endmodule

