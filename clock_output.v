`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:21 04/22/2024 
// Design Name: 
// Module Name:    clock_output 
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
module clock_output(
input [5:0] tmp_hour, tmp_minute, tmp_second,
output reg [1:0] c_hour1,
output reg [3:0] c_hour0,
output reg [3:0] c_min1,
output reg [3:0] c_min0,
output [1:0]  H_out1,
output [3:0]  H_out0,
output [3:0]  M_out1,
output [3:0]  M_out0,
output [3:0]  S_out1,
output [3:0]  S_out0
    );
 reg [3:0] c_sec1, c_sec0;
 function [3:0] mod_10;
 input [5:0] number;
 begin
 mod_10 = (number >=50) ? 5 : ((number >= 40)? 4 :((number >= 30)? 3 :((number >= 20)? 2 :((number >= 10)? 1 :0))));
 end
 endfunction
	 
 always @(*) begin
 if(tmp_hour>=20) begin
 c_hour1 <= 2;
 end
 else begin
 if(tmp_hour >=10) 
 c_hour1  <= 1;
 else
 c_hour1 <= 0;
 end
 c_hour0 <= tmp_hour - c_hour1*10; 
 c_min1 <= mod_10(tmp_minute); 
 c_min0 <= tmp_minute - c_min1*10;
 c_sec1 <= mod_10(tmp_second);
 c_sec0 <= tmp_second - c_sec1*10; 
 end
 
 assign H_out1 = c_hour1; 
 assign H_out0 = c_hour0; 
 assign M_out1 = c_min1; 
 assign M_out0 = c_min0; 
 assign S_out1 = c_sec1;
 assign S_out0 = c_sec0;

endmodule
