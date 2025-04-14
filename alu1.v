`include "def1.v"

module alu1(input [7:0] operand_1, operand_2,
           input [3:0] command,
           output [15:0] out);
reg [15:0] out;

 always@ (*)
   begin
      case (command)
         `ADD : out = operand_1+operand_2;
         `SUB : out = operand_1 - operand_2;
         `INV : out = ~operand_1;
         `AND : out = operand_1 & operand_2;
         `OR : out = operand_1 | operand_2;
         default : out = 16'hz;
      endcase
   end
endmodule