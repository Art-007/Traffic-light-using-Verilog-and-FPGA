`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 01:47:06 PM
// Design Name: 
// Module Name: Main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Main(clock_input,reset, AN,SW, LED,LED2, DP, seg7out);
input clock_input;
input reset;
input [1:0] SW;
output [7:0] AN;
output [2:0] LED;
output [2:0] LED2;
//output load;
output DP;

output [0:6] seg7out;


wire Clk1Hz, Clk400Hz;
wire [1:0] Bit2Out;
wire [5:0] sec;
wire [6:0] Out7Seg_lower_sec, Out7Seg_upper_sec, Out7Seg_lower_min, Out7Seg_upper_min;
//wire load;
assign DP = 1;

RGB_lights stage0 (Clk1Hz, SW[1], LED, LED2);
clockgen  stage1(clock_input, Clk1Hz, Clk400Hz);

TwoBitCounter    stage2(Clk400Hz, Bit2Out);
two_four_decoder    stage3(Bit2Out, AN);

counter stage4 (Clk1Hz, SW[0], sec);
enco   stage5 (sec, Out7Seg_lower_sec, Out7Seg_upper_sec);

MUX4to1    stage6 (Out7Seg_lower_sec, Out7Seg_upper_sec, Bit2Out, seg7out);



endmodule
