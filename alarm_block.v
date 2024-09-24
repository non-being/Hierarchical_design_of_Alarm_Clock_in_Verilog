`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:51:12 03/23/2024 
// Design Name: 
// Module Name:    alarm_block 
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
module alarm_block(
input reset,
input [1:0] c_hour1,a_hour1,
input [3:0] c_hour0,a_hour0,
input [3:0] c_min1,a_min1,
input [3:0] c_min0,a_min0,
input AL_ON, STOP_al,
output reg Alarm
    );
	 
always @(*) 
begin
 if(reset) 
 Alarm <= 0; 
 else begin
 if({a_hour1,a_hour0,a_min1,a_min0}=={c_hour1,c_hour0,c_min1,c_min0})
 begin
 if(AL_ON) Alarm <= 1; 
 end
 if(STOP_al) Alarm <= 0;
 
 end
 end


endmodule
