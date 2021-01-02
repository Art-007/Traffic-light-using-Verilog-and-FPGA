`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 01:41:28 PM
// Design Name: 
// Module Name: TwoBitCounter
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


module TwoBitCounter(clock, twobitout);
input clock;
output reg [1:0] twobitout;

always @ (posedge clock)
begin 
    if (twobitout==3)
        twobitout=0;
    else
        twobitout = twobitout + 1;
end

endmodule
