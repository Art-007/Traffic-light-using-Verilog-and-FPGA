`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2019 10:40:52 PM
// Design Name: 
// Module Name: counter
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

module counter(InputClk, reset, counter);
input InputClk;
input reset;
//input load;
output reg[5:0] counter;


always @(posedge InputClk)
begin
    if (counter ==0)
        counter = 15;
     else if (reset)
      counter = 4;
    else
        counter = counter - 1;
   
end
endmodule
