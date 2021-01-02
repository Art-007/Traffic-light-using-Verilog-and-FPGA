`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 02:23:02 PM
// Design Name: 
// Module Name: second_controller
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


module second_controller(InputClk,loader, seconds);
input InputClk;
input loader;
output reg [5:0] seconds;

always @(negedge InputClk)
begin
    if (seconds == 0 | loader==1)
        seconds = 15;
    else
        seconds = seconds - 1;
end
endmodule
