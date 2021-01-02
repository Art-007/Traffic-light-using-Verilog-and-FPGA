`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 01:33:43 PM
// Design Name: 
// Module Name: clock400
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


module clockgen(clk,clock1hz, clock400hz);
    input clk;
    output clock1hz, clock400hz;
reg [26:0] counter;
reg clock1hz, clock400hz;  
    always @ (posedge clk)
  begin
	  counter = counter +1;
	  if (counter % 90_000 == 0)
		begin
			clock400hz = ~clock400hz;
		end
      if (counter == 40_000_000)
      begin
        clock1hz = ~clock1hz;
        counter =0;
      end
 
   end
endmodule
