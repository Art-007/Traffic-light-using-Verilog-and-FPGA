`timescale 1ns / 1ps

module MUX4to1(seg7Disp0, seg7Disp1, select, seg7out);

input [1:0] select;

input [6:0] seg7Disp0, seg7Disp1;

output reg [6:0] seg7out;

always @(select, seg7Disp0, seg7Disp1)
begin
    case (select)
        0   :   seg7out = seg7Disp0;   //Display 0 (seconds, one's place)
        1   :   seg7out = seg7Disp1;   //Display 1 (seconds, ten's place)
        
    endcase
end
endmodule
