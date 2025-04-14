`include "def.v"

module alu(input [7:0] operand_1, operand_2,
           input [3:0] command,
           output [15:0] out);
reg [15:0] out;

 always@ (*)
   begin
      case (command)
         `ADD : out = operand_1+operand_2;
         `INC : out = operand_1 + 1;
         `SUB : out = operand_1 - operand_2;
         `DEC : out = operand_1 - 1;
         `MUL : out = operand_1 * operand_2;
         `DIV : out = operand_1 / 2;
         `SHL : out = operand_1 << 1'b1;
         `SHR : out = operand_1 >> 1'b1;
         `INV : out = ~operand_1;
         `AND : out = operand_1 & operand_2;
         `OR : out = operand_1 | operand_2;
         `NAND : out = ~(operand_1 & operand_2);
         `NOR : out = ~(operand_1 | operand_2);
         `XOR : out = operand_1 ^ operand_2;
         `XNOR : out = ~(operand_1 ^ operand_2);
         `BUF : out = operand_1;
         default : out = 16'hz;
      endcase
   end
endmodule