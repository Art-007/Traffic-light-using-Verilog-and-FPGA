`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2019 11:11:24 PM
// Design Name: 
// Module Name: enco
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


module enco(Bit6In, Out7Seg_lower, Out7Seg_upper);
input [5:0] Bit6In;

output reg [6:0] Out7Seg_upper, Out7Seg_lower;

always @(Bit6In)
    begin
    case (Bit6In/10)
      0  : Out7Seg_upper <= 7'b0000001;         //0
      1  : Out7Seg_upper <= 7'b1001111;         //1
      2  : Out7Seg_upper <= 7'b0010010;         //2
      3  : Out7Seg_upper <= 7'b0000110;         //3
      4  : Out7Seg_upper <= 7'b1001100;         //4
      5  : Out7Seg_upper <= 7'b0100100;         //5
      6  : Out7Seg_upper <= 7'b0100000;         //6
      7  : Out7Seg_upper <= 7'b0001111;         //7
      8  : Out7Seg_upper <= 7'b0000000;         //8
      9  : Out7Seg_upper <= 7'b0001100;         //9
    endcase
    
    case (Bit6In%10)
      0  : Out7Seg_lower <= 7'b0000001;         //0
      1  : Out7Seg_lower <= 7'b1001111;         //1
      2  : Out7Seg_lower <= 7'b0010010;         //2
      3  : Out7Seg_lower <= 7'b0000110;         //3
      4  : Out7Seg_lower <= 7'b1001100;         //4
      5  : Out7Seg_lower <= 7'b0100100;         //5
      6  : Out7Seg_lower <= 7'b0100000;         //6
      7  : Out7Seg_lower <= 7'b0001111;         //7
      8  : Out7Seg_lower <= 7'b0000000;         //8
      9  : Out7Seg_lower <= 7'b0001100;         //9
    endcase
    
    end
endmodule
