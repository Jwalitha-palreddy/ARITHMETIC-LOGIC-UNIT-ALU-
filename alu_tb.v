module alu_tb();
reg [7:0]a,b;
reg [3:0]command;
wire [15:0]out;
integer i;
alu1 dut(a,b,command,out);
initial 
   begin
   a=8'b00000101;
   b=8'b00000011;
   command=4'b0000;
   for(i=0;i<5;i=i+1)
      begin
      command=i;
      #10;
      end
   $finish;
   end
endmodule