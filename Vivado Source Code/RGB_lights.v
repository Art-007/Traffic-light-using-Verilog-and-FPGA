`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2019 03:45:07 PM
// Design Name: 
// Module Name: RGB_lights
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


module RGB_lights( 
input wire clk,
input wire reset,
output reg [2:0] RGB1,
output reg [2:0] RGB2
);
reg [2:0] state;
reg [3:0] counter;

parameter A1 = 3'b000, A2 =3'b001, A3 = 3'b010, B2 = 3'b100;  // stages 
parameter t1 =4'b1011, t2 =4'b0100; // timers sec

always @(posedge clk or posedge reset) 
    begin 
        if (reset == 1)
    begin 
     state <= A1; 
     counter <= 0;
    end
 else 
case(state)
  // Road A vs. Road B 
  
 A1:                              // A GREEN B RED
  if(counter < t1)
   begin 
   state <= A1; 
   counter <= counter + 1; 
    end 
    else 
    begin 
    state <= A2; 
    counter <=0;
     end 
   
 A2:                          // A YELLOW B RED
  if(counter < t2)
      begin 
      state <= A2; 
       counter <=counter+1;
     
      end 
      else 
      begin state <= A3;
      counter <=0;
    
       end 
  
 A3:                      //A RED B GREEN 
  if(counter < t1)
   begin 
   state <= A3; counter <= counter + 1;
    end 
    else 
    begin state <= B2; 
    counter <=0;
     end 
                                           
 B2:                      // A RED B YELLOW
  if(counter < t2)
   begin 
   state <= B2; counter <= counter + 1;
    end 
    else 
    begin state <= A1; 
    counter <=0;
     end 
     
 default state <= A1;
 endcase 
 end 
                 
always @(*) 
 begin 
 case(state)
 A1: 
    begin
    RGB1 = 3'b010;
    RGB2 = 3'b100; 
    end             // A green B red 
 A2: 
      begin
      RGB1 = 3'b110;
      RGB2 = 3'b100;
         
      end                 // yellow red
 A3: 
      begin
      RGB1 = 3'b100;
      RGB2 =3'b010;
      end
                           // red green
 B2:
      begin
       RGB1 = 3'b100; 
       RGB2 =3'b110; 
       
       end   
                    // red yellow   
 default: 
      begin
       RGB1 = 3'b010;
       RGB2 = 3'b100;
      end
      
 endcase
  end
 endmodule 
