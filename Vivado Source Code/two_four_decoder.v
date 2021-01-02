`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 02:02:14 PM
// Design Name: 
// Module Name: two_four_decoder
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


module two_four_decoder(
    input [1:0] twobitcounter,
    output reg [7:0] AN_Control
    );
 always @ (twobitcounter)
 begin
        case(twobitcounter)
        0: AN_Control = 8'b11111110;
        1: AN_Control= 8'b11111101;
        endcase
end
endmodule
