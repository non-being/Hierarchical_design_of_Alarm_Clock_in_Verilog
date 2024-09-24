`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:43:08 03/23/2024 
// Design Name: 
// Module Name:    top_module 
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
module top_module(
input reset,
input clk,
input [1:0] H_in1,
input [3:0] H_in0,
input [3:0] M_in1,
input [3:0] M_in0,
input LD_time,
input LD_alarm,
input STOP_al,
input AL_ON,
output wire Alarm,
output [1:0]  H_out1,
output [3:0]  H_out0,
output [3:0]  M_out1,
output [3:0]  M_out0,
output [3:0]  S_out1,
output [3:0]  S_out0
    );
	 
wire [5:0] tmp_hour, tmp_minute, tmp_second;
wire [1:0] c_hour1,a_hour1;
wire [3:0] c_hour0,a_hour0;
wire [3:0] c_min1,a_min1;
wire [3:0] c_min0,a_min0;
wire [3:0] c_sec1;
wire [3:0] c_sec0;
	 
clock_counter c (.reset(reset),.clk(clk),
				  .H_in1(H_in1[1:0]),.H_in0(H_in0[3:0]),.M_in1(M_in1[3:0]),.M_in0(M_in0[3:0]),
				  .LD_time(LD_time),
				  .tmp_hour(tmp_hour[5:0]),.tmp_minute(tmp_minute[5:0]),.tmp_second(tmp_second[5:0]));
				  
alarm_block a (.reset(reset),
					.a_hour1(a_hour1[1:0]),.a_hour0(a_hour0[3:0]),.a_min1(a_min1[3:0]),.a_min0(a_min0[3:0]),
					.c_hour1(c_hour1[1:0]),.c_hour0(c_hour0[3:0]),.c_min1(c_min1[3:0]),.c_min0(c_min0[3:0]),
					.AL_ON(AL_ON),.STOP_al(STOP_al),.Alarm(Alarm));
					
clock_output o (.tmp_hour(tmp_hour[5:0]),.tmp_minute(tmp_minute[5:0]),.tmp_second(tmp_second[5:0]),
					 .c_hour1(c_hour1[1:0]),.c_hour0(c_hour0[3:0]),.c_min1(c_min1[3:0]),.c_min0(c_min0[3:0]),
					 .H_out1(H_out1[1:0]),.H_out0(H_out0[3:0]),.M_out1(M_out1[3:0]),.M_out0(M_out0[3:0]),.S_out1(S_out1[3:0]),.S_out0(S_out0[3:0]));
					 
alarm_input i (.reset(reset),.clk(clk),
				  .H_in1(H_in1[1:0]),.H_in0(H_in0[3:0]),.M_in1(M_in1[3:0]),.M_in0(M_in0[3:0]),
				  .LD_alarm(LD_alarm),
				  .a_hour1(a_hour1[1:0]),.a_hour0(a_hour0[3:0]),.a_min1(a_min1[3:0]),.a_min0(a_min0[3:0]));
					 
endmodule
